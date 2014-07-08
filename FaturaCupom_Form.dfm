object FrmFaturaCupom: TFrmFaturaCupom
  Left = 233
  Top = 119
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsNone
  Caption = ' Fatura Venda no Caixa '
  ClientHeight = 381
  ClientWidth = 257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RxLabel4: TcxLabel
    Left = 78
    Top = 215
    Caption = 'Total'
    ParentFont = False
    Transparent = True
  end
  object Painel: TPanel
    Left = 0
    Top = 0
    Width = 257
    Height = 381
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object RxLabel3: TcxLabel
      Left = 6
      Top = 61
      Caption = 'Dinheiro'
      ParentFont = False
      Transparent = True
    end
    object RxLabel5: TcxLabel
      Left = 8
      Top = 124
      Caption = 'Cheque'
      ParentFont = False
      Transparent = True
    end
    object RxLabel6: TcxLabel
      Left = 8
      Top = 186
      Caption = 'Cart'#227'o'
      ParentFont = False
      Transparent = True
    end
    object RxLabel7: TcxLabel
      Left = 5
      Top = 247
      Caption = 'Ticket'
      ParentFont = False
      Transparent = True
    end
    object RxLabel8: TcxLabel
      Left = 7
      Top = 309
      Caption = 'Conv'#234'nio'
      ParentFont = False
      Transparent = True
    end
    object PnTotal: TPanel
      Left = 6
      Top = 5
      Width = 247
      Height = 57
      Alignment = taRightJustify
      BevelInner = bvRaised
      BevelWidth = 2
      BorderStyle = bsSingle
      Color = 7280169
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -37
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object PNDINHEIRO: TPanel
      Left = 6
      Top = 81
      Width = 247
      Height = 45
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
      TabOrder = 1
      object EdDinheiro: TDBEdit
        Left = 9
        Top = 5
        Width = 225
        Height = 31
        BorderStyle = bsNone
        DataField = 'DINHEIRO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 52984
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        OnExit = EdDinheiroExit
        OnKeyDown = DataKeyDown
        OnKeyPress = EdDinheiroKeyPress
      end
    end
    object PNCHEQUE: TPanel
      Left = 6
      Top = 144
      Width = 247
      Height = 45
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
      TabOrder = 2
      object EDCHEQUE: TDBEdit
        Left = 9
        Top = 5
        Width = 225
        Height = 31
        BorderStyle = bsNone
        DataField = 'CHEQUE'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 52984
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        OnExit = EdChequeExit
        OnKeyDown = DataKeyDown
        OnKeyPress = EDCHEQUEKeyPress
      end
    end
    object PNCARTAO: TPanel
      Left = 6
      Top = 207
      Width = 247
      Height = 45
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
      TabOrder = 3
      object EDCARTAO: TDBEdit
        Left = 9
        Top = 5
        Width = 225
        Height = 31
        BorderStyle = bsNone
        DataField = 'CARTAO'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 52984
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        OnExit = EdCartaoExit
        OnKeyDown = DataKeyDown
        OnKeyPress = EDCARTAOKeyPress
      end
    end
    object PNCONVENIO: TPanel
      Left = 6
      Top = 330
      Width = 247
      Height = 45
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
      TabOrder = 5
      object EDCONVENIO: TDBEdit
        Left = 9
        Top = 5
        Width = 225
        Height = 31
        BorderStyle = bsNone
        DataField = 'VLR_PARC_LC'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 52984
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        OnExit = EdConvenioExit
        OnKeyDown = DataKeyDown
        OnKeyPress = EDCONVENIOKeyPress
      end
    end
    object PNTICKET: TPanel
      Left = 6
      Top = 268
      Width = 247
      Height = 45
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
      TabOrder = 4
      object EDTICKET: TDBEdit
        Left = 9
        Top = 5
        Width = 225
        Height = 31
        BorderStyle = bsNone
        DataField = 'TICKET'
        DataSource = DataSource
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 52984
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = True
        ParentFont = False
        TabOrder = 0
        OnExit = EdTicketExit
        OnKeyDown = DataKeyDown
        OnKeyPress = EDCARTAOKeyPress
      end
    end
  end
  object Actions: TActionList
    Left = 185
    Top = 176
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      ShortCut = 123
      OnExecute = ActOkExecute
    end
    object ActCalculadora: TAction
      Caption = 'ActCalculadora'
      ShortCut = 121
      OnExecute = ActCalculadoraExecute
    end
    object ActCancelar: TAction
      Caption = 'ActCancelar'
      ShortCut = 65
      OnExecute = ActCancelarExecute
    end
    object ActCancelarPrazo: TAction
      Caption = 'Cancelar Prazo'
      ShortCut = 80
      OnExecute = ActCancelarPrazoExecute
    end
  end
  object DataSource: TDataSource
    DataSet = DmPdv.Pdv
    Left = 176
    Top = 112
  end
end
