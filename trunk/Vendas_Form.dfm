object FrmVendas: TFrmVendas
  Left = 248
  Top = 98
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pedido'
  ClientHeight = 574
  ClientWidth = 932
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
    Width = 932
    Height = 574
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
    OnResize = pnlClientResize
    object Bevel1: TBevel
      Left = 2
      Top = 540
      Width = 928
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 542
      Width = 928
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 928
        Height = 26
        Align = dalTop
        BarManager = BarMgr
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 928
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object PC: TcxPageControl
      Left = 2
      Top = 49
      Width = 928
      Height = 491
      ActivePage = tabVenda
      Align = alClient
      HotTrack = True
      TabOrder = 1
      OnChange = PCChange
      ClientRectBottom = 487
      ClientRectLeft = 4
      ClientRectRight = 924
      ClientRectTop = 27
      object tabVenda: TcxTabSheet
        Caption = ' Dados '
        PopupMenu = FrmMain.Pop
        OnEnter = tabVendaEnter
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 920
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object IMG2: TImage
          Left = 719
          Top = 28
          Width = 41
          Height = 41
          Picture.Data = {
            07544269746D617066010000424D660100000000000076000000280000001400
            0000140000000100040000000000F00000000000000000000000100000000000
            0000000000000000800000800000008080008000000080008000808000008080
            8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF0088888888888888888888000088888111111111888888000088881BBBBBBB
            BB18888800008881BBBBBBBBBBB188880000881BBBBBBBBBBBBB1888000081BB
            BBBBBBBBBBBBB18800001BBBBBBBBBBBBBBBBB1800001BBBBBBBBBBBBBBBBB18
            00001BBBBBBBBBBBBBBBBB1800001BBBBBBBBBBBBBBBBB1800001BBBBBBBBBBB
            BBBBBB1800001BBBBBBBBBBBBBBBBB1800001BBBBBBBBBBBBBBBBB1800001BBB
            BBBBBBBBBBBBBB18000081BBBBBBBBBBBBBBB1880000881BBBBBBBBBBBBB1888
            00008881BBBBBBBBBBB18888000088881BBBBBBBBB1888880000888881111111
            118888880000888888888888888888880000}
          Stretch = True
          Transparent = True
          Visible = False
        end
        object IMG3: TImage
          Left = 719
          Top = 28
          Width = 41
          Height = 41
          Picture.Data = {
            07544269746D6170C6050000424DC60500000000000036040000280000001400
            0000140000000100080000000000900100000000000000000000000100000000
            000000000000000080000080000000808000800000008000800080800000C0C0
            C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
            E00000400000004020000040400000406000004080000040A0000040C0000040
            E00000600000006020000060400000606000006080000060A0000060C0000060
            E00000800000008020000080400000806000008080000080A0000080C0000080
            E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
            E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
            E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
            E00040000000400020004000400040006000400080004000A0004000C0004000
            E00040200000402020004020400040206000402080004020A0004020C0004020
            E00040400000404020004040400040406000404080004040A0004040C0004040
            E00040600000406020004060400040606000406080004060A0004060C0004060
            E00040800000408020004080400040806000408080004080A0004080C0004080
            E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
            E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
            E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
            E00080000000800020008000400080006000800080008000A0008000C0008000
            E00080200000802020008020400080206000802080008020A0008020C0008020
            E00080400000804020008040400080406000804080008040A0008040C0008040
            E00080600000806020008060400080606000806080008060A0008060C0008060
            E00080800000808020008080400080806000808080008080A0008080C0008080
            E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
            E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
            E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
            E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
            E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
            E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
            E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
            E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
            E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
            E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
            A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF00070707070707070707070707070707070707070707070707070E0E0E0E0E
            0E0E0E0E070707070707070707070E3939393939393939390E07070707070707
            070E39393939393939393939390E0707070707070E3939393939393939393939
            39390E070707070E3939393939393939393939393939390E07070E3939393939
            3939393939393939393939390E070E3939393939393939393939393939393939
            0E070E39393939393939393939393939393939390E070E393939393939393939
            39393939393939390E070E39393939393939393939393939393939390E070E39
            393939393939393939393939393939390E070E39393939393939393939393939
            393939390E070E39393939393939393939393939393939390E07070E39393939
            39393939393939393939390E070707070E393939393939393939393939390E07
            07070707070E39393939393939393939390E07070707070707070E3939393939
            393939390E070707070707070707070E0E0E0E0E0E0E0E0E0707070707070707
            070707070707070707070707070707070707}
          Stretch = True
          Transparent = True
          Visible = False
        end
        object Panel7: TPanel
          Left = 0
          Top = 1
          Width = 920
          Height = 180
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object IMG1: TImage
            Left = 732
            Top = 34
            Width = 41
            Height = 41
            Picture.Data = {
              07544269746D617066010000424D660100000000000076000000280000001400
              0000140000000100040000000000F00000000000000000000000100000000000
              0000000000000000800000800000008080008000000080008000808000008080
              8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
              FF00888888888888888888880000888881111111118888880000888819999999
              9918888800008881999999999991888800008819999999999999188800008199
              9999999999999188000019999999999999999918000019999999999999999918
              0000199999999999999999180000199999999999999999180000199999999999
              9999991800001999999999999999991800001999999999999999991800001999
              9999999999999918000081999999999999999188000088199999999999991888
              0000888199999999999188880000888819999999991888880000888881111111
              118888880000888888888888888888880000}
            Stretch = True
            Transparent = True
            Visible = False
          end
          object Label1: TcxLabel
            Left = 48
            Top = 26
            Caption = 'C'#243'digo'
            ParentFont = False
            Transparent = True
          end
          object Label42: TcxLabel
            Left = 390
            Top = 26
            Caption = 'Fat. Vinculado'
            ParentFont = False
            Transparent = True
          end
          object Label3: TcxLabel
            Left = 594
            Top = 26
            Caption = 'Data'
            ParentFont = False
            Transparent = True
          end
          object Label2: TcxLabel
            Left = 48
            Top = 51
            Caption = 'Cliente'
            ParentFont = False
            Transparent = True
          end
          object BtnPessoa: TcxButton
            Left = 376
            Top = 46
            Width = 20
            Height = 22
            Cursor = crHandPoint
            TabOrder = 26
            TabStop = False
            OnClick = BtnPessoaClick
            Glyph.Data = {
              06030000424D06030000000000003600000028000000100000000F0000000100
              180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
              FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
              FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
              FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
              0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
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
          object Label15: TcxLabel
            Left = 400
            Top = 50
            Caption = 'Propriedade'
            ParentFont = False
            Transparent = True
          end
          object Label4: TcxLabel
            Left = 24
            Top = 75
            Caption = 'Op. Interna'
            ParentFont = False
            Transparent = True
          end
          object LBLTERCEIROS: TcxLabel
            Left = 419
            Top = 100
            Caption = 'Terceiro'
            ParentFont = False
            Transparent = True
          end
          object BtnTerceiro: TcxButton
            Left = 718
            Top = 96
            Width = 20
            Height = 22
            Cursor = crHandPoint
            TabOrder = 30
            TabStop = False
            OnClick = BtnTerceiroClick
            Glyph.Data = {
              06030000424D06030000000000003600000028000000100000000F0000000100
              180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
              FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
              FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
              FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
              0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
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
          object btnNatureza: TcxButton
            Left = 376
            Top = 71
            Width = 20
            Height = 22
            Cursor = crHandPoint
            TabOrder = 31
            TabStop = False
            OnClick = btnNaturezaClick
            Glyph.Data = {
              06030000424D06030000000000003600000028000000100000000F0000000100
              180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
              FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
              FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
              FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
              0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
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
          object Label5: TcxLabel
            Left = 37
            Top = 100
            Caption = 'Vendedor'
            ParentFont = False
            Transparent = True
          end
          object Label16: TcxLabel
            Left = 433
            Top = 75
            Caption = 'Conv'
            ParentFont = False
            Transparent = True
          end
          object Label14: TcxLabel
            Left = 521
            Top = 75
            Caption = 'Tipo'
            ParentFont = False
            Transparent = True
          end
          object Label18: TcxLabel
            Left = 634
            Top = 75
            Caption = 'Local'
            ParentFont = False
            Transparent = True
          end
          object BtnVendedor: TcxButton
            Left = 376
            Top = 96
            Width = 20
            Height = 22
            Cursor = crHandPoint
            TabOrder = 36
            TabStop = False
            OnClick = BtnVendedorClick
            Glyph.Data = {
              06030000424D06030000000000003600000028000000100000000F0000000100
              180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
              FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
              FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
              FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
              0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
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
          object Label40: TcxLabel
            Left = 3
            Top = 142
            Caption = 'Local de entrega'
            ParentFont = False
            Transparent = True
          end
          object Label7: TcxLabel
            Left = 21
            Top = 127
            Caption = 'Observa'#231#227'o/'
            ParentFont = False
            Transparent = True
          end
          object EdDocumento: TdxDBEdit
            Left = 88
            Top = 20
            Width = 94
            Color = clMenu
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
            TabStop = False
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CODIGO'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object cbFrete: TdxDBCheckEdit
            Left = 189
            Top = 20
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
            Style.ButtonStyle = btsDefault
            Style.ButtonTransparence = ebtNone
            TabOrder = 1
            OnKeyDown = dxDBEdit1KeyDown
            Alignment = taRightJustify
            Caption = 'Fechada'
            DataField = 'FECHADA'
            DataSource = DataSource
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            StoredValues = 1
          end
          object dxDBEdit2: TdxDBEdit
            Left = 462
            Top = 20
            Width = 123
            Color = clMenu
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
            TabOrder = 2
            TabStop = False
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'ID_AGRUPADOR'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object EdDataNota: TdxDBDateEdit
            Left = 624
            Top = 20
            Width = 95
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
            TabOrder = 3
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
            Left = 88
            Top = 45
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
            TabOrder = 4
            OnEnter = EdPessoaEnter
            OnExit = EdPessoaExit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PESSOA_FJ'
            DataSource = DataSource
          end
          object dxDBEdit3: TdxDBEdit
            Left = 141
            Top = 45
            Width = 236
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
            TabOrder = 5
            TabStop = False
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'Nome'
            DataSource = DataSource
            ReadOnly = True
            StoredValues = 64
          end
          object EdPropriedade: TdxDBEdit
            Left = 462
            Top = 45
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
            OnEnter = EdPessoaEnter
            OnExit = EdPropriedadeExit
            OnKeyDown = EdPropriedadeKeyDown
            DataField = 'PROPRIEDADE'
            DataSource = DataSource
          end
          object CmbPropriedade: TdxDBEdit
            Left = 515
            Top = 45
            Width = 204
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
            Style.HotTrack = True
            TabOrder = 7
            TabStop = False
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'Nome_Propriedade'
            DataSource = DataSource
            ReadOnly = True
            StoredValues = 64
          end
          object EdNatureza: TdxDBEdit
            Left = 88
            Top = 70
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
            TabOrder = 8
            OnEnter = EdPessoaEnter
            OnExit = EdNaturezaExit
            OnKeyDown = EdPropriedadeKeyDown
            DataField = 'NATUREZA'
            DataSource = DataSource
          end
          object CmbNatureza: TdxDBEdit
            Left = 141
            Top = 70
            Width = 236
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
            Style.HotTrack = True
            TabOrder = 9
            TabStop = False
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'Nome_Natureza'
            DataSource = DataSource
            ReadOnly = True
            StoredValues = 64
          end
          object EdTerceiro: TdxDBEdit
            Left = 462
            Top = 95
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
            TabOrder = 15
            OnEnter = EdPessoaEnter
            OnExit = EdTerceiroExit
            OnKeyDown = EdPropriedadeKeyDown
            DataField = 'TERCEIRO'
            DataSource = DataSource
          end
          object CmbTerceiro: TdxDBEdit
            Left = 515
            Top = 95
            Width = 204
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
            Style.HotTrack = True
            TabOrder = 16
            TabStop = False
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOME_TERCEIRO'
            DataSource = DataSource
            ReadOnly = True
            StoredValues = 64
          end
          object dxDBEdit10: TdxDBEdit
            Left = 463
            Top = 70
            Width = 54
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
            Style.HotTrack = True
            TabOrder = 10
            TabStop = False
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CONVENIADO'
            DataSource = DataSource
            ReadOnly = True
            StoredValues = 64
          end
          object CmbTipo: TdxDBPickEdit
            Left = 544
            Top = 70
            Width = 86
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
            TabOrder = 11
            OnEnter = CmbTipoEnter
            OnExit = CmbTipoExit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TIPO_VENDA'
            DataSource = DataSource
            PopupBorder = pbFlat
            DropDownListStyle = True
            Items.Strings = (
              'Venda'
              'Condicional')
          end
          object EdLocal: TdxDBPickEdit
            Left = 662
            Top = 70
            Width = 57
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
            TabOrder = 12
            OnEnter = CmbTipoEnter
            OnExit = EdLocalExit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'LOCAL'
            DataSource = DataSource
            PopupBorder = pbFlat
            DropDownListStyle = True
            Items.Strings = (
              '1'
              '2')
          end
          object EdVendedor: TdxDBEdit
            Left = 88
            Top = 95
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
            TabOrder = 13
            OnEnter = EdPessoaEnter
            OnExit = EdVendedorExit
            OnKeyDown = EdPropriedadeKeyDown
            DataField = 'VENDEDOR'
            DataSource = DataSource
          end
          object cmbVendedor: TdxDBEdit
            Left = 141
            Top = 95
            Width = 236
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
            Style.HotTrack = True
            TabOrder = 14
            TabStop = False
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'Nome_Vendedor'
            DataSource = DataSource
            ReadOnly = True
            StoredValues = 64
          end
          object mmObservacao: TdxDBMemo
            Left = 88
            Top = 120
            Width = 631
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 17
            OnEnter = mmObservacaoEnter
            OnExit = mmObservacaoExit
            OnKeyDown = mmObservacaoKeyDown
            OnKeyPress = mmObservacaoKeyPress
            DataField = 'OBSERVACAO'
            DataSource = DataSource
            Height = 45
          end
          object Panel9: TPanel
            Left = 0
            Top = 165
            Width = 920
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
            TabOrder = 18
          end
          object Panel10: TPanel
            Left = 0
            Top = 0
            Width = 920
            Height = 15
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Pedido'
            Color = clAppWorkSpace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 19
          end
          object dxDBEdit12: TdxDBEdit
            Left = 270
            Top = 20
            Width = 35
            Color = clMenu
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
            TabOrder = 20
            TabStop = False
            OnKeyDown = dxDBEdit1KeyDown
            Alignment = taCenter
            DataField = 'GERA_FINANCEIRO'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 65
          end
          object dxDBEdit13: TdxDBEdit
            Left = 310
            Top = 20
            Width = 35
            Color = clMenu
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
            TabOrder = 21
            TabStop = False
            OnKeyDown = dxDBEdit1KeyDown
            Alignment = taCenter
            DataField = 'ES'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 65
          end
        end
        object Panel8: TPanel
          Left = 0
          Top = 417
          Width = 920
          Height = 43
          Align = alBottom
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 2
          object Panel3: TPanel
            Left = 256
            Top = 1
            Width = 505
            Height = 42
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
              Left = 228
              Top = -1
              Caption = 'Total Lan'#231'ado'
              ParentFont = False
              Transparent = True
            end
            object Label27: TcxLabel
              Left = 468
              Top = -1
              Caption = 'Total'
              ParentFont = False
              Transparent = True
            end
            object Label6: TcxLabel
              Left = 337
              Top = -1
              Caption = 'Desc/Acr'#233's'
              ParentFont = False
              Transparent = True
            end
            object Label13: TcxLabel
              Left = 106
              Top = 21
              Caption = 'Volume'
              ParentFont = False
              Transparent = True
            end
            object Label12: TcxLabel
              Left = 9
              Top = 21
              Caption = 'Peso'
              ParentFont = False
              Transparent = True
            end
            object RxLabel1: TcxLabel
              Left = 3
              Top = 3
              Caption = 'Totais da Venda'
              ParentFont = False
              Transparent = True
            end
            object dxDBEdit5: TdxDBEdit
              Left = 217
              Top = 15
              Width = 90
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
            object dxDBEdit8: TdxDBEdit
              Left = 407
              Top = 14
              Width = 90
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
              DataField = 'Total_Geral'
              DataSource = DataSource
              ReadOnly = True
              StoredValues = 64
            end
            object dxDBEdit1: TdxDBEdit
              Left = 312
              Top = 14
              Width = 90
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
              TabStop = False
              DataField = 'DESC_ACRES'
              DataSource = DataSource
              ReadOnly = True
              StoredValues = 64
            end
          end
        end
        object GridItens: TcxGrid
          Left = 0
          Top = 181
          Width = 920
          Height = 236
          Align = alClient
          TabOrder = 1
          OnEnter = GridItensEnter
          object GridItensTV: TcxGridDBBandedTableView
            OnKeyDown = GridItensTVKeyDown
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = DsItens
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsBehavior.IncSearch = True
            OptionsData.CancelOnExit = False
            OptionsData.Deleting = False
            OptionsData.DeletingConfirmation = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsSelection.MultiSelect = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.GroupFooters = gfAlwaysVisible
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
            object GridItensTVPRC_UNIT_ORIGINAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRC_UNIT_ORIGINAL'
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object GridItensTVPRC_UNITARIO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRC_UNITARIO'
              Width = 88
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object GridItensTVCNPJ: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CNPJ'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object GridItensTVCODIGO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CODIGO'
              Width = 45
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object GridItensTVQUANTIDADE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QUANTIDADE'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object GridItensTVPRC_CUSTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRC_CUSTO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object GridItensTVICM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ICM'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object GridItensTVICM_SUBS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ICM_SUBS'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object GridItensTVIPI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'IPI'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object GridItensTVTotal: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Total'
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object GridItensTVPeso_Total: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Peso_Total'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object GridItensTVVOLUME: TcxGridDBBandedColumn
              DataBinding.FieldName = 'VOLUME'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object GridItensTVPESO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PESO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object GridItensTVVolume_Total: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Volume_Total'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object GridItensTVDESCONTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DESCONTO'
              Width = 71
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object GridItensTVPORC_DESC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PORC_DESC'
              Visible = False
              Width = 75
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object GridItensTVUNIDADE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UNIDADE'
              Visible = False
              Width = 50
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object GridItensTVSEQUENCIA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SEQUENCIA'
              Width = 64
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object GridItensTVNOME_PRODUTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_PRODUTO'
              Width = 215
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object GridItensTVALIQUOTA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ALIQUOTA'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object GridItensTVPRODUTOFIS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRODUTOFIS'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object GridItensTVNOME_FIS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_FIS'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object GridItensTVSUBUNIDADE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SUBUNIDADE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object GridItensTVORIGEM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ORIGEM'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object GridItensTVCTE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CTE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object GridItensTVCTIE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CTIE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object GridItensTVREDUCAO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'REDUCAO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object GridItensTVFRACIONADO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'FRACIONADO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object GridItensTVVENDEDOR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'VENDEDOR'
              Position.BandIndex = 0
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object GridItensTVMENSAGEM_REDUCAO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MENSAGEM_REDUCAO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object GridItensTVBASECALCULOICM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BASECALCULOICM'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object GridItensTVBASECALCULOSUBSTITUICAO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BASECALCULOSUBSTITUICAO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 32
              Position.RowIndex = 0
            end
            object GridItensTVALIQUOTA_EST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ALIQUOTA_EST'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 33
              Position.RowIndex = 0
            end
            object GridItensTVALIQUOTA_INT: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ALIQUOTA_INT'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 34
              Position.RowIndex = 0
            end
            object GridItensTVCFOP: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CFOP'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 35
              Position.RowIndex = 0
            end
            object GridItensTVCOMPLEMENTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COMPLEMENTO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 36
              Position.RowIndex = 0
            end
            object GridItensTVSERVICO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SERVICO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 37
              Position.RowIndex = 0
            end
            object GridItensTVNUMERO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NUMERO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 38
              Position.RowIndex = 0
            end
            object GridItensTVGRADE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'GRADE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 39
              Position.RowIndex = 0
            end
            object GridItensTVPRC_UNITARIO_FIS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRC_UNITARIO_FIS'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 40
              Position.RowIndex = 0
            end
            object GridItensTVQUANTIDADE_FIS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QUANTIDADE_FIS'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 41
              Position.RowIndex = 0
            end
            object GridItensTVTOTAL_FISCAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TOTAL_FISCAL'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 42
              Position.RowIndex = 0
            end
            object GridItensTVLOTE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'LOTE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 43
              Position.RowIndex = 0
            end
            object GridItensTVCODIGO_LOTE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CODIGO_LOTE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 44
              Position.RowIndex = 0
            end
            object GridItensTVUTILIZA_LOTE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UTILIZA_LOTE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 45
              Position.RowIndex = 0
            end
            object GridItensTVGRADE1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'GRADE1'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 46
              Position.RowIndex = 0
            end
            object GridItensTVNOME_COR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_COR'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 47
              Position.RowIndex = 0
            end
            object GridItensTVNOME_MATERIAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_MATERIAL'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 48
              Position.RowIndex = 0
            end
            object GridItensTVNOME_PERFIL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_PERFIL'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 49
              Position.RowIndex = 0
            end
            object GridItensTVPRD_SERVICO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_SERVICO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueChecked = 'S'
              Properties.ValueUnchecked = 'N'
              Width = 40
              Position.BandIndex = 0
              Position.ColIndex = 50
              Position.RowIndex = 0
            end
            object GridItensTVPRODUTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRODUTO'
              Width = 73
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object GridItensTVSPRODUTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SPRODUTO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 51
              Position.RowIndex = 0
            end
          end
          object GridItensLV: TcxGridLevel
            GridView = GridItensTV
          end
        end
      end
      object TabTransporte: TcxTabSheet
        Caption = 'Transporte'
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 920
          Height = 193
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label48: TcxLabel
            Left = 206
            Top = 57
            Caption = 'Frete por Conta'
            ParentFont = False
            Transparent = True
          end
          object Label44: TcxLabel
            Left = 8
            Top = 20
            Caption = 'Transportadora'
            ParentFont = False
            Transparent = True
          end
          object Label51: TcxLabel
            Left = 461
            Top = 57
            Caption = 'Especie'
            ParentFont = False
            Transparent = True
          end
          object Label52: TcxLabel
            Left = 364
            Top = 56
            Caption = 'Quantidade'
            ParentFont = False
            Transparent = True
          end
          object Label53: TcxLabel
            Left = 324
            Top = 96
            Caption = 'Peso L'#237'quido'
            ParentFont = False
            Transparent = True
          end
          object Label54: TcxLabel
            Left = 472
            Top = 96
            Caption = 'Peso Bruto'
            ParentFont = False
            Transparent = True
          end
          object Label50: TcxLabel
            Left = 8
            Top = 98
            Caption = 'Marca'
            ParentFont = False
            Transparent = True
          end
          object Label55: TcxLabel
            Left = 528
            Top = 59
            Caption = 'N'#250'mero'
            ParentFont = False
            Transparent = True
          end
          object Label37: TcxLabel
            Left = 321
            Top = 19
            Caption = 'Motorista'
            ParentFont = False
            Transparent = True
          end
          object Label58: TcxLabel
            Left = 8
            Top = 139
            Caption = 'Placa'
            ParentFont = False
            Transparent = True
          end
          object Label59: TcxLabel
            Left = 451
            Top = 138
            Caption = 'UF'
            ParentFont = False
            Transparent = True
          end
          object Label68: TcxLabel
            Left = 104
            Top = 138
            Caption = 'Cidade'
            ParentFont = False
            Transparent = True
          end
          object Label60: TcxLabel
            Left = 8
            Top = 57
            Caption = 'CPF/CNPJ'
            ParentFont = False
            Transparent = True
          end
          object EdTransportadora: TdxDBLookupEdit
            Left = 8
            Top = 33
            Width = 307
            Color = clWhite
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
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'TRANSPORTADORA'
            DataSource = DataSource
            OnChange = EdTransportadoraChange
            ClearKey = 8
            ListFieldName = 'NOME'
            KeyFieldName = 'CODIGO'
            ListSource = DsTransportadora
            LookupKeyValue = Null
            Height = 24
          end
          object dxDBEdit7: TdxDBEdit
            Left = 460
            Top = 71
            Width = 65
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
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRP_ESPECIE'
            DataSource = DataSource
          end
          object dxDBCalcEdit2: TdxDBCalcEdit
            Left = 362
            Top = 71
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
            TabOrder = 4
            OnEnter = EdPessoaEnter
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'TRP_QTDE'
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
            Height = 26
          end
          object dxDBCalcEdit3: TdxDBCalcEdit
            Left = 321
            Top = 111
            Width = 144
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
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRP_PESO_LIQUIDO'
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
          object dxDBCalcEdit4: TdxDBCalcEdit
            Left = 470
            Top = 111
            Width = 137
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
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRP_PESO_BRUTO'
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
          object cmbMarca: TdxDBLookupEdit
            Left = 8
            Top = 111
            Width = 305
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
            Style.HotTrack = False
            Style.Shadow = False
            TabOrder = 7
            OnEnter = EdPessoaEnter
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRP_MARCA'
            DataSource = DataSource
            ReadOnly = False
            ClearKey = 46
            ListFieldName = 'NOME'
            CanDeleteText = True
            Revertable = True
            KeyFieldName = 'CODIGO'
            ListSource = dsMarcas
            LookupKeyValue = Null
            StoredValues = 64
          end
          object dxDBEdit6: TdxDBEdit
            Left = 526
            Top = 71
            Width = 83
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
            OnEnter = EdPessoaEnter
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRP_NUMERO'
            DataSource = DataSource
          end
          object dxDBEdit9: TdxDBEdit
            Left = 319
            Top = 33
            Width = 290
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
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            CharCase = ecUpperCase
            DataField = 'TRP_NOME'
            DataSource = DataSource
            Height = 24
          end
          object Panel5: TPanel
            Left = -2
            Top = 0
            Width = 611
            Height = 15
            BevelOuter = bvNone
            Caption = 'Transportador / Volumes Transportados'
            Color = clAppWorkSpace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
          end
          object edPlaca: TdxDBMaskEdit
            Left = 8
            Top = 153
            Width = 94
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 10
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PLACA'
            DataSource = DataSource
            EditMask = '!LLL-9999;1;_'
            IgnoreMaskBlank = False
            StoredValues = 4
          end
          object edUF: TdxDBEdit
            Left = 449
            Top = 152
            Width = 32
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.HotTrack = False
            TabOrder = 12
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'UF_PLACA'
            DataSource = DataSource
          end
          object dxDBEdit14: TdxDBEdit
            Left = 103
            Top = 153
            Width = 346
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 11
            OnEnter = EdPessoaEnter
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            CharCase = ecUpperCase
            DataField = 'TRP_CIDADE'
            DataSource = DataSource
            Height = 24
          end
          object dxDBEdit15: TdxDBEdit
            Left = 8
            Top = 72
            Width = 196
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
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            CharCase = ecUpperCase
            DataField = 'TRP_CPF_CNPJ'
            DataSource = DataSource
            Height = 24
          end
          object edFreteConta: TcxDBComboBox
            Left = 209
            Top = 73
            DataBinding.DataField = 'PGTO_FRETE'
            DataBinding.DataSource = DataSource
            Enabled = False
            ParentFont = False
            Properties.Items.Strings = (
              '1 - CIF  (Emitente)'
              '2 - FOB(Destinat'#225'rio)')
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.LookAndFeel.Kind = lfFlat
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.Kind = lfFlat
            StyleFocused.LookAndFeel.Kind = lfFlat
            StyleHot.LookAndFeel.Kind = lfFlat
            TabOrder = 3
            OnEnter = EdPessoaEnter
            OnExit = edObservacoesExit
            OnKeyDown = edFreteContaKeyDown
            Width = 149
          end
        end
      end
      object TabImpostos: TcxTabSheet
        Caption = 'Impostos'
        object PNIMPOSTOS: TPanel
          Left = 0
          Top = 0
          Width = 920
          Height = 345
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label10: TcxLabel
            Left = 9
            Top = 103
            Caption = 'Base ICMS'
            ParentFont = False
            Transparent = True
          end
          object Label11: TcxLabel
            Left = 131
            Top = 103
            Caption = 'Valor ICMS'
            ParentFont = False
            Transparent = True
          end
          object Label19: TcxLabel
            Left = 253
            Top = 103
            Caption = 'Base ICMS Sub.'
            ParentFont = False
            Transparent = True
          end
          object Label20: TcxLabel
            Left = 375
            Top = 103
            Caption = 'Valor ICMS Sub.'
            ParentFont = False
            Transparent = True
          end
          object Label21: TcxLabel
            Left = 497
            Top = 103
            Caption = 'Valor Produtos'
            ParentFont = False
            Transparent = True
          end
          object Label23: TcxLabel
            Left = 131
            Top = 147
            Caption = 'Valor Seguro'
            ParentFont = False
            Transparent = True
          end
          object Label24: TcxLabel
            Left = 253
            Top = 147
            Caption = 'Valor Despesas'
            ParentFont = False
            Transparent = True
          end
          object Label26: TcxLabel
            Left = 375
            Top = 147
            Caption = 'IPI'
            ParentFont = False
            Transparent = True
          end
          object Label36: TcxLabel
            Left = 497
            Top = 147
            Caption = 'Total Nota'
            ParentFont = False
            Transparent = True
          end
          object Label22: TcxLabel
            Left = 9
            Top = 147
            Caption = 'Valor Frete'
            ParentFont = False
            Transparent = True
          end
          object Label62: TcxLabel
            Left = 9
            Top = 24
            Caption = 'ISS'
            ParentFont = False
            Transparent = True
          end
          object Label63: TcxLabel
            Left = 131
            Top = 24
            Caption = 'IRRF'
            ParentFont = False
            Transparent = True
          end
          object Label64: TcxLabel
            Left = 253
            Top = 24
            Caption = 'INSS'
            ParentFont = False
            Transparent = True
          end
          object Label65: TcxLabel
            Left = 376
            Top = 24
            Caption = 'PIS/COFINS/CSLL'
            ParentFont = False
            Transparent = True
          end
          object dxDBCalcEdit11: TdxDBCalcEdit
            Left = 497
            Top = 159
            Width = 123
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 13
            OnEnter = EdPessoaEnter
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'TOTAL_NOTA'
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
            Height = 25
          end
          object EDIPI: TdxDBCalcEdit
            Left = 375
            Top = 159
            Width = 123
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 12
            OnEnter = EdPessoaEnter
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'IPI'
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
            Height = 25
          end
          object EDDESPESAS: TdxDBCalcEdit
            Left = 253
            Top = 159
            Width = 123
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 11
            OnEnter = EdPessoaEnter
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'DESPESAS'
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
            Height = 25
          end
          object EDSEGURO: TdxDBCalcEdit
            Left = 131
            Top = 159
            Width = 123
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 10
            OnEnter = EdPessoaEnter
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'SEGURO'
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
            Height = 25
          end
          object EDFRETE: TdxDBCalcEdit
            Left = 9
            Top = 159
            Width = 123
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
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'FRETE'
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
            Height = 25
          end
          object EDBASEICMS: TdxDBCalcEdit
            Left = 9
            Top = 119
            Width = 123
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
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'BASE_ICM'
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
            Height = 25
          end
          object EDICMS: TdxDBCalcEdit
            Left = 131
            Top = 119
            Width = 123
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
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'ICM'
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
            Height = 25
          end
          object EDBASEICMSSUBST: TdxDBCalcEdit
            Left = 253
            Top = 119
            Width = 123
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
            OnEnter = EdPessoaEnter
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'BASE_ICM_SUBST'
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
            Height = 25
          end
          object EDICMSSUBST: TdxDBCalcEdit
            Left = 375
            Top = 119
            Width = 123
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
            OnEnter = EdPessoaEnter
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'VALOR_ICM_SUBST'
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
            Height = 25
          end
          object dxDBCalcEdit6: TdxDBCalcEdit
            Left = 497
            Top = 119
            Width = 123
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 8
            OnEnter = EdPessoaEnter
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'TOTAL'
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
            Height = 25
          end
          object Panel4: TPanel
            Left = -1
            Top = 79
            Width = 622
            Height = 15
            BevelOuter = bvNone
            Caption = 'C'#225'lculo do Imposto'
            Color = clAppWorkSpace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 14
          end
          object Panel13: TPanel
            Left = -1
            Top = 2
            Width = 622
            Height = 15
            BevelOuter = bvNone
            Caption = 'Servi'#231'o'
            Color = clAppWorkSpace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 15
          end
          object dxDBCalcEdit7: TdxDBCalcEdit
            Left = 9
            Top = 40
            Width = 123
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
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'ISS'
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
            Height = 25
          end
          object dxDBCalcEdit8: TdxDBCalcEdit
            Left = 131
            Top = 40
            Width = 123
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
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'IRRF'
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
            Height = 25
          end
          object dxDBCalcEdit9: TdxDBCalcEdit
            Left = 253
            Top = 40
            Width = 123
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
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'INSS'
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
            Height = 25
          end
          object dxDBCalcEdit10: TdxDBCalcEdit
            Left = 376
            Top = 40
            Width = 123
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
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
            AutoSize = False
            DataField = 'PIS_COFINS_CSLL'
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
            Height = 25
          end
          object DBCheckBox1: TDBCheckBox
            Left = 510
            Top = 47
            Width = 95
            Height = 17
            Caption = 'Sub. Tribut'#225'rio'
            DataField = 'CLI_SUB_TRIBUTARIO'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 16
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnEnter = EdPessoaEnter
            OnExit = edObservacoesExit
            OnKeyDown = dxDBEdit1KeyDown
          end
        end
      end
      object TabFaturamento: TcxTabSheet
        Caption = '  Fechamento  '
        OnEnter = TabFaturamentoEnter
        object Shape2: TShape
          Left = 3
          Top = -20
          Width = 417
          Height = 342
          Pen.Color = clBtnShadow
        end
        object Shape3: TShape
          Left = 0
          Top = 0
          Width = 920
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object Label29: TcxLabel
          Left = 243
          Top = 137
          Caption = 'Tipo Doc.'
          ParentFont = False
          Transparent = True
        end
        object Label30: TcxLabel
          Left = 76
          Top = 232
          Caption = 'Parcelas'
          ParentFont = False
          Transparent = True
        end
        object Label8: TcxLabel
          Left = 29
          Top = 62
          Caption = 'Forma Pagamento'
          ParentFont = False
          Transparent = True
        end
        object BtnForma: TcxButton
          Left = 299
          Top = 59
          Width = 25
          Height = 22
          Cursor = crHandPoint
          TabOrder = 20
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
        object Label17: TcxLabel
          Left = 25
          Top = 111
          Caption = 'Desc./Acr'#233'sc. (R$)'
          ParentFont = False
          Transparent = True
        end
        object Label34: TcxLabel
          Left = 74
          Top = 134
          Caption = 'Entrada'
          ParentFont = False
          Transparent = True
        end
        object Label35: TcxLabel
          Left = 42
          Top = 159
          Caption = 'Conta Corrente'
          ParentFont = False
          Transparent = True
        end
        object Label9: TcxLabel
          Left = 328
          Top = 63
          Caption = '%'
          ParentFont = False
          Transparent = True
        end
        object Label45: TcxLabel
          Left = 18
          Top = 11
          Caption = 'Or'#231'amento'
          ParentFont = False
          Transparent = True
        end
        object Label28: TcxLabel
          Left = 255
          Top = 111
          Caption = 'Com(%)'
          ParentFont = False
          Transparent = True
        end
        object Label38: TcxLabel
          Left = 75
          Top = 40
          Caption = 'Hist'#243'rico'
          ParentFont = False
          Transparent = True
        end
        object BTNCENTRO: TcxButton
          Left = 392
          Top = 83
          Width = 23
          Height = 22
          Cursor = crHandPoint
          Enabled = False
          TabOrder = 28
          OnClick = BTNCENTROClick
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
        object Label56: TcxLabel
          Left = 39
          Top = 87
          Caption = 'Centro de Custo'
          ParentFont = False
          Transparent = True
        end
        object Label57: TcxLabel
          Left = 9
          Top = 211
          Caption = 'Dt. Base Parcelamento'
          ParentFont = False
          Transparent = True
        end
        object cmbTipoDocto: TdxDBLookupEdit
          Left = 294
          Top = 132
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
          TabOrder = 10
          OnEnter = EdPessoaEnter
          OnExit = edObservacoesExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_DOCTO'
          DataSource = DataSource
          ClearKey = 8
          ListFieldName = 'NOME'
          KeyFieldName = 'SIGLA'
          ListSource = dsTipoDoctos
          LookupKeyValue = Null
        end
        object EdDesconto: TdxDBCalcEdit
          Left = 123
          Top = 107
          Width = 121
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
          OnEnter = EdPessoaEnter
          OnExit = EdDescontoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DESC_ACRES'
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
        object cmbContaCorrente: TdxDBLookupEdit
          Left = 123
          Top = 156
          Width = 292
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
          TabOrder = 11
          OnEnter = EdPessoaEnter
          OnExit = edObservacoesExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'LOCAL_COBRANCA'
          DataSource = DataSource
          ClearKey = 8
          ListFieldName = 'NOME'
          KeyFieldName = 'CONTA'
          ListSource = dsPlano
          LookupKeyValue = Null
        end
        object edObservacoes: TdxDBMemo
          Left = 123
          Top = 8
          Width = 293
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          OnEnter = EdPessoaEnter
          OnExit = edObservacoesExit
          OnKeyDown = dxDBEdit1KeyDown
          OnKeyPress = edObservacoesKeyPress
          DataField = 'DESCRICAO'
          DataSource = DataSource
          Height = 24
        end
        object EdForma: TdxDBEdit
          Left = 123
          Top = 58
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
          TabOrder = 3
          OnEnter = EdPessoaEnter
          OnExit = EdFormaExit
          OnKeyDown = EdPropriedadeKeyDown
          DataField = 'FORMA_PGTO'
          DataSource = DataSource
        end
        object dxDBEdit4: TdxDBEdit
          Left = 169
          Top = 58
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
          TabOrder = 4
          TabStop = False
          OnEnter = EdPessoaEnter
          OnExit = edObservacoesExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'NOME_FORMA'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object EDENTRADA: TdxDBCalcEdit
          Left = 123
          Top = 132
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
          TabOrder = 9
          OnEnter = EdPessoaEnter
          OnExit = EdDescontoExit
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
        object EdOrcamento: TdxDBEdit
          Left = 73
          Top = 8
          Width = 50
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
          OnExit = edObservacoesExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ORCAMENTO'
          DataSource = DataSource
        end
        object GRIDFATURAMENTO: TDBGrid
          Left = 123
          Top = 232
          Width = 290
          Height = 112
          DataSource = DsParcelas
          FixedColor = 13299927
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgRowLines, dgTabs, dgCancelOnExit]
          ParentFont = False
          TabOrder = 15
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = 8404992
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnEnter = GRIDFATURAMENTO_Enter
          OnExit = GRIDFATURAMENTO_Exit
          Columns = <
            item
              Expanded = False
              FieldName = 'VENCTO'
              Title.Caption = 'Vencimento'
              Width = 66
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'VALOR'
              Width = 105
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARCELA'
              Width = 45
              Visible = True
            end>
        end
        object ckEntregaFutura: TDBCheckBox
          Left = 292
          Top = 208
          Width = 109
          Height = 17
          Caption = 'Controla Entrega'
          DataField = 'ENTREGA_FUTURA'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          OnEnter = EdPessoaEnter
          OnExit = edObservacoesExit
          OnKeyDown = dxDBEdit1KeyDown
        end
        object Panel11: TPanel
          Left = 3
          Top = 348
          Width = 419
          Height = 118
          BevelInner = bvSpace
          BevelOuter = bvLowered
          TabOrder = 16
          object Shape9: TShape
            Left = 301
            Top = 45
            Width = 115
            Height = 21
            Pen.Color = clBtnShadow
          end
          object Shape8: TShape
            Left = 301
            Top = 22
            Width = 115
            Height = 21
            Pen.Color = clBtnShadow
          end
          object Shape14: TShape
            Left = 101
            Top = 91
            Width = 115
            Height = 21
            Pen.Color = clBtnShadow
            Visible = False
          end
          object Shape11: TShape
            Left = 101
            Top = 68
            Width = 115
            Height = 21
            Pen.Color = clBtnShadow
          end
          object Shape13: TShape
            Left = 101
            Top = 45
            Width = 115
            Height = 21
            Pen.Color = clBtnShadow
          end
          object Shape12: TShape
            Left = 101
            Top = 22
            Width = 115
            Height = 21
            Pen.Color = clBtnShadow
          end
          object DBCoolText6: TDBText
            Left = 130
            Top = 25
            Width = 72
            Height = 13
            Alignment = taRightJustify
            AutoSize = True
            DataField = 'DESCONTOS_CONCEDIDOS'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DBCoolText2: TDBText
            Left = 337
            Top = 25
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
          object DBCoolText5: TDBText
            Left = 130
            Top = 72
            Width = 72
            Height = 13
            Alignment = taRightJustify
            AutoSize = True
            DataField = 'Total_Geral'
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
            Left = 337
            Top = 49
            Width = 72
            Height = 13
            Alignment = taRightJustify
            AutoSize = True
            DataField = 'TOTAL'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Shape10: TShape
            Left = 301
            Top = 68
            Width = 115
            Height = 21
            Pen.Color = clBtnShadow
            Visible = False
          end
          object DBCoolText4: TDBText
            Left = 337
            Top = 72
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
            Visible = False
          end
          object Shape5: TShape
            Left = 301
            Top = 91
            Width = 115
            Height = 21
            Pen.Color = clBtnShadow
            Visible = False
          end
          object DBCoolText1: TDBText
            Left = 337
            Top = 95
            Width = 72
            Height = 13
            Alignment = taRightJustify
            AutoSize = True
            DataField = 'DESC_ACRES'
            DataSource = DataSource
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object Label43: TcxLabel
            Left = 13
            Top = 25
            Caption = 'Desc. Produtos'
            ParentFont = False
            Transparent = True
          end
          object Label31: TcxLabel
            Left = 219
            Top = 25
            Caption = 'Total Parcelas'
            ParentFont = False
            Transparent = True
          end
          object lblDescto: TcxLabel
            Left = 150
            Top = 48
            Caption = 'Desconto'
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label46: TcxLabel
            Left = 12
            Top = 49
            Caption = 'Desc. Restante'
            ParentFont = False
            Transparent = True
          end
          object Label41: TcxLabel
            Left = 57
            Top = 72
            Caption = 'L'#237'quido'
            ParentFont = False
            Transparent = True
          end
          object Label32: TcxLabel
            Left = 216
            Top = 49
            Caption = 'Total Faturado'
            ParentFont = False
            Transparent = True
          end
          object Label33: TcxLabel
            Left = 245
            Top = 72
            Caption = 'Diferen'#231'a'
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object Label39: TcxLabel
            Left = 225
            Top = 95
            Caption = 'Desc./Acr'#233'sc'
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object lblTributo: TcxLabel
            Left = 162
            Top = 94
            Caption = 'Tributo'
            ParentColor = False
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object Label47: TcxLabel
            Left = 3
            Top = 95
            Caption = 'Trib. Retidos(%)'
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object Panel12: TPanel
            Left = 2
            Top = 2
            Width = 415
            Height = 15
            Align = alTop
            BevelOuter = bvNone
            Caption = 'Totalizadores'
            Color = clAppWorkSpace
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
        end
        object dxDBCalcEdit5: TdxDBCalcEdit
          Left = 294
          Top = 107
          Width = 122
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
          OnExit = EdDescontoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PCT_COMISSAO'
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
        object dxDBEdit11: TdxDBEdit
          Left = 123
          Top = 33
          Width = 294
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
          OnExit = edObservacoesExit
          OnKeyDown = EdPropriedadeKeyDown
          DataField = 'HISTORICO'
          DataSource = DataSource
        end
        object cmbcentro: TdxDBLookupEdit
          Left = 123
          Top = 82
          Width = 270
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
          TabOrder = 6
          OnEnter = EdPessoaEnter
          OnExit = edObservacoesExit
          OnKeyDown = EdPropriedadeKeyDown
          DataField = 'CENTRO_CUSTO'
          DataSource = DataSource
          ClearKey = 46
          ListFieldName = 'NOME'
          KeyFieldName = 'CODIGO'
          ListSource = DsCentro
          LookupKeyValue = Null
        end
        object edtDataBase: TdxDBDateEdit
          Left = 123
          Top = 205
          Width = 121
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 13
          OnEnter = EdPessoaEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DT_PREV_ENTREGA'
          DataSource = DataSource
          DateValidation = True
          UseEditMask = True
          StoredValues = 4
        end
        object EdPorcentagem: TcxCurrencyEdit
          Left = 346
          Top = 57
          ParentFont = False
          Properties.DisplayFormat = '###,##0.00;(###,##0.00)'
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          OnEnter = EdPessoaEnter
          OnExit = EdPorcentagemExit
          OnKeyDown = dxDBEdit1KeyDown
          Width = 70
        end
        object cmbContrato: TdxDBLookupEdit
          Left = 123
          Top = 180
          Width = 292
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
          TabOrder = 12
          OnEnter = EdPessoaEnter
          OnExit = edObservacoesExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'COD_CONTRATO'
          DataSource = DataSource
          ClearKey = 8
          ListFieldName = 'DESCRICAO'
          KeyFieldName = 'CODIGO'
          ListSource = dsContrato
          LookupKeyValue = Null
        end
        object cxLabel1: TcxLabel
          Left = 73
          Top = 183
          Caption = 'Contrato'
          ParentFont = False
          Transparent = True
        end
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 2
      Width = 928
      Height = 47
      Align = alTop
      BevelOuter = bvNone
      Color = clWindow
      TabOrder = 2
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
      object b2: TBevel
        Left = 8
        Top = 35
        Width = 184
        Height = 2
        Shape = bsTopLine
      end
      object LblTitulo: TcxLabel
        Left = 48
        Top = 6
        Caption = 'Pedido'
        ParentFont = False
        Transparent = True
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
    Left = 709
    Top = 16
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
    Left = 121
    Top = 24
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
          Visible = True
          ItemName = 'btnAnalise'
        end
        item
          Visible = True
          ItemName = 'btnValidaNFe'
        end
        item
          Visible = True
          ItemName = 'btnAssinaNFe'
        end
        item
          Visible = True
          ItemName = 'btnAltera'
        end
        item
          Visible = True
          ItemName = 'btnImportaItens'
        end
        item
          Visible = True
          ItemName = 'btnEnviar'
        end
        item
          Visible = True
          ItemName = 'btnCaixa'
        end
        item
          Visible = True
          ItemName = 'btnDesconto'
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
      PaintStyle = psCaptionGlyph
    end
    object btnAnalise: TdxBarButton
      Action = ActAnaliseCustos
      Category = 0
    end
    object btnAltera: TdxBarButton
      Action = ActConfigFin
      Category = 0
    end
    object btnCaixa: TdxBarButton
      Action = ActComItem
      Category = 0
    end
    object btnImportaItens: TdxBarButton
      Action = ActImportaItens
      Category = 0
    end
    object btnDesconto: TdxBarButton
      Action = ActCalcularDesconto
      Caption = 'Desconto ( F12 )'
      Category = 0
    end
    object btnEnviar: TdxBarButton
      Action = ActEnviaCaixa
      Category = 0
    end
    object btnValidaNFe: TdxBarButton
      Action = ActValidaNFe
      Category = 0
    end
    object btnAssinaNFe: TdxBarButton
      Action = ActAssinaNFe
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
  object Actions: TActionList
    Left = 627
    Top = 16
    object ActIncluir: TAction
      Tag = 1
      Caption = 'ActIncluir'
      Hint = 'Incluir um novo registro [Ins]'
      ShortCut = 45
      OnExecute = ActIncluirExecute
    end
    object ActAlterar: TAction
      Tag = 1
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
      ShortCut = 34
      OnExecute = ActNextPageExecute
    end
    object ActPreviousPage: TAction
      Caption = 'ActPreviousPage'
      ShortCut = 33
      OnExecute = ActPreviousPageExecute
    end
    object ActEnviaCaixa: TAction
      Tag = 1
      Caption = 'Envia ao Caixa ( F9 )'
      ShortCut = 120
      OnExecute = ActEnviaCaixaExecute
    end
    object ActLocalizarCliente: TAction
      Caption = 'ActLocalizarCliente'
      ShortCut = 16424
      OnExecute = ActLocalizarClienteExecute
    end
    object ActLocalizarNatureza: TAction
      Caption = 'Localizar Natureza'
      OnExecute = ActLocalizarNaturezaExecute
    end
    object ActLocalizarTerceiros: TAction
      Caption = 'ActLocalizarTerceiros'
      OnExecute = ActLocalizarTerceirosExecute
    end
    object ActLocalizarVendedores: TAction
      Caption = 'Localizar Vendedores'
      OnExecute = ActLocalizarVendedoresExecute
    end
    object ActConsultaProduto: TAction
      Caption = 'ActConsultaProduto'
      ShortCut = 113
      OnExecute = ActConsultaProdutoExecute
    end
    object ActLocalizarPropriedade: TAction
      Caption = 'ActLocalizarPropriedade'
      OnExecute = ActLocalizarPropriedadeExecute
    end
    object ActLocalizarForma: TAction
      Caption = 'Localizar Forma'
      OnExecute = ActLocalizarFormaExecute
    end
    object ActCalcularDesconto: TAction
      Caption = 'Calcular Desconto'
      ShortCut = 123
      OnExecute = ActCalcularDescontoExecute
    end
    object ActTodasNaturezas: TAction
      Tag = 1
      Caption = 'Listar Naturezas'
      ShortCut = 116
      OnExecute = ActTodasNaturezasExecute
    end
    object ActAnaliseCustos: TAction
      Tag = 1
      Caption = 'Custos ( Crtl+A )'
      ShortCut = 16449
      OnExecute = ActAnaliseCustosExecute
    end
    object ActCores: TAction
      Tag = 1
      Caption = 'Cores'
      ShortCut = 122
      OnExecute = ActCoresExecute
    end
    object ActImportaItens: TAction
      Tag = 1
      Caption = 'Importa Itens ( F7 )'
      ShortCut = 118
      OnExecute = ActImportaItensExecute
    end
    object ActConfigFin: TAction
      Caption = 'Config. Financeira ( Ctrl+F )'
      ShortCut = 16454
      OnExecute = ActConfigFinExecute
    end
    object ActComItem: TAction
      Caption = 'Com. Item ( F11 )'
      ShortCut = 122
      OnExecute = ActComItemExecute
    end
    object ActValidaNFe: TAction
      Caption = 'Valida NFe ( Ctrl+V )'
      ShortCut = 16470
      OnExecute = ActValidaNFeExecute
    end
    object ActAssinaNFe: TAction
      Caption = 'Assina NFe ( Ctrl+S )'
      ShortCut = 16467
      OnExecute = ActAssinaNFeExecute
    end
    object ActConfCampos: TAction
      Tag = 1
      Caption = 'Configurar Campos'
      OnExecute = ActConfCamposExecute
    end
  end
  object dsParametros: TDataSource
    AutoEdit = False
    DataSet = DmVendas.Parametros
    Left = 338
    Top = 16
  end
  object DataSource: TDataSource
    DataSet = Vendas
    OnStateChange = DataSourceStateChange
    OnUpdateData = DataSourceUpdateData
    Left = 92
    Top = 32
  end
  object dsNaturezas: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelNatureza
    Left = 379
    Top = 16
  end
  object dsTipoDoctos: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelTipoDocto
    Left = 462
    Top = 16
  end
  object DsVendedores: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelVendedor
    Left = 181
    Top = 24
  end
  object DsFormaPgto: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelFormaPgto
    Left = 297
    Top = 16
  end
  object DsParcelas: TDataSource
    DataSet = Vendas_Parc
    Left = 503
    Top = 16
  end
  object DsItens: TDataSource
    AutoEdit = False
    DataSet = Vendas_Itens
    OnStateChange = DataSourceStateChange
    Left = 585
    Top = 16
  end
  object DsTerceiros: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelTerceiros
    Left = 154
    Top = 24
  end
  object dsPlano: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelPlano
    Left = 420
    Top = 16
  end
  object DsUnidades: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelUnidade
    Left = 255
    Top = 16
  end
  object DsPropriedade: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelPropriedades
    Left = 544
    Top = 16
  end
  object DsTransportadora: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelTransportadora
    Left = 214
    Top = 16
  end
  object dsMarcas: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Marcas
    Left = 381
    Top = 41
  end
  object PopupFat: TPopupMenu
    Left = 330
    Top = 41
    object ImportarItens1: TMenuItem
      Action = ActImportaItens
      Caption = 'Importar Itens'
    end
  end
  object stgVendasItens: TcxPropertiesStore
    Components = <>
    StorageName = 'stgVendasItens'
    Left = 666
    Top = 16
  end
  object DsCentro: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelCentro
    Left = 746
    Top = 16
  end
  object DsLocal: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.Local_Cobranca
    Left = 422
    Top = 48
  end
  object Vendas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterInsert = VendasAfterInsert
    BeforeDelete = VendasBeforeDelete
    BeforeOpen = VendasBeforeOpen
    BeforePost = VendasBeforePost
    OnCalcFields = VendasCalcFields
    OnNewRecord = VendasNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_VENDAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_VENDAS'
      
        '  (APRAZO, ASSINA_NOTA, BAIRRO_CONSUMIDOR, BANCO, BASE_ICM, BASE' +
        '_ICM_SUBST, '
      
        '   BCH_COD_FILIAL, CANCELADA, CARGA, CARTAO, CENTRO_CUSTO, CHEQU' +
        'E, CIDADE_CONSUMIDOR, '
      
        '   CLI_SUB_TRIBUTARIO, CNPJ, COD_CONFIGTITULO, COD_CONTRATO, COD' +
        '_INDEXADOR, '
      
        '   CODIGO, COMPROMETER_ESTOQUE, CONS_REV, CONTA_CAIXA, CONTROLA_' +
        'KM, CONTROLA_PLACA, '
      
        '   CONVENIADO, DATA, DATA_CAIXA, DATA_CANCELAMENTO, DESC_ACRES, ' +
        'DESCONTOS_CONCEDIDOS, '
      
        '   DESCRICAO, DESCTO_ICMS, DESCTO_RES, DESCTO_SERVICO, DESPESAS,' +
        ' DINHEIRO, '
      
        '   DOCUMENTOS_CONSUMIDOR, DT_EMISSAO_AGRUPADA, DT_EMISSAO_CF, DT' +
        '_EMISSAO_NF, '
      
        '   DT_PREV_ENTREGA, DUPLICATA, ENDERECO_CONSUMIDOR, ENTRADA, ENT' +
        'REGA_FUTURA, '
      
        '   ENVIADA_CX, ES, FECHADA, FONE_CONSUMIDOR, FORMA_PGTO, FRETE, ' +
        'GERA_FINANCEIRO, '
      
        '   HISTORICO, HORA, ICM, ID_AGRUPADOR, IDX_COTACAO, IDX_DATABASE' +
        ', IDX_QTDE, '
      
        '   INSS, IPI, IRRF, ISS, KM_ATUAL, LOCAL, LOCAL_COBRANCA, MEDIA_' +
        'KM, MESA, '
      
        '   N_SEQ_ECF, N_SERIE_ECF, NAO_COBR_JUR_ATE, NATUREZA, NF_AGRUPA' +
        'DA, NFE_ASSINADA, '
      
        '   NFE_AUTORIZADA, NFE_CANC_MOTIVO, NFE_CANC_PROTOCOLO, NFE_CANC' +
        '_STATUS, '
      
        '   NFE_CANC_XML, NFE_CHAVE, NFE_DANFE_IMPRESSO, NFE_PROTOCOLO, N' +
        'FE_RECIBO, '
      
        '   NFE_SELECIONADO, NFE_TRANSMITIDA, NFE_VALIDADA, NFE_XML, NOME' +
        ', NOME_CONSUMIDOR, '
      
        '   NOME_CONVENIO, NOME_FORMA, NOME_NATUREZA, NOME_PROPRIEDADE, N' +
        'OME_TERCEIRO, '
      
        '   NOME_VENDEDOR, NUM_CUPOM, NUM_NF, OBSERVACAO, ORCAMENTO, ORDE' +
        'M_CARGA, '
      
        '   PCT_COMISSAO, PCT_DESCTO_ICMS, PESO, PESSOA_FJ, PGTO_FRETE, P' +
        'IS_COFINS_CSLL, '
      
        '   PLACA, PROPRIEDADE, RECEBIDAS, REQUISICAO, SEGURO, SELECIONAD' +
        'A, SERIE, '
      
        '   STATUS_CARREGAMENTO, TERCEIRO, TICKET, TIPO_DOCTO, TIPO_VENDA' +
        ', TOTAL, '
      
        '   TOTAL_FISCAL, TOTAL_NOTA, TRANSPORTADORA, TROCO, TRP_CIDADE, ' +
        'TRP_CPF_CNPJ, '
      
        '   TRP_ESPECIE, TRP_MARCA, TRP_NOME, TRP_NUMERO, TRP_PESO_BRUTO,' +
        ' TRP_PESO_LIQUIDO, '
      
        '   TRP_QTDE, TURNO, UF, UF_PLACA, USUARIO, VALE_TROCO, VALIDADE,' +
        ' VALOR_ICM_SUBST, '
      '   VENDEDOR, VLR_PARC_LC, VOLUME)'
      'values'
      
        '  (:APRAZO, :ASSINA_NOTA, :BAIRRO_CONSUMIDOR, :BANCO, :BASE_ICM,' +
        ' :BASE_ICM_SUBST, '
      
        '   :BCH_COD_FILIAL, :CANCELADA, :CARGA, :CARTAO, :CENTRO_CUSTO, ' +
        ':CHEQUE, '
      
        '   :CIDADE_CONSUMIDOR, :CLI_SUB_TRIBUTARIO, :CNPJ, :COD_CONFIGTI' +
        'TULO, :COD_CONTRATO, '
      
        '   :COD_INDEXADOR, :CODIGO, :COMPROMETER_ESTOQUE, :CONS_REV, :CO' +
        'NTA_CAIXA, '
      
        '   :CONTROLA_KM, :CONTROLA_PLACA, :CONVENIADO, :DATA, :DATA_CAIX' +
        'A, :DATA_CANCELAMENTO, '
      
        '   :DESC_ACRES, :DESCONTOS_CONCEDIDOS, :DESCRICAO, :DESCTO_ICMS,' +
        ' :DESCTO_RES, '
      
        '   :DESCTO_SERVICO, :DESPESAS, :DINHEIRO, :DOCUMENTOS_CONSUMIDOR' +
        ', :DT_EMISSAO_AGRUPADA, '
      
        '   :DT_EMISSAO_CF, :DT_EMISSAO_NF, :DT_PREV_ENTREGA, :DUPLICATA,' +
        ' :ENDERECO_CONSUMIDOR, '
      
        '   :ENTRADA, :ENTREGA_FUTURA, :ENVIADA_CX, :ES, :FECHADA, :FONE_' +
        'CONSUMIDOR, '
      
        '   :FORMA_PGTO, :FRETE, :GERA_FINANCEIRO, :HISTORICO, :HORA, :IC' +
        'M, :ID_AGRUPADOR, '
      
        '   :IDX_COTACAO, :IDX_DATABASE, :IDX_QTDE, :INSS, :IPI, :IRRF, :' +
        'ISS, :KM_ATUAL, '
      
        '   :LOCAL, :LOCAL_COBRANCA, :MEDIA_KM, :MESA, :N_SEQ_ECF, :N_SER' +
        'IE_ECF, '
      
        '   :NAO_COBR_JUR_ATE, :NATUREZA, :NF_AGRUPADA, :NFE_ASSINADA, :N' +
        'FE_AUTORIZADA, '
      
        '   :NFE_CANC_MOTIVO, :NFE_CANC_PROTOCOLO, :NFE_CANC_STATUS, :NFE' +
        '_CANC_XML, '
      
        '   :NFE_CHAVE, :NFE_DANFE_IMPRESSO, :NFE_PROTOCOLO, :NFE_RECIBO,' +
        ' :NFE_SELECIONADO, '
      
        '   :NFE_TRANSMITIDA, :NFE_VALIDADA, :NFE_XML, :NOME, :NOME_CONSU' +
        'MIDOR, '
      
        '   :NOME_CONVENIO, :NOME_FORMA, :NOME_NATUREZA, :NOME_PROPRIEDAD' +
        'E, :NOME_TERCEIRO, '
      
        '   :NOME_VENDEDOR, :NUM_CUPOM, :NUM_NF, :OBSERVACAO, :ORCAMENTO,' +
        ' :ORDEM_CARGA, '
      
        '   :PCT_COMISSAO, :PCT_DESCTO_ICMS, :PESO, :PESSOA_FJ, :PGTO_FRE' +
        'TE, :PIS_COFINS_CSLL, '
      
        '   :PLACA, :PROPRIEDADE, :RECEBIDAS, :REQUISICAO, :SEGURO, :SELE' +
        'CIONADA, '
      
        '   :SERIE, :STATUS_CARREGAMENTO, :TERCEIRO, :TICKET, :TIPO_DOCTO' +
        ', :TIPO_VENDA, '
      
        '   :TOTAL, :TOTAL_FISCAL, :TOTAL_NOTA, :TRANSPORTADORA, :TROCO, ' +
        ':TRP_CIDADE, '
      
        '   :TRP_CPF_CNPJ, :TRP_ESPECIE, :TRP_MARCA, :TRP_NOME, :TRP_NUME' +
        'RO, :TRP_PESO_BRUTO, '
      
        '   :TRP_PESO_LIQUIDO, :TRP_QTDE, :TURNO, :UF, :UF_PLACA, :USUARI' +
        'O, :VALE_TROCO, '
      
        '   :VALIDADE, :VALOR_ICM_SUBST, :VENDEDOR, :VLR_PARC_LC, :VOLUME' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  FECHADA,'
      '  HISTORICO,'
      '  PESSOA_FJ,'
      '  USUARIO,'
      '  VENDEDOR,'
      '  NATUREZA,'
      '  ENVIADA_CX,'
      '  FORMA_PGTO,'
      '  NUM_NF,'
      '  NUM_CUPOM,'
      '  PROPRIEDADE,'
      '  CONVENIADO,'
      '  TIPO_DOCTO,'
      '  LOCAL_COBRANCA,'
      '  DESC_ACRES,'
      '  ENTRADA,'
      '  DINHEIRO,'
      '  CHEQUE,'
      '  CARTAO,'
      '  TICKET,'
      '  TOTAL,'
      '  OBSERVACAO,'
      '  VLR_PARC_LC,'
      '  TERCEIRO,'
      '  CARGA,'
      '  VOLUME,'
      '  PESO,'
      '  REQUISICAO,'
      '  DESCRICAO,'
      '  TIPO_VENDA,'
      '  NOME_CONSUMIDOR,'
      '  ORCAMENTO,'
      '  TROCO,'
      '  LOCAL,'
      '  NOME,'
      '  DATA_CAIXA,'
      '  CONTA_CAIXA,'
      '  CANCELADA,'
      '  TOTAL_NOTA,'
      '  BASE_ICM,'
      '  ICM,'
      '  BASE_ICM_SUBST,'
      '  VALOR_ICM_SUBST,'
      '  FRETE,'
      '  SEGURO,'
      '  DESPESAS,'
      '  IPI,'
      '  APRAZO,'
      '  SELECIONADA,'
      '  DUPLICATA,'
      '  BANCO,'
      '  RECEBIDAS,'
      '  CONTROLA_PLACA,'
      '  CONTROLA_KM,'
      '  ASSINA_NOTA,'
      '  KM_ATUAL,'
      '  NOME_PROPRIEDADE,'
      '  NOME_VENDEDOR,'
      '  NOME_NATUREZA,'
      '  NOME_TERCEIRO,'
      '  NOME_FORMA,'
      '  UF,'
      '  VALIDADE,'
      '  MEDIA_KM,'
      '  DOCUMENTOS_CONSUMIDOR,'
      '  ENDERECO_CONSUMIDOR,'
      '  TURNO,'
      '  HORA,'
      '  NAO_COBR_JUR_ATE,'
      '  SERIE,'
      '  DESCONTOS_CONCEDIDOS,'
      '  NOME_CONVENIO,'
      '  DT_EMISSAO_AGRUPADA,'
      '  TRANSPORTADORA,'
      '  DATA_CANCELAMENTO,'
      '  TOTAL_FISCAL,'
      '  CONS_REV,'
      '  IRRF,'
      '  INSS,'
      '  PIS_COFINS_CSLL,'
      '  ISS,'
      '  VALE_TROCO,'
      '  CIDADE_CONSUMIDOR,'
      '  PGTO_FRETE,'
      '  BAIRRO_CONSUMIDOR,'
      '  FONE_CONSUMIDOR,'
      '  MESA,'
      '  DESCTO_RES,'
      '  COMPROMETER_ESTOQUE,'
      '  ID_AGRUPADOR,'
      '  DESCTO_ICMS,'
      '  PCT_DESCTO_ICMS,'
      '  NF_AGRUPADA,'
      '  TRP_QTDE,'
      '  TRP_ESPECIE,'
      '  TRP_PESO_BRUTO,'
      '  TRP_PESO_LIQUIDO,'
      '  TRP_NUMERO,'
      '  TRP_MARCA,'
      '  TRP_NOME,'
      '  STATUS_CARREGAMENTO,'
      '  ORDEM_CARGA,'
      '  ENTREGA_FUTURA,'
      '  PCT_COMISSAO,'
      '  CENTRO_CUSTO,'
      '  ES,'
      '  GERA_FINANCEIRO,'
      '  NFE_CHAVE,'
      '  NFE_SELECIONADO,'
      '  DT_PREV_ENTREGA,'
      '  COD_INDEXADOR,'
      '  IDX_DATABASE,'
      '  IDX_COTACAO,'
      '  IDX_QTDE,'
      '  COD_CONFIGTITULO,'
      '  NFE_VALIDADA,'
      '  NFE_ASSINADA,'
      '  NFE_TRANSMITIDA,'
      '  NFE_AUTORIZADA,'
      '  NFE_DANFE_IMPRESSO,'
      '  CLI_SUB_TRIBUTARIO,'
      '  DT_EMISSAO_NF,'
      '  DT_EMISSAO_CF,'
      '  N_SEQ_ECF,'
      '  N_SERIE_ECF,'
      '  NFE_PROTOCOLO,'
      '  NFE_RECIBO,'
      '  NFE_XML,'
      '  NFE_CANC_MOTIVO,'
      '  NFE_CANC_STATUS,'
      '  NFE_CANC_PROTOCOLO,'
      '  NFE_CANC_XML,'
      '  PLACA,'
      '  UF_PLACA,'
      '  BCH_COD_FILIAL,'
      '  DESCTO_SERVICO,'
      '  SINTEG_VLR_ISENTO,'
      '  SINTEG_VLR_OUTROS,'
      '  SINTEG_VLR_CONTABIL,'
      '  TRP_CIDADE,'
      '  TRP_CPF_CNPJ,'
      '  NFE_NUMERO,'
      '  COD_CONTRATO'
      'from FAT_VENDAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select *'
      'from FAT_VENDAS'
      'WHERE CNPJ = :CNPJ AND'
      '               CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_VENDAS'
      'set'
      '  APRAZO = :APRAZO,'
      '  ASSINA_NOTA = :ASSINA_NOTA,'
      '  BAIRRO_CONSUMIDOR = :BAIRRO_CONSUMIDOR,'
      '  BANCO = :BANCO,'
      '  BASE_ICM = :BASE_ICM,'
      '  BASE_ICM_SUBST = :BASE_ICM_SUBST,'
      '  BCH_COD_FILIAL = :BCH_COD_FILIAL,'
      '  CANCELADA = :CANCELADA,'
      '  CARGA = :CARGA,'
      '  CARTAO = :CARTAO,'
      '  CENTRO_CUSTO = :CENTRO_CUSTO,'
      '  CHEQUE = :CHEQUE,'
      '  CIDADE_CONSUMIDOR = :CIDADE_CONSUMIDOR,'
      '  CLI_SUB_TRIBUTARIO = :CLI_SUB_TRIBUTARIO,'
      '  CNPJ = :CNPJ,'
      '  COD_CONFIGTITULO = :COD_CONFIGTITULO,'
      '  COD_CONTRATO = :COD_CONTRATO,'
      '  COD_INDEXADOR = :COD_INDEXADOR,'
      '  CODIGO = :CODIGO,'
      '  COMPROMETER_ESTOQUE = :COMPROMETER_ESTOQUE,'
      '  CONS_REV = :CONS_REV,'
      '  CONTA_CAIXA = :CONTA_CAIXA,'
      '  CONTROLA_KM = :CONTROLA_KM,'
      '  CONTROLA_PLACA = :CONTROLA_PLACA,'
      '  CONVENIADO = :CONVENIADO,'
      '  DATA = :DATA,'
      '  DATA_CAIXA = :DATA_CAIXA,'
      '  DATA_CANCELAMENTO = :DATA_CANCELAMENTO,'
      '  DESC_ACRES = :DESC_ACRES,'
      '  DESCONTOS_CONCEDIDOS = :DESCONTOS_CONCEDIDOS,'
      '  DESCRICAO = :DESCRICAO,'
      '  DESCTO_ICMS = :DESCTO_ICMS,'
      '  DESCTO_RES = :DESCTO_RES,'
      '  DESCTO_SERVICO = :DESCTO_SERVICO,'
      '  DESPESAS = :DESPESAS,'
      '  DINHEIRO = :DINHEIRO,'
      '  DOCUMENTOS_CONSUMIDOR = :DOCUMENTOS_CONSUMIDOR,'
      '  DT_EMISSAO_AGRUPADA = :DT_EMISSAO_AGRUPADA,'
      '  DT_EMISSAO_CF = :DT_EMISSAO_CF,'
      '  DT_EMISSAO_NF = :DT_EMISSAO_NF,'
      '  DT_PREV_ENTREGA = :DT_PREV_ENTREGA,'
      '  DUPLICATA = :DUPLICATA,'
      '  ENDERECO_CONSUMIDOR = :ENDERECO_CONSUMIDOR,'
      '  ENTRADA = :ENTRADA,'
      '  ENTREGA_FUTURA = :ENTREGA_FUTURA,'
      '  ENVIADA_CX = :ENVIADA_CX,'
      '  ES = :ES,'
      '  FECHADA = :FECHADA,'
      '  FONE_CONSUMIDOR = :FONE_CONSUMIDOR,'
      '  FORMA_PGTO = :FORMA_PGTO,'
      '  FRETE = :FRETE,'
      '  GERA_FINANCEIRO = :GERA_FINANCEIRO,'
      '  HISTORICO = :HISTORICO,'
      '  HORA = :HORA,'
      '  ICM = :ICM,'
      '  ID_AGRUPADOR = :ID_AGRUPADOR,'
      '  IDX_COTACAO = :IDX_COTACAO,'
      '  IDX_DATABASE = :IDX_DATABASE,'
      '  IDX_QTDE = :IDX_QTDE,'
      '  INSS = :INSS,'
      '  IPI = :IPI,'
      '  IRRF = :IRRF,'
      '  ISS = :ISS,'
      '  KM_ATUAL = :KM_ATUAL,'
      '  LOCAL = :LOCAL,'
      '  LOCAL_COBRANCA = :LOCAL_COBRANCA,'
      '  MEDIA_KM = :MEDIA_KM,'
      '  MESA = :MESA,'
      '  N_SEQ_ECF = :N_SEQ_ECF,'
      '  N_SERIE_ECF = :N_SERIE_ECF,'
      '  NAO_COBR_JUR_ATE = :NAO_COBR_JUR_ATE,'
      '  NATUREZA = :NATUREZA,'
      '  NF_AGRUPADA = :NF_AGRUPADA,'
      '  NFE_ASSINADA = :NFE_ASSINADA,'
      '  NFE_AUTORIZADA = :NFE_AUTORIZADA,'
      '  NFE_CANC_MOTIVO = :NFE_CANC_MOTIVO,'
      '  NFE_CANC_PROTOCOLO = :NFE_CANC_PROTOCOLO,'
      '  NFE_CANC_STATUS = :NFE_CANC_STATUS,'
      '  NFE_CANC_XML = :NFE_CANC_XML,'
      '  NFE_CHAVE = :NFE_CHAVE,'
      '  NFE_DANFE_IMPRESSO = :NFE_DANFE_IMPRESSO,'
      '  NFE_PROTOCOLO = :NFE_PROTOCOLO,'
      '  NFE_RECIBO = :NFE_RECIBO,'
      '  NFE_SELECIONADO = :NFE_SELECIONADO,'
      '  NFE_TRANSMITIDA = :NFE_TRANSMITIDA,'
      '  NFE_VALIDADA = :NFE_VALIDADA,'
      '  NFE_XML = :NFE_XML,'
      '  NOME = :NOME,'
      '  NOME_CONSUMIDOR = :NOME_CONSUMIDOR,'
      '  NOME_CONVENIO = :NOME_CONVENIO,'
      '  NOME_FORMA = :NOME_FORMA,'
      '  NOME_NATUREZA = :NOME_NATUREZA,'
      '  NOME_PROPRIEDADE = :NOME_PROPRIEDADE,'
      '  NOME_TERCEIRO = :NOME_TERCEIRO,'
      '  NOME_VENDEDOR = :NOME_VENDEDOR,'
      '  NUM_CUPOM = :NUM_CUPOM,'
      '  NUM_NF = :NUM_NF,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  ORCAMENTO = :ORCAMENTO,'
      '  ORDEM_CARGA = :ORDEM_CARGA,'
      '  PCT_COMISSAO = :PCT_COMISSAO,'
      '  PCT_DESCTO_ICMS = :PCT_DESCTO_ICMS,'
      '  PESO = :PESO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PGTO_FRETE = :PGTO_FRETE,'
      '  PIS_COFINS_CSLL = :PIS_COFINS_CSLL,'
      '  PLACA = :PLACA,'
      '  PROPRIEDADE = :PROPRIEDADE,'
      '  RECEBIDAS = :RECEBIDAS,'
      '  REQUISICAO = :REQUISICAO,'
      '  SEGURO = :SEGURO,'
      '  SELECIONADA = :SELECIONADA,'
      '  SERIE = :SERIE,'
      '  STATUS_CARREGAMENTO = :STATUS_CARREGAMENTO,'
      '  TERCEIRO = :TERCEIRO,'
      '  TICKET = :TICKET,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  TIPO_VENDA = :TIPO_VENDA,'
      '  TOTAL = :TOTAL,'
      '  TOTAL_FISCAL = :TOTAL_FISCAL,'
      '  TOTAL_NOTA = :TOTAL_NOTA,'
      '  TRANSPORTADORA = :TRANSPORTADORA,'
      '  TROCO = :TROCO,'
      '  TRP_CIDADE = :TRP_CIDADE,'
      '  TRP_CPF_CNPJ = :TRP_CPF_CNPJ,'
      '  TRP_ESPECIE = :TRP_ESPECIE,'
      '  TRP_MARCA = :TRP_MARCA,'
      '  TRP_NOME = :TRP_NOME,'
      '  TRP_NUMERO = :TRP_NUMERO,'
      '  TRP_PESO_BRUTO = :TRP_PESO_BRUTO,'
      '  TRP_PESO_LIQUIDO = :TRP_PESO_LIQUIDO,'
      '  TRP_QTDE = :TRP_QTDE,'
      '  TURNO = :TURNO,'
      '  UF = :UF,'
      '  UF_PLACA = :UF_PLACA,'
      '  USUARIO = :USUARIO,'
      '  VALE_TROCO = :VALE_TROCO,'
      '  VALIDADE = :VALIDADE,'
      '  VALOR_ICM_SUBST = :VALOR_ICM_SUBST,'
      '  VENDEDOR = :VENDEDOR,'
      '  VLR_PARC_LC = :VLR_PARC_LC,'
      '  VOLUME = :VOLUME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'codigo'
    GeneratorField.Generator = 'FAT_VENDAS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 56
    Top = 296
    object VendasCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object VendasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDA"."CODIGO"'
      Required = True
    end
    object VendasFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object VendasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDA"."HISTORICO"'
      Size = 100
    end
    object VendasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDA"."PESSOA_FJ"'
      Required = True
      OnValidate = VendasPESSOA_FJValidate
    end
    object VendasUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDA"."USUARIO"'
      Required = True
    end
    object VendasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDA"."VENDEDOR"'
      Required = True
      OnValidate = VendasVENDEDORValidate
    end
    object VendasFORMA_PGTO: TIntegerField
      DisplayLabel = 'Forma Pgto'
      FieldName = 'FORMA_PGTO'
      Origin = '"FAT_VENDA"."FORMA_PGTO"'
      OnValidate = VendasFORMA_PGTOValidate
    end
    object VendasNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDA"."NUM_NF"'
    end
    object VendasNUM_CUPOM: TIntegerField
      DisplayLabel = 'Cupom Fiscal'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDA"."NUM_CUPOM"'
    end
    object VendasNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDA"."NATUREZA"'
      Required = True
      OnValidate = VendasNATUREZAValidate
    end
    object VendasPROPRIEDADE: TIntegerField
      DisplayLabel = 'Propriedade'
      FieldName = 'PROPRIEDADE'
      Origin = '"FAT_VENDA"."PROPRIEDADE"'
      OnValidate = VendasPROPRIEDADEValidate
    end
    object VendasCONVENIADO: TIntegerField
      DisplayLabel = 'Conv'#234'niado'
      FieldName = 'CONVENIADO'
      Origin = '"FAT_VENDA"."CONVENIADO"'
    end
    object VendasDESC_ACRES: TFloatField
      DisplayLabel = 'Desconto/Acr'#233'scimo'
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDA"."DESC_ACRES"'
      OnValidate = VendasDESC_ACRESValidate
      DisplayFormat = '###,###,##0.00'
    end
    object VendasTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"FAT_VENDA"."TIPO_DOCTO"'
      OnValidate = VendasTIPO_DOCTOValidate
      FixedChar = True
      Size = 3
    end
    object VendasLOCAL_COBRANCA: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"FAT_VENDA"."LOCAL_COBRANCA"'
    end
    object VendasENTRADA: TFloatField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"FAT_VENDA"."ENTRADA"'
      OnValidate = VendasENTRADAValidate
      DisplayFormat = '###,###,##0.00'
      MaxValue = 999999.990000000000000000
    end
    object VendasDINHEIRO: TFloatField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"FAT_VENDA"."DINHEIRO"'
      OnValidate = VendasDINHEIROValidate
      DisplayFormat = '###,###,##0.00'
    end
    object VendasCHEQUE: TFloatField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FAT_VENDA"."CHEQUE"'
      OnValidate = VendasCHEQUEValidate
      DisplayFormat = '###,###,##0.00'
    end
    object VendasCARTAO: TFloatField
      DisplayLabel = 'Cartao'
      FieldName = 'CARTAO'
      Origin = '"FAT_VENDA"."CARTAO"'
      OnValidate = VendasCARTAOValidate
      DisplayFormat = '###,###,##0.00'
    end
    object VendasTICKET: TFloatField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"FAT_VENDA"."TICKET"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasENVIADA_CX: TIBStringField
      DisplayLabel = 'Enviada Para Caixa'
      FieldName = 'ENVIADA_CX'
      Origin = '"FAT_VENDA"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object VendasTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDA"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasVLR_PARC_LC: TFloatField
      DisplayLabel = 'Parcelado'
      FieldName = 'VLR_PARC_LC'
      Origin = '"FAT_VENDA"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasTotal_Geral: TFloatField
      DisplayLabel = 'Total Geral'
      FieldKind = fkCalculated
      FieldName = 'Total_Geral'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VendasTotal_Parcelar: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Parcelar'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VendasDiferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Diferenca'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VendasTERCEIRO: TIntegerField
      DisplayLabel = 'Terceiro'
      FieldName = 'TERCEIRO'
      Origin = '"FAT_VENDAS"."TERCEIRO"'
      OnValidate = VendasTERCEIROValidate
    end
    object VendasCARGA: TIntegerField
      DisplayLabel = 'Carga'
      FieldName = 'CARGA'
      Origin = '"FAT_VENDAS"."CARGA"'
    end
    object VendasVOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS"."PESO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasREQUISICAO: TIBStringField
      DisplayLabel = 'Requisi'#231#227'o'
      FieldName = 'REQUISICAO'
      Origin = '"FAT_VENDAS"."REQUISICAO"'
      Size = 6
    end
    object VendasAVista: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AVista'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VendasDESCRICAO: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"FAT_VENDAS"."DESCRICAO"'
      Size = 8
    end
    object VendasTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo de Venda'
      FieldName = 'TIPO_VENDA'
      Origin = '"FAT_VENDAS"."TIPO_VENDA"'
      OnGetText = VendasTIPO_VENDAGetText
      OnSetText = VendasTIPO_VENDASetText
      FixedChar = True
      Size = 3
    end
    object VendasNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Nome Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object VendasORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object VendasTROCO: TFloatField
      FieldName = 'TROCO'
      Origin = '"FAT_VENDAS"."TROCO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasLOCAL: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"FAT_VENDAS"."LOCAL"'
    end
    object VendasNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS"."NOME"'
      Size = 50
    end
    object VendasCANCELADA: TIBStringField
      FieldName = 'CANCELADA'
      Origin = '"FAT_VENDAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object VendasBASE_ICM: TFloatField
      FieldName = 'BASE_ICM'
      Origin = '"FAT_VENDAS"."BASE_ICM"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasICM: TFloatField
      FieldName = 'ICM'
      Origin = '"FAT_VENDAS"."ICM"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasBASE_ICM_SUBST: TFloatField
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"FAT_VENDAS"."BASE_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasVALOR_ICM_SUBST: TFloatField
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"FAT_VENDAS"."VALOR_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasFRETE: TFloatField
      FieldName = 'FRETE'
      Origin = '"FAT_VENDAS"."FRETE"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasSEGURO: TFloatField
      FieldName = 'SEGURO'
      Origin = '"FAT_VENDAS"."SEGURO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasDESPESAS: TFloatField
      FieldName = 'DESPESAS'
      Origin = '"FAT_VENDAS"."DESPESAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"FAT_VENDAS"."IPI"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      Origin = '"FAT_VENDAS"."TOTAL_NOTA"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasSELECIONADA: TIBStringField
      FieldName = 'SELECIONADA'
      Origin = '"FAT_VENDAS"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
    object VendasDUPLICATA: TIntegerField
      FieldName = 'DUPLICATA'
      Origin = '"FAT_VENDAS"."DUPLICATA"'
    end
    object VendasRECEBIDAS: TFloatField
      FieldName = 'RECEBIDAS'
      Origin = '"FAT_VENDAS"."RECEBIDAS"'
    end
    object VendasNOME_PROPRIEDADE: TIBStringField
      DisplayLabel = 'Propriedade'
      FieldName = 'NOME_PROPRIEDADE'
      Origin = '"FAT_VENDAS"."NOME_PROPRIEDADE"'
      Size = 50
    end
    object VendasNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_VENDAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object VendasNOME_NATUREZA: TIBStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NOME_NATUREZA'
      Origin = '"FAT_VENDAS"."NOME_NATUREZA"'
      Size = 50
    end
    object VendasNOME_TERCEIRO: TIBStringField
      DisplayLabel = 'Terceiro'
      FieldName = 'NOME_TERCEIRO'
      Origin = '"FAT_VENDAS"."NOME_TERCEIRO"'
      Size = 50
    end
    object VendasNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"FAT_VENDAS"."NOME_FORMA"'
      Size = 50
    end
    object VendasUF: TIBStringField
      FieldName = 'UF'
      Origin = '"FAT_VENDAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object VendasVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'VALIDADE'
      Origin = '"FAT_VENDAS"."VALIDADE"'
    end
    object VendasDESCONTOS_CONCEDIDOS: TFloatField
      DisplayLabel = 'Descontos Produtos'
      FieldName = 'DESCONTOS_CONCEDIDOS'
      Origin = '"FAT_VENDAS"."DESCONTOS_CONCEDIDOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasTRANSPORTADORA: TIntegerField
      DisplayLabel = 'Transportador'
      FieldName = 'TRANSPORTADORA'
      Origin = '"FAT_VENDAS"."TRANSPORTADORA"'
    end
    object VendasTOTAL_FISCAL: TFloatField
      DisplayLabel = 'Total Fiscal'
      FieldName = 'TOTAL_FISCAL'
      Origin = '"FAT_VENDAS"."TOTAL_FISCAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasCONS_REV: TIBStringField
      FieldName = 'CONS_REV'
      Origin = '"FAT_VENDAS"."CONS_REV"'
      FixedChar = True
      Size = 1
    end
    object VendasIRRF: TFloatField
      FieldName = 'IRRF'
      Origin = '"FAT_VENDAS"."IRRF"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasINSS: TFloatField
      FieldName = 'INSS'
      Origin = '"FAT_VENDAS"."INSS"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasISS: TFloatField
      FieldName = 'ISS'
      Origin = '"FAT_VENDAS"."ISS"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPIS_COFINS_CSLL: TFloatField
      FieldName = 'PIS_COFINS_CSLL'
      Origin = '"FAT_VENDAS"."PIS_COFINS_CSLL"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasDOCUMENTOS_CONSUMIDOR: TIBStringField
      FieldName = 'DOCUMENTOS_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."DOCUMENTOS_CONSUMIDOR"'
    end
    object VendasENDERECO_CONSUMIDOR: TIBStringField
      FieldName = 'ENDERECO_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."ENDERECO_CONSUMIDOR"'
      Size = 30
    end
    object VendasCIDADE_CONSUMIDOR: TIBStringField
      FieldName = 'CIDADE_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."CIDADE_CONSUMIDOR"'
      Size = 50
    end
    object VendasDESCTO_RES: TFloatField
      FieldName = 'DESCTO_RES'
      Origin = '"FAT_VENDAS"."DESCTO_RES"'
    end
    object VendasID_AGRUPADOR: TIntegerField
      FieldName = 'ID_AGRUPADOR'
      Origin = '"FAT_VENDAS"."ID_AGRUPADOR"'
    end
    object VendasCONTA_CAIXA: TIntegerField
      FieldName = 'CONTA_CAIXA'
      Origin = '"FAT_VENDAS"."CONTA_CAIXA"'
    end
    object VendasAPRAZO: TFloatField
      FieldName = 'APRAZO'
      Origin = '"FAT_VENDAS"."APRAZO"'
    end
    object VendasBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"FAT_VENDAS"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object VendasCONTROLA_PLACA: TIBStringField
      FieldName = 'CONTROLA_PLACA'
      Origin = '"FAT_VENDAS"."CONTROLA_PLACA"'
      FixedChar = True
      Size = 1
    end
    object VendasCONTROLA_KM: TIBStringField
      FieldName = 'CONTROLA_KM'
      Origin = '"FAT_VENDAS"."CONTROLA_KM"'
      FixedChar = True
      Size = 1
    end
    object VendasASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"FAT_VENDAS"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
    object VendasKM_ATUAL: TFloatField
      FieldName = 'KM_ATUAL'
      Origin = '"FAT_VENDAS"."KM_ATUAL"'
    end
    object VendasMEDIA_KM: TFloatField
      FieldName = 'MEDIA_KM'
      Origin = '"FAT_VENDAS"."MEDIA_KM"'
    end
    object VendasTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FAT_VENDAS"."TURNO"'
    end
    object VendasHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"FAT_VENDAS"."HORA"'
    end
    object VendasNAO_COBR_JUR_ATE: TIntegerField
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"FAT_VENDAS"."NAO_COBR_JUR_ATE"'
    end
    object VendasSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"FAT_VENDAS"."SERIE"'
      FixedChar = True
      Size = 3
    end
    object VendasNOME_CONVENIO: TIBStringField
      FieldName = 'NOME_CONVENIO'
      Origin = '"FAT_VENDAS"."NOME_CONVENIO"'
      Size = 50
    end
    object VendasDT_EMISSAO_AGRUPADA: TDateTimeField
      FieldName = 'DT_EMISSAO_AGRUPADA'
      Origin = '"FAT_VENDAS"."DT_EMISSAO_AGRUPADA"'
    end
    object VendasDATA_CANCELAMENTO: TDateTimeField
      FieldName = 'DATA_CANCELAMENTO'
      Origin = '"FAT_VENDAS"."DATA_CANCELAMENTO"'
    end
    object VendasVALE_TROCO: TIBStringField
      FieldName = 'VALE_TROCO'
      Origin = '"FAT_VENDAS"."VALE_TROCO"'
      FixedChar = True
      Size = 1
    end
    object VendasPGTO_FRETE: TIBStringField
      FieldName = 'PGTO_FRETE'
      Origin = '"FAT_VENDAS"."PGTO_FRETE"'
      OnGetText = VendasPGTO_FRETEGetText
      OnSetText = VendasPGTO_FRETESetText
      FixedChar = True
      Size = 1
    end
    object VendasBAIRRO_CONSUMIDOR: TIBStringField
      FieldName = 'BAIRRO_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."BAIRRO_CONSUMIDOR"'
      Size = 50
    end
    object VendasFONE_CONSUMIDOR: TIBStringField
      FieldName = 'FONE_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."FONE_CONSUMIDOR"'
    end
    object VendasMESA: TIntegerField
      FieldName = 'MESA'
      Origin = '"FAT_VENDAS"."MESA"'
    end
    object VendasCOMPROMETER_ESTOQUE: TIBStringField
      FieldName = 'COMPROMETER_ESTOQUE'
      Origin = '"FAT_VENDAS"."COMPROMETER_ESTOQUE"'
      FixedChar = True
      Size = 1
    end
    object VendasDevolucao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Devolucao'
      Size = 1
      Calculated = True
    end
    object VendasRemessa: TStringField
      FieldKind = fkCalculated
      FieldName = 'Remessa'
      Size = 1
      Calculated = True
    end
    object VendasDESCTO_ICMS: TFloatField
      DisplayLabel = 'Decto. ICMS'
      FieldName = 'DESCTO_ICMS'
      Origin = '"FAT_VENDAS"."DESCTO_ICMS"'
    end
    object VendasPCT_DESCTO_ICMS: TFloatField
      FieldName = 'PCT_DESCTO_ICMS'
      Origin = '"FAT_VENDAS"."PCT_DESCTO_ICMS"'
    end
    object VendasNF_AGRUPADA: TIBStringField
      FieldName = 'NF_AGRUPADA'
      Origin = '"FAT_VENDAS"."NF_AGRUPADA"'
      FixedChar = True
      Size = 1
    end
    object VendasTRP_ESPECIE: TIBStringField
      FieldName = 'TRP_ESPECIE'
      Origin = '"FAT_VENDAS"."TRP_ESPECIE"'
      Size = 50
    end
    object VendasTRP_QTDE: TFloatField
      FieldName = 'TRP_QTDE'
      Origin = '"FAT_VENDAS"."TRP_QTDE"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasTRP_PESO_BRUTO: TFloatField
      FieldName = 'TRP_PESO_BRUTO'
      Origin = '"FAT_VENDAS"."TRP_PESO_BRUTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasTRP_PESO_LIQUIDO: TFloatField
      FieldName = 'TRP_PESO_LIQUIDO'
      Origin = '"FAT_VENDAS"."TRP_PESO_LIQUIDO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasTRP_NUMERO: TIBStringField
      FieldName = 'TRP_NUMERO'
      Origin = '"FAT_VENDAS"."TRP_NUMERO"'
      Size = 50
    end
    object VendasTRP_MARCA: TIntegerField
      FieldName = 'TRP_MARCA'
      Origin = '"FAT_VENDAS"."TRP_MARCA"'
    end
    object VendasTRP_NOME: TIBStringField
      FieldName = 'TRP_NOME'
      Origin = '"FAT_VENDAS"."TRP_NOME"'
      Size = 50
    end
    object VendasSTATUS_CARREGAMENTO: TIntegerField
      FieldName = 'STATUS_CARREGAMENTO'
      Origin = '"FAT_VENDAS"."STATUS_CARREGAMENTO"'
    end
    object VendasENTREGA_FUTURA: TIBStringField
      FieldName = 'ENTREGA_FUTURA'
      Origin = '"FAT_VENDAS"."ENTREGA_FUTURA"'
      FixedChar = True
      Size = 1
    end
    object VendasORDEM_CARGA: TIntegerField
      FieldName = 'ORDEM_CARGA'
      Origin = '"FAT_VENDAS"."ORDEM_CARGA"'
    end
    object VendasPCT_COMISSAO: TFloatField
      FieldName = 'PCT_COMISSAO'
      Origin = '"FAT_VENDAS"."PCT_COMISSAO"'
      DisplayFormat = '###,##0.00'
    end
    object VendasTotal_Itens: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Itens'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VendasCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
      Origin = '"FAT_VENDAS"."CENTRO_CUSTO"'
    end
    object VendasGERA_FINANCEIRO: TIBStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = '"FAT_VENDAS"."GERA_FINANCEIRO"'
      FixedChar = True
      Size = 1
    end
    object VendasES: TIBStringField
      FieldName = 'ES'
      Origin = '"FAT_VENDAS"."ES"'
      FixedChar = True
      Size = 1
    end
    object VendasDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_VENDAS"."DATA"'
    end
    object VendasDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"FAT_VENDAS"."DATA_CAIXA"'
    end
    object VendasNFE_SELECIONADO: TIBStringField
      FieldName = 'NFE_SELECIONADO'
      Origin = '"FAT_VENDAS"."NFE_SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object VendasDT_PREV_ENTREGA: TDateField
      FieldName = 'DT_PREV_ENTREGA'
      Origin = '"FAT_VENDAS"."DT_PREV_ENTREGA"'
    end
    object VendasCOD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
      Origin = '"FAT_VENDAS"."COD_INDEXADOR"'
    end
    object VendasIDX_DATABASE: TDateField
      FieldName = 'IDX_DATABASE'
      Origin = '"FAT_VENDAS"."IDX_DATABASE"'
    end
    object VendasIDX_COTACAO: TFloatField
      FieldName = 'IDX_COTACAO'
      Origin = '"FAT_VENDAS"."IDX_COTACAO"'
      DisplayFormat = '###,##0.00'
    end
    object VendasIDX_QTDE: TFloatField
      FieldName = 'IDX_QTDE'
      Origin = '"FAT_VENDAS"."IDX_QTDE"'
      DisplayFormat = '###,##0.00'
    end
    object Vendas_Total_Geral_IDX: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Total_Geral_IDX'
      Calculated = True
    end
    object VendasCOD_CONFIGTITULO: TIntegerField
      FieldName = 'COD_CONFIGTITULO'
      Origin = '"FAT_VENDAS"."COD_CONFIGTITULO"'
    end
    object VendasNFE_VALIDADA: TIBStringField
      FieldName = 'NFE_VALIDADA'
      Origin = '"FAT_VENDAS"."NFE_VALIDADA"'
      FixedChar = True
      Size = 1
    end
    object VendasNFE_ASSINADA: TIBStringField
      FieldName = 'NFE_ASSINADA'
      Origin = '"FAT_VENDAS"."NFE_ASSINADA"'
      FixedChar = True
      Size = 1
    end
    object VendasNFE_TRANSMITIDA: TIBStringField
      FieldName = 'NFE_TRANSMITIDA'
      Origin = '"FAT_VENDAS"."NFE_TRANSMITIDA"'
      FixedChar = True
      Size = 1
    end
    object VendasNFE_AUTORIZADA: TIBStringField
      FieldName = 'NFE_AUTORIZADA'
      Origin = '"FAT_VENDAS"."NFE_AUTORIZADA"'
      FixedChar = True
      Size = 1
    end
    object VendasNFE_DANFE_IMPRESSO: TIBStringField
      FieldName = 'NFE_DANFE_IMPRESSO'
      Origin = '"FAT_VENDAS"."NFE_DANFE_IMPRESSO"'
      FixedChar = True
      Size = 1
    end
    object VendasCLI_SUB_TRIBUTARIO: TIBStringField
      FieldName = 'CLI_SUB_TRIBUTARIO'
      Origin = '"FAT_VENDAS"."CLI_SUB_TRIBUTARIO"'
      FixedChar = True
      Size = 1
    end
    object VendasDT_EMISSAO_NF: TDateField
      FieldName = 'DT_EMISSAO_NF'
      Origin = '"FAT_VENDAS"."DT_EMISSAO_NF"'
    end
    object VendasDT_EMISSAO_CF: TDateField
      FieldName = 'DT_EMISSAO_CF'
      Origin = '"FAT_VENDAS"."DT_EMISSAO_CF"'
    end
    object VendasN_SEQ_ECF: TIBStringField
      FieldName = 'N_SEQ_ECF'
      Origin = '"FAT_VENDAS"."N_SEQ_ECF"'
      FixedChar = True
      Size = 3
    end
    object VendasN_SERIE_ECF: TIBStringField
      FieldName = 'N_SERIE_ECF'
      Origin = '"FAT_VENDAS"."N_SERIE_ECF"'
    end
    object VendasNFE_PROTOCOLO: TIBStringField
      FieldName = 'NFE_PROTOCOLO'
      Origin = '"FAT_VENDAS"."NFE_PROTOCOLO"'
      Size = 200
    end
    object VendasNFE_RECIBO: TIBStringField
      FieldName = 'NFE_RECIBO'
      Origin = '"FAT_VENDAS"."NFE_RECIBO"'
      Size = 200
    end
    object VendasNFE_XML: TMemoField
      FieldName = 'NFE_XML'
      Origin = '"FAT_VENDAS"."NFE_XML"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object VendasNFE_CHAVE: TIBStringField
      FieldName = 'NFE_CHAVE'
      Origin = '"FAT_VENDAS"."NFE_CHAVE"'
      Size = 80
    end
    object VendasNFE_CANC_MOTIVO: TIBStringField
      FieldName = 'NFE_CANC_MOTIVO'
      Origin = '"FAT_VENDAS"."NFE_CANC_MOTIVO"'
      Size = 200
    end
    object VendasNFE_CANC_STATUS: TIBStringField
      FieldName = 'NFE_CANC_STATUS'
      Origin = '"FAT_VENDAS"."NFE_CANC_STATUS"'
      Size = 80
    end
    object VendasNFE_CANC_PROTOCOLO: TIBStringField
      FieldName = 'NFE_CANC_PROTOCOLO'
      Origin = '"FAT_VENDAS"."NFE_CANC_PROTOCOLO"'
      Size = 80
    end
    object VendasNFE_CANC_XML: TMemoField
      FieldName = 'NFE_CANC_XML'
      Origin = '"FAT_VENDAS"."NFE_CANC_XML"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object VendasPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"FAT_VENDAS"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object VendasUF_PLACA: TIBStringField
      FieldName = 'UF_PLACA'
      Origin = '"FAT_VENDAS"."UF_PLACA"'
      FixedChar = True
      Size = 2
    end
    object VendasBCH_COD_FILIAL: TIntegerField
      FieldName = 'BCH_COD_FILIAL'
      Origin = '"FAT_VENDAS"."BCH_COD_FILIAL"'
    end
    object VendasDESCTO_SERVICO: TFloatField
      FieldName = 'DESCTO_SERVICO'
      Origin = '"FAT_VENDAS"."DESCTO_SERVICO"'
    end
    object VendasSINTEG_VLR_ISENTO: TFloatField
      FieldName = 'SINTEG_VLR_ISENTO'
      Origin = '"FAT_VENDAS"."SINTEG_VLR_ISENTO"'
    end
    object VendasSINTEG_VLR_OUTROS: TFloatField
      FieldName = 'SINTEG_VLR_OUTROS'
      Origin = '"FAT_VENDAS"."SINTEG_VLR_OUTROS"'
    end
    object VendasSINTEG_VLR_CONTABIL: TFloatField
      FieldName = 'SINTEG_VLR_CONTABIL'
      Origin = '"FAT_VENDAS"."SINTEG_VLR_CONTABIL"'
    end
    object VendasTRP_CIDADE: TIBStringField
      FieldName = 'TRP_CIDADE'
      Origin = '"FAT_VENDAS"."TRP_CIDADE"'
      Size = 50
    end
    object VendasTRP_CPF_CNPJ: TIBStringField
      FieldName = 'TRP_CPF_CNPJ'
      Origin = '"FAT_VENDAS"."TRP_CPF_CNPJ"'
      FixedChar = True
      Size = 14
    end
    object VendasOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"FAT_VENDAS"."OBSERVACAO"'
      Size = 600
    end
    object VendasNFE_NUMERO: TIBStringField
      FieldName = 'NFE_NUMERO'
      Origin = '"FAT_VENDAS"."NFE_NUMERO"'
      Size = 10
    end
    object VendasCOD_CONTRATO: TIntegerField
      FieldName = 'COD_CONTRATO'
      Origin = '"FAT_VENDAS"."COD_CONTRATO"'
    end
  end
  object Vendas_Itens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeInsert = Vendas_ItensBeforeInsert
    BeforeOpen = Vendas_ItensBeforeOpen
    BeforePost = Vendas_ItensBeforePost
    OnCalcFields = Vendas_ItensCalcFields
    OnNewRecord = Vendas_ItensNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_VENDAS_ITENS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into FAT_VENDAS_ITENS'
      
        '  (ALIQUOTA, ALIQUOTA_EST, ALIQUOTA_INT, BASECALCULOICM, BASECAL' +
        'CULOSUBSTITUICAO, '
      
        '   CFOP, CNPJ, CODIGO, CODIGO_LOTE, COMPLEMENTO, CTE, CTIE, DESC' +
        'ONTO, FRACIONADO, '
      
        '   GRADE, ICM, ICM_SUBS, IPI, LOTE, MENSAGEM_REDUCAO, NOME_FIS, ' +
        'NOME_PRODUTO, '
      
        '   NUMERO, ORIGEM, PESO, PORC_DESC, PRC_CUSTO, PRC_UNIT_ORIGINAL' +
        ', PRC_UNITARIO, '
      
        '   PRC_UNITARIO_FIS, PRODUTO, PRODUTOFIS, QUANTIDADE, QUANTIDADE' +
        '_FIS, REDUCAO, '
      
        '   SEQUENCIA, SERVICO, SPRODUTO, SUBUNIDADE, UNIDADE, UTILIZA_LO' +
        'TE, VENDEDOR, '
      '   VOLUME)'
      'values'
      
        '  (:ALIQUOTA, :ALIQUOTA_EST, :ALIQUOTA_INT, :BASECALCULOICM, :BA' +
        'SECALCULOSUBSTITUICAO, '
      
        '   :CFOP, :CNPJ, :CODIGO, :CODIGO_LOTE, :COMPLEMENTO, :CTE, :CTI' +
        'E, :DESCONTO, '
      
        '   :FRACIONADO, :GRADE, :ICM, :ICM_SUBS, :IPI, :LOTE, :MENSAGEM_' +
        'REDUCAO, '
      
        '   :NOME_FIS, :NOME_PRODUTO, :NUMERO, :ORIGEM, :PESO, :PORC_DESC' +
        ', :PRC_CUSTO, '
      
        '   :PRC_UNIT_ORIGINAL, :PRC_UNITARIO, :PRC_UNITARIO_FIS, :PRODUT' +
        'O, :PRODUTOFIS, '
      
        '   :QUANTIDADE, :QUANTIDADE_FIS, :REDUCAO, :SEQUENCIA, :SERVICO,' +
        ' :SPRODUTO, '
      '   :SUBUNIDADE, :UNIDADE, :UTILIZA_LOTE, :VENDEDOR, :VOLUME)')
    RefreshSQL.Strings = (
      'select '
      '    fti.CNPJ,'
      '    fti.CODIGO,'
      '    fti.PRODUTO,'
      '    fti.SPRODUTO,'
      '    fti.SEQUENCIA,'
      '    fti.QUANTIDADE,'
      '    fti.PRC_UNITARIO,'
      '    fti.PRC_CUSTO,'
      '    fti.ICM,'
      '    fti.ICM_SUBS,'
      '    fti.IPI,'
      '    fti.VOLUME,'
      '    fti.PESO,'
      '    fti.DESCONTO,'
      '    fti.PORC_DESC,'
      '    fti.UNIDADE,'
      '    fti.PRC_UNIT_ORIGINAL,'
      '    fti.NOME_PRODUTO,'
      '    fti.ALIQUOTA,'
      '    fti.PRODUTOFIS,'
      '    fti.NOME_FIS,'
      '    fti.SUBUNIDADE,'
      '    fti.ORIGEM,'
      '    fti.CTE,'
      '    fti.CTIE,'
      '    fti.REDUCAO,'
      '    fti.FRACIONADO,'
      '    fti.VENDEDOR,'
      '    fti.MENSAGEM_REDUCAO,'
      '    fti.BASECALCULOICM,'
      '    fti.BASECALCULOSUBSTITUICAO,'
      '    fti.ALIQUOTA_EST,'
      '    fti.ALIQUOTA_INT,'
      '    fti.CFOP ,'
      '    fti.COMPLEMENTO,'
      '    fti.SERVICO,'
      '    fti.GRADE,'
      '    fti.NUMERO,'
      '    fti.PRC_UNITARIO_FIS,'
      '    fti.QUANTIDADE_FIS,'
      '    fti.LOTE,'
      '    fti.CODIGO_LOTE,'
      '    fti.utiliza_lote,'
      '    grd.grade,'
      '    grd.nome_cor,'
      '    grd.nome_material,'
      '    grd.nome_perfil,'
      '    prd.servico prd_servico'
      'from FAT_VENDAS_ITENS fti'
      
        'left join est_produtos prd on (prd.codigo = fti.produto and fti.' +
        'cnpj = prd.cnpj)'
      
        'left join EST_PRODUTOS_GRADES grd on (grd.produto = fti.produto ' +
        'and grd.grade = fti.grade and grd.cnpj = fti.cnpj)'
      'WHERE fti.CNPJ = :CNPJ AND fti.CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select '
      '    fti.CNPJ,'
      '    fti.CODIGO,'
      '    fti.PRODUTO,'
      '    fti.SPRODUTO,'
      '    fti.SEQUENCIA,'
      '    fti.QUANTIDADE,'
      '    fti.PRC_UNITARIO,'
      '    fti.PRC_CUSTO,'
      '    fti.ICM,'
      '    fti.ICM_SUBS,'
      '    fti.IPI,'
      '    fti.VOLUME,'
      '    fti.PESO,'
      '    fti.DESCONTO,'
      '    fti.PORC_DESC,'
      '    fti.UNIDADE,'
      '    fti.PRC_UNIT_ORIGINAL,'
      '    fti.NOME_PRODUTO,'
      '    fti.ALIQUOTA,'
      '    fti.PRODUTOFIS,'
      '    fti.NOME_FIS,'
      '    fti.SUBUNIDADE,'
      '    fti.ORIGEM,'
      '    fti.CTE,'
      '    fti.CTIE,'
      '    fti.REDUCAO,'
      '    fti.FRACIONADO,'
      '    fti.VENDEDOR,'
      '    fti.MENSAGEM_REDUCAO,'
      '    fti.BASECALCULOICM,'
      '    fti.BASECALCULOSUBSTITUICAO,'
      '    fti.ALIQUOTA_EST,'
      '    fti.ALIQUOTA_INT,'
      '    fti.CFOP ,'
      '    fti.COMPLEMENTO,'
      '    fti.SERVICO,'
      '    fti.GRADE,'
      '    fti.NUMERO,'
      '    fti.PRC_UNITARIO_FIS,'
      '    fti.QUANTIDADE_FIS,'
      '    fti.LOTE,'
      '    fti.CODIGO_LOTE,'
      '    fti.utiliza_lote,'
      '    grd.grade,'
      '    grd.nome_cor,'
      '    grd.nome_material,'
      '    grd.nome_perfil,'
      '    prd.servico prd_servico'
      'from FAT_VENDAS_ITENS fti'
      
        'left join est_produtos prd on (prd.codigo = fti.produto and fti.' +
        'cnpj = prd.cnpj)'
      
        'left join EST_PRODUTOS_GRADES grd on (grd.produto = fti.produto ' +
        'and grd.grade = fti.grade and grd.cnpj = fti.cnpj)'
      'WHERE fti.CNPJ = :CNPJ AND fti.CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_VENDAS_ITENS'
      'set'
      '  ALIQUOTA = :ALIQUOTA,'
      '  ALIQUOTA_EST = :ALIQUOTA_EST,'
      '  ALIQUOTA_INT = :ALIQUOTA_INT,'
      '  BASECALCULOICM = :BASECALCULOICM,'
      '  BASECALCULOSUBSTITUICAO = :BASECALCULOSUBSTITUICAO,'
      '  CFOP = :CFOP,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_LOTE = :CODIGO_LOTE,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CTE = :CTE,'
      '  CTIE = :CTIE,'
      '  DESCONTO = :DESCONTO,'
      '  FRACIONADO = :FRACIONADO,'
      '  GRADE = :GRADE,'
      '  ICM = :ICM,'
      '  ICM_SUBS = :ICM_SUBS,'
      '  IPI = :IPI,'
      '  LOTE = :LOTE,'
      '  MENSAGEM_REDUCAO = :MENSAGEM_REDUCAO,'
      '  NOME_FIS = :NOME_FIS,'
      '  NOME_PRODUTO = :NOME_PRODUTO,'
      '  NUMERO = :NUMERO,'
      '  ORIGEM = :ORIGEM,'
      '  PESO = :PESO,'
      '  PORC_DESC = :PORC_DESC,'
      '  PRC_CUSTO = :PRC_CUSTO,'
      '  PRC_UNIT_ORIGINAL = :PRC_UNIT_ORIGINAL,'
      '  PRC_UNITARIO = :PRC_UNITARIO,'
      '  PRC_UNITARIO_FIS = :PRC_UNITARIO_FIS,'
      '  PRODUTO = :PRODUTO,'
      '  PRODUTOFIS = :PRODUTOFIS,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  QUANTIDADE_FIS = :QUANTIDADE_FIS,'
      '  REDUCAO = :REDUCAO,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  SERVICO = :SERVICO,'
      '  SPRODUTO = :SPRODUTO,'
      '  SUBUNIDADE = :SUBUNIDADE,'
      '  UNIDADE = :UNIDADE,'
      '  UTILIZA_LOTE = :UTILIZA_LOTE,'
      '  VENDEDOR = :VENDEDOR,'
      '  VOLUME = :VOLUME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLink
    Left = 117
    Top = 296
    object Vendas_ItensCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Vendas_ItensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO"'
      Required = True
    end
    object Vendas_ItensQUANTIDADE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
      OnValidate = Vendas_ItensQUANTIDADEValidate
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_ItensPRC_CUSTO: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_ItensICM: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'ICM'
      Origin = '"FAT_VENDAS_ITENS"."ICM"'
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_ItensICM_SUBS: TFloatField
      DisplayLabel = 'ICMS Sub.'
      FieldName = 'ICM_SUBS'
      Origin = '"FAT_VENDAS_ITENS"."ICM_SUBS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_ItensIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"FAT_VENDAS_ITENS"."IPI"'
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.0000'
      Calculated = True
    end
    object Vendas_ItensPeso_Total: TFloatField
      DisplayLabel = 'Peso Total'
      FieldKind = fkCalculated
      FieldName = 'Peso_Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_ItensVOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS_ITENS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_ItensPESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS_ITENS"."PESO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_ItensVolume_Total: TFloatField
      DisplayLabel = 'Volume Total'
      FieldKind = fkCalculated
      FieldName = 'Volume_Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_ItensDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"FAT_VENDAS_ITENS"."DESCONTO"'
      OnValidate = Vendas_ItensDESCONTOValidate
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_ItensPORC_DESC: TFloatField
      DisplayLabel = 'Porc. Desconto'
      FieldName = 'PORC_DESC'
      Origin = '"FAT_VENDAS_ITENS"."PORC_DESC"'
      OnValidate = Vendas_ItensPORC_DESCValidate
      DisplayFormat = '% ##0.00'
    end
    object Vendas_ItensUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Vendas_ItensPRC_UNIT_ORIGINAL: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,###,##0.0000'
    end
    object Vendas_ItensSEQUENCIA: TSmallintField
      DisplayLabel = 'Sequencia'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object Vendas_ItensNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Vendas_ItensALIQUOTA: TIBStringField
      DisplayLabel = 'Aliquota'
      FieldName = 'ALIQUOTA'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object Vendas_ItensPRODUTOFIS: TIBStringField
      DisplayLabel = 'Produto Fiscal'
      FieldName = 'PRODUTOFIS'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTOFIS"'
      Size = 15
    end
    object Vendas_ItensNOME_FIS: TIBStringField
      DisplayLabel = 'Nome Fiscal'
      FieldName = 'NOME_FIS'
      Origin = '"FAT_VENDAS_ITENS"."NOME_FIS"'
      Size = 50
    end
    object Vendas_ItensSUBUNIDADE: TIntegerField
      DisplayLabel = 'Sub-Und'
      FieldName = 'SUBUNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."SUBUNIDADE"'
    end
    object Vendas_ItensORIGEM: TIntegerField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"FAT_VENDAS_ITENS"."ORIGEM"'
    end
    object Vendas_ItensCTE: TIntegerField
      DisplayLabel = 'Cte'
      FieldName = 'CTE'
      Origin = '"FAT_VENDAS_ITENS"."CTE"'
    end
    object Vendas_ItensCTIE: TIntegerField
      DisplayLabel = 'Ctie'
      FieldName = 'CTIE'
      Origin = '"FAT_VENDAS_ITENS"."CTIE"'
    end
    object Vendas_ItensREDUCAO: TIntegerField
      DisplayLabel = 'Redu'#231#227'o'
      FieldName = 'REDUCAO'
      Origin = '"FAT_VENDAS_ITENS"."REDUCAO"'
    end
    object Vendas_ItensFRACIONADO: TIBStringField
      DisplayLabel = 'Fracionado'
      FieldName = 'FRACIONADO'
      Origin = '"FAT_VENDAS_ITENS"."FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object Vendas_ItensVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS_ITENS"."VENDEDOR"'
    end
    object Vendas_ItensMENSAGEM_REDUCAO: TIBStringField
      DisplayLabel = 'Mensagem Redu'#231#227'o'
      FieldName = 'MENSAGEM_REDUCAO'
      Origin = '"FAT_VENDAS_ITENS"."MENSAGEM_REDUCAO"'
      Size = 80
    end
    object Vendas_ItensBASECALCULOICM: TFloatField
      DisplayLabel = 'Base C'#225'lculo ICMS'
      FieldName = 'BASECALCULOICM'
      Origin = '"FAT_VENDAS_ITENS"."BASECALCULOICM"'
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_ItensBASECALCULOSUBSTITUICAO: TFloatField
      DisplayLabel = 'Base C'#225'lculo ICMS Sub.'
      FieldName = 'BASECALCULOSUBSTITUICAO'
      Origin = '"FAT_VENDAS_ITENS"."BASECALCULOSUBSTITUICAO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_ItensALIQUOTA_EST: TFloatField
      DisplayLabel = 'Aliq. ICMS Est.'
      FieldName = 'ALIQUOTA_EST'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA_EST"'
    end
    object Vendas_ItensALIQUOTA_INT: TFloatField
      DisplayLabel = 'Aliq. ICMS InterEst.'
      FieldName = 'ALIQUOTA_INT'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA_INT"'
    end
    object Vendas_ItensCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"FAT_VENDAS_ITENS"."CFOP"'
      OnValidate = Vendas_ItensCFOPValidate
    end
    object Vendas_ItensCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      DisplayWidth = 100
      FieldName = 'COMPLEMENTO'
      Origin = '"FAT_VENDAS_ITENS"."COMPLEMENTO"'
      Size = 100
    end
    object Vendas_ItensSERVICO: TBlobField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO'
      Origin = '"FAT_VENDAS_ITENS"."SERVICO"'
      Size = 8
    end
    object Vendas_ItensNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"FAT_VENDAS_ITENS"."NUMERO"'
      OnValidate = Vendas_ItensNUMEROValidate
      Size = 6
    end
    object Vendas_ItensGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"FAT_VENDAS_ITENS"."GRADE"'
      OnValidate = Vendas_ItensGRADEValidate
      FixedChar = True
      Size = 4
    end
    object Vendas_ItensPRC_UNITARIO_FIS: TFloatField
      DisplayLabel = 'Unit. Fiscal'
      FieldName = 'PRC_UNITARIO_FIS'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO_FIS"'
      DisplayFormat = '###,###,##0.0000'
    end
    object Vendas_ItensQUANTIDADE_FIS: TFloatField
      DisplayLabel = 'Qtde Fiscal'
      FieldName = 'QUANTIDADE_FIS'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE_FIS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_ItensTOTAL_FISCAL: TFloatField
      DisplayLabel = 'Total Fiscal'
      FieldKind = fkCalculated
      FieldName = 'TOTAL_FISCAL'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_ItensLOTE: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = '"FAT_VENDAS_ITENS"."LOTE"'
      Size = 10
    end
    object Vendas_ItensCODIGO_LOTE: TIntegerField
      DisplayLabel = 'C'#243'd. Lote'
      FieldName = 'CODIGO_LOTE'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO_LOTE"'
    end
    object Vendas_ItensUTILIZA_LOTE: TIBStringField
      DisplayLabel = 'Utiliza Lote'
      FieldName = 'UTILIZA_LOTE'
      Origin = '"FAT_VENDAS_ITENS"."UTILIZA_LOTE"'
      FixedChar = True
      Size = 1
    end
    object Vendas_ItensGRADE1: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE1'
      Origin = '"EST_PRODUTOS_GRADES"."GRADE"'
      Size = 4
    end
    object Vendas_ItensNOME_COR: TIBStringField
      DisplayLabel = 'Nome Cor'
      FieldName = 'NOME_COR'
      Origin = '"EST_PRODUTOS_GRADES"."NOME_COR"'
      Size = 50
    end
    object Vendas_ItensNOME_MATERIAL: TIBStringField
      DisplayLabel = 'Material'
      FieldName = 'NOME_MATERIAL'
      Origin = '"EST_PRODUTOS_GRADES"."NOME_MATERIAL"'
      Size = 50
    end
    object Vendas_ItensNOME_PERFIL: TIBStringField
      DisplayLabel = 'Perfil'
      FieldName = 'NOME_PERFIL'
      Origin = '"EST_PRODUTOS_GRADES"."NOME_PERFIL"'
      Size = 50
    end
    object Vendas_ItensPRD_SERVICO: TIBStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'PRD_SERVICO'
      Origin = '"EST_PRODUTOS"."SERVICO"'
      FixedChar = True
      Size = 1
    end
    object Vendas_ItensPRC_UNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio L'#237'quido'
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,##0.000'
    end
    object Vendas_ItensPRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = Vendas_ItensPRODUTOValidate
      Size = 15
    end
    object Vendas_ItensSPRODUTO: TIBStringField
      FieldName = 'SPRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."SPRODUTO"'
      OnSetText = Vendas_ItensSPRODUTOSetText
      Size = 16
    end
  end
  object dsLink: TDataSource
    AutoEdit = False
    DataSet = Vendas
    Left = 86
    Top = 296
  end
  object Comissao_Item: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforePost = Comissao_ItemBeforePost
    OnNewRecord = Comissao_ItemNewRecord
    DeleteSQL.Strings = (
      'delete from fat_vendas_itens_comissoes'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into fat_vendas_itens_comissoes'
      
        '  (CNPJ, COD_ITEM, CODIGO, PERCENTUAL, PESSOA_FJ, PRODUTO, SEQUE' +
        'NCIA)'
      'values'
      
        '  (:CNPJ, :COD_ITEM, :CODIGO, :PERCENTUAL, :PESSOA_FJ, :PRODUTO,' +
        ' :SEQUENCIA)')
    RefreshSQL.Strings = (
      'Select * '
      'from fat_vendas_itens_comissoes '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from fat_vendas_itens_comissoes cmi'
      'where cmi.cnpj = :cnpj and cmi.cod_item = :codigo'
      'and cmi.produto = :produto and cmi.sequencia = :sequencia')
    ModifySQL.Strings = (
      'update fat_vendas_itens_comissoes'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_ITEM = :COD_ITEM,'
      '  CODIGO = :CODIGO,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PRODUTO = :PRODUTO,'
      '  SEQUENCIA = :SEQUENCIA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_ITENS_COMISSOES_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 120
    Top = 360
    object Comissao_ItemCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object Comissao_ItemCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Required = True
    end
    object Comissao_ItemCOD_ITEM: TIntegerField
      DisplayLabel = 'C'#243'd. Item Fat.'
      FieldName = 'COD_ITEM'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."COD_ITEM"'
    end
    object Comissao_ItemPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."PRODUTO"'
      Size = 15
    end
    object Comissao_ItemSEQUENCIA: TIntegerField
      DisplayLabel = 'Sequencia'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."SEQUENCIA"'
    end
    object Comissao_ItemPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."PESSOA_FJ"'
    end
    object Comissao_ItemPERCENTUAL: TFloatField
      DisplayLabel = 'Pct (%)'
      FieldName = 'PERCENTUAL'
      Origin = '"FAT_VENDAS_ITENS_COMISSOES"."PERCENTUAL"'
      DisplayFormat = '###,##0.00'
    end
    object Comissao_ItemLK_PESSOA: TStringField
      DisplayLabel = 'Pessoa'
      FieldKind = fkLookup
      FieldName = 'LK_PESSOA'
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME_RAZAO'
      KeyFields = 'PESSOA_FJ'
      Size = 50
      Lookup = True
    end
  end
  object dsComissaoLink: TDataSource
    DataSet = Vendas_Itens
    Left = 120
    Top = 328
  end
  object stgFrmVendas: TcxPropertiesStore
    Components = <
      item
        Component = GridItens
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
          'DragCursor'
          'DragKind'
          'DragMode'
          'DragOpening'
          'DragOpeningWaitTime'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'LevelTabs'
          'LookAndFeel'
          'Name'
          'ParentFont'
          'PopupMenu'
          'RootLevelOptions'
          'RootLevelStyles'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = GridItensLV
        Properties.Strings = (
          'Caption'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'GridView'
          'ImageIndex'
          'MaxDetailHeight'
          'Name'
          'Options'
          'Styles'
          'Tag'
          'Visible')
      end
      item
        Component = GridItensTVALIQUOTA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVALIQUOTA_EST
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVALIQUOTA_INT
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVBASECALCULOICM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVBASECALCULOSUBSTITUICAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCFOP
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCNPJ
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCODIGO_LOTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCOMPLEMENTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCTIE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVDESCONTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVFRACIONADO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVGRADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVGRADE1
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVICM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVICM_SUBS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVIPI
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVLOTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVMENSAGEM_REDUCAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVNOME_COR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVNOME_FIS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVNOME_MATERIAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVNOME_PERFIL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVNOME_PRODUTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVNUMERO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVORIGEM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPESO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPeso_Total
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPORC_DESC
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRC_CUSTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRC_UNIT_ORIGINAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRC_UNITARIO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRC_UNITARIO_FIS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRD_SERVICO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRODUTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRODUTOFIS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVQUANTIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVQUANTIDADE_FIS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVREDUCAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVSEQUENCIA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVSERVICO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVSPRODUTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVSUBUNIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVTotal
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVTOTAL_FISCAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVUNIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVUTILIZA_LOTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVVENDEDOR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVVOLUME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVVolume_Total
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end>
    StorageName = 'C:\Sistemas\HelpStore\FILTROS\stgFrmVendas.ini'
    Left = 332
    Top = 329
  end
  object PopupGrid: TcxGridPopupMenu
    Grid = GridItens
    PopupMenus = <>
    Left = 380
    Top = 329
  end
  object Vendas_Parc: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterPost = Vendas_ParcAfterPost
    BeforePost = Vendas_ParcBeforePost
    OnNewRecord = Vendas_ParcNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_VENDAS_PARCELAMENTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  VENCTO = :OLD_VENCTO')
    InsertSQL.Strings = (
      'insert into FAT_VENDAS_PARCELAMENTO'
      '  (CNPJ, CODIGO, VENCTO, PARCELA, VALOR, BOLETO, VALOR_EXTENSO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :VENCTO, :PARCELA, :VALOR, :BOLETO, :VALOR_EX' +
        'TENSO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  VENCTO,'
      '  PARCELA,'
      '  VALOR,'
      '  BOLETO,'
      '  VALOR_EXTENSO'
      'from FAT_VENDAS_PARCELAMENTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  VENCTO = :VENCTO')
    SelectSQL.Strings = (
      'select * from FAT_VENDAS_PARCELAMENTO'
      'WHERE CNPJ = :CNPJ AND'
      '               CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_VENDAS_PARCELAMENTO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  VENCTO = :VENCTO,'
      '  PARCELA = :PARCELA,'
      '  VALOR = :VALOR,'
      '  BOLETO = :BOLETO,'
      '  VALOR_EXTENSO = :VALOR_EXTENSO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  VENCTO = :OLD_VENCTO')
    DataSource = DsVendas
    Left = 478
    Top = 96
    object Vendas_ParcCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Vendas_ParcCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."CODIGO"'
      Required = True
    end
    object Vendas_ParcVENCTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'VENCTO'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."VENCTO"'
      EditMask = '!99/99/9999;1; '
    end
    object Vendas_ParcPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."PARCELA"'
      Size = 6
    end
    object Vendas_ParcVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."VALOR"'
      OnValidate = Vendas_ParcVALORValidate
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_ParcBOLETO: TIntegerField
      FieldName = 'BOLETO'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."BOLETO"'
    end
    object Vendas_ParcVALOR_EXTENSO: TIBStringField
      FieldName = 'VALOR_EXTENSO'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."VALOR_EXTENSO"'
      Size = 200
    end
  end
  object DsVendas: TDataSource
    AutoEdit = False
    DataSet = Vendas
    Left = 510
    Top = 96
  end
  object qryContratos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select ct.codigo, ct.descricao from ctr_contrato ct'
      'where ct.ativo = '#39'S'#39)
    Left = 476
    Top = 137
    object qryContratosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CTR_CONTRATO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContratosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CTR_CONTRATO"."DESCRICAO"'
      Size = 50
    end
  end
  object dsContrato: TDataSource
    AutoEdit = False
    DataSet = qryContratos
    Left = 516
    Top = 136
  end
end
