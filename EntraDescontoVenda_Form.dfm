object FrmEntraDesconto: TFrmEntraDesconto
  Left = 251
  Top = 248
  Width = 238
  Height = 252
  BorderIcons = [biSystemMenu]
  Caption = 'Acr'#233'scimo/Desconto'
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
    Width = 230
    Height = 225
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
      Caption = 'Venda'
      ParentFont = False
      Transparent = True
    end
    object LBLPROMPT: TcxLabel
      Left = 25
      Top = 87
      Caption = 'Desconto Valor'
      ParentFont = False
      Transparent = True
    end
    object RxLabel1: TcxLabel
      Left = 109
      Top = 12
      Caption = 'F10 - Calculadora'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 26
      Top = 51
      Caption = 'Valor da Venda'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 10
      Top = 124
      Caption = 'Desconto Porcent'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 70
      Top = 158
      Caption = 'Liqu'#237'do'
      ParentFont = False
      Transparent = True
    end
    object RzBitBtn1: TcxButton
      Left = 80
      Top = 189
      Width = 75
      Height = 25
      Action = ActOk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object EdValor: TcxCurrencyEdit
      Left = 116
      Top = 82
      ParentFont = False
      TabOrder = 0
      OnExit = EdValorExit
      OnKeyDown = IniKeyDown
      Width = 97
    end
    object EdVenda: TcxCurrencyEdit
      Left = 116
      Top = 47
      TabStop = False
      Enabled = False
      ParentFont = False
      TabOrder = 4
      OnKeyDown = IniKeyDown
      Width = 97
    end
    object EdPorcentagem: TcxCurrencyEdit
      Left = 116
      Top = 118
      ParentFont = False
      TabOrder = 1
      OnExit = EdPorcentagemExit
      OnKeyDown = IniKeyDown
      Width = 97
    end
    object EdLiquido: TcxCurrencyEdit
      Left = 116
      Top = 153
      ParentFont = False
      TabOrder = 2
      OnKeyDown = IniKeyDown
      Width = 97
    end
  end
  object Actions: TActionList
    Left = 73
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
