object FrmTroco: TFrmTroco
  Left = 161
  Top = 79
  BorderStyle = bsNone
  Caption = 'Tr'#244'co'
  ClientHeight = 288
  ClientWidth = 210
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnTotal: TPanel
    Left = 0
    Top = 0
    Width = 210
    Height = 288
    Align = alClient
    Alignment = taRightJustify
    BevelInner = bvRaised
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 7280169
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 52984
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lbl1: TcxLabel
      Left = 61
      Top = 10
      Caption = '1'
      ParentFont = False
      Transparent = True
    end
    object lbl2: TcxLabel
      Left = 61
      Top = 40
      Caption = '2'
      ParentFont = False
      Transparent = True
    end
    object lbl3: TcxLabel
      Left = 61
      Top = 70
      Caption = '3'
      ParentFont = False
      Transparent = True
    end
    object lbl4: TcxLabel
      Left = 61
      Top = 100
      Caption = '4'
      ParentFont = False
      Transparent = True
    end
    object lbl5: TcxLabel
      Left = 61
      Top = 130
      Caption = '5'
      ParentFont = False
      Transparent = True
    end
    object lbl6: TcxLabel
      Left = 61
      Top = 160
      Caption = '6'
      ParentFont = False
      Transparent = True
    end
    object lbl7: TcxLabel
      Left = 61
      Top = 190
      Caption = '7'
      ParentFont = False
      Transparent = True
    end
    object lbl8: TcxLabel
      Left = 61
      Top = 220
      Caption = '8'
      ParentFont = False
      Transparent = True
    end
    object lbl9: TcxLabel
      Left = 61
      Top = 250
      Caption = '9'
      ParentFont = False
      Transparent = True
    end
    object RxLabel1: TcxLabel
      Left = 93
      Top = 10
      Caption = 'R$ 100,00'
      ParentFont = False
      Transparent = True
    end
    object RxLabel2: TcxLabel
      Left = 93
      Top = 40
      Caption = 'R$   50,00'
      ParentFont = False
      Transparent = True
    end
    object RxLabel3: TcxLabel
      Left = 93
      Top = 70
      Caption = 'R$   10,00'
      ParentFont = False
      Transparent = True
    end
    object RxLabel4: TcxLabel
      Left = 93
      Top = 100
      Caption = 'R$     5,00'
      ParentFont = False
      Transparent = True
    end
    object RxLabel5: TcxLabel
      Left = 93
      Top = 130
      Caption = 'R$     1,00'
      ParentFont = False
      Transparent = True
    end
    object RxLabel6: TcxLabel
      Left = 93
      Top = 160
      Caption = 'R$     0,50'
      ParentFont = False
      Transparent = True
    end
    object RxLabel7: TcxLabel
      Left = 93
      Top = 190
      Caption = 'R$     0,10'
      ParentFont = False
      Transparent = True
    end
    object RxLabel8: TcxLabel
      Left = 93
      Top = 220
      Caption = 'R$     0,05'
      ParentFont = False
      Transparent = True
    end
    object RxLabel9: TcxLabel
      Left = 93
      Top = 250
      Caption = 'R$     0,01'
      ParentFont = False
      Transparent = True
    end
  end
  object ActLista: TActionList
    Left = 10
    Top = 2
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
