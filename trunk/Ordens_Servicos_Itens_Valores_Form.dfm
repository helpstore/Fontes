object FrmEntraValorOs_Itens: TFrmEntraValorOs_Itens
  Left = 244
  Top = 216
  Width = 197
  Height = 137
  BorderIcons = [biSystemMenu]
  Caption = ' Digite o Valor'
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
    Width = 189
    Height = 110
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
      Caption = 'Valor'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 47
      Top = 78
      Caption = 'Valor'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 15
      Top = 46
      Caption = 'Quantidade'
      ParentFont = False
      Transparent = True
    end
    object EdValor: TdxDBCalcEdit
      Left = 88
      Top = 73
      Width = 88
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      OnEnter = IniEnter
      OnExit = EdValorExit
      OnKeyDown = ValorKeyDown
      DataField = 'UNITARIO'
      DataSource = DataSource
    end
    object dxDBCalcEdit1: TdxDBCalcEdit
      Left = 88
      Top = 41
      Width = 88
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
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = ValorKeyDown
      DataField = 'QUANTIDADE'
      DataSource = DataSource
    end
  end
  object Actions: TActionList
    Left = 73
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      ShortCut = 13
    end
  end
  object DataSource: TDataSource
    DataSet = DmServicos.Servicos_Itens
    Left = 109
    Top = 65531
  end
end
