object FrmVendasPdv: TFrmVendasPdv
  Left = 217
  Top = 130
  Width = 798
  Height = 598
  BorderIcons = [biSystemMenu]
  Caption = ' Pdv '
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 560
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Bevel1: TBevel
      Left = 2
      Top = 526
      Width = 778
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 528
      Width = 778
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 778
        Height = 26
        Align = dalTop
        BarManager = BarManager
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 778
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 2
      Width = 778
      Height = 114
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Bevel4: TBevel
        Left = 191
        Top = 3
        Width = 360
        Height = 23
        Shape = bsFrame
      end
      object Bevel3: TBevel
        Left = 551
        Top = 3
        Width = 78
        Height = 23
        Shape = bsFrame
      end
      object b2: TBevel
        Left = 8
        Top = 24
        Width = 139
        Height = 2
        Shape = bsTopLine
      end
      object LblHora: TcxLabel
        Left = 558
        Top = 5
        Caption = 'Hora'
        ParentFont = False
        Transparent = True
      end
      object LblCaixa: TcxLabel
        Left = 201
        Top = 5
        Caption = 'Caixa'
        ParentFont = False
        Transparent = True
      end
      object LblTitulo: TcxLabel
        Left = 9
        Top = 4
        Caption = 'Venda R'#225'pida'
        ParentFont = False
        Transparent = True
      end
      object Panel2: TPanel
        Left = 0
        Top = 33
        Width = 778
        Height = 81
        Align = alBottom
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label1: TcxLabel
          Left = 18
          Top = 8
          Caption = 'C'#243'digo'
          ParentFont = False
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 224
          Top = 6
          Caption = 'Data'
          ParentFont = False
          Transparent = True
        end
        object BtnPessoa: TcxButton
          Left = 345
          Top = 29
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 9
          OnClick = BtnPessoaClick
          Glyph.Data = {
            06030000424D06030000000000003600000028000000100000000F0000000100
            180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            0000000000000000000000000000000000000000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
            0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
            BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
            0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
            FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
            BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
            00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF}
        end
        object Label3: TcxLabel
          Left = 18
          Top = 34
          Caption = 'Cliente'
          ParentFont = False
          Transparent = True
        end
        object Label5: TcxLabel
          Left = 5
          Top = 58
          Caption = 'Vendedor'
          ParentFont = False
          Transparent = True
        end
        object RxLabel1: TcxLabel
          Left = 407
          Top = 3
          Caption = 'Consulta Produto'
          ParentFont = False
          Transparent = True
        end
        object RxLabel2: TcxLabel
          Left = 540
          Top = 32
          Caption = 'Fechar Venda'
          ParentFont = False
          Transparent = True
        end
        object LblCadastro: TcxLabel
          Left = 406
          Top = 60
          Caption = 'Clientes'
          ParentFont = False
          Transparent = True
        end
        object Label9: TcxLabel
          Left = 265
          Top = 59
          Caption = 'Tipo'
          ParentFont = False
          Transparent = True
        end
        object RxLabel3: TcxLabel
          Left = 408
          Top = 32
          Caption = 'Localizar Venda'
          ParentFont = False
          Transparent = True
        end
        object RxLabel4: TcxLabel
          Left = 543
          Top = 60
          Caption = 'Incluir Produto'
          ParentFont = False
          Transparent = True
        end
        object RxLabel5: TcxLabel
          Left = 373
          Top = 32
          Caption = '( F3 )'
          ParentFont = False
          Transparent = True
        end
        object RxLabel6: TcxLabel
          Left = 373
          Top = 60
          Caption = '( F4 )'
          ParentFont = False
          Transparent = True
        end
        object RxLabel7: TcxLabel
          Left = 374
          Top = 3
          Caption = '( F2 )'
          ParentFont = False
          Transparent = True
        end
        object RxLabel8: TcxLabel
          Left = 507
          Top = 32
          Caption = '( F9 )'
          ParentFont = False
          Transparent = True
        end
        object RxLabel9: TcxLabel
          Left = 502
          Top = 60
          Caption = '( F12 )'
          ParentFont = False
          Transparent = True
        end
        object RxLabel10: TcxLabel
          Left = 506
          Top = 3
          Caption = '( F5 )'
          ParentFont = False
          Transparent = True
        end
        object RxLabel11: TcxLabel
          Left = 539
          Top = 3
          Caption = 'Excluir Produto'
          ParentFont = False
          Transparent = True
        end
        object BtnVendedor: TcxButton
          Left = 242
          Top = 55
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 25
          OnClick = BtnVendedorClick
          Glyph.Data = {
            06030000424D06030000000000003600000028000000100000000F0000000100
            180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            0000000000000000000000000000000000000000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
            0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
            BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
            0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
            FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
            BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
            00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF}
        end
        object dxDBEdit1: TdxDBEdit
          Left = 52
          Top = 3
          Width = 77
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 0
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CODIGO'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object EdDataNota: TdxDBDateEdit
          Left = 258
          Top = 3
          Width = 112
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtNone
          Style.HotTrack = True
          TabOrder = 1
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taLeftJustify
          DataField = 'DATA'
          DataSource = DataSource
          ReadOnly = False
          DateOnError = deToday
          DateValidation = True
          SaveTime = False
          UseEditMask = True
          StoredValues = 69
        end
        object cmbvendedor: TdxDBLookupEdit
          Left = 96
          Top = 53
          Width = 144
          Color = clMenu
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
          OnEnter = cmbvendedorEnter
          OnExit = cmbvendedorExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VENDEDOR'
          DataSource = DataSource
          ReadOnly = False
          DropDownWidth = 294
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = DsVendedores
          LookupKeyValue = Null
          StoredValues = 64
        end
        object dxDBEdit3: TdxDBEdit
          Left = 96
          Top = 28
          Width = 247
          Color = clMenu
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
          TabStop = False
          OnEnter = dxDBEdit3Enter
          OnExit = dxDBEdit3Exit
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'Nome'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object EdVendedor: TdxDBEdit
          Left = 52
          Top = 53
          Width = 45
          Color = clMenu
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
          OnEnter = EdVendedorEnter
          OnExit = EdVendedorExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VENDEDOR'
          DataSource = DataSource
        end
        object EdPessoa: TdxDBEdit
          Left = 52
          Top = 28
          Width = 45
          Color = clMenu
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
          OnEnter = EdPessoaEnter
          OnExit = EdPessoaExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PESSOA_FJ'
          DataSource = DataSource
        end
        object CmbTipo: TdxDBPickEdit
          Left = 288
          Top = 53
          Width = 81
          Color = clMenu
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
          TabOrder = 6
          OnEnter = CmbTipoEnter
          OnExit = CmbTipoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_VENDA'
          DataSource = DataSource
          PopupBorder = pbFlat
          DropDownListStyle = True
          Items.Strings = (
            'Venda'
            'Condicional')
        end
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 116
      Width = 778
      Height = 345
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel5'
      Color = clWhite
      TabOrder = 2
      object GRIDITENS: TdxDBGrid
        Left = 0
        Top = 0
        Width = 778
        Height = 345
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'SEQUENCIA'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = GridItensEnter
        AutoExpandOnSearch = False
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DsItens
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoPartialLoad, edgoUseBookmarks]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object GRIDITENSCODIGO: TdxDBGridMaskColumn
          Color = clBtnFace
          Width = 97
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PRODUTO'
        end
        object GRIDITENSNOME: TdxDBGridMaskColumn
          Width = 275
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Nome_Produto'
        end
        object GRIDITENSPRC_VENDA: TdxDBGridMaskColumn
          Caption = 'Pre'#231'o'
          Color = clBtnFace
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PRC_UNITARIO'
        end
        object GRIDITENSQUANTIDADE: TdxDBGridColumn
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QUANTIDADE'
        end
        object GRIDITENSTOTAL: TdxDBGridColumn
          Color = clBtnFace
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'Total'
        end
        object GRIDITENSVENDEDOR: TdxDBGridColumn
          Alignment = taLeftJustify
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VENDEDOR'
        end
        object GRIDITENSNOME_MARCA: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOME_MARCA'
        end
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 461
      Width = 778
      Height = 65
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 3
      object Bevel2: TBevel
        Left = 16
        Top = 58
        Width = 538
        Height = 1
        Shape = bsTopLine
      end
      object RxLabel17: TcxLabel
        Left = 196
        Top = 16
        Caption = 'Altera Unit'#225'rio'
        ParentFont = False
        Transparent = True
      end
      object RxLabel18: TcxLabel
        Left = 196
        Top = 37
        Caption = 'Garantias'
        ParentFont = False
        Transparent = True
      end
      object RxLabel19: TcxLabel
        Left = 157
        Top = 37
        Caption = '(  F 7 )'
        ParentFont = False
        Transparent = True
      end
      object RxLabel16: TcxLabel
        Left = 156
        Top = 15
        Caption = '( F11 )'
        ParentFont = False
        Transparent = True
      end
      object RxLabel13: TcxLabel
        Left = 41
        Top = 16
        Caption = 'Consulta Produto'
        ParentFont = False
        Transparent = True
      end
      object RxLabel15: TcxLabel
        Left = 41
        Top = 37
        Caption = 'Alterar a Venda'
        ParentFont = False
        Transparent = True
      end
      object RxLabel14: TcxLabel
        Left = 11
        Top = 37
        Caption = '( F6 )'
        ParentFont = False
        Transparent = True
      end
      object RxLabel12: TcxLabel
        Left = 11
        Top = 15
        Caption = '( F2 )'
        ParentFont = False
        Transparent = True
      end
      object Panel3: TPanel
        Left = 312
        Top = 9
        Width = 337
        Height = 41
        BevelInner = bvRaised
        BevelOuter = bvLowered
        TabOrder = 0
        object Label25: TcxLabel
          Left = 79
          Top = 2
          Caption = 'Total Lan'#231'ado'
          ParentFont = False
          Transparent = True
        end
        object Label27: TcxLabel
          Left = 301
          Top = 2
          Caption = 'Total'
          ParentFont = False
          Transparent = True
        end
        object Label6: TcxLabel
          Left = 5
          Top = 2
          Caption = 'N'#186' de '#205'tens'
          ParentFont = False
          Transparent = True
        end
        object Label4: TcxLabel
          Left = 183
          Top = 2
          Caption = 'Desc/Acr'#233's'
          ParentFont = False
          Transparent = True
        end
        object LblItens: TcxLabel
          Left = 44
          Top = 18
          Caption = '0,00'
          ParentFont = False
          Transparent = True
        end
        object dxDBEdit5: TdxDBEdit
          Left = 78
          Top = 14
          Width = 80
          Color = clMenu
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
          TabStop = False
          DataField = 'TOTAL'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object dxDBEdit8: TdxDBEdit
          Left = 251
          Top = 14
          Width = 80
          Color = clMenu
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
          TabStop = False
          DataField = 'Total_Geral'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object dxDBEdit2: TdxDBEdit
          Left = 166
          Top = 14
          Width = 80
          Color = clMenu
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
          TabStop = False
          DataField = 'DESC_ACRES'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
      end
    end
  end
  object BarDBNavigator: TdxBarDBNavigator
    BarManager = BarManager
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 413
    Top = 184
  end
  object BarManager: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 253
    Top = 184
    DockControlHeights = (
      0
      0
      0
      0)
    object BarManagerBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 290
      FloatTop = 163
      FloatClientWidth = 23
      FloatClientHeight = 198
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarBDBNavFirst'
        end
        item
          Visible = True
          ItemName = 'dxBarBDBNavPrev'
        end
        item
          Visible = True
          ItemName = 'dxBarBDBNavNext'
        end
        item
          Visible = True
          ItemName = 'dxBarBDBNavLast'
        end
        item
          Visible = True
          ItemName = 'btnIncluir'
        end
        item
          Visible = True
          ItemName = 'BtnAlterar'
        end
        item
          Visible = True
          ItemName = 'BtnSalvar'
        end
        item
          Visible = True
          ItemName = 'BtnCancelar'
        end
        item
          Visible = True
          ItemName = 'BtnFechar'
        end>
      OldName = 'Navega'#231#227'o'
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btnIncluir: TdxBarButton
      Action = ActIncluir
      Category = 0
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
    end
    object BtnSalvar: TdxBarButton
      Action = ActPost
      Category = 0
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F
        7F007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000007F7F007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBFBF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
    end
    object BtnCancelar: TdxBarButton
      Action = ActCancel
      Category = 0
      Enabled = False
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        1800000000004003000000000000000000000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        80000080800080800000FF0000FF0000FF0080800080807F7F7F0000007F7F7F
        0080800080800000FF0000FF0000FF0080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800080800080800000FF0000FF0000FF7F
        7F7F0000007F7F7F0000FF0000FF0000FF008080008080008080008080000080
        800080800080800080800080800000FF0000FF0000FF0080800000FF0000FF00
        00FF008080008080008080008080008080000080800080800080800080800080
        800080800000FF0000FF0000000000FF0000FF00808000808000808000808000
        8080008080000080800080800080800080800080800080800080800000800000
        0000008000808000808000808000808000808000808000808000008080008080
        0080800080800080800080800000FF0000800000000000800000FF0080800080
        80008080008080008080008080000080800080800080800080800080800000FF
        0000FF0000000000000000000000FF0000FF0080800080800080800080800080
        80000080800080800080800080800000FF0000FF0000FF000000000000000000
        0000FF0000FF0000FF0080800080800080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800000FF0000FF0000FF0080800080807F
        7F7F0000007F7F7F0080800080800000FF0000FF0000FF008080008080000080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080000080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080000080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000}
    end
    object BtnFechar: TdxBarButton
      Action = ActFechar
      Align = iaRight
      Category = 0
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0000000000000000000000000000000000000000000000000000000000000000
        0000808000808000000000808000808000000000008000FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000FFFF00000000FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        00008080008080000000008080008080000000000080FFFF0000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        000000000080FFFF00FFFF0000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000}
      PaintStyle = psCaptionGlyph
    end
    object BtnAlterar: TdxBarButton
      Action = ActAlterar
      Category = 0
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0080800080800080800080800000000000000000000000000000000000000000
        00000000000000000000008080008080008080008080008080008080000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        008080000000000000000000000000000000FFFFFFFFFFFF000000FFFFFF0000
        00000000FFFFFF000000FFFF0000000000000000FFFFFFFFFF00FFFFFFFFFF00
        FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00000000
        00FFFFFFFFFF00FFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFF000000FFFF00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF000000FFFFFF000000000000FFFFFFFFFFFF000000FFFF00000000
        00FFFFFFFFFF00FFFFFFFFFF00000000000000000000000000000000FFFF0000
        00FFFFFFFFFFFF000000FFFF00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFF00000000
        00FFFFFFFFFF000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000FFFFFFFFFF00FFFF00000000
        000000FFFF000000FFFFFFFFFFFF000000000000FFFFFF000000008080008080
        00808000000000000000000000000000FFFF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000808000808000808000808000808000000000FFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000008080008080
        00808000808000000000FFFF000000FFFFFFFFFFFF000000000000FFFFFF0000
        00FFFFFFFFFFFF00000000808000808000808000000000FFFF000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000008080008080008080
        0000000000FF000000008080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        0000000000808000808000808000808000808000000000808000808000000000
        0000000000000000000000000000000000008080008080008080}
    end
    object dxBarBDBNavFirst: TdxBarDBNavButton
      Caption = 'ActInicio'
      Category = 1
      Enabled = False
      Hint = 'Ir ao primeiro registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnFirst
    end
    object dxBarBDBNavPrev: TdxBarDBNavButton
      Caption = 'ActPrior'
      Category = 1
      Enabled = False
      Hint = 'Ir ao registro anterior'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777780777777777777800077777777778000007777777780000000
        7777777777800000777777777777800077777777777777807777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnPrior
    end
    object dxBarBDBNavNext: TdxBarDBNavButton
      Caption = 'ActNext'
      Category = 1
      Enabled = False
      Hint = 'Ir ao pr'#243'ximo registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777708777777777777770008777777777777000008777777777700000008
        7777777700000877777777770008777777777777087777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnNext
    end
    object dxBarBDBNavLast: TdxBarDBNavButton
      Caption = 'ActLast'
      Category = 1
      Enabled = False
      Hint = 'Ir ao '#250'ltimo registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777700087777807777770000087780777777000000088
        0777777000008778077777700087777807777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnLast
    end
  end
  object Actions: TActionList
    Left = 65
    Top = 184
    object ActIncluir: TAction
      Tag = 1
      Caption = 'ActIncluir'
      Hint = 'Incluir um novo registro [Ins]'
      ShortCut = 45
      OnExecute = ActIncluirExecute
    end
    object ActAlterar: TAction
      Tag = 1
      Caption = 'ActAlterar'
      ShortCut = 117
      OnExecute = ActAlterarExecute
    end
    object ActExcluir: TAction
      Tag = 1
      Caption = 'ActExcluir'
      Hint = 'Excluir o registro selecionado [Shift+Del]'
      ShortCut = 46
      OnExecute = ActExcluirExecute
    end
    object ActLocalizar: TAction
      Caption = 'ActLocalizar'
      Hint = 'Localizar registros [F3]'
      ShortCut = 114
      OnExecute = ActLocalizarExecute
    end
    object ActPost: TAction
      Caption = 'ActPost'
      Hint = 'Salvar informa'#231#245'es'
      ShortCut = 121
      OnExecute = ActPostExecute
    end
    object ActCancel: TAction
      Caption = 'ActCancel'
      Hint = 'Cancelar informa'#231#245'es'
      ShortCut = 27
      OnExecute = ActCancelExecute
    end
    object ActFechar: TAction
      Caption = '&Fechar  '
      OnExecute = ActFecharExecute
    end
    object ActLookUp: TAction
      Caption = 'Cadastros'
      ShortCut = 115
      OnExecute = ActLookUpExecute
    end
    object ActLocalizarCliente: TAction
      Caption = 'Localizar Clientes'
      ShortCut = 16424
      OnExecute = ActLocalizarClienteExecute
    end
    object ActProdutos: TAction
      Caption = 'Produtos'
      ShortCut = 123
      OnExecute = ActProdutosExecute
    end
    object ActEnviaCaixa: TAction
      Caption = 'Envia para o Caixa'
      ShortCut = 120
      OnExecute = ActEnviaCaixaExecute
    end
    object ActExcluirProduto: TAction
      Caption = 'Excluir Produto'
      ShortCut = 116
      OnExecute = ActExcluirProdutoExecute
    end
    object ActLocalizarVendedores: TAction
      Caption = 'Localizar Vendedores'
      OnExecute = ActLocalizarVendedoresExecute
    end
    object ActConsultaProduto: TAction
      Caption = 'ActConsultaProduto'
      ShortCut = 113
      OnExecute = ActConsultaProdutoExecute
    end
    object ActUnitario: TAction
      Caption = 'ActUnitario'
      ShortCut = 122
      OnExecute = ActUnitarioExecute
    end
    object ActGarantia: TAction
      Tag = 1
      Caption = 'Garantia'
      ShortCut = 118
      OnExecute = ActGarantiaExecute
    end
    object ActNatureza: TAction
      Caption = 'Troca Natureza'
      ShortCut = 16462
      OnExecute = ActNaturezaExecute
    end
  end
  object DataSource: TDataSource
    DataSet = DmVendas.VendasPdv
    OnStateChange = DataSourceStateChange
    Left = 181
    Top = 184
  end
  object DsVendedores: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelVendedor
    Left = 330
    Top = 184
  end
  object DsItens: TDataSource
    AutoEdit = False
    DataSet = DmVendas.VendasPdv_Itens
    Left = 120
    Top = 184
  end
  object stgFrmVendasPdv: TcxPropertiesStore
    Components = <>
    StorageName = 'stgFrmVendasPdv'
    Left = 328
    Top = 199
  end
end
