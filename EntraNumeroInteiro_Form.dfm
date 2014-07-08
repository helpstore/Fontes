object FrmEntraNumeroInteiro: TFrmEntraNumeroInteiro
  Left = 244
  Top = 216
  Width = 203
  Height = 150
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
    Height = 123
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
      Top = 54
      Caption = 'Prompt'
      ParentFont = False
      Transparent = True
    end
    object RxLabel1: TcxLabel
      Left = 105
      Top = 13
      Caption = 'F8 - Procura'
      ParentFont = False
      Transparent = True
    end
    object RzBitBtn1: TcxButton
      Left = 64
      Top = 88
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
    object EdNumero: TdxMaskEdit
      Left = 56
      Top = 48
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
      TabOrder = 1
      OnKeyDown = IniKeyDown
      EditMask = '99999;1; '
      IgnoreMaskBlank = False
      Text = '     '
      StoredValues = 4
    end
  end
  object Actions: TActionList
    Left = 17
    Top = 72
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
    object ActLocalizar: TAction
      Caption = 'Localizar Venda'
      ShortCut = 119
      OnExecute = ActLocalizarExecute
    end
  end
end
