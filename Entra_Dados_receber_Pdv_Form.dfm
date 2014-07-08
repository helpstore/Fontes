object FrmEntraDados_Receber_Pdv: TFrmEntraDados_Receber_Pdv
  Left = 281
  Top = 156
  Width = 396
  Height = 214
  BorderIcons = [biSystemMenu]
  Caption = 'Dados do Receber'
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
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 52984
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
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
      Caption = 'Dados do Receber'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel1: TcxLabel
      Left = 27
      Top = 78
      Caption = 'Docto'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object RxLabel4: TcxLabel
      Left = 33
      Top = 111
      Caption = 'Valor'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object EdData: TdxDateEdit
      Left = 88
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
      TabOrder = 3
    end
    object EdDocumento: TdxEdit
      Left = 88
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
      MaxLength = 20
      StoredValues = 2
    end
    object EdValor: TdxCurrencyEdit
      Left = 88
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
      MinValue = -99999999.000000000000000000
      StoredValues = 113
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
