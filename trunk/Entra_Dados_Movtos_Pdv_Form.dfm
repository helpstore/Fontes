object FrmEntraDados_Movtos_Pdv: TFrmEntraDados_Movtos_Pdv
  Left = 281
  Top = 156
  Width = 437
  Height = 288
  BorderIcons = [biSystemMenu]
  Caption = 'Dados do Movimento'
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
    Width = 429
    Height = 261
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 7280169
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 174
      Height = 2
      Shape = bsTopLine
    end
    object RxLabel3: TcxLabel
      Left = 58
      Top = 46
      Caption = 'Data'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LblTitulo: TcxLabel
      Left = 9
      Top = 6
      Caption = 'Dados do Movimento'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel1: TcxLabel
      Left = 46
      Top = 79
      Caption = 'Docto'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel4: TcxLabel
      Left = 52
      Top = 113
      Caption = 'Valor'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel2: TcxLabel
      Left = 60
      Top = 149
      Caption = 'Tipo'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel5: TcxLabel
      Left = 14
      Top = 182
      Caption = 'Hist'#243'rico'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object EdData: TdxDateEdit
      Left = 107
      Top = 42
      Width = 130
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
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
    object BtnOk: TcxButton
      Left = 321
      Top = 224
      Width = 75
      Height = 25
      Action = ActOk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object EdDocumento: TdxEdit
      Left = 107
      Top = 76
      Width = 289
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      CharCase = ecUpperCase
      MaxLength = 15
      StoredValues = 2
    end
    object EdValor: TdxCurrencyEdit
      Left = 107
      Top = 111
      Width = 130
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      Alignment = taRightJustify
      ReadOnly = False
      DisplayFormat = 'R$ ,###,###,##0.00;-R$ ,###,###,##0.00'
      MaxValue = 99999999.000000000000000000
      StoredValues = 81
    end
    object EdTipo: TdxPickEdit
      Left = 108
      Top = 145
      Width = 48
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      Items.Strings = (
        'C'
        'D')
    end
    object EDHISTORICO: TdxEdit
      Left = 108
      Top = 179
      Width = 289
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      CharCase = ecUpperCase
      MaxLength = 100
      StoredValues = 2
    end
  end
  object Actions: TActionList
    Left = 393
    Top = 24
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
  end
end
