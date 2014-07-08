object FrmCalculadora_Pdv: TFrmCalculadora_Pdv
  Left = 164
  Top = 159
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Calculadora'
  ClientHeight = 313
  ClientWidth = 508
  Color = 7280169
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxCalculator1: TdxCalculator
    Left = 48
    Top = 38
    Width = 412
    Height = 275
    BorderStyle = bsSingle
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Associate = EdValor
    ButtonStyle = bsFlat
  end
  object EdValor: TdxCalcDisplay
    Left = 218
    Top = 3
    Width = 242
    Height = 32
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
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
