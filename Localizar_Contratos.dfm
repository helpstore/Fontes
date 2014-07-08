object FrmLocContratos: TFrmLocContratos
  Left = 241
  Top = 210
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Localizar Contratos'
  ClientHeight = 379
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = EdCodigoKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 379
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
    object pnlTop: TPanel
      Left = 2
      Top = 2
      Width = 779
      Height = 96
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      OnExit = pnlTopExit
      object Bevel2: TBevel
        Left = 3
        Top = 29
        Width = 770
        Height = 4
        Shape = bsTopLine
      end
      object LblTitulo: TcxLabel
        Left = 5
        Top = 6
        Caption = 'Localizar Contratos'
        ParentFont = False
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 135
        Top = 38
        Caption = 'Nome'
        ParentFont = False
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 7
        Top = 38
        Caption = 'C'#243'd. Cliente'
        ParentFont = False
        Transparent = True
      end
      object EdNome: TdxEdit
        Left = 134
        Top = 56
        Width = 361
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
        OnKeyDown = EdCodigoKeyDown
        CharCase = ecUpperCase
      end
      object EdCodigo: TdxEdit
        Left = 6
        Top = 56
        Width = 123
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
        OnKeyDown = EdCodigoKeyDown
        CharCase = ecUpperCase
      end
      object rdStatus: TcxRadioGroup
        Left = 503
        Top = 32
        Caption = 'Status Contrato'
        Properties.Columns = 3
        Properties.Items = <
          item
            Caption = 'Ativos'
          end
          item
            Caption = 'Inativos'
          end
          item
            Caption = 'Ambos'
          end>
        ItemIndex = 2
        TabOrder = 5
        Height = 57
        Width = 264
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 343
      Width = 779
      Height = 34
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object RzBitBtn1: TcxButton
        Left = 594
        Top = 4
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
        Left = 685
        Top = 4
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
    end
    object Panel1: TPanel
      Left = 2
      Top = 98
      Width = 779
      Height = 245
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 2
      object GRID: TdxDBGrid
        Left = 0
        Top = 0
        Width = 779
        Height = 245
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CODIGO'
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
        OnEnter = GRIDEnter
        OnExit = GRIDExit
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
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object GRIDCNPJ: TdxDBGridMaskColumn
          Visible = False
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CNPJ'
        end
        object GRIDCODIGO: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
        end
        object GRIDNUM_CONTRATO: TdxDBGridMaskColumn
          Width = 122
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NUM_CONTRATO'
        end
        object GRIDCOD_CLIENTE: TdxDBGridMaskColumn
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COD_CLIENTE'
        end
        object GRIDNOME_RAZAO: TdxDBGridMaskColumn
          Width = 187
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOME_RAZAO'
        end
        object GRIDCOD_CONTRATO: TdxDBGridMaskColumn
          Visible = False
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COD_CONTRATO'
        end
        object GRIDVALOR_CONTRATO: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALOR_CONTRATO'
        end
        object GRIDFRANQUIA_COPIAS: TdxDBGridMaskColumn
          Width = 106
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FRANQUIA_COPIAS'
        end
        object GRIDVALOR_COPIA_EXCEDENTE: TdxDBGridMaskColumn
          Width = 151
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALOR_COPIA_EXCEDENTE'
        end
        object GRIDDT_INICIO: TdxDBGridDateColumn
          Sorted = csUp
          Width = 93
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DT_INICIO'
        end
        object GRIDDT_FIM: TdxDBGridDateColumn
          Width = 75
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DT_FIM'
        end
        object GRIDTIPO_CONTRATO: TdxDBGridMaskColumn
          Width = 304
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIPO_CONTRATO'
        end
        object GRIDDATA: TdxDBGridDateColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA'
        end
        object GRIDINFORMACOES: TdxDBGridMemoColumn
          Width = 78
          BandIndex = 0
          RowIndex = 0
          FieldName = 'INFORMACOES'
        end
        object GRIDGERA_FATURAMENTO: TdxDBGridCheckColumn
          MinWidth = 20
          Width = 97
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GERA_FATURAMENTO'
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object GRIDGERA_LEITURA: TdxDBGridCheckColumn
          MinWidth = 20
          Width = 74
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GERA_LEITURA'
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object GRIDATIVO: TdxDBGridCheckColumn
          MinWidth = 20
          Width = 30
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ATIVO'
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object GRIDFANTASIA: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FANTASIA'
        end
      end
    end
  end
  object Actions: TActionList
    Left = 348
    Top = 167
    object ActOk: TAction
      Tag = 1
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
    object ActCancelar: TAction
      Tag = 1
      Caption = 'Cancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
  end
  object DSource: TDataSource
    AutoEdit = False
    DataSet = qryLocContratos
    Left = 280
    Top = 168
  end
  object stgFrmLocContratos: TcxPropertiesStore
    Components = <
      item
        Component = ActCancelar
        Properties.Strings = (
          'Caption'
          'Category'
          'Checked'
          'Enabled'
          'HelpContext'
          'Hint'
          'ImageIndex'
          'Name'
          'ShortCut'
          'Tag'
          'Visible')
      end
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
        Component = GRIDATIVO
        Properties.Strings = (
          'Alignment'
          'AllowGrayed'
          'BandIndex'
          'Border3D'
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
          'DisplayChecked'
          'DisplayNull'
          'DisplayUnChecked'
          'FieldName'
          'Font'
          'Glyph'
          'GlyphCount'
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
          'ShowNullFieldStyle'
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
          'ValueChecked'
          'ValueGrayed'
          'ValueUnchecked'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDCNPJ
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
        Component = GRIDCOD_CLIENTE
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
        Component = GRIDCOD_CONTRATO
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
          'ButtonGlyph'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DateButtons'
          'DateOnError'
          'DateValidation'
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
          'PopupAlignment'
          'PopupBorder'
          'ReadOnly'
          'RowIndex'
          'SaveTime'
          'ShowButtonStyle'
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
          'UseEditMask'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDDT_FIM
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'ButtonGlyph'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DateButtons'
          'DateOnError'
          'DateValidation'
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
          'PopupAlignment'
          'PopupBorder'
          'ReadOnly'
          'RowIndex'
          'SaveTime'
          'ShowButtonStyle'
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
          'UseEditMask'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDDT_INICIO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'ButtonGlyph'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DateButtons'
          'DateOnError'
          'DateValidation'
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
          'PopupAlignment'
          'PopupBorder'
          'ReadOnly'
          'RowIndex'
          'SaveTime'
          'ShowButtonStyle'
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
          'UseEditMask'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDFANTASIA
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
        Component = GRIDFRANQUIA_COPIAS
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
        Component = GRIDGERA_FATURAMENTO
        Properties.Strings = (
          'Alignment'
          'AllowGrayed'
          'BandIndex'
          'Border3D'
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
          'DisplayChecked'
          'DisplayNull'
          'DisplayUnChecked'
          'FieldName'
          'Font'
          'Glyph'
          'GlyphCount'
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
          'ShowNullFieldStyle'
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
          'ValueChecked'
          'ValueGrayed'
          'ValueUnchecked'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDGERA_LEITURA
        Properties.Strings = (
          'Alignment'
          'AllowGrayed'
          'BandIndex'
          'Border3D'
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
          'DisplayChecked'
          'DisplayNull'
          'DisplayUnChecked'
          'FieldName'
          'Font'
          'Glyph'
          'GlyphCount'
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
          'ShowNullFieldStyle'
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
          'ValueChecked'
          'ValueGrayed'
          'ValueUnchecked'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GRIDINFORMACOES
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
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'HideScrollBars'
          'MaxDisplayLength'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'ScrollBars'
          'SelectionBar'
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
          'WantReturns'
          'WantTabs'
          'Width'
          'WordWrap')
      end
      item
        Component = GRIDNOME_RAZAO
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
        Component = GRIDNUM_CONTRATO
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
        Component = GRIDTIPO_CONTRATO
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
        Component = GRIDVALOR_CONTRATO
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
        Component = GRIDVALOR_COPIA_EXCEDENTE
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
        Component = rdStatus
        Properties.Strings = (
          'ItemIndex')
      end>
    StorageName = 'stgFrmLocContratos'
    Left = 224
    Top = 168
  end
  object qryLocContratos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select cp.CNPJ,'
      '       cp.CODIGO,'
      '    COD_CLIENTE,'
      '    COD_CONTRATO ,'
      '    NUM_CONTRATO,'
      '    DT_INICIO,'
      '    DT_FIM,'
      '    ATIVO,'
      '    INFORMACOES,'
      '    VALOR_CONTRATO,'
      '    FRANQUIA_COPIAS,'
      '    VALOR_COPIA_EXCEDENTE,'
      '    DATA,'
      '    GERA_FATURAMENTO,'
      '    GERA_LEITURA,'
      '    psa.nome_razao,'
      '    psa.fantasia,'
      '    tp.nome tipo_contrato'
      'from ofc_contratos cp'
      
        'left join glo_pessoas_fj psa on (psa.codigo = cp.cod_cliente and' +
        ' psa.cnpj = cp.cnpj)'
      
        'left join GLO_TIPO_CONTRATO tp on (tp.codigo = cp.cod_contrato a' +
        'nd cp.cnpj = tp.cnpj)'
      'where  cp.cnpj = :cnpj'
      'and  ((cp.cod_cliente = :cod_cliente) or (:cod_cliente = 0))'
      
        'and  ((cp.ativo = cast(:ativo as char(1))) or (cast(:ativo as ch' +
        'ar(1)) = '#39#39'))'
      
        'and (upper(psa.nome_razao) like '#39'%'#39'||upper(cast(:cliente as varc' +
        'har(50)))||'#39'%'#39' or cast(:cliente as varchar(50)) = '#39#39')')
    Left = 312
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'cod_cliente'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'cod_cliente'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'cliente'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cliente'
        ParamType = ptInput
      end>
    object qryLocContratosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_CONTRATOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryLocContratosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_CONTRATOS"."CODIGO"'
      Required = True
    end
    object qryLocContratosCOD_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'COD_CLIENTE'
      Origin = '"OFC_CONTRATOS"."COD_CLIENTE"'
    end
    object qryLocContratosCOD_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo Contrato'
      FieldName = 'COD_CONTRATO'
      Origin = '"OFC_CONTRATOS"."COD_CONTRATO"'
    end
    object qryLocContratosNUM_CONTRATO: TIBStringField
      DisplayLabel = 'N'#186' Contrato'
      FieldName = 'NUM_CONTRATO'
      Origin = '"OFC_CONTRATOS"."NUM_CONTRATO"'
      Size = 30
    end
    object qryLocContratosDT_INICIO: TDateTimeField
      DisplayLabel = 'Dt. In'#237'cio'
      FieldName = 'DT_INICIO'
      Origin = '"OFC_CONTRATOS"."DT_INICIO"'
    end
    object qryLocContratosDT_FIM: TDateTimeField
      DisplayLabel = 'Dt. Fim'
      FieldName = 'DT_FIM'
      Origin = '"OFC_CONTRATOS"."DT_FIM"'
    end
    object qryLocContratosATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"OFC_CONTRATOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object qryLocContratosINFORMACOES: TMemoField
      DisplayLabel = 'Informa'#231#245'es'
      FieldName = 'INFORMACOES'
      Origin = '"OFC_CONTRATOS"."INFORMACOES"'
      BlobType = ftMemo
      Size = 8
    end
    object qryLocContratosDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"OFC_CONTRATOS"."DATA"'
    end
    object qryLocContratosGERA_FATURAMENTO: TIBStringField
      DisplayLabel = 'Gera Faturamento'
      FieldName = 'GERA_FATURAMENTO'
      Origin = '"OFC_CONTRATOS"."GERA_FATURAMENTO"'
      FixedChar = True
      Size = 1
    end
    object qryLocContratosNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object qryLocContratosTIPO_CONTRATO: TIBStringField
      DisplayLabel = 'Tipo de Contrato'
      FieldName = 'TIPO_CONTRATO'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
    object qryLocContratosFANTASIA: TIBStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object qryLocContratosVALOR_CONTRATO: TFloatField
      DisplayLabel = 'Vlr. Contrato'
      FieldName = 'VALOR_CONTRATO'
      Origin = '"OFC_CONTRATOS"."VALOR_CONTRATO"'
      DisplayFormat = '###,##0.00'
    end
    object qryLocContratosFRANQUIA_COPIAS: TIntegerField
      FieldName = 'FRANQUIA_COPIAS'
      Origin = '"OFC_CONTRATOS"."FRANQUIA_COPIAS"'
    end
    object qryLocContratosVALOR_COPIA_EXCEDENTE: TFloatField
      FieldName = 'VALOR_COPIA_EXCEDENTE'
      Origin = '"OFC_CONTRATOS"."VALOR_COPIA_EXCEDENTE"'
    end
    object qryLocContratosGERA_LEITURA: TIBStringField
      FieldName = 'GERA_LEITURA'
      Origin = '"OFC_CONTRATOS"."GERA_LEITURA"'
      FixedChar = True
      Size = 1
    end
  end
end
