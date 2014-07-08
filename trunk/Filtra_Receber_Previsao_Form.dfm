object FrmFiltraReceberPrevisao: TFrmFiltraReceberPrevisao
  Left = 238
  Top = 189
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Rel. Previs'#227'o Financeira '
  ClientHeight = 171
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 363
    Height = 171
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clCaptionText
    TabOrder = 0
    OnResize = pnlClientResize
    object LblTitulo: TLabel
      Left = 6
      Top = 8
      Width = 234
      Height = 23
      Caption = 'Rel. Previs'#227'o Financeira '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 174
      Height = 2
      Shape = bsTopLine
    end
    object Label3: TLabel
      Left = 48
      Top = 51
      Width = 23
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DATA: TdxDateEdit
      Left = 80
      Top = 45
      Width = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      OnEnter = DATAEnter
      OnExit = DATAExit
      OnKeyDown = DATAKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object CkCheques: TCheckBox
      Left = 80
      Top = 80
      Width = 135
      Height = 17
      Caption = 'Considerar Cheques'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = DATAEnter
      OnExit = DATAExit
      OnKeyDown = DATAKeyDown
    end
    object CkPerdidas: TCheckBox
      Left = 80
      Top = 108
      Width = 167
      Height = 17
      Caption = 'Considerar Arquivo Morto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnEnter = DATAEnter
      OnExit = DATAExit
      OnKeyDown = DATAKeyDown
    end
    object cxButton1: TcxButton
      Left = 156
      Top = 136
      Width = 92
      Height = 25
      Action = ActOk
      TabOrder = 3
    end
    object cxButton2: TcxButton
      Left = 260
      Top = 136
      Width = 91
      Height = 25
      Action = ActFechar
      TabOrder = 4
    end
  end
  object Actions: TActionList
    Left = 257
    Top = 4
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Tag = 1
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
  end
  object dsPessoas: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Pessoas_FJ
    Left = 312
    Top = 3
  end
end
