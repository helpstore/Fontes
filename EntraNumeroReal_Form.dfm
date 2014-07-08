object FrmEntraNumeroReal: TFrmEntraNumeroReal
  Left = 244
  Top = 216
  Width = 203
  Height = 171
  BorderIcons = [biSystemMenu]
  Caption = ' Prompt '
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
    Width = 195
    Height = 144
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
      Caption = 'Per'#237'odo'
      ParentFont = False
      Transparent = True
    end
    object LBLPROMPT: TcxLabel
      Left = 13
      Top = 73
      Caption = 'Prompt'
      ParentFont = False
      Transparent = True
    end
    object RxLabel1: TcxLabel
      Left = 69
      Top = 44
      Caption = 'F10 - Calculadora'
      ParentFont = False
      Transparent = True
    end
    object RzBitBtn1: TcxButton
      Left = 64
      Top = 107
      Width = 75
      Height = 25
      Action = ActOk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object EdNumero: TcxCurrencyEdit
      Left = 84
      Top = 71
      ParentFont = False
      TabOrder = 1
      OnKeyDown = IniKeyDown
      Width = 97
    end
  end
  object Actions: TActionList
    Left = 105
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
    object ActCalculadora: TAction
      Caption = 'ActCalculadora'
      ShortCut = 121
      OnExecute = ActCalculadoraExecute
    end
  end
end
