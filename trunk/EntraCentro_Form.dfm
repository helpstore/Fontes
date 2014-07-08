object FrmEntraCentro: TFrmEntraCentro
  Left = 248
  Top = 220
  Width = 365
  Height = 121
  BorderIcons = [biSystemMenu]
  Caption = ' Centro de Custo'
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
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 357
    Height = 94
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clCaptionText
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 174
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Centro de Custo'
      ParentFont = False
      Transparent = True
    end
    object CmbCentroCusto: TdxLookupEdit
      Left = 7
      Top = 46
      Width = 338
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      OnEnter = CmbCentroCustoEnter
      OnExit = CmbCentroCustoExit
      ClearKey = 46
      ListFieldName = 'NOME'
      CanDeleteText = True
      KeyFieldName = 'CODIGO'
      ListSource = DsCentro
      LookupKeyValue = Null
    end
  end
  object Actions: TActionList
    Left = 105
    Top = 8
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      ShortCut = 13
      OnExecute = ActOkExecute
    end
  end
  object DsCentro: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelCentro
    Left = 200
    Top = 16
  end
end
