object FrmEmpresas: TFrmEmpresas
  Left = 213
  Top = 104
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Empresas '
  ClientHeight = 581
  ClientWidth = 800
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 800
    Height = 581
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnResize = pnlClientResize
    object Bevel1: TBevel
      Left = 2
      Top = 547
      Width = 796
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 184
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TRxLabel
      Left = 48
      Top = 6
      Width = 94
      Height = 23
      Caption = 'Empresas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = 15000804
      ShadowPos = spRightBottom
    end
    object Image1: TImage
      Left = 8
      Top = 2
      Width = 32
      Height = 32
      AutoSize = True
      Picture.Data = {
        07544269746D6170360C0000424D360C00000000000036000000280000002000
        0000200000000100180000000000000C00000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000005050505050
        50505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF00000000000000C8FF00C8FF0067FF0067FF0000005050
        50505050505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF00000000000000C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
        00000000505050505050505050505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        00000000000000C8FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
        009067CF000000505050505050505050505050505050FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000CF9790CF979060302F
        60302F00000000C8FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
        009067CF2F0090000000505050505050505050505050505050505050FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000000000CF979060302FCF9790CF979060302F
        60302F00000000C8FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
        009067CF2F00902F0090000000505050505050505050505050505050FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
        60302F00000000C8FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
        009067CF2F00902F0090000000505050505050505050FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
        60302F00000000C8FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
        009067CF2F00902F0090000000505050FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
        60302F00000000C8FF00C8FF0030CF00C8FF00C8FF0067FF0067FF0067FF0000
        009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
        60302F00000000C8FF00C8FF0030CF00C8FF00C8FF0030CF0030CF0030CF0000
        009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
        60302F00000000C8FF00C8FF0030CF00C8FF00C8FF00C8FF0030CF0030CF0000
        009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
        00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0030CF0000
        009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF979060302F
        00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0030
        CF0000002F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000CF9790CF979060302FCF9790CF9790CF9790
        00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067
        FF0000009067CF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
        00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067
        FF0000009067CF2F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
        00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067
        FF0000009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
        00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067
        FF0000009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
        00000000C8FF00C8FF00C8FF00C8FF00C8FF00C8FF00C8FF0067FF0067FF0067
        FF0000009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
        00000000C8FF00C8FF00C8FF00C8FF00C8FFFFFFFFFFFFFF0067FF0067FF0067
        FF0000009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
        00000000C8FF00C8FF00C8FFFFFFFFFFFFFF60C8FF60C8FF60C8FF60C8FF0067
        FF0000009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790CF9790CF9790
        00000000C8FFFFFFFFFFFFFF0067FF0067FF0067FF0067FF0067FF0067FF60C8
        FF0000009067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790CF9790CF9790FFFFFFFFFFFF
        00000000000060C8FF5050500000000000000000000000000067FF0000000000
        00FFFFFF9067CF2F00902F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000CF9790CF9790CF9790FFFFFFFFFFFFFFC8CFFFC8CF
        FFC8CF00000060C8FF000000505050505050404040505050000000FFFFFFCF97
        FFCF97FFCF97FFCF97FF2F0090000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF000000CF9790FFFFFFFFFFFF60302F60302F60302F60302F
        60302F60302F0F0F0F404040A09F9FA09F9FA09F9F5050504040400000002F00
        902F00902F00902F0090CF97FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFC8CF505050000000000000000000000000
        60302F0000001F201FA09F9FDFD8DFDFD8DFBFBFBF9097904040400000000000
        000000002F0090000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF000000FFC8CF000000505050505050404040505050
        000000FFFFFF0F0F0FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F5050500000004040
        40505050000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F404040A09F9FA09F9FA09F9F505050
        4040400000001F201FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F404040000000A09F
        9F505050404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF1F201FA09F9FDFD8DFDFD8DFBFBFBF909790
        404040000000FFFFFF1F201FDFD8DFBFBFBF9097904040400F0F0FDFD8DFBFBF
        BF909790404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F
        505050000000FFFFFFFFFFFF0F0F0F0F0F0F000000404040FFFFFFFFFFFFDFD8
        DFA09F9F505050000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF1F201FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F
        404040000000FFFFFFFFFFFFFFFFFFFFFFFF1F201FDFD8DFFFFFFFFFFFFFDFD8
        DFA09F9F404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F201FDFD8DFBFBFBF909790404040
        0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F201FDFD8DFBFBFBF9097
        904040400F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0F0F0F000000404040
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F0F0F0F0000
        00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF}
      Transparent = True
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 549
      Width = 796
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 796
        Height = 26
        Align = dalTop
        BarManager = BarMgr
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 796
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object pc: TcxPageControl
      Left = 16
      Top = 39
      Width = 641
      Height = 382
      ActivePage = dxTabSheet2
      HideButtons = False
      HotTrack = True
      MultiLine = False
      OwnerDraw = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 1
      TabPosition = dxtpTop
      TabStop = True
      TabWidth = 0
      object dxTabSheet1: TcxTabSheet
        Caption = '  Cadastro  '
        OnEnter = dxTabSheet1Enter
        object Label1: TcxLabel
Transparent = True
          Left = 94
          Top = 17
          Width = 22
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cnpj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TcxLabel
Transparent = True
          Left = 25
          Top = 42
          Width = 91
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome/Razão Social'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TcxLabel
Transparent = True
          Left = 71
          Top = 67
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'Endereço'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TcxLabel
Transparent = True
          Left = 88
          Top = 92
          Width = 28
          Height = 13
          Alignment = taRightJustify
          Caption = 'Bairro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TcxLabel
Transparent = True
          Left = 31
          Top = 117
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cidade - UF - CEP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TcxLabel
Transparent = True
          Left = 64
          Top = 142
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fone - Fax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 641
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object Label71: TcxLabel
Transparent = True
          Left = 52
          Top = 166
          Width = 64
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label133: TcxLabel
Transparent = True
          Left = 295
          Top = 17
          Width = 14
          Height = 13
          Alignment = taRightJustify
          Caption = 'I.P'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label135: TcxLabel
Transparent = True
          Left = 479
          Top = 17
          Width = 30
          Height = 13
          Alignment = taRightJustify
          Caption = 'Senha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label134: TcxLabel
Transparent = True
          Left = 51
          Top = 195
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Path Externo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edNome: TdxDBEdit
          Left = 123
          Top = 37
          Width = 334
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtAlways
          Style.HotTrack = True
          TabOrder = 3
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'NOME'
          DataSource = DataSource
        end
        object EdUF: TdxDBEdit
          Left = 345
          Top = 112
          Width = 30
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtAlways
          Style.HotTrack = True
          TabOrder = 7
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = DataSource
        end
        object EdFone: TdxDBEdit
          Left = 123
          Top = 137
          Width = 106
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtAlways
          Style.HotTrack = True
          TabOrder = 9
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'FONE'
          DataSource = DataSource
        end
        object EdFax: TdxDBEdit
          Left = 230
          Top = 137
          Width = 104
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtAlways
          Style.HotTrack = True
          TabOrder = 10
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'FAX'
          DataSource = DataSource
        end
        object EdCEP: TdxDBMaskEdit
          Left = 376
          Top = 112
          Width = 81
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.HotTrack = True
          TabOrder = 8
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = DataSource
          EditMask = '99999\-999;0;_'
          IgnoreMaskBlank = False
          StoredValues = 4
        end
        object edEndereco: TdxDBEdit
          Left = 123
          Top = 62
          Width = 334
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ENDERECO'
          DataSource = DataSource
        end
        object edBairro: TdxDBEdit
          Left = 123
          Top = 87
          Width = 221
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'BAIRRO'
          DataSource = DataSource
        end
        object edCidade: TdxDBEdit
          Left = 123
          Top = 112
          Width = 221
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CIDADE'
          DataSource = DataSource
        end
        object EdCnpj: TdxDBEdit
          Left = 123
          Top = 12
          Width = 106
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtAlways
          Style.HotTrack = True
          TabOrder = 0
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'CNPJ'
          DataSource = DataSource
        end
        object CmbTipo_Empresa: TdxDBPickEdit
          Left = 123
          Top = 163
          Width = 211
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 11
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_EMPRESA'
          DataSource = DataSource
          Items.Strings = (
            'Pecas'
            'Tintas'
            'Papelaria'
            'Posto'
            'Loja'
            'Farmácia'
            'Roupas'
            'Implementos'
            'Agricultura'
            'Distribuidora'
            'Padaria'
            'SuperMercado'
            '')
        end
        object Foto: TdxGraphicEdit
          Left = 469
          Top = 37
          Width = 140
          TabOrder = 12
          Caption = 'Foto'
          Stretch = True
          Height = 100
        end
        object RzButton1: TRzButton
          Left = 513
          Top = 138
          Width = 96
          Caption = 'Carregar Imagem'
          TabOrder = 13
          TabStop = False
          OnClick = RzButton1Click
        end
        object RzButton2: TRzButton
          Left = 513
          Top = 166
          Width = 96
          Caption = 'Cancelar Imagem'
          TabOrder = 14
          TabStop = False
          OnClick = RzButton2Click
        end
        object EDCPFCGC: TdxDBMaskEdit
          Left = 312
          Top = 12
          Width = 145
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.HotTrack = True
          TabOrder = 1
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'IP_EXTERNO'
          DataSource = DataSource
          IgnoreMaskBlank = False
          StoredValues = 4
        end
        object EdSenha: TdxDBMaskEdit
          Left = 512
          Top = 12
          Width = 97
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.HotTrack = True
          TabOrder = 2
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'SENHA_EMPRESA_EXTERNA'
          DataSource = DataSource
          IgnoreMaskBlank = False
          PasswordChar = '*'
          StoredValues = 4
        end
        object dxDBEdit29: TdxDBEdit
          Left = 123
          Top = 189
          Width = 211
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 15
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CAMINHO_EXTERNO'
          DataSource = DataSource
        end
      end
      object dxTabSheet2: TcxTabSheet
        Caption = '  Configuração  '
        object Shape2: TShape
          Left = 0
          Top = 0
          Width = 641
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object Label9: TcxLabel
Transparent = True
          Left = 43
          Top = 10
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mensagem ECF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TcxLabel
Transparent = True
          Left = 43
          Top = 69
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Taxa Juros Até'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TcxLabel
Transparent = True
          Left = 206
          Top = 68
          Width = 24
          Height = 13
          Alignment = taRightJustify
          Caption = 'Após'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TcxLabel
Transparent = True
          Left = 321
          Top = 68
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Juro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TcxLabel
Transparent = True
          Left = 32
          Top = 117
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mensagem Boleto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TcxLabel
Transparent = True
          Left = 24
          Top = 170
          Width = 92
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente Venda Vista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TcxLabel
Transparent = True
          Left = 36
          Top = 194
          Width = 80
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt. Última Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TcxLabel
Transparent = True
          Left = 468
          Top = 242
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cst Variável'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TcxLabel
Transparent = True
          Left = 478
          Top = 195
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TcxLabel
Transparent = True
          Left = 302
          Top = 193
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Propaganda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TcxLabel
Transparent = True
          Left = 310
          Top = 218
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Descontos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label60: TcxLabel
Transparent = True
          Left = 7
          Top = 292
          Width = 110
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nº Máximo de Itens NF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label62: TcxLabel
Transparent = True
          Left = 184
          Top = 292
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Última Duplicata'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label65: TcxLabel
Transparent = True
          Left = 194
          Top = 316
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = 'Último CF Imp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label69: TcxLabel
Transparent = True
          Left = 3
          Top = 316
          Width = 114
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nº Máximo de Itens Orc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label73: TcxLabel
Transparent = True
          Left = 508
          Top = 219
          Width = 16
          Height = 13
          Alignment = taRightJustify
          Caption = 'PIS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label74: TcxLabel
Transparent = True
          Left = 323
          Top = 243
          Width = 38
          Height = 13
          Alignment = taRightJustify
          Caption = 'COFINS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label81: TcxLabel
Transparent = True
          Left = 33
          Top = 218
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nº de Lin Pedidos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label85: TcxLabel
Transparent = True
          Left = 309
          Top = 169
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Custo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label91: TcxLabel
Transparent = True
          Left = 37
          Top = 35
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mensagens ECF '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label163: TcxLabel
Transparent = True
          Left = 464
          Top = 68
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tolerância'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label164: TcxLabel
Transparent = True
          Left = 90
          Top = 94
          Width = 26
          Height = 13
          Alignment = taRightJustify
          Caption = 'Multa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label170: TcxLabel
Transparent = True
          Left = 53
          Top = 243
          Width = 63
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nº de Lin Orç'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label181: TcxLabel
Transparent = True
          Left = 330
          Top = 267
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'ISSQN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label191: TcxLabel
Transparent = True
          Left = 54
          Top = 267
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nº de Ordem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label208: TcxLabel
Transparent = True
          Left = 338
          Top = 292
          Width = 23
          Height = 13
          Alignment = taRightJustify
          Caption = 'CSLL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label218: TcxLabel
Transparent = True
          Left = 350
          Top = 316
          Width = 11
          Height = 13
          Alignment = taRightJustify
          Caption = 'IR'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label219: TcxLabel
Transparent = True
          Left = 470
          Top = 266
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desp. Oper'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edMensECF: TdxDBEdit
          Left = 123
          Top = 5
          Width = 334
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'MENS_ECF'
          DataSource = DataSource
        end
        object edTxJurosAte: TdxDBCalcEdit
          Left = 123
          Top = 64
          Width = 80
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TX_JUROS_ATE'
          DataSource = DataSource
        end
        object edTxJurosApos: TdxDBCalcEdit
          Left = 237
          Top = 64
          Width = 80
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TX_JUROS_APOS'
          DataSource = DataSource
        end
        object cmbTipoJuro: TdxDBPickEdit
          Left = 377
          Top = 64
          Width = 80
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
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_TAXA'
          DataSource = DataSource
          Items.Strings = (
            'Composto'
            'Simples')
        end
        object edMensBol1: TdxDBEdit
          Left = 123
          Top = 114
          Width = 334
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'MENSAGEM_BOL'
          DataSource = DataSource
        end
        object edMensBol2: TdxDBEdit
          Left = 123
          Top = 139
          Width = 334
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 9
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'MENSAGEM_BOL2'
          DataSource = DataSource
        end
        object edDtUltVenda: TdxDBDateEdit
          Left = 123
          Top = 189
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 11
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DT_ULT_VENDA'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object edCustoVariavel: TdxDBCalcEdit
          Left = 531
          Top = 238
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 28
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CUSTO_VARIAVEL'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object edVendedor: TdxDBCalcEdit
          Left = 531
          Top = 191
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 26
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VENDEDOR'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object edPropaganda: TdxDBCalcEdit
          Left = 367
          Top = 189
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 20
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PROPAGANDA'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object edDescontos: TdxDBCalcEdit
          Left = 367
          Top = 214
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 21
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DESCONTOS'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object dxDBEdit10: TdxDBEdit
          Left = 123
          Top = 288
          Width = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 15
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'NUM_MAX_ITENS'
          DataSource = DataSource
        end
        object dxDBEdit11: TdxDBEdit
          Left = 267
          Top = 288
          Width = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 17
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DUPLICATA'
          DataSource = DataSource
        end
        object dxDBEdit13: TdxDBEdit
          Left = 267
          Top = 312
          Width = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 18
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ECF_ULTNUMERO'
          DataSource = DataSource
        end
        object dxDBEdit14: TdxDBEdit
          Left = 123
          Top = 312
          Width = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 16
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'NUM_MAX_ITENS_ORC'
          DataSource = DataSource
        end
        object dxDBCalcEdit2: TdxDBCalcEdit
          Left = 531
          Top = 215
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 27
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PIS'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object dxDBCalcEdit3: TdxDBCalcEdit
          Left = 368
          Top = 239
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 22
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'COFINS'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object dxDBEdit16: TdxDBEdit
          Left = 123
          Top = 164
          Width = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 10
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CLI_VND_VISTA'
          DataSource = DataSource
        end
        object dxDBPickEdit5: TdxDBPickEdit
          Left = 123
          Top = 214
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 12
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ITENS_ORCAMENTO'
          DataSource = DataSource
          Items.Strings = (
            '66'
            '33')
        end
        object CmbTipo: TdxDBPickEdit
          Left = 367
          Top = 165
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 19
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_CUSTO'
          DataSource = DataSource
          Items.Strings = (
            'Simples'
            'Composto'
            'Manual'
            'Precificado')
        end
        object dxDBEdit17: TdxDBEdit
          Left = 123
          Top = 30
          Width = 158
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'MENS2_ECF'
          DataSource = DataSource
        end
        object dxDBEdit18: TdxDBEdit
          Left = 299
          Top = 30
          Width = 158
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'MENS3_ECF'
          DataSource = DataSource
        end
        object dxDBEdit36: TdxDBEdit
          Left = 517
          Top = 64
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TOLERANCIA_JUROS'
          DataSource = DsConfiguracoes
        end
        object dxDBCalcEdit11: TdxDBCalcEdit
          Left = 123
          Top = 89
          Width = 80
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'MULTA_FINANCEIRA'
          DataSource = DsConfiguracoes
        end
        object dxDBPickEdit9: TdxDBPickEdit
          Left = 123
          Top = 239
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 13
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ITENSORCAMENTO_ORC'
          DataSource = DsConfiguracoes
          Items.Strings = (
            '66'
            '33')
        end
        object dxDBCalcEdit13: TdxDBCalcEdit
          Left = 368
          Top = 263
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 23
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ALIQUOTA_ISS'
          DataSource = DsConfiguracoes
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object dxDBPickEdit11: TdxDBPickEdit
          Left = 123
          Top = 263
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 14
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ITENSORDEM_SERVICO'
          DataSource = DsConfiguracoes
          Items.Strings = (
            '66'
            '33')
        end
        object dxDBCalcEdit15: TdxDBCalcEdit
          Left = 368
          Top = 288
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 24
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CSLL'
          DataSource = DsConfiguracoes
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object dxDBCalcEdit17: TdxDBCalcEdit
          Left = 368
          Top = 312
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 25
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'IMPOSTO_RENDA'
          DataSource = DsConfiguracoes
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object dxDBCalcEdit18: TdxDBCalcEdit
          Left = 531
          Top = 262
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 29
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DESPESAS_OPERACIONAIS'
          DataSource = DsConfiguracoes
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
      end
      object dxTabSheet3: TcxTabSheet
        Caption = 'Configurações de Pdv'
        object Label23: TcxLabel
Transparent = True
          Left = 196
          Top = 35
          Width = 88
          Height = 13
          Alignment = taRightJustify
          Caption = 'Local de Cobrança'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TcxLabel
Transparent = True
          Left = 360
          Top = 36
          Width = 92
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo de Documento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TcxLabel
Transparent = True
          Left = 80
          Top = 33
          Width = 44
          Height = 13
          Alignment = taRightJustify
          Caption = 'Natureza'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TcxLabel
Transparent = True
          Left = 43
          Top = 61
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mensagem Pdv 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TcxLabel
Transparent = True
          Left = 43
          Top = 85
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mensagem Pdv 2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TcxLabel
Transparent = True
          Left = 43
          Top = 109
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mensagem Pdv 3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TcxLabel
Transparent = True
          Left = 43
          Top = 133
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mensagem Pdv 4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TcxLabel
Transparent = True
          Left = 43
          Top = 157
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Mensagem Pdv 5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TcxLabel
Transparent = True
          Left = 312
          Top = 181
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = 'Maior Unitário'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TcxLabel
Transparent = True
          Left = 301
          Top = 230
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = 'Senha Gerencial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label153: TcxLabel
Transparent = True
          Left = 66
          Top = 255
          Width = 60
          Height = 13
          Alignment = taRightJustify
          Caption = 'Diretório Tef'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label180: TcxLabel
Transparent = True
          Left = 312
          Top = 205
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = 'Trôco Máximo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label212: TcxLabel
Transparent = True
          Left = 79
          Top = 302
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cor Fonte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label213: TcxLabel
Transparent = True
          Left = 77
          Top = 278
          Width = 50
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cor Fundo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dxDBEdit1: TdxDBEdit
          Left = 131
          Top = 56
          Width = 334
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_MSG1'
          DataSource = DataSource
        end
        object dxDBEdit2: TdxDBEdit
          Left = 131
          Top = 80
          Width = 334
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_MSG2'
          DataSource = DataSource
        end
        object dxDBEdit3: TdxDBEdit
          Left = 131
          Top = 104
          Width = 334
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_MSG3'
          DataSource = DataSource
        end
        object dxDBEdit4: TdxDBEdit
          Left = 131
          Top = 128
          Width = 334
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_MSG4'
          DataSource = DataSource
        end
        object dxDBEdit5: TdxDBEdit
          Left = 131
          Top = 152
          Width = 334
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_MSG5'
          DataSource = DataSource
        end
        object dxDBCalcEdit1: TdxDBCalcEdit
          Left = 385
          Top = 177
          Width = 80
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_MAIORVALORUNIT'
          DataSource = DataSource
        end
        object dxDBEdit6: TdxDBEdit
          Left = 385
          Top = 225
          Width = 80
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.ButtonTransparence = ebtAlways
          Style.HotTrack = True
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'PDV_SENHA'
          DataSource = DataSource
          PasswordChar = '*'
        end
        object dxDBEdit25: TdxDBEdit
          Left = 131
          Top = 28
          Width = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_NATUREZA'
          DataSource = DataSource
        end
        object dxDBEdit26: TdxDBEdit
          Left = 291
          Top = 28
          Width = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 9
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_LOCALCOBRANCA'
          DataSource = DataSource
        end
        object dxDBEdit27: TdxDBEdit
          Left = 459
          Top = 28
          Width = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 10
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_TIPODOCTO'
          DataSource = DataSource
        end
        object dxDBEdit35: TdxDBEdit
          Left = 131
          Top = 249
          Width = 334
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DIRETORIO_TEF'
          DataSource = DataSource
        end
        object dxDBCalcEdit12: TdxDBCalcEdit
          Left = 385
          Top = 201
          Width = 80
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 11
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_TROCO_MAXIMO'
          DataSource = DsConfiguracoes
        end
        object dxDBEdit52: TdxDBEdit
          Left = 131
          Top = 297
          Width = 89
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 12
          OnEnter = dxDBEdit52Enter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_COR_FONTE'
          DataSource = DsConfiguracoes
        end
        object dxDBEdit53: TdxDBEdit
          Left = 131
          Top = 273
          Width = 89
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 13
          OnEnter = dxDBEdit53Enter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_COR_FUNDO'
          DataSource = DsConfiguracoes
        end
        object FOTO1: TdxGraphicEdit
          Left = 469
          Top = 56
          Width = 140
          TabOrder = 14
          Caption = 'Foto'
          Stretch = True
          Height = 100
        end
        object RzButton3: TRzButton
          Left = 513
          Top = 157
          Width = 96
          Caption = 'Carregar Imagem'
          TabOrder = 15
          TabStop = False
          OnClick = RzButton3Click
        end
        object RzButton4: TRzButton
          Left = 513
          Top = 185
          Width = 96
          Caption = 'Cancelar Imagem'
          TabOrder = 16
          TabStop = False
          OnClick = RzButton4Click
        end
      end
      object dxTabSheet4: TcxTabSheet
        Caption = 'Otimização do Sistema'
        object Label53: TcxLabel
Transparent = True
          Left = 407
          Top = 171
          Width = 92
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nº de Reg. p/ Load'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label44: TcxLabel
Transparent = True
          Left = 9
          Top = 111
          Width = 158
          Height = 13
          Alignment = taRightJustify
          Caption = 'Consulta Incremental no Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label47: TcxLabel
Transparent = True
          Left = 48
          Top = 151
          Width = 120
          Height = 13
          Alignment = taRightJustify
          Caption = 'Carregar Todos Arquivos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label49: TcxLabel
Transparent = True
          Left = 14
          Top = 131
          Width = 154
          Height = 13
          Alignment = taRightJustify
          Caption = 'Localizar Produto se Inexistente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label52: TcxLabel
Transparent = True
          Left = 401
          Top = 252
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cor Fundo Sel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label46: TcxLabel
Transparent = True
          Left = 460
          Top = 12
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'Acrescenta Zeros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label43: TcxLabel
Transparent = True
          Left = 50
          Top = 10
          Width = 118
          Height = 13
          Alignment = taRightJustify
          Caption = 'Seleciona Por Agrupador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TcxLabel
Transparent = True
          Left = 106
          Top = 30
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Elimina Zeros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label55: TcxLabel
Transparent = True
          Left = 350
          Top = 276
          Width = 122
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cor Fundo Deselecionado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TcxLabel
Transparent = True
          Left = 119
          Top = 50
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Possui Ecf'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label68: TcxLabel
Transparent = True
          Left = 74
          Top = 70
          Width = 93
          Height = 13
          Alignment = taRightJustify
          Caption = 'Blq Sem Qtde Fiscal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label70: TcxLabel
Transparent = True
          Left = 63
          Top = 287
          Width = 103
          Height = 13
          Alignment = taRightJustify
          Caption = 'Alt. Pre Vnd Entrada?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label76: TcxLabel
Transparent = True
          Left = 469
          Top = 96
          Width = 75
          Height = 13
          Alignment = taRightJustify
          Caption = 'Digita Cotações'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label93: TcxLabel
Transparent = True
          Left = 397
          Top = 203
          Width = 72
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Contagem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label95: TcxLabel
Transparent = True
          Left = 91
          Top = 90
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valida Cpf/Cnpj'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label96: TcxLabel
Transparent = True
          Left = 442
          Top = 153
          Width = 57
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nº de Zeros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label120: TcxLabel
Transparent = True
          Left = 78
          Top = 268
          Width = 89
          Height = 13
          Alignment = taRightJustify
          Caption = 'Imp. Posiçoes Tela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label150: TcxLabel
Transparent = True
          Left = 1
          Top = 229
          Width = 168
          Height = 13
          Alignment = taRightJustify
          Caption = 'Corrige Preço de VD com a Margem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label168: TcxLabel
Transparent = True
          Left = 419
          Top = 54
          Width = 126
          Height = 13
          Alignment = taRightJustify
          Caption = 'Indexa Custo de Produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label179: TcxLabel
Transparent = True
          Left = 437
          Top = 129
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Código SCPC'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label185: TcxLabel
Transparent = True
          Left = 404
          Top = 33
          Width = 141
          Height = 13
          Alignment = taRightJustify
          Caption = 'Indexa Produtos na Entradas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label192: TcxLabel
Transparent = True
          Left = 30
          Top = 250
          Width = 136
          Height = 13
          Alignment = taRightJustify
          Caption = 'Bloqueia Cadastros sem CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label198: TcxLabel
Transparent = True
          Left = 386
          Top = 229
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cor Fundo Oficina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label207: TcxLabel
Transparent = True
          Left = 22
          Top = 171
          Width = 147
          Height = 13
          Alignment = taRightJustify
          Caption = 'Equipamentos ( Propriedades )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label209: TcxLabel
Transparent = True
          Left = 17
          Top = 191
          Width = 152
          Height = 13
          Alignment = taRightJustify
          Caption = 'Utiliza Máscara nos Orçamentos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label210: TcxLabel
Transparent = True
          Left = 343
          Top = 301
          Width = 127
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Mínimo Parcelamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label211: TcxLabel
Transparent = True
          Left = 83
          Top = 211
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Obriga Qntde pdv'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label214: TcxLabel
Transparent = True
          Left = 459
          Top = 74
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Diferencia Fis/Fisc'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label59: TcxLabel
Transparent = True
          Left = 34
          Top = 305
          Width = 132
          Height = 13
          Alignment = taRightJustify
          Caption = 'Repete Código Secundário?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label75: TcxLabel
Transparent = True
          Left = 58
          Top = 321
          Width = 108
          Height = 13
          Alignment = taRightJustify
          Caption = 'Utiliza Contadores O.S'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label165: TcxLabel
Transparent = True
          Left = 22
          Top = 341
          Width = 146
          Height = 13
          Alignment = taRightJustify
          Caption = 'Codifica Produtos no Cadastro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dxDBEdit8: TdxDBEdit
          Left = 508
          Top = 171
          Width = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 9
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'NUM_REG_LOAD'
          DataSource = DataSource
        end
        object dxDBCheckEdit9: TdxDBCheckEdit
          Left = 172
          Top = 106
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_CONSULTA_PROD'
          DataSource = DataSource
          ValueChecked = 'A'
          ValueGrayed = 'M'
          ValueUnchecked = 'M'
        end
        object dxDBCheckEdit12: TdxDBCheckEdit
          Left = 172
          Top = 146
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CARREGAR_ARQUIVOS'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit14: TdxDBCheckEdit
          Left = 172
          Top = 126
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 5
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CHM_LOCPROD_INEXISTENTE'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBEdit7: TdxDBEdit
          Left = 477
          Top = 246
          Width = 89
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          OnEnter = dxDBEdit7Enter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'COR_FUNDO_SELECIONADO'
          DataSource = DataSource
        end
        object dxDBCheckEdit8: TdxDBCheckEdit
          Left = 172
          Top = 6
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'SELAGRUPADOR'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit10: TdxDBCheckEdit
          Left = 172
          Top = 26
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_ELIMINA_ZEROS'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit11: TdxDBCheckEdit
          Left = 548
          Top = 8
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_ACRESCENTA_ZEROS'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBEdit9: TdxDBEdit
          Left = 477
          Top = 271
          Width = 89
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          OnEnter = dxDBEdit9Enter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'COR_FUNDO_DESELECIONADO'
          DataSource = DataSource
        end
        object dxDBCheckEdit3: TdxDBCheckEdit
          Left = 172
          Top = 46
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_ECF'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit23: TdxDBCheckEdit
          Left = 172
          Top = 66
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 10
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'BLQQTDEFISCAL'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit24: TdxDBCheckEdit
          Left = 171
          Top = 282
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 11
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ALTERA_PRECO_VENDA_ENT'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit27: TdxDBCheckEdit
          Left = 548
          Top = 91
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 12
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DIGITA_COTACOES'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBPickEdit7: TdxDBPickEdit
          Left = 476
          Top = 196
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 13
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_CONTAGEM'
          DataSource = DataSource
          Items.Strings = (
            'Inv'
            'Con')
        end
        object dxDBCheckEdit37: TdxDBCheckEdit
          Left = 172
          Top = 86
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 14
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VALIDA_DOCUMENTOS'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBEdit19: TdxDBEdit
          Left = 508
          Top = 146
          Width = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 15
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'NUMERO_ZEROS'
          DataSource = DataSource
        end
        object dxDBCheckEdit48: TdxDBCheckEdit
          Left = 171
          Top = 263
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 16
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'IMPRIMIR_POSICOES'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit58: TdxDBCheckEdit
          Left = 172
          Top = 225
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 17
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ALT_PRCVEND_MARGEM'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit67: TdxDBCheckEdit
          Left = 548
          Top = 49
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 18
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'UTLIZA_INDEXADOR_CUSTO'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBEdit37: TdxDBEdit
          Left = 509
          Top = 121
          Width = 57
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 19
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CODIGO_SCPC'
          DataSource = DsConfiguracoes
        end
        object dxDBCheckEdit72: TdxDBCheckEdit
          Left = 548
          Top = 28
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 20
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'EST_ENTRADAS_DOLAR'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit74: TdxDBCheckEdit
          Left = 171
          Top = 245
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 21
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'BLOQ_CAD_SEM_CPF'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBEdit46: TdxDBEdit
          Left = 477
          Top = 221
          Width = 89
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 22
          OnEnter = dxDBEdit46Enter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'OFC_COR_TELA'
          DataSource = DsConfiguracoes
        end
        object dxDBCheckEdit77: TdxDBCheckEdit
          Left = 172
          Top = 166
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 23
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'GLO_PROPRIEDADE_EQUIPAMENTOS'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit78: TdxDBCheckEdit
          Left = 172
          Top = 188
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 24
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'UTILIZA_MASCARA_ORCAMENTO'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCalcEdit16: TdxDBCalcEdit
          Left = 477
          Top = 295
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 25
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VALOR_MINIMO_PARCELAMENTO'
          DataSource = DsConfiguracoes
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object dxDBCheckEdit79: TdxDBCheckEdit
          Left = 172
          Top = 206
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 26
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_OBRIGA_QNTDE'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit80: TdxDBCheckEdit
          Left = 548
          Top = 70
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 27
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DIFERENCIA_FIS_FISC'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit84: TdxDBCheckEdit
          Left = 171
          Top = 301
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 28
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'EST_REPETE_COD_SEC'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit88: TdxDBCheckEdit
          Left = 171
          Top = 318
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 29
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'OFC_USA_CONTADORES'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit64: TdxDBCheckEdit
          Left = 171
          Top = 337
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 30
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CODIFICA_PRODUTOS'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
      end
      object dxTabSheet5: TcxTabSheet
        Caption = 'Configurações de Caixa/Posto'
        object Label132: TcxLabel
Transparent = True
          Left = 32
          Top = 115
          Width = 119
          Height = 13
          Alignment = taRightJustify
          Caption = 'Último Turno Cadastrado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label102: TcxLabel
Transparent = True
          Left = 54
          Top = 156
          Width = 66
          Height = 13
          Alignment = taRightJustify
          Caption = 'Trôco Máximo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label61: TcxLabel
Transparent = True
          Left = 330
          Top = 159
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desconto Máximo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dxDBCheckEdit33: TdxDBCheckEdit
          Left = 81
          Top = 21
          Width = 135
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Computa Sld Ant no Cx'
          DataField = 'CX_COMP_SLD_ANT'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit34: TdxDBCheckEdit
          Left = 54
          Top = 57
          Width = 162
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Imprime Vendas Agrupadas'
          DataField = 'CX_IMP_VND_AGRUPADA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit35: TdxDBCheckEdit
          Left = 67
          Top = 74
          Width = 149
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Transporta Saldo Anterior'
          DataField = 'CX_TRANSP_SLD_ANT'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBEdit28: TdxDBEdit
          Left = 151
          Top = 115
          Width = 62
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ULTIMO_TURNO'
          DataSource = DataSource
        end
        object dxDBCheckEdit56: TdxDBCheckEdit
          Left = 62
          Top = 93
          Width = 153
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Faz Fec. Diário de Estoque'
          DataField = 'FAZ_FECHAMENTO_DIARIO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit18: TdxDBCheckEdit
          Left = 116
          Top = 39
          Width = 100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 5
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Pagas no Caixa'
          DataField = 'CX_PAGAR_CAIXA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit20: TdxDBCheckEdit
          Left = 284
          Top = 57
          Width = 229
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Estorna Lançamentos Com Caixa Fechado'
          DataField = 'EXT_LANC_CAIXA_FECHADO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit62: TdxDBCheckEdit
          Left = 272
          Top = 39
          Width = 241
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Transfere Valores Automaticamente no Caixa'
          DataField = 'TRANSF_VLRS_CAIXA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit19: TdxDBCheckEdit
          Left = 391
          Top = 21
          Width = 121
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Recebidas no Caixa'
          DataField = 'CX_RECEBER_CAIXA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit69: TdxDBCheckEdit
          Left = 340
          Top = 74
          Width = 173
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 9
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Pede Senha Gerencial no Caixa'
          DataField = 'PEDE_SENHAGER_CAIXA'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit57: TdxDBCheckEdit
          Left = 353
          Top = 131
          Width = 159
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 10
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Somente Caixa Sincronizado'
          DataField = 'CAIXA_SINCRONIZADO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit46: TdxDBCheckEdit
          Left = 353
          Top = 112
          Width = 159
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 11
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Pede Senha Caixa Atrasado'
          DataField = 'PST_SENHA_CAIXA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit39: TdxDBCheckEdit
          Left = 364
          Top = 92
          Width = 149
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 12
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Mostra Entradas no Caixa'
          DataField = 'PST_MOSTRA_ENTRADAS'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCalcEdit7: TdxDBCalcEdit
          Left = 122
          Top = 150
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 13
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TROCO_MAXIMO'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object dxDBCalcEdit5: TdxDBCalcEdit
          Left = 421
          Top = 152
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 14
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DESCONTO_MAXIMO'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
      end
      object dxTabSheet6: TcxTabSheet
        Caption = 'Parâmetros'
        object Label103: TcxLabel
Transparent = True
          Left = 47
          Top = 9
          Width = 89
          Height = 13
          Alignment = taRightJustify
          Caption = 'Máscara Fone/Fax'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label112: TcxLabel
Transparent = True
          Left = 9
          Top = 33
          Width = 127
          Height = 13
          Alignment = taRightJustify
          Caption = 'Máscara Produtos Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label205: TcxLabel
Transparent = True
          Left = 22
          Top = 59
          Width = 114
          Height = 13
          Alignment = taRightJustify
          Caption = 'Path Arquivo Magnético'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label206: TcxLabel
Transparent = True
          Left = 17
          Top = 85
          Width = 119
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome Arquivo Magnético'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label203: TcxLabel
Transparent = True
          Left = 36
          Top = 111
          Width = 100
          Height = 13
          Alignment = taRightJustify
          Caption = 'Convênio do Cheque'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label204: TcxLabel
Transparent = True
          Left = 59
          Top = 138
          Width = 77
          Height = 13
          Alignment = taRightJustify
          Caption = 'Convênio Banco'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dxDBEdit20: TdxDBEdit
          Left = 141
          Top = 3
          Width = 143
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'MASCARA_FONE'
          DataSource = DataSource
        end
        object dxDBEdit21: TdxDBEdit
          Left = 141
          Top = 27
          Width = 143
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'MASCARA_PRODUTOS_ENT'
          DataSource = DataSource
        end
        object dxDBCheckEdit55: TdxDBCheckEdit
          Left = 324
          Top = 113
          Width = 157
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Utiliza Mensagens Internas'
          DataField = 'SIS_MENSAGEM_INTERNA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBEdit50: TdxDBEdit
          Left = 141
          Top = 53
          Width = 340
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PATH_ARQUIVO_BANCO'
          DataSource = DsConfiguracoes
        end
        object dxDBEdit51: TdxDBEdit
          Left = 141
          Top = 79
          Width = 340
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'NOME_ARQUIVO_BANCO'
          DataSource = DsConfiguracoes
        end
        object dxDBEdit48: TdxDBEdit
          Left = 141
          Top = 105
          Width = 101
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CONVENIO_CHEQUE'
          DataSource = DsConfiguracoes
        end
        object dxDBEdit49: TdxDBEdit
          Left = 141
          Top = 132
          Width = 101
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CODIGO_CONVENIO_BANCO'
          DataSource = DsConfiguracoes
        end
      end
      object dxTabSheet7: TcxTabSheet
        Caption = 'Vendas'
        object Label10: TcxLabel
Transparent = True
          Left = 12
          Top = 31
          Width = 104
          Height = 13
          Alignment = taRightJustify
          Caption = 'Alterar Preço Venda ?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TcxLabel
Transparent = True
          Left = 200
          Top = 31
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Digita Desconto ?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TcxLabel
Transparent = True
          Left = 373
          Top = 30
          Width = 137
          Height = 13
          Alignment = taRightJustify
          Caption = 'Paga Comissão p/ Terceiros?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TcxLabel
Transparent = True
          Left = 5
          Top = 53
          Width = 111
          Height = 13
          Alignment = taRightJustify
          Caption = 'Digita Unidade na Vnda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TcxLabel
Transparent = True
          Left = 184
          Top = 51
          Width = 97
          Height = 13
          Alignment = taRightJustify
          Caption = 'Digita Chq na Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TcxLabel
Transparent = True
          Left = 372
          Top = 52
          Width = 138
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vendas Faturadas No Caixa?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label48: TcxLabel
Transparent = True
          Left = 16
          Top = 76
          Width = 100
          Height = 13
          Alignment = taRightJustify
          Caption = 'Ver Vendas Enviadas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label50: TcxLabel
Transparent = True
          Left = 0
          Top = 98
          Width = 116
          Height = 13
          Alignment = taRightJustify
          Caption = 'F4 Altera Cliente no Pdv'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label51: TcxLabel
Transparent = True
          Left = 172
          Top = 139
          Width = 109
          Height = 13
          Alignment = taRightJustify
          Caption = 'Digita Senha Vendedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label54: TcxLabel
Transparent = True
          Left = 26
          Top = 122
          Width = 90
          Height = 13
          Alignment = taRightJustify
          Caption = 'Digita Qtde no Pdv'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TcxLabel
Transparent = True
          Left = 172
          Top = 184
          Width = 109
          Height = 13
          Alignment = taRightJustify
          Caption = 'Parcela Venda no Pdv?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label113: TcxLabel
Transparent = True
          Left = 384
          Top = 200
          Width = 127
          Height = 13
          Alignment = taRightJustify
          Caption = 'Utiliza Propriedades Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label72: TcxLabel
Transparent = True
          Left = 403
          Top = 218
          Width = 111
          Height = 13
          Alignment = taRightJustify
          Caption = 'Digita Cartão na Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label151: TcxLabel
Transparent = True
          Left = 388
          Top = 256
          Width = 126
          Height = 13
          Alignment = taRightJustify
          Caption = 'Bloqueia Venda sem IE/RG'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label152: TcxLabel
Transparent = True
          Left = 373
          Top = 276
          Width = 141
          Height = 13
          Alignment = taRightJustify
          Caption = 'Permite Fazer venda Zerada?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label130: TcxLabel
Transparent = True
          Left = 409
          Top = 114
          Width = 97
          Height = 13
          Alignment = taRightJustify
          Caption = 'Digita Vendedor Pdv'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label109: TcxLabel
Transparent = True
          Left = 400
          Top = 237
          Width = 114
          Height = 13
          Alignment = taRightJustify
          Caption = 'Repete Produtos Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label154: TcxLabel
Transparent = True
          Left = 427
          Top = 141
          Width = 85
          Height = 13
          Alignment = taRightJustify
          Caption = 'Imp. Nf no Balcão'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label145: TcxLabel
Transparent = True
          Left = 98
          Top = 242
          Width = 109
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Parcelamento Vnd'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label78: TcxLabel
Transparent = True
          Left = 82
          Top = 214
          Width = 121
          Height = 13
          Alignment = taRightJustify
          Caption = 'Desconto Vendas  a Vista'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label156: TcxLabel
Transparent = True
          Left = 339
          Top = 181
          Width = 174
          Height = 13
          Alignment = taRightJustify
          Caption = 'Parcelamento Sempre No Mesmo Dia'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label166: TcxLabel
Transparent = True
          Left = 84
          Top = 269
          Width = 193
          Height = 13
          Alignment = taRightJustify
          Caption = 'Inclui a Venda Atual no Limite de Crédito'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label167: TcxLabel
Transparent = True
          Left = 343
          Top = 95
          Width = 163
          Height = 13
          Alignment = taRightJustify
          Caption = 'Exclui Receber nas Baixas Parciais'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label190: TcxLabel
Transparent = True
          Left = 400
          Top = 162
          Width = 113
          Height = 13
          Alignment = taRightJustify
          Caption = 'Utiliza Grades na Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label215: TcxLabel
Transparent = True
          Left = 374
          Top = 74
          Width = 134
          Height = 13
          Alignment = taRightJustify
          Caption = 'Trocas Faturadas no Caixa?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label216: TcxLabel
Transparent = True
          Left = 156
          Top = 163
          Width = 125
          Height = 13
          Alignment = taRightJustify
          Caption = 'Fat. ultimo dia Mês ( Pdv )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label217: TcxLabel
Transparent = True
          Left = 156
          Top = 290
          Width = 121
          Height = 13
          Alignment = taRightJustify
          Caption = 'Bloqueia Venda Sem Cpf?'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label82: TcxLabel
Transparent = True
          Left = 198
          Top = 112
          Width = 86
          Height = 13
          Alignment = taRightJustify
          Caption = 'Imprimir Séries NF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cbAltPrcVnd: TdxDBCheckEdit
          Left = 120
          Top = 27
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ALT_PRC_VND'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit5: TdxDBCheckEdit
          Left = 285
          Top = 26
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DIG_DESC_VENDA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit1: TdxDBCheckEdit
          Left = 517
          Top = 26
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PG_COM_TERC'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit7: TdxDBCheckEdit
          Left = 120
          Top = 49
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DIG_UNIDADE_VENDA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit2: TdxDBCheckEdit
          Left = 285
          Top = 46
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DIG_CHEQUE_VENDA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit4: TdxDBCheckEdit
          Left = 517
          Top = 48
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 5
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'LOCAL_FATURA'
          DataSource = DataSource
          ValueChecked = 'C'
          ValueGrayed = 'B'
          ValueUnchecked = 'B'
        end
        object dxDBCheckEdit15: TdxDBCheckEdit
          Left = 120
          Top = 94
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_F4_ALTERACLIENTE'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit16: TdxDBCheckEdit
          Left = 285
          Top = 135
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DIG_SENHA_VENDEDOR'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit17: TdxDBCheckEdit
          Left = 120
          Top = 118
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 9
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_DIGITA_QUANTIDADE'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit6: TdxDBCheckEdit
          Left = 285
          Top = 180
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 10
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_PARCELA_VENDA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit44: TdxDBCheckEdit
          Left = 517
          Top = 195
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 11
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_PROPRIEDADE'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit25: TdxDBCheckEdit
          Left = 517
          Top = 214
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 12
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DIG_CARTAO_VENDA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit13: TdxDBCheckEdit
          Left = 120
          Top = 72
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 13
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VER_VENDAS_ENVIADAS'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit59: TdxDBCheckEdit
          Left = 517
          Top = 252
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 14
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'BLQ_VENDA_SEM_IERG'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit60: TdxDBCheckEdit
          Left = 517
          Top = 272
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 15
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_UNITARIO_ZERADO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit51: TdxDBCheckEdit
          Left = 517
          Top = 109
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 16
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DIGITA_VENDEDOR_PDV'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit41: TdxDBCheckEdit
          Left = 517
          Top = 232
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 17
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_REPETE_PRODUTOS'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit61: TdxDBCheckEdit
          Left = 517
          Top = 137
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 18
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'IMPRIME_NF_BALCAO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBPickEdit8: TdxDBPickEdit
          Left = 213
          Top = 236
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 19
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'FAT_TIPO_PARCELAMENTO'
          DataSource = DataSource
          Items.Strings = (
            'Decimal'
            'Inteiro'
            'Arredondar')
        end
        object dxDBCalcEdit4: TdxDBCalcEdit
          Left = 213
          Top = 208
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 20
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'LOJA_DESC_AVISTA'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object dxDBCheckEdit63: TdxDBCheckEdit
          Left = 517
          Top = 176
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 21
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VENCTO_FIXO_PRESTACOES'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit65: TdxDBCheckEdit
          Left = 285
          Top = 264
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 22
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'INCLUI_VENDA_LIMITE'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit66: TdxDBCheckEdit
          Left = 517
          Top = 90
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 23
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'EXCLUI_VENDAS_BX_PARC_PDV'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit73: TdxDBCheckEdit
          Left = 517
          Top = 157
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 24
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'EST_UTILIZA_GRADES'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit81: TdxDBCheckEdit
          Left = 517
          Top = 69
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'LOCAL_FATURA_TROCA'
          DataSource = DataSource
          ValueChecked = 'C'
          ValueGrayed = 'B'
          ValueUnchecked = 'B'
        end
        object dxDBCheckEdit82: TdxDBCheckEdit
          Left = 285
          Top = 159
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 25
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_FATURAMENTO_FIM_MES'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit83: TdxDBCheckEdit
          Left = 285
          Top = 285
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 26
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'BLOQUEIA_VENDA_SEM_CPF'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit87: TdxDBCheckEdit
          Left = 285
          Top = 107
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 27
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CRT_INFLUENCIA_VENDA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit86: TdxDBCheckEdit
          Left = 192
          Top = 67
          Width = 114
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 28
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'ch. Influencia VD.'
          DataField = 'CH_INFLUENCIA_VENDA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit85: TdxDBCheckEdit
          Left = 188
          Top = 88
          Width = 118
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 29
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Crt. Influencia VD.'
          DataField = 'CRT_INFLUENCIA_VENDA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
      end
      object dxTabSheet8: TcxTabSheet
        Caption = 'Impressões'
        object Label92: TcxLabel
Transparent = True
          Left = 412
          Top = 13
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Fatura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label86: TcxLabel
Transparent = True
          Left = 36
          Top = 250
          Width = 76
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tipo Orçamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label194: TcxLabel
Transparent = True
          Left = 3
          Top = 17
          Width = 87
          Height = 13
          Caption = 'Oficina Nome.....:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label195: TcxLabel
Transparent = True
          Left = 3
          Top = 41
          Width = 85
          Height = 13
          Caption = 'Oficina Endereço:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label196: TcxLabel
Transparent = True
          Left = 3
          Top = 65
          Width = 84
          Height = 13
          Caption = 'Oficina Fone.....:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label197: TcxLabel
Transparent = True
          Left = 3
          Top = 89
          Width = 82
          Height = 13
          Caption = 'Oficina Fax......:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dxDBCheckEdit29: TdxDBCheckEdit
          Left = 267
          Top = 143
          Width = 139
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Imp. Cabeç na 2ª Folha'
          DataField = 'IMPRIME_CABEC_2FOL'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit30: TdxDBCheckEdit
          Left = 277
          Top = 163
          Width = 129
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 1
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Imp. Desc. Agrupado'
          DataField = 'IMPRIME_DESCONTO_AGRUPADO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit31: TdxDBCheckEdit
          Left = 67
          Top = 218
          Width = 145
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Imp. Rodapé Orçamento'
          DataField = 'IMPRIME_RODAPE_ORCAMENTO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit32: TdxDBCheckEdit
          Left = 280
          Top = 182
          Width = 126
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Seleciona Impressora'
          DataField = 'SELECIONA_IMPRESSORA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit43: TdxDBCheckEdit
          Left = 61
          Top = 200
          Width = 151
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Embutir Juros Impressoes'
          DataField = 'EMBUTIR_JUROS_IMPRESSOES'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit42: TdxDBCheckEdit
          Left = 257
          Top = 124
          Width = 149
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 5
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Não Imp. SubTotal no Orç'
          DataField = 'IMPRIME_SUBTOTAL_ORCAMENTO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit50: TdxDBCheckEdit
          Left = 283
          Top = 218
          Width = 123
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Comissões por Faixa'
          DataField = 'COMISSAO_POR_FAIXA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit49: TdxDBCheckEdit
          Left = 446
          Top = 124
          Width = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Sincronizar Bol e Dpl'
          DataField = 'SINCRONIZAR_BOL_DPL'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit47: TdxDBCheckEdit
          Left = 52
          Top = 182
          Width = 160
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Imp. Valor Cupom Vinculado'
          DataField = 'PDV_IMP_VINC_VALOR'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit52: TdxDBCheckEdit
          Left = 461
          Top = 163
          Width = 105
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 9
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Comissão Normal'
          DataField = 'COMISSAO_NORMAL'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit26: TdxDBCheckEdit
          Left = 284
          Top = 200
          Width = 122
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 10
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Digita Número da Nf'
          DataField = 'DIGITA_NUM_NOTA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit21: TdxDBCheckEdit
          Left = 461
          Top = 182
          Width = 105
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 11
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Imp. Unit. Orçto'
          DataField = 'IMP_UNIT_ORC'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBPickEdit6: TdxDBPickEdit
          Left = 473
          Top = 7
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 12
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_CAB_FATURA'
          DataSource = DataSource
          Items.Strings = (
            'Ext'
            'Red')
        end
        object dxDBCheckEdit36: TdxDBCheckEdit
          Left = 459
          Top = 143
          Width = 107
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 13
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Imp. Casas Qtde'
          DataField = 'IMP_CASAS_QNTDE_FATURA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object CmbTipoOrc: TdxDBPickEdit
          Left = 119
          Top = 246
          Width = 90
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 14
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_ORCAMENTO'
          DataSource = DataSource
          Items.Strings = (
            'Agrupado'
            'Detalhado'
            '')
        end
        object dxDBCheckEdit68: TdxDBCheckEdit
          Left = 35
          Top = 163
          Width = 177
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 15
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Imp. Itens Cupom Pdv ( Epson )'
          DataField = 'IMPRIME_ITENS_CUPOM_PDV'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit70: TdxDBCheckEdit
          Left = 1
          Top = 124
          Width = 211
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 16
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Imp. Fatura no Faturamento da Venda'
          DataField = 'IMP_VND_FATURAMENTO'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit75: TdxDBCheckEdit
          Left = 23
          Top = 143
          Width = 189
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 17
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Imp. Endereço no Controle do Pdv'
          DataField = 'PDV_IMP_END_PRAZO'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBEdit42: TdxDBEdit
          Left = 92
          Top = 11
          Width = 267
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 18
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'OFC_NOME_RAZAO'
          DataSource = DsConfiguracoes
        end
        object dxDBEdit43: TdxDBEdit
          Left = 92
          Top = 35
          Width = 267
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 19
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'OFC_ENDERECO'
          DataSource = DsConfiguracoes
        end
        object dxDBEdit44: TdxDBEdit
          Left = 92
          Top = 59
          Width = 267
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 20
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'OFC_FONE'
          DataSource = DsConfiguracoes
        end
        object dxDBEdit45: TdxDBEdit
          Left = 92
          Top = 83
          Width = 267
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 21
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'OFC_FAX'
          DataSource = DsConfiguracoes
        end
        object dxDBCheckEdit28: TdxDBCheckEdit
          Left = 432
          Top = 200
          Width = 134
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 22
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Imp. Venda Nominal?'
          DataField = 'IMPRIME_CUPOM_NOMINAL'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
      end
      object dxTabSheet10: TcxTabSheet
        Caption = 'Financeiro'
        object Label148: TcxLabel
Transparent = True
          Left = 381
          Top = 221
          Width = 109
          Height = 13
          Alignment = taRightJustify
          Caption = 'Icm Presumido Sem IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label149: TcxLabel
Transparent = True
          Left = 380
          Top = 247
          Width = 110
          Height = 13
          Alignment = taRightJustify
          Caption = 'Icm Presumido Com IPI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label136: TcxLabel
Transparent = True
          Left = 225
          Top = 6
          Width = 160
          Height = 13
          Alignment = taRightJustify
          Caption = 'Utiliza Doctos Inteiros na Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label137: TcxLabel
Transparent = True
          Left = 219
          Top = 29
          Width = 166
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valida Docto Duplicado no Receber'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label186: TcxLabel
Transparent = True
          Left = 467
          Top = 8
          Width = 79
          Height = 13
          Alignment = taRightJustify
          Caption = 'Natureza Ordem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label187: TcxLabel
Transparent = True
          Left = 462
          Top = 32
          Width = 84
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frm Pagto Ordem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label188: TcxLabel
Transparent = True
          Left = 465
          Top = 56
          Width = 81
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vendedor Ordem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label189: TcxLabel
Transparent = True
          Left = 393
          Top = 80
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Produto Ordem'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label202: TcxLabel
Transparent = True
          Left = 266
          Top = 101
          Width = 119
          Height = 13
          Alignment = taRightJustify
          Caption = 'Frete Manual na Entrada'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dxDBCalcEdit9: TdxDBCalcEdit
          Left = 498
          Top = 215
          Width = 90
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ICM_PRESUMIDO_SEM_IPI'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object dxDBCalcEdit10: TdxDBCalcEdit
          Left = 498
          Top = 241
          Width = 90
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ICM_PRESUMIDO_IPI'
          DataSource = DataSource
          ButtonGlyph.Data = {
            46020000424D460200000000000036000000280000000E0000000C0000000100
            1800000000001002000000000000000000000000000000000000CED3D6000000
            0000000000000000000000000000000000000000000000000000000000000000
            00CED3D600008486008486008400008400008400008400008400008400008400
            008400008400008400008400000000000000848600FFFFFF8486008486008486
            0084860084860084860084860084860084860084860084000000000000008486
            00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
            00008400000000000000848600FFFFFF84860084860084860084860084860084
            86008486008486008486008486008400000000000000848600FFFF0084860000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
            0000848600FFFFFF848600848600848600848600848600848600848600848600
            8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
            C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
            000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
            000000000000848600FFFF000000000000000000000000000000000000000000
            000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
            00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
            D684860084860084860084860084860084860084860084860084860084860084
            8600848600CED3D60000}
        end
        object dxDBCheckEdit53: TdxDBCheckEdit
          Left = 390
          Top = 2
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'UTILIZA_DOCTOS_INT_ENTR'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit54: TdxDBCheckEdit
          Left = 390
          Top = 25
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 3
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CONF_DUPLIC_REC_LANCTO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBEdit38: TdxDBEdit
          Left = 553
          Top = 2
          Width = 62
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 4
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'OFC_ORDEM_NATUREZA'
          DataSource = DsConfiguracoes
        end
        object dxDBEdit39: TdxDBEdit
          Left = 553
          Top = 26
          Width = 62
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'OFC_ORDEM_FRM_PAGTO'
          DataSource = DsConfiguracoes
        end
        object dxDBEdit40: TdxDBEdit
          Left = 553
          Top = 50
          Width = 62
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'OFC_ORDEM_VENDEDOR'
          DataSource = DsConfiguracoes
        end
        object dxDBEdit41: TdxDBEdit
          Left = 472
          Top = 74
          Width = 143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'OFC_ORDEM_PRODUTO'
          DataSource = DsConfiguracoes
        end
        object dxDBCheckEdit76: TdxDBCheckEdit
          Left = 390
          Top = 97
          Width = 25
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ENT_FRETE_MANUAL'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
      end
      object dxTabSheet11: TcxTabSheet
        Caption = 'Configuração de Boletos'
        object Panel3: TPanel
          Left = 12
          Top = 16
          Width = 625
          Height = 341
          Color = clMenu
          TabOrder = 0
          object Label36: TcxLabel
Transparent = True
            Left = 17
            Top = 176
            Width = 94
            Height = 13
            Caption = 'Instruçõe do Boleto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label63: TcxLabel
Transparent = True
            Left = 98
            Top = 94
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Caption = 'Convênio'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TcxLabel
Transparent = True
            Left = 16
            Top = 94
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Caption = 'Carteira'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TcxLabel
Transparent = True
            Left = 168
            Top = 94
            Width = 37
            Height = 13
            Caption = 'C. Ced.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TcxLabel
Transparent = True
            Left = 264
            Top = 94
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Agencia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TcxLabel
Transparent = True
            Left = 20
            Top = 138
            Width = 74
            Height = 13
            Alignment = taRightJustify
            Caption = 'Local de Pagto.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label64: TcxLabel
Transparent = True
            Left = 362
            Top = 94
            Width = 32
            Height = 13
            Caption = 'Conta '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label66: TcxLabel
Transparent = True
            Left = 230
            Top = 114
            Width = 6
            Height = 16
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label77: TcxLabel
Transparent = True
            Left = 330
            Top = 114
            Width = 6
            Height = 16
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label79: TcxLabel
Transparent = True
            Left = 426
            Top = 114
            Width = 6
            Height = 16
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label115: TcxLabel
Transparent = True
            Left = 18
            Top = 254
            Width = 93
            Height = 13
            Alignment = taRightJustify
            Caption = 'Arquivo p/Remessa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label117: TcxLabel
Transparent = True
            Left = 326
            Top = 254
            Width = 89
            Height = 13
            Caption = 'Arquivo p/Retorno'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object rgpLayout: TRzDBRadioGroup
            Left = 464
            Top = 156
            Width = 143
            Height = 41
            DataField = 'BLT_LAYOUT'
            DataSource = DataSource
            Items.Strings = (
              'Cnab240'
              'Cnab400')
            Values.Strings = (
              '1'
              '2')
            Caption = 'Layout dos Arquivos'
            Color = clInactiveBorder
            Columns = 2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            GroupStyle = gsStandard
            ItemFont.Charset = DEFAULT_CHARSET
            ItemFont.Color = 8404992
            ItemFont.Height = -11
            ItemFont.Name = 'MS Sans Serif'
            ItemFont.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 14
            TabStop = True
          end
          object RzDBMemo1: TRzDBMemo
            Left = 18
            Top = 190
            Width = 431
            Height = 53
            Ctl3D = True
            DataField = 'BLT_INSTRUCAO'
            DataSource = DataSource
            ParentCtl3D = False
            ParentShowHint = False
            ScrollBars = ssVertical
            ShowHint = True
            TabOrder = 15
          end
          object dxDBEdit24: TdxDBEdit
            Left = 96
            Top = 110
            Width = 69
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 5
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BLT_CONVENIO'
            DataSource = DataSource
          end
          object dxDBEdit23: TdxDBEdit
            Left = 16
            Top = 110
            Width = 73
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 4
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BLT_CARTEIRA'
            DataSource = DataSource
          end
          object dxDBEdit22: TdxDBEdit
            Left = 168
            Top = 110
            Width = 61
            Hint = 'Código cedente '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 6
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BLT_COD_CEDENTE'
            DataSource = DataSource
          end
          object dxDBEdit15: TdxDBEdit
            Left = 264
            Top = 110
            Width = 65
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 8
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BLT_AGENCIA'
            DataSource = DataSource
          end
          object dxDBEdit12: TdxDBEdit
            Left = 16
            Top = 150
            Width = 433
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 13
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BLT_LOCAL_PAGTO'
            DataSource = DataSource
          end
          object dxDBEdit30: TdxDBEdit
            Left = 360
            Top = 110
            Width = 65
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 10
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BLT_CONTA'
            DataSource = DataSource
          end
          object dxDBEdit31: TdxDBEdit
            Left = 236
            Top = 110
            Width = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 7
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BLT_DIG_COD_CEDENTE'
            DataSource = DataSource
          end
          object dxDBEdit32: TdxDBEdit
            Left = 336
            Top = 110
            Width = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 9
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BLT_DIG_AGENCIA'
            DataSource = DataSource
          end
          object dxDBEdit33: TdxDBEdit
            Left = 432
            Top = 110
            Width = 17
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 11
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BLT_DIG_CONTA'
            DataSource = DataSource
          end
          object GroupBox1: TGroupBox
            Left = 166
            Top = 22
            Width = 145
            Height = 61
            Caption = 'Abatimentos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object Label80: TcxLabel
Transparent = True
              Left = 9
              Top = 16
              Width = 65
              Height = 13
              Caption = 'D. ap. Lancto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label83: TcxLabel
Transparent = True
              Left = 97
              Top = 16
              Width = 34
              Height = 13
              Caption = 'Pct(%)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object dxDBEdit34: TdxDBEdit
              Left = 16
              Top = 29
              Width = 65
              Hint = 
                'Determina a data limite para a concessão de abatimentos nos títu' +
                'los.'#13#10'Data Máxima = Data Lancto + Dias após o Lancto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 0
              OnKeyDown = dxDBEdit1KeyDown
              DataField = 'BLT_DIAS_ABATIMENTO'
              DataSource = DataSource
            end
            object dxDBEdit47: TdxDBEdit
              Left = 84
              Top = 29
              Width = 49
              Hint = 'Porcentagem de Abatimento a ser aplicada nos títulos.'#13#10
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 1
              OnKeyDown = dxDBEdit1KeyDown
              DataField = 'BLT_PCT_ABATIMENTO'
              DataSource = DataSource
            end
          end
          object GroupBox2: TGroupBox
            Left = 316
            Top = 22
            Width = 141
            Height = 61
            Caption = 'Descontos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object Label84: TcxLabel
Transparent = True
              Left = 93
              Top = 16
              Width = 34
              Height = 13
              Caption = 'Pct(%)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label87: TcxLabel
Transparent = True
              Left = 9
              Top = 16
              Width = 65
              Height = 13
              Caption = 'D. ap. Lancto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object dxDBEdit54: TdxDBEdit
              Left = 80
              Top = 29
              Width = 49
              Hint = 'Porcentagem de desconto a ser aplicada nos títulos'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 0
              OnKeyDown = dxDBEdit1KeyDown
              DataField = 'BLT_PCT_DESCONTO'
              DataSource = DataSource
            end
            object dxDBEdit55: TdxDBEdit
              Left = 13
              Top = 29
              Width = 65
              Hint = 
                'Determina a data limite para a concessão de descontos nos título' +
                's.'#13#10'Data Máxima = Data Lancto + Dias após o Lancto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 1
              OnKeyDown = dxDBEdit1KeyDown
              DataField = 'BLT_DIAS_DESCONTO'
              DataSource = DataSource
            end
          end
          object GroupBox3: TGroupBox
            Left = 16
            Top = 22
            Width = 145
            Height = 61
            Caption = 'Mora/Juros(Diários)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object Label94: TcxLabel
Transparent = True
              Left = 81
              Top = 16
              Width = 38
              Height = 13
              Caption = 'Pct.(%)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label97: TcxLabel
Transparent = True
              Left = 5
              Top = 16
              Width = 66
              Height = 13
              Caption = 'D. ap. Vencto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object dxDBEdit57: TdxDBEdit
              Left = 8
              Top = 29
              Width = 65
              Hint = 
                'Tolerância máxima em dias para se aplicar mora e juros nos títul' +
                'os'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 0
              OnKeyDown = dxDBEdit1KeyDown
              DataField = 'BLT_DIAS_MORA_JUROS'
              DataSource = DataSource
            end
          end
          object GroupBox4: TGroupBox
            Left = 464
            Top = 22
            Width = 145
            Height = 61
            Caption = 'Protesto/Despesas'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object Label110: TcxLabel
Transparent = True
              Left = 5
              Top = 16
              Width = 63
              Height = 13
              Caption = 'D.ap. Vencto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label98: TcxLabel
Transparent = True
              Left = 79
              Top = 16
              Width = 30
              Height = 13
              Caption = 'Vlr.($)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object dxDBEdit59: TdxDBEdit
              Left = 8
              Top = 29
              Width = 65
              Hint = 
                'Dias de tolerância após o vencimento para que o banco proteste o' +
                ' título.'#13#10'Ativo somente em carteiras que dispõe este serviço'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 0
              OnKeyDown = dxDBEdit1KeyDown
              DataField = 'BLT_DIAS_PROTESTO'
              DataSource = DataSource
            end
          end
          object GroupBox5: TGroupBox
            Left = 464
            Top = 90
            Width = 145
            Height = 61
            Caption = 'Despesas Gerais'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            object Label114: TcxLabel
Transparent = True
              Left = 83
              Top = 16
              Width = 51
              Height = 13
              Caption = 'Vlr. IOF($)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label111: TcxLabel
Transparent = True
              Left = 7
              Top = 16
              Width = 63
              Height = 13
              Caption = 'Out. Desp($)'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 8404992
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object dxDBEdit60: TdxDBEdit
              Left = 8
              Top = 29
              Width = 65
              Hint = 
                'Valor de outras despesas cobradas pelo banco: protesto de título' +
                's, por exemplo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 0
              OnKeyDown = dxDBEdit1KeyDown
              DataField = 'BLT_VLR_OUTRAS_DESP'
              DataSource = DataSource
            end
            object dxDBEdit61: TdxDBEdit
              Left = 76
              Top = 29
              Width = 61
              Hint = 'Valor do Imposto sobre Operações Financeiras'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 1
              OnKeyDown = dxDBEdit1KeyDown
              DataField = 'BLT_VLR_IOF'
              DataSource = DataSource
            end
          end
          object dxDBCheckEdit22: TdxDBCheckEdit
            Left = 456
            Top = 209
            Width = 153
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            TabOrder = 16
            OnKeyDown = dxDBEdit1KeyDown
            Alignment = taRightJustify
            Caption = 'Gerar Boletos pelo sistema'
            DataField = 'GERA_BOLETOS'
            DataSource = DataSource
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            StoredValues = 1
          end
          object dxDBEdit62: TdxDBEdit
            Left = 16
            Top = 266
            Width = 301
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 17
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BLT_DIR_REMESSA'
            DataSource = DataSource
          end
          object dxDBEdit63: TdxDBEdit
            Left = 324
            Top = 266
            Width = 285
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 18
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BLT_DIR_RETORNO'
            DataSource = DataSource
          end
          object edMoraDiaria: TdxDBCalcEdit
            Left = 96
            Top = 52
            Width = 62
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 19
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'MORA_DIARIA'
            DataSource = DataSource
          end
          object edDespBanco: TdxDBCalcEdit
            Left = 540
            Top = 52
            Width = 62
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 20
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'DESP_BANCARIA'
            DataSource = DataSource
          end
        end
      end
    end
  end
  object Navigator: TdxBarDBNavigator
    BarManager = BarMgr
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 493
    Top = 65527
  end
  object BarMgr: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'Navegação'
        DockControl = dxBarDockControl1
        DockedDockControl = dxBarDockControl1
        DockedLeft = 0
        DockedTop = 0
        FloatLeft = 290
        FloatTop = 163
        FloatClientWidth = 23
        FloatClientHeight = 198
        ItemLinks = <
          item
            Item = dxBarBDBNavFirst
            Visible = True
          end
          item
            Item = dxBarBDBNavPrev
            Visible = True
          end
          item
            Item = dxBarBDBNavNext
            Visible = True
          end
          item
            Item = dxBarBDBNavLast
            Visible = True
          end
          item
            Item = btnIncluir
            Visible = True
          end
          item
            Item = btnExcluir
            Visible = True
          end
          item
            Item = btnLocalizar
            Visible = True
          end
          item
            Item = BtnListagem
            Visible = True
          end
          item
            Item = btnFiltrar
            Visible = True
          end
          item
            Item = BtnSalvar
            Visible = True
          end
          item
            Item = BtnCancelar
            Visible = True
          end
          item
            Item = BtnFechar
            Visible = True
          end>
        Name = 'Navegação'
        OneOnRow = True
        Row = 0
        ShowMark = False
        SizeGrip = False
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 301
    Top = 65528
    DockControlHeights = (
      0
      0
      0
      0)
    object btnIncluir: TdxBarButton
      Action = ActIncluir
      Category = 0
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
    end
    object btnExcluir: TdxBarButton
      Action = ActExcluir
      Category = 0
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0080800000000000000000000000000000000000000000000000000000000080
        80008080008080000000008080008080008080000000FFFFFF7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080000000008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080000000008080000000008080008080
        000000000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000000
        00008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        0080800000007F7F7F0000007F7F7F0000007F7F7F0000007F7F7F0000000080
        8000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000008080008080
        000000FFFFFFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000
        0000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000008080008080
        0080800080800080800000007F7F7F7F7F7F7F7F7F0000000080800080800080
        8000808000808000000000808000808000808000808000808000000000000000
        0000000000000000008080008080008080008080008080000000}
    end
    object dxBarBDBNavFirst: TdxBarDBNavButton
      Caption = 'ActInicio'
      Category = 1
      Enabled = False
      Hint = 'Ir ao primeiro registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnFirst
    end
    object dxBarBDBNavPrev: TdxBarDBNavButton
      Caption = 'ActPrior'
      Category = 1
      Enabled = False
      Hint = 'Ir ao registro anterior'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777780777777777777800077777777778000007777777780000000
        7777777777800000777777777777800077777777777777807777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnPrior
    end
    object dxBarBDBNavNext: TdxBarDBNavButton
      Caption = 'ActNext'
      Category = 1
      Enabled = False
      Hint = 'Ir ao próximo registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777708777777777777770008777777777777000008777777777700000008
        7777777700000877777777770008777777777777087777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnNext
    end
    object dxBarBDBNavLast: TdxBarDBNavButton
      Caption = 'ActLast'
      Category = 1
      Enabled = False
      Hint = 'Ir ao último registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777700087777807777770000087780777777000000088
        0777777000008778077777700087777807777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnLast
    end
    object btnLocalizar: TdxBarButton
      Action = ActLocalizar
      Category = 0
      Glyph.Data = {
        36050000424D360500000000000036040000280000000E000000100000000100
        0800000000000001000000000000000000000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000ACACACACACAC
        ACACACAC0000ACAC0000ACACACACACACACACAC02230500AC0000ACAC00000000
        00000223050500000000ACAC56ACACACAC02230505ACAC000000ACAC56D7D7D7
        02230505ACD7AC000000ACAC56000056AC0505ACD7D7AC000000AC56AC23AC00
        5656ACD7D7D7AC00000056D723AC23AC00ACD7D7D7D7AC0000005623D723AC23
        00ACD7D7D7D7AC00000056D723D723AC00ACD7D7D7D7AC000000AC56D723D700
        ACD7D7D7D7D7AC000000ACAC565600ACD7D7D7D7D7D7AC000000ACAC56D7D7D7
        D7D7D7D7000000000000ACAC56D7D7D7D7D7D7D7ACD756AC0000ACAC56D7D7D7
        D7D7D7D7AC56ACAC0000ACAC565656565656565656ACACAC0000}
    end
    object BtnSalvar: TdxBarButton
      Action = ActPost
      Category = 0
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F
        7F007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000007F7F007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBFBF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
    end
    object BtnCancelar: TdxBarButton
      Action = ActCancel
      Category = 0
      Enabled = False
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        1800000000004003000000000000000000000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        80000080800080800000FF0000FF0000FF0080800080807F7F7F0000007F7F7F
        0080800080800000FF0000FF0000FF0080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800080800080800000FF0000FF0000FF7F
        7F7F0000007F7F7F0000FF0000FF0000FF008080008080008080008080000080
        800080800080800080800080800000FF0000FF0000FF0080800000FF0000FF00
        00FF008080008080008080008080008080000080800080800080800080800080
        800080800000FF0000FF0000000000FF0000FF00808000808000808000808000
        8080008080000080800080800080800080800080800080800080800000800000
        0000008000808000808000808000808000808000808000808000008080008080
        0080800080800080800080800000FF0000800000000000800000FF0080800080
        80008080008080008080008080000080800080800080800080800080800000FF
        0000FF0000000000000000000000FF0000FF0080800080800080800080800080
        80000080800080800080800080800000FF0000FF0000FF000000000000000000
        0000FF0000FF0000FF0080800080800080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800000FF0000FF0000FF0080800080807F
        7F7F0000007F7F7F0080800080800000FF0000FF0000FF008080008080000080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080000080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080000080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000}
    end
    object BtnListagem: TdxBarButton
      Action = ActListagem
      Category = 0
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B803000000000000000000000000000000000000BFBFBF000000
        000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF000000000000000000BFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
        0000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000FFFFFF
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C00000FF0000FFC0C0C0C0C0C00000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000080808000000000000080808080808080808080808080
        8080808080808080808080808080808080808080808080000000000000808080
        0000BFBFBFBFBFBF000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000BFBFBFBFBFBF0000BFBFBFBFBFBF
        000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000000000BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
        FF000000000000000000000000000000000000000000000000FFFFFF000000BF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000000000000000
        000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
        FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBF000000000000000000000000000000000000000000
        000000000000000000000000000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
    end
    object BtnFechar: TdxBarButton
      Action = ActFechar
      Align = iaRight
      Category = 0
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0000000000000000000000000000000000000000000000000000000000000000
        0000808000808000000000808000808000000000008000FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000FFFF00000000FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        00008080008080000000008080008080000000000080FFFF0000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        000000000080FFFF00FFFF0000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000}
      PaintStyle = psCaptionGlyph
    end
    object btnFiltrar: TdxBarButton
      Caption = 'Filtrar'
      Category = 0
      Hint = 'Filtrar'
      Visible = ivAlways
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        1800000000004003000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBF000000000000000000000000BFBFBFBFBFBFBFBFBFBFBFBF0000
        00000000000000000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
        000000000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000000000BFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000BFBFBF
        000000000000000000FFFFFF000000000000BFBFBF00BFBFBFBFBFBFBFBFBFBF
        BFBF000000000000000000000000000000000000000000FFFFFF000000000000
        000000000000BFBFBF00BFBFBF7F00007F00007F0000000000000000FFFFFF00
        0000000000BFBFBF000000FFFFFF000000000000000000000000BFBFBF00BFBF
        BF7F0000FFFFFFFFFFFFFFFFFF000000000000000000000000BFBFBF00000000
        0000000000000000000000BFBFBFBFBFBF00BFBFBF7F0000FFFFFF7F7F7F7F7F
        7F000000FFFFFF000000000000000000000000FFFFFF000000000000000000BF
        BFBFBFBFBF00BFBFBF7F0000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000000000000000000000BFBFBFBFBFBFBFBFBF00BFBFBF7F0000
        FFFFFF7F7F7F7F7F7FFFFFFF000000FFFFFF0000007F7F7F7F7F7F000000FFFF
        FF000000BFBFBFBFBFBFBFBFBF00BFBFBF7F0000FFFFFFFFFFFFFFFFFFFFFFFF
        000000000000000000FFFFFFFFFFFF000000000000000000BFBFBFBFBFBFBFBF
        BF00BFBFBF7F0000FFFFFF7F7F7F7F7F7FFFFFFF7F7F7F7F7F7FFFFFFF7F7F7F
        7F7F7FFFFFFF7F0000BFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F0000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0000BFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBF7F00007F00007F00007F00007F00007F00007F
        00007F00007F00007F00007F00007F0000BFBFBFBFBFBFBFBFBFBFBFBF00BFBF
        BF7F0000BFBFBF7F00007F0000BFBFBF7F00007F0000BFBFBF7F00007F0000BF
        BFBF7F0000BFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F00007F00007F00007F00
        007F00007F00007F00007F00007F00007F00007F00007F0000BFBFBFBFBFBFBF
        BFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
      OnClick = btnFiltrarClick
    end
  end
  object Actions: TActionList
    Left = 401
    Top = 65528
    object ActIncluir: TAction
      Tag = 1
      Caption = 'ActIncluir'
      Hint = 'Incluir um novo registro [Ins]'
      ShortCut = 45
      OnExecute = ActIncluirExecute
    end
    object ActAlterar: TAction
      Tag = 1
      Caption = 'ActAlterar'
    end
    object ActExcluir: TAction
      Tag = 1
      Caption = 'ActExcluir'
      Hint = 'Excluir o registro selecionado [Shift+Del]'
      ShortCut = 8238
      OnExecute = ActExcluirExecute
    end
    object ActLocalizar: TAction
      Caption = 'ActLocalizar'
      Hint = 'Localizar registros [F3]'
      ShortCut = 114
      OnExecute = ActLocalizarExecute
    end
    object ActListagem: TAction
      Tag = 1
      Caption = 'ActListagem'
      Hint = 'Emitir listagem de '
      ShortCut = 116
      OnExecute = ActListagemExecute
    end
    object ActPost: TAction
      Caption = 'ActPost'
      Hint = 'Salvar informações'
      ShortCut = 121
      OnExecute = ActPostExecute
    end
    object ActCancel: TAction
      Caption = 'ActCancel'
      Hint = 'Cancelar informações'
      ShortCut = 27
      OnExecute = ActCancelExecute
    end
    object ActFechar: TAction
      Caption = '&Fechar  '
      OnExecute = ActFecharExecute
    end
    object actLookup: TAction
      Caption = 'actLookup'
      ShortCut = 115
    end
    object ActNextPage: TAction
      Caption = 'ActNextPage'
      ShortCut = 34
      OnExecute = ActNextPageExecute
    end
    object ActPreviousPage: TAction
      Caption = 'ActPreviousPage'
      ShortCut = 33
      OnExecute = ActPreviousPageExecute
    end
  end
  object DataSource: TDataSource
    DataSet = DMEmpresas.Empresas
    OnStateChange = DataSourceStateChange
    Left = 605
    Top = 65523
  end
  object Cor: TColorDialog
    Ctl3D = True
    Left = 440
    Top = 10
  end
  object DsCaixa: TDataSource
    AutoEdit = False
    DataSet = DMEmpresas.SelCaixa
    OnStateChange = DataSourceStateChange
    Left = 357
    Top = 65523
  end
  object ABRE: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.j' +
      'peg;*.bmp;*.ico;*.emf;*.wmf|CompuServe GIF Image (*.gif)|*.gif|J' +
      'PEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bit' +
      'maps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf' +
      ')|*.emf|Metafiles (*.wmf)|*.wmf|Texto|*.txt|Bombas|*.ugm'
    Left = 544
    Top = 65528
  end
  object DsConfiguracoes: TDataSource
    DataSet = DMEmpresas.Configuracoes
    OnStateChange = DataSourceStateChange
    Left = 261
    Top = 65531
  end
end
