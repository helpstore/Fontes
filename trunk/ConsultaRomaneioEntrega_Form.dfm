object FrmConsultaRomaneio: TFrmConsultaRomaneio
  Left = 222
  Top = 178
  Width = 641
  Height = 476
  Caption = 'Consulta Romaneio de Entrega'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 633
    Height = 423
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 629
      Height = 85
      Align = alTop
      Color = clWhite
      TabOrder = 0
      object b2: TBevel
        Left = 8
        Top = 35
        Width = 289
        Height = 2
        Shape = bsTopLine
      end
      object Label3: TcxLabel
        Left = 422
        Top = 40
        Caption = 'Dt. Cx. Inicial'
        ParentFont = False
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 530
        Top = 40
        Caption = 'Dt. Cx. Final'
        ParentFont = False
        Transparent = True
      end
      object LblTitulo: TcxLabel
        Left = 6
        Top = 8
        Caption = 'Consulta Romaneio de Entrega'
        ParentFont = False
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 514
        Top = 61
        Caption = #224
        ParentFont = False
        Transparent = True
      end
      object Label9: TcxLabel
        Left = 4
        Top = 58
        Caption = 'Vendedores'
        ParentFont = False
        Transparent = True
      end
      object Ini: TdxDateEdit
        Left = 420
        Top = 55
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
        TabOrder = 0
        OnEnter = cmbVendedorEnter
        OnExit = IniExit
        OnKeyDown = cmbPessoaKeyDown
        Date = -700000.000000000000000000
        DateValidation = True
        UseEditMask = True
        StoredValues = 4
      end
      object Fim: TdxDateEdit
        Left = 526
        Top = 55
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
        OnExit = FimExit
        OnKeyDown = cmbPessoaKeyDown
        Date = -700000.000000000000000000
        DateValidation = True
        UseEditMask = True
        StoredValues = 4
      end
      object btnParceiro: TcxButtonEdit
        Left = 395
        Top = 55
        BeepOnEnter = False
        ParentFont = False
        Properties.Buttons = <
          item
            Default = True
            Kind = bkEllipsis
          end>
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.HotTrack = True
        Style.Shadow = False
        Style.TextStyle = []
        Style.ButtonStyle = btsOffice11
        Style.IsFontAssigned = True
        StyleDisabled.ButtonStyle = btsOffice11
        TabOrder = 2
        OnClick = btnParceiroClick
        Width = 19
      end
      object edtParceiro: TdxEdit
        Left = 63
        Top = 55
        Width = 334
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
        TabOrder = 3
        CharCase = ecUpperCase
      end
    end
    object Grid: TdxDBGrid
      Left = 185
      Top = 87
      Width = 446
      Height = 334
      Bands = <
        item
          Caption = 'Geral'
          Width = 897
        end
        item
          Caption = 'Carregamento'
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'PRODUTO'
      ShowGroupPanel = True
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 1
      OnEnter = GridEnter
      DataSource = DataSource
      Filter.Active = True
      Filter.Criteria = {00000000}
      GroupNodeColor = 15977833
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
      ShowBands = True
      ShowRowFooter = True
      OnCustomDrawCell = GridCustomDrawCell
      object GridPRODUTO: TdxDBGridMaskColumn
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRODUTO'
      end
      object GridNOME: TdxDBGridMaskColumn
        Width = 131
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object GridUNIDADE: TdxDBGridMaskColumn
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object GridMARCA: TdxDBGridMaskColumn
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MARCA'
      end
      object GridQNTDE_PDR_CARGA: TdxDBGridMaskColumn
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QNTDE_PDR_CARGA'
      end
      object GridUND_CARREGAMENTO: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UND_CARREGAMENTO'
      end
      object GridQTDE_VENDIDA: TdxDBGridMaskColumn
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDE_VENDIDA'
        SummaryFooterType = cstSum
      end
      object GridUND_TRANSPORTE: TdxDBGridColumn
        Color = clGradientActiveCaption
        Width = 153
        BandIndex = 1
        RowIndex = 0
        FieldName = 'UND_TRANSPORTE'
      end
      object GridUND_INDIVIDUAL: TdxDBGridMaskColumn
        Color = clGradientActiveCaption
        Width = 100
        BandIndex = 1
        RowIndex = 0
        FieldName = 'UND_INDIVIDUAL'
      end
      object GridTOTAL_LIQUIDO: TdxDBGridMaskColumn
        Width = 76
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL_LIQUIDO'
        SummaryFooterType = cstSum
      end
      object GridTOTAL_BRUTO: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL_BRUTO'
        SummaryFooterType = cstSum
      end
      object GridTOTAL_DESCONTOS: TdxDBGridMaskColumn
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL_DESCONTOS'
        SummaryFooterType = cstSum
      end
    end
    object pnlCampos: TPanel
      Left = 2
      Top = 87
      Width = 183
      Height = 334
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'pnlCampos'
      Color = clWhite
      TabOrder = 2
      Visible = False
      object TLCustomize: TdxTreeList
        Left = 0
        Top = 0
        Width = 183
        Height = 334
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        Align = alClient
        DragMode = dmAutomatic
        TabOrder = 0
        LookAndFeel = lfFlat
        Options = [aoColumnSizing, aoEditing, aoTabThrough, aoImmediateEditor, aoAutoWidth]
        TreeLineColor = clGrayText
        ShowButtons = False
        ShowLines = False
        OnDragDrop = TLCustomizeDragDrop
        OnDragOver = TLCustomizeDragOver
        object TLCustomizeColumn: TdxTreeListColumn
          Caption = 'Campo'
          DisableEditor = True
          Width = 134
          BandIndex = 0
          RowIndex = 0
        end
        object TLCustomizeIsVisible: TdxTreeListCheckColumn
          Caption = 'Visible'
          Width = 45
          BandIndex = 0
          RowIndex = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
          OnToggleClick = TLCustomizeIsVisibleToggleClick
        end
      end
    end
  end
  object Actions: TActionList
    Left = 432
    Top = 8
    object ActPreview: TAction
      Tag = 1
      Caption = '&Visualizar'
    end
    object ActFechar: TAction
      Caption = 'Fechar'
      OnExecute = ActFecharExecute
    end
    object ActConfigura: TAction
      Caption = 'Configurar Campos (F2)'
      ShortCut = 113
      OnExecute = ActConfiguraExecute
    end
    object ActExporta: TAction
      Caption = 'Exportar para Excel (Ctrl + E)'
      ShortCut = 16453
      OnExecute = ActExportaExecute
    end
  end
  object DsVendedor: TDataSource
    DataSet = DMRelatorios.SelVendedor
    Left = 461
    Top = 8
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.qryConsultaRomaneio
    Left = 490
    Top = 8
  end
  object BarManager: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
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
    Left = 357
    Top = 21
    DockControlHeights = (
      0
      0
      0
      26)
    object BarManagerBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 290
      FloatTop = 163
      FloatClientWidth = 86
      FloatClientHeight = 110
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
          ItemName = 'btnConfig'
        end
        item
          Visible = True
          ItemName = 'btnExpExcel'
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
    object btnConfig: TdxBarButton
      Action = ActConfigura
      Category = 0
      Glyph.Data = {
        96030000424D9603000000000000360000002800000010000000120000000100
        1800000000006003000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000A4A3E44C4B6100000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000A4A3E44C4B610000000000000000000000000000000000000000000000
        000000000000000000000000000000000000003D3BE03836F76463D115151800
        0000000000000000000000000000000000000000000000000000000000000000
        5453694443F83735F83C3AF76060B10000000000000000000000000000000000
        000000000000000000000000000000008684EB3836F83735F83735F84846D419
        191C000000000000000000000000000000000000000000000000000000333339
        3A38EF3735F85755F93E3CF73836F76261B90000000000000000000000000000
        000000000000000000000000007A79F53937F73735F862618E3F3EA43634F73B
        39D85352620000000000000000000000000000000000000000000000003634F7
        3735F85A58F81212203030504D4BF83735F77271DD2121250000000000000000
        000000000000000000000000007575B67271F94B4A590000000000005756893B
        39F73634F7494989000000000000000000000000000000000000000000000000
        0000000000000000000000001F1E246B69DD3634F76261F94141510000000000
        0000000000000000000000000000000000000000000000000000000000000032
        32406D6CF93634F77B79E62A2A2D000000000000000000000000000000000000
        0000000000000000000000000000000000004A4A5E4341D43D3BF77372D90000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000005858725856F84442F87979A3000000000000000000000000000000
        00000000000000000000000000000000000000000000000056566A706FF94341
        F89191AB00000000000000000000000000000000000000000000000000000000
        00000000000000000000004342514B49C8504EF05F5F7A000000000000000000
        0000000000000000000000000000000000000000000000000000000000000F0F
        187A78F94F4DF800000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
    end
    object btnExpExcel: TdxBarButton
      Action = ActExporta
      Category = 0
      Glyph.Data = {
        06030000424D060300000000000036000000280000000F0000000F0000000100
        180000000000D002000000000000000000000000000000000000FFFFFFFFFFFF
        FEFEFEF0F2EFDCE1DAF3F4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFEEF0EC5EC15C34D8394BD44FCBF0CCFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        8CB88675DE7717B41B0BCC112EE535FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFF889D7FC7EAC916B31A0BD5122CCC2EFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF52A64D49E64EC6F3C8000000FFFFFFFFFFFF
        C4CBBF9BAB939ADD9C69D46AABD1ABFFFFFFFFFFFFFFFFFFFFFFFFD3D8D0148B
        0E6ADF6E8BF58E000000FFFFFFFFFFFFFFFFFFC4CBBF84947C75997191B98EA8
        BAA3AEB7A8B1BAABABB5A464AF604CC34F28B92BBAF1BC000000FFFFFFFFFFFF
        FFFFFF83F18626E32C15DA1C18DB1F14E21B1CEA231EED2520E72722C82638B4
        3970C471FFFFFF000000FFFFFFFFFFFF54E7573ACA3F11B6150CB5112AAD2B6B
        9D66758A7172876E6F85676E8664BAC6B8E5EEE5FFFFFF000000FFFFFF48B546
        60CC630EBF130CC91211B716AACEABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000CBD9C85EB55C2DC9320BD7120BD31241C645FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF49CF4838F24091ED95FFFFFF00000088AA8178D27A
        0ED6160AE6130CC4118AF08EFFFFFFFFFFFFFFFFFFFFFFFF96B59069D2691CCC
        2287F78CFFFFFF000000589C5492EB950AE5130AE7130CC411A1EDA3FFFFFFFF
        FFFFFFFFFFFFFFFF899E809CE09B1DBE20B9EBB9FFFFFF0000002C862654EA5A
        0AED130AE2121DC320EEFBF0FFFFFFFFFFFFFFFFFFFFFFFFA6B4A0758D6BBDCF
        B9FFFFFFFFFFFF00000084A37C50EE5610E61731C734A2CDA1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000687D5C9DB299
        81A37BC9D2C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000}
      PaintStyle = psCaptionGlyph
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
  object BarDBNavigator: TdxBarDBNavigator
    BarManager = BarManager
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 397
    Top = 21
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 590
    Top = 28
  end
  object stgFrmConsultaRoman: TcxPropertiesStore
    Components = <
      item
        Component = Grid
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
          'HelpKeyword'
          'HelpType'
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
        Component = GridMARCA
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
        Component = GridNOME
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
        Component = GridPRODUTO
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
        Component = GridQNTDE_PDR_CARGA
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
        Component = GridQTDE_VENDIDA
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
        Component = GridTOTAL_BRUTO
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
        Component = GridTOTAL_DESCONTOS
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
        Component = GridTOTAL_LIQUIDO
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
        Component = GridUND_CARREGAMENTO
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
        Component = GridUND_INDIVIDUAL
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
        Component = GridUND_TRANSPORTE
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
        Component = GridUNIDADE
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
      end>
    StorageName = 'stgFrmConsultaRoman'
    Left = 344
    Top = 175
  end
end
