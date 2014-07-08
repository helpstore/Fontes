object FrmEntraEstadoCheque: TFrmEntraEstadoCheque
  Left = 331
  Top = 204
  Width = 203
  Height = 243
  BorderIcons = [biSystemMenu]
  Caption = 'Digite o Novo Estado'
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
    Height = 216
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
      Caption = 'Estado do Cheque'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 8
      Top = 143
      Caption = 'Estado'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 4
      Top = 44
      Caption = 'Cheque'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 17
      Top = 73
      Caption = 'Valor'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 8
      Top = 103
      Caption = 'Cliente'
      ParentFont = False
      Transparent = True
    end
    object RzBitBtn1: TcxButton
      Left = 71
      Top = 176
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
    object cmbTipo: TdxPickEdit
      Left = 52
      Top = 136
      Width = 129
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = IniKeyDown
      DropDownListStyle = True
      Items.Strings = (
        'DE - Devolvido'
        'NO - Normal '
        'CR '
        'PT'
        'SR'
        'SP')
      CanDeleteText = True
    end
    object CHEQUE: TdxEdit
      Left = 79
      Top = 41
      Width = 102
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 2
      Alignment = taRightJustify
      StoredValues = 1
    end
    object VALOR: TdxEdit
      Left = 79
      Top = 70
      Width = 102
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 3
      Alignment = taRightJustify
      StoredValues = 1
    end
    object NOME: TdxEdit
      Left = 45
      Top = 100
      Width = 137
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 4
      Alignment = taRightJustify
      StoredValues = 1
    end
  end
  object Actions: TActionList
    Left = 161
    Top = 176
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
