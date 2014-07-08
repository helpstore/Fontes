object FrmEntraDadosCheques: TFrmEntraDadosCheques
  Left = 274
  Top = 160
  Width = 395
  Height = 374
  BorderIcons = [biSystemMenu]
  Caption = ' Digite os Dados do Cheque'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 387
    Height = 347
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
      Caption = 'Dados do Cheque'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 31
      Top = 49
      Caption = 'Nome'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 15
      Top = 77
      Caption = 'Endere'#231'o'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 41
      Top = 160
      Caption = 'CPF'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 27
      Top = 105
      Caption = 'Cidade'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 31
      Top = 212
      Caption = 'Banco'
      ParentFont = False
      Transparent = True
    end
    object Label7: TcxLabel
      Left = 230
      Top = 160
      Caption = 'RG'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 22
      Top = 240
      Caption = 'Ag'#234'ncia'
      ParentFont = False
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 215
      Top = 240
      Caption = 'Conta'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 5
      Top = 186
      Caption = 'Nascimento'
      ParentFont = False
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 265
      Top = 132
      Caption = 'CEP'
      ParentFont = False
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 23
      Top = 266
      Caption = 'Cheque'
      ParentFont = False
      Transparent = True
    end
    object Label12: TcxLabel
      Left = 5
      Top = 292
      Caption = 'Vencimento'
      ParentFont = False
      Transparent = True
    end
    object Label13: TcxLabel
      Left = 206
      Top = 292
      Caption = 'Emiss'#227'o'
      ParentFont = False
      Transparent = True
    end
    object Label14: TcxLabel
      Left = 34
      Top = 318
      Caption = 'Valor'
      ParentFont = False
      Transparent = True
    end
    object Label15: TcxLabel
      Left = 32
      Top = 133
      Caption = 'Bairro'
      ParentFont = False
      Transparent = True
    end
    object Label16: TcxLabel
      Left = 215
      Top = 266
      Caption = 'Al'#237'nea'
      ParentFont = False
      Transparent = True
    end
    object RzBitBtn1: TcxButton
      Left = 248
      Top = 314
      Width = 120
      Height = 25
      Action = ActOk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 16
      Glyph.Data = {
        66010000424D6601000000000000760000002800000014000000140000000100
        040000000000F000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        8888888800008888888888888888888800008888FFFFFFFFFFFFF88800008887
        404040404040F88800008887040408840404F88800008887404089984040F888
        00008887040899998404F88800008887408999999840F8880000888777778998
        7777888800008888888889988888888800008888FFFF8998FFFFF88800008887
        BFBF8998BFBFF88800008887FBFB8998FBFBF88800008887BFBF8888BFBFF888
        00008887FBFBFBFBFBFBF88800008887BFBFBFBFBFBFF88800008887FBFBFBFB
        FBFBF88800008887777777777777888800008888888888888888888800008888
        88888888888888880000}
    end
    object EdNome: TdxEdit
      Left = 64
      Top = 43
      Width = 305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 0
      OnEnter = EdNomeEnter
      OnExit = EdNomeExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
    end
    object EdEndereco: TdxEdit
      Left = 64
      Top = 71
      Width = 305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 1
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
    end
    object EdCpf: TdxMaskEdit
      Left = 64
      Top = 155
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
      EditMask = '999.999.999-99;1; '
      IgnoreMaskBlank = False
      Text = '   .   .   -  '
      StoredValues = 4
    end
    object EdCidade: TdxEdit
      Left = 64
      Top = 99
      Width = 305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 2
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
    end
    object EdRg: TdxEdit
      Left = 248
      Top = 154
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 6
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
    end
    object CmbBanco: TdxLookupEdit
      Left = 64
      Top = 207
      Width = 305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 8
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      ClearKey = 46
      ListFieldName = 'NOME'
      CanDeleteText = True
      KeyFieldName = 'CODIGO'
      ListSource = DsBanco
      LookupKeyValue = Null
    end
    object EdAgencia: TdxEdit
      Left = 64
      Top = 234
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 9
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
    end
    object EdConta: TdxEdit
      Left = 248
      Top = 234
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 10
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
    end
    object EdNascimento: TdxMaskEdit
      Left = 64
      Top = 181
      Width = 81
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 7
      OnEnter = EdNomeEnter
      OnExit = EdNascimentoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
      EditMask = '99/99/9999;1; '
      IgnoreMaskBlank = False
      Text = '  /  /    '
      StoredValues = 4
    end
    object EdCep: TdxMaskEdit
      Left = 288
      Top = 127
      Width = 81
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
      EditMask = '99.999-999;1; '
      IgnoreMaskBlank = False
      Text = '  .   -   '
      StoredValues = 4
    end
    object EdCheque: TdxMaskEdit
      Left = 64
      Top = 261
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 11
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
      EditMask = '######;1; '
      IgnoreMaskBlank = False
      Text = '      '
      StoredValues = 4
    end
    object EdVencimento: TdxMaskEdit
      Left = 64
      Top = 287
      Width = 81
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 13
      OnEnter = EdNomeEnter
      OnExit = EdVencimentoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
      EditMask = '99/99/9999;1; '
      IgnoreMaskBlank = False
      Text = '  /  /    '
      StoredValues = 4
    end
    object EdEmissao: TdxMaskEdit
      Left = 248
      Top = 287
      Width = 81
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 14
      OnEnter = EdNomeEnter
      OnExit = EdEmissaoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
      EditMask = '99/99/9999;1; '
      IgnoreMaskBlank = False
      Text = '  /  /    '
      StoredValues = 4
    end
    object EdValor: TdxCurrencyEdit
      Left = 64
      Top = 313
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 15
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      Alignment = taRightJustify
      DisplayFormat = 'R$ ,###,###,##0.00;-R$ ,###,###,##0.00'
      MaxValue = 99999999.000000000000000000
      StoredValues = 17
    end
    object EdBairro: TdxEdit
      Left = 64
      Top = 127
      Width = 177
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 3
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
    end
    object EdAlinea: TdxEdit
      Left = 248
      Top = 260
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 12
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
    end
  end
  object Actions: TActionList
    Left = 281
    Top = 16
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
  end
  object DsBanco: TDataSource
    DataSet = DmFinanceiro.SelBanco
    Left = 224
    Top = 16
  end
end
