object FrmMensagemDisplay: TFrmMensagemDisplay
  Left = 210
  Top = 160
  BorderStyle = bsDialog
  Caption = 'Visualizar Mensagem Enviada'
  ClientHeight = 185
  ClientWidth = 448
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 448
    Height = 144
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object Label1: TcxLabel
      Left = 18
      Top = 7
      Caption = 'Assunto'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 18
      Top = 49
      Caption = 'Mensagem'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 18
      Top = 90
      Caption = 'Dt. Validade'
      ParentFont = False
      Transparent = True
    end
    object edDtValidade: TdxDBDateEdit
      Left = 16
      Top = 104
      Width = 105
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      OnKeyDown = cmbLoginKeyDown
      DataField = 'DT_VALIDADE'
      DataSource = FrmMain.dsMensagens
      UseEditMask = True
      StoredValues = 4
    end
    object edMensagem: TdxDBEdit
      Left = 16
      Top = 63
      Width = 417
      Enabled = False
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
      OnKeyDown = cmbLoginKeyDown
      DataField = 'MENSAGEM'
      DataSource = FrmMain.dsMensagens
    end
    object edAssunto: TdxDBEdit
      Left = 16
      Top = 21
      Width = 281
      Enabled = False
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
      OnKeyDown = cmbLoginKeyDown
      DataField = 'ASSUNTO'
      DataSource = FrmMain.dsMensagens
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 144
    Width = 448
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btnEnviar: TcxButton
      Left = 8
      Top = 8
      Width = 93
      Height = 25
      Cursor = crHandPoint
      Action = ActEnviar
      Caption = '&Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BtnResponder: TcxButton
      Left = 101
      Top = 8
      Width = 139
      Height = 25
      Cursor = crHandPoint
      Action = ActResponder
      Caption = 'Responder ( F9 )'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555500005577777777777777777500005000000000000000007500005088
        80FFFFFF0FFFF0750000508180F4444F0F44F0750000508880FFFFFF0FFFF075
        0000508180F4444F0F44F0750000508880FFFFFF0FFFF0750000508180F4444F
        0F44F0750000508880FF0078088880750000508180F400007844807500005088
        80FF7008007880750000508180F4408FF80080750000508880FFF70FFF800075
        0000500000000008FF803007000050EEEEEEEE70880B43000000500000000000
        00FBB43000005555555555550BFFBB43000055555555555550BFFBB400005555
        55555555550BFFBB0000}
    end
  end
  object Actions: TActionList
    Left = 344
    Top = 16
    object ActEnviar: TAction
      Tag = 1
      Caption = '&Enviar'
      OnExecute = ActEnviarExecute
    end
    object ActCancelar: TAction
      Caption = '&Cancelar'
      OnExecute = ActCancelarExecute
    end
    object ActResponder: TAction
      Caption = 'Responder'
      ShortCut = 120
      OnExecute = ActResponderExecute
    end
  end
end
