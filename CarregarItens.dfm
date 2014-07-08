object FrmCarregarItens: TFrmCarregarItens
  Left = 186
  Top = 224
  Width = 752
  Height = 340
  Caption = 'Carregamento de Produto'
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 272
    Width = 744
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
    object btnCancelar2: TcxButton
      Left = 101
      Top = 8
      Width = 90
      Height = 25
      Action = ActCancelar
      Caption = 'Cancelar'
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
    Height = 272
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
      Height = 272
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
    Width = 599
    Height = 272
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 0
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 599
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
        Caption = 'Carregamento de Produto'
        ParentFont = False
        Transparent = True
      end
    end
    object GridItens: TdxDBGrid
      Left = 0
      Top = 38
      Width = 599
      Height = 234
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
      OnKeyDown = GridItensKeyDown
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
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CNPJ'
      end
      object GridItensCODIGO: TdxDBGridMaskColumn
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GridItensPRODUTO: TdxDBGridMaskColumn
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRODUTO'
      end
      object GridItensNOME_PRODUTO: TdxDBGridMaskColumn
        Width = 185
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME_PRODUTO'
      end
      object GridItensNUMERO: TdxDBGridMaskColumn
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object GridItensGRADE: TdxDBGridMaskColumn
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRADE'
      end
      object GridItensSEQUENCIA: TdxDBGridMaskColumn
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SEQUENCIA'
      end
      object GridItensQUANTIDADE: TdxDBGridMaskColumn
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
        SummaryFooterType = cstSum
        SummaryFooterField = 'QUANTIDADE'
        SummaryField = 'QUANTIDADE'
      end
      object GridItensVOLUME: TdxDBGridMaskColumn
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VOLUME'
      end
      object GridItensPESO: TdxDBGridMaskColumn
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESO'
      end
      object GridItensUNIDADE: TdxDBGridMaskColumn
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object GridItensSUBUNIDADE: TdxDBGridMaskColumn
        Visible = False
        Width = 82
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBUNIDADE'
      end
      object GridItensFRACIONADO: TdxDBGridMaskColumn
        Visible = False
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FRACIONADO'
      end
      object GridItensSERVICO: TdxDBGridBlobColumn
        Visible = False
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SERVICO'
      end
      object GridItensLOTE: TdxDBGridMaskColumn
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOTE'
      end
      object GridItensCODIGO_LOTE: TdxDBGridMaskColumn
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO_LOTE'
      end
      object GridItensUTILIZA_LOTE: TdxDBGridMaskColumn
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UTILIZA_LOTE'
      end
      object GridItensENTREGUE: TdxDBGridMaskColumn
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTREGUE'
        SummaryFooterType = cstSum
        SummaryFooterField = 'ENTREGUE'
        SummaryField = 'ENTREGUE'
      end
      object GridItensCARREGADO: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARREGADO'
      end
      object GridItensDEVOLVIDO: TdxDBGridMaskColumn
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEVOLVIDO'
      end
      object GridItensENTREGAR: TdxDBGridMaskColumn
        Color = clMenu
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTREGAR'
        SummaryFooterType = cstSum
        SummaryFooterField = 'ENTREGAR'
        SummaryField = 'ENTREGAR'
      end
      object GridItensDEVOLVER: TdxDBGridMaskColumn
        Visible = False
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEVOLVER'
      end
      object GridItensCARREGAR: TdxDBGridColumn
        Color = clMenu
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARREGAR'
      end
    end
  end
  object pnlCarregar: TPanel
    Left = 176
    Top = 136
    Width = 185
    Height = 49
    TabOrder = 2
    Visible = False
    object Label1: TcxLabel
      Left = 98
      Top = 5
      Caption = 'Carregar :'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 10
      Top = 5
      Caption = 'Entregar :'
      ParentFont = False
      Transparent = True
    end
    object edtCarregar: TDBEdit
      Left = 97
      Top = 19
      Width = 82
      Height = 21
      DataField = 'CARREGAR'
      DataSource = DataSource
      TabOrder = 1
      OnKeyDown = edtCarregarKeyDown
    end
    object edtEntregar: TDBEdit
      Left = 9
      Top = 19
      Width = 82
      Height = 21
      DataField = 'ENTREGAR'
      DataSource = DataSource
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnExit = edtEntregarExit
      OnKeyDown = edtEntregarKeyDown
    end
  end
  object DataSource: TDataSource
    DataSet = DmVendas2.CarregarItensFutura
    Left = 217
    Top = 87
  end
  object ActLista: TActionList
    Left = 189
    Top = 87
    object ActCarregar: TAction
      Caption = 'Carregar'
      OnExecute = ActCarregarExecute
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
    object ActCancelar: TAction
      Caption = 'ActCancelar'
      OnExecute = ActCancelarExecute
    end
  end
  object ppLayoutRequisicao: TppDBPipeline
    DataSource = DmOrdemCarga.dsLayoutRequisicao
    UserName = 'LayoutRequisicao'
    Left = 133
    Top = 87
    object ppLayoutRequisicaoppField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppLayoutRequisicaoppField2: TppField
      FieldAlias = 'CONFIG_REQUISICAO'
      FieldName = 'CONFIG_REQUISICAO'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object ppSerieRequisicao: TppDBPipeline
    DataSource = DmOrdemCarga.dsSeries_Requisicao
    UserName = 'SerieRequisicao'
    Left = 161
    Top = 87
    object ppSerieRequisicaoppField1: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppSerieRequisicaoppField2: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppSerieRequisicaoppField3: TppField
      FieldAlias = 'ENDERECO_CLI'
      FieldName = 'ENDERECO_CLI'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object ppSerieRequisicaoppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDA'
      FieldName = 'COD_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppSerieRequisicaoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CLIENTE'
      FieldName = 'COD_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppSerieRequisicaoppField6: TppField
      FieldAlias = 'DT_VENDA'
      FieldName = 'DT_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppSerieRequisicaoppField7: TppField
      FieldAlias = 'DATA_CAIXA'
      FieldName = 'DATA_CAIXA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppSerieRequisicaoppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ACRESC'
      FieldName = 'DESC_ACRESC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppSerieRequisicaoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ITEM'
      FieldName = 'DESC_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppSerieRequisicaoppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppSerieRequisicaoppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_BRUTO'
      FieldName = 'TOTAL_BRUTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppSerieRequisicaoppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_CUPOM'
      FieldName = 'NUM_CUPOM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppSerieRequisicaoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppSerieRequisicaoppField14: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppSerieRequisicaoppField15: TppField
      FieldAlias = 'PRODUTO'
      FieldName = 'PRODUTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppSerieRequisicaoppField16: TppField
      FieldAlias = 'VDI_GRADE'
      FieldName = 'VDI_GRADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 15
    end
    object ppSerieRequisicaoppField17: TppField
      FieldAlias = 'VDI_NUMERO'
      FieldName = 'VDI_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 16
    end
    object ppSerieRequisicaoppField18: TppField
      FieldAlias = 'FORMA_PAGTO'
      FieldName = 'FORMA_PAGTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 17
    end
    object ppSerieRequisicaoppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEQUENCIA'
      FieldName = 'SEQUENCIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppSerieRequisicaoppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppSerieRequisicaoppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO'
      FieldName = 'PRC_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppSerieRequisicaoppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO_LIQ'
      FieldName = 'PRC_UNITARIO_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object ppSerieRequisicaoppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_ITEM'
      FieldName = 'TOTAL_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppSerieRequisicaoppField24: TppField
      FieldAlias = 'PARCELAMENTO'
      FieldName = 'PARCELAMENTO'
      FieldLength = 500
      DisplayWidth = 500
      Position = 23
    end
    object ppSerieRequisicaoppField25: TppField
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 24
    end
    object ppSerieRequisicaoppField26: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 25
    end
    object ppSerieRequisicaoppField27: TppField
      FieldAlias = 'COMPLEMENTO'
      FieldName = 'COMPLEMENTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 26
    end
    object ppSerieRequisicaoppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_ITEM_DESCTO'
      FieldName = 'PCT_ITEM_DESCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object ppSerieRequisicaoppField29: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 28
    end
    object ppSerieRequisicaoppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppSerieRequisicaoppField31: TppField
      FieldAlias = 'CGC_CPF_CLI'
      FieldName = 'CGC_CPF_CLI'
      FieldLength = 20
      DisplayWidth = 20
      Position = 30
    end
    object ppSerieRequisicaoppField32: TppField
      FieldAlias = 'TIPO_DOCTO'
      FieldName = 'TIPO_DOCTO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 31
    end
    object ppSerieRequisicaoppField33: TppField
      FieldAlias = 'NOME_TIPO_DOCTO'
      FieldName = 'NOME_TIPO_DOCTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 32
    end
    object ppSerieRequisicaoppField34: TppField
      FieldAlias = 'RG_IE'
      FieldName = 'RG_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 33
    end
    object ppSerieRequisicaoppField35: TppField
      FieldAlias = 'HORA'
      FieldName = 'HORA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 34
    end
    object ppSerieRequisicaoppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_DESCTO_VENDA'
      FieldName = 'PCT_DESCTO_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 35
    end
    object ppSerieRequisicaoppField37: TppField
      FieldAlias = 'CPF_CGC'
      FieldName = 'CPF_CGC'
      FieldLength = 14
      DisplayWidth = 14
      Position = 36
    end
    object ppSerieRequisicaoppField38: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 37
    end
    object ppSerieRequisicaoppField39: TppField
      FieldAlias = 'CEP_EMP'
      FieldName = 'CEP_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 38
    end
    object ppSerieRequisicaoppField40: TppField
      FieldAlias = 'BAIRRO_EMP'
      FieldName = 'BAIRRO_EMP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 39
    end
    object ppSerieRequisicaoppField41: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 40
    end
    object ppSerieRequisicaoppField42: TppField
      FieldAlias = 'FONE_CLIENTE'
      FieldName = 'FONE_CLIENTE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 41
    end
    object ppSerieRequisicaoppField43: TppField
      FieldAlias = 'ENDERECO_EMP'
      FieldName = 'ENDERECO_EMP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 42
    end
    object ppSerieRequisicaoppField44: TppField
      FieldAlias = 'FANTASIA_CLI'
      FieldName = 'FANTASIA_CLI'
      FieldLength = 50
      DisplayWidth = 50
      Position = 43
    end
    object ppSerieRequisicaoppField45: TppField
      FieldAlias = 'EMPRESA'
      FieldName = 'EMPRESA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 44
    end
    object ppSerieRequisicaoppField46: TppField
      FieldAlias = 'CIDADE_EMP'
      FieldName = 'CIDADE_EMP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 45
    end
    object ppSerieRequisicaoppField47: TppField
      FieldAlias = 'CNPJ_EMP'
      FieldName = 'CNPJ_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 46
    end
    object ppSerieRequisicaoppField48: TppField
      FieldAlias = 'OBSERVACAO'
      FieldName = 'OBSERVACAO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 47
    end
    object ppSerieRequisicaoppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONT_ITENS'
      FieldName = 'CONT_ITENS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 48
    end
    object ppSerieRequisicaoppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'VOLUME'
      FieldName = 'VOLUME'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 49
    end
    object ppSerieRequisicaoppField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO'
      FieldName = 'PESO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 50
    end
    object ppSerieRequisicaoppField52: TppField
      Alignment = taRightJustify
      FieldAlias = 'MRC_CODIGO'
      FieldName = 'MRC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 51
    end
    object ppSerieRequisicaoppField53: TppField
      FieldAlias = 'MRC_NOME'
      FieldName = 'MRC_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 52
    end
    object ppSerieRequisicaoppField54: TppField
      FieldAlias = 'PRO_NOME'
      FieldName = 'PRO_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 53
    end
    object ppSerieRequisicaoppField55: TppField
      FieldAlias = 'PRO_PROPRIETARIO'
      FieldName = 'PRO_PROPRIETARIO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 54
    end
    object ppSerieRequisicaoppField56: TppField
      FieldAlias = 'PRO_IE'
      FieldName = 'PRO_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 55
    end
    object ppSerieRequisicaoppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_PROPRIEDADE'
      FieldName = 'PRO_PROPRIEDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 56
    end
    object ppSerieRequisicaoppField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_ENDERECO'
      FieldName = 'PRO_ENDERECO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 57
    end
    object ppSerieRequisicaoppField59: TppField
      FieldAlias = 'PRO_COMPLEMENTO'
      FieldName = 'PRO_COMPLEMENTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 58
    end
    object ppSerieRequisicaoppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_CIDADE'
      FieldName = 'PRO_CIDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 59
    end
    object ppSerieRequisicaoppField61: TppField
      FieldAlias = 'PRO_UF'
      FieldName = 'PRO_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 60
    end
    object ppSerieRequisicaoppField62: TppField
      FieldAlias = 'PRO_CEP'
      FieldName = 'PRO_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 61
    end
    object ppSerieRequisicaoppField63: TppField
      FieldAlias = 'PRO_AREA_TOTAL'
      FieldName = 'PRO_AREA_TOTAL'
      FieldLength = 30
      DisplayWidth = 30
      Position = 62
    end
    object ppSerieRequisicaoppField64: TppField
      FieldAlias = 'PRO_ATIVA'
      FieldName = 'PRO_ATIVA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 63
    end
    object ppSerieRequisicaoppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_BAIRRO'
      FieldName = 'PRO_BAIRRO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 64
    end
    object ppSerieRequisicaoppField66: TppField
      FieldAlias = 'PRO_NUMERO'
      FieldName = 'PRO_NUMERO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 65
    end
    object ppSerieRequisicaoppField67: TppField
      FieldAlias = 'PRO_CPF'
      FieldName = 'PRO_CPF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 66
    end
    object ppSerieRequisicaoppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_TECNICO'
      FieldName = 'PRO_TECNICO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object ppSerieRequisicaoppField69: TppField
      FieldAlias = 'PSA_CELULAR'
      FieldName = 'PSA_CELULAR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 68
    end
    object ppSerieRequisicaoppField70: TppField
      FieldAlias = 'PSA_FAX'
      FieldName = 'PSA_FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 69
    end
    object ppSerieRequisicaoppField71: TppField
      FieldAlias = 'GRD_GRADE'
      FieldName = 'GRD_GRADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 70
    end
    object ppSerieRequisicaoppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_MATERIAL'
      FieldName = 'GRD_MATERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object ppSerieRequisicaoppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_COR'
      FieldName = 'GRD_COR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 72
    end
    object ppSerieRequisicaoppField74: TppField
      FieldAlias = 'GRD_NOME_MATERIAL'
      FieldName = 'GRD_NOME_MATERIAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 73
    end
    object ppSerieRequisicaoppField75: TppField
      FieldAlias = 'GRD_NOME_COR'
      FieldName = 'GRD_NOME_COR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 74
    end
    object ppSerieRequisicaoppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_PERFIL'
      FieldName = 'GRD_PERFIL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 75
    end
    object ppSerieRequisicaoppField77: TppField
      FieldAlias = 'GRD_NOME_PERFIL'
      FieldName = 'GRD_NOME_PERFIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 76
    end
    object ppSerieRequisicaoppField78: TppField
      FieldAlias = 'GRD_NUMERO'
      FieldName = 'GRD_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 77
    end
    object ppSerieRequisicaoppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_ORDEM'
      FieldName = 'GRD_ORDEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 78
    end
    object ppSerieRequisicaoppField80: TppField
      FieldAlias = 'PC_PARCELAMENTO'
      FieldName = 'PC_PARCELAMENTO'
      FieldLength = 300
      DisplayWidth = 300
      Position = 79
    end
    object ppSerieRequisicaoppField81: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDI_CARREGADO'
      FieldName = 'VDI_CARREGADO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 80
    end
    object ppSerieRequisicaoppField82: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDI_CARREGAR'
      FieldName = 'VDI_CARREGAR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 81
    end
    object ppSerieRequisicaoppField83: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDI_ENTREGUE'
      FieldName = 'VDI_ENTREGUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 82
    end
    object ppSerieRequisicaoppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_ORDEM_CARGA'
      FieldName = 'VD_ORDEM_CARGA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object ppSerieRequisicaoppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDI_DEVOLVIDO'
      FieldName = 'VDI_DEVOLVIDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 84
    end
    object ppSerieRequisicaoppField86: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDI_ENTREGAR'
      FieldName = 'VDI_ENTREGAR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 85
    end
    object ppSerieRequisicaoppField87: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDI_DEVOLVER'
      FieldName = 'VDI_DEVOLVER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 86
    end
    object ppSerieRequisicaoppField88: TppField
      Alignment = taRightJustify
      FieldAlias = 'CGRI_CARREGADO'
      FieldName = 'CGRI_CARREGADO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 87
    end
    object ppSerieRequisicaoppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'CGRI_DEVOLVIDO'
      FieldName = 'CGRI_DEVOLVIDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 88
    end
    object ppSerieRequisicaoppField90: TppField
      Alignment = taRightJustify
      FieldAlias = 'CGRI_ENTREGUE'
      FieldName = 'CGRI_ENTREGUE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 89
    end
    object ppSerieRequisicaoppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'CGRI_QUANTIDADE'
      FieldName = 'CGRI_QUANTIDADE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 90
    end
  end
  object rptSerieRequisicao: TppReport
    AutoStop = False
    DataPipeline = ppSerieRequisicao
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Cont. Feed - No Break'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 4000
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 4000
    PrinterSetup.mmMarginTop = 4000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.DatabaseSettings.DataPipeline = ppLayoutRequisicao
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_REQUISICAO'
    Template.FileName = 'C:\Documents and Settings\Administrador\Desktop\SerieNF.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 106
    Top = 87
    Version = '12.03'
    mmColumnWidth = 74000
    DataPipelineName = 'ppSerieRequisicao'
    object ppHeaderBand5: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 49477
      mmPrintPosition = 0
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 181240
        mmTop = 12965
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText131: TppDBText
        UserName = 'Cliente'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MRC_CODIGO'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 24077
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText132: TppDBText
        UserName = 'Cliente1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLI'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 31485
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText133: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAIRRO'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 35190
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText134: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_VENDA'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = '000000#'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 5027
        mmLeft = 173832
        mmTop = 7673
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 24077
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'END'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 31485
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'BAIRRO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 35190
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PEDIDO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6526
        mmLeft = 174150
        mmTop = 1323
        mmWidth = 20320
        BandType = 0
      end
      object ppDBText135: TppDBText
        UserName = 'DBText111'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 22
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 8467
        mmLeft = 3969
        mmTop = 794
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText136: TppDBText
        UserName = 'DBText112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_EMP'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4586
        mmLeft = 14817
        mmTop = 12965
        mmWidth = 78052
        BandType = 0
      end
      object ppDBText137: TppDBText
        UserName = 'DBText113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4586
        mmLeft = 26458
        mmTop = 16669
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 170127
        mmTop = 12965
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 181240
        mmTop = 17198
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'HORA:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 170127
        mmTop = 17198
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText138: TppDBText
        UserName = 'DBText115'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAIRRO_EMP'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4586
        mmLeft = 95779
        mmTop = 12965
        mmWidth = 20902
        BandType = 0
      end
      object ppDBText139: TppDBText
        UserName = 'DBText116'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_EMP'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4586
        mmLeft = 118534
        mmTop = 12965
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 14817
        mmTop = 16669
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText140: TppDBText
        UserName = 'DBText118'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_CPF_CLI'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 27781
        mmWidth = 82815
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 27781
        mmWidth = 17992
        BandType = 0
      end
      object ppDBText141: TppDBText
        UserName = 'Cliente2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLI'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 24077
        mmWidth = 71438
        BandType = 0
      end
      object ppDBText142: TppDBText
        UserName = 'DBText119'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RG_IE'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 27781
        mmWidth = 71438
        BandType = 0
      end
      object ppDBText143: TppDBText
        UserName = 'DBText121'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE_CLIENTE'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 38894
        mmWidth = 82815
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOME FANTASIA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 105834
        mmTop = 24077
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'IE/RG'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 105834
        mmTop = 27781
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 38894
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText144: TppDBText
        UserName = 'DBText124'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_CAIXA'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 35190
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 105834
        mmTop = 35190
        mmWidth = 6350
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 208000
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 21960
        mmWidth = 208000
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#211'DIGO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 3704
        mmTop = 44979
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESCRI'#199#195'O'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 25135
        mmTop = 44979
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UN.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 137319
        mmTop = 44979
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'QTDE.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 151078
        mmTop = 44979
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UNIT.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 173302
        mmTop = 44979
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 192750
        mmTop = 44979
        mmWidth = 10583
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 48948
        mmWidth = 208000
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 27781
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 24077
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 24077
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 27781
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 31485
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 35190
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 35190
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 38894
        mmWidth = 2117
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 44186
        mmWidth = 208000
        BandType = 0
      end
      object ppDBText145: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 31485
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CIDADE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 105834
        mmTop = 31485
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 31485
        mmWidth = 2117
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 44450
        mmWidth = 208000
        BandType = 0
      end
      object ppDBText146: TppDBText
        UserName = 'DBText107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_EMP'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4586
        mmLeft = 26194
        mmTop = 9260
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 147638
        mmTop = 12965
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 141817
        mmTop = 12965
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'INSCR.EST:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 101600
        mmTop = 9260
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '28.100.347-5'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 126471
        mmTop = 9260
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 14817
        mmTop = 9260
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEL:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 64029
        mmTop = 16669
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(67) 8409-4900'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 73290
        mmTop = 16669
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FAX:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 109538
        mmTop = 16669
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(67) 3422-5706'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 122238
        mmTop = 16669
        mmWidth = 29633
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText147: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_PRODUTO'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 3175
        mmTop = 265
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText148: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = '#,0.0;-#,0.0'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 146844
        mmTop = 265
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText149: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRC_UNITARIO_LIQ'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 168540
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText150: TppDBText
        UserName = 'DBText71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_ITEM'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 183357
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText151: TppDBText
        UserName = 'DBText110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = '!99999;0; '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 137319
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText152: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 23019
        mmTop = 0
        mmWidth = 111125
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppLabel99: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '+/-'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 166423
        mmTop = 5027
        mmWidth = 6350
        BandType = 8
      end
      object ppDBText153: TppDBText
        UserName = 'DBText108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ACRESC'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 175419
        mmTop = 4763
        mmWidth = 25400
        BandType = 8
      end
      object ppDBText154: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 175419
        mmTop = 8996
        mmWidth = 25400
        BandType = 8
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 191030
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppLabel100: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '/'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 194734
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 198173
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppDBText155: TppDBText
        UserName = 'DBText123'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_BRUTO'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 175419
        mmTop = 529
        mmWidth = 25400
        BandType = 8
      end
      object ppLabel101: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 162190
        mmTop = 794
        mmWidth = 10583
        BandType = 8
      end
      object ppDBRichText4: TppDBRichText
        UserName = 'DBRichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBSERVACAO'
        DataPipeline = ppSerieRequisicao
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 9790
        mmLeft = 27517
        mmTop = 19579
        mmWidth = 147373
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel102: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBSERVA'#199#195'O:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 3704
        mmTop = 19050
        mmWidth = 23283
        BandType = 8
      end
      object ppLine13: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13758
        mmWidth = 208000
        BandType = 8
      end
      object ppLabel103: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 173197
        mmTop = 4498
        mmWidth = 1693
        BandType = 8
      end
      object ppLabel104: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 173197
        mmTop = 794
        mmWidth = 1693
        BandType = 8
      end
      object ppLabel105: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 173197
        mmTop = 8202
        mmWidth = 1693
        BandType = 8
      end
      object ppLabel106: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL LIQUIDO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 145257
        mmTop = 8731
        mmWidth = 27517
        BandType = 8
      end
      object ppLine14: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 208000
        BandType = 8
      end
      object ppLabel107: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENDEDOR:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 7938
        mmTop = 15346
        mmWidth = 19050
        BandType = 8
      end
      object ppDBRichText5: TppDBRichText
        UserName = 'DBRichText2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = ppSerieRequisicao
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4233
        mmLeft = 27517
        mmTop = 15610
        mmWidth = 51065
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel108: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ASSINATURA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 75142
        mmTop = 1058
        mmWidth = 21167
        BandType = 8
      end
      object ppDBRichText6: TppDBRichText
        UserName = 'DBRichText3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PARCELAMENTO'
        DataPipeline = ppSerieRequisicao
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 7938
        mmLeft = 2646
        mmTop = 5556
        mmWidth = 71438
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel109: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENCIMENTO:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 2646
        mmTop = 1058
        mmWidth = 23283
        BandType = 8
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object stgCarregarProduto: TcxPropertiesStore
    Components = <>
    StorageName = 'stgCarregarProduto'
    Left = 245
    Top = 87
  end
end
