object FrmEntraSenha: TFrmEntraSenha
  Left = 248
  Top = 220
  Width = 225
  Height = 121
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
    Width = 217
    Height = 94
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clCaptionText
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 137
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      AutoSize = False
      Caption = 'Senha'
      ParentFont = False
      Transparent = True
      Height = 23
      Width = 203
    end
    object LBLPROMPT: TcxLabel
      Left = 49
      Top = 54
      Caption = 'Senha'
      ParentFont = False
      Transparent = True
    end
    object EdNumero: TdxMaskEdit
      Left = 80
      Top = 48
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
      OnExit = EdNumeroExit
      OnKeyDown = IniKeyDown
      IgnoreMaskBlank = False
      PasswordChar = '*'
      StoredValues = 4
    end
  end
  object Actions: TActionList
    Left = 81
    Top = 8
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
