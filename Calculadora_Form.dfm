object FrmCalculadora: TFrmCalculadora
  Left = 308
  Top = 180
  Width = 236
  Height = 219
  BorderIcons = []
  Caption = 'Calculadora'
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
  object Image1: TImage
    Left = 20
    Top = 12
    Width = 34
    Height = 25
    Picture.Data = {
      07544269746D6170F6000000424DF60000000000000076000000280000001000
      0000100000000100040000000000800000000000000000000000100000000000
      0000000000000000800000800000008080008000000080008000808000008080
      8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00333333303333333333333330333333333333330903333333333333090333
      3333333330999033333333333099903333333333099999033333333309999903
      3333333099999990333333300009000033333333330903333333333333090333
      3333333333090333333333333309033333333333330903333333333333000333
      3333}
    Stretch = True
    Transparent = True
  end
  object dxCalculator1: TdxCalculator
    Left = 8
    Top = 42
    Width = 212
    Height = 141
    BorderStyle = bsSingle
    TabOrder = 0
    Associate = EdValor
    ButtonStyle = bsFlat
  end
  object EdValor: TdxCalcDisplay
    Left = 63
    Top = 11
    Width = 155
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    TabStop = False
    Text = '0'
  end
  object Act: TActionList
    Left = 111
    Top = 65
    object ActRetorno: TAction
      Caption = 'ActRetorno'
      ShortCut = 40
      OnExecute = ActRetornoExecute
    end
    object ActCancelar: TAction
      Caption = 'ActCancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
  end
end
