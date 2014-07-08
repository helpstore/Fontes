object frmGerarFaturamentos: TfrmGerarFaturamentos
  Left = 219
  Top = 187
  BorderStyle = bsDialog
  Caption = 'Gerar Faturamentos'
  ClientHeight = 143
  ClientWidth = 454
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = ActFecharExecute
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 454
    Height = 103
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    object Label2: TLabel
      Left = 9
      Top = 11
      Width = 58
      Height = 13
      Caption = 'Dt. Vencto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object RzMemo1: TcxMemo
      Left = 131
      Top = 22
      TabStop = False
      Enabled = False
      Lines.Strings = (
        '*Ser'#227'o gerados faturamentos e registros financeiros de contas '
        #224' receber para todos os registros de mensalidade selecionados.')
      ParentFont = False
      TabOrder = 0
      Height = 43
      Width = 321
    end
    object edtVencto: TcxDateEdit
      Left = 9
      Top = 28
      EditValue = 0.383306018498843d
      ParentFont = False
      TabOrder = 1
      Width = 104
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 103
    Width = 454
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object LblStatus: TLabel
      Left = 205
      Top = 13
      Width = 37
      Height = 13
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object ANDA: TProgressBar
      Left = 198
      Top = 12
      Width = 249
      Height = 16
      TabOrder = 0
    end
    object RzBitBtn2: TcxButton
      Left = 88
      Top = 7
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object RzBitBtn1: TcxButton
      Left = 8
      Top = 7
      Width = 75
      Height = 25
      Caption = 'OK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = RzBitBtn1Click
    end
  end
  object Actions: TActionList
    Left = 368
    object ActPreview: TAction
      Tag = 1
      Caption = '&Imprimir'
    end
  end
end
