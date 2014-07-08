object Frm_Localizar_FormaPagtoNota: TFrm_Localizar_FormaPagtoNota
  Left = 123
  Top = 98
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = ' Localizar Formas de Pagto '
  ClientHeight = 347
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 347
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWindowFrame
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 233
      Height = 2
      Shape = bsTopLine
    end
    object RxLabel1: TcxLabel
      Left = 251
      Top = 37
      Caption = 'Valor'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel2: TcxLabel
      Left = 8
      Top = 7
      Caption = 'Total '
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel7: TcxLabel
      Left = 325
      Top = 7
      Caption = 'Pr'#233'-Date'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel3: TcxLabel
      Left = 188
      Top = 7
      Caption = 'Juros'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LblSomaValor: TcxLabel
      Left = 301
      Top = 277
      Caption = '0,00'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LblSomaJuros: TcxLabel
      Left = 394
      Top = 277
      Caption = '0,00'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LblSomaTotal: TcxLabel
      Left = 485
      Top = 277
      Caption = '0,00'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object GRID: TdxDBGrid
      Left = 6
      Top = 40
      Width = 235
      Height = 262
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CODIGO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = GRIDEnter
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
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object GRIDNOME: TdxDBGridMaskColumn
        Width = 256
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object GRIDACRESCIMO: TdxDBGridMaskColumn
        Width = 47
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ACRESCIMO'
      end
      object GRIDDESCONTO: TdxDBGridMaskColumn
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO'
      end
      object GRIDNPARCELAS: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NPARCELAS'
      end
      object GRIDCOMENTRADA: TdxDBGridMaskColumn
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMENTRADA'
      end
      object GRIDINTERVALO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'INTERVALO'
      end
      object GRIDAVISTA: TdxDBGridMaskColumn
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'AVISTA'
      end
      object GRIDFATURA_FUTURA: TdxDBGridMaskColumn
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FATURA_FUTURA'
      end
      object GRIDTIPO: TdxDBGridColumn
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO_PAGAMENTO'
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 304
      Width = 530
      Height = 41
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      object BTNOK: TcxButton
        Left = 360
        Top = 9
        Width = 76
        Height = 25
        Action = ActOk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          555555555555555555555555555555555555555555FF55555555555559055555
          55555555577FF5555555555599905555555555557777F5555555555599905555
          555555557777FF5555555559999905555555555777777F555555559999990555
          5555557777777FF5555557990599905555555777757777F55555790555599055
          55557775555777FF5555555555599905555555555557777F5555555555559905
          555555555555777FF5555555555559905555555555555777FF55555555555579
          05555555555555777FF5555555555557905555555555555777FF555555555555
          5990555555555555577755555555555555555555555555555555}
        NumGlyphs = 2
      end
      object BTNCANCELA: TcxButton
        Left = 437
        Top = 9
        Width = 89
        Height = 25
        Action = ActCancelar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
          33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
          993337777F777F3377F3393999707333993337F77737333337FF993399933333
          399377F3777FF333377F993339903333399377F33737FF33377F993333707333
          399377F333377FF3377F993333101933399377F333777FFF377F993333000993
          399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
          99333773FF777F777733339993707339933333773FF7FFF77333333999999999
          3333333777333777333333333999993333333333377777333333}
        NumGlyphs = 2
      end
      object LblDiferenca: TcxLabel
        Left = 6
        Top = 2
        Caption = 'Diferen'#231'a = 0,00'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object LblTroco: TcxLabel
        Left = 6
        Top = 20
        Caption = 'Tr'#244'co = 0,00'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object RzBitBtn2: TcxButton
        Left = 240
        Top = 9
        Width = 119
        Height = 25
        Cursor = crHandPoint
        Action = ActReiniciar
        Caption = 'Reiniciar ( F10 )'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Glyph.Data = {
          E6000000424DE60000000000000076000000280000000E0000000E0000000100
          0400000000007000000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DD00DDDDD4444DDDDD00DDD44444444DDD00DD444DDDD444DD00DD44DDDDDD44
          DD00D44DDDDDDDD44D00D44DDDDDDDD44D00D44DDDDDDDD44D00D44DDDDDDDD4
          4D00DD44DDDD4D44DD00DD44DDDD4444DD00DDDDDDDD444DDD00DDDDDDDD4444
          DD00DDDDDDDDDDDDDD00}
      end
    end
    object EdValor: TdxCurrencyEdit
      Left = 310
      Top = 35
      Width = 88
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      OnEnter = EdPredateEnter
      OnExit = EdValorExit
      Alignment = taRightJustify
      DisplayFormat = 'R$ ###,###,##0.00; -R$ ###,###,##0.00'
      StoredValues = 1
    end
    object RzBitBtn1: TcxButton
      Left = 400
      Top = 37
      Width = 127
      Height = 25
      Cursor = crHandPoint
      Action = ActOk
      Caption = '&Processar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = EdPredateEnter
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777700000000000000070777777777777707078078078078070707F07F07F07
        F07070777777777777707078078078078070707F07F07F07F070707777777777
        777070700000000077707070FFFFFFF077707070000000007770707777777777
        7770770000000000000777777777777777777777777777777777}
    end
    object TotalNota: TdxCurrencyEdit
      Left = 67
      Top = 5
      Width = 88
      Color = clBtnFace
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      Alignment = taRightJustify
      DisplayFormat = ' ,0.00;- ,0.00'
      StoredValues = 1
    end
    object EdPredate: TdxDateEdit
      Left = 416
      Top = 5
      Width = 112
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      OnEnter = EdPredateEnter
      OnExit = EdPredateExit
      Date = -700000.000000000000000000
      UseEditMask = True
      StoredValues = 4
    end
    object EdJuros: TdxCurrencyEdit
      Left = 247
      Top = 5
      Width = 78
      Color = clBtnFace
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      Alignment = taRightJustify
      DisplayFormat = ' ,0.00;- ,0.00'
      StoredValues = 1
    end
    object DBGrid1: TDBGrid
      Left = 244
      Top = 64
      Width = 283
      Height = 209
      TabStop = False
      Color = clBtnFace
      DataSource = DsForma
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'TIPO_PAGTO'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR_ORIGINAL'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'JUROS'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BANCO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AGENCIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DV_AGENCIA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHEQUE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DV_CHEQUE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AVISTA'
          Visible = True
        end>
    end
  end
  object Act: TActionList
    Left = 68
    Top = 71
    object ActOk: TAction
      Caption = '&Ok'
      ShortCut = 13
      OnExecute = ActOkExecute
    end
    object ActCancelar: TAction
      Caption = 'Cancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
    object ActLookup: TAction
      Caption = 'ActLookup'
      ShortCut = 115
      OnExecute = ActLookupExecute
    end
    object ActReiniciar: TAction
      Caption = 'Reiniciar'
      ShortCut = 121
      OnExecute = ActReiniciarExecute
    end
  end
  object DSource: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelFormaPgto
    Left = 128
    Top = 72
  end
  object DsForma: TDataSource
    AutoEdit = False
    DataSet = DmVendas.Vendas_Formas
    Left = 64
    Top = 120
  end
  object stgFrm_Localizar_FormaPagtoNota: TcxPropertiesStore
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
        Component = GRIDACRESCIMO
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
        Component = GRIDAVISTA
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
        Component = GRIDCOMENTRADA
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
        Component = GRIDDESCONTO
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
        Component = GRIDFATURA_FUTURA
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
        Component = GRIDINTERVALO
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
      end
      item
        Component = GRIDNPARCELAS
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
        Component = GRIDTIPO
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
      end>
    StorageName = 'stgFrm_Localizar_FormaPagtoNota'
    Left = 152
    Top = 144
  end
end
