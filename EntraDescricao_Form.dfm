object FrmEntraDescricao: TFrmEntraDescricao
  Left = 248
  Top = 220
  Width = 365
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
    Width = 357
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
      Width = 174
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Nome'
      ParentFont = False
      Transparent = True
    end
    object LBLPROMPT: TcxLabel
      Left = 28
      Top = 54
      Caption = 'Prompt'
      ParentFont = False
      Transparent = True
    end
    object EdNumero: TdxMaskEdit
      Left = 64
      Top = 48
      Width = 281
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
      StoredValues = 4
    end
  end
  object Actions: TActionList
    Left = 105
    Top = 8
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
    end
    object ActLocalizar: TAction
      Caption = 'Localizar Produto'
      ShortCut = 119
    end
  end
end
