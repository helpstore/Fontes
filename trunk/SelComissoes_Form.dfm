object FrmSelComissoes: TFrmSelComissoes
  Left = 138
  Top = 150
  Width = 808
  Height = 580
  AutoSize = True
  Caption = 'Manuten'#231#227'o de Comiss'#245'es'
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcOServico: TcxPageControl
    Left = 0
    Top = 0
    Width = 800
    Height = 527
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 527
    ClientRectRight = 800
    ClientRectTop = 0
  end
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 527
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnResize = pnlClientResize
    object Bevel1: TBevel
      Left = 0
      Top = 525
      Width = 800
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object pnlCampos: TPanel
      Left = 0
      Top = 0
      Width = 183
      Height = 525
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'pnlCampos'
      Color = clWhite
      TabOrder = 0
      Visible = False
      object TLCustomize: TdxTreeList
        Left = 0
        Top = 0
        Width = 183
        Height = 525
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
      Left = 183
      Top = 0
      Width = 617
      Height = 525
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      object Panel3: TPanel
        Left = 0
        Top = 38
        Width = 617
        Height = 63
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        OnExit = Panel3Exit
        object Label3: TcxLabel
          Left = 9
          Top = 36
          Caption = 'Per'#237'odo'
          ParentFont = False
          Transparent = True
        end
        object Label4: TcxLabel
          Left = 155
          Top = 36
          Caption = #224' '
          ParentFont = False
          Transparent = True
        end
        object lblnome: TcxLabel
          Left = 152
          Top = 9
          AutoSize = False
          Caption = 'Nome'
          ParentFont = False
          Transparent = True
          Height = 16
          Width = 289
        end
        object Label1: TcxLabel
          Left = 7
          Top = 9
          Caption = 'Agente :'
          ParentFont = False
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 283
          Top = 36
          Caption = 'Status'
          ParentFont = False
          Transparent = True
        end
        object edDtInicial: TdxDateEdit
          Left = 49
          Top = 30
          Width = 97
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
          OnEnter = EdTipoContratoEnter
          OnExit = EdTipoContratoExit
          OnKeyDown = edDataBaseKeyDown
          Date = -700000.000000000000000000
          UseEditMask = True
          StoredValues = 4
        end
        object edDtFinal: TdxDateEdit
          Left = 170
          Top = 30
          Width = 97
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
          OnEnter = EdTipoContratoEnter
          OnExit = EdTipoContratoExit
          OnKeyDown = edDataBaseKeyDown
          Date = -700000.000000000000000000
          UseEditMask = True
          StoredValues = 4
        end
        object cmbAgente: TdxButtonEdit
          Left = 48
          Top = 5
          Width = 97
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
          OnEnter = EdTipoContratoEnter
          OnExit = EdTipoContratoExit
          OnKeyDown = edDataBaseKeyDown
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 40
          OnButtonClick = cmbAgenteButtonClick
          StoredValues = 4
          ExistButtons = True
        end
        object edStatus: TdxPickEdit
          Left = 320
          Top = 30
          Width = 113
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
          OnEnter = EdTipoContratoEnter
          OnExit = EdTipoContratoExit
          OnKeyDown = edDataBaseKeyDown
          Alignment = taLeftJustify
          DropDownListStyle = True
          Items.Strings = (
            'F - Faturadas'
            'L - Liberadas'
            'P - Provisionadas')
          CanDeleteText = True
          Sorted = True
          StoredValues = 1
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 617
        Height = 38
        Align = alTop
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 1
        object Image2: TImage
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
        object Bevel2: TBevel
          Left = 8
          Top = 35
          Width = 296
          Height = 2
          Shape = bsTopLine
        end
        object lblTitulo: TcxLabel
          Left = 48
          Top = 6
          Caption = 'Manuten'#231#227'o de Comiss'#245'es'
          ParentFont = False
          Transparent = True
        end
      end
      object PageControl: TcxPageControl
        Left = 0
        Top = 101
        Width = 617
        Height = 424
        ActivePage = dxTabSheet1
        Align = alClient
        TabOrder = 2
        ClientRectBottom = 424
        ClientRectRight = 617
        ClientRectTop = 24
        object dxTabSheet1: TcxTabSheet
          Caption = 'Comiss'#245'es'
          OnShow = dxTabSheet1Show
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 617
            Height = 400
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            object pc: TcxPageControl
              Left = 0
              Top = 0
              Width = 617
              Height = 400
              Align = alClient
              HotTrack = True
              TabOrder = 0
              ClientRectBottom = 400
              ClientRectRight = 617
              ClientRectTop = 0
            end
            object DBGrid1: TDBGrid
              Left = 64
              Top = 232
              Width = 320
              Height = 120
              DataSource = DataSource
              TabOrder = 1
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
            end
            object GRID: TdxDBGrid
              Left = 0
              Top = 0
              Width = 617
              Height = 400
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
                      ColumnName = 'GRIDVALOR'
                      SummaryField = 'VALOR'
                      SummaryFormat = 'R$ ,0.00;-R$ ,0.00'
                      SummaryType = cstSum
                    end
                    item
                      ColumnName = 'GRIDCODIGO'
                      SummaryField = 'CODIGO'
                      SummaryType = cstCount
                    end>
                  Name = 'Padrao'
                end>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 2
              DataSource = DataSource
              Filter.Active = True
              Filter.Criteria = {00000000}
              GroupNodeColor = 15977833
              LookAndFeel = lfFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
              ShowRowFooter = True
              OnCustomDrawCell = GRIDCustomDrawCell
              OnHeaderMoved = GRIDHeaderMoved
              OnHideHeader = GRIDHideHeader
              OnShowHeader = GRIDShowHeader
              OnCustomDraw = GRIDCustomDraw
              object GRIDCNPJ: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CNPJ'
              end
              object GRIDCODIGO: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CODIGO'
                SummaryFooterType = cstCount
                SummaryField = 'CODIGO'
              end
              object GRIDCOD_VENDA: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COD_VENDA'
              end
              object GRIDCOD_PESSOA: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COD_PESSOA'
              end
              object GRIDCOD_RECEBER: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COD_RECEBER'
              end
              object GRIDCOD_PAGAR: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COD_PAGAR'
              end
              object GRIDVALOR: TdxDBGridCurrencyColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'VALOR'
                SummaryFooterType = cstSum
                Nullable = False
                SummaryField = 'VALOR'
              end
              object GRIDCM_PCT: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CM_PCT'
              end
              object GRIDDT_GERACAO: TdxDBGridDateColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DT_GERACAO'
              end
              object GRIDSTATUS: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'STATUS'
              end
              object GRIDCOD_BX_RECEBER: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COD_BX_RECEBER'
              end
              object GRIDCOD_BX_PAGAR: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COD_BX_PAGAR'
              end
              object GRIDDT_FATURAMENTO: TdxDBGridDateColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DT_FATURAMENTO'
              end
              object GRIDDT_CX_FATURAMENTO: TdxDBGridDateColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DT_CX_FATURAMENTO'
              end
              object GRIDCLIENTE: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CLIENTE'
              end
              object GRIDCOD_FORMA: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COD_FORMA'
              end
              object GRIDFORMA_PGTO: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'FORMA_PGTO'
              end
              object GRIDAGENTE: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'AGENTE'
              end
              object GRIDCFOP: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CFOP'
              end
              object GRIDNUM_NF: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NUM_NF'
              end
              object GRIDSELECIONADO: TdxDBGridCheckColumn
                MinWidth = 20
                Width = 100
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SELECIONADO'
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object GRIDTOTAL_PROVISIONADO: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TOTAL_PROVISIONADO'
                SummaryFooterType = cstSum
              end
              object GRIDSALDO_COMISSAO: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SALDO_COMISSAO'
                SummaryFooterType = cstSum
              end
            end
          end
        end
        object dxTabSheet2: TcxTabSheet
          Caption = 'Detalhes'
          OnShow = dxTabSheet2Show
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 617
            Height = 74
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 609
              Height = 19
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '  Faturamento'
              Color = 8404992
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object GridFaturamentos: TdxDBGrid
              Left = 0
              Top = 19
              Width = 609
              Height = 55
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
              TabOrder = 1
              AutoExpandOnSearch = False
              BandFont.Charset = DEFAULT_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -11
              BandFont.Name = 'MS Sans Serif'
              BandFont.Style = []
              DataSource = dsFaturamentos
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
              OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -11
              PreviewFont.Name = 'MS Sans Serif'
              PreviewFont.Style = []
              object GridFaturamentosCODIGO: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CODIGO'
              end
              object GridFaturamentosNOME_RAZAO: TdxDBGridMaskColumn
                Width = 208
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOME_RAZAO'
              end
              object GridFaturamentosTOTAL: TdxDBGridMaskColumn
                Width = 41
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TOTAL'
              end
              object GridFaturamentosDESC_ACRES: TdxDBGridMaskColumn
                Width = 69
                BandIndex = 0
                RowIndex = 0
                FieldName = 'DESC_ACRES'
              end
              object GridFaturamentosTOTAL_LIQUIDO: TdxDBGridMaskColumn
                Width = 91
                BandIndex = 0
                RowIndex = 0
                FieldName = 'TOTAL_LIQUIDO'
              end
              object GridFaturamentosLUCRO_FATURAMENTO: TdxDBGridMaskColumn
                Width = 131
                BandIndex = 0
                RowIndex = 0
                FieldName = 'LUCRO_FATURAMENTO'
              end
              object GridFaturamentosCOM_FATURAMENTO: TdxDBGridMaskColumn
                Width = 69
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COM_FATURAMENTO'
              end
              object GridFaturamentosNATUREZA: TdxDBGridMaskColumn
                Visible = False
                Width = 69
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NATUREZA'
              end
              object GridFaturamentosCNPJ: TdxDBGridMaskColumn
                Visible = False
                Width = 86
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CNPJ'
              end
            end
          end
          object Panel7: TPanel
            Left = 0
            Top = 74
            Width = 617
            Height = 195
            Align = alClient
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 1
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 617
              Height = 18
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '  Itens do Faturamento'
              Color = 8404992
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object GridItens: TdxDBGrid
              Left = 0
              Top = 18
              Width = 617
              Height = 177
              Bands = <
                item
                  Caption = 'Item'
                  Width = 253
                end
                item
                  Caption = 'Custos'
                  Width = 219
                end
                item
                  Caption = 'Opera'#231#227'o'
                end
                item
                  Caption = 'Lucro'
                end>
              DefaultLayout = False
              HeaderPanelRowCount = 1
              KeyField = 'SEQUENCIA'
              ShowSummaryFooter = True
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
              OnKeyDown = GridItensKeyDown
              AutoExpandOnSearch = False
              BandFont.Charset = DEFAULT_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -11
              BandFont.Name = 'MS Sans Serif'
              BandFont.Style = []
              DataSource = dsFatItens
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
              OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -11
              PreviewFont.Name = 'MS Sans Serif'
              PreviewFont.Style = []
              ShowBands = True
              OnCustomDrawCell = GridItensCustomDrawCell
              object GridItensSEQUENCIA: TdxDBGridMaskColumn
                Width = 85
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SEQUENCIA'
              end
              object GridItensPRODUTO: TdxDBGridMaskColumn
                Width = 62
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRODUTO'
              end
              object GridItensNOME: TdxDBGridMaskColumn
                Width = 148
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOME'
              end
              object GridItensCUSTO_MEDIO: TdxDBGridMaskColumn
                Width = 71
                BandIndex = 1
                RowIndex = 0
                FieldName = 'CUSTO_MEDIO'
              end
              object GridItensDESP_OP: TdxDBGridMaskColumn
                Width = 78
                BandIndex = 1
                RowIndex = 0
                FieldName = 'DESP_OP'
              end
              object GridItensCUSTO_ITEM: TdxDBGridMaskColumn
                Width = 70
                BandIndex = 1
                RowIndex = 0
                FieldName = 'CUSTO_ITEM'
              end
              object GridItensPRC_UNITARIO: TdxDBGridMaskColumn
                BandIndex = 2
                RowIndex = 0
                FieldName = 'PRC_UNITARIO'
              end
              object GridItensLUCRO_UNITARIO: TdxDBGridMaskColumn
                BandIndex = 2
                RowIndex = 0
                FieldName = 'LUCRO_UNITARIO'
              end
              object GridItensQUANTIDADE: TdxDBGridMaskColumn
                BandIndex = 2
                RowIndex = 0
                FieldName = 'QUANTIDADE'
              end
              object GridItensLUCRO_BRUTO: TdxDBGridMaskColumn
                Width = 79
                BandIndex = 3
                RowIndex = 0
                FieldName = 'LUCRO_BRUTO'
                SummaryFooterType = cstSum
                SummaryField = 'LUCRO_BRUTO'
              end
              object GridItensLUCRO_LIQUIDO: TdxDBGridMaskColumn
                Width = 73
                BandIndex = 3
                RowIndex = 0
                FieldName = 'LUCRO_LIQUIDO'
                SummaryFooterType = cstSum
                SummaryField = 'LUCRO_LIQUIDO'
              end
              object GridItensCOMISSAO_ITEM: TdxDBGridMaskColumn
                BandIndex = 3
                RowIndex = 0
                FieldName = 'COMISSAO_ITEM'
                SummaryFooterType = cstSum
                SummaryFooterField = 'COMISSAO_ITEM'
              end
            end
            object pnlCarregar: TPanel
              Left = 144
              Top = 72
              Width = 198
              Height = 49
              TabOrder = 2
              Visible = False
              object Label6: TcxLabel
                Left = 10
                Top = 5
                Caption = 'C. M'#233'dio Atual:'
                ParentFont = False
                Transparent = True
              end
              object Label5: TcxLabel
                Left = 106
                Top = 5
                Caption = 'C. M'#233'dio:'
                ParentFont = False
                Transparent = True
              end
              object edtCMedio: TDBEdit
                Left = 106
                Top = 18
                Width = 82
                Height = 21
                DataField = 'CUSTO_MEDIO'
                DataSource = dsFatItens
                TabOrder = 1
                OnKeyDown = edtCMedioKeyDown
              end
              object edtCMedioAtual: TDBEdit
                Left = 9
                Top = 19
                Width = 88
                Height = 21
                TabStop = False
                Color = clWindowFrame
                DataField = 'CUSTO_MEDIO'
                DataSource = dsFatItens
                Enabled = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
            end
          end
          object Panel10: TPanel
            Left = 0
            Top = 269
            Width = 617
            Height = 131
            Align = alBottom
            BevelOuter = bvNone
            ParentColor = True
            TabOrder = 2
            object Panel11: TPanel
              Left = 0
              Top = 0
              Width = 609
              Height = 18
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvNone
              Caption = '  Agentes da Comiss'#227'o'
              Color = 8404992
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object GridAgentes: TdxDBGrid
              Left = 0
              Top = 18
              Width = 609
              Height = 113
              Bands = <
                item
                end>
              DefaultLayout = True
              HeaderPanelRowCount = 1
              KeyField = 'CODIGO'
              ShowSummaryFooter = True
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
              AutoExpandOnSearch = False
              BandFont.Charset = DEFAULT_CHARSET
              BandFont.Color = clWindowText
              BandFont.Height = -11
              BandFont.Name = 'MS Sans Serif'
              BandFont.Style = []
              DataSource = dsAgentes
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
              OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
              PreviewFont.Charset = DEFAULT_CHARSET
              PreviewFont.Color = clBlue
              PreviewFont.Height = -11
              PreviewFont.Name = 'MS Sans Serif'
              PreviewFont.Style = []
              OnCustomDraw = GridAgentesCustomDraw
              object GridAgentesPESSOA_FJ: TdxDBGridMaskColumn
                Sorted = csUp
                Width = 83
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PESSOA_FJ'
              end
              object GridAgentesNOME_RAZAO: TdxDBGridMaskColumn
                Width = 229
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOME_RAZAO'
              end
              object GridAgentesCPF_CGC: TdxDBGridMaskColumn
                Width = 94
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CPF_CGC'
              end
              object GridAgentesCNPJ: TdxDBGridMaskColumn
                Visible = False
                Width = 77
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CNPJ'
              end
              object GridAgentesCODIGO: TdxDBGridMaskColumn
                Visible = False
                Width = 56
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CODIGO'
              end
              object GridAgentesCOD_ITEM: TdxDBGridMaskColumn
                Visible = False
                Width = 56
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COD_ITEM'
              end
              object GridAgentesPRODUTO: TdxDBGridMaskColumn
                Visible = False
                Width = 82
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PRODUTO'
              end
              object GridAgentesSEQUENCIA: TdxDBGridMaskColumn
                Visible = False
                Width = 60
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SEQUENCIA'
              end
              object GridAgentesPERCENTUAL: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'PERCENTUAL'
                SummaryFooterType = cstSum
                SummaryField = 'PERCENTUAL'
              end
              object GridAgentesCOMISSAO_ITEM: TdxDBGridMaskColumn
                BandIndex = 0
                RowIndex = 0
                FieldName = 'COMISSAO_ITEM'
                SummaryFooterType = cstSum
                SummaryField = 'COMISSAO_ITEM'
              end
            end
          end
        end
      end
    end
  end
  object Navigator: TdxBarDBNavigator
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 632
    Top = 16
  end
  object Actions: TActionList
    Left = 737
    Top = 16
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActAtualizar: TAction
      Caption = 'Atualizar (F7)'
      ShortCut = 118
      OnExecute = ActAtualizarExecute
    end
    object ActConfCampos: TAction
      Caption = 'Configura Campos ( F2 )'
      ShortCut = 113
      OnExecute = ActConfCamposExecute
    end
    object ActExportarExcel: TAction
      Tag = 1
      Caption = 'Exportar para Excel'
      OnExecute = ActExportarExcelExecute
    end
    object ActExportarHtml: TAction
      Tag = 1
      Caption = 'Exportar para Html'
      OnExecute = ActExportarHtmlExecute
    end
    object ActResumoGrafico: TAction
      Tag = 1
      Caption = 'Resumo Gr'#225'fico de O.S.'
    end
    object ActSeleciona: TAction
      Caption = 'Selecionar Registro (Ctrl + Espa'#231'o)'
      ShortCut = 16416
      OnExecute = ActSelecionaExecute
    end
    object ActQuitarComissao: TAction
      Caption = 'Provisionar Comiss'#245'es'
      ShortCut = 120
      OnExecute = ActQuitarComissaoExecute
    end
    object ActRedCusto: TAction
      Tag = 1
      Caption = 'Redefinir Custo M'#233'dio'
      OnExecute = ActRedCustoExecute
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = dmFinanceiro2.CM2_COMISSAO_PARC
    OnStateChange = DataSourceStateChange
    Left = 188
    Top = 170
  end
  object stgGrdComissaoAgricola: TcxPropertiesStore
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
        Component = GRIDAGENTE
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
        Component = GridAgentes
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
        Component = GridAgentesCNPJ
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
        Component = GridAgentesCOD_ITEM
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
        Component = GridAgentesCODIGO
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
        Component = GridAgentesCOMISSAO_ITEM
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
        Component = GridAgentesCPF_CGC
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
        Component = GridAgentesNOME_RAZAO
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
        Component = GridAgentesPERCENTUAL
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
        Component = GridAgentesPESSOA_FJ
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
        Component = GridAgentesPRODUTO
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
        Component = GridAgentesSEQUENCIA
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
        Component = GRIDCFOP
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
        Component = GRIDCLIENTE
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
        Component = GRIDCM_PCT
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
        Component = GRIDCOD_BX_PAGAR
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
        Component = GRIDCOD_BX_RECEBER
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
        Component = GRIDCOD_FORMA
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
        Component = GRIDCOD_PAGAR
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
        Component = GRIDCOD_PESSOA
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
        Component = GRIDCOD_RECEBER
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
        Component = GRIDCOD_VENDA
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
        Component = GRIDDT_CX_FATURAMENTO
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
        Component = GRIDDT_FATURAMENTO
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
        Component = GRIDDT_GERACAO
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
        Component = GridFaturamentos
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
        Component = GridFaturamentosCNPJ
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
        Component = GridFaturamentosCODIGO
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
        Component = GridFaturamentosCOM_FATURAMENTO
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
        Component = GridFaturamentosDESC_ACRES
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
        Component = GridFaturamentosLUCRO_FATURAMENTO
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
        Component = GridFaturamentosNATUREZA
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
        Component = GridFaturamentosNOME_RAZAO
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
        Component = GridFaturamentosTOTAL
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
        Component = GridFaturamentosTOTAL_LIQUIDO
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
        Component = GRIDFORMA_PGTO
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
        Component = GridItensCOMISSAO_ITEM
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
        Component = GridItensCUSTO_ITEM
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
        Component = GridItensCUSTO_MEDIO
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
        Component = GridItensDESP_OP
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
        Component = GridItensLUCRO_BRUTO
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
        Component = GridItensLUCRO_LIQUIDO
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
        Component = GridItensLUCRO_UNITARIO
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
        Component = GridItensNOME
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
        Component = GridItensPRC_UNITARIO
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
        Component = GRIDNUM_NF
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
        Component = GRIDSALDO_COMISSAO
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
        Component = GRIDSELECIONADO
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
        Component = GRIDSTATUS
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
        Component = GRIDTOTAL_PROVISIONADO
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
        Component = GRIDVALOR
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DecimalPlaces'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'DisplayFormat'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MaxValue'
          'MinValue'
          'MinWidth'
          'Name'
          'Nullable'
          'NullString'
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
          'UseThousandSeparator'
          'VertAlignment'
          'Visible'
          'Width')
      end>
    StorageName = 'stgGrdComissaoAgricola'
    Left = 667
    Top = 16
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 702
    Top = 16
  end
  object dxDBGridLayoutList: TdxDBGridLayoutList
    Left = 562
    Top = 16
    object LayoutFaturamento: TdxDBGridLayout
      Data = {
        CF050000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C640606434F4449474F0D53756D6D61
        727947726F7570730E001053756D6D617279536570617261746F7206022C200A
        44617461536F75726365071E46726D53656C436F6D6973736F65732E64734661
        747572616D656E746F730F46696C7465722E43726974657269610A0400000000
        0000000F4F7074696F6E734265686176696F720B0C6564676F4175746F536F72
        740B6564676F45646974696E67136564676F496D6D656469617465456469746F
        720E6564676F5461625468726F7567680F6564676F566572745468726F756768
        000F53686F775072657669657747726964081557616974466F72457870616E64
        4E6F646554696D6503580200185464784442477269644578744C6F6F6B757043
        6F6C756D6E054954454E530942616E64496E646578020008526F77496E646578
        0200094669656C644E616D6506054954454E530D506F7075704D696E57696474
        680358020A506F70757057696474680358020C4442477269644C61796F757407
        1B46726D53656C436F6D6973736F65732E4C61796F75744974656E7300000F54
        6478444247726964436F6C756D6E06434F4449474F0942616E64496E64657802
        0008526F77496E6465780200094669656C644E616D650606434F4449474F0000
        135464784442477269644D61736B436F6C756D6E0A4E4F4D455F52415A414F05
        576964746803D5000942616E64496E646578020008526F77496E646578020009
        4669656C644E616D65060A4E4F4D455F52415A414F0000175464784442477269
        6443757272656E6379436F6C756D6E05544F54414C0942616E64496E64657802
        0008526F77496E6465780200094669656C644E616D650605544F54414C084E75
        6C6C61626C650800001754647844424772696443757272656E6379436F6C756D
        6E0A444553435F4143524553055769647468024D0942616E64496E6465780200
        08526F77496E6465780200094669656C644E616D65060A444553435F41435245
        53084E756C6C61626C650800001754647844424772696443757272656E637943
        6F6C756D6E0D544F54414C5F4C49515549444F0942616E64496E646578020008
        526F77496E6465780200094669656C644E616D65060D544F54414C5F4C495155
        49444F084E756C6C61626C650800001754647844424772696443757272656E63
        79436F6C756D6E114C5543524F5F4641545552414D454E544F0942616E64496E
        646578020008526F77496E6465780200094669656C644E616D6506114C554352
        4F5F4641545552414D454E544F084E756C6C61626C6508000017546478444247
        72696443757272656E6379436F6C756D6E0F434F4D5F4641545552414D454E54
        4F0942616E64496E646578020008526F77496E6465780200094669656C644E61
        6D65060F434F4D5F4641545552414D454E544F084E756C6C61626C6508000013
        5464784442477269644D61736B436F6C756D6E04434E504A0756697369626C65
        08055769647468024A0942616E64496E646578020008526F77496E6465780200
        094669656C644E616D650604434E504A0000185464784442477269644578744C
        6F6F6B7570436F6C756D6E084E41545552455A4105576964746802410942616E
        64496E646578020008526F77496E6465780200094669656C644E616D6506084E
        41545552455A410F53686F77427574746F6E5374796C6507087362416C776179
        730D506F7075704175746F53697A65090B506F70757048656967687403C8000D
        506F7075704D696E57696474680358020A506F70757057696474680358021043
        686F6F7365427944626C436C69636B080C4442477269644C61796F7574071A46
        726D53656C436F6D6973736F65732E4C61796F757443464F500D5069636B4C69
        73744669656C6406044E4F4D4511496D6D65646961746544726F70446F776E09
        0E496D6D656469617465506F70757009000000}
    end
    object LayoutItens: TdxDBGridLayout
      Data = {
        4C120000545046301054647844424772696457726170706572000542616E6473
        0E0100000D44656661756C744C61796F7574091348656164657250616E656C52
        6F77436F756E740201084B65794669656C640606434F4449474F0D53756D6D61
        727947726F7570730E001053756D6D617279536570617261746F7206022C200A
        44617461536F75726365071A46726D53656C436F6D6973736F65732E64734661
        744974656E730F46696C7465722E43726974657269610A04000000000000000F
        53686F7750726576696577477269640800135464784442477269644D61736B43
        6F6C756D6E04434E504A0942616E64496E646578020008526F77496E64657802
        00094669656C644E616D650604434E504A0000135464784442477269644D6173
        6B436F6C756D6E06434F4449474F0942616E64496E646578020008526F77496E
        6465780200094669656C644E616D650606434F4449474F000013546478444247
        7269644D61736B436F6C756D6E0750524F4455544F0942616E64496E64657802
        0008526F77496E6465780200094669656C644E616D65060750524F4455544F00
        00135464784442477269644D61736B436F6C756D6E0953455155454E43494109
        42616E64496E646578020008526F77496E6465780200094669656C644E616D65
        060953455155454E4349410000135464784442477269644D61736B436F6C756D
        6E0A5155414E5449444144450942616E64496E646578020008526F77496E6465
        780200094669656C644E616D65060A5155414E54494441444500001354647844
        42477269644D61736B436F6C756D6E0C5052435F554E49544152494F0942616E
        64496E646578020008526F77496E6465780200094669656C644E616D65060C50
        52435F554E49544152494F0000135464784442477269644D61736B436F6C756D
        6E095052435F435553544F0942616E64496E646578020008526F77496E646578
        0200094669656C644E616D6506095052435F435553544F000013546478444247
        7269644D61736B436F6C756D6E0349434D0942616E64496E646578020008526F
        77496E6465780200094669656C644E616D65060349434D000013546478444247
        7269644D61736B436F6C756D6E0849434D5F535542530942616E64496E646578
        020008526F77496E6465780200094669656C644E616D65060849434D5F535542
        530000135464784442477269644D61736B436F6C756D6E034950490942616E64
        496E646578020008526F77496E6465780200094669656C644E616D6506034950
        490000135464784442477269644D61736B436F6C756D6E06564F4C554D450942
        616E64496E646578020008526F77496E6465780200094669656C644E616D6506
        06564F4C554D450000135464784442477269644D61736B436F6C756D6E045045
        534F0942616E64496E646578020008526F77496E6465780200094669656C644E
        616D6506045045534F0000135464784442477269644D61736B436F6C756D6E08
        444553434F4E544F0942616E64496E646578020008526F77496E646578020009
        4669656C644E616D650608444553434F4E544F0000135464784442477269644D
        61736B436F6C756D6E09504F52435F444553430942616E64496E646578020008
        526F77496E6465780200094669656C644E616D650609504F52435F4445534300
        00135464784442477269644D61736B436F6C756D6E07554E4944414445094261
        6E64496E646578020008526F77496E6465780200094669656C644E616D650607
        554E49444144450000135464784442477269644D61736B436F6C756D6E115052
        435F554E49545F4F524947494E414C0942616E64496E646578020008526F7749
        6E6465780200094669656C644E616D6506115052435F554E49545F4F52494749
        4E414C0000135464784442477269644D61736B436F6C756D6E0C4E4F4D455F50
        524F4455544F0942616E64496E646578020008526F77496E6465780200094669
        656C644E616D65060C4E4F4D455F50524F4455544F0000135464784442477269
        644D61736B436F6C756D6E08414C4951554F54410942616E64496E6465780200
        08526F77496E6465780200094669656C644E616D650608414C4951554F544100
        00135464784442477269644D61736B436F6C756D6E0A50524F4455544F464953
        0942616E64496E646578020008526F77496E6465780200094669656C644E616D
        65060A50524F4455544F4649530000135464784442477269644D61736B436F6C
        756D6E084E4F4D455F4649530942616E64496E646578020008526F77496E6465
        780200094669656C644E616D6506084E4F4D455F464953000013546478444247
        7269644D61736B436F6C756D6E034354450942616E64496E646578020008526F
        77496E6465780200094669656C644E616D650603435445000013546478444247
        7269644D61736B436F6C756D6E04435449450942616E64496E64657802000852
        6F77496E6465780200094669656C644E616D6506044354494500001354647844
        42477269644D61736B436F6C756D6E064F524947454D0942616E64496E646578
        020008526F77496E6465780200094669656C644E616D6506064F524947454D00
        00135464784442477269644D61736B436F6C756D6E075245445543414F094261
        6E64496E646578020008526F77496E6465780200094669656C644E616D650607
        5245445543414F0000135464784442477269644D61736B436F6C756D6E0A5355
        42554E49444144450942616E64496E646578020008526F77496E646578020009
        4669656C644E616D65060A535542554E49444144450000135464784442477269
        644D61736B436F6C756D6E0E544F54414C5F444947495441444F0942616E6449
        6E646578020008526F77496E6465780200094669656C644E616D65060E544F54
        414C5F444947495441444F0000135464784442477269644D61736B436F6C756D
        6E0856454E4445444F520942616E64496E646578020008526F77496E64657802
        00094669656C644E616D65060856454E4445444F520000135464784442477269
        644D61736B436F6C756D6E0A46524143494F4E41444F0942616E64496E646578
        020008526F77496E6465780200094669656C644E616D65060A46524143494F4E
        41444F0000135464784442477269644D61736B436F6C756D6E104D454E534147
        454D5F5245445543414F0942616E64496E646578020008526F77496E64657802
        00094669656C644E616D6506104D454E534147454D5F5245445543414F000013
        5464784442477269644D61736B436F6C756D6E0E4241534543414C43554C4F49
        434D0942616E64496E646578020008526F77496E6465780200094669656C644E
        616D65060E4241534543414C43554C4F49434D0000135464784442477269644D
        61736B436F6C756D6E174241534543414C43554C4F5355425354495455494341
        4F0942616E64496E646578020008526F77496E6465780200094669656C644E61
        6D6506174241534543414C43554C4F53554253544954554943414F0000135464
        784442477269644D61736B436F6C756D6E0C414C4951554F54415F4553540942
        616E64496E646578020008526F77496E6465780200094669656C644E616D6506
        0C414C4951554F54415F4553540000135464784442477269644D61736B436F6C
        756D6E0C414C4951554F54415F494E540942616E64496E646578020008526F77
        496E6465780200094669656C644E616D65060C414C4951554F54415F494E5400
        00135464784442477269644D61736B436F6C756D6E0443464F500942616E6449
        6E646578020008526F77496E6465780200094669656C644E616D65060443464F
        500000135464784442477269644D61736B436F6C756D6E0B434F4D504C454D45
        4E544F0942616E64496E646578020008526F77496E6465780200094669656C64
        4E616D65060B434F4D504C454D454E544F0000135464784442477269644D6173
        6B436F6C756D6E0D4E4F4D455F56454E4445444F520942616E64496E64657802
        0008526F77496E6465780200094669656C644E616D65060D4E4F4D455F56454E
        4445444F52000013546478444247726964426C6F62436F6C756D6E0753455256
        49434F05576964746802640942616E64496E646578020008526F77496E646578
        0200094669656C644E616D6506075345525649434F0000135464784442477269
        644D61736B436F6C756D6E064E554D45524F0942616E64496E64657802000852
        6F77496E6465780200094669656C644E616D6506064E554D45524F0000135464
        784442477269644D61736B436F6C756D6E134C494E48415F4142415354454349
        4D454E544F0942616E64496E646578020008526F77496E646578020009466965
        6C644E616D6506134C494E48415F41424153544543494D454E544F0000135464
        784442477269644D61736B436F6C756D6E10434F4E5441444F525F4152515549
        564F0942616E64496E646578020008526F77496E6465780200094669656C644E
        616D650610434F4E5441444F525F4152515549564F0000135464784442477269
        644D61736B436F6C756D6E0547524144450942616E64496E646578020008526F
        77496E6465780200094669656C644E616D650605475241444500001354647844
        42477269644D61736B436F6C756D6E0E5155414E5449444144455F4649530942
        616E64496E646578020008526F77496E6465780200094669656C644E616D6506
        0E5155414E5449444144455F4649530000135464784442477269644D61736B43
        6F6C756D6E105052435F554E49544152494F5F4649530942616E64496E646578
        020008526F77496E6465780200094669656C644E616D6506105052435F554E49
        544152494F5F4649530000135464784442477269644D61736B436F6C756D6E04
        4C4F54450942616E64496E646578020008526F77496E6465780200094669656C
        644E616D6506044C4F54450000135464784442477269644D61736B436F6C756D
        6E0B434F4449474F5F4C4F54450942616E64496E646578020008526F77496E64
        65780200094669656C644E616D65060B434F4449474F5F4C4F54450000135464
        784442477269644D61736B436F6C756D6E0C5554494C495A415F4C4F54450942
        616E64496E646578020008526F77496E6465780200094669656C644E616D6506
        0C5554494C495A415F4C4F54450000135464784442477269644D61736B436F6C
        756D6E0A434F4D5F4745524144410942616E64496E646578020008526F77496E
        6465780200094669656C644E616D65060A434F4D5F4745524144410000135464
        784442477269644D61736B436F6C756D6E0D515444455F454E54524547554509
        42616E64496E646578020008526F77496E6465780200094669656C644E616D65
        060D515444455F454E5452454755450000135464784442477269644D61736B43
        6F6C756D6E0B435553544F5F4D4544494F0942616E64496E646578020008526F
        77496E6465780200094669656C644E616D65060B435553544F5F4D4544494F00
        00135464784442477269644D61736B436F6C756D6E0A4C5543524F5F4954454D
        0942616E64496E646578020008526F77496E6465780200094669656C644E616D
        65060A4C5543524F5F4954454D0000135464784442477269644D61736B436F6C
        756D6E0843415252454741520942616E64496E646578020008526F77496E6465
        780200094669656C644E616D6506084341525245474152000013546478444247
        7269644D61736B436F6C756D6E0943415252454741444F0942616E64496E6465
        78020008526F77496E6465780200094669656C644E616D650609434152524547
        41444F0000135464784442477269644D61736B436F6C756D6E08454E54524547
        55450942616E64496E646578020008526F77496E6465780200094669656C644E
        616D650608454E5452454755450000135464784442477269644D61736B436F6C
        756D6E08454E5452454741520942616E64496E646578020008526F77496E6465
        780200094669656C644E616D650608454E545245474152000013546478444247
        7269644D61736B436F6C756D6E084445564F4C5645520942616E64496E646578
        020008526F77496E6465780200094669656C644E616D6506084445564F4C5645
        520000135464784442477269644D61736B436F6C756D6E094445564F4C564944
        4F0942616E64496E646578020008526F77496E6465780200094669656C644E61
        6D6506094445564F4C5649444F0000135464784442477269644D61736B436F6C
        756D6E085350524F4455544F0942616E64496E646578020008526F77496E6465
        780200094669656C644E616D6506085350524F4455544F000013546478444247
        7269644D61736B436F6C756D6E0E564C525F4C5543524F5F4954454D0942616E
        64496E646578020008526F77496E6465780200094669656C644E616D65060E56
        4C525F4C5543524F5F4954454D000000}
    end
  end
  object dsFaturamentos: TDataSource
    AutoEdit = False
    DataSet = dmFinanceiro2.CM2_FATURAMENTOS
    Left = 218
    Top = 170
  end
  object dsFatItens: TDataSource
    AutoEdit = False
    DataSet = dmFinanceiro2.CM2_FAT_ITENS
    Left = 250
    Top = 162
  end
  object dsAgentes: TDataSource
    AutoEdit = False
    DataSet = dmFinanceiro2.CM2_FAT_ITENS_AGENTES
    Left = 290
    Top = 162
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
    Left = 597
    Top = 16
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
      FloatClientWidth = 82
      FloatClientHeight = 132
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
          ItemName = 'btnHtm'
        end
        item
          Visible = True
          ItemName = 'btnSelecionar'
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
      Action = ActConfCampos
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
      Action = ActExportarExcel
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
    object btnHtm: TdxBarButton
      Action = ActQuitarComissao
      Caption = 'Provisionar Comiss'#245'es ( F9 )'
      Category = 0
      Glyph.Data = {
        66030000424D6603000000000000360000002800000010000000110000000100
        1800000000003003000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FBFBFBFFFFFFF7F2000
        7F40007F40007F40007F40007F40007F40007F40007F40007F40007F40007F40
        007F40007F4040BFBFBFFFFFFF7F40007F7F0000404040400000404040400000
        40404040000040400080800080800040407F7F007F4040BFBFBFFFFFFF7F4000
        7F7F004040006060004040006060004040006060004040004040004040004040
        007F7F007F4040BFBFBFFFFFFF7F40007F7F0000404040400000404040400000
        40404040000040404040000040404040007F7F007F4040BFBFBFFFFFFF7F4000
        7F7F004040006060004040006060004040006060004040006060004040006060
        007F7F007F4040BFBFBFFFFFFF7F40007F7F0000404040400000404040400000
        40404040000040404040000040404040007F7F007F4040BFBFBFFFFFFF7F4000
        7F7F004040006060004040006060004040006060004040006060004040006060
        007F7F007F4040BFBFBFFFFFFF7F40007F7F0040404080808080808080808080
        80808080808080804040007F7F007F7F007F7F007F4040BFBFBFFFFFFF7F4000
        7F7F004040404040804040804040804040804040804040804040007F7F007F7F
        007F7F007F4040BFBFBFFFFFFF7F20007F40007F40007F40007F40007F40007F
        40007F40007F40007F40007F40007F40007F40009F6060FFFFFFFFFFFFFFFFFF
        FFFFFF808080FFFFFFFFFFFFFFFFFFC0C0FFC0C0FFC0C0FF404040BFBFBFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080FFFFFFFFFFFFC0C0FFC0
        C0FFC0C0FFC0C0FF404040BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF808080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0606060FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4}
      PaintStyle = psCaptionGlyph
    end
    object btnSelecionar: TdxBarButton
      Action = ActSeleciona
      Category = 0
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
end
