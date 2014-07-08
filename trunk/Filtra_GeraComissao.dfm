object frmFiltraGeraComissoes: TfrmFiltraGeraComissoes
  Left = 262
  Top = 128
  Width = 294
  Height = 191
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Gerar Comiss'#245'es do Per'#237'odo'
  Color = clWhite
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
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 286
    Height = 164
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 28
      Width = 248
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 6
      Caption = 'Gerar Comiss'#245'es do Per'#237'odo'
      ParentFont = False
      Transparent = True
    end
    object Panel2: TPanel
      Left = 2
      Top = 130
      Width = 282
      Height = 32
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object BtnOk: TcxButton
        Left = 114
        Top = 4
        Width = 77
        Height = 25
        Cursor = crHandPoint
        Action = ActGerar
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          66666666666666666666666666666666666666666666666666666666AC666666
          66666666F86666666666666A22C666666666666F88866666666666A2222C6666
          666666F88888666666666A222222C66666666F888888866666666A22CA222C66
          66666F888F88886666666A2C66A222C666666F8866F8888666666AC6666A222C
          66666F86666F8888666666666666A222C66666666666F8888666666666666A22
          2C66666666666F8888666666666666A222C66666666666F8888666666666666A
          22C666666666666F8886666666666666A2C6666666666666F886666666666666
          6AC66666666666666F8666666666666666666666666666666666}
        NumGlyphs = 2
      end
      object RzBitBtn2: TcxButton
        Left = 194
        Top = 4
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Action = ActFechar
        Cancel = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
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
    object gbData: TGroupBox
      Left = 9
      Top = 35
      Width = 270
      Height = 70
      Caption = 'Dt. Caixa'
      Color = clCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label4: TcxLabel
        Left = 152
        Top = 16
        Caption = 'Final'
        ParentFont = False
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 13
        Top = 16
        Caption = 'Inicial'
        ParentFont = False
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 130
        Top = 41
        Caption = #224
        ParentFont = False
        Transparent = True
      end
      object DataInicial: TdxDateEdit
        Left = 11
        Top = 31
        Width = 105
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
        Date = -700000.000000000000000000
        UseEditMask = True
        StoredValues = 4
      end
      object DataFinal: TdxDateEdit
        Left = 152
        Top = 31
        Width = 105
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
        Date = -700000.000000000000000000
        UseEditMask = True
        StoredValues = 4
      end
    end
  end
  object Actions: TActionList
    Left = 149
    Top = 4
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActGerar: TAction
      Caption = '&Ok'
      OnExecute = ActGerarExecute
    end
  end
  object dsVendedor: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelVendedor
    Left = 200
    Top = 4
  end
end
