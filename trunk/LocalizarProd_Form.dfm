object FrmLocalizarProd: TFrmLocalizarProd
  Left = 177
  Top = 105
  BorderStyle = bsDialog
  Caption = ' Localizar Produto'
  ClientHeight = 418
  ClientWidth = 614
  Color = clWhite
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
  object pnlclient: TPanel
    Left = 0
    Top = 0
    Width = 614
    Height = 418
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = 'pnlclient'
    Color = clWhite
    TabOrder = 0
    object Grid: TdxDBGrid
      Left = 8
      Top = 136
      Width = 597
      Height = 237
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      OnKeyDown = GridKeyDown
      DataSource = dsProdutos
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoPartialLoad, edgoUseBookmarks]
      object GridCNPJ: TdxDBGridMaskColumn
        Visible = False
        Width = 99
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CNPJ'
      end
      object GridCODIGO: TdxDBGridMaskColumn
        HeaderAlignment = taRightJustify
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GridNOME: TdxDBGridMaskColumn
        Caption = ' Nome'
        Width = 316
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object GridQTDADE_2: TdxDBGridMaskColumn
        HeaderAlignment = taRightJustify
        Width = 84
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDADE_2'
      end
      object GridPRC_VENDA: TdxDBGridMaskColumn
        Caption = 'Prc. Venda'
        HeaderAlignment = taRightJustify
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRC_VENDA'
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 381
      Width = 610
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 610
        Height = 2
        Align = alTop
        Shape = bsFrame
      end
      object Panel3: TPanel
        Left = 0
        Top = 2
        Width = 610
        Height = 3
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
      end
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 5
        Width = 610
        Height = 26
        Align = dalTop
        BarManager = BarManager
      end
    end
    object pc: TcxPageControl
      Left = 8
      Top = 9
      Width = 596
      Height = 128
      ActivePage = dxTabSheet1
      TabOrder = 2
      ClientRectBottom = 276
      ClientRectLeft = 2
      ClientRectRight = 654
      ClientRectTop = 24
      object dxTabSheet1: TcxTabSheet
        Caption = '  Localizar  '
        OnExit = dxTabSheet1Exit
        OnShow = FormShow
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 0
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object Shape5: TShape
          Left = 0
          Top = 1
          Width = 0
          Height = 127
          Align = alClient
          Brush.Color = clBtnFace
          Pen.Color = clBtnFace
        end
        object Label1: TcxLabel
          Left = 42
          Top = 10
          Caption = 'C'#243'digo :'
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 51
          Top = 34
          Caption = 'Inicial:'
          Transparent = True
        end
        object Label3: TcxLabel
          Left = 46
          Top = 82
          Caption = 'Marca :'
          Transparent = True
        end
        object Label7: TcxLabel
          Left = 267
          Top = 82
          Caption = 'Aplica'#231#227'o :'
          Transparent = True
        end
        object Label5: TcxLabel
          Left = 56
          Top = 58
          Caption = 'Final:'
          Transparent = True
        end
        object Label6: TcxLabel
          Left = 378
          Top = 10
          Caption = 'F12 - Filtrar Direto'
          ParentFont = False
          Transparent = True
        end
        object edCodigo: TdxEdit
          Left = 88
          Top = 5
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
          TabOrder = 0
          OnKeyDown = edCodigoKeyDown
          CharCase = ecUpperCase
        end
        object EdNomeI: TdxEdit
          Left = 88
          Top = 29
          Width = 397
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
          OnKeyDown = edCodigoKeyDown
          CharCase = ecUpperCase
        end
        object cmbMarca: TdxLookupEdit
          Left = 88
          Top = 77
          Width = 160
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
          OnKeyDown = edCodigoKeyDown
          ClearKey = 46
          ListFieldName = 'NOME'
          CanDeleteText = True
          KeyFieldName = 'CODIGO'
          ListSource = dsMarcas
          LookupKeyValue = Null
        end
        object cmbAplicacao: TdxLookupEdit
          Left = 325
          Top = 77
          Width = 160
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
          OnKeyDown = edCodigoKeyDown
          ClearKey = 46
          ListFieldName = 'NOME'
          CanDeleteText = True
          KeyFieldName = 'CODIGO'
          ListSource = dsAplicacoes
          LookupKeyValue = Null
        end
        object EdNomeF: TdxEdit
          Left = 88
          Top = 53
          Width = 397
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
          OnKeyDown = edCodigoKeyDown
          CharCase = ecUpperCase
        end
      end
      object dxTabSheet3: TcxTabSheet
        Caption = '  Similares  '
        object Shape3: TShape
          Left = 0
          Top = 0
          Width = 0
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object Shape7: TShape
          Left = 0
          Top = 1
          Width = 0
          Height = 127
          Align = alClient
          Brush.Color = clBtnFace
          Pen.Color = clBtnFace
        end
        object Label4: TcxLabel
          Left = 17
          Top = 10
          Caption = 'Listando produtos similares '#224
          Transparent = True
        end
        object cmbProduto: TdxLookupEdit
          Left = 16
          Top = 26
          Width = 294
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
          ListFieldName = 'NOME'
          KeyFieldName = 'CODIGO'
          ListSource = dsProdutos
          LookupKeyValue = ''
        end
      end
    end
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = DMLocalizarProd.Produtos
    Left = 40
    Top = 248
  end
  object BarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 544
    Top = 176
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
      Caption = 'Confirmacao'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 150
      FloatTop = 277
      FloatClientWidth = 23
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'opSelecionar'
        end
        item
          Visible = True
          ItemName = 'opCancelar'
        end>
      OldName = 'Confirmacao'
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object opSelecionar: TdxBarButton
      Action = ActSelecionar
      Category = 0
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000008080008080
        0080800080800080800080807010107010100080800080800080800080800080
        8000808000808000808000808000808000000080800080800080800080800080
        8080000000800000800070101000808000808000808000808000808000808000
        8080008080008080000000808000808000808000808080000000800000800000
        8000008000701010008080008080008080008080008080008080008080008080
        0000008080008080008080701010008000008000008000008000008000008000
        7010100080800080800080800080800080800080800080800000008080008080
        80000000800000800000800000FF000080000080000080000080008000000080
        8000808000808000808000808000808000000080800080800080000080000080
        0000EF0000800000EF0000800000800000800070101000808000808000808000
        8080008080008080000000808002818100FF0000800000FF0000800000800000
        800000FF00008000008000008000800000008080008080008080008080008080
        000000808001808080000000EF0000800000800000FF0000800000800000EF00
        0080000080000080007010100080800080800080800080800000008080018080
        00800000800000800000EF1000808000EF1000800000800000FF000080000080
        00008000800000008080008080008080000000808000808000FF0000800000FF
        0000808000808000808000FF0000800000800000FF0000800000800000800070
        1010008080008080000000808000808000808000EF1000808000808000808000
        808000808000EF1000800000800000EF00008000008000008000800000008080
        0000008080008080008080008080008080008080008080008080008080008080
        00FF0000800000800000FF000080000080000080007010100000008080008080
        00808000808000808000808000808000808000808000808000808000FF000080
        0000800000FF0000800000800070101000000080800080800080800080800080
        8000808000808000808000808000808000808000808000EF1000800000800000
        FF00008000008000000000808000808000808000808000808000808000808000
        808000808000808000808000808000808000FF0000800000800000FF00701010
        0000008080008080008080008080008080008080008080008080008080008080
        00808000808000808000808000FF000080000080007010100000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000FF0000800000800000000080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        808000FF000080800000}
      PaintStyle = psCaptionGlyph
    end
    object opCancelar: TdxBarButton
      Action = ActCancelar
      Category = 0
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000120B0000120B00000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000000080800080800080800080808080
        8080808000808000808000808000808000808000808000808000808000808000
        808000808000808000000080800080800080800000FF00008000008080808000
        80800080800080800080800080800000FF808080008080008080008080008080
        00000080800080800080800000FF000080000080000080808080008080008080
        0080800000FF0000800000808080800080800080800080800000008080008080
        0080800000FF0000800000800000800000808080800080800000FF0000800000
        8000008000008080808000808000808000000080800080800080800080800000
        FF00008000008000008000008080808000008000008000008000008000008080
        808000808000808000000080800080800080800080800080800000FF00008000
        0080000080000080000080000080000080000080808080008080008080008080
        00000080800080800080800080800080800080800000FF000080000080000080
        0000800000800000808080800080800080800080800080800000008080008080
        0080800080800080800080800080800000800000800000800000800000808080
        8000808000808000808000808000808000000080800080800080800080800080
        800080800080800000FF00008000008000008000008080808000808000808000
        808000808000808000000080800080800080800080800080800080800000FF00
        0080000080000080000080000080808080008080008080008080008080008080
        00000080800080800080800080800080800000FF000080000080000080808080
        0000800000800000808080800080800080800080800080800000008080008080
        0080800080800000FF0000800000800000808080800080800000FF0000800000
        8000008080808000808000808000808000000080800080800080800080800000
        FF0000800000808080800080800080800080800000FF00008000008000008080
        808000808000808000000080800080800080800080800080800000FF00008000
        80800080800080800080800080800000FF000080000080000080008080008080
        0000008080008080008080008080008080008080008080008080008080008080
        0080800080800080800000FF0000800000FF0080800080800000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000000080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        80800080800080800000}
      PaintStyle = psCaptionGlyph
    end
  end
  object dsMarcas: TDataSource
    AutoEdit = False
    DataSet = DMLocalizarProd.SelMarca
    Left = 40
    Top = 184
  end
  object dsAplicacoes: TDataSource
    AutoEdit = False
    DataSet = DMLocalizarProd.SelAplicacao
    Left = 104
    Top = 184
  end
  object dsSimilares: TDataSource
    AutoEdit = False
    DataSet = DMLocalizarProd.Similares
    Left = 104
    Top = 248
  end
  object Actions: TActionList
    Left = 544
    Top = 240
    object ActSelecionar: TAction
      Caption = ' &Selecionar  '
      OnExecute = ActSelecionarExecute
    end
    object ActCancelar: TAction
      Caption = ' &Cancelar  '
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
    object ActNP: TAction
      Caption = 'ActNP'
      ShortCut = 16418
      OnExecute = ActNPExecute
    end
    object ActPP: TAction
      Caption = 'ActPP'
      ShortCut = 16417
      OnExecute = ActPPExecute
    end
    object ActFiltrar: TAction
      Caption = 'ActFiltrar'
      ShortCut = 123
      OnExecute = ActFiltrarExecute
    end
  end
  object stgFrmLocalizarProd: TcxPropertiesStore
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
        Component = GridCNPJ
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
        Component = GridCODIGO
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
        Component = GridPRC_VENDA
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
        Component = GridQTDADE_2
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
    StorageName = 'stgFrmLocalizarProd'
    Left = 192
    Top = 200
  end
end
