object FrmSetaNumPedidoPdv: TFrmSetaNumPedidoPdv
  Left = 196
  Top = 116
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Novo N'#250'mero de Pedido'
  ClientHeight = 117
  ClientWidth = 352
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
    Width = 352
    Height = 117
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
      Top = 11
      Caption = 'Novo N'#250'mero de Pedido'
      ParentFont = False
      Transparent = True
    end
    object pncodigo: TPanel
      Left = 12
      Top = 36
      Width = 325
      Height = 65
      Alignment = taRightJustify
      BevelInner = bvRaised
      BevelWidth = 2
      BorderStyle = bsSingle
      Color = 7280169
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Edt: TEdit
        Left = 11
        Top = 12
        Width = 302
        Height = 37
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 52984
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        OnExit = EdtExit
      end
    end
  end
  object ActLista: TActionList
    Left = 266
    Top = 50
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
