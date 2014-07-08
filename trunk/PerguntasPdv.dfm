object FormPerguntaPdv: TFormPerguntaPdv
  Left = 217
  Top = 296
  BorderStyle = bsNone
  Caption = 'Pergunta'
  ClientHeight = 56
  ClientWidth = 489
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Painel: TPanel
    Left = 0
    Top = 0
    Width = 489
    Height = 56
    Align = alClient
    BevelOuter = bvNone
    Color = 13487565
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Frase: TcxLabel
      Left = 3
      Top = 5
      AutoSize = False
      Caption = 'Texto da pergunta'
      ParentColor = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Transparent = True
      Height = 48
      Width = 374
    end
    object Resposta: TcxLabel
      Left = 8
      Top = 0
      Caption = 'Resposta'
      Transparent = True
      Visible = False
    end
    object btnsim: TcxButton
      Left = 379
      Top = 20
      Width = 50
      Height = 20
      Caption = '&Sim'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnSimClick
    end
    object btnnao: TcxButton
      Left = 435
      Top = 20
      Width = 50
      Height = 20
      Caption = '&N'#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BtnNaoClick
    end
  end
end
