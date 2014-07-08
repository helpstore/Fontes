object FrmArredondaTruncaPdv: TFrmArredondaTruncaPdv
  Left = 304
  Top = 120
  BorderStyle = bsNone
  Caption = ' Arredonda Trunca '
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
    object CkArredonda: TRadioButton
      Left = 11
      Top = 24
      Width = 121
      Height = 17
      Caption = 'Arredonda'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnKeyDown = CkArredondaKeyDown
    end
    object RadioButton2: TRadioButton
      Left = 145
      Top = 24
      Width = 86
      Height = 17
      Caption = 'Trunca'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnKeyDown = CkArredondaKeyDown
    end
  end
  object ActLista: TActionList
    Left = 10
    Top = 65514
    object ActFechar: TAction
      Caption = 'Fechar'
      ShortCut = 13
    end
    object ActCancelar: TAction
      Caption = 'Cancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
  end
end
