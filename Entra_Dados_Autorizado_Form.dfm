object FrmEntraDadosAutorizado: TFrmEntraDadosAutorizado
  Left = 244
  Top = 216
  Width = 395
  Height = 217
  BorderIcons = [biSystemMenu]
  Caption = ' Digite os Dados  do Autorizado'
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
    Width = 387
    Height = 190
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
      Caption = 'Dados do Autorizado'
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
      Top = 132
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
      Left = 27
      Top = 159
      Caption = 'Estado'
      ParentFont = False
      Transparent = True
    end
    object Label7: TcxLabel
      Left = 230
      Top = 132
      Caption = 'RG'
      ParentFont = False
      Transparent = True
    end
    object RzBitBtn1: TcxButton
      Left = 248
      Top = 154
      Width = 120
      Height = 25
      Action = ActOk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
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
    end
    object EdCpf: TdxMaskEdit
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
      TabOrder = 3
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
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
    end
    object CmbEstado: TdxPickEdit
      Left = 64
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
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
      Items.Strings = (
        'Casado(a)'
        'Solteiro(a)'
        'Separado(a)'
        'Viuvo(a)')
    end
    object EdRg: TdxEdit
      Left = 248
      Top = 126
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 4
      OnEnter = EdNomeEnter
      OnExit = EdEnderecoExit
      OnKeyDown = EdNomeKeyDown
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
