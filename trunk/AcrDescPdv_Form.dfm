object FrmAcrescimoDescontoPdv: TFrmAcrescimoDescontoPdv
  Left = 273
  Top = 139
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = ' Desconto '
  ClientHeight = 65
  ClientWidth = 247
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
    Color = 7280169
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 8404992
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object RxLabel1: TcxLabel
      Left = 15
      Top = 19
      Caption = 'Desconto'
      ParentFont = False
      Transparent = True
    end
    object VALOR: TdxCurrencyEdit
      Left = 128
      Top = 13
      Width = 105
      Color = 7280169
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderStyle = xbsNone
      TabOrder = 0
      Alignment = taRightJustify
      DisplayFormat = '###,##0.00'
      MaxValue = 9999.990000000000000000
      StoredValues = 17
    end
  end
  object ActLista: TActionList
    Left = 50
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
