object FormPergunta: TFormPergunta
  Left = 288
  Top = 219
  BorderStyle = bsNone
  Caption = 'Pergunta'
  ClientHeight = 78
  ClientWidth = 292
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Painel: TPanel
    Left = 0
    Top = 0
    Width = 292
    Height = 78
    Align = alClient
    BorderStyle = bsSingle
    Color = clInactiveCaptionText
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Frase: TcxLabel
      Left = 27
      Top = 16
      Caption = 'Texto da pergunta'
      ParentFont = False
      Transparent = True
    end
    object Resposta: TcxLabel
      Left = 208
      Top = 8
      Caption = 'Resposta'
      Transparent = True
      Visible = False
    end
    object btnsim: TcxButton
      Left = 56
      Top = 50
      Width = 75
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
      Left = 168
      Top = 50
      Width = 75
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
