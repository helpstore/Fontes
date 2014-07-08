object FrmSenhaGerencial: TFrmSenhaGerencial
  Left = 304
  Top = 120
  BorderStyle = bsNone
  Caption = ' Senha Gerencial '
  ClientHeight = 65
  ClientWidth = 247
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnTotal: TPanel
    Left = 0
    Top = 0
    Width = 247
    Height = 65
    Align = alClient
    Alignment = taRightJustify
    BevelInner = bvRaised
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 13487565
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8404992
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object RxLabel1: TcxLabel
      Left = 31
      Top = 19
      Caption = 'Senha'
      ParentFont = False
      Transparent = True
    end
    object VALOR: TEdit
      Left = 111
      Top = 11
      Width = 121
      Height = 37
      BorderStyle = bsNone
      Color = 13487565
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 0
      OnKeyPress = VALORKeyPress
    end
  end
  object ActLista: TActionList
    Left = 146
    Top = 18
    object ActFechar: TAction
      Caption = 'Fechar'
      ShortCut = 13
      OnExecute = ActFecharExecute
    end
    object ActCancelar: TAction
      Caption = 'Cancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
  end
end
