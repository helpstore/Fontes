object FrmTrocas: TFrmTrocas
  Left = 118
  Top = 84
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Or'#231'amentos '
  ClientHeight = 553
  ClientWidth = 790
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 553
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
      Top = 519
      Width = 786
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 521
      Width = 786
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 786
        Height = 26
        Align = dalTop
        BarManager = BarMgr
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 786
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 786
      Height = 37
      Align = alTop
      BiDiMode = bdRightToLeft
      Color = clMenu
      ParentBiDiMode = False
      TabOrder = 1
      object LblTitulo: TcxLabel
        Left = 1
        Top = 1
        Align = alTop
        Caption = 'Trocas'
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
    end
    object PC: TcxPageControl
      Left = 2
      Top = 39
      Width = 786
      Height = 480
      ActivePage = TAB1
      Align = alClient
      TabOrder = 2
      ClientRectBottom = 475
      ClientRectLeft = 2
      ClientRectRight = 781
      ClientRectTop = 24
      object TAB1: TcxTabSheet
        Caption = 'Trocas'
        object GridItens: TdxDBGrid
          Left = 0
          Top = 142
          Width = 779
          Height = 228
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'PRODUTO'
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 0
          OnEnter = GridItensEnter
          OnKeyDown = GridItensKeyDown
          DataSource = DsItens
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsCustomize = []
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
          object GridItensPRODUTO: TdxDBGridMaskColumn
            Width = 124
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRODUTO'
          end
          object GridItensNome_Produto: TdxDBGridLookupColumn
            TabStop = False
            Width = 350
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Nome_Produto'
          end
          object GridItensQUANTIDADE: TdxDBGridMaskColumn
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'QUANTIDADE'
          end
          object GridItensPRC_UNITARIO: TdxDBGridMaskColumn
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRC_UNITARIO'
          end
          object GridItensTotal: TdxDBGridColumn
            Width = 85
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Total'
          end
          object GridItensColumn6: TdxDBGridColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TIPO'
          end
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 779
          Height = 142
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TcxLabel
            Left = 83
            Top = 27
            Caption = 'C'#243'digo'
            ParentFont = False
            Transparent = True
          end
          object Label3: TcxLabel
            Left = 326
            Top = 23
            Caption = 'Data'
            ParentFont = False
            Transparent = True
          end
          object Label2: TcxLabel
            Left = 83
            Top = 52
            Caption = 'Cliente'
            ParentFont = False
            Transparent = True
          end
          object BtnPessoa: TcxButton
            Left = 443
            Top = 47
            Width = 23
            Height = 22
            Cursor = crHandPoint
            TabOrder = 15
            OnClick = BtnPessoaClick
            Glyph.Data = {
              06030000424D06030000000000003600000028000000100000000F0000000100
              180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
              0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
              BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
              0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
              FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
              BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
              00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBF}
          end
          object Label11: TcxLabel
            Left = 474
            Top = 47
            Caption = 'Cliente'
            ParentFont = False
            Transparent = True
          end
          object Label5: TcxLabel
            Left = 70
            Top = 76
            Caption = 'Vendedor'
            ParentFont = False
            Transparent = True
          end
          object BtnVendedor: TcxButton
            Left = 443
            Top = 72
            Width = 23
            Height = 22
            Cursor = crHandPoint
            TabOrder = 18
            OnClick = BtnVendedorClick
            Glyph.Data = {
              06030000424D06030000000000003600000028000000100000000F0000000100
              180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
              0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
              BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
              0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
              FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
              BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
              00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBF}
          end
          object Label4: TcxLabel
            Left = 78
            Top = 102
            Caption = 'Validade'
            ParentFont = False
            Transparent = True
          end
          object Label7: TcxLabel
            Left = 219
            Top = 101
            Caption = 'Obs'
            ParentFont = False
            Transparent = True
          end
          object EdDocumento: TdxDBEdit
            Left = 123
            Top = 21
            Width = 94
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.HotTrack = True
            TabOrder = 0
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CODIGO'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object cbFrete: TdxDBCheckEdit
            Left = 224
            Top = 21
            Width = 70
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            TabOrder = 1
            OnKeyDown = dxDBEdit1KeyDown
            Alignment = taRightJustify
            Caption = 'Fechada'
            DataField = 'FECHADO'
            DataSource = DataSource
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            StoredValues = 1
          end
          object EdDataNota: TdxDBDateEdit
            Left = 356
            Top = 20
            Width = 87
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtNone
            Style.HotTrack = True
            TabOrder = 2
            OnKeyDown = dxDBEdit1KeyDown
            Alignment = taLeftJustify
            DataField = 'DATA'
            DataSource = DataSource
            ReadOnly = False
            DateOnError = deToday
            DateValidation = True
            SaveTime = False
            UseEditMask = True
            StoredValues = 69
          end
          object EdPessoa: TdxDBEdit
            Left = 123
            Top = 46
            Width = 54
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
            OnEnter = EdPessoaEnter
            OnExit = EdPessoaExit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PESSOA_FJ'
            DataSource = DataSource
          end
          object dxDBEdit3: TdxDBEdit
            Left = 176
            Top = 46
            Width = 267
            Enabled = False
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
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'Nome'
            DataSource = DataSource
          end
          object dxDBEdit6: TdxDBEdit
            Left = 514
            Top = 44
            Width = 263
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 5
            OnEnter = EdPessoaEnter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLIENTE'
            DataSource = DataSource
          end
          object EdVendedor: TdxDBEdit
            Left = 123
            Top = 71
            Width = 54
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 6
            OnEnter = EdVendedorEnter
            OnExit = EdVendedorExit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'VENDEDOR'
            DataSource = DataSource
          end
          object dxDBEdit9: TdxDBEdit
            Left = 176
            Top = 71
            Width = 267
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 7
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOME_VENDEDOR'
            DataSource = DataSource
          end
          object EdValidade: TdxDBDateEdit
            Left = 123
            Top = 96
            Width = 88
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 8
            OnEnter = EdPessoaEnter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'VALIDADE'
            DataSource = DataSource
            DateValidation = True
            UseEditMask = True
            StoredValues = 4
          end
          object dxDBEdit2: TdxDBEdit
            Left = 245
            Top = 96
            Width = 532
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 9
            OnEnter = EdPessoaEnter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            OnKeyPress = dxDBEdit2KeyPress
            DataField = 'OBSERVACAO'
            DataSource = DataSource
          end
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 779
            Height = 15
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Troca'
            Color = clAppWorkSpace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
          end
          object Panel9: TPanel
            Left = 0
            Top = 127
            Width = 779
            Height = 15
            Align = alBottom
            BevelOuter = bvNone
            Caption = 'Dados do Produto'
            Color = clAppWorkSpace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 370
          Width = 779
          Height = 81
          Align = alBottom
          BevelOuter = bvNone
          Color = clHighlightText
          TabOrder = 2
          object Panel3: TPanel
            Left = 248
            Top = 1
            Width = 521
            Height = 78
            BevelInner = bvRaised
            BevelOuter = bvLowered
            TabOrder = 0
            object Shape7: TShape
              Left = 2
              Top = 2
              Width = 96
              Height = 17
              Brush.Color = clAppWorkSpace
              Pen.Color = clBtnShadow
            end
            object Label25: TcxLabel
              Left = 226
              Top = 8
              Caption = 'Total Lan'#231'ado'
              ParentFont = False
              Transparent = True
            end
            object Label27: TcxLabel
              Left = 329
              Top = 8
              Caption = 'Total Entradas'
              ParentFont = False
              Transparent = True
            end
            object Label6: TcxLabel
              Left = 134
              Top = 8
              Caption = 'Desc/Acr'#233's'
              ParentFont = False
              Transparent = True
            end
            object Label9: TcxLabel
              Left = 226
              Top = 42
              Caption = 'Total Lan'#231'ado'
              ParentFont = False
              Transparent = True
            end
            object Label10: TcxLabel
              Left = 341
              Top = 42
              Caption = 'Total Sa'#237'das'
              ParentFont = False
              Transparent = True
            end
            object Label12: TcxLabel
              Left = 134
              Top = 42
              Caption = 'Desc/Acr'#233's'
              ParentFont = False
              Transparent = True
            end
            object Label13: TcxLabel
              Left = 469
              Top = 41
              Caption = 'Liquido'
              ParentFont = False
              Transparent = True
            end
            object RxLabel1: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Totais da Troca'
              ParentFont = False
              Transparent = True
            end
            object dxDBEdit5: TdxDBEdit
              Left = 201
              Top = 20
              Width = 104
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
              TabStop = False
              AutoSize = False
              DataField = 'TOTAL'
              DataSource = DataSource
              ReadOnly = True
              Height = 22
              StoredValues = 64
            end
            object dxDBEdit8: TdxDBEdit
              Left = 308
              Top = 20
              Width = 104
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
              TabStop = False
              AutoSize = False
              DataField = 'Geral'
              DataSource = DataSource
              ReadOnly = True
              Height = 22
              StoredValues = 64
            end
            object EdMargem: TdxDBCalcEdit
              Left = 91
              Top = 20
              Width = 109
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
              OnEnter = EdMargemEnter
              OnExit = EdMargemExit
              OnKeyDown = dxDBEdit1KeyDown
              AutoSize = False
              DataField = 'DESC_ACRESC'
              DataSource = DataSource
              ButtonGlyph.Data = {
                46020000424D460200000000000036000000280000000E0000000C0000000100
                1800000000001002000000000000000000000000000000000000CED3D6000000
                0000000000000000000000000000000000000000000000000000000000000000
                00CED3D600008486008486008400008400008400008400008400008400008400
                008400008400008400008400000000000000848600FFFFFF8486008486008486
                0084860084860084860084860084860084860084860084000000000000008486
                00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
                00008400000000000000848600FFFFFF84860084860084860084860084860084
                86008486008486008486008486008400000000000000848600FFFF0084860000
                0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
                0000848600FFFFFF848600848600848600848600848600848600848600848600
                8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
                C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
                000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
                000000000000848600FFFF000000000000000000000000000000000000000000
                000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
                00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
                D684860084860084860084860084860084860084860084860084860084860084
                8600848600CED3D60000}
              PopupBorder = pbFrame3D
              Height = 22
            end
            object dxDBEdit1: TdxDBEdit
              Left = 201
              Top = 54
              Width = 104
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
              TabStop = False
              AutoSize = False
              DataField = 'TOTAL_2'
              DataSource = DataSource
              ReadOnly = True
              Height = 22
              StoredValues = 64
            end
            object dxDBEdit4: TdxDBEdit
              Left = 307
              Top = 54
              Width = 104
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 5
              TabStop = False
              AutoSize = False
              DataField = 'Geral2'
              DataSource = DataSource
              ReadOnly = True
              Height = 22
              StoredValues = 64
            end
            object dxDBCalcEdit1: TdxDBCalcEdit
              Left = 91
              Top = 54
              Width = 109
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
              OnEnter = EdMargemEnter
              OnExit = EdMargemExit
              OnKeyDown = dxDBEdit1KeyDown
              AutoSize = False
              DataField = 'DESC_ACRESC_2'
              DataSource = DataSource
              ButtonGlyph.Data = {
                46020000424D460200000000000036000000280000000E0000000C0000000100
                1800000000001002000000000000000000000000000000000000CED3D6000000
                0000000000000000000000000000000000000000000000000000000000000000
                00CED3D600008486008486008400008400008400008400008400008400008400
                008400008400008400008400000000000000848600FFFFFF8486008486008486
                0084860084860084860084860084860084860084860084000000000000008486
                00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
                00008400000000000000848600FFFFFF84860084860084860084860084860084
                86008486008486008486008486008400000000000000848600FFFF0084860000
                0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
                0000848600FFFFFF848600848600848600848600848600848600848600848600
                8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
                C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
                000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
                000000000000848600FFFF000000000000000000000000000000000000000000
                000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
                00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
                D684860084860084860084860084860084860084860084860084860084860084
                8600848600CED3D60000}
              PopupBorder = pbFrame3D
              Height = 22
            end
            object dxDBEdit7: TdxDBEdit
              Left = 412
              Top = 54
              Width = 104
              Color = 91902
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 6
              TabStop = False
              AutoSize = False
              DataField = 'Liquido'
              DataSource = DataSource
              ReadOnly = True
              Height = 22
              StoredValues = 64
            end
          end
        end
      end
      object TAB2: TcxTabSheet
        Caption = 'Fechamento ( PgUp )'
        Enabled = False
        TabVisible = False
        OnEnter = TAB2Enter
        object Shape10: TShape
          Left = 287
          Top = 323
          Width = 115
          Height = 25
          Pen.Color = clBtnShadow
        end
        object Shape9: TShape
          Left = 287
          Top = 299
          Width = 115
          Height = 25
          Pen.Color = clBtnShadow
        end
        object Shape8: TShape
          Left = 287
          Top = 275
          Width = 115
          Height = 25
          Pen.Color = clBtnShadow
        end
        object DBCoolText2: TDBText
          Left = 320
          Top = 281
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'VLR_PARC_LC'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBCoolText3: TDBText
          Left = 320
          Top = 305
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'Liquido'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBCoolText4: TDBText
          Left = 320
          Top = 329
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'Diferenca'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object BtnForma: TcxButton
          Left = 285
          Top = 12
          Width = 22
          Height = 22
          Cursor = crHandPoint
          TabOrder = 11
          OnClick = BtnFormaClick
          Glyph.Data = {
            06030000424D06030000000000003600000028000000100000000F0000000100
            180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            0000000000000000000000000000000000000000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
            0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
            BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
            0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
            FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
            BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
            00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF}
        end
        object Label14: TcxLabel
          Left = 14
          Top = 16
          Caption = 'Forma Pagamento'
          ParentFont = False
          Transparent = True
        end
        object Label17: TcxLabel
          Left = 1
          Top = 40
          Caption = 'Desc/Acr'#233'sc Entrada'
          ParentFont = False
          Transparent = True
        end
        object Label34: TcxLabel
          Left = 65
          Top = 64
          Caption = 'Entrada'
          ParentFont = False
          Transparent = True
        end
        object Label29: TcxLabel
          Left = 24
          Top = 89
          Caption = 'Tipo Documento'
          ParentFont = False
          Transparent = True
        end
        object Label35: TcxLabel
          Left = 251
          Top = 92
          Caption = 'Local'
          ParentFont = False
          Transparent = True
        end
        object Label30: TcxLabel
          Left = 61
          Top = 139
          Caption = 'Parcelas'
          ParentFont = False
          Transparent = True
        end
        object Label31: TcxLabel
          Left = 199
          Top = 282
          Caption = 'Total Parcelas'
          ParentFont = False
          Transparent = True
        end
        object Label33: TcxLabel
          Left = 225
          Top = 329
          Caption = 'Diferen'#231'a'
          ParentFont = False
          Transparent = True
        end
        object Label32: TcxLabel
          Left = 196
          Top = 306
          Caption = 'Total Faturado'
          ParentFont = False
          Transparent = True
        end
        object Label15: TcxLabel
          Left = 221
          Top = 40
          Caption = 'Desc/Acr'#233'sc Sa'#237'da'
          ParentFont = False
          Transparent = True
        end
        object EdForma: TdxDBEdit
          Left = 108
          Top = 12
          Width = 46
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
          OnEnter = EdPessoaEnter
          OnExit = EdFormaExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'FORMA_PGTO'
          DataSource = DataSource
        end
        object dxDBEdit10: TdxDBEdit
          Left = 154
          Top = 12
          Width = 131
          Color = clMenu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          TabStop = False
          OnEnter = EdPessoaEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'NOME_FORMA'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object EdDesconto: TdxDBCalcEdit
          Left = 108
          Top = 36
          Width = 85
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
          OnEnter = EdPessoaEnter
          OnExit = EDENTRADAExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DESC_ACRESC'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
          PopupBorder = pbFrame3D
        end
        object EDENTRADA: TdxDBCalcEdit
          Left = 108
          Top = 61
          Width = 121
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
          OnEnter = EdPessoaEnter
          OnExit = EDENTRADAExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ENTRADA'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
          PopupBorder = pbFrame3D
        end
        object cmbTipoDocto: TdxDBLookupEdit
          Left = 108
          Top = 86
          Width = 121
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
          OnEnter = EdPessoaEnter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_DOCTO'
          DataSource = DataSource
          ClearKey = 8
          ListFieldName = 'NOME'
          KeyFieldName = 'SIGLA'
          ListSource = dsTipoDoctos
          LookupKeyValue = Null
        end
        object CmbLocal: TdxDBLookupEdit
          Left = 280
          Top = 86
          Width = 121
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 5
          OnEnter = EdPessoaEnter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'LOCAL_COBRANCA'
          DataSource = DataSource
          ClearKey = 8
          ListFieldName = 'NOME'
          KeyFieldName = 'CONTA'
          ListSource = DsPlano
          LookupKeyValue = Null
        end
        object GRIDFATURAMENTO: TDBGrid
          Left = 109
          Top = 114
          Width = 293
          Height = 156
          BorderStyle = bsNone
          Color = clScrollBar
          DataSource = DsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Options = [dgEditing, dgTitles, dgIndicator, dgRowLines, dgTabs, dgCancelOnExit]
          ParentFont = False
          TabOrder = 6
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = 8404992
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnEnter = GRIDFATURAMENTOEnter
          Columns = <
            item
              Expanded = False
              FieldName = 'VENCTO'
              Title.Caption = 'Vencimento'
              Width = 99
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'VALOR'
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARCELA'
              Width = 67
              Visible = True
            end>
        end
        object Panel4: TPanel
          Left = 589
          Top = 371
          Width = 193
          Height = 81
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 8
          object RzBitBtn1: TcxButton
            Left = 8
            Top = 46
            Width = 178
            Height = 26
            Action = ActEnviarCaixa
            TabOrder = 1
            Glyph.Data = {
              2A010000424D2A010000000000007600000028000000180000000F0000000100
              040000000000B4000000130B0000130B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888000008
              8888888800888888880FFF008888888000888888880FFF000888880008888888
              880FFF0008888000888888888800000008880008888888800080888008800088
              8888880F0008000008000888888880FFF0008880F0F0888888880FFFFF00080F
              0F088888888080FFF08080FFF0F008808888880F0808800FFF00888888888880
              00888080F0000808808888888888880800088888888888888888888000888888
              8888888888888888088888888888}
          end
          object dxDBCheckEdit1: TdxDBCheckEdit
            Left = 164
            Top = 48
            Width = 19
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.ButtonStyle = btsSimple
            TabOrder = 2
            TabStop = False
            DataField = 'ENVIADA_CX'
            DataSource = DataSource
            ReadOnly = True
            ValueChecked = 'S'
            ValueGrayed = 'N'
            ValueUnchecked = 'N'
            StoredValues = 64
          end
          object RzBitBtn2: TcxButton
            Left = 7
            Top = 10
            Width = 178
            Height = 26
            Action = ActPost
            Caption = 'Salvar Documento ( F10 )'
            TabOrder = 0
            Glyph.Data = {
              2A010000424D2A010000000000007600000028000000180000000F0000000100
              040000000000B4000000130B0000130B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888000008
              8888888800888888880FFF008888888000888888880FFF000888880008888888
              880FFF0008888000888888888800000008880008888888800080888008800088
              8888880F0008000008000888888880FFF0008880F0F0888888880FFFFF00080F
              0F088888888080FFF08080FFF0F008808888880F0808800FFF00888888888880
              00888080F0000808808888888888880800088888888888888888888000888888
              8888888888888888088888888888}
          end
        end
        object Panel5: TPanel
          Left = 589
          Top = 355
          Width = 193
          Height = 22
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 9
          object RxLabel2: TcxLabel
            Left = 8
            Top = 4
            Caption = 'Atualiza'#231#245'es'
            ParentFont = False
            Transparent = True
          end
        end
        object dxDBCalcEdit2: TdxDBCalcEdit
          Left = 316
          Top = 36
          Width = 85
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
          OnEnter = EdPessoaEnter
          OnExit = EDENTRADAExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DESC_ACRESC_2'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
          PopupBorder = pbFrame3D
        end
        object Panel6: TPanel
          Left = 450
          Top = 8
          Width = 330
          Height = 121
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 10
          object Label8: TcxLabel
            Left = 139
            Top = 2
            Caption = 'Total Lan'#231'ado'
            ParentFont = False
            Transparent = True
          end
          object Label16: TcxLabel
            Left = 242
            Top = 2
            Caption = 'Total Entradas'
            ParentFont = False
            Transparent = True
          end
          object Label18: TcxLabel
            Left = 47
            Top = 2
            Caption = 'Desc/Acr'#233's'
            ParentFont = False
            Transparent = True
          end
          object Label19: TcxLabel
            Left = 139
            Top = 38
            Caption = 'Total Lan'#231'ado'
            ParentFont = False
            Transparent = True
          end
          object Label20: TcxLabel
            Left = 254
            Top = 38
            Caption = 'Total Sa'#237'das'
            ParentFont = False
            Transparent = True
          end
          object Label21: TcxLabel
            Left = 47
            Top = 38
            Caption = 'Desc/Acr'#233's'
            ParentFont = False
            Transparent = True
          end
          object Label22: TcxLabel
            Left = 279
            Top = 77
            Caption = 'Liquido'
            ParentFont = False
            Transparent = True
          end
          object dxDBEdit11: TdxDBEdit
            Left = 114
            Top = 14
            Width = 104
            Enabled = False
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
            TabStop = False
            DataField = 'TOTAL'
            DataSource = DataSource
            ReadOnly = True
            StoredValues = 64
          end
          object dxDBEdit12: TdxDBEdit
            Left = 221
            Top = 14
            Width = 104
            Enabled = False
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
            TabStop = False
            DataField = 'Geral'
            DataSource = DataSource
            ReadOnly = True
            StoredValues = 64
          end
          object dxDBCalcEdit3: TdxDBCalcEdit
            Left = 4
            Top = 14
            Width = 109
            Enabled = False
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
            OnEnter = EdMargemEnter
            OnExit = EdMargemExit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'DESC_ACRESC'
            DataSource = DataSource
            ButtonGlyph.Data = {
              46020000424D460200000000000036000000280000000E0000000C0000000100
              1800000000001002000000000000000000000000000000000000CED3D6000000
              0000000000000000000000000000000000000000000000000000000000000000
              00CED3D600008486008486008400008400008400008400008400008400008400
              008400008400008400008400000000000000848600FFFFFF8486008486008486
              0084860084860084860084860084860084860084860084000000000000008486
              00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
              00008400000000000000848600FFFFFF84860084860084860084860084860084
              86008486008486008486008486008400000000000000848600FFFF0084860000
              0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
              0000848600FFFFFF848600848600848600848600848600848600848600848600
              8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
              C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
              000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
              000000000000848600FFFF000000000000000000000000000000000000000000
              000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
              00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
              D684860084860084860084860084860084860084860084860084860084860084
              8600848600CED3D60000}
            PopupBorder = pbFrame3D
          end
          object dxDBEdit13: TdxDBEdit
            Left = 114
            Top = 50
            Width = 104
            Enabled = False
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
            TabStop = False
            DataField = 'TOTAL_2'
            DataSource = DataSource
            ReadOnly = True
            StoredValues = 64
          end
          object dxDBEdit14: TdxDBEdit
            Left = 220
            Top = 50
            Width = 104
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 5
            TabStop = False
            DataField = 'Geral2'
            DataSource = DataSource
            ReadOnly = True
            StoredValues = 64
          end
          object dxDBCalcEdit4: TdxDBCalcEdit
            Left = 4
            Top = 50
            Width = 109
            Enabled = False
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
            OnEnter = EdMargemEnter
            OnExit = EdMargemExit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'DESC_ACRESC_2'
            DataSource = DataSource
            ButtonGlyph.Data = {
              46020000424D460200000000000036000000280000000E0000000C0000000100
              1800000000001002000000000000000000000000000000000000CED3D6000000
              0000000000000000000000000000000000000000000000000000000000000000
              00CED3D600008486008486008400008400008400008400008400008400008400
              008400008400008400008400000000000000848600FFFFFF8486008486008486
              0084860084860084860084860084860084860084860084000000000000008486
              00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
              00008400000000000000848600FFFFFF84860084860084860084860084860084
              86008486008486008486008486008400000000000000848600FFFF0084860000
              0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
              0000848600FFFFFF848600848600848600848600848600848600848600848600
              8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
              C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
              000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
              000000000000848600FFFF000000000000000000000000000000000000000000
              000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
              00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
              D684860084860084860084860084860084860084860084860084860084860084
              8600848600CED3D60000}
            PopupBorder = pbFrame3D
          end
          object dxDBEdit15: TdxDBEdit
            Left = 222
            Top = 90
            Width = 104
            Color = 91902
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 6
            TabStop = False
            DataField = 'Liquido'
            DataSource = DataSource
            ReadOnly = True
            StoredValues = 64
          end
        end
      end
    end
  end
  object Navigator: TdxBarDBNavigator
    BarManager = BarMgr
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 461
    Top = 7
  end
  object BarMgr: TdxBarManager
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
    Left = 493
    Top = 7
    DockControlHeights = (
      0
      0
      0
      0)
    object BarMgrBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 290
      FloatTop = 163
      FloatClientWidth = 23
      FloatClientHeight = 198
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
          ItemName = 'btnIncluir'
        end
        item
          Visible = True
          ItemName = 'btnAlterar'
        end
        item
          Visible = True
          ItemName = 'btnExcluir'
        end
        item
          Visible = True
          ItemName = 'BtnSalvar'
        end
        item
          Visible = True
          ItemName = 'BtnCancelar'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'btnFaturaTroca'
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
    object btnIncluir: TdxBarButton
      Action = ActIncluir
      Category = 0
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
    end
    object btnExcluir: TdxBarButton
      Action = ActExcluir
      Category = 0
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0080800000000000000000000000000000000000000000000000000000000080
        80008080008080000000008080008080008080000000FFFFFF7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080000000008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080000000008080000000008080008080
        000000000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000000
        00008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        0080800000007F7F7F0000007F7F7F0000007F7F7F0000007F7F7F0000000080
        8000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000008080008080
        000000FFFFFFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000
        0000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000008080008080
        0080800080800080800000007F7F7F7F7F7F7F7F7F0000000080800080800080
        8000808000808000000000808000808000808000808000808000000000000000
        0000000000000000008080008080008080008080008080000000}
    end
    object BtnSalvar: TdxBarButton
      Action = ActPost
      Category = 0
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F
        7F007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000007F7F007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBFBF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
    end
    object BtnCancelar: TdxBarButton
      Action = ActCancel
      Category = 0
      Enabled = False
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        1800000000004003000000000000000000000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        80000080800080800000FF0000FF0000FF0080800080807F7F7F0000007F7F7F
        0080800080800000FF0000FF0000FF0080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800080800080800000FF0000FF0000FF7F
        7F7F0000007F7F7F0000FF0000FF0000FF008080008080008080008080000080
        800080800080800080800080800000FF0000FF0000FF0080800000FF0000FF00
        00FF008080008080008080008080008080000080800080800080800080800080
        800080800000FF0000FF0000000000FF0000FF00808000808000808000808000
        8080008080000080800080800080800080800080800080800080800000800000
        0000008000808000808000808000808000808000808000808000008080008080
        0080800080800080800080800000FF0000800000000000800000FF0080800080
        80008080008080008080008080000080800080800080800080800080800000FF
        0000FF0000000000000000000000FF0000FF0080800080800080800080800080
        80000080800080800080800080800000FF0000FF0000FF000000000000000000
        0000FF0000FF0000FF0080800080800080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800000FF0000FF0000FF0080800080807F
        7F7F0000007F7F7F0080800080800000FF0000FF0000FF008080008080000080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080000080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080000080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000}
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
    object btnAlterar: TdxBarButton
      Action = ActAlterar
      Category = 0
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0080800080800080800080800000000000000000000000000000000000000000
        00000000000000000000008080008080008080008080008080008080000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        008080000000000000000000000000000000FFFFFFFFFFFF000000FFFFFF0000
        00000000FFFFFF000000FFFF0000000000000000FFFFFFFFFF00FFFFFFFFFF00
        FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00000000
        00FFFFFFFFFF00FFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFF000000FFFF00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF000000FFFFFF000000000000FFFFFFFFFFFF000000FFFF00000000
        00FFFFFFFFFF00FFFFFFFFFF00000000000000000000000000000000FFFF0000
        00FFFFFFFFFFFF000000FFFF00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFF00000000
        00FFFFFFFFFF000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000FFFFFFFFFF00FFFF00000000
        000000FFFF000000FFFFFFFFFFFF000000000000FFFFFF000000008080008080
        00808000000000000000000000000000FFFF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000808000808000808000808000808000000000FFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000008080008080
        00808000808000000000FFFF000000FFFFFFFFFFFF000000000000FFFFFF0000
        00FFFFFFFFFFFF00000000808000808000808000000000FFFF000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000008080008080008080
        0000000000FF000000008080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        0000000000808000808000808000808000808000000000808000808000000000
        0000000000000000000000000000000000008080008080008080}
    end
    object dxBarButton1: TdxBarButton
      Action = ActListagem
      Caption = 'Imprimir Troca ( F5 )'
      Category = 0
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000C30E0000C30E00000000000000000000BFBFBF000000
        000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF000000000000000000BFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
        0000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000FFFFFF
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C00000FF0000FFC0C0C0C0C0C00000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000080808000000000000080808080808080808080808080
        8080808080808080808080808080808080808080808080000000000000808080
        0000BFBFBFBFBFBF000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000BFBFBFBFBFBF0000BFBFBFBFBFBF
        000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000000000BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
        FF000000000000000000000000000000000000000000000000FFFFFF000000BF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000000000000000
        000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
        FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBF000000000000000000000000000000000000000000
        000000000000000000000000000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
      PaintStyle = psCaptionGlyph
    end
    object btnFaturaTroca: TdxBarButton
      Action = ActEnviarCaixa
      Category = 0
      Glyph.Data = {
        2A010000424D2A010000000000007600000028000000180000000F0000000100
        040000000000B400000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888000008
        8888888800888888880FFF008888888000888888880FFF000888880008888888
        880FFF0008888000888888888800000008880008888888800080888008800088
        8888880F0008000008000888888880FFF0008880F0F0888888880FFFFF00080F
        0F088888888080FFF08080FFF0F008808888880F0808800FFF00888888888880
        00888080F0000808808888888888880800088888888888888888888000888888
        8888888888888888088888888888}
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
  object Actions: TActionList
    Left = 561
    Top = 7
    object ActIncluir: TAction
      Tag = 1
      Caption = 'ActIncluir'
      Hint = 'Incluir um novo registro [Ins]'
      ShortCut = 45
      OnExecute = ActIncluirExecute
    end
    object ActAlterar: TAction
      Tag = 1
      Caption = 'ActAlterar'
      Hint = 'Incluir o registro selecionado [Enter]'
      ShortCut = 117
      OnExecute = ActAlterarExecute
    end
    object ActExcluir: TAction
      Tag = 1
      Caption = 'ActExcluir'
      Hint = 'Excluir o registro selecionado [Shift+Del]'
      ShortCut = 46
      OnExecute = ActExcluirExecute
    end
    object ActLocalizar: TAction
      Caption = 'ActLocalizar'
      Hint = 'Localizar registros [F3]'
      ShortCut = 114
    end
    object ActListagem: TAction
      Tag = 1
      Caption = 'ActListagem'
      Hint = 'Emitir listagem de '
      ShortCut = 116
      OnExecute = ActListagemExecute
    end
    object ActPost: TAction
      Caption = 'ActPost'
      Hint = 'Salvar informa'#231#245'es'
      ShortCut = 121
      OnExecute = ActPostExecute
    end
    object ActCancel: TAction
      Caption = 'ActCancel'
      Hint = 'Cancelar informa'#231#245'es'
      ShortCut = 27
      OnExecute = ActCancelExecute
    end
    object ActFechar: TAction
      Caption = '&Fechar  '
      OnExecute = ActFecharExecute
    end
    object actLookup: TAction
      Caption = 'actLookup'
      ShortCut = 115
      OnExecute = actLookupExecute
    end
    object ActNextPage: TAction
      Caption = 'ActNextPage'
      ShortCut = 33
      OnExecute = ActNextPageExecute
    end
    object ActPreviousPage: TAction
      Caption = 'ActPreviousPage'
      ShortCut = 34
      OnExecute = ActPreviousPageExecute
    end
    object ActLocalizarCliente: TAction
      Caption = 'ActLocalizarCliente'
      ShortCut = 16424
      OnExecute = ActLocalizarClienteExecute
    end
    object ActLocalizarVendedores: TAction
      Caption = 'Localizar Vendedor'
      OnExecute = ActLocalizarVendedoresExecute
    end
    object ActLocalizarForma: TAction
      Caption = 'Localizar Forma'
      OnExecute = ActLocalizarFormaExecute
    end
    object ActEnviarCaixa: TAction
      Tag = 1
      Caption = 'Enviar para o Caixa ( F9 )'
      ShortCut = 120
      OnExecute = ActEnviarCaixaExecute
    end
  end
  object dsParametros: TDataSource
    AutoEdit = False
    DataSet = DmVendas.Parametros
    Left = 83
    Top = 7
  end
  object dsPessoasFJ: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelPessoasFJ
    Left = 50
    Top = 7
  end
  object DataSource: TDataSource
    DataSet = DmVendas.Trocas
    OnStateChange = DataSourceStateChange
    OnUpdateData = DataSourceUpdateData
    Left = 179
    Top = 7
  end
  object DsVendedores: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelVendedor
    Left = 210
    Top = 7
  end
  object DsFormaPgto: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelFormaPgto
    Left = 114
    Top = 7
  end
  object DsItens: TDataSource
    AutoEdit = False
    DataSet = DmVendas.Trocas_Itens
    Left = 528
    Top = 7
  end
  object DsUnidades: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelUnidade
    Left = 146
    Top = 7
  end
  object DsParcelas: TDataSource
    DataSet = DmVendas.Trocas_Parc
    Left = 274
    Top = 7
  end
  object DsPlano: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelPlano
    Left = 240
    Top = 7
  end
  object dsTipoDoctos: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelTipoDocto
    Left = 306
    Top = 7
  end
end
