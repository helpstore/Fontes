object FrmMensagemFaturamento: TFrmMensagemFaturamento
  Left = 244
  Top = 216
  Width = 324
  Height = 185
  BorderIcons = []
  Caption = ' Mensagem '
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
    Width = 316
    Height = 158
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
      Caption = 'Mensagem'
      ParentFont = False
      Transparent = True
    end
    object RzBitBtn1: TcxButton
      Left = 121
      Top = 120
      Width = 75
      Height = 25
      Action = ActOk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555905555555555555999055555555555599905555
        5555555999990555555555999999055555555799059990555555790555599055
        5555555555599905555555555555990555555555555559905555555555555579
        0555555555555557905555555555555559905555555555555555}
    end
    object dxDBMemo1: TdxDBMemo
      Left = 8
      Top = 40
      Width = 300
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      DataField = 'OBS'
      DataSource = DSource
      ReadOnly = True
      Height = 73
      StoredValues = 64
    end
  end
  object Actions: TActionList
    Left = 273
    Top = 112
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
  object DSource: TDataSource
    AutoEdit = False
    DataSet = DmVendas2.Valida_Cliente
    Left = 200
    Top = 64
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 40
    Top = 56
  end
end
