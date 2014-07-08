object Frm_CadastrarProdutosPdv: TFrm_CadastrarProdutosPdv
  Left = 123
  Top = 165
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsNone
  Caption = ' Cadastrar Produtos no Pdv'
  ClientHeight = 313
  ClientWidth = 508
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 508
    Height = 313
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    Color = 7280169
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 225
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Cadastrar Produtos Pdv'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 36
      Top = 126
      Caption = 'Nome'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 25
      Top = 49
      Caption = 'C'#243'digo'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 53
      Top = 89
      Caption = 'Sec.'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 42
      Top = 166
      Caption = 'Valor'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 322
      Top = 166
      Caption = 'Validade'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 63
      Top = 205
      Caption = 'Ecf'
      ParentFont = False
      Transparent = True
    end
    object EdNome: TdxEdit
      Left = 102
      Top = 123
      Width = 362
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      OnEnter = EdCodigoEnter
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
      CharCase = ecUpperCase
    end
    object EDVALOR: TdxCurrencyEdit
      Left = 102
      Top = 162
      Width = 121
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      OnEnter = EdCodigoEnter
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
      Alignment = taRightJustify
      DisplayFormat = 'R$ ,###,###,##0.00;-R$ ,###,###,##0.00'
      MaxValue = 99999999.000000000000000000
      StoredValues = 17
    end
    object EdCodigo: TdxEdit
      Left = 102
      Top = 46
      Width = 168
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      OnEnter = EdCodigoEnter
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
      CharCase = ecUpperCase
    end
    object EDCODIGO2: TdxEdit
      Left = 102
      Top = 85
      Width = 168
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      OnEnter = EdCodigoEnter
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
      CharCase = ecUpperCase
    end
    object EDVALIDADE: TdxCurrencyEdit
      Left = 416
      Top = 161
      Width = 48
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      OnEnter = EdCodigoEnter
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
      Alignment = taRightJustify
      DisplayFormat = '###,###,##0'
      MaxValue = 99999999.000000000000000000
      StoredValues = 17
    end
    object EDNEGATIVO: TCheckBox
      Left = 102
      Top = 239
      Width = 268
      Height = 24
      Caption = 'Aceita Estoque Negativo?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnEnter = EdCodigoEnter
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
    end
    object EDECF: TdxPickEdit
      Left = 102
      Top = 200
      Width = 75
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 5
      OnEnter = EdCodigoEnter
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
      DropDownListStyle = True
      Items.Strings = (
        'T1'
        'T2'
        'T3'
        'T4'
        'T5'
        'T6'
        'T7'
        'T8'
        'FF'
        'II')
    end
    object EDPESAVEL: TCheckBox
      Left = 102
      Top = 268
      Width = 107
      Height = 17
      Caption = 'Pes'#225'vel?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnEnter = EdCodigoEnter
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
    end
    object BTNOK: TcxButton
      Left = 432
      Top = 279
      Width = 68
      Height = 25
      Cursor = crHandPoint
      Caption = '&Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = BTNOKClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
    end
  end
  object Act: TActionList
    Left = 404
    Top = 31
    object ActCancelar: TAction
      Caption = 'Cancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
  end
end
