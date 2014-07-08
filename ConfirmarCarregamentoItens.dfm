object FrmConfirmarCarregamentoItens: TFrmConfirmarCarregamentoItens
  Left = 177
  Top = 277
  Width = 767
  Height = 345
  Caption = 'FrmConfirmarCarregamentoItens'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 277
    Width = 759
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btnSalvar: TcxButton
      Left = 8
      Top = 8
      Width = 90
      Height = 25
      Action = ActSalvar
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
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
      TabStop = False
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
  object pnlCampos: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 277
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'pnlCampos'
    Color = clHighlightText
    TabOrder = 3
    Visible = False
    object TLCustomize: TdxTreeList
      Left = 0
      Top = 0
      Width = 145
      Height = 277
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
      OnStartDrag = TLCustomizeStartDrag
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
  object Panel2: TPanel
    Left = 145
    Top = 0
    Width = 614
    Height = 277
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 614
      Height = 38
      Align = alTop
      BevelOuter = bvNone
      Color = clHighlightText
      TabOrder = 1
      object b2: TBevel
        Left = 44
        Top = 30
        Width = 298
        Height = 2
        Shape = bsTopLine
      end
      object Image1: TImage
        Left = 8
        Top = 2
        Width = 32
        Height = 32
        AutoSize = True
        Picture.Data = {
          055449636F6E0000010001002020000100000000A80800001600000028000000
          2000000040000000010008000000000080040000000000000000000000000000
          0000000000000000000080000080000000808000800000008000800080800000
          C0C0C000C0DCC000F0CAA6000020400000206000002080000020A0000020C000
          0020E00000400000004020000040400000406000004080000040A0000040C000
          0040E00000600000006020000060400000606000006080000060A0000060C000
          0060E00000800000008020000080400000806000008080000080A0000080C000
          0080E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C000
          00A0E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C000
          00C0E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C000
          00E0E00040000000400020004000400040006000400080004000A0004000C000
          4000E00040200000402020004020400040206000402080004020A0004020C000
          4020E00040400000404020004040400040406000404080004040A0004040C000
          4040E00040600000406020004060400040606000406080004060A0004060C000
          4060E00040800000408020004080400040806000408080004080A0004080C000
          4080E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C000
          40A0E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C000
          40C0E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C000
          40E0E00080000000800020008000400080006000800080008000A0008000C000
          8000E00080200000802020008020400080206000802080008020A0008020C000
          8020E00080400000804020008040400080406000804080008040A0008040C000
          8040E00080600000806020008060400080606000806080008060A0008060C000
          8060E00080800000808020008080400080806000808080008080A0008080C000
          8080E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C000
          80A0E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C000
          80C0E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C000
          80E0E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000
          C000E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000
          C020E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000
          C040E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000
          C060E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000
          C080E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000
          C0A0E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00
          A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
          FFFFFF000000000000000000000000000000A4A4A4A4000000A4A4A400000000
          00000000000000000000000000000000A4A4FFFF00009E9E0D00A4A4A4000000
          0000000000000000000000000000A4A4FFFF00009E9E9E9E0D0100A4A4A40000
          0000000000000000000000000000000000009E9E9E9E9E9E0D0D0100A4A4A400
          000000000000000000000000A4A4A4A4000000009E9E9E9E0D0D010D00A4A4A4
          00000000000000000000000000A4A4A4009E9E9E00009E9E0D0D010D0D00A4A4
          A40000000000000000000000FF00A4A4009E9E9E9E9E00000D0D010D0D0100A4
          A4A4000000000000000000FFF6FF00A4009E9E9E9E9E9E9E00000D0D0D0100A4
          0000000000000000000000FFF6FFFF00009E9E9E9E9E9E9E0D0D00000D010000
          00000000000000000000FFFFF6F6F6FF009E9E9E9E9EFFFFAF0D010D000D0000
          00000000000000000000BFBFF6F6F6F6009E9E9EFFFFAFAFAFAF0D010D000000
          000000000000000000FFBFBFF6F6F6F6009EFFFFAFAFAFAFAFAFAF0D010D0000
          000000000000000000FFBFBFF6F6F6F6F600AFAFAFAFAFAFAFAFAFAF0D010000
          0000000000000000FFBFBFBFF65B5BF6F6F600AFAFAFAFAFAFAFAFAFAF0D0000
          0000000000000000FFBFBFBFF65B5BF6F6F6F600AFAFAFAFAFAFAFAFAFAF0000
          00000000000000FFFFBFBFBF5B5B5B5BF6F6F6F600AFAFAFAFAFAFAF00000000
          00000000000000FBFBBFBFBF5BADADB6B6B6F6000000AFAFAFAF000092000000
          000000000000FFFBFBBF5B5B5B5B5BB6F6F6F600EDED00AF0000929292000000
          000000000000FFFBFBBF5B5B5B5B5BB6F6F600EDEDEDED00EDED929292000000
          0000000000FFFBFBFBBF5B5BADB6B6B6F6F600EDEDEDEDEDEDED929292000000
          000000000000FFFBFBBFBFBF5BB6B6F6F60000EDEDEDEDEDEDED929292000000
          00000000000000FBFBBFBFBF5BB6B6F6F60000EDEDEDEDEDFFFF929292000000
          0000000000000000FFBFBFBFF6B6B6F6000000EDEDEDFFFF0909090992000000
          000000000000000000FFBFBFF6F6F6F6000000EDFFFF92929292929209000000
          00000000000000000000BFBFF6F6F600000000FF095B00000000920000000000
          0000000000000000000000FFF6F6F6000000000009005B5B525B000000000000
          000000000000000000000000FFF60000000000000052F7F7F75B520000000000
          00000000000000000000000000F600000000000049F7080807F7520000000000
          00000000000000000000000000000000000000000008FFFF08F75B0000000000
          00000000000000000000000000000000000000004908FFFF08F7520000000000
          000000000000000000000000000000000000000000490807F752000000000000
          0000000000000000000000000000000000000000000000000052000000000000
          00000000FFFC00FFFFF0007FFFC0003FFC00001FF300000FEF000007DE000003
          DC00000FDC00001FD800001FD800001FD000001FE000000FE000000FE0000017
          C0000037C000003B8000003B8000003B0000003B8000003BC0000037E0040037
          F004000FF80C003FFC0E01FFFE1F00FFFF1F00FFFFBF00FFFFFF00FFFFFF81FF
          FFFFC3FF}
      end
      object LblTitulo: TcxLabel
        Left = 48
        Top = 6
        Caption = 'Confirmar Carregamento de Produto'
        ParentFont = False
        Transparent = True
      end
    end
    object GridItens: TdxDBGrid
      Left = 0
      Top = 38
      Width = 614
      Height = 239
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SEQUENCIA'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              ColumnName = 'GRIDTROCACODIGO'
              SummaryField = 'CODIGO'
              SummaryType = cstCount
            end
            item
              ColumnName = 'GRIDTROCATOTAL'
              SummaryField = 'TOTAL'
              SummaryFormat = '###,##0.00'
              SummaryType = cstSum
            end
            item
              ColumnName = 'GRIDTROCAVLR_TOTAL'
              SummaryField = 'VLR_TOTAL'
              SummaryFormat = '###,##0.00'
              SummaryType = cstSum
            end
            item
              ColumnName = 'GRIDTROCATOTAL_2'
              SummaryField = 'TOTAL_2'
              SummaryFormat = '###,##0.00'
              SummaryType = cstSum
            end
            item
              ColumnName = 'GRIDTROCAVLR_TOTAL_2'
              SummaryField = 'VLR_TOTAL_2'
              SummaryFormat = '###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'sgTroca'
        end>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      OnKeyDown = GridItens2KeyDown
      DataSource = DataSource
      Filter.Criteria = {00000000}
      GroupNodeColor = 6602732
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoEditing, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoUseBitmap]
      ShowRowFooter = True
      OnCustomDraw = GridItensCustomDraw
      object GridItensCNPJ: TdxDBGridMaskColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CNPJ'
      end
      object GridItensCODIGO: TdxDBGridMaskColumn
        Visible = False
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GridItensPRODUTO: TdxDBGridMaskColumn
        Width = 77
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRODUTO'
      end
      object GridItensNOME_PRODUTO: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 198
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME_PRODUTO'
      end
      object GridItensGRADE: TdxDBGridMaskColumn
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRADE'
      end
      object GridItensNUMERO: TdxDBGridMaskColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object GridItensUNIDADE: TdxDBGridMaskColumn
        Width = 51
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object GridItensQUANTIDADE: TdxDBGridMaskColumn
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        SummaryFooterType = cstSum
        SummaryFooterField = 'QUANTIDADE'
        SummaryField = 'QUANTIDADE'
      end
      object GridItensSEQUENCIA: TdxDBGridMaskColumn
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SEQUENCIA'
      end
      object GridItensENTREGUE: TdxDBGridMaskColumn
        Width = 62
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTREGUE'
        SummaryFooterType = cstSum
        SummaryFooterField = 'ENTREGUE'
        SummaryField = 'ENTREGUE'
      end
      object GridItensCARREGADO: TdxDBGridMaskColumn
        Color = clMenu
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARREGADO'
        SummaryFooterType = cstSum
        SummaryFooterField = 'CARREGADO'
        SummaryField = 'CARREGADO'
      end
      object GridItensCODIGO_LOTE: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO_LOTE'
      end
      object GridItensLOTE: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOTE'
      end
      object GridItensMATERIAL: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MATERIAL'
      end
      object GridItensCOR: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COR'
      end
      object GridItensPERFIL: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERFIL'
      end
    end
  end
  object pnlCarregado: TPanel
    Left = 240
    Top = 128
    Width = 137
    Height = 49
    TabOrder = 2
    Visible = False
    object lblCaption: TcxLabel
      Left = 14
      Top = 5
      Caption = 'Carregado :'
      ParentFont = False
      Transparent = True
    end
    object edtCarregado: TDBEdit
      Left = 15
      Top = 19
      Width = 109
      Height = 21
      DataField = 'CARREGADO'
      DataSource = DataSource
      TabOrder = 0
      OnExit = edtCarregadoExit
      OnKeyDown = edtCarregadoKeyDown
      OnKeyUp = edtCarregadoKeyUp
    end
  end
  object DataSource: TDataSource
    DataSet = DmOrdemCarga.OrdemCargaItens
    Left = 264
    Top = 168
  end
  object ActLista: TActionList
    Left = 296
    Top = 168
    object ActEntregar: TAction
      Caption = 'Entregar'
      Visible = False
      OnExecute = ActEntregarExecute
    end
    object ActCancelar: TAction
      Caption = 'Cancelar'
      OnExecute = ActCancelarExecute
    end
    object ActSalvar: TAction
      Caption = 'Salvar'
      OnExecute = ActSalvarExecute
    end
    object ActConfCampos: TAction
      Caption = 'ActConfCampos'
      ShortCut = 113
      OnExecute = ActConfCamposExecute
    end
  end
  object stgConfirmarCarregamento: TcxPropertiesStore
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
        Component = GridItensCARREGADO
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
        Component = GridItensCNPJ
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
        Component = GridItensCODIGO
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
        Component = GridItensCODIGO_LOTE
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
        Component = GridItensCOR
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
        Component = GridItensENTREGUE
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
        Component = GridItensLOTE
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
        Component = GridItensMATERIAL
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
        Component = GridItensPERFIL
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
        Component = GridItensSEQUENCIA
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
        Component = GridItensUNIDADE
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
    StorageName = 'stgConfirmarCarregamento'
    Left = 225
    Top = 168
  end
end
