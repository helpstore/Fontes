object FrmManutencaoComissao: TFrmManutencaoComissao
  Left = 196
  Top = 170
  Width = 795
  Height = 577
  BorderIcons = [biSystemMenu]
  Caption = 'Manuten'#231#227'o de Comiss'#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 787
    Height = 524
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clHighlightText
    TabOrder = 0
    object Panel4: TPanel
      Left = 628
      Top = 2
      Width = 157
      Height = 520
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        157
        520)
      object RzBitBtn3: TcxButton
        Left = 4
        Top = 47
        Width = 147
        Height = 37
        Action = ActQuitarComissao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = False
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000050
          5050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF9097909097909097909097909097909097909097909097
          90909790909790909790909790909790909790000000000000A09F9F70777000
          0000505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000009097909097909097909097909097909097
          90909790909790909790909790000000000000DFD8DFA09F9FA09F9F70777070
          7770000000505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000DF0000800000009097909097909097909097909097
          90909790909790909790000000A09F9F707770DFD8DFA09F9FA09F9F70777070
          7770404040000000505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000000000DF0000CF000090000080000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F70777070
          7770404040707770000000505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF0000000000DF0000CF000090000080000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F70777070
          7770404040707770707770000000505050505050FFFFFFFFFFFFFFFFFFFFFFFF
          0000000000DF0000CF0000DF0000DF000080000080000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F70777070
          7770404040707770707770707770000000505050505050FFFFFFFFFFFFFFFFFF
          0000000000DF0000CF0000DF0000DF000080000080000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9F0000A070777070
          7770404040707770707770707770000000505050505050505050FFFFFF000000
          0000DF0000CFCFC8FF6067FF0000DF0000CF000090000080000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFFF302FA09F9F70777070
          7770404040707770707770707770000000505050FFFFFFFFFFFFFFFFFF000000
          0000DF0000CFCFC8FF6067FF0000DF0000CF000090000080000000FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F70777070
          7770404040707770707770707770000000FFFFFFFFFFFFFFFFFF0000000000DF
          0000CFCFC8FF6067FF6067FF0000000000DF0000CF000090000080000000FFFF
          FFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FFFFFFFFFFFFF70
          7770404040707770707770707770000000FFFFFFFFFFFFFFFFFF0000006067FF
          6067FF6067FFCFC8FF000000FFFFFF0000000000DF000080000080000000FFFF
          FFFFFFFFFFFFFFFFFFFF000000A09F9F707770FFFFFFFFFFFFA09F9FA09F9FA0
          9F9F404040707770707770707770000000FFFFFFFFFFFFFFFFFFFFFFFF000000
          6067FF6067FF6067FF000000FFFFFF0000000000DF0000CF0000900000800000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA09F9FA09F9FFFFFFFFFFFFFFF
          FFFFDFD8DF707770707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          000000000000000000FFFFFFFFFFFFFFFFFF0000000000DF0000800000800000
          00505050505050FFFFFFFFFFFF000000A09F9FFFFFFFFFFFFFDFD8DFDFD8DFDF
          D8DFDFD8DFDFD8DF707770707770000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000DF0000CF0000900000
          80000000505050505050FFFFFFFFFFFF000000DFD8DFDFD8DFDFD8DFDFD8DFDF
          D8DFDFD8DFDFD8DFDFD8DF707770000000000000000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DFD8DF0000000000DF0000800000
          80000000000000505050505050FFFFFFFFFFFF000000DFD8DFDFD8DFDFD8DFDF
          D8DFDFD8DFDFD8DFDFD8DFDFD8DF000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F7077700000000000DF0000CF0000
          90000080000000000000505050505050FFFFFFFFFFFF000000DFD8DFDFD8DFDF
          D8DFDFD8DFDFD8DF000000000000FFFFFFFFFFFF000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DF0000000000DF0000
          80000080000000707770000000505050505050FFFFFFFFFFFF000000DFD8DFDF
          D8DF000000000000FFFFFFFFFFFFFFFFFF000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DF0000000000DF0000
          DFCFC8FF6067FF000000707770000000505050505050FFFFFFFFFFFF00000000
          0000FFFFFFFFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9F000000CFC8
          FF6067FF6067FF000000707770707770000000505050505050FFFFFFFFFFFFFF
          FFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9F0000006067
          FF6067FF000000707770707770707770000000505050505050FFFFFFFFFFFF00
          0000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFFF302FA09F9F0000
          00000000404040707770707770707770000000FFFFFFFFFFFF00000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FA09F9F7077
          70707770404040707770707770707770000000000000000000000000000000FF
          FFFFFFFFFFFFFFFF000000404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770DFD8DFA09F9FFFFFFFFFFF
          FF707770404040707770707770707770000000000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000404040404040FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000A09F9F707770FFFFFFFFFFFFA09F9FA09F
          9FA09F9F404040707770707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF404040707770707770FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFA09F9FA09F9FFFFFFFFFFF
          FFFFFFFFDFD8DF707770707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707770DFD8DF707770FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000A09F9FFFFFFFFFFFFFDFD8DFDFD8
          DFDFD8DFDFD8DFDFD8DF707770707770000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF707770FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DFD8DFDFD8DFDFD8DFDFD8
          DFDFD8DFDFD8DFDFD8DFDFD8DF707770000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DFD8DFDFD8DFDFD8
          DFDFD8DFDFD8DFDFD8DFDFD8DFDFD8DF000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DFD8DFDFD8
          DFDFD8DFDFD8DFDFD8DF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000DFD8
          DFDFD8DF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object RzBitBtn2: TcxButton
        Left = 4
        Top = 4
        Width = 147
        Height = 42
        Action = ActGerarComissao
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = False
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFF
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000007F7F7F7F7F7FFFFFFFFFFFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F00007F00007F00007F00007F00007F00007F00007F00007F00007F00007F00
          007F00007F00007F00007F00007F00007F00007F00007F00007F00007F00007F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BF0000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
          000000000000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBF0000000000000000007F7F7FFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBF000000000000000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBF
          BFBFBFBF000000000000000000BFBFBFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F00007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBF0000000000000000000000000000000000007F7F7FFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBF0000000000000000000000000000000000007F7F7FFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBF0000000000000000000000000000000000007F7F7FFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBF0000000000000000000000000000000000007F7F7FFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF00
          0000BFBFBF0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000
          00007F7F7F0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          7F00007F00007F00007F00007F00007F00007F00007F00007F00007F00007F00
          007F00007F00007F00007F00007F00007F00007F00007F0000000000BFBFBF00
          00007F7F7F0000007F7F7F0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBF
          BFBF000000000000BFBFBF0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          BFBFBF0000FF00007F00007FBFBFBFBFBFBFBFBFBF7F00007F00007F00007F00
          007F00007F00007F00007F00007F00007F0000000000BFBFBFBFBFBFBFBFBFFF
          FFFFFFFFFF7F7F7FBFBFBF0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          0000FF0000FF0000FF0000FF00007FBFBFBFBFBFBF7F00007F00007F00007F00
          007F00007F00007F00007F00007F0000000000BFBFBFBFBFBFFFFFFFFFFFFF7F
          7F7F7F7F7F7F0000BFBFBF0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          0000FFFFFFFF0000FF0000FF00007FBFBFBFBFBFBF7F00007F00007F00007F00
          007F00007F00007F00007F0000000000BFBFBFFFFFFFFFFFFF7F7F7F7F7F7F7F
          00007F00007F0000BFBFBF0000007F7F7F7F7F7FFFFFFFFFFFFF000000BFBFBF
          BFBFBF0000FF0000FF0000FFBFBFBFBFBFBFBFBFBF7F00007F00007F00007F00
          007F00007F00007F0000000000BFBFBFFFFFFF7F7F7F7F7F7FBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBF000000BFBFBF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object GroupLeg: TcxGroupBox
        Left = 4
        Top = 411
        Anchors = [akRight, akBottom]
        Caption = 'Legendas'
        ParentFont = False
        TabOrder = 2
        Height = 104
        Width = 147
        object RzPanel2: TPanel
          Left = 75
          Top = 46
          Width = 63
          Height = 23
          Caption = 'Canceladas'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object RzPanel4: TPanel
          Left = 75
          Top = 18
          Width = 63
          Height = 23
          Caption = 'Geradas'
          Color = 16769704
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object RzPanel5: TPanel
          Left = 7
          Top = 18
          Width = 63
          Height = 23
          Caption = 'Abertas'
          Color = 13299927
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object RzPanel6: TPanel
          Left = 7
          Top = 46
          Width = 63
          Height = 23
          Caption = 'Quitadas'
          Color = 8975599
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object RzPanel3: TPanel
          Left = 7
          Top = 75
          Width = 130
          Height = 23
          Caption = 'Sem Comiss'#227'o'
          Color = clGray
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 626
      Height = 520
      Align = alClient
      Color = clWhite
      TabOrder = 1
      object RzPanel1: TPanel
        Left = 1
        Top = 1
        Width = 624
        Height = 74
        Align = alTop
        Color = clBtnHighlight
        TabOrder = 0
        object lblIntervalo: TcxLabel
          Left = 400
          Top = 34
          Caption = 'Dt. Gera'#231#227'o:'
          ParentFont = False
          Transparent = True
        end
        object lblStatus: TcxLabel
          Left = 9
          Top = 53
          Caption = 'Status Atual'
          ParentFont = False
          Transparent = True
        end
        object lblVendedorAtual: TcxLabel
          Left = 7
          Top = 35
          Caption = 'Vendedor Atual'
          ParentFont = False
          Transparent = True
        end
        object LblTitulo: TcxLabel
          Left = 6
          Top = 3
          Caption = 'Manuten'#231#227'o de Comiss'#245'es'
          ParentFont = False
          Transparent = True
        end
      end
      object Panel3: TPanel
        Left = 1
        Top = 304
        Width = 624
        Height = 215
        Align = alBottom
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 1
        object Label3: TcxLabel
          Left = 3
          Top = 7
          Caption = 'Parcelas '
          ParentFont = False
          Transparent = True
        end
        object GridParcela: TdxDBGrid
          Left = 0
          Top = 26
          Width = 624
          Height = 189
          Bands = <
            item
              Caption = 'Pend'#234'ncias'
            end>
          DefaultLayout = False
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
          PopupMenu = PopDetail
          TabOrder = 0
          OnKeyDown = GridParcelaKeyDown
          AutoExpandOnSearch = False
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          DataSource = dmFinanceiro2.dsComissaoParc
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoExtMultiSelect, edgoSeekDetail, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
          OnCustomDraw = GridParcelaCustomDraw
          object GridParcelaCODIGO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODIGO'
          end
          object GridParcelaCOD_RECEBER: TdxDBGridMaskColumn
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COD_RECEBER'
          end
          object GridParcelaPARC_CR: TdxDBGridMaskColumn
            Width = 34
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PARC_CR'
          end
          object GridParcelaVLR_RECEBER: TdxDBGridMaskColumn
            Sorted = csUp
            Width = 77
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VLR_RECEBER'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VLR_RECEBER'
            SummaryField = 'VLR_RECEBER'
          end
          object GridParcelaPCT_LIBERADO: TdxDBGridMaskColumn
            Width = 102
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PCT_LIBERADO'
          end
          object GridParcelaPCT_PAGO: TdxDBGridMaskColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PCT_PAGO'
          end
          object GridParcelaVLR_TOTAL: TdxDBGridMaskColumn
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VLR_TOTAL'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VLR_TOTAL'
            SummaryField = 'VLR_TOTAL'
          end
          object GridParcelaSTATUS: TdxDBGridMaskColumn
            Width = 58
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STATUS'
          end
          object GridParcelaVLR_LIBERADO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VLR_LIBERADO'
            SummaryFooterType = cstSum
            SummaryFooterField = 'VLR_LIBERADO'
            SummaryField = 'VLR_LIBERADO'
          end
          object GridParcelaPCT_LUCRO_ITEM: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PCT_LUCRO_ITEM'
          end
          object GridParcelaCOD_PERFIL_PAGTO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COD_PERFIL_PAGTO'
          end
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 624
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 1
          object Label4: TcxLabel
            Left = 3
            Top = 6
            Caption = 'Parcelas'
            ParentFont = False
            Transparent = True
          end
        end
      end
      object Panel2: TPanel
        Left = 1
        Top = 75
        Width = 624
        Height = 229
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        TabOrder = 2
        object Grid: TdxDBGrid
          Left = 0
          Top = 26
          Width = 624
          Height = 203
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
                  ColumnName = 'GridPAGO'
                  SummaryField = 'PAGO'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'GridTOTAL'
                  SummaryField = 'TOTAL'
                  SummaryType = cstSum
                end
                item
                  ColumnName = 'GridLIBERADO'
                  SummaryField = 'LIBERADO'
                  SummaryType = cstSum
                end>
              Name = 'sgComissao'
            end>
          SummarySeparator = ', '
          Align = alClient
          PopupMenu = PopMaster
          TabOrder = 0
          OnKeyDown = GridKeyDown
          DataSource = dmFinanceiro2.dsComissoes
          Filter.Active = True
          Filter.Criteria = {00000000}
          GroupNodeColor = 15977833
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
          OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
          ShowRowFooter = True
          OnCustomDraw = GridCustomDraw
          object GridCODIGO: TdxDBGridMaskColumn
            Width = 56
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODIGO'
            SummaryFooterType = cstCount
            SummaryFooterField = 'CODIGO'
            SummaryField = 'CODIGO'
          end
          object GridCOD_VENDEDOR: TdxDBGridMaskColumn
            Sorted = csUp
            Width = 70
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COD_VENDEDOR'
          end
          object GridCOD_VENDA: TdxDBGridMaskColumn
            Width = 79
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COD_VENDA'
          end
          object GridDT_GERACAO: TdxDBGridDateColumn
            Width = 81
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DT_GERACAO'
          end
          object GridNOME: TdxDBGridMaskColumn
            Width = 69
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOME'
          end
          object GridSTATUS: TdxDBGridMaskColumn
            Width = 53
            BandIndex = 0
            RowIndex = 0
            FieldName = 'STATUS'
          end
          object GridCNPJ: TdxDBGridMaskColumn
            Visible = False
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CNPJ'
          end
          object GridTOTAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'TOTAL'
            SummaryFooterType = cstSum
            SummaryFooterField = 'TOTAL'
            SummaryField = 'TOTAL'
          end
          object GridPAGO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PAGO'
            SummaryFooterType = cstSum
            SummaryFooterField = 'PAGO'
            SummaryField = 'PAGO'
          end
          object GridLIBERADO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LIBERADO'
            SummaryFooterType = cstSum
            SummaryFooterField = 'LIBERADO'
            SummaryField = 'LIBERADO'
          end
          object GridPCT_ANTECIPACAO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PCT_ANTECIPACAO'
          end
          object GridCOD_TROCA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COD_TROCA'
          end
          object GridPCT_LUCRO_ITEM: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PCT_LUCRO_ITEM'
          end
          object GridCOD_PERFIL_PAGTO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COD_PERFIL_PAGTO'
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 624
          Height = 26
          Align = alTop
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 1
          object Label2: TcxLabel
            Left = 3
            Top = 6
            Caption = 'Comiss'#245'es'
            ParentFont = False
            Transparent = True
          end
        end
      end
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 524
    Width = 787
    Height = 26
    Align = alBottom
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      787
      26)
    object Bevel1: TBevel
      Left = 15
      Top = 0
      Width = 502
      Height = 2
      Shape = bsTopLine
    end
    object Label1: TcxLabel
      Left = 8
      Top = 8
      Caption = 'F3 - Filtrar'
      ParentFont = False
      Transparent = True
    end
    object BtnFechar: TcxButton
      Left = 706
      Top = 1
      Width = 75
      Height = 25
      Action = ActFechar
      Anchors = [akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
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
  end
  object Actions: TActionList
    Left = 348
    Top = 91
    object ActFechar: TAction
      Caption = 'Fechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActGerarComissao: TAction
      Tag = 1
      Caption = 'Gerar Comiss'#245'es'
      OnExecute = ActGerarComissaoExecute
    end
    object ActFiltrar: TAction
      Caption = 'ActFiltrar'
      ShortCut = 114
      OnExecute = ActFiltrarExecute
    end
    object ActQuitarComissao: TAction
      Caption = 'Quitar Comiss'#245'es'
      OnExecute = ActQuitarComissaoExecute
    end
    object ActImprimir: TAction
      Caption = 'Imprimir T'#237'tulos'
    end
    object ActEstornaParcGer: TAction
      Tag = 1
      Caption = 'Estornar p/Geradas'
      OnExecute = ActEstornaParcGerExecute
    end
    object ActEstornaComGer: TAction
      Tag = 1
      Caption = 'Estornar p/Geradas'
      OnExecute = ActEstornaComGerExecute
    end
    object ActEstornaComAb: TAction
      Tag = 1
      Caption = 'Estorna p/Abertas'
      OnExecute = ActEstornaComAbExecute
    end
    object ActCancCom: TAction
      Tag = 1
      Caption = 'Cancelar Comiss'#227'o'
      OnExecute = ActCancComExecute
    end
    object ActCancComParc: TAction
      Tag = 1
      Caption = 'Cancelar Parcala de Comiss'#227'o'
      OnExecute = ActCancComParcExecute
    end
  end
  object PopMaster: TPopupMenu
    OnPopup = PopMasterPopup
    Left = 200
    Top = 176
    object mnEstComAbert: TMenuItem
      Action = ActEstornaComAb
    end
    object mnEstComGer: TMenuItem
      Action = ActEstornaComGer
    end
    object mnCancelaCom: TMenuItem
      Action = ActCancCom
    end
  end
  object PopDetail: TPopupMenu
    OnPopup = PopDetailPopup
    Left = 206
    Top = 400
    object mnEstParcGer: TMenuItem
      Action = ActEstornaParcGer
    end
    object mnCancComParc: TMenuItem
      Action = ActCancComParc
      Caption = 'Cancelar Parcela de Comiss'#227'o'
    end
  end
  object stgGrdComissao: TcxPropertiesStore
    Components = <
      item
        Component = Grid
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
        Component = GridCNPJ
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
        Component = GridCOD_PERFIL_PAGTO
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
        Component = GridCOD_TROCA
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
        Component = GridCOD_VENDA
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
        Component = GridCOD_VENDEDOR
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
        Component = GridCODIGO
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
        Component = GridDT_GERACAO
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
        Component = GridLIBERADO
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
        Component = GridNOME
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
        Component = GridPAGO
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
        Component = GridParcela
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
        Component = GridParcelaCOD_PERFIL_PAGTO
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
        Component = GridParcelaCOD_RECEBER
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
        Component = GridParcelaCODIGO
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
        Component = GridParcelaPARC_CR
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
        Component = GridParcelaPCT_LIBERADO
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
        Component = GridParcelaPCT_LUCRO_ITEM
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
        Component = GridParcelaPCT_PAGO
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
        Component = GridParcelaSTATUS
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
        Component = GridParcelaVLR_LIBERADO
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
        Component = GridParcelaVLR_RECEBER
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
        Component = GridParcelaVLR_TOTAL
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
        Component = GridPCT_ANTECIPACAO
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
        Component = GridPCT_LUCRO_ITEM
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
        Component = GridSTATUS
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
        Component = GridTOTAL
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
    StorageName = 'stgGrdComissao'
    Left = 266
    Top = 192
  end
end
