object FrmEntraNumeroOrcamento: TFrmEntraNumeroOrcamento
  Left = 244
  Top = 216
  Width = 215
  Height = 165
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
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 207
    Height = 138
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 190
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 4
      Top = 8
      Caption = 'Or'#231'amento'
      ParentFont = False
      Transparent = True
    end
    object RxLabel1: TcxLabel
      Left = 119
      Top = 13
      Caption = 'F8 - Procura'
      ParentFont = False
      Transparent = True
    end
    object LBLPROMPT: TcxLabel
      Left = 21
      Top = 54
      Caption = 'C'#243'digo'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 27
      Top = 81
      Caption = 'CFOP'
      ParentFont = False
      Transparent = True
    end
    object RzBitBtn1: TcxButton
      Left = 109
      Top = 104
      Width = 75
      Height = 25
      Action = ActOk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object EdNumero: TdxMaskEdit
      Left = 63
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
      TabOrder = 0
      OnKeyDown = IniKeyDown
      EditMask = '99999;1; '
      IgnoreMaskBlank = False
      Text = '     '
      StoredValues = 4
    end
    object edtCFOP: TdxMaskEdit
      Left = 63
      Top = 75
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
    Left = 41
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
