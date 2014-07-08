object FrmEntraDataCheque: TFrmEntraDataCheque
  Left = 85
  Top = 163
  Width = 396
  Height = 214
  BorderIcons = [biSystemMenu]
  Caption = 'Dados do Cheque'
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
    Width = 388
    Height = 187
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
      Left = 39
      Top = 46
      Caption = 'Data'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object LblTitulo: TcxLabel
      Left = 9
      Top = 6
      Caption = 'Dados Cheque'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel1: TcxLabel
      Left = 12
      Top = 78
      Caption = 'Cheque'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel2: TcxLabel
      Left = 145
      Top = 112
      Caption = 'Ag'#234'ncia'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel4: TcxLabel
      Left = 25
      Top = 111
      Caption = 'Banco'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel5: TcxLabel
      Left = 214
      Top = 78
      Caption = 'Conta'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object Ini: TdxDateEdit
      Left = 88
      Top = 42
      Width = 129
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
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = IniKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object BtnOk: TcxButton
      Left = 301
      Top = 152
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
    object EdCheque: TdxEdit
      Left = 88
      Top = 76
      Width = 100
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
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = IniKeyDown
      MaxLength = 6
      StoredValues = 2
    end
    object EdAgencia: TdxEdit
      Left = 224
      Top = 110
      Width = 153
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
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = IniKeyDown
    end
    object EdBanco: TdxEdit
      Left = 88
      Top = 110
      Width = 49
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = IniKeyDown
      MaxLength = 3
      StoredValues = 2
    end
    object EdConta: TdxEdit
      Left = 277
      Top = 76
      Width = 100
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
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = IniKeyDown
      MaxLength = 6
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
