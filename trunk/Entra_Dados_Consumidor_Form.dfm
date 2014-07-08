object FrmEntraDadosConsumidor: TFrmEntraDadosConsumidor
  Left = 244
  Top = 216
  Width = 387
  Height = 269
  BorderIcons = [biSystemMenu]
  Caption = ' Digite os Dados  do Consumidor'
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
    Width = 379
    Height = 242
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clCaptionText
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 210
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Dados do Consumidor'
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
      Top = 104
      Caption = 'CPF'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 219
      Top = 104
      Caption = 'CNPJ'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 27
      Top = 186
      Caption = 'Cidade'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 30
      Top = 160
      Caption = 'Bairro'
      ParentFont = False
      Transparent = True
    end
    object Label7: TcxLabel
      Left = 18
      Top = 129
      Caption = 'Telefone'
      ParentFont = False
      Transparent = True
    end
    object RzBitBtn1: TcxButton
      Left = 293
      Top = 208
      Width = 75
      Height = 25
      Action = ActOk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
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
      Top = 99
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
      TabOrder = 2
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
      EditMask = '999.999.999-99;1; '
      IgnoreMaskBlank = False
      Text = '   .   .   -  '
      OnChange = EdCpfChange
      StoredValues = 4
    end
    object EdCnpj: TdxMaskEdit
      Left = 248
      Top = 99
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
      TabOrder = 3
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
      EditMask = '99.999.999/9999-99;1; '
      IgnoreMaskBlank = False
      Text = '  .   .   /    -  '
      OnChange = EdCnpjChange
      StoredValues = 4
    end
    object EdCidade: TdxEdit
      Left = 64
      Top = 181
      Width = 305
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
    object edtBairro: TdxEdit
      Left = 64
      Top = 154
      Width = 305
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 5
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
    end
    object edtFone: TdxMaskEdit
      Left = 64
      Top = 127
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
      TabOrder = 4
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      CharCase = ecUpperCase
      EditMask = '9999-9999;1; '
      IgnoreMaskBlank = False
      Text = '    -    '
      OnChange = EdCpfChange
      StoredValues = 4
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
end
