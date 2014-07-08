object FrmEntradaParcelamento: TFrmEntradaParcelamento
  Left = 293
  Top = 205
  Width = 370
  Height = 254
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Parcelar NF Entrada'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 362
    Height = 195
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clCaptionText
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 174
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Parcelar NF Entrada'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 18
      Top = 51
      Caption = 'Data Inicial'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 209
      Top = 109
      Caption = 'N. Doc.'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 12
      Top = 133
      Caption = 'Parcelas Ini.'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 30
      Top = 157
      Caption = 'Hist'#243'rico'
      ParentFont = False
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 214
      Top = 134
      Caption = 'Valor'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 35
      Top = 80
      Caption = 'Intervalo'
      ParentFont = False
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 18
      Top = 110
      Caption = 'Tipo. Docto'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 135
      Top = 133
      Caption = 'fim'
      ParentFont = False
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 132
      Top = 75
      Caption = '*Intervalo igual a zero incrementa o m'#234's'
      ParentFont = False
      Transparent = True
    end
    object EdData: TdxDateEdit
      Left = 80
      Top = 45
      Width = 89
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
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object EdDocumento: TdxEdit
      Left = 248
      Top = 103
      Width = 100
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
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      CharCase = ecUpperCase
    end
    object Parcelas: TdxCurrencyEdit
      Left = 80
      Top = 128
      Width = 49
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 4
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      Alignment = taRightJustify
      DisplayFormat = ',0;-,0'
      StoredValues = 1
    end
    object EdHistorico: TdxEdit
      Left = 80
      Top = 153
      Width = 268
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 7
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      CharCase = ecUpperCase
    end
    object EdValor: TdxCurrencyEdit
      Left = 248
      Top = 128
      Width = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      Alignment = taRightJustify
      DisplayFormat = 'R$ ,###,###,##0.00;-R$ ,###,###,##0.00'
      MaxValue = 99999999.000000000000000000
      StoredValues = 17
    end
    object EdIntervalo: TdxCurrencyEdit
      Left = 81
      Top = 75
      Width = 48
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 1
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      Alignment = taRightJustify
      DisplayFormat = ',0;-,0'
      StoredValues = 1
    end
    object CmbTipo: TdxLookupEdit
      Left = 80
      Top = 103
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      ListFieldName = 'NOME'
      KeyFieldName = 'SIGLA'
      LookupKeyValue = Null
    end
    object ParcelasFim: TdxCurrencyEdit
      Left = 152
      Top = 128
      Width = 49
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 5
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      Alignment = taRightJustify
      DisplayFormat = ',0;-,0'
      StoredValues = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 195
    Width = 362
    Height = 32
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      362
      32)
    object BtnOk: TcxButton
      Left = 193
      Top = 4
      Width = 77
      Height = 25
      Cursor = crHandPoint
      Action = ActOk
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
      Left = 272
      Top = 4
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Action = ActFechar
      Anchors = [akRight, akBottom]
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
  object Actions: TActionList
    Left = 241
    Top = 4
    object ActFechar: TAction
      Caption = '&Cancelar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
  end
  object dsPessoas: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Pessoas_FJ
    Left = 312
    Top = 3
  end
end
