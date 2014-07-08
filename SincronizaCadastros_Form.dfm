object frmSincronizaCadastros: TfrmSincronizaCadastros
  Left = 96
  Top = 89
  Width = 1147
  Height = 581
  Caption = 'Sincroniza'#231#227'o de Cadastros'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 1139
    Height = 554
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
      Top = 550
      Width = 1135
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object Panel2: TPanel
      Left = 2
      Top = 510
      Width = 1135
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        1135
        40)
      object LblStatus: TcxLabel
        Left = 205
        Top = 13
        Caption = 'Status'
        ParentFont = False
        Transparent = True
      end
      object RzBitBtn2: TcxButton
        Left = 8
        Top = 7
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Cancel = True
        Caption = '&Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = RzBitBtn2Click
        OnKeyDown = RzBitBtn2KeyDown
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
      end
      object BtnCriar: TcxButton
        Left = 102
        Top = 7
        Width = 99
        Height = 25
        Cursor = crHandPoint
        Action = ActExporta
        Caption = 'Sincronizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyDown = BtnCriarKeyDown
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADAD0DADADADDADADADA00DADADAADADADAD0D0DADADDADADADA0AD0
          DADA000000000DAD0DADD0DADADADADAD0DAAD0DADADADADAD0DDAD0DADADADA
          DAD0AD0DADADADADAD0DD0DADADADADAD0DA000000000DAD0DADDADADADA0AD0
          DADAADADADAD0D0DADADDADADADA00DADADAADADADAD0DADADAD}
      end
      object pgbar: TProgressBar
        Left = 248
        Top = 12
        Width = 877
        Height = 16
        Anchors = [akLeft, akRight, akBottom]
        TabOrder = 2
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 1135
      Height = 39
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 1
      object b2: TBevel
        Left = 8
        Top = 29
        Width = 268
        Height = 2
        Shape = bsTopLine
      end
      object LblTitulo: TcxLabel
        Left = 6
        Top = 3
        Caption = 'Sincroniza'#231#227'o de Cadastros'
        ParentFont = False
        Transparent = True
      end
    end
    object pc: TcxPageControl
      Left = 2
      Top = 90
      Width = 1135
      Height = 420
      ActivePage = tbsProdutos
      Align = alClient
      HotTrack = True
      TabOrder = 2
      ClientRectBottom = 420
      ClientRectRight = 1135
      ClientRectTop = 24
      object tbsProdutos: TcxTabSheet
        Caption = ' Produtos'
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 1135
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object Panel9: TPanel
          Left = 0
          Top = 1
          Width = 1135
          Height = 395
          Align = alClient
          BevelOuter = bvNone
          Caption = 'Panel9'
          Color = clHighlightText
          TabOrder = 0
          object GridProdutos: TdxDBGrid
            Left = 0
            Top = 0
            Width = 1135
            Height = 395
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'CODIGO'
            ShowGroupPanel = True
            ShowSummaryFooter = True
            SummaryGroups = <>
            SummarySeparator = ', '
            Align = alClient
            PopupMenu = PopSelecao
            TabOrder = 0
            DataSource = dsProdutos
            Filter.Active = True
            Filter.Criteria = {00000000}
            GroupNodeColor = 15977833
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
            ShowRowFooter = True
            object GridProdutosCODIGO: TdxDBGridMaskColumn
              Width = 98
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CODIGO'
              SummaryFooterType = cstCount
            end
            object GridProdutosCODIGO_2: TdxDBGridMaskColumn
              Width = 98
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CODIGO_2'
            end
            object GridProdutosNOME: TdxDBGridMaskColumn
              Width = 274
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOME'
            end
            object GridProdutosMARCA: TdxDBGridMaskColumn
              Width = 152
              BandIndex = 0
              RowIndex = 0
              FieldName = 'MARCA'
            end
            object GridProdutosGRUPO: TdxDBGridMaskColumn
              Width = 145
              BandIndex = 0
              RowIndex = 0
              FieldName = 'GRUPO'
            end
            object GridProdutosSUBGRUPO: TdxDBGridMaskColumn
              Width = 222
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SUBGRUPO'
            end
            object GridProdutosEXISTE: TdxDBGridCheckColumn
              MinWidth = 20
              Width = 48
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EXISTE'
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object GridProdutosSELECIONADO: TdxDBGridCheckColumn
              Width = 34
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SELECIONADO'
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object GridProdutosCOD_MARCA: TdxDBGridMaskColumn
              Visible = False
              Width = 47
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COD_MARCA'
            end
            object GridProdutosCOD_GRUPO: TdxDBGridMaskColumn
              Visible = False
              Width = 47
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COD_GRUPO'
            end
            object GridProdutosCOD_SUBGRUPO: TdxDBGridMaskColumn
              Visible = False
              Width = 58
              BandIndex = 0
              RowIndex = 0
              FieldName = 'COD_SUBGRUPO'
            end
          end
        end
      end
      object tbsFornecedores: TcxTabSheet
        Caption = ' Fornecedores'
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1135
          Height = 397
          Align = alClient
          Caption = 'Panel5'
          Color = clHighlightText
          TabOrder = 0
          object GridFornecedores: TdxDBGrid
            Left = 1
            Top = 1
            Width = 1133
            Height = 395
            Bands = <
              item
              end>
            DefaultLayout = True
            HeaderPanelRowCount = 1
            KeyField = 'CODIGO'
            ShowGroupPanel = True
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
                    SummaryType = cstSum
                  end
                  item
                    SummaryField = 'VLR_TOTAL'
                    SummaryType = cstSum
                  end>
                Name = 'sgOrcamento'
              end>
            SummarySeparator = ', '
            Align = alClient
            PopupMenu = PopSelecao
            TabOrder = 0
            DataSource = dsFornecedor
            Filter.Active = True
            Filter.Criteria = {00000000}
            GroupNodeColor = 15977833
            LookAndFeel = lfFlat
            OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
            OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
            ShowRowFooter = True
            object GridFornecedoresCODIGO: TdxDBGridMaskColumn
              Width = 94
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CODIGO'
              SummaryFooterType = cstCount
            end
            object GridFornecedoresCPF_CNPJ: TdxDBGridMaskColumn
              Width = 86
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CPF_CNPJ'
            end
            object GridFornecedoresNOME: TdxDBGridMaskColumn
              Width = 304
              BandIndex = 0
              RowIndex = 0
              FieldName = 'NOME'
            end
            object GridFornecedoresEXISTE: TdxDBGridCheckColumn
              MinWidth = 20
              Width = 45
              BandIndex = 0
              RowIndex = 0
              FieldName = 'EXISTE'
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object GridFornecedoresCNPJ_ORIGEM: TdxDBGridMaskColumn
              Visible = False
              Width = 82
              BandIndex = 0
              RowIndex = 0
              FieldName = 'CNPJ_ORIGEM'
            end
            object GridFornecedoresSELECIONADO: TdxDBGridCheckColumn
              MinWidth = 20
              Width = 33
              BandIndex = 0
              RowIndex = 0
              FieldName = 'SELECIONADO'
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 41
      Width = 1135
      Height = 49
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 3
      OnExit = Panel3Exit
      DesignSize = (
        1135
        49)
      object lbldestino: TcxLabel
        Left = 7
        Top = 16
        Caption = 'Destino'
        ParentFont = False
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 1015
        Top = 20
        Anchors = [akTop, akRight]
        Caption = 'Registros'
        ParentFont = False
        Transparent = True
      end
      object cmbEmpresas: TdxLookupEdit
        Left = 48
        Top = 16
        Width = 533
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
        ClearKey = 46
        ListFieldName = 'NOME;CNPJ'
        CanDeleteText = True
        KeyFieldName = 'CNPJ'
        ListSource = dsEmpresas
        LookupKeyValue = Null
      end
      object ckSincronizados: TCheckBox
        Left = 600
        Top = 20
        Width = 161
        Height = 17
        Caption = 'Somente n'#227'o Sincronizados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtRegistro: TEdit
        Left = 1065
        Top = 20
        Width = 45
        Height = 14
        Anchors = [akTop, akRight]
        BorderStyle = bsNone
        TabOrder = 2
        Text = '0'
      end
    end
  end
  object DIR: TOpenDialog
    DefaultExt = 'txt'
    Filter = '*.TXT'
    Left = 344
    Top = 8
  end
  object Actions: TActionList
    Left = 688
    Top = 8
    object ActFechar: TAction
      Caption = '&Fechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActSeleciona: TAction
      Caption = 'Abre'
      ShortCut = 16416
      OnExecute = ActSelecionaExecute
    end
    object ActExporta: TAction
      Caption = 'Exporta'
      OnExecute = ActExportaExecute
    end
    object ActSelecionaTodos: TAction
      Caption = 'ActSelecionaTodos'
      OnExecute = ActSelecionaTodosExecute
    end
    object ActDeselecionaTodos: TAction
      Caption = 'Desmarcar Todos os Registros'
      OnExecute = ActDeselecionaTodosExecute
    end
  end
  object stgfrmSincronizaCadastros: TcxPropertiesStore
    Components = <
      item
        Component = GridFornecedores
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
        Component = GridFornecedoresCNPJ_ORIGEM
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
        Component = GridFornecedoresCODIGO
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
        Component = GridFornecedoresCPF_CNPJ
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
        Component = GridFornecedoresEXISTE
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
        Component = GridFornecedoresNOME
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
        Component = GridFornecedoresSELECIONADO
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
        Component = GridProdutos
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
        Component = GridProdutosCOD_GRUPO
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
        Component = GridProdutosCOD_MARCA
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
        Component = GridProdutosCOD_SUBGRUPO
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
        Component = GridProdutosCODIGO
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
        Component = GridProdutosCODIGO_2
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
        Component = GridProdutosEXISTE
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
        Component = GridProdutosGRUPO
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
        Component = GridProdutosMARCA
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
        Component = GridProdutosNOME
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
        Component = GridProdutosSELECIONADO
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
        Component = GridProdutosSUBGRUPO
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
    StorageName = 'stgfrmSincronizaCadastros'
    Left = 376
    Top = 7
  end
  object QryProdutos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AutoCalcFields = False
    RefreshSQL.Strings = (
      
        'select * from pcd_exp_consulta_produtos(:cnpj,:cnpj_destino,:tip' +
        'o)')
    SelectSQL.Strings = (
      
        'select * from pcd_exp_consulta_produtos(:cnpj,:cnpj_destino,:tip' +
        'o)')
    ModifySQL.Strings = (
      'update EST_PRODUTOS'
      'set'
      '  SELECIONADO = :SELECIONADO'
      'where'
      '  CNPJ = :OLD_CNPJ_ORIGEM and'
      '  CODIGO = :OLD_CODIGO')
    Left = 768
    Top = 3
    object QryProdutosCODIGO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'CODIGO'
      Origin = '"PCD_EXP_CONSULTA_PRODUTOS"."CODIGO"'
      Size = 15
    end
    object QryProdutosCODIGO_2: TIBStringField
      DisplayLabel = 'C'#243'd. Secund'#225'rio'
      FieldName = 'CODIGO_2'
      Origin = '"PCD_EXP_CONSULTA_PRODUTOS"."CODIGO_2"'
      Size = 15
    end
    object QryProdutosNOME: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NOME'
      Origin = '"PCD_EXP_CONSULTA_PRODUTOS"."NOME"'
      Size = 50
    end
    object QryProdutosEXISTE: TIBStringField
      DisplayLabel = 'Sinc'
      FieldName = 'EXISTE'
      Origin = '"PCD_EXP_CONSULTA_PRODUTOS"."EXISTE"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosSELECIONADO: TIBStringField
      DisplayLabel = 'X'
      FieldName = 'SELECIONADO'
      Origin = '"PCD_EXP_CONSULTA_PRODUTOS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosCNPJ_ORIGEM: TIBStringField
      FieldName = 'CNPJ_ORIGEM'
      Origin = '"PCD_EXP_CONSULTA_PRODUTOS"."CNPJ_ORIGEM"'
      Size = 14
    end
    object QryProdutosMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = '"PCD_EXP_CONSULTA_PRODUTOS"."MARCA"'
      Size = 50
    end
    object QryProdutosCOD_MARCA: TIntegerField
      DisplayLabel = 'C'#243'd. Marca'
      FieldName = 'COD_MARCA'
      Origin = '"PCD_EXP_CONSULTA_PRODUTOS"."COD_MARCA"'
    end
    object QryProdutosCOD_GRUPO: TIntegerField
      DisplayLabel = 'C'#243'd. Grupo'
      FieldName = 'COD_GRUPO'
      Origin = '"PCD_EXP_CONSULTA_PRODUTOS"."COD_GRUPO"'
    end
    object QryProdutosGRUPO: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Origin = '"PCD_EXP_CONSULTA_PRODUTOS"."GRUPO"'
      Size = 50
    end
    object QryProdutosCOD_SUBGRUPO: TIntegerField
      DisplayLabel = 'C'#243'd. SubGrupo'
      FieldName = 'COD_SUBGRUPO'
      Origin = '"PCD_EXP_CONSULTA_PRODUTOS"."COD_SUBGRUPO"'
    end
    object QryProdutosSUBGRUPO: TIBStringField
      DisplayLabel = 'SubGrupo'
      FieldName = 'SUBGRUPO'
      Origin = '"PCD_EXP_CONSULTA_PRODUTOS"."SUBGRUPO"'
      Size = 50
    end
  end
  object QryEmpresas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select e.nome, e.cnpj from sis_empresas e'
      'where e.cnpj <> :cnpj')
    Left = 808
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryEmpresasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"SIS_EMPRESAS"."NOME"'
      Size = 50
    end
    object QryEmpresasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = QryProdutos
    Left = 768
    Top = 36
  end
  object dsEmpresas: TDataSource
    AutoEdit = False
    DataSet = QryEmpresas
    Left = 808
    Top = 36
  end
  object PopSelecao: TPopupMenu
    Left = 298
    Top = 290
    object MarcarTodososRegistros1: TMenuItem
      Action = ActSelecionaTodos
      Caption = 'Marcar Todos os Registros'
    end
    object DesmarcarTodososRegistros1: TMenuItem
      Action = ActDeselecionaTodos
    end
  end
  object InsereProdutos: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_EXP_INSERE_PRODUTO'
    Left = 842
    Top = 2
  end
  object dsFornecedor: TDataSource
    AutoEdit = False
    DataSet = QryFornecedor
    Left = 880
    Top = 36
  end
  object QryFornecedor: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AutoCalcFields = False
    RefreshSQL.Strings = (
      
        'select * from pcd_exp_consulta_fornecedores(:cnpj,:cnpj_destino,' +
        ':tipo)')
    SelectSQL.Strings = (
      
        'select * from pcd_exp_consulta_fornecedores(:cnpj,:cnpj_destino,' +
        ':tipo)')
    ModifySQL.Strings = (
      'update glo_pessoas_fj'
      'set'
      '  SELECIONADO = :SELECIONADO'
      'where'
      '  CNPJ = :OLD_CNPJ_ORIGEM and'
      '  CODIGO = :OLD_CODIGO')
    Left = 880
    Top = 3
    object QryFornecedorCPF_CNPJ: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      Origin = '"PCD_EXP_CONSULTA_FORNECEDORES"."CPF_CNPJ"'
      Size = 15
    end
    object QryFornecedorNOME: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME'
      Origin = '"PCD_EXP_CONSULTA_FORNECEDORES"."NOME"'
      Size = 50
    end
    object QryFornecedorEXISTE: TIBStringField
      DisplayLabel = 'Sinc'
      FieldName = 'EXISTE'
      Origin = '"PCD_EXP_CONSULTA_FORNECEDORES"."EXISTE"'
      FixedChar = True
      Size = 1
    end
    object QryFornecedorSELECIONADO: TIBStringField
      DisplayLabel = 'X'
      FieldName = 'SELECIONADO'
      Origin = '"PCD_EXP_CONSULTA_FORNECEDORES"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object QryFornecedorCNPJ_ORIGEM: TIBStringField
      FieldName = 'CNPJ_ORIGEM'
      Origin = '"PCD_EXP_CONSULTA_FORNECEDORES"."CNPJ_ORIGEM"'
      Size = 14
    end
    object QryFornecedorCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"PCD_EXP_CONSULTA_FORNECEDORES"."CODIGO"'
    end
  end
  object InsereFornecedor: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_EXP_INSERE_PESSOAS'
    Left = 914
    Top = 2
  end
end
