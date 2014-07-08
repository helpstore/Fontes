object Frm_Localizar_Grades: TFrm_Localizar_Grades
  Left = 183
  Top = 265
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = ' Localizar Grades '
  ClientHeight = 319
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 534
    Height = 319
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clCaptionText
    TabOrder = 0
    OnResize = pnlClientResize
    object RzLabel1: TcxLabel
      Left = 12
      Top = 263
      Caption = 'Chave=>'
      ParentFont = False
      Transparent = True
    end
    object Panel2: TPanel
      Left = 2
      Top = 287
      Width = 530
      Height = 30
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object BTNOK: TcxButton
        Left = 343
        Top = 2
        Width = 89
        Height = 25
        Action = ActOk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
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
        Left = 439
        Top = 2
        Width = 89
        Height = 25
        Action = ActCancelar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
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
    end
    object pnlCampos: TPanel
      Left = 2
      Top = 2
      Width = 145
      Height = 285
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'pnlCampos'
      Color = clHighlightText
      TabOrder = 1
      Visible = False
      object TLCustomize: TdxTreeList
        Left = 0
        Top = 0
        Width = 145
        Height = 285
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
    object Panel3: TPanel
      Left = 147
      Top = 2
      Width = 385
      Height = 285
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 2
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 385
        Height = 39
        Align = alTop
        BevelOuter = bvNone
        Color = clHighlightText
        TabOrder = 0
        object b2: TBevel
          Left = 8
          Top = 35
          Width = 201
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
        object LblRegistros: TcxLabel
          Left = 501
          Top = 14
          Caption = '1/1'
          ParentFont = False
          Transparent = True
        end
        object LblTitulo: TcxLabel
          Left = 46
          Top = 8
          Caption = 'Localizar Grades'
          ParentFont = False
          Transparent = True
        end
      end
      object GRID: TdxDBGrid
        Left = 0
        Top = 39
        Width = 385
        Height = 246
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'NUMERO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
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
        object GRIDNOME_MATERIAL: TdxDBGridMaskColumn
          Width = 92
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOME_MATERIAL'
        end
        object GRIDNOME_COR: TdxDBGridMaskColumn
          Sorted = csUp
          Width = 116
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOME_COR'
        end
        object GRIDNOME_PERFIL: TdxDBGridMaskColumn
          Caption = 'Perfil'
          Visible = False
          Width = 123
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOME_PERFIL'
        end
        object GRIDNUMERO: TdxDBGridMaskColumn
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NUMERO'
        end
        object GRIDESTOQUE: TdxDBGridMaskColumn
          Width = 91
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ESTOQUE'
        end
        object GRIDGRADE: TdxDBGridColumn
          Width = 44
          BandIndex = 0
          RowIndex = 0
          FieldName = 'GRADE'
        end
      end
    end
  end
  object Act: TActionList
    Left = 356
    Top = 135
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
    object ActConfCampos: TAction
      Caption = 'ActConfCampos'
      ShortCut = 113
      OnExecute = ActConfCamposExecute
    end
  end
  object DSource: TDataSource
    AutoEdit = False
    DataSet = DmVendas.Lista_Grades
    Left = 288
    Top = 136
  end
  object stgLocalizaGrades: TcxPropertiesStore
    Components = <
      item
        Component = GRIDESTOQUE
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
        Component = GRIDGRADE
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
        Component = GRIDNOME_COR
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
        Component = GRIDNOME_MATERIAL
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
        Component = GRIDNOME_PERFIL
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
        Component = GRIDNUMERO
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
    StorageName = 'stgLocalizaGrades'
    Left = 243
    Top = 130
  end
end
