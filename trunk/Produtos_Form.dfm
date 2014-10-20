object FrmProdutos: TFrmProdutos
  Left = 692
  Top = 81
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Produtos '
  ClientHeight = 492
  ClientWidth = 621
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 621
    Height = 492
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
      Top = 458
      Width = 617
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 184
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Produtos'
      ParentFont = False
      Transparent = True
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 460
      Width = 617
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 617
        Height = 26
        Align = dalTop
        BarManager = BarManager
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 617
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object pc: TcxPageControl
      Left = 8
      Top = 43
      Width = 605
      Height = 446
      Cursor = crHandPoint
      ActivePage = Pg1
      HotTrack = True
      TabOrder = 1
      ClientRectBottom = 442
      ClientRectLeft = 4
      ClientRectRight = 601
      ClientRectTop = 27
      object Pg1: TcxTabSheet
        Caption = '  Cadastro  '
        OnEnter = Pg1Enter
        object Shape6: TShape
          Left = 0
          Top = 367
          Width = 460
          Height = 44
          Brush.Color = clBtnFace
          Pen.Color = clBtnShadow
        end
        object Shape7: TShape
          Left = -1
          Top = 349
          Width = 90
          Height = 17
          Brush.Color = clBtnShadow
          Pen.Color = clBtnShadow
        end
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 597
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object DBCoolText3: TDBText
          Left = 6
          Top = 370
          Width = 107
          Height = 19
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'QTD_UM'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBCoolText4: TDBText
          Left = 280
          Top = 387
          Width = 113
          Height = 21
          Alignment = taRightJustify
          DataField = 'QTD_UNIT'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object DBCoolText5: TDBText
          Left = 117
          Top = 374
          Width = 72
          Height = 13
          AutoSize = True
          DataField = 'NOME'
          DataSource = dsUnidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBCoolText1: TDBText
          Left = 286
          Top = 370
          Width = 107
          Height = 19
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'Estoque_Fisico'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object lblComp1: TDBText
          Left = 37
          Top = 387
          Width = 76
          Height = 19
          Alignment = taRightJustify
          AutoSize = True
          Color = clWhite
          DataField = 'COMPROMETIDO'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object btnMarca: TcxButton
          Left = 376
          Top = 190
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 21
          OnClick = btnMarcaClick
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
        object BtnUnidade: TcxButton
          Left = 376
          Top = 239
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 22
          OnClick = BtnUnidadeClick
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
        object btnModelo: TcxButton
          Left = 376
          Top = 165
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 23
          OnClick = btnModeloClick
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
        object btnSecao: TcxButton
          Left = 376
          Top = 142
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 24
          OnClick = btnSecaoClick
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
        object btnGrupo: TcxButton
          Left = 376
          Top = 91
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 25
          OnClick = btnGrupoClick
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
        object BtnMaterial: TcxButton
          Left = 376
          Top = 217
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 26
          OnClick = BtnMaterialClick
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
        object BtnCor: TcxButton
          Left = 482
          Top = 290
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 27
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
        object SpeedButton1: TcxButton
          Left = 185
          Top = 268
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 28
          OnClick = SpeedButton1Click
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
        object Label7: TcxLabel
          Left = 230
          Top = 244
          Caption = 'Und.'
          ParentFont = False
          Transparent = True
        end
        object Label8: TcxLabel
          Left = 50
          Top = 194
          Caption = 'Marca'
          ParentFont = False
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 52
          Top = 46
          Caption = 'Nome'
          ParentFont = False
          Transparent = True
        end
        object Label1: TcxLabel
          Left = 46
          Top = 21
          Caption = 'C'#243'digo'
          ParentFont = False
          Transparent = True
        end
        object Label3: TcxLabel
          Left = 212
          Top = 22
          Caption = 'Secund'#225'rio'
          ParentFont = False
          Transparent = True
        end
        object RxLabel1: TcxLabel
          Left = 3
          Top = 351
          Caption = 'Estoque Atual'
          ParentFont = False
          Transparent = True
        end
        object CoolLabel1: TcxLabel
          Left = 399
          Top = 391
          Caption = 'Unidades'
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object CoolLabel2: TcxLabel
          Left = 399
          Top = 374
          Caption = 'F'#237'sico'
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label48: TcxLabel
          Left = 14
          Top = 70
          Caption = 'Complemento'
          ParentFont = False
          Transparent = True
        end
        object lblComp2: TcxLabel
          Left = 118
          Top = 391
          Caption = 'Comprometido'
          ParentFont = False
          Transparent = True
        end
        object Label37: TcxLabel
          Left = 45
          Top = 169
          Caption = 'Modelo'
          ParentFont = False
          Transparent = True
        end
        object Label44: TcxLabel
          Left = 213
          Top = 268
          Caption = 'S'#233'rie'
          ParentFont = False
          Transparent = True
        end
        object Label50: TcxLabel
          Left = 50
          Top = 144
          Caption = 'Se'#231#227'o'
          ParentFont = False
          Transparent = True
        end
        object Label58: TcxLabel
          Left = 0
          Top = 245
          Caption = 'C'#243'd. Frabricante'
          ParentFont = False
          Transparent = True
        end
        object Label5: TcxLabel
          Left = 27
          Top = 120
          Caption = 'Sub-Grupo'
          ParentFont = False
          Transparent = True
        end
        object Label4: TcxLabel
          Left = 49
          Top = 95
          Caption = 'Grupo'
          ParentFont = False
          Transparent = True
        end
        object Label59: TcxLabel
          Left = 39
          Top = 220
          Caption = 'Material'
          ParentFont = False
          Transparent = True
        end
        object Label60: TcxLabel
          Left = 63
          Top = 268
          Caption = 'Cor'
          ParentFont = False
          Transparent = True
        end
        object cmbUnidade: TdxDBLookupEdit
          Left = 256
          Top = 240
          Width = 118
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
          TabOrder = 11
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'UNIDADE'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'SIGLA'
          ListSource = dsUnidade
          LookupKeyValue = Null
          StoredValues = 64
        end
        object cmbMarca: TdxDBLookupEdit
          Left = 83
          Top = 191
          Width = 291
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
          TabOrder = 8
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'MARCA'
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
        object EdNome: TdxDBEdit
          Left = 83
          Top = 41
          Width = 291
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = False
          TabOrder = 2
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DataSource
        end
        object EdCodigo: TdxDBEdit
          Left = 83
          Top = 17
          Width = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = False
          TabOrder = 0
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'CODIGO'
          DataSource = DataSource
        end
        object dxDBEdit3: TdxDBEdit
          Left = 270
          Top = 17
          Width = 104
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = False
          TabOrder = 1
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'CODIGO_2'
          DataSource = DataSource
        end
        object Panel2: TPanel
          Left = 459
          Top = 1
          Width = 138
          Height = 414
          Align = alRight
          Alignment = taRightJustify
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 20
          object BtnLote: TcxButton
            Left = 7
            Top = 7
            Width = 126
            Height = 26
            Cursor = crHandPoint
            Action = ActLote
            Caption = 'Lotes (F12)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Glyph.Data = {
              96010000424D9601000000000000760000002800000018000000180000000100
              0400000000002001000000000000000000001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333330000333333333333333333328888033333383333333
              3332222288033338888333333332222228033303833833333332262228033000
              0338333333322A62220333033038333333332222283333333038333333333222
              2333333330333333333333333333333330333333883333333333333333333338
              8883333333333888888833880888333333333888888838805088833333380000
              00883309150883388888C44440883099915033333078CC4440883DD999153000
              0003C6C4408833DF998333333033CE6C4088333DD83333333333CCCCC0333333
              D333333333333333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
          end
          object SpeedButton2: TcxButton
            Left = 7
            Top = 35
            Width = 126
            Height = 26
            Cursor = crHandPoint
            Action = ActGrade
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777700000007777777770000000000000007777777770FFFFFF000000007777
              777770F8888F000000007777777770FFFFFF000000007777777770F8888F0000
              00007444444440FFFFFF000000007488888880F8888F000000007477777770FF
              FFFF000000007470070070000000000000007477777777774777700000007470
              0700700747777000000074777777777747747000000074444444444447444000
              000074F44F44F44F477470000000744444444444477770000000777777777777
              777770000000}
          end
          object SpeedButton3: TcxButton
            Left = 7
            Top = 63
            Width = 126
            Height = 26
            Cursor = crHandPoint
            Caption = 'Tributa'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = SpeedButton3Click
            Glyph.Data = {
              42010000424D4201000000000000760000002800000011000000110000000100
              040000000000CC00000000000000000000001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              7777700000007777777777777777700000007444444444444777700000007488
              8888888847777000000074777777770747777000000074700700700047777000
              000074777777770007777000000074700700700B80777000000074777777770B
              707770000000744444444440B8077000000074F44F44F440B707700000007444
              444444440B80700000007777777777770B807000000077777777777770050000
              0000777777777777705500000000777777777777770070000000777777777777
              777770000000}
          end
          object Label47: TcxLabel
            Left = 17
            Top = 166
            Caption = 'Ctrl + M '#13#10'Inserir por Modelo'
            ParentFont = False
            Transparent = True
          end
        end
        object dxDBEdit11: TdxDBEdit
          Left = 83
          Top = 66
          Width = 291
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = False
          TabOrder = 3
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = DataSource
        end
        object cmbModelo: TdxDBLookupEdit
          Left = 83
          Top = 167
          Width = 291
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'MODELO'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          CanDeleteText = True
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = dsModelo
          LookupKeyValue = Null
          StoredValues = 64
        end
        object dxDBEdit1: TdxDBEdit
          Left = 240
          Top = 266
          Width = 134
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = False
          TabOrder = 13
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'SERIE'
          DataSource = DataSource
        end
        object cmbSecao: TdxDBLookupEdit
          Left = 83
          Top = 142
          Width = 291
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
          TabOrder = 6
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'SECAO'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          CanDeleteText = True
          Revertable = True
          KeyFieldName = 'COD_SECAO'
          ListSource = dsSecoes
          LookupKeyValue = Null
          StoredValues = 64
        end
        object dxDBEdit5: TdxDBEdit
          Left = 83
          Top = 240
          Width = 141
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = False
          TabOrder = 10
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'CODIGO_FABRICANTE'
          DataSource = DataSource
        end
        object cmbSubgrupo: TdxDBLookupEdit
          Left = 83
          Top = 116
          Width = 291
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
          TabOrder = 5
          OnEnter = EdCodigoEnter
          OnExit = cmbSubgrupoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'SUBGRUPO'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'SUBGRUPO'
          ListSource = dsSubGrupos
          LookupKeyValue = Null
          StoredValues = 64
        end
        object cmbGrupo: TdxDBLookupEdit
          Left = 83
          Top = 91
          Width = 291
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
          TabOrder = 4
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'GRUPO'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = dsGrupos
          LookupKeyValue = Null
          StoredValues = 64
        end
        object dxDBCheckEdit2: TdxDBCheckEdit
          Left = 271
          Top = 313
          Width = 60
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 19
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          OnKeyPress = dxDBCheckEdit2KeyPress
          Alignment = taLeftJustify
          Caption = 'Ativo '
          DataField = 'ATIVO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit5: TdxDBCheckEdit
          Left = 186
          Top = 313
          Width = 84
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 18
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taLeftJustify
          Caption = 'Possui Lote'
          DataField = 'POSSUI_LOTE'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit3: TdxDBCheckEdit
          Left = 186
          Top = 294
          Width = 62
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 15
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taLeftJustify
          Caption = 'Pes'#225'vel'
          DataField = 'PROD_PESAVEL'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object cbEtiqueta: TdxDBCheckEdit
          Left = 79
          Top = 294
          Width = 99
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 14
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taLeftJustify
          Caption = 'Emite Etiqueta'
          DataField = 'ETIQUETA_ENT'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit6: TdxDBCheckEdit
          Left = 271
          Top = 294
          Width = 108
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 16
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taLeftJustify
          Caption = 'Complemento NF'
          DataField = 'COMPLEMENTO_NF'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit9: TdxDBCheckEdit
          Left = 79
          Top = 313
          Width = 62
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 17
          OnEnter = EdCodigoEnter
          OnExit = dxDBCheckEdit9Exit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taLeftJustify
          Caption = 'Servi'#231'o'
          DataField = 'SERVICO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object CmbMaterial: TdxDBLookupEdit
          Left = 83
          Top = 215
          Width = 291
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
          TabOrder = 9
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'MATERIAL'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = DsMaterial
          LookupKeyValue = Null
          StoredValues = 64
        end
        object CmbCor: TdxDBLookupEdit
          Left = 83
          Top = 266
          Width = 102
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
          TabOrder = 12
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'COR'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = DsCor
          LookupKeyValue = Null
          StoredValues = 64
        end
      end
      object Pg2: TcxTabSheet
        Caption = '  Estoque  '
        OnEnter = Pg2Enter
        object Shape2: TShape
          Left = 0
          Top = 0
          Width = 597
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object Shape9: TShape
          Left = 4
          Top = 396
          Width = 333
          Height = 1
          Pen.Color = clBtnShadow
        end
        object DBCoolText7: TDBText
          Left = 3
          Top = 372
          Width = 111
          Height = 21
          AutoSize = True
          DataField = 'NOME'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label11: TcxLabel
          Left = 26
          Top = 249
          Caption = 'Quantidade'
          ParentFont = False
          Transparent = True
        end
        object Label12: TcxLabel
          Left = 221
          Top = 250
          Caption = 'Quantidade 2'
          ParentFont = False
          Transparent = True
        end
        object Label14: TcxLabel
          Left = 15
          Top = 24
          Caption = 'Localiza'#231#227'o 1'
          ParentFont = False
          Transparent = True
        end
        object Label15: TcxLabel
          Left = 15
          Top = 49
          Caption = 'Localiza'#231#227'o 2'
          ParentFont = False
          Transparent = True
        end
        object Label16: TcxLabel
          Left = 445
          Top = 21
          Caption = 'Est Min A.'
          ParentFont = False
          Transparent = True
        end
        object Label17: TcxLabel
          Left = 441
          Top = 45
          Caption = 'Est Max A.'
          ParentFont = False
          Transparent = True
        end
        object Label20: TcxLabel
          Left = 13
          Top = 123
          Caption = #218'ltima Compra'
          ParentFont = False
          Transparent = True
        end
        object Label21: TcxLabel
          Left = 193
          Top = 123
          Caption = 'Qtd. '#218'ltima Compra'
          ParentFont = False
          Transparent = True
        end
        object Label22: TcxLabel
          Left = 18
          Top = 148
          Caption = #218'ltima Venda'
          ParentFont = False
          Transparent = True
        end
        object Label32: TcxLabel
          Left = 227
          Top = 148
          Caption = 'Peso L'#237'quido'
          ParentFont = False
          Transparent = True
        end
        object Label38: TcxLabel
          Left = 7
          Top = 173
          Caption = 'Volume L'#237'quido'
          ParentFont = False
          Transparent = True
        end
        object Label18: TcxLabel
          Left = 27
          Top = 198
          Caption = 'Fornecedor'
          ParentFont = False
          Transparent = True
        end
        object Label36: TcxLabel
          Left = 210
          Top = 172
          Caption = #218'lt. Atu. Pre'#231'os'
          ParentFont = False
          Transparent = True
        end
        object Label39: TcxLabel
          Left = 416
          Top = 122
          Caption = 'Qtde Pedida'
          ParentFont = False
          Transparent = True
        end
        object Label40: TcxLabel
          Left = 408
          Top = 146
          Caption = 'Prev. Entrega'
          ParentFont = False
          Transparent = True
        end
        object Label45: TcxLabel
          Left = 434
          Top = 170
          Caption = 'Validade'
          ParentFont = False
          Transparent = True
        end
        object Label49: TcxLabel
          Left = 328
          Top = 198
          Caption = 'Ult. Fornecedor'
          ParentFont = False
          Transparent = True
        end
        object Label42: TcxLabel
          Left = 25
          Top = 99
          Caption = 'Est. M'#237'nimo'
          ParentFont = False
          Transparent = True
        end
        object Label43: TcxLabel
          Left = 228
          Top = 99
          Caption = 'Est. M'#225'ximo'
          ParentFont = False
          Transparent = True
        end
        object Label13: TcxLabel
          Left = 15
          Top = 74
          Caption = 'Localiza'#231#227'o 3'
          ParentFont = False
          Transparent = True
        end
        object Label57: TcxLabel
          Left = 410
          Top = 72
          Caption = 'C'#243'digo NCM'
          ParentFont = False
          Transparent = True
        end
        object EdQtdade1: TdxDBEdit
          Left = 92
          Top = 245
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
          Style.HotTrack = True
          TabOrder = 17
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QTDADE_1'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object EdQtdade2: TdxDBEdit
          Left = 292
          Top = 245
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
          Style.HotTrack = True
          TabOrder = 18
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QTDADE_2'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object edLocalizacao1: TdxDBEdit
          Left = 92
          Top = 272
          Width = 290
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 20
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'LOCALIZACAO_1'
          DataSource = DataSource
        end
        object edLocalizacao2: TdxDBEdit
          Left = 92
          Top = 297
          Width = 290
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 22
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'LOCALIZACAO_2'
          DataSource = DataSource
        end
        object b: TdxDBEdit
          Left = 495
          Top = 16
          Width = 75
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 26
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QTDADE_1'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object edEstoqueMax: TdxDBEdit
          Left = 495
          Top = 41
          Width = 75
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 27
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QTDADE_1'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object edUltCompra: TdxDBEdit
          Left = 92
          Top = 118
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
          Style.HotTrack = True
          TabOrder = 5
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'DT_ULT_COMPRA'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object edQtdUltCompra: TdxDBEdit
          Left = 292
          Top = 118
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
          Style.HotTrack = True
          TabOrder = 6
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QT_ULT_COMPRA'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object edUltVenda: TdxDBEdit
          Left = 92
          Top = 143
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
          Style.HotTrack = True
          TabOrder = 8
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'DT_ULT_VENDA'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object edLocalizacao3: TdxDBEdit
          Left = 92
          Top = 321
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
          TabOrder = 24
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'LOCALIZACAO_3'
          DataSource = DataSource
        end
        object dxDBCheckEdit1: TdxDBCheckEdit
          Left = 126
          Top = 349
          Width = 142
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 23
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taRightJustify
          Caption = 'Aceita Estoque Negativo'
          DataField = 'NEG_QTDADE_2'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object CmbFornecedor: TdxDBLookupEdit
          Left = 92
          Top = 193
          Width = 229
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
          Style.HotTrack = True
          Style.Shadow = False
          TabOrder = 14
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'FORNECEDOR'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME_RAZAO'
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = DsFornecedor
          LookupKeyValue = Null
          StoredValues = 64
        end
        object dxDBEdit4: TdxDBEdit
          Left = 292
          Top = 167
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
          Style.HotTrack = True
          TabOrder = 12
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'DT_ULT_ATU_PRECO'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBCheckEdit4: TdxDBCheckEdit
          Left = 15
          Top = 349
          Width = 110
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 21
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taRightJustify
          Caption = 'Vende Fracionado   '
          DataField = 'VENDE_FRACIONADO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBEdit6: TdxDBEdit
          Left = 480
          Top = 117
          Width = 90
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
          Style.HotTrack = True
          TabOrder = 7
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QNTDE_PEDIDA'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit7: TdxDBEdit
          Left = 480
          Top = 141
          Width = 90
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
          Style.HotTrack = True
          TabOrder = 10
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PREVISAO_ENTREGA'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBCheckEdit8: TdxDBCheckEdit
          Left = 398
          Top = 259
          Width = 176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 19
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taRightJustify
          Caption = 'N'#227'o Atualiza com Arq. Externo?'
          DataField = 'ATUALIZA_ARQ_EXTERNO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBEdit8: TdxDBEdit
          Left = 480
          Top = 165
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 13
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'VALIDADE'
          DataSource = DataSource
        end
        object dxDBEdit9: TdxDBEdit
          Left = 292
          Top = 143
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 9
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'PESO_LIQ'
          DataSource = DataSource
        end
        object dxDBEdit10: TdxDBEdit
          Left = 92
          Top = 167
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 11
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'VOLUME'
          DataSource = DataSource
        end
        object dxDBLookupEdit1: TdxDBLookupEdit
          Left = 408
          Top = 193
          Width = 162
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
          Style.HotTrack = True
          Style.Shadow = False
          TabOrder = 15
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'ULTIMO_FORNECEDOR'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME_RAZAO'
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = DsFornecedor
          LookupKeyValue = Null
          StoredValues = 64
        end
        object dxDBEdit12: TdxDBEdit
          Left = 92
          Top = 93
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 3
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'EST_MIN'
          DataSource = DataSource
        end
        object dxDBEdit13: TdxDBEdit
          Left = 292
          Top = 93
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 4
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'EST_MAX'
          DataSource = DataSource
        end
        object dxDBCheckEdit7: TdxDBCheckEdit
          Left = 269
          Top = 349
          Width = 180
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 25
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taRightJustify
          Caption = 'Valida Multiplos Qtde Min. Venda'
          DataField = 'VALIDA_MULT_QTDE_MIN'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBEdit2: TdxDBEdit
          Left = 472
          Top = 66
          Width = 99
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 28
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'CODIGO_NCM'
          DataSource = DataSource
        end
        object dxDBCheckEdit10: TdxDBCheckEdit
          Left = 451
          Top = 280
          Width = 123
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 29
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          OnKeyPress = dxDBCheckEdit10KeyPress
          Alignment = taRightJustify
          Caption = 'Compartilha C/Filiais'
          DataField = 'SINCRONIZA_FILIAIS'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object cxLabel1: TcxLabel
          Left = 21
          Top = 274
          Caption = 'Comp. Loc 1'
          ParentFont = False
          Transparent = True
        end
        object cxLabel2: TcxLabel
          Left = 21
          Top = 299
          Caption = 'Comp. Loc 2'
          ParentFont = False
          Transparent = True
        end
        object cxLabel3: TcxLabel
          Left = 21
          Top = 324
          Caption = 'Comp. Loc 3'
          ParentFont = False
          Transparent = True
        end
        object btnLocalizacao1: TcxButton
          Left = 383
          Top = 23
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 54
          OnClick = btnLocalizacao1Click
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
        object cbLocalizacao1: TcxDBLookupComboBox
          Left = 91
          Top = 22
          DataBinding.DataField = 'COD_LOCALIZACAO_1'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRICAO'
            end>
          Properties.ListSource = dsLocalizacao1
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.Kind = lfOffice11
          TabOrder = 0
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Width = 292
        end
        object cbLocalizacao2: TcxDBLookupComboBox
          Left = 91
          Top = 45
          DataBinding.DataField = 'COD_LOCALIZACAO_2'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRICAO'
            end>
          Properties.ListSource = dsLocalizacao2
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.Kind = lfOffice11
          TabOrder = 1
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Width = 292
        end
        object cbLocalizacao3: TcxDBLookupComboBox
          Left = 91
          Top = 69
          DataBinding.DataField = 'COD_LOCALIZACAO_3'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRICAO'
            end>
          Properties.ListSource = dsLocalizacao3
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.LookAndFeel.Kind = lfOffice11
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.Kind = lfOffice11
          TabOrder = 2
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Width = 292
        end
        object btnLocalizacao2: TcxButton
          Left = 383
          Top = 47
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 55
          OnClick = btnLocalizacao2Click
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
        object btnLocalizacao3: TcxButton
          Left = 383
          Top = 71
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 56
          OnClick = btnLocalizacao3Click
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
        object cmbTecnico: TcxDBLookupComboBox
          Left = 91
          Top = 219
          DataBinding.DataField = 'COD_TECNICO'
          DataBinding.DataSource = DataSource
          ParentFont = False
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = dsTecnico
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 16
          OnKeyDown = EdCodigoKeyDown
          Width = 231
        end
        object cxLabel4: TcxLabel
          Left = 39
          Top = 220
          Caption = 'T'#233'cnico'
          ParentFont = False
          Transparent = True
        end
      end
      object Pg3: TcxTabSheet
        Caption = '  Custos  '
        OnEnter = Pg3Enter
        object Shape3: TShape
          Left = 0
          Top = 0
          Width = 597
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object Shape4: TShape
          Left = 4
          Top = 396
          Width = 333
          Height = 1
          Pen.Color = clBtnShadow
        end
        object DBText1: TDBText
          Left = 1
          Top = 372
          Width = 73
          Height = 21
          AutoSize = True
          DataField = 'NOME'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label29: TcxLabel
          Left = 5
          Top = 96
          Caption = 'Prc. de Venda M'#233'dio'
          ParentFont = False
          Transparent = True
        end
        object Label27: TcxLabel
          Left = 283
          Top = 41
          Caption = 'Pre'#231'o de Venda'
          ParentFont = False
          Transparent = True
        end
        object Label25: TcxLabel
          Left = 32
          Top = 172
          Caption = 'Custo Anterior'
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label23: TcxLabel
          Left = 21
          Top = 41
          Caption = 'Margem de Lucro'
          ParentFont = False
          Transparent = True
        end
        object Label28: TcxLabel
          Left = 241
          Top = 96
          Caption = 'Pre'#231'o de Venda Anterior'
          ParentFont = False
          Transparent = True
        end
        object Label26: TcxLabel
          Left = 299
          Top = 68
          Caption = 'Custo M'#233'dio'
          ParentFont = False
          Transparent = True
        end
        object Label24: TcxLabel
          Left = 264
          Top = 14
          Caption = 'Custo. Rep. Liquido'
          ParentFont = False
          Transparent = True
        end
        object Label33: TcxLabel
          Left = 241
          Top = 120
          Caption = 'Frete'
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label34: TcxLabel
          Left = 385
          Top = 120
          Caption = 'IPI'
          ParentFont = False
          Transparent = True
        end
        object Label19: TcxLabel
          Left = 20
          Top = 14
          Hint = 'Custo Bruto'
          Caption = 'Custo Rep. Bruto'
          ParentFont = False
          Transparent = True
        end
        object Label41: TcxLabel
          Left = 315
          Top = 145
          Caption = 'Qtde M'#225'x. Venda'
          ParentFont = False
          Transparent = True
          Visible = False
        end
        object Label46: TcxLabel
          Left = 26
          Top = 68
          Caption = 'Custo Indexado'
          ParentFont = False
          Transparent = True
        end
        object Label35: TcxLabel
          Left = 23
          Top = 120
          Caption = 'Qtde Min. Venda'
          ParentFont = False
          Transparent = True
        end
        object Label64: TcxLabel
          Left = 11
          Top = 145
          Caption = 'Vencto. Prc. Venda'
          ParentFont = False
          Transparent = True
        end
        object edPrcVendaMed: TdxDBCalcEdit
          Left = 109
          Top = 89
          Width = 121
          Hint = 'Pre'#231'o m'#233'dio de venda, calculado automaticamente.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PRC_VENDA_MED'
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
        object edCustoAnt: TdxDBCalcEdit
          Left = 108
          Top = 167
          Width = 121
          Hint = 'Pre'#231'o de Custo, anterior a '#250'ltima modifica'#231#227'o.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 12
          Visible = False
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PRC_CUSTO_ANT'
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
        object EdMargem: TdxDBCalcEdit
          Left = 109
          Top = 35
          Width = 121
          Hint = 'Margem de lucro.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'MARGEM_BRUTA'
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
        object edPrcVendaAnt: TdxDBCalcEdit
          Left = 364
          Top = 89
          Width = 121
          Hint = 'Pre'#231'o de venda, anterior a '#250'ltima modifica'#231#227'o.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PRC_VENDA_ANT'
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
        object edCustoMed: TdxDBCalcEdit
          Left = 364
          Top = 62
          Width = 121
          Hint = 'Custo m'#233'dio do produto(calculado automaticamente).'
          Color = clMenu
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 5
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PRC_CUSTO_MED'
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
        object edPrcReposicao: TdxDBCalcEdit
          Left = 364
          Top = 9
          Width = 121
          Hint = 'Pre'#231'o de Custo.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PRC_REPOS'
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
        object edFrete: TdxDBCalcEdit
          Left = 273
          Top = 115
          Width = 85
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 9
          Visible = False
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PERC_FRETE'
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
        object edIPI: TdxDBCalcEdit
          Left = 405
          Top = 115
          Width = 80
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 10
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          OnKeyPress = edIPIKeyPress
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
        end
        object dxDBCalcEdit1: TdxDBCalcEdit
          Left = 109
          Top = 9
          Width = 121
          Hint = 'Pre'#231'o de custo na ultima compra.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'CUSTO_AQUISICAO'
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
        object dxDBCalcEdit2: TdxDBCalcEdit
          Left = 405
          Top = 140
          Width = 80
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 11
          Visible = False
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QNTDE_MAXIMA_VENDA'
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
        object dxDBCalcEdit6: TdxDBCalcEdit
          Left = 109
          Top = 62
          Width = 121
          Hint = 'Custo indexado.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'CUSTO_INDEXADO'
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
        object dxDBCalcEdit3: TdxDBCalcEdit
          Left = 364
          Top = 35
          Width = 121
          Hint = 'Pre'#231'o de venda, anterior a '#250'ltima modifica'#231#227'o.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PRC_VENDA'
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
          Left = 109
          Top = 115
          Width = 121
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QNTDE_MINIMA_VENDA'
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
        object edtDataBase: TdxDBDateEdit
          Left = 109
          Top = 140
          Width = 120
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
          DataField = 'VENCTO_PRC_VENDA'
          DataSource = DataSource
          DateValidation = True
          UseEditMask = True
          StoredValues = 4
        end
      end
      object dxTabSheet2: TcxTabSheet
        Caption = 'Tributa'#231#245'es'
        object GroupBox1: TGroupBox
          Left = 15
          Top = 10
          Width = 529
          Height = 383
          Caption = 'ICMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object BtnReducao: TcxButton
            Left = 392
            Top = 70
            Width = 23
            Height = 22
            Cursor = crHandPoint
            TabOrder = 13
            OnClick = BtnReducaoClick
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
          object Label6: TcxLabel
            Left = 55
            Top = 74
            Caption = 'Redu'#231#227'o'
            ParentFont = False
            Transparent = True
          end
          object Label10: TcxLabel
            Left = 7
            Top = 47
            Caption = 'Trib. Interestadual'
            ParentFont = False
            Transparent = True
          end
          object Label31: TcxLabel
            Left = 398
            Top = 46
            Caption = '%'
            ParentFont = False
            Transparent = True
          end
          object Label30: TcxLabel
            Left = 398
            Top = 22
            Caption = '%'
            ParentFont = False
            Transparent = True
          end
          object Label9: TcxLabel
            Left = 31
            Top = 22
            Caption = 'Trib. Estadual'
            ParentFont = False
            Transparent = True
          end
          object Label56: TcxLabel
            Left = 42
            Top = 100
            Caption = 'Modalidade'
            ParentFont = False
            Transparent = True
          end
          object Label51: TcxLabel
            Left = 54
            Top = 256
            Caption = 'Trib. ECF'
            ParentFont = False
            Transparent = True
          end
          object Label61: TcxLabel
            Left = 80
            Top = 126
            Caption = 'PIS'
            ParentFont = False
            Transparent = True
          end
          object Label62: TcxLabel
            Left = 58
            Top = 151
            Caption = 'COFINS'
            ParentFont = False
            Transparent = True
          end
          object Label63: TcxLabel
            Left = 82
            Top = 176
            Caption = 'IPI'
            ParentFont = False
            Transparent = True
          end
          object Label65: TcxLabel
            Left = 64
            Top = 204
            Caption = 'CSOSN'
            ParentFont = False
            Transparent = True
          end
          object Label66: TcxLabel
            Left = 42
            Top = 229
            Caption = 'C'#243'd. GETIN'
            ParentFont = False
            Transparent = True
          end
          object cmbReducao: TdxDBLookupEdit
            Left = 102
            Top = 68
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
            Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
            Style.HotTrack = False
            Style.Shadow = False
            TabOrder = 4
            OnEnter = EdCodigoEnter
            OnExit = cmbReducaoExit
            OnKeyDown = EdCodigoKeyDown
            DataField = 'REDUCAO'
            DataSource = DataSource
            ReadOnly = False
            ClearKey = 46
            ListFieldName = 'MENSAGEM_NF'
            CanDeleteText = True
            Revertable = True
            KeyFieldName = 'CODIGO'
            ListSource = dsReducao
            LookupKeyValue = Null
            StoredValues = 64
          end
          object cmbCTIE: TdxDBPickEdit
            Left = 102
            Top = 42
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
            Style.ButtonTransparence = ebtNone
            Style.HotTrack = False
            TabOrder = 2
            OnEnter = CmbCTEEnter
            OnExit = CmbCTEExit
            OnKeyDown = EdCodigoKeyDown
            Alignment = taLeftJustify
            DataField = 'CTIE'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '1 - Tributada Integralmente'
              '2 - Tributada com Redu'#231#227'o na Base de C'#225'lculo'
              '3 - Isento de ICMS'
              '4 - ICMS n'#227'o incid'#234'ncia'
              '5 - Diferido'
              '6 - Substitui'#231#227'o Tribut'#225'ria'
              '7 - ISS')
            StoredValues = 1
          end
          object dxDBCalcEdit9: TdxDBCalcEdit
            Left = 415
            Top = 41
            Width = 55
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 3
            OnEnter = EdCodigoEnter
            OnExit = EdCodigoExit
            OnKeyDown = EdCodigoKeyDown
            DataField = 'TRIB_ALIQ_INT'
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
          object dxDBCalcEdit8: TdxDBCalcEdit
            Left = 415
            Top = 17
            Width = 55
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 1
            OnEnter = EdCodigoEnter
            OnExit = EdCodigoExit
            OnKeyDown = EdCodigoKeyDown
            DataField = 'TRIB_ALIQ_EST'
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
          object CmbCTE: TdxDBPickEdit
            Left = 102
            Top = 17
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
            Style.ButtonTransparence = ebtNone
            Style.HotTrack = False
            TabOrder = 0
            OnEnter = CmbCTEEnter
            OnExit = CmbCTEExit
            OnKeyDown = EdCodigoKeyDown
            Alignment = taLeftJustify
            DataField = 'CTE'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '1 - Tributada Integralmente'
              '2 - Tributada com Redu'#231#227'o na Base de C'#225'lculo'
              '3 - Isento de ICMS'
              '4 - ICMS n'#227'o incid'#234'ncia'
              '5 - Diferido'
              '6 - Substitui'#231#227'o Tribut'#225'ria'
              '7 - ISS')
            StoredValues = 1
          end
          object dxDBPickEdit1: TdxDBPickEdit
            Left = 102
            Top = 94
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
            Style.ButtonTransparence = ebtNone
            Style.HotTrack = False
            TabOrder = 5
            OnEnter = CmbCTEEnter
            OnExit = CmbCTEExit
            OnKeyDown = EdCodigoKeyDown
            Alignment = taLeftJustify
            DataField = 'TRIB_MODALIDADE'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              'Margem Valor Agregado (%).'
              'Pauta (Valor).'
              'Pre'#231'o Tabelado M'#225'x. (Valor). '
              'Valor da opera'#231#227'o.')
            StoredValues = 1
          end
          object CBECF: TDBComboBox
            Left = 102
            Top = 253
            Width = 65
            Height = 21
            BevelInner = bvNone
            BevelOuter = bvNone
            DataField = 'ALIQUOTA_ECF'
            DataSource = DataSource
            ItemHeight = 13
            Items.Strings = (
              'T1'
              'T2'
              'T3'
              'T4'
              'T5'
              'T6'
              'II'
              'FF')
            TabOrder = 6
            OnEnter = CBECFEnter
            OnExit = CBECFExit
            OnKeyDown = EdCodigoKeyDown
            OnKeyPress = CBECFKeyPress
          end
          object cbComplemento: TdxDBCheckEdit
            Left = 312
            Top = 230
            Width = 82
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            TabOrder = 7
            OnEnter = EdCodigoEnter
            OnExit = EdCodigoExit
            OnKeyDown = EdCodigoKeyDown
            OnKeyPress = cbComplementoKeyPress
            Alignment = taLeftJustify
            Caption = 'Debita ICMS '
            DataField = 'DEBITA_ICMS'
            DataSource = DataSource
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            StoredValues = 1
          end
          object dxDBPickEdit2: TdxDBPickEdit
            Left = 102
            Top = 120
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
            Style.ButtonTransparence = ebtNone
            Style.HotTrack = False
            TabOrder = 8
            OnEnter = CmbCTEEnter
            OnExit = CmbCTEExit
            OnKeyDown = EdCodigoKeyDown
            Alignment = taLeftJustify
            DataField = 'TRIB_PIS'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '01 - Op. Tributavel '
              '02 - Op. Tributavel - Aliq. Diferenciada'
              '03 - Op. Tributavel - Aliq. por Unidade de Produto'
              '04 - Op. Tributavel - Monofasica'
              '06 - Op. Tributavel - Aliq. Zero'
              '07 - Op. Isenta'
              '08 - Op. Sem Incidencia'
              '09 - Op. Suspensao '
              '99 - Outras Operacoes')
            StoredValues = 1
          end
          object dxDBPickEdit3: TdxDBPickEdit
            Left = 102
            Top = 145
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
            Style.ButtonTransparence = ebtNone
            Style.HotTrack = False
            TabOrder = 9
            OnEnter = CmbCTEEnter
            OnExit = CmbCTEExit
            OnKeyDown = EdCodigoKeyDown
            Alignment = taLeftJustify
            DataField = 'TRIB_COFINS'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '01 - Op. Tributavel '
              '02 - Op. Tributavel - Aliq. Diferenciada'
              '03 - Op. Tributavel - Aliq. por Unidade de Produto'
              '04 - Op. Tributavel - Monofasica'
              '06 - Op. Tributavel - Aliq. Zero'
              '07 - Op. Isenta'
              '08 - Op. Sem Incidencia'
              '09 - Op. Suspensao '
              '99 - Outras Operacoes')
            StoredValues = 1
          end
          object dxDBPickEdit4: TdxDBPickEdit
            Left = 102
            Top = 171
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
            Style.ButtonTransparence = ebtNone
            Style.HotTrack = False
            TabOrder = 10
            OnEnter = CmbCTEEnter
            OnExit = CmbCTEExit
            OnKeyDown = EdCodigoKeyDown
            Alignment = taLeftJustify
            DataField = 'TRIB_IPI'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '00 - Entrada com recuperacao de credito'
              '01 - Entrada tributada com aliquota zero'
              '02 - Entrada isenta'
              '03 - Entrada nao-tributada'
              '04 - Entrada imune'
              '05 - Entrada com suspensao'
              '49 - Outras entradas'
              '50 - Saida tributada'
              '51 - Saida tributada com aliquota zero'
              '52 - Saida isenta'
              '53 - Saida nao-tributada'
              '54 - Saida imune'
              '55 - Saida com suspensao'
              '99 - Outras Saidas')
            StoredValues = 1
          end
          object lkCSOSN: TdxDBPickEdit
            Left = 102
            Top = 198
            Width = 290
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            PopupMenu = FrmMain.Pop
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            Style.ButtonTransparence = ebtNone
            Style.HotTrack = False
            TabOrder = 11
            OnEnter = CmbCTEEnter
            OnExit = CmbCTEExit
            OnKeyDown = EdCodigoKeyDown
            Alignment = taLeftJustify
            DataField = 'CSOSN'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '101 - Tributado com permiss'#227'o de cr'#233'dito'
              '102 - Tributado sem permiss'#227'o de cr'#233'dito'
              '103 - Isen'#231#227'o de icms por faixa de receita bruta'
              
                '201 - Tributado com permiss'#227'o de cr'#233'dito e com cobran'#231'a do ICMS ' +
                'por ST'
              
                '202 - Tributado sem permiss'#227'o de cr'#233'dito e com cobran'#231'a do ICMS ' +
                'por ST'
              
                '203 - Isen'#231#227'o do ICMS para faixa de receita bruta e com combran'#231 +
                'a de ICMS por ST'
              '300 - Imune'
              '400 - N'#227'o tributado')
            StoredValues = 1
          end
          object dxDBEdit14: TdxDBEdit
            Left = 102
            Top = 225
            Width = 120
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
            OnEnter = EdCodigoEnter
            OnExit = EdCodigoExit
            OnKeyDown = EdCodigoKeyDown
            CharCase = ecUpperCase
            DataField = 'COD_GETIN'
            DataSource = DataSource
          end
        end
      end
      object dxTabSheet1: TcxTabSheet
        Caption = 'Convers'#227'o de Medidas'
        object btnUndPrimaria: TcxButton
          Left = 289
          Top = 29
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 4
          OnClick = btnUndPrimariaClick
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
        object btnUndCarga: TcxButton
          Left = 290
          Top = 106
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 5
          OnClick = btnUndCargaClick
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
        object Label53: TcxLabel
          Left = 7
          Top = 31
          Caption = 'Unidade Prim'#225'ria'
          ParentFont = False
          Transparent = True
        end
        object Label52: TcxLabel
          Left = 132
          Top = 59
          Caption = 'Fator Convers'#227'o'
          ParentFont = False
          Transparent = True
        end
        object Label54: TcxLabel
          Left = 76
          Top = 85
          Caption = 'Qtde. Padr'#227'o Carregamento'
          ParentFont = False
          Transparent = True
        end
        object Label55: TcxLabel
          Left = 37
          Top = 110
          Caption = 'Und. Carregamento'
          ParentFont = False
          Transparent = True
        end
        object cmbUndPrimaria: TdxDBLookupEdit
          Left = 91
          Top = 28
          Width = 197
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
          TabOrder = 0
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'UND_PRIMARIA'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'SIGLA'
          ListSource = dsUnidadePrimaria
          LookupKeyValue = Null
          StoredValues = 64
        end
        object dxDBCalcEdit5: TdxDBCalcEdit
          Left = 218
          Top = 54
          Width = 71
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'FATOR_CONVERSAO'
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
        object dxDBCalcEdit7: TdxDBCalcEdit
          Left = 218
          Top = 80
          Width = 71
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QNTDE_PDR_CARGA'
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
        object cmbUndCarga: TdxDBLookupEdit
          Left = 137
          Top = 105
          Width = 152
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
          TabOrder = 3
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          OnKeyPress = cmbUndCargaKeyPress
          DataField = 'UND_CARREGAMENTO'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'SIGLA'
          ListSource = dsUnidade
          LookupKeyValue = Null
          StoredValues = 64
        end
      end
      object tbsAplicao: TcxTabSheet
        Caption = 'Aplica'#231#227'o'
        object cxDBMemoContato: TcxDBMemo
          Left = 20
          Top = 5
          DataBinding.DataField = 'APLICACAO'
          DataBinding.DataSource = DataSource
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = ebsSingle
          TabOrder = 0
          Height = 380
          Width = 557
        end
      end
      object tbsImagens: TcxTabSheet
        Caption = 'Imagens'
        object GroupBox2: TGroupBox
          Left = 7
          Top = 2
          Width = 578
          Height = 405
          Caption = 'Imagens'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object img1: TcxDBImage
            Left = 33
            Top = 18
            DataBinding.DataField = 'IMG_1'
            DataBinding.DataSource = DataSource
            Properties.Caption = 'Imagem 1'
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.ImmediatePost = True
            Properties.Stretch = True
            Style.LookAndFeel.Kind = lfUltraFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfUltraFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 175
            Width = 239
          end
          object img2: TcxDBImage
            Left = 302
            Top = 18
            DataBinding.DataField = 'IMG_2'
            DataBinding.DataSource = DataSource
            Properties.Caption = 'Imagem 2'
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.ImmediatePost = True
            Properties.Stretch = True
            Style.LookAndFeel.Kind = lfUltraFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfUltraFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 1
            Height = 175
            Width = 239
          end
          object img3: TcxDBImage
            Left = 33
            Top = 208
            DataBinding.DataField = 'IMG_3'
            DataBinding.DataSource = DataSource
            Properties.Caption = 'Imagem 3'
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.ImmediatePost = True
            Properties.Stretch = True
            Style.LookAndFeel.Kind = lfUltraFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfUltraFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 2
            Height = 175
            Width = 239
          end
          object img4: TcxDBImage
            Left = 302
            Top = 209
            DataBinding.DataField = 'IMG_4'
            DataBinding.DataSource = DataSource
            Properties.Caption = 'Imagem 4'
            Properties.GraphicClassName = 'TJPEGImage'
            Properties.ImmediatePost = True
            Properties.Stretch = True
            Style.LookAndFeel.Kind = lfUltraFlat
            Style.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.Kind = lfUltraFlat
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.Kind = lfUltraFlat
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.Kind = lfUltraFlat
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 3
            Height = 175
            Width = 239
          end
        end
      end
      object tbsSimilares: TcxTabSheet
        Caption = 'Similares'
      end
      object tbsAgregados: TcxTabSheet
        Caption = 'Agregados'
      end
      object dxTabSheet3: TcxTabSheet
        Caption = 'Produtos/Fornecedores'
        object GridProdutosClientes: TcxGrid
          Left = 0
          Top = 0
          Width = 597
          Height = 415
          Align = alClient
          TabOrder = 0
          LookAndFeel.NativeStyle = True
          object TVProdutosClientes: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            NavigatorButtons.Insert.Visible = False
            NavigatorButtons.Edit.Visible = False
            NavigatorButtons.SaveBookmark.Enabled = False
            NavigatorButtons.SaveBookmark.Visible = False
            NavigatorButtons.GotoBookmark.Visible = False
            DataController.DataSource = dsProdutosClientes
            DataController.Filter.Active = True
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsView.Navigator = True
            OptionsView.GroupByBox = False
            object TVProdutosClientesCNPJ: TcxGridDBColumn
              DataBinding.FieldName = 'CNPJ'
            end
            object TVProdutosClientesCODIGO: TcxGridDBColumn
              DataBinding.FieldName = 'CODIGO'
              Width = 82
            end
            object TVProdutosClientesPRODUTO: TcxGridDBColumn
              DataBinding.FieldName = 'PRODUTO'
            end
            object TVProdutosClientesCOD_FORNECEDOR: TcxGridDBColumn
              DataBinding.FieldName = 'COD_FORNECEDOR'
              Width = 97
            end
            object TVProdutosClientesFATOR: TcxGridDBColumn
              DataBinding.FieldName = 'FATOR'
              Width = 61
            end
            object TVProdutosClientesUNIDADE: TcxGridDBColumn
              DataBinding.FieldName = 'UNIDADE'
              Width = 60
            end
            object TVProdutosClientesFORNECEDOR: TcxGridDBColumn
              DataBinding.FieldName = 'FORNECEDOR'
            end
            object TVProdutosClientesCOD_PRD_FORNECEDOR: TcxGridDBColumn
              DataBinding.FieldName = 'COD_PRD_FORNECEDOR'
            end
          end
          object LVProdutosClientes: TcxGridLevel
            GridView = TVProdutosClientes
          end
        end
      end
    end
  end
  object Navigator: TdxBarDBNavigator
    BarManager = BarManager
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 482
    Top = 7
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
    Left = 514
    Top = 7
    DockControlHeights = (
      0
      0
      0
      0)
    object BarManagerBar1: TdxBar
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
          ItemName = 'dxBarDBNavFirst1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPrev1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavNext1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavLast1'
        end
        item
          Visible = True
          ItemName = 'btnIncluir'
        end
        item
          Visible = True
          ItemName = 'btnEditar'
        end
        item
          Visible = True
          ItemName = 'btnExcluir'
        end
        item
          Visible = True
          ItemName = 'btnLocalizar'
        end
        item
          Visible = True
          ItemName = 'BtnListagem'
        end
        item
          Visible = True
          ItemName = 'OpFiltrar'
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
          ItemName = 'dxBarButton1'
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
    object btnLocalizar: TdxBarButton
      Action = ActLocalizar
      Category = 0
      Glyph.Data = {
        36050000424D360500000000000036040000280000000E000000100000000100
        0800000000000001000000000000000000000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000ACACACACACAC
        ACACACAC0000ACAC0000ACACACACACACACACAC02230500AC0000ACAC00000000
        00000223050500000000ACAC56ACACACAC02230505ACAC000000ACAC56D7D7D7
        02230505ACD7AC000000ACAC56000056AC0505ACD7D7AC000000AC56AC23AC00
        5656ACD7D7D7AC00000056D723AC23AC00ACD7D7D7D7AC0000005623D723AC23
        00ACD7D7D7D7AC00000056D723D723AC00ACD7D7D7D7AC000000AC56D723D700
        ACD7D7D7D7D7AC000000ACAC565600ACD7D7D7D7D7D7AC000000ACAC56D7D7D7
        D7D7D7D7000000000000ACAC56D7D7D7D7D7D7D7ACD756AC0000ACAC56D7D7D7
        D7D7D7D7AC56ACAC0000ACAC565656565656565656ACACAC0000}
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
    object BtnListagem: TdxBarButton
      Action = ActListagem
      Category = 0
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B803000000000000000000000000000000000000BFBFBF000000
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
    object OpFiltrar: TdxBarButton
      Action = ActFiltrar
      Category = 0
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        1800000000004003000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBF000000000000000000000000BFBFBFBFBFBFBFBFBFBFBFBF0000
        00000000000000000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
        000000000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000000000BFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000BFBFBF
        000000000000000000FFFFFF000000000000BFBFBF00BFBFBFBFBFBFBFBFBFBF
        BFBF000000000000000000000000000000000000000000FFFFFF000000000000
        000000000000BFBFBF00BFBFBF7F00007F00007F0000000000000000FFFFFF00
        0000000000BFBFBF000000FFFFFF000000000000000000000000BFBFBF00BFBF
        BF7F0000FFFFFFFFFFFFFFFFFF000000000000000000000000BFBFBF00000000
        0000000000000000000000BFBFBFBFBFBF00BFBFBF7F0000FFFFFF7F7F7F7F7F
        7F000000FFFFFF000000000000000000000000FFFFFF000000000000000000BF
        BFBFBFBFBF00BFBFBF7F0000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000000000000000000000BFBFBFBFBFBFBFBFBF00BFBFBF7F0000
        FFFFFF7F7F7F7F7F7FFFFFFF000000FFFFFF0000007F7F7F7F7F7F000000FFFF
        FF000000BFBFBFBFBFBFBFBFBF00BFBFBF7F0000FFFFFFFFFFFFFFFFFFFFFFFF
        000000000000000000FFFFFFFFFFFF000000000000000000BFBFBFBFBFBFBFBF
        BF00BFBFBF7F0000FFFFFF7F7F7F7F7F7FFFFFFF7F7F7F7F7F7FFFFFFF7F7F7F
        7F7F7FFFFFFF7F0000BFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F0000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0000BFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBF7F00007F00007F00007F00007F00007F00007F
        00007F00007F00007F00007F00007F0000BFBFBFBFBFBFBFBFBFBFBFBF00BFBF
        BF7F0000BFBFBF7F00007F0000BFBFBF7F00007F0000BFBFBF7F00007F0000BF
        BFBF7F0000BFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F00007F00007F00007F00
        007F00007F00007F00007F00007F00007F00007F00007F0000BFBFBFBFBFBFBF
        BFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
    end
    object dxBarButton1: TdxBarButton
      Caption = 'F4 - Cad. Aux  - F3 Localizar - F6 Altera'
      Category = 0
      Hint = 'F4 - Cad. Aux  - F3 Localizar - F6 Altera'
      Visible = ivAlways
    end
    object btnEditar: TdxBarButton
      Caption = 'Editar'
      Category = 0
      Hint = 'Editar'
      Visible = ivAlways
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
      ShortCut = 117
      OnClick = ActAlterarExecute
    end
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
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
      BarDBNavigator = Navigator
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrev1: TdxBarDBNavButton
      Caption = 'Prior'
      Category = 1
      Enabled = False
      Hint = 'Prior'
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
      BarDBNavigator = Navigator
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Caption = 'Next'
      Category = 1
      Enabled = False
      Hint = 'Next'
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
      BarDBNavigator = Navigator
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Caption = 'Last'
      Category = 1
      Enabled = False
      Hint = 'Last'
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
      BarDBNavigator = Navigator
      NavButton = dxbnLast
    end
  end
  object Actions: TActionList
    Left = 546
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
      ShortCut = 117
      OnExecute = ActAlterarExecute
    end
    object ActExcluir: TAction
      Tag = 1
      Caption = 'ActExcluir'
      Hint = 'Excluir o registro selecionado [Shift+Del]'
      ShortCut = 8238
      OnExecute = ActExcluirExecute
    end
    object ActLocalizar: TAction
      Caption = 'ActLocalizar'
      Hint = 'Localizar registros [F3]'
      ShortCut = 114
      OnExecute = ActLocalizarExecute
    end
    object ActListagem: TAction
      Tag = 1
      Caption = 'ActListagem'
      Hint = 'Emitir listagem de '
      ShortCut = 116
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
    object ActLookup: TAction
      Caption = 'A'
      ShortCut = 115
      OnExecute = ActLookupExecute
    end
    object ActNextPage: TAction
      Caption = 'ActNextPage'
      ShortCut = 16418
      OnExecute = ActNextPageExecute
    end
    object ActPreviousPage: TAction
      Caption = 'ActPreviousPage'
      ShortCut = 16417
      OnExecute = ActPreviousPageExecute
    end
    object ActNext: TAction
      Caption = 'ActNext'
      ShortCut = 16421
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Caption = 'ActLast'
      ShortCut = 16422
      OnExecute = ActLastExecute
    end
    object ActFirst: TAction
      Caption = 'ActFirst'
      ShortCut = 16424
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Caption = 'ActPrior'
      ShortCut = 16421
      OnExecute = ActPriorExecute
    end
    object ActFiltrar: TAction
      Caption = 'Filtrar'
      Hint = 'Filtrar registros [F9]'
      ShortCut = 120
      OnExecute = ActFiltrarExecute
    end
    object ActLote: TAction
      Caption = 'Lotes'
      ShortCut = 123
      OnExecute = ActLoteExecute
    end
    object ActAgrupar: TAction
      Caption = 'Cadastrar Agrupador'
      Enabled = False
      ShortCut = 118
    end
    object ActComissao: TAction
      Caption = 'Comiss'#227'o'
      ShortCut = 119
    end
    object ActGrade: TAction
      Tag = 1
      Caption = 'Grades'
      OnExecute = ActGradeExecute
    end
    object ActIncluirporModelo: TAction
      Tag = 1
      Caption = 'Incluir por Modelo'
      ShortCut = 16461
      OnExecute = ActIncluirporModeloExecute
    end
    object ActVerCusto: TAction
      Tag = 1
      Caption = 'Ver os Custos'
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Produtos
    OnStateChange = DataSourceStateChange
    Left = 461
    Top = 153
  end
  object dsMarcas: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Marcas
    Left = 258
    Top = 6
  end
  object dsGrupos: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Grupos
    Left = 322
    Top = 7
  end
  object dsSubGrupos: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.SubgruposProd
    Left = 162
    Top = 6
  end
  object dsReducao: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Reducoes
    Left = 290
    Top = 6
  end
  object dsUnidade: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Unidades
    Left = 194
    Top = 6
  end
  object DsSubUnidades: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.SubUnidades
    Left = 98
    Top = 6
  end
  object DsFornecedor: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.SelFornecedor
    Left = 66
    Top = 6
  end
  object DsAgrupadores: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Agrupador
    Left = 354
    Top = 7
  end
  object dsModelo: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelModelosProduto
    Left = 450
    Top = 7
  end
  object dsSecoes: TDataSource
    AutoEdit = False
    DataSet = dmCadastros2.qrySelSecoes
    Left = 226
    Top = 6
  end
  object dsUnidadePrimaria: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.UndPrimaria
    Left = 130
    Top = 7
  end
  object OpenDialog: TOpenDialog
    Filter = '*.jpg|*.jpg'
    Left = 578
    Top = 6
  end
  object DsMaterial: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Material
    Left = 386
    Top = 8
  end
  object DsCor: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Cor
    Left = 418
    Top = 7
  end
  object qryLocalizacao1: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryLocalizacao1BeforeOpen
    SQL.Strings = (
      'select * from est_localizacao l'
      'where l.cnpj = :cnpj'
      'order by l.descricao')
    Left = 434
    Top = 345
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryLocalizacao1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_LOCALIZACAO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLocalizacao1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_LOCALIZACAO"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object qryLocalizacao1DESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"EST_LOCALIZACAO"."DESCRICAO"'
      Size = 50
    end
  end
  object dsLocalizacao1: TDataSource
    AutoEdit = False
    DataSet = qryLocalizacao1
    Left = 466
    Top = 346
  end
  object qryLocalizacao2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryLocalizacao1BeforeOpen
    SQL.Strings = (
      'select * from est_localizacao l'
      'where l.cnpj = :cnpj'
      'order by l.descricao')
    Left = 498
    Top = 345
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryLocalizacao2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_LOCALIZACAO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLocalizacao2CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_LOCALIZACAO"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object qryLocalizacao2DESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"EST_LOCALIZACAO"."DESCRICAO"'
      Size = 50
    end
  end
  object dsLocalizacao2: TDataSource
    AutoEdit = False
    DataSet = qryLocalizacao2
    Left = 530
    Top = 346
  end
  object qryLocalizacao3: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qryLocalizacao1BeforeOpen
    SQL.Strings = (
      'select * from est_localizacao l'
      'where l.cnpj = :cnpj'
      'order by l.descricao')
    Left = 562
    Top = 345
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryLocalizacao3CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_LOCALIZACAO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLocalizacao3CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_LOCALIZACAO"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object qryLocalizacao3DESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"EST_LOCALIZACAO"."DESCRICAO"'
      Size = 50
    end
  end
  object dsLocalizacao3: TDataSource
    AutoEdit = False
    DataSet = qryLocalizacao3
    Left = 594
    Top = 346
  end
  object QryProdFornecedor: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from est_produto_fornecedor'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into est_produto_fornecedor'
      '  (CNPJ, FORNECEDOR, CODIGO, FATOR, PRODUTO, UNIDADE)'
      'values'
      '  (:CNPJ, :FORNECEDOR, :CODIGO, :FATOR, :PRODUTO, :UNIDADE)')
    RefreshSQL.Strings = (
      'Select * '
      'from est_produto_fornecedor '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select pf.cnpj,'
      '       pf.codigo,'
      '       pf.produto,'
      '       pf.fornecedor cod_fornecedor,'
      '       pf.fator,'
      '       pf.unidade,'
      '       psa.nome_razao fornecedor,'
      '       pf.COD_PRD_FORNECEDOR'
      '         from est_produto_fornecedor pf'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = pf.cnpj and psa.cod' +
        'igo = pf.fornecedor)'
      'where pf.produto = :codigo and pf.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update est_produto_fornecedor'
      'set'
      '  CNPJ = :CNPJ,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  CODIGO = :CODIGO,'
      '  FATOR = :FATOR,'
      '  PRODUTO = :PRODUTO,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    DataSource = DataSource
    Left = 424
    Top = 72
    object QryProdFornecedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTO_FORNECEDOR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryProdFornecedorCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTO_FORNECEDOR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryProdFornecedorPRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTO_FORNECEDOR"."PRODUTO"'
      Size = 15
    end
    object QryProdFornecedorCOD_FORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'COD_FORNECEDOR'
      Origin = '"EST_PRODUTO_FORNECEDOR"."FORNECEDOR"'
    end
    object QryProdFornecedorFATOR: TFloatField
      DisplayLabel = 'Fator'
      FieldName = 'FATOR'
      Origin = '"EST_PRODUTO_FORNECEDOR"."FATOR"'
    end
    object QryProdFornecedorUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"EST_PRODUTO_FORNECEDOR"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object QryProdFornecedorFORNECEDOR: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryProdFornecedorCOD_PRD_FORNECEDOR: TIBStringField
      DisplayLabel = 'C'#243'd. Produto Fornecedor'
      FieldName = 'COD_PRD_FORNECEDOR'
      Origin = '"EST_PRODUTO_FORNECEDOR"."COD_PRD_FORNECEDOR"'
    end
  end
  object dsProdutosClientes: TDataSource
    AutoEdit = False
    DataSet = QryProdFornecedor
    OnStateChange = DataSourceStateChange
    Left = 429
    Top = 105
  end
  object SelTecnico: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select t.codigo, t.nome, t.email, t.assinatura from ofc_mecanico' +
        's t'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = t.cnpj and t.pessoa' +
        '_fj = psa.codigo)'
      'where t.cnpj = :cnpj')
    Left = 432
    Top = 290
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelTecnicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      Required = True
    end
    object SelTecnicoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object SelTecnicoEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"OFC_MECANICOS"."EMAIL"'
      Size = 80
    end
    object SelTecnicoASSINATURA: TMemoField
      FieldName = 'ASSINATURA'
      Origin = '"OFC_MECANICOS"."ASSINATURA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsTecnico: TDataSource
    AutoEdit = False
    DataSet = SelTecnico
    Left = 402
    Top = 290
  end
end
