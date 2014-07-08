object FrmLocOrdens: TFrmLocOrdens
  Left = 115
  Top = 106
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Localizar Ordens'
  ClientHeight = 444
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 620
    Height = 444
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Bevel3: TBevel
      Left = 15
      Top = 29
      Width = 502
      Height = 2
      Shape = bsTopLine
    end
    object RzLabel1: TcxLabel
      Left = 12
      Top = 263
      Caption = 'Chave=>'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 11
      Top = 46
      Caption = 'C'#243'digo'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 199
      Top = 46
      Caption = 'Nome'
      ParentFont = False
      Transparent = True
    end
    object pnlTop: TPanel
      Left = 2
      Top = 2
      Width = 616
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Bevel2: TBevel
        Left = 3
        Top = 29
        Width = 601
        Height = 2
        Shape = bsTopLine
      end
      object LblTitulo: TcxLabel
        Left = 5
        Top = 6
        Caption = 'Localizar Ordens'
        ParentFont = False
        Transparent = True
      end
    end
    object GRID: TdxDBGrid
      Left = 8
      Top = 72
      Width = 603
      Height = 321
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
      OnEnter = GRIDEnter
      OnExit = GRIDExit
      OnKeyDown = GRIDKeyDown
      OnKeyPress = GridKeyPress
      AutoExpandOnSearch = False
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DSource
      Filter.Criteria = {00000000}
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object GRIDCODIGO: TdxDBGridMaskColumn
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GRIDNOME: TdxDBGridMaskColumn
        Width = 452
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object GRIDDATA: TdxDBGridColumn
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
    end
    object EdCodigo: TdxEdit
      Left = 54
      Top = 42
      Width = 137
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
      OnEnter = EdCodigoEnter
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
      CharCase = ecUpperCase
    end
    object EdNome: TdxEdit
      Left = 243
      Top = 42
      Width = 369
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
      OnEnter = EdNomeEnter
      OnExit = EdNomeExit
      OnKeyDown = EdCodigoKeyDown
      CharCase = ecUpperCase
    end
    object Panel2: TPanel
      Left = 2
      Top = 402
      Width = 616
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 4
      object BtnTrocar: TcxButton
        Left = 282
        Top = 7
        Width = 127
        Height = 25
        Action = ActTrocaOrdem
        Caption = 'Trocar Ordem ( F12 )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        NumGlyphs = 2
      end
      object RzBitBtn1: TcxButton
        Left = 429
        Top = 7
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Action = ActOk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = False
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555555555555555555905555555555555999055555555555599905555
          5555555999990555555555999999055555555799059990555555790555599055
          5555555555599905555555555555990555555555555559905555555555555579
          0555555555555557905555555555555559905555555555555555}
      end
      object BtnCancelar: TcxButton
        Left = 520
        Top = 7
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Action = ActCancelar
        Cancel = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = False
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADA00DADA1FDDAD1FA0000DADADAAD111FA00DAD1FADDA111FDADAD1
          FADAADA111F00D11FDADDADA111F011FDADAADADA11111FDADADDADADA111FDA
          DADAADADA11111FDADADDADA111F011ADADAAD1111F00011FDADD1111F0000D1
          1FDAA11FAD0000AD11FDDADADAD00ADADADAADADADADADADADAD}
      end
      object RDNOME: TRadioButton
        Left = 128
        Top = 13
        Width = 112
        Height = 17
        Caption = 'Ordem de Nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = RDNOMEClick
      end
      object RdCodigo: TRadioButton
        Left = 8
        Top = 13
        Width = 121
        Height = 17
        Caption = 'Ordem de C'#243'digo'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        TabStop = True
        OnClick = RDNOMEClick
      end
    end
  end
  object Act: TActionList
    Left = 348
    Top = 175
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
    object ActCancelar: TAction
      Caption = 'Cancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
    object ActTrocaOrdem: TAction
      Caption = 'Trocar Ordem'
      ShortCut = 123
      OnExecute = ActTrocaOrdemExecute
    end
  end
  object DSource: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelOrdens_Servicos
    Left = 272
    Top = 168
  end
  object stgFrmLocOrdens: TcxPropertiesStore
    Components = <
      item
        Component = GRID
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
        Component = GRIDCODIGO
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
        Component = GRIDDATA
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
        Component = GRIDNOME
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
    StorageName = 'stgFrmLocOrdens'
    Left = 216
    Top = 160
  end
end
