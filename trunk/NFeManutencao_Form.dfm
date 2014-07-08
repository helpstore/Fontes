object FrmNFeManutencao: TFrmNFeManutencao
  Left = 163
  Top = 108
  Width = 796
  Height = 599
  Caption = 'NFe - Manuten'#231#227'o'
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopMarcar
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 788
    Height = 572
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
      Top = 538
      Width = 784
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 540
      Width = 784
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 784
        Height = 26
        Align = dalTop
        BarManager = BarMgr
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 784
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object Panel4: TPanel
      Left = 602
      Top = 2
      Width = 184
      Height = 536
      Align = alRight
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object btnImpOrc: TcxButton
        Left = 3
        Top = 47
        Width = 176
        Height = 42
        Action = ActImportaOrcamento
        Caption = 'Sincronizar Registros'
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
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF7F0000FFFF
          FF7F0000FFFFFFFFFFFFFFFFFFFFFFFF7F0000FFFFFF7F0000FFFFFFFFFFFFFF
          FFFFFFFFFF7F0000FFFFFF7F0000BFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBF7F007FFFFFFF7F0000FFFF
          FF7F0000FFFFFF7F007F7F007FFFFFFF7F0000FFFFFF7F0000FFFFFF7F007F7F
          007FFFFFFF7F0000FFFFFF7F0000BFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF7F0000FFFF
          FF7F0000FFFFFFFFFFFFFFFFFFFFFFFF7F0000FFFFFF7F0000FFFFFFFFFFFFFF
          FFFFFFFFFF7F0000FFFFFF7F0000BFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBF7F007FFFFFFF7F0000FFFF
          FF7F0000FFFFFF7F007F7F007FFFFFFF7F0000FFFFFF7F0000FFFFFF7F007F7F
          007FFFFFFF7F0000FFFFFF7F0000BFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF7F0000FFFF
          FF7F0000FFFFFFFFFFFFFFFFFFFFFFFF7F0000FFFFFF7F0000FFFFFFFFFFFFFF
          FFFFFFFFFF7F0000FFFFFF7F0000BFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBF7F007FFFFFFF7F0000FFFF
          FF7F0000FFFFFF7F007F7F007FFFFFFF7F0000FFFFFF7F0000FFFFFF7F007F7F
          007FFFFFFF7F0000FFFFFF7F0000BFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF7F0000FFFF
          FF7F0000FFFFFFFFFFFFFFFFFFFFFFFF7F0000FFFFFF7F0000FFFFFFFFFFFFFF
          FFFFFFFFFF7F0000FFFFFF7F0000BFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBF7F007FFFFFFF7F0000FFFF
          FF7F0000FFFFFF7F007F7F007FFFFFFF7F0000FFFFFF7F0000FFFFFF7F007F7F
          007FFFFFFF7F0000FFFFFF7F0000BFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF7F0000FFFF
          FF7F0000FFFFFFFFFFFFFFFFFFFFFFFF7F0000FFFFFF7F0000FFFFFFFFFFFFFF
          FFFFFFFFFF7F0000FFFFFF7F0000BFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBF7F00007F00007F0000FFFF
          FF7F00007F00007F00007F00007F00007F0000FFFFFF7F00007F00007F00007F
          00007F00007F0000FFFFFF7F0000BFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF7F0000BFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBF7F00007F00007F00007F00
          007F00007F00007F00007F00007F00007F00007F00007F00007F00007F00007F
          00007F00007F00007F00007F0000BFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7FBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00FF007F7F7F7F7F7FBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7FFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00FF0000FF0000FF007F7F7F7F7F7FBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F007F00007F00
          007F00007F00007F00007F00BFBFBFBFBFBFBFBFBFBFBFBF7F7F7FBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF00FF0000FF0000FF0000FF0000FF007F7F7F7F
          7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F007F00007F00
          007F00007F00007F00007F00BFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7FBFBF
          BFBFBFBFBFBFBFBFBFBF00FF0000FF0000FF0000FF0000FF0000FF0000FF00BF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F007F00007F00
          007F00007F00007F00007F00BFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7FBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00FF0000FF0000FF007F7F7FBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F007F00007F00
          007F00007F00007F00007F00BFBFBF7F7F7FBFBFBFBFBFBF7F7F7F7F7F7F7F7F
          7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00FF0000FF0000FF00BFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F007F00007F00
          007F00007F00007F00007F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F
          7F7F7F7FBFBFBFBFBFBFBFBFBF00FF0000FF0000FF007F7F7FBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F007F00007F00
          00FF00000000007F00007F00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F
          7F7F7F7FBFBFBFBFBFBF00FF0000FF0000FF0000FF00BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F007F00007F00
          007F0000FF00000000000000007F00007F00BFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BF7F7F7F7F7F7F7F7F7F00FF0000FF0000FF00BFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F007F00007F00
          007F00007F0000FF0000FF000000000000000000000000007F7F7F7F7F7F7F7F
          7F00FF0000FF0000FF0000FF0000FF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F007F00007F00
          007F00007F00007F0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F007F00007F00
          007F00007F00007F00007F00007F0000FF0000FF0000FF0000FF0000FF0000FF
          0000FF00BFBFBFBFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F007F00007F00
          007F00007F00007F00007F00007F00007F00007F00FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFBFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF007F00007F00
          007F00007F00007F00007F00007F00007F00007F00FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFFFFFFFFFF}
      end
      object RzBitBtn1: TcxButton
        Left = 3
        Top = 5
        Width = 176
        Height = 42
        Action = ActExportar
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
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3030303030303030303030303030303030
          3030303030303030303030303030303030303030303030303030303030303030
          3030303030303030303030303030303030000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000BFB8BFAFA8AFAFB8AFAFA8AFBFA8AFAFA8
          AFAFB8AFAFA8AFBFA8BFAFA8AFAFB8AF8F888FEFDFDFEFFFEFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000008F00000000005057000000000000000000
          00000000000000000000000000000000000000001000000000000000506750FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000008F988F5067605047500000000000000000
          0000000000000000000000000000000000000000000050474050675000000000
          0000000000FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
          0000000000000000000000000030203000000000000000000000000000000070
          778F000000FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          000000000000000000FFA89FFFA8AFFFB8BFFFCF8FFFDFCFFFCFEFFFEFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000303020500040BFA8BFDFCFDFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000000000FFA8AFFF888FFFCF8FFFCFCFFFCFDFFFEF
          CFFFFFEFFFFFFFFFFFFF000000303030404700AFA8AFCFCFCFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000000000BF0000FFA8BFFFB88FFFCFCFFFCF
          DFFFEFEFFFFFEFFFFFFF000000303030404740AFB8AFCFDFEFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000FF88AFFF88AFFFB88FFF88
          8FFFCFDFFFCFCFFFEFEF000000000010000000AFA8AF00000050675000000050
          6750000000FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FF7770FF8800FF988FFF889FFFA8AFFFB8
          AFFFCFBFFFCFCFFFDFDF000000102000102000BFA8BFDFEFDFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000FF4740FF4740FF6760FF00000000000000000000
          00FFB8AFFF889FFFCFCF0000008F888F0000008F888FCFCFCFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FF2030FF3040FF4740FF5750FF4760FF67700000000010000000
          00000000FFA8AFFFB8BF000000101010000010CFDFDF00000000000000000000
          0000000000FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000200000FF1020FF0020FF00000000000000000000001010000000
          00102000000000FFA8AF000000204710204700EFEFEFEFEFEFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000401000FF0010FF2020CF20201020100000000000000000
          0030302000000000000000000050675000000070778F000000FFFFFF506750FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000CF0010FF0000BF10200000000000000000
          00000000000000000000000000000000000000FFFFFF000000FFFFFF00000000
          0000000000FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000000000FF1010FF1020FF20203010108F88
          AFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000CF00000000000000000000000000000000
          00000000000000FFFFFF00000000000000000000000000000000000000000070
          778F000000FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFBF0000000000000000308830FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF70470070474070470070573070470070474070470070
          5730704700704740705730FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF0000007088700000
          0000000000000000000000000000000000000070887000000000000000000000
          0000000000FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFAFA8AFAFA8AFAFA8AFAFA8AF000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF57
          009F57008F5700603000201000503000602000403000403000602000FFFFFF00
          0000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF57
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF503000FFFFFF00
          0000FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF57
          00AF5700AF5700AF5700AF5700AF5700AF5700AF5700000000603000FFFFFF00
          0000FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object GroupLeg: TRzGroupBox
        Left = 2
        Top = 455
        Width = 180
        Height = 79
        Align = alBottom
        Anchors = [akRight, akBottom]
        Caption = 'Legendas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        GroupStyle = gsCustom
        ParentColor = True
        ParentFont = False
        TabOrder = 2
        ThemeAware = False
        object RzPanel1: TPanel
          Left = 88
          Top = 49
          Width = 75
          Height = 23
          Caption = 'Rejeitados'
          Color = 8421631
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object RzPanel3: TPanel
          Left = 88
          Top = 19
          Width = 75
          Height = 23
          Caption = 'Naosei'
          Color = 11653865
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object RzPanel2: TPanel
          Left = 7
          Top = 49
          Width = 74
          Height = 23
          Caption = 'Exportados'
          Color = 16769704
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object RzPanel4: TPanel
          Left = 7
          Top = 19
          Width = 74
          Height = 23
          Caption = 'Autorizadas'
          Color = 13299927
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowFrame
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
    end
    object Panel6: TPanel
      Left = 2
      Top = 2
      Width = 600
      Height = 536
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel6'
      Color = clHighlightText
      TabOrder = 2
      object Panel7: TPanel
        Left = 0
        Top = 49
        Width = 600
        Height = 487
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel6'
        Color = clMenu
        TabOrder = 0
        object pc: TcxPageControl
          Left = 0
          Top = 0
          Width = 600
          Height = 487
          ActivePage = tbsVenda
          Align = alClient
          HotTrack = True
          TabOrder = 0
          OnChange = pcChange
          ClientRectBottom = 487
          ClientRectRight = 600
          ClientRectTop = 24
          object tbsVenda: TcxTabSheet
            Caption = 'Faturamentos  '
            object Shape1: TShape
              Left = 0
              Top = 0
              Width = 600
              Height = 1
              Align = alTop
              Pen.Color = clBtnShadow
            end
            object pnlCamposFaturamento: TPanel
              Left = 0
              Top = 1
              Width = 145
              Height = 462
              Align = alLeft
              Color = clWhite
              TabOrder = 0
              Visible = False
              object TLCustomizeFaturamento: TdxTreeList
                Left = 1
                Top = 1
                Width = 143
                Height = 460
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
                object dxTreeListColumn2: TdxTreeListColumn
                  Caption = 'Campo'
                  DisableEditor = True
                  Width = 134
                  BandIndex = 0
                  RowIndex = 0
                end
                object dxTreeListCheckColumn2: TdxTreeListCheckColumn
                  Caption = 'Visible'
                  Width = 45
                  BandIndex = 0
                  RowIndex = 0
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  OnToggleClick = dxTreeListCheckColumn2ToggleClick
                end
              end
            end
            object Panel9: TPanel
              Left = 145
              Top = 1
              Width = 455
              Height = 462
              Align = alClient
              BevelOuter = bvNone
              Caption = 'Panel9'
              Color = clHighlightText
              TabOrder = 1
              object Panel2: TPanel
                Left = 0
                Top = 0
                Width = 455
                Height = 62
                Align = alTop
                BevelInner = bvRaised
                BevelOuter = bvLowered
                TabOrder = 0
                OnEnter = Panel2Enter
                object Label1: TcxLabel
                  Left = 6
                  Top = 10
                  Caption = 'Cliente :'
                  ParentFont = False
                  Transparent = True
                end
                object Label2: TcxLabel
                  Left = 6
                  Top = 36
                  Caption = 'Per'#237'odo :'
                  ParentFont = False
                  Transparent = True
                end
                object Label3: TcxLabel
                  Left = 311
                  Top = 36
                  Caption = 'N'#186'. Docto :'
                  ParentFont = False
                  Transparent = True
                end
                object Label4: TcxLabel
                  Left = 148
                  Top = 35
                  Caption = #224
                  ParentFont = False
                  Transparent = True
                end
                object lblnome: TcxLabel
                  Left = 111
                  Top = 11
                  Caption = 'Nome'
                  ParentFont = False
                  Transparent = True
                end
                object edDtInicial: TdxDateEdit
                  Left = 54
                  Top = 32
                  Width = 89
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
                  OnEnter = CmbClienteEnter
                  OnExit = edDtInicialExit
                  OnKeyDown = dxDBEdit1KeyDown
                  Date = -700000.000000000000000000
                  UseEditMask = True
                  StoredValues = 4
                end
                object edDtFinal: TdxDateEdit
                  Left = 163
                  Top = 32
                  Width = 89
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
                  OnEnter = CmbClienteEnter
                  OnExit = edDtInicialExit
                  OnKeyDown = dxDBEdit1KeyDown
                  Date = -700000.000000000000000000
                  UseEditMask = True
                  StoredValues = 4
                end
                object edNDocto: TdxEdit
                  Left = 371
                  Top = 32
                  Width = 86
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  ParentFont = False
                  Style.BorderColor = clBtnShadow
                  Style.BorderStyle = xbsSingle
                  TabOrder = 3
                  OnEnter = CmbClienteEnter
                  OnExit = edDtInicialExit
                  OnKeyDown = dxDBEdit1KeyDown
                end
                object CmbCliente: TdxButtonEdit
                  Left = 54
                  Top = 5
                  Width = 54
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
                  OnEnter = CmbClienteEnter
                  OnExit = CmbClienteExit
                  OnKeyDown = dxDBEdit1KeyDown
                  Buttons = <
                    item
                      Default = True
                    end>
                  ClickKey = 40
                  OnButtonClick = CmbClienteButtonClick
                  StoredValues = 4
                  ExistButtons = True
                end
              end
              object GRID: TdxDBGrid
                Left = 0
                Top = 62
                Width = 455
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
                        SummaryField = 'CODIGO'
                        SummaryType = cstCount
                      end
                      item
                        SummaryField = 'TOTAL'
                        SummaryType = cstSum
                      end
                      item
                        SummaryField = 'VLR_TOTAL'
                        SummaryType = cstSum
                      end>
                    Name = 'sgFaturamento'
                  end>
                SummarySeparator = ', '
                Align = alClient
                TabOrder = 1
                OnEnter = GRIDEnter
                DataSource = DataSource
                Filter.Criteria = {00000000}
                GroupNodeColor = 15977833
                LookAndFeel = lfFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
                OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
                ShowRowFooter = True
                object GRIDCODIGO: TdxDBGridMaskColumn
                  Width = 73
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CODIGO'
                end
                object GRIDNUM_CUPOM: TdxDBGridMaskColumn
                  Sorted = csUp
                  Width = 73
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NUM_CUPOM'
                end
                object GRIDNUM_NF: TdxDBGridMaskColumn
                  Width = 73
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NUM_NF'
                end
                object GRIDFECHADA: TdxDBGridMaskColumn
                  Width = 59
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'FECHADA'
                end
                object GRIDCANCELADA: TdxDBGridMaskColumn
                  Width = 66
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CANCELADA'
                end
                object GRIDTOTAL: TdxDBGridMaskColumn
                  Width = 73
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'TOTAL'
                end
                object GRIDDESC_ACRES: TdxDBGridMaskColumn
                  Width = 73
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DESC_ACRES'
                end
                object GRIDDATA: TdxDBGridDateColumn
                  Width = 73
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DATA'
                end
                object GRIDDATA_CAIXA: TdxDBGridDateColumn
                  Width = 112
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'DATA_CAIXA'
                end
                object GRIDNOME_RAZAO: TdxDBGridMaskColumn
                  Width = 270
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NOME_RAZAO'
                end
                object GRIDCPF_CGC: TdxDBGridMaskColumn
                  Width = 71
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CPF_CGC'
                end
                object GRIDID_AGRUPADOR: TdxDBGridMaskColumn
                  Width = 73
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'ID_AGRUPADOR'
                end
                object GRIDCNPJ: TdxDBGridMaskColumn
                  Visible = False
                  Width = 89
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CNPJ'
                end
                object GRIDNATUREZA: TdxDBGridMaskColumn
                  Width = 50
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NATUREZA'
                end
                object GRIDUF: TdxDBGridMaskColumn
                  Width = 20
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'UF'
                end
                object GRIDNOME: TdxDBGridMaskColumn
                  Width = 56
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NOME'
                end
                object GRIDPROPRIEDADE: TdxDBGridMaskColumn
                  Width = 289
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'PROPRIEDADE'
                end
                object GRIDNFE_SELECIONADO: TdxDBGridCheckColumn
                  MinWidth = 20
                  Width = 100
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NFE_SELECIONADO'
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
            end
          end
          object tbsOrcamento: TcxTabSheet
            Caption = 'Produtos          '
            object Panel5: TPanel
              Left = 145
              Top = 0
              Width = 455
              Height = 463
              Align = alClient
              Caption = 'Panel5'
              Color = clHighlightText
              TabOrder = 0
              object Panel3: TPanel
                Left = 1
                Top = 1
                Width = 453
                Height = 39
                Align = alTop
                BevelInner = bvRaised
                BevelOuter = bvLowered
                TabOrder = 0
                OnEnter = Panel3Enter
                OnExit = Panel3Exit
                object Label5: TcxLabel
                  Left = 6
                  Top = 13
                  Caption = 'Produto :'
                  ParentFont = False
                  Transparent = True
                end
                object lblnomeOrc: TcxLabel
                  Left = 111
                  Top = 13
                  Caption = 'Nome'
                  ParentFont = False
                  Transparent = True
                end
                object Label10: TcxLabel
                  Left = 399
                  Top = 13
                  Caption = 'Status :'
                  ParentFont = False
                  Transparent = True
                end
                object CmbClienteOrc: TdxButtonEdit
                  Left = 54
                  Top = 6
                  Width = 54
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
                  OnEnter = CmbClienteEnter
                  OnExit = CmbClienteOrcExit
                  OnKeyDown = dxDBEdit1KeyDown
                  Buttons = <
                    item
                      Default = True
                    end>
                  ClickKey = 40
                  OnButtonClick = CmbClienteOrcButtonClick
                  StoredValues = 4
                  ExistButtons = True
                end
                object cmbStatus: TRzComboBox
                  Left = 441
                  Top = 6
                  Width = 176
                  Height = 24
                  Ctl3D = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -13
                  Font.Name = 'Tahoma'
                  Font.Style = []
                  FrameHotTrack = True
                  FrameHotStyle = fsFlat
                  FrameStyle = fsStatus
                  FrameVisible = True
                  ItemHeight = 16
                  ParentCtl3D = False
                  ParentFont = False
                  TabOrder = 1
                  OnEnter = edNDoctoOrcEnter
                  OnExit = edNDoctoOrcExit
                  OnKeyDown = dxDBEdit1KeyDown
                  Items.Strings = (
                    'Todos'
                    'Aberto'
                    'Parc. Faturado'
                    'Faturado'
                    'Cancelado')
                end
              end
              object GridProdutos: TdxDBGrid
                Left = 1
                Top = 40
                Width = 453
                Height = 422
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
                        SummaryField = 'CODIGO'
                        SummaryType = cstCount
                      end
                      item
                        SummaryField = 'TOTAL'
                        SummaryType = cstSum
                      end
                      item
                        SummaryField = 'VLR_TOTAL'
                        SummaryType = cstSum
                      end>
                    Name = 'sgOrcamento'
                  end>
                SummarySeparator = ', '
                Align = alClient
                TabOrder = 1
                OnKeyDown = GridProdutosKeyDown
                DataSource = dsProdutos
                Filter.Criteria = {00000000}
                GroupNodeColor = 15977833
                LookAndFeel = lfFlat
                OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
                OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
                ShowRowFooter = True
                OnCustomDrawCell = GridProdutosCustomDrawCell
                object GridProdutosCNPJ: TdxDBGridMaskColumn
                  Width = 98
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CNPJ'
                end
                object GridProdutosCODIGO: TdxDBGridMaskColumn
                  Width = 104
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'CODIGO'
                end
                object GridProdutosNOME: TdxDBGridMaskColumn
                  Width = 116
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'NOME'
                end
                object GridProdutosMARCA: TdxDBGridMaskColumn
                  Width = 74
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'MARCA'
                end
                object GridProdutosGRUPO: TdxDBGridMaskColumn
                  Width = 174
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'GRUPO'
                end
                object GridProdutosSELECIONADO: TdxDBGridCheckColumn
                  MinWidth = 20
                  Width = 37
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'SELECIONADO'
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object GridProdutosEXPORTADO: TdxDBGridCheckColumn
                  MinWidth = 20
                  Width = 81
                  BandIndex = 0
                  RowIndex = 0
                  FieldName = 'EXPORTADO'
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
              end
            end
            object pnlCampos: TPanel
              Left = 0
              Top = 0
              Width = 145
              Height = 463
              Align = alLeft
              Caption = 'pnlCampos'
              Color = clWhite
              TabOrder = 1
              Visible = False
              object TLCustomize: TdxTreeList
                Left = 1
                Top = 1
                Width = 143
                Height = 475
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
          end
          object dxTabSheet3: TcxTabSheet
            Caption = 'Clientes           '
            object pnlCamposPessoa: TPanel
              Left = 0
              Top = 0
              Width = 145
              Height = 477
              Align = alLeft
              Color = clWhite
              TabOrder = 0
              Visible = False
              object TLCustomizePessoa: TdxTreeList
                Left = 1
                Top = 1
                Width = 143
                Height = 475
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
                object dxTreeListColumn1: TdxTreeListColumn
                  Caption = 'Campo'
                  DisableEditor = True
                  Width = 134
                  BandIndex = 0
                  RowIndex = 0
                end
                object dxTreeListCheckColumn1: TdxTreeListCheckColumn
                  Caption = 'Visible'
                  Width = 45
                  BandIndex = 0
                  RowIndex = 0
                  ValueChecked = 'True'
                  ValueUnchecked = 'False'
                  OnToggleClick = dxTreeListCheckColumn1ToggleClick
                end
              end
            end
            object GridPessoa: TdxDBGrid
              Left = 145
              Top = 0
              Width = 469
              Height = 477
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
                      SummaryField = 'CODIGO'
                      SummaryType = cstCount
                    end>
                  Name = 'sgPessoas'
                end>
              SummarySeparator = ', '
              Align = alClient
              PopupMenu = PopMarcar
              TabOrder = 1
              OnKeyDown = GRDICLIENTESKeyDown
              DataSource = dsClientes
              Filter.Criteria = {00000000}
              GroupNodeColor = 15977833
              LookAndFeel = lfFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
              ShowRowFooter = True
              object GridPessoaCODIGO: TdxDBGridMaskColumn
                Width = 73
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CODIGO'
              end
              object GridPessoaNOME_RAZAO: TdxDBGridMaskColumn
                Width = 192
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOME_RAZAO'
              end
              object GridPessoaCNPJ: TdxDBGridMaskColumn
                Sorted = csUp
                Width = 93
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CNPJ'
              end
              object GridPessoaSELECIONADO: TdxDBGridCheckColumn
                MinWidth = 20
                Width = 34
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SELECIONADO'
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object GridPessoaNFE_EXP: TdxDBGridCheckColumn
                MinWidth = 20
                Width = 76
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NFE_EXP'
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
          end
          object dxTabSheet1: TcxTabSheet
            Caption = 'Transportadoras'
            object GridTrasportadoras: TdxDBGrid
              Left = 0
              Top = 0
              Width = 614
              Height = 477
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
                      ColumnName = 'GridPessoaCODIGO'
                      SummaryField = 'CODIGO'
                      SummaryType = cstCount
                    end>
                  Name = 'sgPessoas'
                end>
              SummarySeparator = ', '
              Align = alClient
              TabOrder = 0
              OnKeyDown = GRDICLIENTESKeyDown
              DataSource = dsTrasnportadora
              Filter.Criteria = {00000000}
              GroupNodeColor = 15977833
              LookAndFeel = lfFlat
              OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
              OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
              ShowRowFooter = True
              object GridTrasportadorasCODIGO: TdxDBGridMaskColumn
                Width = 73
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CODIGO'
              end
              object GridTrasportadorasNOME: TdxDBGridMaskColumn
                Width = 296
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NOME'
              end
              object GridTrasportadorasCPF_CNPJ: TdxDBGridMaskColumn
                Width = 98
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CPF_CNPJ'
              end
              object GridTrasportadorasSELECIONADO: TdxDBGridCheckColumn
                MinWidth = 20
                Width = 20
                BandIndex = 0
                RowIndex = 0
                FieldName = 'SELECIONADO'
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object GridTrasportadorasCNPJ: TdxDBGridMaskColumn
                Visible = False
                Width = 92
                BandIndex = 0
                RowIndex = 0
                FieldName = 'CNPJ'
              end
              object GridTrasportadorasNFE_EXP: TdxDBGridCheckColumn
                MinWidth = 20
                Width = 77
                BandIndex = 0
                RowIndex = 0
                FieldName = 'NFE_EXP'
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
          end
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 600
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        Color = clWindow
        TabOrder = 1
        object Image1: TImage
          Left = 6
          Top = 2
          Width = 49
          Height = 39
          AutoSize = True
          Picture.Data = {
            07544269746D6170C2160000424DC21600000000000036000000280000003100
            00002700000001001800000000008C1600000000000000000000000000000000
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFDFCFEF5EFFEE2CEFEC198FEC7A0FEEADCFFFDFCFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEF4ECFEDF
            C7FED3B1FEB484FEAC77FED3B4FFF3E9FFFDFBFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFDFDFDF8F8F7EEEEEEE8E8E8E6E6E6E7E7E7ECECEC
            F3F2F2F9F9F9FDFDFDFFFFFFFFFDFCFEE5D5FFD7B7FFD5B2FECCA4FE9F5FFEB3
            81FED7BCFEF2E8FFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFBF1
            F0F0DEDDDDC9C9C9BEBEBEBABABAB9B9B9BEBEBEC6C6C6D8D8D8E8E7E7F7F6F5
            FDE9D8FFD6B5FFD5B2FFD5B1FFD6B3FEBB8BFEA36CFEBD92FEDCC3FEF3EBFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEEFEFEEC9CEC991AB9A7C9B867B988481
            95889394948F8F8F8E8E8E979797A9AAA9C3C3C3E3D3C5F9CFB1FFD5B2FFD5B1
            FFD5B1FFD7B4FDB482FEAD78FEC7A0FEE9D9FFFDFCFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFF2F4F274B18812833712823826914A2F9551288D4A2C7A463D6E4D546A5971
            71716E6E6E797979919191BAB1A7E9C7ADFCD2ADFED3AEFEDABAFECEA8FEB98A
            FEC198FEE4D3FFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE88C39B16843B4B8A5F96AC
            9CC9CCCAB6C2B884A6956AAE915CAC8041935C327044596E5F7475746E6E6E77
            77778E8C89D0BBAAF2CFB5FED7BBFFD6B5FEC297FEBF95FEDEC8FEF6F0FFFEFD
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE6F3E9349A566A9177A7A8A7C8C8C8C5CDCD79B8B75DC0C072D5
            D580DCDC88DBD577C5A94B946239724B6378737478787676769C8E82CEA688EC
            B892F9BF98FDB586FEB27FFEC198FED6BBFEEBDEFEF9F4FFFDFCFFFDFCFFFEFE
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6DCC231874D
            A5A9A6ADB0AEC8CACA79D2D26AD2D2A9D5D5E9F1EFFCFCFCFEFEFEF0FDFDD5EC
            E080BD94377B4C30664F5D685DA58A73B5977DD8B397F0C8A8F2B993F7B385FC
            A368FDAF7BFEC9A6FEE2CDFEEDDEFEEEE0FEF0E6FEFAF7FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF99CEAA397951AAACABADB0AEAECBCB65D9D9
            92B6B5D4D4D4F9F9F9FFFFFFFFFFFFF9F9F8F0F0F0E2E4E197C6A2579D6E3867
            41A48B759E856CB1937BD1AC8FEEC1A1FFD6B7FAC39AFDA368FEB787FEC8A3FE
            CFACFECFACFEDABCFEF1E7FFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF97CCA8427D55AAACABADB0AE8DCECE6DC0C0A9ABA9DCDBDBFCFCFCFDFDFD
            F0F0F0D0D0D0B0B0B09B9B9B97958B89A387589C6F48654485736089725FA487
            6FD9B89CF2C9AAFDD3B2F6C199FDB787FEC095FEBB8DFEB483FEC79FFEEADBFF
            FDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA0D0AF3C7C51AEAEAEA8
            A9A96ABFBD78A9A9AAACABDDDDDDF8F8F8E6E6E6B6B6B6969696999999949996
            8E857D7C6E627377656AA87F37633E58493A715E4FA1856FD4B195E5AF87FACD
            AAFAC39CFDC499FECBA5FFD0AEFEBA8CFEE4D2FFFCF9FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFC2E0CB3D7E52B4B5B4A5A6A661ACAC7CA19FA9AAA9D6
            D5D5EFEFEFDFDFDFEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBDEE5DC
            85BD9733613E51473A786556A68A73CA9E7EF1CAADFDD2B1FFD5B3FED0ACFF9C
            5AFDA86FFECEB0FEF3EBFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8F3
            EB4C8E629BA99FA4A6A5619C9C789A9AA6A7A6CCCCCCF4F3F3FFFFFFFFFFFFFF
            FFFFFEFEFEFEF9F6FFF9F4FFFDFCFFFFFFFFFFFFEFF8F286BF9937654276624E
            8770599E7E65D8B498F4CBACFFD5AFFFD5B0FECEA7FEA56BFEB98BFEDEC7FEF1
            E6FFFCFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD7DB7907A9583ABADAC6E9C
            9C6B9494A4A6A5C5C5C5FAFAFAFFFFFFFFFFFFD1D0D0C9CACAF6EBE2FEDEC4FE
            E3C9FEE6D1FFF0E2FEF5EDEFF8F285BC95516F4EA88E77A38973B6987FE0B99C
            FAD1ADFFD5B1FFD5B2F9AE7BFEA76FFEC096FEDCC3FEF7F1FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFB1D8BC547E60B9B9B984A09F538585A9ABA9C2C2C2FFFF
            FFFFFFFFF9F9F97D7D7DCBC5BEF7DCC8FFD6B5FFD7B7FFD9B9FED9BCFEDBC4FF
            ECDFDAE7D759956C56623EB28D70A58972C5A48AEDC5A4FFD5AEFFD5B1FDCEA8
            FCC69EFEB686FECDACFEF0E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCEEE1
            4C8A60A4ADA999A8A85088889BA4A2BEBEBDFAFAFAFFFFFFDCDCDC707070C2AF
            9CF6CFAFFDCEA9FEC69CFFE0C3FEBA8AFEDCBFFEDEC1FEDFC4B4CBA748845B7B
            7553AC9078AD927AD7B296F5CBABFFD5B2FED6B6F9C399FEB98AFEC197FEEADA
            FFFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFC8FC19F477756B0B4B3619393
            738B8AB7B7B6EDEDEDFFFFFFE1E1E16964609F8A76D3B398E0BB9BE8C1A0E7C0
            A1EAC2A4EFC19EF3C6A3F4CBADF0CFAFA6BF9A487F579A8A70A78D74B89980E3
            BFA1FBD0AEF3BC93F6C097FDBF96FEB584FEE5D4FFFDFBFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFD8EBDD5495698297898DA5A44B7575AAABABDADADAFFFFFF
            FBFBFB6A5C506B594B846E5C8E76639179659C836DA28772A78A74AE9884B594
            79BC9C82C2A88F93B7924E7451AD8F75A4896FBDA087ECD0B3F9CAA6FED4B1F9
            C39BFDAB76FEDAC0FEF5EDFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFBF9AA
            D6B7518561ABB1AF598888778680CABBACFBFAF9FFFFFFCEC9C6A7A399A39A92
            A1968C9A8D828E807485756879695C715F4F6D5642705F516E5D4F7F705E78AA
            846D7C5DAD896DAE927AD4B094F1C9AAFFD5B2F7BC90F1975BFEBC91FEDFC8FE
            F5EEFFFEFEFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFDFCFFF8F2FEEADCF5DEC784B48C6C867295A5A363
            6D62BB9C81EBDCD0FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF7F4F1ECE9E5E2DEDA71665D8C937E558E66A18E74A58C73B597
            7FDFBA9DFAD1AFFBCCA6F3AE80FBA56DFEC7A3FFE0CDFEF5EEFFFEFDFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFEF0
            E6FFE1CAFECCAAFEB98CD0C7A14C845CA9A08FA48B77B89E88DDCABAF7F1ECFF
            FFFFC4BCB4C2B6ABDFD5CDF9ECE2FFF6EFFFFCFAFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFAAA49F70594582B38D677A58AC9178A68D75C9A78DF2CBACFFD5B3FBC7
            A2F19C63FEB787FECBA7FEE2CEFEF7F1FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFEF0E6FED4B7FED2B2FECBA5FEBD8FFBB2
            808EB8915E7656B3967DA88C74C2AA95E2D4C8FAFAFAD9D3CD8370609D8A78C4
            AA93E5CAAFFBDCC4FEE1CAFEE3D0FEE9DBFFFEFEFFFFFFE0DDDA5E4B3B9CAA90
            4B8258AB947AA38871B89980E7C0A2FCD2B0F6C5A1F3C39EFEAF7AFEB788FECB
            A8FEE7D8FFFCF9FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFBF7FEDFCAFECBA7FED4B3FFD6B5FECDA8FEBD91E7BE94669F76808164AD8F
            76A88B72B99E88E8DDD3FCFCFCB7ACA17462538A7461A88C75D2B196EBC9ACF6
            BD94FCD2B6FEF3ECFFFFFFFFFFFF6E60559D7A5F7EB28B757D5EAF8D73AA8F78
            D6B498F8CFAEFFD8B9F3CEB0F7C8A5FECAA6FEC9A5FEE1CDFEF9F5FFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDE0FFD4B3FFD6B6FED5B4
            FEC39BFFCDACFFD6B7FFC9A1CACFAD4C865D9D8F74A782659C8169C2A893E8DA
            CFFCFCFCBEB2A87B624D80644D8C6E55A6856BB99D85C5AA94EFE6E0FFFFFFFF
            FFFF95867C9B7D64B9C4A24E7E51B7947AA5886FB88D6AD2A783F0C09CF2C7A5
            F8CCACFED1B2FEDDC4FEEBDEFFFBF8FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFEADBFEE2CCFED3B2FFD5B7FFD3B0FFD5B2FFD6B5FFD6B5
            FFD6B5B0CCA7507F579E9179AD9077A99079CFBAA7E6D6C9FCFCFCF3F0EEBCB1
            A78A76677663547664548E7F71FAF8F7FFFFFFFFFFFFAE9C8DB5947AEAD2B65E
            9E727E8262AD9179B28867E0B898E9B38BF2C09BE1A378F0BE9CFED3B6FEE9DC
            FFFBF9FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEF7F1FC
            D0AFFCD2B0FED4B2FFD5B3FFD5B1FDD3B0FCD2B0FCD2B0FAD5B49ABE983A734B
            888267AB8E74AA8F77C9AA90EDDBCCFDF4EFFFFFFFFFFFFFF4F2F0EBE8E5FCFC
            FCFFFFFFFFFFFFFEFEFEC0A189E4BEA1FECAA294BF99356C42B1957CAB8D72DA
            B79BE7B794E99F6CF2C4A1F1C09FFEDDC3FEF1E6FFFDFCFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFEFDFFFEFDF1F1F1DFBCA1E6C2A4F8CFAFFFD5B1F9
            CEAEE7C0A2DEB89BEDC6A8F2CBAEDBC0A479A481366741A18E74A68B74A18164
            D0B49CEED5C2FBE7D7FFF9F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4E8DCE9B4
            8FFBD0AEFFD5AEB6CCA52F6F43998A6CAC886CD3B093F7D0ADF4C29CFED9BBFA
            D9BFFEF2EAFFFDFCFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFF6F6
            F6F6F6F6C8C8C8A39E9AB9A28FECCAB0F7CEAED6B296A88D75A08770CBA98ED7
            B295AE9078988771638C6C3F6B46A58E759E7F63AB8B71CCAC92E5C8AEF9DEC3
            FEE7D4FFEEDEFFF0E3FEECDCFEE5CFFDBF94FFD8B6FFD5B3FFD5AFD1CFA93C89
            55888768A68A73CCAB8FF6CDADE8C7AAC5AF9BD8D2CDFAFAF9FFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFF8F8F8F8F8F8D4D4D48383838B8C
            8CDBD8D6EDCCB1D7C7BAB0A7A0635346B19882DDCCBEB3A79C675647907E6A79
            A67E487A52988B6FA3856DA78B73BC9D83DDB99CF4CDAEFCD8BAFED9B9FED9B9
            FFD6B3FED7B8FED1ADFFD6B2FFD3B2DDD2A944935E667A57A2917FC9A98FC1C0
            AC9AA6A1AEACAAD6D5D5FCFCFCFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3B3B37A7A7AC8C8C8F5EAE0FFFFFFFFFF
            FF685C51A38F7DFCFBFAFCFCFC705F517C6756C2A98E91B9913E7C517C7555AD
            947DA68A72B2967ECDAB90E7C1A2F6CEAFFDD2B3FED5B4FED4B2FECFAAFED4B1
            FED7B8DDD4B3338F515E8566A6A4A2C5BFB965BCBC89A8A8B2B3B2DFDFDFFCFC
            FCFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD7D7D7707070B6B6B6FDFDFDFFFFFFFFFFFF948981938170F1EBE5FFFF
            FFA3988E655446917965A58B7579876B3F7450456D4691866CA78B73A78B74BC
            9F86D1AE92C59C7EBAA694F3CCABFDD3B0F6D4B6F1D7C2C3D5C12E8E4D62846D
            A1A2A1B0BEBE60C5C58EACABC5C5C5EBEBEBFEFEFEFFFFFFFFFFFFFFFFFFFFFF
            FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F76F6F6FC0C0C0
            FFFFFFFBFAF9FFFFFFBEB7B2837162DFD6CBFFFFFFDAD6D27261537B6D618878
            6B7D66539291786BA579408756607956A48A708B6C51896241A06E4BA27F64B2
            9E8CCCB3A0A9A59FA7A8A66DA880167E3A677B6F8E8E8E86B1B05EC7C6B2BBBB
            E0E0E0F8F8F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF868686E3E3E3FFFFFFBDB6ABFFFFFFDDD9D6
            796656CEC1B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB6A89BBE9E83E7C4A8ABC7
            9C4E9C68326A3C7B7C5D8E6D50754E2C8161458E7E708282827C7D7D707D7428
            8E4B1C6D36707070838A8965C7C77AC8C8DEDDDDF5F5F5FDFDFDFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFBABABAFFFFFFE8E6E39E8C7CF9F6F4F6F6F6716D6AB8AB9FFFFFFFFFFFFF
            DDD9D6D3CCC7DFD6CFC2B1A2B7987FD6B196F0C8AAD0CCA779B3863988523E73
            4850653E536449476D56507561547D62258946177C395C7B6F74909067BDBD70
            DCDCC8DEDEF4F4F4FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFFFFBABABAC3
            C3C3F7F7F7FFFFFF8E8E8EAFADABFCFBFBFFFFFFB1A69D6B5B4D7D60457B6C5E
            827D79AFA7A0E0C7B2FDEEE4FDE7D4D2D1AF8DB88A4A9D653A94572E97512C99
            5026984C379D6460B2AA73C9C97DDAD9A1EEEEE1F2F1FAFAFAFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFAC2C2C2ECECECFDFDFDFFFFFFC6C6C6C8
            C4C1F8F3EFFFFFFFF5F4F3E7E3E0E8E4E1E7E6E4A5A5A5B7B8B7ECECECFEFDFD
            FFFFFFFFF0E4FFE2CBFCF4EFE0EEE1CCE6D5CBE5D5DDEFE7E1F5F5E0F9F9E4FC
            FCF2FCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFF8F8F8F4F3F3FDFDFDFFFFFFFFFFFFF4F3F3F1F0F0FFFEFEFFFFFFFFFFFFFF
            F9F5FFFFFFFFFFFFECECEBE5E5E5FDFDFDFFFFFFFFFFFFFFFFFFFEFBF8FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF00}
        end
        object b2: TBevel
          Left = 10
          Top = 45
          Width = 221
          Height = 2
          Shape = bsTopLine
        end
        object LblTitulo: TcxLabel
          Left = 60
          Top = 11
          Caption = 'NFe - Manuten'#231#227'o'
          ParentFont = False
          Transparent = True
        end
      end
    end
  end
  object BarMgr: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 427
    Top = 5
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
          ItemName = 'btnSelecionar'
        end
        item
          Visible = True
          ItemName = 'btnExportar'
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
    object btnExportar: TdxBarButton
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
    object btnSelecionar: TdxBarButton
      Action = ActConfCampos
      Category = 0
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F003000000000000000000000000000000000000000000C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4FFFFFF0000000000000000000000A4A3E44C4B
        6100000000000000000000000000000000000000000000000000000000000000
        0000C8D0D4FFFFFF00000000000000000000003D3BE03836F76463D115151800
        0000000000000000000000000000000000000000000000000000C8D0D4FFFFFF
        00000000000000005453694443F83735F83C3AF76060B1000000000000000000
        000000000000000000000000000000000000C8D0D4FFFFFF0000000000000000
        8684EB3836F83735F83735F84846D419191C0000000000000000000000000000
        00000000000000000000C8D0D4FFFFFF00000000003333393A38EF3735F85755
        F93E3CF73836F76261B900000000000000000000000000000000000000000000
        0000C8D0D4FFFFFF00000000007A79F53937F73735F862618E3F3EA43634F73B
        39D8535262000000000000000000000000000000000000000000C8D0D4FFFFFF
        00000000003634F73735F85A58F81212203030504D4BF83735F77271DD212125
        000000000000000000000000000000000000C8D0D4FFFFFF00000000007575B6
        7271F94B4A590000000000005756893B39F73634F74949890000000000000000
        00000000000000000000C8D0D4FFFFFF00000000000000000000000000000000
        000000001F1E246B69DD3634F76261F941415100000000000000000000000000
        0000C8D0D4FFFFFF000000000000000000000000000000000000000000000032
        32406D6CF93634F77B79E62A2A2D000000000000000000000000C8D0D4FFFFFF
        00000000000000000000000000000000000000000000000000004A4A5E4341D4
        3D3BF77372D9000000000000000000000000C8D0D4FFFFFF0000000000000000
        0000000000000000000000000000000000000000005858725856F84442F87979
        A3000000000000000000C8D0D4FFFFFF00000000000000000000000000000000
        0000000000000000000000000000000056566A706FF94341F89191AB00000000
        0000C8D0D4FFFFFF000000000000000000000000000000000000000000000000
        00000000000000000000004342514B49C8504EF05F5F7A000000C8D0D4FFFFFF
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000F0F187A78F94F4DF8585879C8D0D4FFFFFF0000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
      PaintStyle = psCaptionGlyph
    end
  end
  object Actions: TActionList
    Left = 364
    Top = 5
    object ActIncluir: TAction
      Tag = 1
      Caption = 'Incluir ( Ins )'
      Hint = 'Incluir um novo registro [Ins]'
      ShortCut = 45
    end
    object ActAlterar: TAction
      Tag = 1
      Caption = 'Alterar'
      Hint = 'Incluir o registro selecionado [Enter]'
      ShortCut = 117
    end
    object ActFechar: TAction
      Tag = 1
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActExcluir: TAction
      Tag = 1
      Caption = 'Excluir Venda'
      ShortCut = 16430
    end
    object ActImprimir: TAction
      Tag = 1
      Caption = 'Imprimir'
      ShortCut = 116
    end
    object ActVendas: TAction
      Tag = 1
      Caption = 'Tela de Vendas'
      ShortCut = 122
      OnExecute = ActVendasExecute
    end
    object ActOrcamentos: TAction
      Tag = 1
      Caption = 'Or'#231'amentos'
      ShortCut = 120
      OnExecute = ActOrcamentosExecute
    end
    object ActPessoas: TAction
      Tag = 1
      Caption = 'ActPessoas'
      ShortCut = 118
      OnExecute = ActPessoasExecute
    end
    object ActAlteraCliente: TAction
      Tag = 1
      Caption = 'Alterar Cliente'
    end
    object ActConsultaProduto: TAction
      Tag = 1
      Caption = 'Consulta Produto'
      OnExecute = ActConsultaProdutoExecute
    end
    object ActImportaOrcamento: TAction
      Caption = 'Imp. Or'#231'amento (F10)'
      ShortCut = 121
    end
    object ActCancelaOrc: TAction
      Tag = 1
      Caption = 'Cancelar Or'#231'amento'
      ShortCut = 123
    end
    object ActConfCampos: TAction
      Tag = 1
      Caption = 'Configura Campos (F2)'
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
    end
    object ActExportarProdutos: TAction
      OnExecute = ActExportarProdutosExecute
    end
    object ActSeleciona: TAction
      Caption = 'ActSeleciona'
      ShortCut = 16416
      OnExecute = ActSelecionaExecute
    end
    object ActExportar: TAction
      Caption = 'Exportar Registros'
      OnExecute = ActExportarExecute
    end
    object ActExportarClientes: TAction
      OnExecute = ActExportarClientesExecute
    end
    object ActMarcarTodos: TAction
      Caption = 'Marcar Todos'
      OnExecute = ActMarcarTodosExecute
    end
    object ActDesmarcaTodos: TAction
      Caption = 'Desmarcar Todos'
      OnExecute = ActDesmarcaTodosExecute
    end
    object ActExportarTransportadora: TAction
      Caption = 'ActExportarTransportadora'
      OnExecute = ActExportarTransportadoraExecute
    end
    object ActExportarFaturamentos: TAction
      Caption = 'ActExportarFaturamentos'
      OnExecute = ActExportarFaturamentosExecute
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    OnStateChange = DataSourceStateChange
    Left = 523
    Top = 5
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = dmCadastros2.NFe_Clientes
    Left = 459
    Top = 5
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = dmCadastros2.NFe_Produtos
    OnStateChange = DataSourceStateChange
    Left = 491
    Top = 5
  end
  object stgNFeMan: TcxPropertiesStore
    Components = <
      item
        Component = ActAlteraCliente
        Properties.Strings = (
          'AutoCheck'
          'Caption'
          'Category'
          'Checked'
          'Enabled'
          'GroupIndex'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImageIndex'
          'Name'
          'SecondaryShortCuts'
          'ShortCut'
          'Tag'
          'Visible')
      end
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
        Component = GRIDCANCELADA
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
        Component = GRIDCPF_CGC
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
        Component = GRIDDATA
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
        Component = GRIDDATA_CAIXA
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
        Component = GRIDDESC_ACRES
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
        Component = GRIDFECHADA
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
        Component = GRIDID_AGRUPADOR
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
        Component = GRIDNATUREZA
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
        Component = GRIDNOME_RAZAO
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
        Component = GRIDNUM_CUPOM
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
        Component = GridPessoa
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
        Component = GridPessoaCNPJ
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
        Component = GridPessoaCODIGO
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
        Component = GridPessoaNFE_EXP
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
        Component = GridPessoaNOME_RAZAO
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
        Component = GridPessoaSELECIONADO
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
        Component = GridProdutos
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
        Component = GridProdutosCNPJ
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
        Component = GridProdutosCODIGO
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
        Component = GridProdutosEXPORTADO
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
        Component = GridProdutosGRUPO
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
        Component = GridProdutosNOME
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
        Component = GridProdutosSELECIONADO
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
        Component = GRIDPROPRIEDADE
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
        Component = GRIDTOTAL
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
        Component = GridTrasportadorasCNPJ
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
        Component = GridTrasportadorasCODIGO
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
        Component = GridTrasportadorasCPF_CNPJ
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
        Component = GridTrasportadorasNFE_EXP
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
        Component = GridTrasportadorasNOME
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
        Component = GridTrasportadorasSELECIONADO
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
      end>
    StorageName = 'stgNFeMan'
    Left = 331
    Top = 5
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 398
    Top = 5
  end
  object mtbProduto: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 288
    Top = 184
    object mtbProdutoCOD_PRODUTO: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_PRODUTO'
      Size = 15
    end
    object mtbProdutoDESCRICAO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'DESCRICAO'
      Size = 50
    end
  end
  object mtbCliente: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 328
    Top = 184
    object mtbClienteCOD_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_CLIENTE'
    end
    object mtbClienteNOME: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Size = 50
    end
    object mtbClienteCNPJ: TStringField
      DisplayLabel = 'CNPJ/CPF'
      FieldName = 'CNPJ'
    end
  end
  object PopMarcar: TPopupMenu
    Alignment = paCenter
    Left = 391
    Top = 240
    object MenuItem2: TMenuItem
      Action = ActMarcarTodos
      Bitmap.Data = {
        AA040000424DAA04000000000000360000002800000013000000130000000100
        1800000000007404000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00000000000000
        0000A4A3E44C4B61000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFF000000FFFFFF0000000000000000003D3B
        E03836F76463D115151800000000000000000000000000000000000000000000
        0000000000FFFFFFFFFFFF000000FFFFFF0000000000005453694443F83735F8
        3C3AF76060B10000000000000000000000000000000000000000000000000000
        00FFFFFFFFFFFF000000FFFFFF0000000000008684EB3836F83735F83735F848
        46D419191C000000000000000000000000000000000000000000000000FFFFFF
        FFFFFF000000FFFFFF0000003333393A38EF3735F85755F93E3CF73836F76261
        B9000000000000000000000000000000000000000000000000FFFFFFFFFFFF00
        0000FFFFFF0000007A79F53937F73735F862618E3F3EA43634F73B39D8535262
        000000000000000000000000000000000000000000FFFFFFFFFFFF000000FFFF
        FF0000003634F73735F85A58F81212203030504D4BF83735F77271DD21212500
        0000000000000000000000000000000000FFFFFFFFFFFF000000FFFFFF000000
        7575B67271F94B4A590000000000005756893B39F73634F74949890000000000
        00000000000000000000000000FFFFFFFFFFFF000000FFFFFF00000000000000
        00000000000000000000001F1E246B69DD3634F76261F9414151000000000000
        000000000000000000FFFFFFFFFFFF000000FFFFFF0000000000000000000000
        000000000000000000003232406D6CF93634F77B79E62A2A2D00000000000000
        0000000000FFFFFFFFFFFF000000FFFFFF000000000000000000000000000000
        0000000000000000004A4A5E4341D43D3BF77372D90000000000000000000000
        00FFFFFFFFFFFF000000FFFFFF00000000000000000000000000000000000000
        00000000000000005858725856F84442F87979A3000000000000000000FFFFFF
        FFFFFF000000FFFFFF0000000000000000000000000000000000000000000000
        0000000000000056566A706FF94341F89191AB000000000000FFFFFFFFFFFF00
        0000FFFFFF000000000000000000000000000000000000000000000000000000
        0000000000004342514B49C8504EF05F5F7A000000FFFFFFFFFFFF000000FFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        00000000000F0F187A78F94F4DF8585879FFFFFFFFFFFF000000FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000}
    end
    object MarcarmensagemcomoLida1: TMenuItem
      Action = ActDesmarcaTodos
      Bitmap.Data = {
        AA040000424DAA04000000000000360000002800000013000000130000000100
        1800000000007404000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF00000000000000
        00008EFEF28EFEF2000000000000000000000000000000000000000000000000
        000000000000000000FFFFFFFFFFFF000000FFFFFF0000000000000000008EFE
        F250FEF68EFEF215151800000000000000000000000000000000000000000000
        0000000000FFFFFFFFFFFF000000FFFFFF0000000000008EFEF28EFEF250FEF6
        50FEF68EFEF20000000000000000000000000000000000000000000000000000
        00FFFFFFFFFFFF000000FFFFFF0000000000008EFEF250FEF650FEF650FEF68E
        FEF219191C000000000000000000000000000000000000000000000000FFFFFF
        FFFFFF000000FFFFFF0000008EFEF250FEF650FEF68EFEF250FEF650FEF68EFE
        F2000000000000000000000000000000000000000000000000FFFFFFFFFFFF00
        0000FFFFFF0000008EFEF250FEF650FEF67BD6FD8EFEF250FEF650FEF68EFEF2
        000000000000000000000000000000000000000000FFFFFFFFFFFF000000FFFF
        FF00000050FEF650FEF68EFEF27BD6FD7BD6FD8EFEF250FEF68EFEF28EFEF200
        0000000000000000000000000000000000FFFFFFFFFFFF000000FFFFFF000000
        8EFEF28EFEF28EFEF20000000000007BD6FD50FEF650FEF68EFEF20000000000
        00000000000000000000000000FFFFFFFFFFFF000000FFFFFF00000000000000
        00000000000000000000007BD6FD8EFEF250FEF68EFEF28EFEF2000000000000
        000000000000000000FFFFFFFFFFFF000000FFFFFF0000000000000000000000
        000000000000000000007BD6FD8EFEF28EFEF28EFEF27BD6FD00000000000000
        0000000000FFFFFFFFFFFF000000FFFFFF000000000000000000000000000000
        0000000000000000007BD6FD8EFEF28EFEF28EFEF20000000000000000000000
        00FFFFFFFFFFFF000000FFFFFF00000000000000000000000000000000000000
        00000000000000007BD6FD8EFEF250FEF68EFEF2000000000000000000FFFFFF
        FFFFFF000000FFFFFF0000000000000000000000000000000000000000000000
        000000000000007BD6FD8EFEF250FEF68EFEF2000000000000FFFFFFFFFFFF00
        0000FFFFFF000000000000000000000000000000000000000000000000000000
        0000000000007BD6FD8EFEF250FEF68EFEF2000000FFFFFFFFFFFF000000FFFF
        FF00000000000000000000000000000000000000000000000000000000000000
        00000000000F0F1850FEF650FEF67BD6FDFFFFFFFFFFFF000000FFFFFF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000}
    end
  end
  object dsTrasnportadora: TDataSource
    AutoEdit = False
    DataSet = dmCadastros2.NFe_Transportadoras
    Left = 459
    Top = 37
  end
  object mtbTransportadora: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 368
    Top = 184
    object mtbTransportadoraCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object mtbTransportadoraNOME: TStringField
      DisplayLabel = 'Transportadora'
      FieldName = 'NOME'
      Size = 50
    end
    object mtbTransportadoraCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
  end
  object mtbFaturamentos: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 200
    Top = 184
    object mtbFaturamentosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
    end
    object mtbFaturamentosCLIENTE: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Size = 60
    end
    object mtbFaturamentosNUM_NF: TIntegerField
      DisplayLabel = 'N'#186' NF'
      FieldName = 'NUM_NF'
    end
    object mtbFaturamentosCPF_CNPJ: TStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object mtbFaturamentosDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object mtbFaturamentosTOTAL: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
    end
    object mtbFaturamentosDATA_CAIXA: TDateField
      DisplayLabel = 'Dt. Caixa'
      FieldName = 'DATA_CAIXA'
    end
  end
end
