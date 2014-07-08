object FrmRomaneios: TFrmRomaneios
  Left = -8
  Top = -8
  Width = 1296
  Height = 776
  Caption = 'Visualiza'#231#227'o de Pedidos'
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
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
    Width = 1280
    Height = 712
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 707
    ClientRectLeft = 2
    ClientRectRight = 1275
    ClientRectTop = 2
  end
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 1280
    Height = 712
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
      Top = 710
      Width = 1280
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 1280
      Height = 710
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object Panel3: TPanel
        Left = 0
        Top = 38
        Width = 1280
        Height = 56
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 0
        OnExit = Panel3Exit
        object Label4: TcxLabel
          Left = 153
          Top = 22
          Caption = #224' '
          ParentFont = False
          Transparent = True
        end
        object Label1: TcxLabel
          Left = 11
          Top = 22
          Caption = 'Per'#237'odo'
          ParentFont = False
          Transparent = True
        end
        object edDtFinal: TdxDateEdit
          Left = 166
          Top = 16
          Width = 96
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
          OnEnter = EdTipoContratoEnter
          OnExit = EdTipoContratoExit
          OnKeyDown = edDataBaseKeyDown
          Date = -700000.000000000000000000
          UseEditMask = True
          StoredValues = 4
        end
        object edDtInicial: TdxDateEdit
          Left = 52
          Top = 16
          Width = 96
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
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1280
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
          Caption = 'Visualiza'#231#227'o de Pedidos'
          ParentFont = False
          Transparent = True
        end
      end
      object PageControl: TcxPageControl
        Left = 0
        Top = 94
        Width = 1280
        Height = 616
        ActivePage = dxTabSheet1
        Align = alClient
        TabOrder = 2
        ClientRectBottom = 611
        ClientRectLeft = 2
        ClientRectRight = 1275
        ClientRectTop = 24
        object dxTabSheet1: TcxTabSheet
          Caption = 'Pedidos'
          OnShow = dxTabSheet1Show
          object Panel5: TPanel
            Left = 0
            Top = 0
            Width = 1273
            Height = 320
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            object pc: TcxPageControl
              Left = 0
              Top = 0
              Width = 1273
              Height = 320
              Align = alClient
              HotTrack = True
              TabOrder = 0
              ClientRectBottom = 315
              ClientRectLeft = 2
              ClientRectRight = 1268
              ClientRectTop = 2
            end
            object GridPedidos: TcxDBPivotGrid
              Left = 0
              Top = 0
              Width = 1273
              Height = 320
              Align = alClient
              DataSource = DataSource
              Groups = <>
              TabOrder = 1
              object GridPedidosVDI_CODIGO: TcxDBPivotGridField
                AreaIndex = 0
                DataBinding.FieldName = 'VDI_CODIGO'
                Visible = True
              end
              object GridPedidosVDI_PRODUTO: TcxDBPivotGridField
                AreaIndex = 1
                DataBinding.FieldName = 'VDI_PRODUTO'
                Visible = True
              end
              object GridPedidosVDI_PRC_UNIT_ORIGINAL: TcxDBPivotGridField
                AreaIndex = 2
                DataBinding.FieldName = 'VDI_PRC_UNIT_ORIGINAL'
                Visible = True
              end
              object GridPedidosVDI_PRC_UNITARIO: TcxDBPivotGridField
                AreaIndex = 3
                DataBinding.FieldName = 'VDI_PRC_UNITARIO'
                Visible = True
              end
              object GridPedidosVDI_CUSTO_MEDIO: TcxDBPivotGridField
                AreaIndex = 4
                DataBinding.FieldName = 'VDI_CUSTO_MEDIO'
                Visible = True
              end
              object GridPedidosVDI_DESCONTO: TcxDBPivotGridField
                AreaIndex = 5
                DataBinding.FieldName = 'VDI_DESCONTO'
                Visible = True
              end
              object GridPedidosVDI_QTDE: TcxDBPivotGridField
                AreaIndex = 6
                DataBinding.FieldName = 'VDI_QTDE'
                Visible = True
              end
              object GridPedidosVDI_TOTAL: TcxDBPivotGridField
                AreaIndex = 7
                DataBinding.FieldName = 'VDI_TOTAL'
                Visible = True
              end
              object GridPedidosCLI_NOME: TcxDBPivotGridField
                AreaIndex = 8
                DataBinding.FieldName = 'CLI_NOME'
                Visible = True
              end
              object GridPedidosCLI_CODIGO: TcxDBPivotGridField
                AreaIndex = 9
                DataBinding.FieldName = 'CLI_CODIGO'
                Visible = True
              end
              object GridPedidosCLI_CPF_CGC: TcxDBPivotGridField
                AreaIndex = 10
                DataBinding.FieldName = 'CLI_CPF_CGC'
                Visible = True
              end
              object GridPedidosVDD_NOME: TcxDBPivotGridField
                AreaIndex = 11
                DataBinding.FieldName = 'VDD_NOME'
                Visible = True
              end
              object GridPedidosPRODUTO: TcxDBPivotGridField
                AreaIndex = 12
                DataBinding.FieldName = 'PRODUTO'
                Visible = True
              end
              object GridPedidosMRC_NOME: TcxDBPivotGridField
                AreaIndex = 13
                DataBinding.FieldName = 'MRC_NOME'
                Visible = True
              end
              object GridPedidosFN_NOME: TcxDBPivotGridField
                AreaIndex = 14
                DataBinding.FieldName = 'FN_NOME'
                Visible = True
              end
              object GridPedidosVD_DATA_CAIXA: TcxDBPivotGridField
                AreaIndex = 15
                DataBinding.FieldName = 'VD_DATA_CAIXA'
                Visible = True
              end
              object GridPedidosVD_DATA: TcxDBPivotGridField
                AreaIndex = 16
                DataBinding.FieldName = 'VD_DATA'
                Visible = True
              end
              object GridPedidosVD_CFOP: TcxDBPivotGridField
                AreaIndex = 17
                DataBinding.FieldName = 'VD_CFOP'
                Visible = True
              end
              object GridPedidosVD_TOTAL_BRUTO: TcxDBPivotGridField
                AreaIndex = 18
                DataBinding.FieldName = 'VD_TOTAL_BRUTO'
                Visible = True
              end
              object GridPedidosVD_DESC_ACRES: TcxDBPivotGridField
                AreaIndex = 19
                DataBinding.FieldName = 'VD_DESC_ACRES'
                Visible = True
              end
              object GridPedidosVD_TOTAL_LIQUIDO: TcxDBPivotGridField
                AreaIndex = 20
                DataBinding.FieldName = 'VD_TOTAL_LIQUIDO'
                Visible = True
              end
              object GridPedidosVD_CODIGO: TcxDBPivotGridField
                AreaIndex = 21
                DataBinding.FieldName = 'VD_CODIGO'
                Visible = True
              end
              object GridPedidosNUM_NF: TcxDBPivotGridField
                AreaIndex = 22
                DataBinding.FieldName = 'NUM_NF'
                Visible = True
              end
              object GridPedidosQNTDE_PDR_CARGA: TcxDBPivotGridField
                AreaIndex = 23
                DataBinding.FieldName = 'QNTDE_PDR_CARGA'
                Visible = True
              end
              object GridPedidosUND_CARREGAMENTO: TcxDBPivotGridField
                AreaIndex = 24
                DataBinding.FieldName = 'UND_CARREGAMENTO'
                Visible = True
              end
              object GridPedidosUND_INDIVIDUAL: TcxDBPivotGridField
                AreaIndex = 25
                DataBinding.FieldName = 'UND_INDIVIDUAL'
                Visible = True
              end
              object GridPedidosFORMA_PAGTO: TcxDBPivotGridField
                AreaIndex = 26
                DataBinding.FieldName = 'FORMA_PAGTO'
                Visible = True
              end
              object GridPedidosCFOP: TcxDBPivotGridField
                AreaIndex = 27
                DataBinding.FieldName = 'CFOP'
                Visible = True
              end
              object GridPedidosVDI_TOTAL_LIQUIDO: TcxDBPivotGridField
                AreaIndex = 28
                DataBinding.FieldName = 'VDI_TOTAL_LIQUIDO'
                Visible = True
              end
              object GridPedidosGRADE: TcxDBPivotGridField
                AreaIndex = 29
                DataBinding.FieldName = 'GRADE'
                Visible = True
              end
              object GridPedidosNUMERO: TcxDBPivotGridField
                AreaIndex = 30
                DataBinding.FieldName = 'NUMERO'
                Visible = True
              end
              object GridPedidosVDI_CUSTO_TOTAL: TcxDBPivotGridField
                AreaIndex = 31
                DataBinding.FieldName = 'VDI_CUSTO_TOTAL'
                Visible = True
              end
              object GridPedidosVDI_MARGEM: TcxDBPivotGridField
                AreaIndex = 32
                DataBinding.FieldName = 'VDI_MARGEM'
                Visible = True
              end
            end
          end
          object cxGroupBox2: TcxGroupBox
            Left = 0
            Top = 320
            Align = alBottom
            PanelStyle.Active = True
            Style.BorderStyle = ebsNone
            Style.Edges = []
            Style.TransparentBorder = False
            TabOrder = 1
            Height = 267
            Width = 1273
            object Grid: TcxGrid
              Left = 0
              Top = 0
              Width = 1273
              Height = 267
              Align = alClient
              TabOrder = 0
              object ChartView: TcxGridChartView
                DiagramPie.Active = True
                ToolBox.CustomizeButton = True
                ToolBox.DiagramSelector = True
              end
              object GridLevel: TcxGridLevel
                GridView = ChartView
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
    end
    object ActExportarExcel: TAction
      Tag = 1
      Caption = 'Exportar para Excel'
      OnExecute = ActExportarExcelExecute
    end
    object ActExportarHtml: TAction
      Tag = 1
      Caption = 'Exportar para Html'
    end
    object ActResumoGrafico: TAction
      Tag = 1
      Caption = 'Resumo Gr'#225'fico de O.S.'
    end
    object ActSeleciona: TAction
      Caption = 'Selecionar Registro (Ctrl + Espa'#231'o)'
      ShortCut = 16416
    end
    object ActQuitarComissao: TAction
      Caption = 'Quitar Comiss'#245'es'
      ShortCut = 120
    end
    object TAction
    end
  end
  object DataSource: TDataSource
    DataSet = DmEstoque.QryRomaneios
    OnStateChange = DataSourceStateChange
    Left = 188
    Top = 170
  end
  object stgGrdRomaneios: TcxPropertiesStore
    Components = <>
    StorageName = 'stgGrdRomaneios'
    Left = 667
    Top = 16
  end
  object SaveDialog: TSaveDialog
    FileName = 'Listagem de Pedidos'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 702
    Top = 16
  end
  object BarManager: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
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
  object stgPivotPedidos: TcxPropertiesStore
    Components = <
      item
        Component = GridPedidos
        Properties.Strings = (
          'Align'
          'Anchors'
          'BevelEdges'
          'BevelInner'
          'BevelKind'
          'BevelOuter'
          'BevelWidth'
          'BorderStyle'
          'BorderWidth'
          'Constraints'
          'Cursor'
          'DataSource'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FieldHeaderImages'
          'Font'
          'GroupHeaderImages'
          'Groups'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'LookAndFeel'
          'Name'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsData'
          'OptionsDataField'
          'OptionsSelection'
          'OptionsView'
          'ParentFont'
          'PopupMenu'
          'PopupMenus'
          'ShowHint'
          'Styles'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosCFOP
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosCLI_CODIGO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosCLI_CPF_CGC
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosCLI_NOME
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosFN_NOME
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosFORMA_PAGTO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosGRADE
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosMRC_NOME
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosNUM_NF
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosNUMERO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosPRODUTO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosQNTDE_PDR_CARGA
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosUND_CARREGAMENTO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosUND_INDIVIDUAL
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVD_CFOP
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVD_CODIGO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVD_DATA
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVD_DATA_CAIXA
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVD_DESC_ACRES
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVD_TOTAL_BRUTO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVD_TOTAL_LIQUIDO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVDD_NOME
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVDI_CODIGO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVDI_CUSTO_MEDIO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVDI_DESCONTO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVDI_PRC_UNIT_ORIGINAL
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVDI_PRC_UNITARIO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVDI_PRODUTO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVDI_QTDE
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVDI_TOTAL
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end
      item
        Component = GridPedidosVDI_TOTAL_LIQUIDO
        Properties.Strings = (
          'AllowedAreas'
          'Area'
          'AreaIndex'
          'Caption'
          'CustomTotals'
          'DataBinding'
          'DisplayFormat'
          'GroupExpanded'
          'GroupIndex'
          'GroupInterval'
          'GroupIntervalRange'
          'Hidden'
          'ImageAlign'
          'ImageIndex'
          'IsCaptionAssigned'
          'MinWidth'
          'Name'
          'Options'
          'SortBySummaryInfo'
          'SortOrder'
          'SummaryType'
          'SummaryVariation'
          'Tag'
          'TopValueCount'
          'TopValueShowOthers'
          'TotalsVisibility'
          'Visible'
          'Width')
      end>
    StorageName = 'stgPivotPedidos'
    Left = 511
    Top = 269
  end
  object ChartConnection: TcxPivotGridChartConnection
    GridChartView = ChartView
    PivotGrid = GridPedidos
    Left = 808
    Top = 48
  end
end
