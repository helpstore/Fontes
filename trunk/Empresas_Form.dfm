object FrmEmpresas: TFrmEmpresas
  Left = 400
  Top = 136
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Empresas '
  ClientHeight = 540
  ClientWidth = 790
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
  object Label201: TcxLabel
    Left = 8
    Top = 120
    Caption = 'CNAE'
    Transparent = True
  end
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 540
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
      Top = 506
      Width = 786
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
    object LblTitulo: TcxLabel
      Left = 48
      Top = 6
      Caption = 'Empresas'
      ParentFont = False
      Transparent = True
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 508
      Width = 786
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 786
        Height = 26
        Align = dalTop
        BarManager = BarMgr
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 786
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object pc: TcxPageControl
      Left = 16
      Top = 47
      Width = 761
      Height = 458
      ActivePage = tbsNFe
      HotTrack = True
      TabOrder = 1
      OnChange = pcChange
      ClientRectBottom = 454
      ClientRectLeft = 4
      ClientRectRight = 757
      ClientRectTop = 27
      object dxTabSheet1: TcxTabSheet
        Caption = '  Cadastro  '
        OnEnter = dxTabSheet1Enter
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 753
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object Label1: TcxLabel
          Left = 94
          Top = 17
          Caption = 'Cnpj'
          ParentFont = False
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 25
          Top = 42
          Caption = 'Nome/Raz'#227'o Social'
          ParentFont = False
          Transparent = True
        end
        object Label4: TcxLabel
          Left = 71
          Top = 67
          Caption = 'Endere'#231'o'
          ParentFont = False
          Transparent = True
        end
        object Label5: TcxLabel
          Left = 88
          Top = 92
          Caption = 'Bairro'
          ParentFont = False
          Transparent = True
        end
        object Label6: TcxLabel
          Left = 31
          Top = 117
          Caption = 'Cidade - UF - CEP'
          ParentFont = False
          Transparent = True
        end
        object Label7: TcxLabel
          Left = 64
          Top = 142
          Caption = 'Fone - Fax'
          ParentFont = False
          Transparent = True
        end
        object Label71: TcxLabel
          Left = 52
          Top = 166
          Caption = 'Tipo Empresa'
          ParentFont = False
          Transparent = True
        end
        object Label133: TcxLabel
          Left = 106
          Top = 273
          Caption = 'I.P'
          ParentFont = False
          Transparent = True
        end
        object Label135: TcxLabel
          Left = 273
          Top = 273
          Caption = 'Senha'
          ParentFont = False
          Transparent = True
        end
        object Label134: TcxLabel
          Left = 51
          Top = 195
          Caption = 'Path Externo:'
          ParentFont = False
          Transparent = True
        end
        object Label105: TcxLabel
          Left = 92
          Top = 221
          Caption = 'Email'
          ParentFont = False
          Transparent = True
        end
        object Label121: TcxLabel
          Left = 314
          Top = 17
          Caption = 'IE'
          ParentFont = False
          Transparent = True
        end
        object btnCidade: TcxButton
          Left = 332
          Top = 112
          Width = 26
          Height = 22
          Cursor = crHandPoint
          TabOrder = 35
          OnClick = btnCidadeClick
          Glyph.Data = {
            06030000424D06030000000000003600000028000000100000000F0000000100
            180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            0000000000000000000000000000000000000000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
            FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
            FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
            FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
            0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
            BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
            0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
            FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
            BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
            00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF}
        end
        object btnBairro: TcxButton
          Left = 432
          Top = 88
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 36
          OnClick = btnBairroClick
          Glyph.Data = {
            06030000424D06030000000000003600000028000000100000000F0000000100
            180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            0000000000000000000000000000000000000000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
            FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
            FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
            FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
            0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
            BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
            0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
            FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
            BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
            00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF}
        end
        object btnLogradouro: TcxButton
          Left = 368
          Top = 63
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 37
          OnClick = btnLogradouroClick
          Glyph.Data = {
            06030000424D06030000000000003600000028000000100000000F0000000100
            180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            0000000000000000000000000000000000000000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
            FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
            FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
            FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
            0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
            BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
            0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
            FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
            BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
            00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF}
        end
        object Label221: TcxLabel
          Left = 46
          Top = 246
          Caption = 'Fones Suporte'
          ParentFont = False
          Transparent = True
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
          DataSource = DsEmpresas
        end
        object EdUF: TdxDBEdit
          Left = 359
          Top = 111
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
          TabOrder = 8
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = DsEmpresas
        end
        object EdCEP: TdxDBMaskEdit
          Left = 390
          Top = 111
          Width = 66
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
          TabOrder = 9
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = DsEmpresas
          EditMask = '99999\-999;0;_'
          IgnoreMaskBlank = False
          StoredValues = 4
        end
        object edEndereco: TdxDBEdit
          Left = 123
          Top = 294
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
          TabOrder = 19
          Visible = False
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ENDERECO'
          DataSource = DsEmpresas
        end
        object edBairro: TdxDBEdit
          Left = 123
          Top = 319
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
          TabOrder = 20
          Visible = False
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'BAIRRO'
          DataSource = DsEmpresas
        end
        object edCidade: TdxDBEdit
          Left = 123
          Top = 344
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
          TabOrder = 21
          Visible = False
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CIDADE'
          DataSource = DsEmpresas
        end
        object EdCnpj: TdxDBEdit
          Left = 123
          Top = 12
          Width = 150
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
          DataSource = DsEmpresas
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
          TabOrder = 12
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_EMPRESA'
          DataSource = DsEmpresas
          Items.Strings = (
            'Pecas'
            'Tintas'
            'Papelaria'
            'Loja'
            'Farm'#225'cia'
            'Roupas'
            'Implementos'
            'Agricultura'
            'Distribuidora'
            'Padaria'
            'SuperMercado'
            'Restaurante')
        end
        object Foto: TdxGraphicEdit
          Left = 469
          Top = 37
          Width = 140
          TabOrder = 13
          Caption = 'Foto'
          Stretch = True
          Height = 100
        end
        object RzButton1: TcxButton
          Left = 513
          Top = 144
          Width = 96
          Height = 25
          Caption = 'Carregar Imagem'
          TabOrder = 14
          TabStop = False
          OnClick = RzButton1Click
        end
        object RzButton2: TcxButton
          Left = 513
          Top = 172
          Width = 96
          Height = 25
          Caption = 'Cancelar Imagem'
          TabOrder = 15
          TabStop = False
          OnClick = RzButton2Click
        end
        object EDCPFCGC: TdxDBMaskEdit
          Left = 124
          Top = 268
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
          DataSource = DsEmpresas
          IgnoreMaskBlank = False
          StoredValues = 4
        end
        object EdSenha: TdxDBMaskEdit
          Left = 306
          Top = 268
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
          DataSource = DsEmpresas
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
          TabOrder = 16
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CAMINHO_EXTERNO'
          DataSource = DsEmpresas
        end
        object edtfone: TDBEdit
          Left = 124
          Top = 138
          Width = 104
          Height = 24
          DataField = 'FONE'
          DataSource = DsEmpresas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnKeyDown = dxDBEdit1KeyDown
        end
        object edtfax: TDBEdit
          Left = 230
          Top = 138
          Width = 104
          Height = 24
          DataField = 'FAX'
          DataSource = DsEmpresas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnKeyDown = dxDBEdit1KeyDown
        end
        object dxDBEdit65: TdxDBEdit
          Left = 123
          Top = 216
          Width = 212
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
          DataField = 'EMAIL'
          DataSource = DsEmpresas
        end
        object dxDBEdit69: TdxDBEdit
          Left = 329
          Top = 12
          Width = 128
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
          TabOrder = 18
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'IE'
          DataSource = DsEmpresas
        end
        object cmbCidade: TdxDBLookupEdit
          Left = 123
          Top = 111
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
          Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
          Style.HotTrack = True
          Style.Shadow = False
          TabOrder = 7
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'COD_CIDADE'
          DataSource = DsEmpresas
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          CanDeleteText = True
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = dsCidades
          LookupKeyValue = Null
          StoredValues = 64
        end
        object cmbBairro: TdxDBLookupEdit
          Left = 123
          Top = 87
          Width = 310
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
          Style.HotTrack = True
          Style.Shadow = False
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'COD_BAIRRO'
          DataSource = DsEmpresas
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          CanDeleteText = True
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = dsBairros
          LookupKeyValue = Null
          StoredValues = 64
        end
        object cmbLogradouro: TdxDBLookupEdit
          Left = 123
          Top = 62
          Width = 244
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
          Style.HotTrack = True
          Style.Shadow = False
          TabOrder = 4
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'COD_LOGRADOURO'
          DataSource = DsEmpresas
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          CanDeleteText = True
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = dsLogradouros
          LookupKeyValue = Null
          StoredValues = 64
        end
        object dxDBMaskEdit1: TdxDBMaskEdit
          Left = 392
          Top = 63
          Width = 64
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
          TabOrder = 5
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'END_NUMERO'
          DataSource = DsEmpresas
          IgnoreMaskBlank = False
          StoredValues = 4
        end
        object dxDBEdit79: TdxDBEdit
          Left = 123
          Top = 241
          Width = 212
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
          DataField = 'FONES_SUPORTE'
          DataSource = DsEmpresas
        end
      end
      object dxTabSheet2: TcxTabSheet
        Caption = '  Configura'#231#227'o  '
        object Shape2: TShape
          Left = 0
          Top = 0
          Width = 753
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object Label9: TcxLabel
          Left = 43
          Top = 10
          Caption = 'Mensagem ECF'
          ParentFont = False
          Transparent = True
        end
        object Label12: TcxLabel
          Left = 43
          Top = 69
          Caption = 'Taxa Juros At'#233
          ParentFont = False
          Transparent = True
        end
        object Label14: TcxLabel
          Left = 206
          Top = 68
          Caption = 'Ap'#243's'
          ParentFont = False
          Transparent = True
        end
        object Label3: TcxLabel
          Left = 321
          Top = 68
          Caption = 'Tipo Juro'
          ParentFont = False
          Transparent = True
        end
        object Label11: TcxLabel
          Left = 32
          Top = 117
          Caption = 'Mensagem Boleto'
          ParentFont = False
          Transparent = True
        end
        object Label15: TcxLabel
          Left = 464
          Top = 170
          Caption = 'Cliente Venda Vista'
          ParentFont = False
          Transparent = True
        end
        object Label16: TcxLabel
          Left = 36
          Top = 170
          Caption = 'Dt. '#218'ltima Venda'
          ParentFont = False
          Transparent = True
        end
        object Label17: TcxLabel
          Left = 468
          Top = 242
          Caption = 'Cst Vari'#225'vel'
          ParentFont = False
          Transparent = True
        end
        object Label18: TcxLabel
          Left = 478
          Top = 195
          Caption = 'Vendedor'
          ParentFont = False
          Transparent = True
        end
        object Label19: TcxLabel
          Left = 302
          Top = 193
          Caption = 'Propaganda'
          ParentFont = False
          Transparent = True
        end
        object Label20: TcxLabel
          Left = 310
          Top = 218
          Caption = 'Descontos'
          ParentFont = False
          Transparent = True
        end
        object Label60: TcxLabel
          Left = 7
          Top = 292
          Caption = 'N'#186' M'#225'ximo de Itens NF'
          ParentFont = False
          Transparent = True
        end
        object Label62: TcxLabel
          Left = 184
          Top = 292
          Caption = #218'ltima Duplicata'
          ParentFont = False
          Transparent = True
        end
        object Label65: TcxLabel
          Left = 194
          Top = 316
          Caption = #218'ltimo CF Imp'
          ParentFont = False
          Transparent = True
        end
        object Label69: TcxLabel
          Left = 3
          Top = 316
          Caption = 'N'#186' M'#225'ximo de Itens Orc'
          ParentFont = False
          Transparent = True
        end
        object Label73: TcxLabel
          Left = 508
          Top = 219
          Caption = 'PIS'
          ParentFont = False
          Transparent = True
        end
        object Label74: TcxLabel
          Left = 323
          Top = 243
          Caption = 'COFINS'
          ParentFont = False
          Transparent = True
        end
        object Label81: TcxLabel
          Left = 33
          Top = 194
          Caption = 'N'#186' de Lin Pedidos'
          ParentFont = False
          Transparent = True
        end
        object Label85: TcxLabel
          Left = 309
          Top = 169
          Caption = 'Tipo Custo'
          ParentFont = False
          Transparent = True
        end
        object Label91: TcxLabel
          Left = 37
          Top = 35
          Caption = 'Mensagens ECF '
          ParentFont = False
          Transparent = True
        end
        object Label163: TcxLabel
          Left = 464
          Top = 68
          Caption = 'Toler'#226'ncia'
          ParentFont = False
          Transparent = True
        end
        object Label164: TcxLabel
          Left = 90
          Top = 94
          Caption = 'Multa'
          ParentFont = False
          Transparent = True
        end
        object Label170: TcxLabel
          Left = 461
          Top = 291
          Caption = 'N'#186' de Lin Or'#231
          ParentFont = False
          Transparent = True
        end
        object Label181: TcxLabel
          Left = 330
          Top = 267
          Caption = 'ISSQN'
          ParentFont = False
          Transparent = True
        end
        object Label191: TcxLabel
          Left = 462
          Top = 315
          Caption = 'N'#186' de Ordem'
          ParentFont = False
          Transparent = True
        end
        object Label208: TcxLabel
          Left = 338
          Top = 292
          Caption = 'CSLL'
          ParentFont = False
          Transparent = True
        end
        object Label218: TcxLabel
          Left = 350
          Top = 316
          Caption = 'IR'
          ParentFont = False
          Transparent = True
        end
        object Label219: TcxLabel
          Left = 470
          Top = 266
          Caption = 'Desp. Oper'
          ParentFont = False
          Transparent = True
        end
        object Label116: TcxLabel
          Left = 22
          Top = 268
          Caption = 'N'#186' Itens p/Folha NF'
          ParentFont = False
          Transparent = True
        end
        object Label118: TcxLabel
          Left = 3
          Top = 244
          Caption = 'N'#186' Itens p/Folha Pedido'
          ParentFont = False
          Transparent = True
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
        end
        object edDtUltVenda: TdxDBDateEdit
          Left = 123
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
          TabOrder = 11
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DT_ULT_VENDA'
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          Left = 563
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
          DataSource = DsEmpresas
        end
        object dxDBPickEdit5: TdxDBPickEdit
          Left = 123
          Top = 190
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
          Items.Strings = (
            'Simples'
            'Precificado'
            'Composto'
            'Manual'
            '')
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          Left = 531
          Top = 287
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
          Left = 531
          Top = 311
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
        object dxDBEdit67: TdxDBEdit
          Left = 123
          Top = 264
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
          TabOrder = 30
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'NUM_ITENS_NF'
          DataSource = DsEmpresas
        end
        object dxDBEdit68: TdxDBEdit
          Left = 123
          Top = 240
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
          TabOrder = 31
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'NUM_ITENS_PDD'
          DataSource = DsEmpresas
        end
      end
      object dxTabSheet3: TcxTabSheet
        Caption = 'Configura'#231#245'es de Pdv'
        object Label23: TcxLabel
          Left = 196
          Top = 35
          Caption = 'Local de Cobran'#231'a'
          ParentFont = False
          Transparent = True
        end
        object Label24: TcxLabel
          Left = 360
          Top = 36
          Caption = 'Tipo de Documento'
          ParentFont = False
          Transparent = True
        end
        object Label25: TcxLabel
          Left = 80
          Top = 33
          Caption = 'Natureza'
          ParentFont = False
          Transparent = True
        end
        object Label26: TcxLabel
          Left = 43
          Top = 61
          Caption = 'Mensagem Pdv 1'
          ParentFont = False
          Transparent = True
        end
        object Label27: TcxLabel
          Left = 43
          Top = 85
          Caption = 'Mensagem Pdv 2'
          ParentFont = False
          Transparent = True
        end
        object Label28: TcxLabel
          Left = 43
          Top = 109
          Caption = 'Mensagem Pdv 3'
          ParentFont = False
          Transparent = True
        end
        object Label29: TcxLabel
          Left = 43
          Top = 133
          Caption = 'Mensagem Pdv 4'
          ParentFont = False
          Transparent = True
        end
        object Label30: TcxLabel
          Left = 43
          Top = 157
          Caption = 'Mensagem Pdv 5'
          ParentFont = False
          Transparent = True
        end
        object Label37: TcxLabel
          Left = 312
          Top = 181
          Caption = 'Maior Unit'#225'rio'
          ParentFont = False
          Transparent = True
        end
        object Label38: TcxLabel
          Left = 301
          Top = 230
          Caption = 'Senha Gerencial'
          ParentFont = False
          Transparent = True
        end
        object Label153: TcxLabel
          Left = 66
          Top = 281
          Caption = 'Diret'#243'rio Tef'
          ParentFont = False
          Transparent = True
        end
        object Label180: TcxLabel
          Left = 312
          Top = 205
          Caption = 'Tr'#244'co M'#225'ximo'
          ParentFont = False
          Transparent = True
        end
        object Label212: TcxLabel
          Left = 79
          Top = 256
          Caption = 'Cor Fonte'
          ParentFont = False
          Transparent = True
        end
        object Label213: TcxLabel
          Left = 77
          Top = 230
          Caption = 'Cor Fundo'
          ParentFont = False
          Transparent = True
        end
        object Label13: TcxLabel
          Left = 263
          Top = 256
          Caption = 'Pct(%) Acr'#233'scimo PDV '
          ParentFont = False
          Transparent = True
        end
        object Label56: TcxLabel
          Left = 28
          Top = 180
          Caption = 'Mensagem Tela PDV'
          ParentFont = False
          Transparent = True
        end
        object Label127: TcxLabel
          Left = 48
          Top = 206
          Caption = 'Forma de Pagto'
          ParentFont = False
          Transparent = True
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_MAIORVALORUNIT'
          DataSource = DsEmpresas
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
          TabOrder = 7
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'PDV_SENHA'
          DataSource = DsEmpresas
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
          TabOrder = 12
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_NATUREZA'
          DataSource = DsEmpresas
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
          TabOrder = 13
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_LOCALCOBRANCA'
          DataSource = DsEmpresas
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
          TabOrder = 14
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_TIPODOCTO'
          DataSource = DsEmpresas
        end
        object dxDBEdit35: TdxDBEdit
          Left = 131
          Top = 275
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
          DataField = 'DIRETORIO_TEF'
          DataSource = DsEmpresas
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
          TabOrder = 15
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_TROCO_MAXIMO'
          DataSource = DsConfiguracoes
        end
        object FOTO1: TdxGraphicEdit
          Left = 469
          Top = 56
          Width = 140
          TabOrder = 16
          Caption = 'Foto'
          Stretch = True
          Height = 100
        end
        object RzButton3: TcxButton
          Left = 513
          Top = 157
          Width = 96
          Height = 25
          Caption = 'Carregar Imagem'
          TabOrder = 17
          TabStop = False
          OnClick = RzButton3Click
        end
        object RzButton4: TcxButton
          Left = 513
          Top = 185
          Width = 96
          Height = 25
          Caption = 'Cancelar Imagem'
          TabOrder = 18
          TabStop = False
          OnClick = RzButton4Click
        end
        object dxDBCheckEdit71: TdxDBCheckEdit
          Left = 292
          Top = 302
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
          TabOrder = 19
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Controla Pedido (Restaurante)'
          DataField = 'CONTROLE_PEDIDO_RESTAURANTE'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object PDV_COR_FONTE: TdxEdit
          Left = 131
          Top = 251
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
          TabOrder = 10
          OnEnter = PDV_COR_FUNDOEnter
          ReadOnly = True
          StoredValues = 64
        end
        object PDV_COR_FUNDO: TdxEdit
          Left = 131
          Top = 225
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
          TabOrder = 9
          OnEnter = PDV_COR_FUNDOEnter
          ReadOnly = True
          StoredValues = 64
        end
        object dxDBCalcEdit6: TdxDBCalcEdit
          Left = 375
          Top = 251
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
          DataField = 'TAXA_ACRESC_PDV'
          DataSource = DsEmpresas
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
        object dxDBEdit7: TdxDBEdit
          Left = 131
          Top = 177
          Width = 177
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
          DataField = 'MSG_PDVTELA'
          DataSource = DsEmpresas
        end
        object dxDBCheckEdit92: TdxDBCheckEdit
          Left = 120
          Top = 324
          Width = 143
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 20
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Qtde no C'#243'd. de Barras'
          DataField = 'PDV_QTDE_COD_BARRAS'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBEdit71: TdxDBEdit
          Left = 131
          Top = 201
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
          TabOrder = 21
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_FORMA_PAGTO'
          DataSource = DsEmpresas
        end
        object dxDBCheckEdit19: TdxDBCheckEdit
          Left = 131
          Top = 302
          Width = 132
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
          Caption = 'Imp. Conv'#234'nio Gr'#225'fico'
          DataField = 'IMP_CONVENIO_GRAF'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit93: TdxDBCheckEdit
          Left = 368
          Top = 326
          Width = 95
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 23
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Imp. Conv'#234'nio'
          DataField = 'PDV_IMP_CONVENIO'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
      end
      object dxTabSheet4: TcxTabSheet
        Caption = 'Otimiza'#231#227'o do Sistema'
        object Label53: TcxLabel
          Left = 407
          Top = 201
          Caption = 'N'#186' de Reg. p/ Load'
          ParentFont = False
          Transparent = True
        end
        object Label47: TcxLabel
          Left = 48
          Top = 151
          Caption = 'Carregar Todos Arquivos'
          ParentFont = False
          Transparent = True
        end
        object Label49: TcxLabel
          Left = 14
          Top = 131
          Caption = 'Localizar Produto se Inexistente'
          ParentFont = False
          Transparent = True
        end
        object Label52: TcxLabel
          Left = 401
          Top = 282
          Caption = 'Cor Fundo Sel'
          ParentFont = False
          Transparent = True
        end
        object Label46: TcxLabel
          Left = 460
          Top = 12
          Caption = 'Acrescenta Zeros'
          ParentFont = False
          Transparent = True
        end
        object Label43: TcxLabel
          Left = 50
          Top = 10
          Caption = 'Seleciona Por Agrupador'
          ParentFont = False
          Transparent = True
        end
        object Label45: TcxLabel
          Left = 106
          Top = 30
          Caption = 'Elimina Zeros'
          ParentFont = False
          Transparent = True
        end
        object Label55: TcxLabel
          Left = 350
          Top = 306
          Caption = 'Cor Fundo Deselecionado'
          ParentFont = False
          Transparent = True
        end
        object Label31: TcxLabel
          Left = 119
          Top = 50
          Caption = 'Possui Ecf'
          ParentFont = False
          Transparent = True
        end
        object Label68: TcxLabel
          Left = 74
          Top = 70
          Caption = 'Blq Sem Qtde Fiscal'
          ParentFont = False
          Transparent = True
        end
        object Label70: TcxLabel
          Left = 63
          Top = 287
          Caption = 'Alt. Pre Vnd Entrada?'
          ParentFont = False
          Transparent = True
        end
        object Label76: TcxLabel
          Left = 469
          Top = 96
          Caption = 'Digita Cota'#231#245'es'
          ParentFont = False
          Transparent = True
        end
        object Label93: TcxLabel
          Left = 397
          Top = 233
          Caption = 'Tipo Contagem'
          ParentFont = False
          Transparent = True
        end
        object Label95: TcxLabel
          Left = 91
          Top = 90
          Caption = 'Valida Cpf/Cnpj'
          ParentFont = False
          Transparent = True
        end
        object Label96: TcxLabel
          Left = 442
          Top = 183
          Caption = 'N'#186' de Zeros'
          ParentFont = False
          Transparent = True
        end
        object Label120: TcxLabel
          Left = 73
          Top = 268
          Caption = 'Imp. Posi'#231#231'oes Tela'
          ParentFont = False
          Transparent = True
        end
        object Label150: TcxLabel
          Left = 1
          Top = 229
          Caption = 'Corrige Pre'#231'o de VD com a Margem'
          ParentFont = False
          Transparent = True
        end
        object Label168: TcxLabel
          Left = 419
          Top = 54
          Caption = 'Indexa Custo de Produtos'
          ParentFont = False
          Transparent = True
        end
        object Label179: TcxLabel
          Left = 437
          Top = 159
          Caption = 'C'#243'digo SCPC'
          ParentFont = False
          Transparent = True
        end
        object Label185: TcxLabel
          Left = 404
          Top = 33
          Caption = 'Indexa Produtos na Entradas'
          ParentFont = False
          Transparent = True
        end
        object Label192: TcxLabel
          Left = 30
          Top = 250
          Caption = 'Bloqueia Cadastros sem CPF'
          ParentFont = False
          Transparent = True
        end
        object Label198: TcxLabel
          Left = 386
          Top = 259
          Caption = 'Cor Fundo Oficina'
          ParentFont = False
          Transparent = True
        end
        object Label207: TcxLabel
          Left = 22
          Top = 171
          Caption = 'Equipamentos ( Propriedades )'
          ParentFont = False
          Transparent = True
        end
        object Label209: TcxLabel
          Left = 17
          Top = 191
          Caption = 'Utiliza M'#225'scara nos Or'#231'amentos'
          ParentFont = False
          Transparent = True
        end
        object Label210: TcxLabel
          Left = 348
          Top = 331
          Caption = 'Valor M'#237'nimo para Parcela'
          ParentFont = False
          Transparent = True
        end
        object Label211: TcxLabel
          Left = 83
          Top = 211
          Caption = 'Obriga Qntde pdv'
          ParentFont = False
          Transparent = True
        end
        object Label214: TcxLabel
          Left = 459
          Top = 74
          Caption = 'Diferencia Fis/Fisc'
          ParentFont = False
          Transparent = True
        end
        object Label59: TcxLabel
          Left = 34
          Top = 305
          Caption = 'Repete C'#243'digo Secund'#225'rio?'
          ParentFont = False
          Transparent = True
        end
        object Label75: TcxLabel
          Left = 58
          Top = 321
          Caption = 'Utiliza Contadores O.S'
          ParentFont = False
          Transparent = True
        end
        object Label165: TcxLabel
          Left = 22
          Top = 341
          Caption = 'Codifica Produtos no Cadastro'
          ParentFont = False
          Transparent = True
        end
        object Label44: TcxLabel
          Left = 9
          Top = 111
          Caption = 'Consulta Incremental no Produto'
          ParentFont = False
          Transparent = True
        end
        object dxDBEdit8: TdxDBEdit
          Left = 508
          Top = 201
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
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'NUM_REG_LOAD'
          DataSource = DsEmpresas
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
          TabOrder = 3
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CARREGAR_ARQUIVOS'
          DataSource = DsEmpresas
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
          TabOrder = 4
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CHM_LOCPROD_INEXISTENTE'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
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
          DataSource = DsEmpresas
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
          TabOrder = 1
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_ELIMINA_ZEROS'
          DataSource = DsEmpresas
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
          TabOrder = 2
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_ACRESCENTA_ZEROS'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object CheckPDV_ECF: TdxCheckEdit
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
          TabOrder = 5
          OnClick = CheckPDV_ECFClick
          OnKeyDown = dxDBEdit1KeyDown
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
          TabOrder = 7
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'BLQQTDEFISCAL'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object DBCheckAlteraVenda: TdxDBCheckEdit
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
          TabOrder = 8
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ALTERA_PRECO_VENDA_ENT'
          DataSource = DsEmpresas
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
          TabOrder = 9
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DIGITA_COTACOES'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBPickEdit7: TdxDBPickEdit
          Left = 476
          Top = 226
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
          TabOrder = 10
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_CONTAGEM'
          DataSource = DsEmpresas
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
          TabOrder = 15
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VALIDA_DOCUMENTOS'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBEdit19: TdxDBEdit
          Left = 508
          Top = 176
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
          DataField = 'NUMERO_ZEROS'
          DataSource = DsEmpresas
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
          TabOrder = 17
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'IMPRIMIR_POSICOES'
          DataSource = DsEmpresas
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
          TabOrder = 18
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ALT_PRCVEND_MARGEM'
          DataSource = DsEmpresas
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
          TabOrder = 19
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'UTLIZA_INDEXADOR_CUSTO'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBEdit37: TdxDBEdit
          Left = 509
          Top = 151
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
          TabOrder = 20
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
          TabOrder = 21
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
          TabOrder = 22
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'BLOQ_CAD_SEM_CPF'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
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
          Left = 476
          Top = 325
          Width = 91
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
          TabOrder = 25
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
          TabOrder = 26
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
          TabOrder = 27
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
          TabOrder = 28
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
          TabOrder = 29
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CODIFICA_PRODUTOS'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit40: TdxDBCheckEdit
          Left = 409
          Top = 110
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
          TabOrder = 30
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Lista '#218'ltimas Vendas no PDV'
          DataField = 'PDV_VER_ULTIMAS_VENDAS'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object OFC_COR_TELA: TdxEdit
          Left = 476
          Top = 251
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
          OnEnter = PDV_COR_FUNDOEnter
          ReadOnly = True
          StoredValues = 64
        end
        object COR_FUNDO_SEL: TdxEdit
          Left = 476
          Top = 275
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
          OnEnter = PDV_COR_FUNDOEnter
          ReadOnly = True
          StoredValues = 64
        end
        object SAI_COR_FUNDO_SEL: TdxEdit
          Left = 476
          Top = 300
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
          OnEnter = PDV_COR_FUNDOEnter
          ReadOnly = True
          StoredValues = 64
        end
        object dxDBCheckEdit3: TdxDBCheckEdit
          Left = 376
          Top = 129
          Width = 193
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 31
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Contagem de Estoque Incremental'
          DataField = 'CONTAGEM_INCREMENTAL'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
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
          TabOrder = 32
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_CONSULTA_PROD'
          DataSource = DsEmpresas
          ValueChecked = 'A'
          ValueGrayed = 'M'
          ValueUnchecked = 'M'
        end
        object dxDBCheckEdit95: TdxDBCheckEdit
          Left = 364
          Top = 349
          Width = 203
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 33
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Automatizar Importa'#231#227'o BemaCash'
          DataField = 'BCH_AUTO_IMPORTA'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
      end
      object dxTabSheet5: TcxTabSheet
        Caption = 'Configura'#231#245'es de Caixa '
        object Label132: TcxLabel
          Left = 71
          Top = 100
          Caption = 'Limite de Turnos'
          ParentFont = False
          Transparent = True
        end
        object Label102: TcxLabel
          Left = 54
          Top = 125
          Caption = 'Tr'#244'co M'#225'ximo'
          ParentFont = False
          Transparent = True
        end
        object Label61: TcxLabel
          Left = 30
          Top = 152
          Caption = 'Desconto M'#225'ximo'
          ParentFont = False
          Transparent = True
        end
        object dxDBCheckEdit33: TdxDBCheckEdit
          Left = 80
          Top = 24
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit34: TdxDBCheckEdit
          Left = 53
          Top = 40
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit35: TdxDBCheckEdit
          Left = 66
          Top = 56
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBEdit28: TdxDBEdit
          Left = 151
          Top = 95
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
          DataSource = DsEmpresas
        end
        object dxDBCheckEdit56: TdxDBCheckEdit
          Left = 62
          Top = 72
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
          Caption = 'Faz Fec. Di'#225'rio de Estoque'
          DataField = 'FAZ_FECHAMENTO_DIARIO'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit20: TdxDBCheckEdit
          Left = 284
          Top = 41
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
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Extorna Lan'#231'amentos Com Caixa Fechado'
          DataField = 'EXT_LANC_CAIXA_FECHADO'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit62: TdxDBCheckEdit
          Left = 272
          Top = 24
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
          TabOrder = 5
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Transfere Valores Automaticamente no Caixa'
          DataField = 'TRANSF_VLRS_CAIXA'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit69: TdxDBCheckEdit
          Left = 340
          Top = 59
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
          TabOrder = 7
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
          Left = 354
          Top = 111
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
          TabOrder = 8
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Somente Caixa Sincronizado'
          DataField = 'CAIXA_SINCRONIZADO'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit46: TdxDBCheckEdit
          Left = 354
          Top = 93
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
          TabOrder = 9
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Pede Senha Caixa Atrasado'
          DataField = 'PST_SENHA_CAIXA'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit39: TdxDBCheckEdit
          Left = 364
          Top = 76
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
          TabOrder = 10
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Mostra Entradas no Caixa'
          DataField = 'PST_MOSTRA_ENTRADAS'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCalcEdit7: TdxDBCalcEdit
          Left = 122
          Top = 119
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
          DataField = 'TROCO_MAXIMO'
          DataSource = DsEmpresas
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
          Left = 121
          Top = 144
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DESCONTO_MAXIMO'
          DataSource = DsEmpresas
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
        object dxDBCheckEdit45: TdxDBCheckEdit
          Left = 337
          Top = 128
          Width = 176
          Hint = 
            'S'#243' permitir'#225' '#224' abertura de um novo Caixa se n'#227'o houver um predec' +
            'essor aberto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 13
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Validar Abertura de Novo Caixa'
          DataField = 'VALIDA_ABERTURA_CX'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
      end
      object dxTabSheet6: TcxTabSheet
        Caption = 'Par'#226'metros'
        object Label103: TcxLabel
          Left = 47
          Top = 9
          Caption = 'M'#225'scara Fone/Fax'
          ParentFont = False
          Transparent = True
        end
        object Label112: TcxLabel
          Left = 9
          Top = 33
          Caption = 'M'#225'scara Produtos Entrada'
          ParentFont = False
          Transparent = True
        end
        object Label205: TcxLabel
          Left = 22
          Top = 59
          Caption = 'Path Arquivo Magn'#233'tico'
          ParentFont = False
          Transparent = True
        end
        object Label206: TcxLabel
          Left = 17
          Top = 85
          Caption = 'Nome Arquivo Magn'#233'tico'
          ParentFont = False
          Transparent = True
        end
        object Label203: TcxLabel
          Left = 36
          Top = 111
          Caption = 'Conv'#234'nio do Cheque'
          ParentFont = False
          Transparent = True
        end
        object Label204: TcxLabel
          Left = 59
          Top = 138
          Caption = 'Conv'#234'nio Banco'
          ParentFont = False
          Transparent = True
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
        object dxDBCheckEdit90: TdxDBCheckEdit
          Left = 314
          Top = 133
          Width = 167
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
          Caption = 'Ativar Agente de Mensagens'
          DataField = 'ATIVA_AGENTE'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
      end
      object dxTabSheet7: TcxTabSheet
        Caption = 'Vendas'
        object Label10: TcxLabel
          Left = 25
          Top = 240
          Caption = 'Alterar Pre'#231'o Venda ?'
          ParentFont = False
          Transparent = True
        end
        object Label40: TcxLabel
          Left = 45
          Top = 148
          Caption = 'Digita Desconto ?'
          ParentFont = False
          Transparent = True
        end
        object Label21: TcxLabel
          Left = 242
          Top = 93
          Caption = 'Paga Comiss'#227'o p/ Terceiros'
          ParentFont = False
          Transparent = True
        end
        object Label42: TcxLabel
          Left = 12
          Top = 75
          Caption = 'Digita Unidade na Venda'
          ParentFont = False
          Transparent = True
        end
        object Label22: TcxLabel
          Left = 30
          Top = 111
          Caption = 'Digita Chq na Venda'
          ParentFont = False
          Transparent = True
        end
        object Label39: TcxLabel
          Left = 241
          Top = 113
          Caption = 'Vendas Faturadas No Caixa'
          ParentFont = False
          Transparent = True
        end
        object Label48: TcxLabel
          Left = 29
          Top = 222
          Caption = 'Ver Vendas Enviadas'
          ParentFont = False
          Transparent = True
        end
        object Label50: TcxLabel
          Left = 16
          Top = 21
          Caption = 'F4 Altera Cliente no Pdv'
          ParentFont = False
          Transparent = True
        end
        object Label51: TcxLabel
          Left = 20
          Top = 92
          Caption = 'Digita Senha Vendedor'
          ParentFont = False
          Transparent = True
        end
        object Label54: TcxLabel
          Left = 36
          Top = 128
          Caption = 'Digita Qtde no Pdv'
          ParentFont = False
          Transparent = True
        end
        object Label41: TcxLabel
          Left = 27
          Top = 258
          Caption = 'Parcela Venda no Pdv'
          ParentFont = False
          Transparent = True
        end
        object Label113: TcxLabel
          Left = 247
          Top = 147
          Caption = 'Utiliza Propriedades Venda'
          ParentFont = False
          Transparent = True
        end
        object Label72: TcxLabel
          Left = 261
          Top = 222
          Caption = 'Digita Cart'#227'o na Venda'
          ParentFont = False
          Transparent = True
        end
        object Label151: TcxLabel
          Left = 247
          Top = 131
          Caption = 'Bloqueia Venda sem IE/RG'
          ParentFont = False
          Transparent = True
        end
        object Label152: TcxLabel
          Left = 226
          Top = 74
          Caption = 'Permite Faturamento '#39'Zerado'#39'?'
          ParentFont = False
          Transparent = True
        end
        object Label130: TcxLabel
          Left = 279
          Top = 240
          Caption = 'Digita Vendedor Pdv'
          ParentFont = False
          Transparent = True
        end
        object Label109: TcxLabel
          Left = 258
          Top = 185
          Caption = 'Repete Produtos Venda'
          ParentFont = False
          Transparent = True
        end
        object Label154: TcxLabel
          Left = 290
          Top = 258
          Caption = 'Imp. Nf no Balc'#227'o'
          ParentFont = False
          Transparent = True
        end
        object Label145: TcxLabel
          Left = 473
          Top = 118
          Caption = 'Tipo Parc. Venda'
          ParentFont = False
          Transparent = True
        end
        object Label78: TcxLabel
          Left = 473
          Top = 80
          Caption = 'Descto. VD. '#224' Vista'
          ParentFont = False
          Transparent = True
        end
        object Label156: TcxLabel
          Left = 199
          Top = 21
          Caption = 'Parcelamento Sempre No Mesmo Dia'
          ParentFont = False
          Transparent = True
        end
        object Label166: TcxLabel
          Left = 211
          Top = 56
          Caption = 'Inclui a Vd. Atual no Lmt. de Cr'#233'd.'
          ParentFont = False
          Transparent = True
        end
        object Label167: TcxLabel
          Left = 210
          Top = 37
          Caption = 'Exclui Receber nas Baixas Parciais'
          ParentFont = False
          Transparent = True
        end
        object Label190: TcxLabel
          Left = 258
          Top = 203
          Caption = 'Utiliza Grades na Venda'
          ParentFont = False
          Transparent = True
        end
        object Label215: TcxLabel
          Left = 242
          Top = 166
          Caption = 'Trocas Faturadas no Caixa'
          ParentFont = False
          Transparent = True
        end
        object Label216: TcxLabel
          Left = 12
          Top = 38
          Caption = 'Fat. ultimo dia M'#234's (Pdv)'
          ParentFont = False
          Transparent = True
        end
        object Label217: TcxLabel
          Left = 14
          Top = 58
          Caption = 'Bloqueia Venda Sem Cpf'
          ParentFont = False
          Transparent = True
        end
        object Label82: TcxLabel
          Left = 44
          Top = 204
          Caption = 'Imprimir S'#233'ries NF'
          ParentFont = False
          Transparent = True
        end
        object Label57: TcxLabel
          Left = 433
          Top = 21
          Caption = 'Exibe pend'#234'ncia na VD.'
          ParentFont = False
          Transparent = True
        end
        object Label58: TcxLabel
          Left = 439
          Top = 38
          Caption = 'Carregamento Parcial'
          ParentFont = False
          Transparent = True
        end
        object Label125: TcxLabel
          Left = 473
          Top = 159
          Caption = 'Local de Estoque'
          ParentFont = False
          Transparent = True
        end
        object Label141: TcxLabel
          Left = 410
          Top = 55
          Caption = 'Elimina Zero. Prod. S/Grade'
          ParentFont = False
          Transparent = True
        end
        object cbAltPrcVnd: TdxDBCheckEdit
          Left = 132
          Top = 236
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit5: TdxDBCheckEdit
          Left = 132
          Top = 144
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit1: TdxDBCheckEdit
          Left = 376
          Top = 89
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit7: TdxDBCheckEdit
          Left = 132
          Top = 71
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit2: TdxDBCheckEdit
          Left = 132
          Top = 108
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit4: TdxDBCheckEdit
          Left = 376
          Top = 108
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
          DataSource = DsEmpresas
          ValueChecked = 'C'
          ValueGrayed = 'B'
          ValueUnchecked = 'B'
        end
        object dxDBCheckEdit15: TdxDBCheckEdit
          Left = 132
          Top = 16
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit16: TdxDBCheckEdit
          Left = 132
          Top = 89
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit17: TdxDBCheckEdit
          Left = 132
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
          TabOrder = 9
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_DIGITA_QUANTIDADE'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit6: TdxDBCheckEdit
          Left = 132
          Top = 254
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit44: TdxDBCheckEdit
          Left = 376
          Top = 144
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit25: TdxDBCheckEdit
          Left = 375
          Top = 217
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit13: TdxDBCheckEdit
          Left = 132
          Top = 217
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit59: TdxDBCheckEdit
          Left = 376
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
          TabOrder = 14
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'BLQ_VENDA_SEM_IERG'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit60: TdxDBCheckEdit
          Left = 377
          Top = 71
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit51: TdxDBCheckEdit
          Left = 375
          Top = 236
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit41: TdxDBCheckEdit
          Left = 375
          Top = 181
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit61: TdxDBCheckEdit
          Left = 375
          Top = 254
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBPickEdit8: TdxDBPickEdit
          Left = 473
          Top = 133
          Width = 91
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
          DataSource = DsEmpresas
          Items.Strings = (
            'Arredondar'
            'Decimal'
            'Inteiro'
            'Truncado')
        end
        object dxDBCalcEdit4: TdxDBCalcEdit
          Left = 473
          Top = 94
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
          DataField = 'LOJA_DESC_AVISTA'
          DataSource = DsEmpresas
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
          Left = 376
          Top = 16
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
          DataField = 'VENCTO_FIXO_PRESTACOES'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit65: TdxDBCheckEdit
          Left = 377
          Top = 53
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
          DataField = 'INCLUI_VENDA_LIMITE'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit66: TdxDBCheckEdit
          Left = 376
          Top = 34
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
          DataField = 'EXCLUI_VENDAS_BX_PARC_PDV'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit73: TdxDBCheckEdit
          Left = 375
          Top = 199
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
          DataField = 'EST_UTILIZA_GRADES'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit81: TdxDBCheckEdit
          Left = 375
          Top = 162
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
          DataSource = DsEmpresas
          ValueChecked = 'C'
          ValueGrayed = 'B'
          ValueUnchecked = 'B'
        end
        object dxDBCheckEdit82: TdxDBCheckEdit
          Left = 132
          Top = 34
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
          DataField = 'PDV_FATURAMENTO_FIM_MES'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit83: TdxDBCheckEdit
          Left = 132
          Top = 53
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
          DataField = 'BLOQUEIA_VENDA_SEM_CPF'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit87: TdxDBCheckEdit
          Left = 132
          Top = 199
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
          DataField = 'CRT_INFLUENCIA_VENDA'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit86: TdxDBCheckEdit
          Left = 39
          Top = 162
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
          TabOrder = 29
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Ch. Influencia VD.'
          DataField = 'CH_INFLUENCIA_VENDA'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit85: TdxDBCheckEdit
          Left = 39
          Top = 181
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
          TabOrder = 30
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Crt. Influencia VD.'
          DataField = 'CRT_INFLUENCIA_VENDA'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit24: TdxDBCheckEdit
          Left = 545
          Top = 16
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
          TabOrder = 31
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'EXIBE_PENDENCIA'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit89: TdxDBCheckEdit
          Left = 545
          Top = 35
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
          TabOrder = 32
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'CARREGAMENTO_PARCIAL'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBPickEdit3: TdxDBPickEdit
          Left = 473
          Top = 174
          Width = 91
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
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'LOCAL_PADRAO'
          DataSource = DsEmpresas
          Items.Strings = (
            '1'
            '2')
        end
        object dxDBCheckEdit97: TdxDBCheckEdit
          Left = 545
          Top = 52
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
          TabOrder = 33
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'ELIMINA_ZERO_PRD_SEM_GRADE'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCalcEdit29: TdxDBCalcEdit
          Left = 473
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
          TabOrder = 66
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'MARGEM_BRUTA'
          DataSource = DsEmpresas
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
        object cxLabel25: TcxLabel
          Left = 473
          Top = 201
          Caption = 'Mrg. Lucro Padr'#227'o'
          ParentFont = False
          Transparent = True
        end
      end
      object dxTabSheet8: TcxTabSheet
        Caption = 'Impress'#245'es'
        object Label92: TcxLabel
          Left = 482
          Top = 13
          Caption = 'Tipo Fatura'
          ParentFont = False
          Transparent = True
        end
        object Label86: TcxLabel
          Left = 36
          Top = 242
          Caption = 'Tipo Or'#231'amento'
          ParentFont = False
          Transparent = True
        end
        object Label194: TcxLabel
          Left = 3
          Top = 17
          Caption = 'Oficina Nome.....:'
          ParentFont = False
          Transparent = True
        end
        object Label195: TcxLabel
          Left = 3
          Top = 41
          Caption = 'Oficina Endere'#231'o:'
          ParentFont = False
          Transparent = True
        end
        object Label196: TcxLabel
          Left = 3
          Top = 65
          Caption = 'Oficina Fone.....:'
          ParentFont = False
          Transparent = True
        end
        object Label197: TcxLabel
          Left = 3
          Top = 89
          Caption = 'Oficina Fax......:'
          ParentFont = False
          Transparent = True
        end
        object Label8: TcxLabel
          Left = 264
          Top = 248
          Caption = 'Decimais Itens NF'
          ParentFont = False
          Transparent = True
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
          Caption = 'Imp. Cabe'#231' na 2'#170' Folha'
          DataField = 'IMPRIME_CABEC_2FOL'
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit31: TdxDBCheckEdit
          Left = 104
          Top = 218
          Width = 108
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
          Caption = 'Edita N'#250'mero NF'
          DataField = 'EDITA_NUM_NF'
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
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
          Caption = 'N'#227'o Imp. SubTotal no Or'#231
          DataField = 'IMPRIME_SUBTOTAL_ORCAMENTO'
          DataSource = DsEmpresas
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
          Caption = 'Comiss'#245'es por Faixa'
          DataField = 'COMISSAO_POR_FAIXA'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit49: TdxDBCheckEdit
          Left = 518
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
          DataSource = DsEmpresas
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit52: TdxDBCheckEdit
          Left = 533
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
          Caption = 'Comiss'#227'o Normal'
          DataField = 'COMISSAO_NORMAL'
          DataSource = DsEmpresas
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
          Caption = 'Digita N'#250'mero da Nf'
          DataField = 'DIGITA_NUM_NOTA'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit21: TdxDBCheckEdit
          Left = 533
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
          Caption = 'Imp. Unit. Or'#231'to'
          DataField = 'IMP_UNIT_ORC'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBPickEdit6: TdxDBPickEdit
          Left = 543
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
          DataSource = DsEmpresas
          Items.Strings = (
            'Ext'
            'Red')
        end
        object dxDBCheckEdit36: TdxDBCheckEdit
          Left = 531
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
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object CmbTipoOrc: TdxDBPickEdit
          Left = 119
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
          TabOrder = 14
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_ORCAMENTO'
          DataSource = DsEmpresas
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
          Caption = 'Imp. Endere'#231'o no Controle do Pdv'
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
          Left = 504
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
        object dxDBCheckEdit38: TdxDBCheckEdit
          Left = 470
          Top = 218
          Width = 168
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 23
          OnKeyDown = dxDBEdit1KeyDown
          Alignment = taRightJustify
          Caption = 'Imprime Nome da Propriedade'
          DataField = 'IMP_NOME_PROPRIEDADE'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBPickEdit1: TdxDBPickEdit
          Left = 358
          Top = 239
          Width = 46
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
          OnEnter = cmbTipoJuroEnter
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DIG_ITENS_NF'
          DataSource = DsEmpresas
          Items.Strings = (
            '2'
            '4')
        end
        object GroupBox11: TGroupBox
          Left = 392
          Top = 48
          Width = 241
          Height = 57
          Caption = ' [ Impress'#227'o NF Gr'#225'fica - Formul'#225'rio Cont'#237'nuo ] '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 25
          object Label108: TcxLabel
            Left = 10
            Top = 28
            Caption = 'Utiliza Mesmo N'#250'mero de NF'
            ParentFont = False
            Transparent = True
          end
          object dxDBCheckEdit91: TdxDBCheckEdit
            Left = 148
            Top = 22
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
            DataField = 'NF_CONTINUO_COM_MESMO_NUM_NF'
            DataSource = DsEmpresas
            ValueChecked = 'S'
            ValueGrayed = 'N'
            ValueUnchecked = 'N'
          end
        end
        object DBCheckBox9: TDBCheckBox
          Left = 502
          Top = 237
          Width = 132
          Height = 17
          Alignment = taLeftJustify
          Caption = 'Imp. Itens de Duplicata'
          DataField = 'IMP_PROD_DUPLICATA'
          DataSource = DsEmpresas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 26
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
      object dxTabSheet10: TcxTabSheet
        Caption = 'Financeiro'
        object Label148: TcxLabel
          Left = 408
          Top = 107
          Caption = 'Icm Presumido Sem IPI'
          ParentFont = False
          Transparent = True
        end
        object Label149: TcxLabel
          Left = 407
          Top = 133
          Caption = 'Icm Presumido Com IPI'
          ParentFont = False
          Transparent = True
        end
        object Label186: TcxLabel
          Left = 467
          Top = 8
          Caption = 'Natureza Ordem'
          ParentFont = False
          Transparent = True
        end
        object Label187: TcxLabel
          Left = 462
          Top = 32
          Caption = 'Frm Pagto Ordem'
          ParentFont = False
          Transparent = True
        end
        object Label188: TcxLabel
          Left = 465
          Top = 56
          Caption = 'Vendedor Ordem'
          ParentFont = False
          Transparent = True
        end
        object Label189: TcxLabel
          Left = 393
          Top = 80
          Caption = 'Produto Ordem'
          ParentFont = False
          Transparent = True
        end
        object Label202: TcxLabel
          Left = 150
          Top = 49
          ParentFont = False
          Transparent = True
        end
        object dxDBCalcEdit9: TdxDBCalcEdit
          Left = 525
          Top = 101
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
          DataSource = DsEmpresas
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
          Left = 525
          Top = 127
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
          DataSource = DsEmpresas
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
          Left = 8
          Top = 11
          Width = 193
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
          Caption = ' Utiliza Doctos Inteiros na Entrada'
          DataField = 'UTILIZA_DOCTOS_INT_ENTR'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit54: TdxDBCheckEdit
          Left = 8
          Top = 28
          Width = 209
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
          Caption = ' Valida Docto Duplicado no Receber'
          DataField = 'CONF_DUPLIC_REC_LANCTO'
          DataSource = DsEmpresas
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
          Left = 8
          Top = 45
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
          TabOrder = 8
          OnKeyDown = dxDBEdit1KeyDown
          Caption = ' Frete Manual na Entrada'
          DataField = 'ENT_FRETE_MANUAL'
          DataSource = DsConfiguracoes
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit18: TdxDBCheckEdit
          Left = 8
          Top = 62
          Width = 161
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
          Caption = ' Descontos em Baixa Parcial'
          DataField = 'DESC_BX_PARCIAL'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object GroupBox21: TGroupBox
          Left = 12
          Top = 179
          Width = 217
          Height = 90
          Caption = 'Comiss'#245'es p/Recebimento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          object Label140: TcxLabel
            Left = 9
            Top = 31
            Caption = 'Pct (%) Lib. Venda '#224' Vista'
            ParentFont = False
            Transparent = True
          end
          object Label110: TcxLabel
            Left = 5
            Top = 58
            Caption = 'Pct (%) Lib. Venda '#224' Prazo'
            ParentFont = False
            Transparent = True
          end
          object dxDBCalcEdit19: TdxDBCalcEdit
            Left = 140
            Top = 25
            Width = 64
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
            DataField = 'CM_LIB_PCT_VD_VISTA'
            DataSource = DsEmpresas
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
          object dxDBCalcEdit20: TdxDBCalcEdit
            Left = 140
            Top = 52
            Width = 64
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
            DataField = 'CM_LIB_PCT_VD_PRAZO'
            DataSource = DsEmpresas
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
        object dxDBCheckEdit94: TdxDBCheckEdit
          Left = 8
          Top = 79
          Width = 217
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
          Caption = 'Bloqueia Documento Banc'#225'rio Duplicado'
          DataField = 'BLOQUEIA_MVB'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit96: TdxDBCheckEdit
          Left = 8
          Top = 96
          Width = 225
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
          Caption = ' Exibir Multi-Seletor no Acerto de Contas'
          DataField = 'ACT_MULTI_SELETOR'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit98: TdxDBCheckEdit
          Left = 8
          Top = 113
          Width = 193
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
          Caption = 'Permite edi'#231#227'o de Contas '#224' Pagar'
          DataField = 'ALTERA_VLR_CNT_PAGAR'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit99: TdxDBCheckEdit
          Left = 8
          Top = 130
          Width = 249
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 14
          OnKeyDown = dxDBEdit1KeyDown
          Caption = 'Utiliza Dt. Aviso Banc'#225'rio como Par'#226'metro de Baixa'
          DataField = 'CTB_DT_AVISO_BANCARIO'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
        object dxDBCheckEdit100: TdxDBCheckEdit
          Left = 8
          Top = 148
          Width = 249
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
          Caption = 'Utiliza Dt. Dia Anterior no Movto Banc'#225'rio'
          DataField = 'DT_CX_MOVTO_ANTERIOR'
          DataSource = DsEmpresas
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
        end
      end
      object tbsModulos: TcxTabSheet
        Caption = 'M'#243'dulos && Configura'#231#245'es'
        object Panel2: TPanel
          Left = 20
          Top = 16
          Width = 625
          Height = 413
          Color = clMenu
          TabOrder = 0
          object GroupBox7: TGroupBox
            Left = 8
            Top = 4
            Width = 603
            Height = 70
            Caption = 'Controle de M'#243'dulos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object ckServico: TDBCheckBox
              Left = 196
              Top = 45
              Width = 57
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Servi'#231'os'
              DataField = 'EXIBE_SRV'
              DataSource = DsEmpresas
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object ckCobranca: TDBCheckBox
              Left = 120
              Top = 23
              Width = 68
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Cobran'#231'as'
              DataField = 'EXIBE_CB'
              DataSource = DsEmpresas
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object ckContabilidade: TDBCheckBox
              Left = 359
              Top = 45
              Width = 82
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Contabilidade'
              DataField = 'EXIBE_CTB'
              DataSource = DsEmpresas
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object ckReceituario: TDBCheckBox
              Left = 8
              Top = 23
              Width = 98
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Rec. Agron'#244'mico'
              DataField = 'EXIBE_AGR'
              DataSource = DsEmpresas
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox1: TDBCheckBox
              Left = 541
              Top = 23
              Width = 52
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Cargas'
              DataField = 'EXIBE_CARGA'
              DataSource = DsEmpresas
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object ckMesas: TDBCheckBox
              Left = 24
              Top = 45
              Width = 81
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Ct. de Mesas'
              DataField = 'EXIBE_MESAS'
              DataSource = DsEmpresas
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox2: TDBCheckBox
              Left = 216
              Top = 23
              Width = 37
              Height = 18
              Alignment = taLeftJustify
              Caption = 'NFe'
              DataField = 'EXIBE_NFE'
              DataSource = DsEmpresas
              TabOrder = 6
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox3: TDBCheckBox
              Left = 130
              Top = 45
              Width = 58
              Height = 18
              Alignment = taLeftJustify
              Caption = 'Sintegra'
              DataField = 'EXIBE_SINTEGRA'
              DataSource = DsEmpresas
              TabOrder = 7
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox4: TDBCheckBox
              Left = 265
              Top = 45
              Width = 86
              Height = 18
              Alignment = taLeftJustify
              Caption = 'Tbl. de Pre'#231'os'
              DataField = 'EXIBE_TBL'
              DataSource = DsEmpresas
              TabOrder = 8
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox5: TDBCheckBox
              Left = 264
              Top = 23
              Width = 87
              Height = 18
              Alignment = taLeftJustify
              Caption = 'Ac. de Contas'
              DataField = 'EXIBE_ACERTO_CONTAS'
              DataSource = DsEmpresas
              TabOrder = 9
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox6: TDBCheckBox
              Left = 453
              Top = 22
              Width = 82
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Mensalidades'
              DataField = 'EXIBE_MESALIDADES'
              DataSource = DsEmpresas
              TabOrder = 10
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox7: TDBCheckBox
              Left = 459
              Top = 44
              Width = 76
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Indices PDV'
              DataField = 'EXIBE_INDICE_PDV'
              DataSource = DsEmpresas
              TabOrder = 11
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox11: TDBCheckBox
              Left = 353
              Top = 23
              Width = 88
              Height = 18
              Alignment = taLeftJustify
              Caption = 'Exibe Graficos'
              DataField = 'FIN_EXIBE_GRAFICOS'
              DataSource = DsEmpresas
              TabOrder = 12
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox24: TDBCheckBox
              Left = 541
              Top = 44
              Width = 52
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Obras'
              DataField = 'EXIBE_CTR_OBRAS'
              DataSource = DsEmpresas
              TabOrder = 13
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object GroupBox12: TGroupBox
            Left = 8
            Top = 73
            Width = 605
            Height = 66
            BiDiMode = bdLeftToRight
            Caption = 'Servi'#231'os'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            object btnForma: TcxButton
              Left = 561
              Top = 32
              Width = 24
              Height = 24
              Cursor = crHandPoint
              TabOrder = 2
              OnClick = btnFormaClick
              Glyph.Data = {
                06030000424D06030000000000003600000028000000100000000F0000000100
                180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                0000000000000000000000000000000000000000000000000000000000000000
                00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBF}
            end
            object btnProduto: TcxButton
              Left = 272
              Top = 32
              Width = 24
              Height = 24
              Cursor = crHandPoint
              TabOrder = 3
              OnClick = btnProdutoClick
              Glyph.Data = {
                06030000424D06030000000000003600000028000000100000000F0000000100
                180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                0000000000000000000000000000000000000000000000000000000000000000
                00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBF}
            end
            object Label119: TcxLabel
              Left = 8
              Top = 16
              Caption = 'Produto C'#243'pias Excedentes'
              ParentFont = False
              Transparent = True
            end
            object Label139: TcxLabel
              Left = 308
              Top = 16
              Caption = 'Forma de Pagto - Mensalidades'
              ParentFont = False
              Transparent = True
            end
            object cmbForma: TdxDBLookupEdit
              Left = 306
              Top = 32
              Width = 255
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
              DataField = 'FORMA_PAGTO_MENSALIDADE'
              DataSource = DsEmpresas
              ClearKey = 46
              ListFieldName = 'NOME'
              KeyFieldName = 'CODIGO'
              LookupKeyValue = Null
            end
            object cmbProduto: TdxDBLookupEdit
              Left = 7
              Top = 32
              Width = 266
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
              Style.HotTrack = True
              Style.Shadow = False
              TabOrder = 1
              DataField = 'OFC_LT_PRODUTO_COPIAS'
              DataSource = DsEmpresas
              ReadOnly = False
              DropDownRows = 617
              DropDownWidth = 617
              ClearKey = 46
              ListFieldName = 'COD_NOME'
              Revertable = True
              KeyFieldName = 'CODIGO'
              ListSource = dsProdutos
              LookupKeyValue = Null
              StoredValues = 64
            end
          end
          object GroupBox6: TGroupBox
            Left = 8
            Top = 139
            Width = 605
            Height = 71
            BiDiMode = bdLeftToRight
            Caption = 'NFe - Emissor Sefaz'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
            object Label122: TcxLabel
              Left = 293
              Top = 22
              Caption = 'Diret'#243'rio para Exporta'#231#227'o de Registros'
              ParentFont = False
              Transparent = True
            end
            object Label123: TcxLabel
              Left = 10
              Top = 21
              Caption = 'Ambiente de Impress'#227'o'
              ParentFont = False
              Transparent = True
            end
            object Label124: TcxLabel
              Left = 151
              Top = 21
              Caption = 'Leiaute de Imp. DANFE'
              ParentFont = False
              Transparent = True
            end
            object dxDBEdit70: TdxDBEdit
              Left = 292
              Top = 36
              Width = 181
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
              DataField = 'NFE_DIR_EXPORTACAO'
              DataSource = DsEmpresas
            end
            object cmbOrigem: TdxDBPickEdit
              Left = 10
              Top = 36
              Width = 136
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.ButtonTransparence = ebtNone
              Style.HotTrack = True
              TabOrder = 1
              DataField = 'NFE_AMBIENTE'
              DataSource = DsEmpresas
              PopupBorder = pbFlat
              Items.Strings = (
                '1 - Produ'#231#227'o'
                '2 - Homologa'#231#227'o')
            end
            object dxDBPickEdit2: TdxDBPickEdit
              Left = 151
              Top = 36
              Width = 138
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              Style.ButtonTransparence = ebtNone
              Style.HotTrack = True
              TabOrder = 2
              DataField = 'NFE_LEIAUTE_DANFE'
              DataSource = DsEmpresas
              PopupBorder = pbFlat
              Items.Strings = (
                '1 - Retrato'
                '2 - Paisagem')
            end
            object DBCheckBox14: TDBCheckBox
              Left = 476
              Top = 42
              Width = 123
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Dest. Base ICMS Sub.'
              DataField = 'NFE_DESTACA_ICMS_SUB'
              DataSource = DsEmpresas
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object GroupBox13: TGroupBox
            Left = 8
            Top = 211
            Width = 605
            Height = 46
            Caption = 'Comiss'#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object Label126: TcxLabel
              Left = 307
              Top = 20
              Caption = 'Pct. Com. Lucro (%)'
              ParentFont = False
              Transparent = True
            end
            object ckCMagr: TDBCheckBox
              Left = 5
              Top = 20
              Width = 108
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Comiss'#227'o Agr'#237'cola'
              DataField = 'CM_AGR'
              DataSource = DsEmpresas
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object ckCMVDT: TDBCheckBox
              Left = 138
              Top = 20
              Width = 140
              Height = 17
              Alignment = taLeftJustify
              Caption = 'Valor Devido '#224' Terceiros'
              DataField = 'CM_VDT'
              DataSource = DsEmpresas
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
              OnExit = ckCMVDTExit
            end
            object edtpctlucro: TdxDBCalcEdit
              Left = 408
              Top = 16
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
              TabOrder = 2
              OnKeyDown = dxDBEdit1KeyDown
              DataField = 'CMD_VDT_PCT'
              DataSource = DsEmpresas
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
          object GroupBox22: TGroupBox
            Left = 8
            Top = 261
            Width = 606
            Height = 146
            Caption = 'Controle Estoque M'#237'nimo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object cxLabel1: TcxLabel
              Left = 12
              Top = 17
              Caption = 'Conta de Envio'
              ParentFont = False
              Transparent = True
            end
            object cxLabel2: TcxLabel
              Left = 261
              Top = 17
              Caption = 'SMTP'
              ParentFont = False
              Transparent = True
            end
            object cxLabel3: TcxLabel
              Left = 373
              Top = 17
              Caption = 'Login'
              ParentFont = False
              Transparent = True
            end
            object cxLabel4: TcxLabel
              Left = 485
              Top = 17
              Caption = 'Senha'
              ParentFont = False
              Transparent = True
            end
            object cxLabel6: TcxLabel
              Left = 11
              Top = 59
              Caption = 'Email de Controle'
              ParentFont = False
              Transparent = True
            end
            object dxDBEdit80: TdxDBEdit
              Left = 12
              Top = 32
              Width = 245
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
              DataField = 'EST_MIN_CONTA_EMAIL_ENVIO'
              DataSource = DsEmpresas
            end
            object dxDBEdit81: TdxDBEdit
              Left = 260
              Top = 32
              Width = 109
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
              DataField = 'EST_MIN_SMTP_EMAIL_ENVIO'
              DataSource = DsEmpresas
            end
            object dxDBEdit82: TdxDBEdit
              Left = 372
              Top = 32
              Width = 109
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
              TabOrder = 2
              OnKeyDown = dxDBEdit1KeyDown
              DataField = 'EST_MIN_LOGIN_EMAIL_ENVIO'
              DataSource = DsEmpresas
            end
            object dxDBEdit83: TdxDBEdit
              Left = 484
              Top = 32
              Width = 109
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
              TabOrder = 3
              OnKeyDown = dxDBEdit1KeyDown
              DataField = 'EST_MIN_PASSWORD_EMAIL_ENVIO'
              DataSource = DsEmpresas
              PasswordChar = '*'
            end
            object cxDBMemo2: TcxDBMemo
              Left = 12
              Top = 74
              DataBinding.DataField = 'EST_MIN_DESTINOS_EMAIL_ENVIO'
              DataBinding.DataSource = DsEmpresas
              TabOrder = 9
              Height = 58
              Width = 469
            end
          end
        end
      end
      object tbsNFe: TcxTabSheet
        Caption = 'Nota Fiscal Elet'#244'nica - NFe'
        object GroupBox15: TGroupBox
          Left = 8
          Top = 8
          Width = 689
          Height = 401
          Caption = 'Configura'#231#245'es'
          TabOrder = 0
          object tbsNFeEmitente: TPageControl
            Left = 2
            Top = 15
            Width = 685
            Height = 384
            ActivePage = tbsNFeWebService
            Align = alClient
            TabOrder = 0
            object tbsNFeCertificado: TTabSheet
              Caption = 'Certificado'
              object GroupBox16: TGroupBox
                Left = 0
                Top = 4
                Width = 265
                Height = 144
                Caption = 'Certificado'
                TabOrder = 0
                object lblCaminho: TcxLabel
                  Left = 8
                  Top = 16
                  Caption = 'Caminho'
                  Transparent = True
                end
                object lblSenha: TcxLabel
                  Left = 8
                  Top = 56
                  Caption = 'Senha'
                  Transparent = True
                end
                object sbtnCaminhoCert: TcxButton
                  Left = 235
                  Top = 32
                  Width = 23
                  Height = 24
                  TabOrder = 5
                  OnClick = sbtnCaminhoCertClick
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000130B0000130B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                    333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                    0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                    07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                    07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                    0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                    33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                    B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                    3BB33773333773333773B333333B3333333B7333333733333337}
                  NumGlyphs = 2
                end
                object lblSerie: TcxLabel
                  Left = 8
                  Top = 96
                  Caption = 'N'#250'mero de S'#233'rie'
                  Transparent = True
                end
                object sbtnGetCert: TcxButton
                  Left = 235
                  Top = 110
                  Width = 23
                  Height = 24
                  TabOrder = 7
                  OnClick = sbtnGetCertClick
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000130B0000130B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                    333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                    0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                    07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                    07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                    0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                    33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                    B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                    3BB33773333773333773B333333B3333333B7333333733333337}
                  NumGlyphs = 2
                end
                object edtCaminho: TDBEdit
                  Left = 8
                  Top = 32
                  Width = 225
                  Height = 21
                  DataField = 'NFE_CERT_CAMINHO'
                  DataSource = DsEmpresas
                  TabOrder = 0
                end
                object edtSenha: TDBEdit
                  Left = 8
                  Top = 72
                  Width = 249
                  Height = 21
                  DataField = 'NFE_CERT_SENHA'
                  DataSource = DsEmpresas
                  PasswordChar = '*'
                  TabOrder = 1
                end
                object edtNumSerie: TDBEdit
                  Left = 8
                  Top = 112
                  Width = 225
                  Height = 21
                  DataField = 'NFE_CERT_NUM_SERIE'
                  DataSource = DsEmpresas
                  TabOrder = 2
                end
              end
            end
            object tbsNFeGeral: TTabSheet
              Caption = 'Geral'
              ImageIndex = 1
              object GroupBox17: TGroupBox
                Left = 0
                Top = 4
                Width = 265
                Height = 272
                Caption = 'Geral'
                TabOrder = 0
                object Label143: TcxLabel
                  Left = 8
                  Top = 176
                  Caption = 'Logo Marca'
                  Transparent = True
                end
                object sbtnLogoMarca: TcxButton
                  Left = 235
                  Top = 188
                  Width = 23
                  Height = 24
                  TabOrder = 6
                  OnClick = sbtnLogoMarcaClick
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000130B0000130B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                    333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                    0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                    07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                    07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                    0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                    33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                    B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                    3BB33773333773333773B333333B3333333B7333333733333337}
                  NumGlyphs = 2
                end
                object sbtnPathSalvar: TcxButton
                  Left = 235
                  Top = 236
                  Width = 23
                  Height = 24
                  TabOrder = 7
                  OnClick = sbtnPathSalvarClick
                  Glyph.Data = {
                    76010000424D7601000000000000760000002800000020000000100000000100
                    04000000000000010000130B0000130B00001000000000000000000000000000
                    800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                    FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                    333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                    0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                    07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                    07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                    0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                    33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                    B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                    3BB33773333773333773B333333B3333333B7333333733333337}
                  NumGlyphs = 2
                end
                object edtLogoMarca: TDBEdit
                  Left = 8
                  Top = 192
                  Width = 228
                  Height = 21
                  DataField = 'NFE_GER_IMG_DANFE'
                  DataSource = DsEmpresas
                  TabOrder = 0
                end
                object edtPathLogs: TDBEdit
                  Left = 8
                  Top = 238
                  Width = 228
                  Height = 21
                  DataField = 'NFE_GER_PATH_LOGS'
                  DataSource = DsEmpresas
                  TabOrder = 1
                end
                object ckSalvar: TCheckBox
                  Left = 8
                  Top = 224
                  Width = 209
                  Height = 15
                  Caption = 'Salvar Arquivos de Envio e Resposta'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 2
                end
                object rgTipoDanfe: TDBRadioGroup
                  Left = 8
                  Top = 16
                  Width = 249
                  Height = 49
                  Caption = 'DANFE'
                  Columns = 2
                  DataField = 'NFE_GER_TP_DANFE'
                  DataSource = DsEmpresas
                  Items.Strings = (
                    'Retrato'
                    'Paisagem')
                  TabOrder = 3
                  Values.Strings = (
                    '0'
                    '1')
                end
                object rgFormaEmissao: TDBRadioGroup
                  Left = 8
                  Top = 72
                  Width = 249
                  Height = 97
                  Caption = 'Forma de Emiss'#227'o'
                  Columns = 2
                  DataField = 'NFE_GER_FORMA_EMISSAO'
                  DataSource = DsEmpresas
                  Items.Strings = (
                    'Normal'
                    'Conting'#234'ncia'
                    'SCAN'
                    'DPEC'
                    'FSDA')
                  TabOrder = 4
                  Values.Strings = (
                    '0'
                    '1'
                    '2'
                    '3'
                    '4')
                end
              end
            end
            object tbsNFeWebService: TTabSheet
              Caption = 'WebService'
              ImageIndex = 2
              object PageControl2: TPageControl
                Left = 285
                Top = 0
                Width = 392
                Height = 356
                ActivePage = TabSheet5
                Align = alClient
                TabOrder = 0
                object TabSheet5: TTabSheet
                  Caption = 'Respostas'
                  object MemoResp: TMemo
                    Left = 0
                    Top = 0
                    Width = 384
                    Height = 328
                    Align = alClient
                    TabOrder = 0
                  end
                end
                object TabSheet6: TTabSheet
                  Caption = 'XML Resposta'
                  ImageIndex = 1
                  object WBResposta: TWebBrowser
                    Left = 0
                    Top = 0
                    Width = 384
                    Height = 328
                    Align = alClient
                    TabOrder = 0
                    ControlData = {
                      4C000000B0270000E62100000000000000000000000000000000000000000000
                      000000004C000000000000000000000001000000E0D057007335CF11AE690800
                      2B2E126208000000000000004C0000000114020000000000C000000000000046
                      8000000000000000000000000000000000000000000000000000000000000000
                      00000000000000000100000000000000000000000000000000000000}
                  end
                end
              end
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 285
                Height = 356
                Align = alLeft
                BevelOuter = bvNone
                TabOrder = 1
                object GroupBox18: TGroupBox
                  Left = 4
                  Top = 4
                  Width = 265
                  Height = 141
                  Caption = 'WebService'
                  TabOrder = 0
                  object Label144: TcxLabel
                    Left = 8
                    Top = 16
                    Caption = 'Selecione UF de Destino:'
                    ParentFont = False
                    Transparent = True
                  end
                  object ckVisualizar: TCheckBox
                    Left = 8
                    Top = 118
                    Width = 153
                    Height = 17
                    Caption = 'Visualizar Mensagem'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                  end
                  object cbUF: TDBComboBox
                    Left = 8
                    Top = 32
                    Width = 249
                    Height = 24
                    Style = csDropDownList
                    DataField = 'NFE_WS_UF'
                    DataSource = DsEmpresas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ItemHeight = 16
                    Items.Strings = (
                      'AC'
                      'AL'
                      'AP'
                      'AM'
                      'BA'
                      'CE'
                      'DF'
                      'ES'
                      'GO'
                      'MA'
                      'MT'
                      'MS'
                      'MG'
                      'PA'
                      'PB'
                      'PR'
                      'PE'
                      'PI'
                      'RJ'
                      'RN'
                      'RS'
                      'RO'
                      'RR'
                      'SC'
                      'SP'
                      'SE'
                      'TO')
                    ParentFont = False
                    TabOrder = 1
                  end
                  object rgTipoAmb: TDBRadioGroup
                    Left = 8
                    Top = 61
                    Width = 249
                    Height = 52
                    Caption = 'Selecione o Ambiente de Destino'
                    Columns = 2
                    DataField = 'NFE_WS_AMBIENTE'
                    DataSource = DsEmpresas
                    Items.Strings = (
                      'Produ'#231#227'o'
                      'Homologa'#231#227'o')
                    TabOrder = 2
                    Values.Strings = (
                      '0'
                      '1')
                  end
                end
                object gbProxy: TGroupBox
                  Left = 4
                  Top = 149
                  Width = 266
                  Height = 105
                  Caption = 'v'
                  TabOrder = 1
                  object Label146: TcxLabel
                    Left = 8
                    Top = 16
                    Caption = 'Host'
                    Transparent = True
                  end
                  object Label147: TcxLabel
                    Left = 208
                    Top = 16
                    Caption = 'Porta'
                    Transparent = True
                  end
                  object Label155: TcxLabel
                    Left = 8
                    Top = 56
                    Caption = 'Usu'#225'rio'
                    Transparent = True
                  end
                  object Label157: TcxLabel
                    Left = 138
                    Top = 56
                    Caption = 'Senha'
                    Transparent = True
                  end
                  object edtProxyHost: TDBEdit
                    Left = 8
                    Top = 32
                    Width = 193
                    Height = 21
                    DataField = 'NFE_WS_PROXY_HOST'
                    DataSource = DsEmpresas
                    TabOrder = 0
                  end
                  object edtProxySenha: TDBEdit
                    Left = 135
                    Top = 72
                    Width = 123
                    Height = 21
                    DataField = 'NFE_WS_PROXY_SENHA'
                    DataSource = DsEmpresas
                    PasswordChar = '*'
                    TabOrder = 1
                  end
                  object DBEdit2: TDBEdit
                    Left = 8
                    Top = 72
                    Width = 123
                    Height = 21
                    DataField = 'NFE_WS_PROXY_USUARIO'
                    DataSource = DsEmpresas
                    TabOrder = 2
                  end
                end
                object btnStatusServ: TcxButton
                  Left = 5
                  Top = 301
                  Width = 177
                  Height = 28
                  Caption = 'Status Servi'#231'o'
                  TabOrder = 2
                  OnClick = btnStatusServClick
                end
                object btnInutilizar: TcxButton
                  Left = 4
                  Top = 272
                  Width = 177
                  Height = 25
                  Caption = 'Inutilizar NFe'
                  TabOrder = 3
                  OnClick = btnInutilizarClick
                end
              end
            end
            object TabSheet4: TTabSheet
              Caption = 'Emitente'
              ImageIndex = 3
              object Label158: TcxLabel
                Left = 8
                Top = 4
                Caption = 'CNPJ'
                Transparent = True
              end
              object Label159: TcxLabel
                Left = 136
                Top = 4
                Caption = 'Insc.Est.'
                Transparent = True
              end
              object Label160: TcxLabel
                Left = 8
                Top = 44
                Caption = 'Raz'#227'o Social'
                Transparent = True
              end
              object Label161: TcxLabel
                Left = 8
                Top = 85
                Caption = 'Fantasia'
                Transparent = True
              end
              object Label162: TcxLabel
                Left = 8
                Top = 202
                Caption = 'Logradouro'
                Transparent = True
              end
              object Label169: TcxLabel
                Left = 208
                Top = 202
                Caption = 'N'#250'mero'
                Transparent = True
              end
              object Label171: TcxLabel
                Left = 8
                Top = 242
                Caption = 'Complemento'
                Transparent = True
              end
              object Label172: TcxLabel
                Left = 136
                Top = 242
                Caption = 'Bairro'
                Transparent = True
              end
              object Label173: TcxLabel
                Left = 8
                Top = 282
                Caption = 'C'#243'd. Cidade '
                Transparent = True
              end
              object Label174: TcxLabel
                Left = 76
                Top = 282
                Caption = 'Cidade'
                Transparent = True
              end
              object Label175: TcxLabel
                Left = 223
                Top = 282
                Caption = 'UF'
                Transparent = True
              end
              object Label176: TcxLabel
                Left = 136
                Top = 162
                Caption = 'CEP'
                Transparent = True
              end
              object Label177: TcxLabel
                Left = 8
                Top = 162
                Caption = 'Fone'
                Transparent = True
              end
              object Label200: TcxLabel
                Left = 8
                Top = 120
                Caption = 'CNAE'
                Transparent = True
              end
              object Label220: TcxLabel
                Left = 103
                Top = 121
                Caption = 'Regime de Tributa'#231#227'o'
                Transparent = True
              end
              object DBEdit3: TDBEdit
                Left = 9
                Top = 20
                Width = 123
                Height = 21
                DataField = 'NFE_EMIT_CNPJ'
                DataSource = DsEmpresas
                TabOrder = 0
              end
              object DBEdit4: TDBEdit
                Left = 137
                Top = 20
                Width = 123
                Height = 21
                DataField = 'NFE_EMIT_INSC_ESTADUAL'
                DataSource = DsEmpresas
                TabOrder = 1
              end
              object DBEdit5: TDBEdit
                Left = 8
                Top = 59
                Width = 252
                Height = 21
                DataField = 'NFE_EMIT_RAZAO_SOCIAL'
                DataSource = DsEmpresas
                TabOrder = 2
              end
              object DBEdit6: TDBEdit
                Left = 8
                Top = 98
                Width = 252
                Height = 21
                DataField = 'NFE_EMIT_FANTASIA'
                DataSource = DsEmpresas
                TabOrder = 3
              end
              object DBEdit7: TDBEdit
                Left = 7
                Top = 178
                Width = 125
                Height = 21
                DataField = 'NFE_EMIT_FONE'
                DataSource = DsEmpresas
                TabOrder = 4
              end
              object DBEdit8: TDBEdit
                Left = 135
                Top = 178
                Width = 125
                Height = 21
                DataField = 'NFE_EMIT_CEP'
                DataSource = DsEmpresas
                TabOrder = 5
              end
              object DBEdit9: TDBEdit
                Left = 7
                Top = 218
                Width = 196
                Height = 21
                DataField = 'NFE_EMIT_LOGRADOURO'
                DataSource = DsEmpresas
                TabOrder = 6
              end
              object DBEdit10: TDBEdit
                Left = 207
                Top = 218
                Width = 50
                Height = 21
                DataField = 'NFE_EMIT_NUMERO'
                DataSource = DsEmpresas
                TabOrder = 7
              end
              object DBEdit11: TDBEdit
                Left = 8
                Top = 258
                Width = 123
                Height = 21
                DataField = 'NFE_EMIT_COMPLEMENTO'
                DataSource = DsEmpresas
                TabOrder = 8
              end
              object DBEdit12: TDBEdit
                Left = 136
                Top = 258
                Width = 123
                Height = 21
                DataField = 'NFE_EMIT_BAIRRO'
                DataSource = DsEmpresas
                TabOrder = 9
              end
              object DBEdit13: TDBEdit
                Left = 8
                Top = 299
                Width = 61
                Height = 21
                DataField = 'NFE_EMIT_COD_CIDADE'
                DataSource = DsEmpresas
                TabOrder = 10
              end
              object DBEdit14: TDBEdit
                Left = 75
                Top = 299
                Width = 142
                Height = 21
                DataField = 'NFE_EMIT_CIDADE'
                DataSource = DsEmpresas
                TabOrder = 11
              end
              object DBEdit15: TDBEdit
                Left = 222
                Top = 298
                Width = 35
                Height = 21
                DataField = 'NFE_EMIT_UF'
                DataSource = DsEmpresas
                TabOrder = 12
              end
              object DBEdit1: TDBEdit
                Left = 7
                Top = 136
                Width = 90
                Height = 21
                DataField = 'NFE_CNAE'
                DataSource = DsEmpresas
                TabOrder = 13
              end
              object cbTipoTributacao: TcxDBComboBox
                Left = 102
                Top = 136
                DataBinding.DataField = 'REGIME_TRIBUTARIO'
                DataBinding.DataSource = DsEmpresas
                Properties.Items.Strings = (
                  '1- Regime Normal'
                  '2 - Simples Nacional'
                  '3 - Simples Nacional - Excesso de Sublimite de Receita Bruta')
                Style.HotTrack = True
                Style.LookAndFeel.Kind = lfFlat
                StyleDisabled.LookAndFeel.Kind = lfFlat
                StyleFocused.LookAndFeel.Kind = lfFlat
                StyleHot.LookAndFeel.Kind = lfFlat
                TabOrder = 14
                Width = 159
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Email'
              ImageIndex = 4
              object GroupBox19: TGroupBox
                Left = 1
                Top = 4
                Width = 264
                Height = 324
                Caption = 'Email'
                TabOrder = 0
                object Label178: TcxLabel
                  Left = 8
                  Top = 16
                  Caption = 'Servidor SMTP'
                  Transparent = True
                end
                object Label182: TcxLabel
                  Left = 206
                  Top = 16
                  Caption = 'Porta'
                  Transparent = True
                end
                object Label183: TcxLabel
                  Left = 8
                  Top = 56
                  Caption = 'Usu'#225'rio'
                  Transparent = True
                end
                object Label184: TcxLabel
                  Left = 137
                  Top = 56
                  Caption = 'Senha'
                  Transparent = True
                end
                object cbEmailSSL: TDBCheckBox
                  Left = 8
                  Top = 99
                  Width = 167
                  Height = 17
                  Caption = 'SMTP exige conex'#227'o segura'
                  DataField = 'NFE_EMAIL_SMTP_SEGURA'
                  DataSource = DsEmpresas
                  TabOrder = 0
                  ValueChecked = '1'
                  ValueUnchecked = '0'
                end
                object DBEdit16: TDBEdit
                  Left = 8
                  Top = 32
                  Width = 193
                  Height = 21
                  DataField = 'NFE_EMAIL_SMTP'
                  DataSource = DsEmpresas
                  TabOrder = 1
                end
                object DBEdit17: TDBEdit
                  Left = 205
                  Top = 31
                  Width = 51
                  Height = 21
                  DataField = 'NFE_EMAIL_PORTA'
                  DataSource = DsEmpresas
                  TabOrder = 2
                end
                object DBEdit18: TDBEdit
                  Left = 8
                  Top = 73
                  Width = 120
                  Height = 21
                  DataField = 'NFE_EMAIL_USUARIO'
                  DataSource = DsEmpresas
                  TabOrder = 3
                end
                object DBEdit19: TDBEdit
                  Left = 136
                  Top = 73
                  Width = 120
                  Height = 21
                  DataField = 'NFE_EMAIL_SENHA'
                  DataSource = DsEmpresas
                  PasswordChar = '*'
                  TabOrder = 4
                end
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'Importa'#231#227'o NFe'
              ImageIndex = 5
              object cxButton1: TcxButton
                Left = 334
                Top = 25
                Width = 23
                Height = 24
                TabOrder = 0
                OnClick = cxButton1Click
                Glyph.Data = {
                  76010000424D7601000000000000760000002800000020000000100000000100
                  04000000000000010000130B0000130B00001000000000000000000000000000
                  800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
                  333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
                  0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
                  07333337F3FF3FFF7F333330F00F000F07333337F77377737F333330FFFFFFFF
                  07333FF7F3FFFF3F7FFFBBB0F0000F0F0BB37777F7777373777F3BB0FFFFFFFF
                  0BBB3777F3FF3FFF77773330F00F000003333337F773777773333330FFFF0FF0
                  33333337F3FF7F37F3333330F08F0F0B33333337F7737F77FF333330FFFF003B
                  B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
                  3BB33773333773333773B333333B3333333B7333333733333337}
                NumGlyphs = 2
              end
              object DBEdit20: TDBEdit
                Left = 10
                Top = 27
                Width = 322
                Height = 21
                DataField = 'NFE_ENT_PATH_IMPORTACAO'
                DataSource = DsEmpresas
                TabOrder = 1
              end
              object cxLabel5: TcxLabel
                Left = 8
                Top = 8
                Caption = 'Diret'#243'rio de Importa'#231#227'o'
                Transparent = True
              end
              object btnNatureza: TcxButton
                Left = 334
                Top = 70
                Width = 23
                Height = 22
                Cursor = crHandPoint
                TabOrder = 3
                OnClick = btnNaturezaClick
                Glyph.Data = {
                  06030000424D06030000000000003600000028000000100000000F0000000100
                  180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                  FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                  FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                  FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                  FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                  FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
                  000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                  FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                  0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                  BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                  0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                  FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                  BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                  00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBF}
              end
              object cmbNatureza: TdxDBLookupEdit
                Left = 9
                Top = 69
                Width = 325
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clBtnShadow
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
                Style.HotTrack = False
                Style.Shadow = False
                TabOrder = 4
                OnKeyDown = dxDBEdit1KeyDown
                DataField = 'NFE_ENT_CFOP_IMPORTACAO'
                DataSource = DsEmpresas
                ReadOnly = False
                DropDownWidth = 294
                ClearKey = 46
                ListFieldName = 'CODIGO;NOME'
                Revertable = True
                KeyFieldName = 'CODIGO'
                ListSource = dsNaturezas
                LookupKeyValue = Null
                StoredValues = 64
              end
              object cxLabel7: TcxLabel
                Left = 9
                Top = 52
                Caption = 'CFOP Padr'#227'o - Opera'#231#227'o Estadual'
                Transparent = True
              end
              object cxButton2: TcxButton
                Left = 334
                Top = 115
                Width = 23
                Height = 22
                Cursor = crHandPoint
                TabOrder = 6
                OnClick = cxButton2Click
                Glyph.Data = {
                  06030000424D06030000000000003600000028000000100000000F0000000100
                  180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                  FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                  FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                  FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                  FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                  FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
                  000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                  FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                  0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                  BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                  0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                  FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                  BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                  00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBF}
              end
              object cmbNatureza2: TdxDBLookupEdit
                Left = 9
                Top = 114
                Width = 325
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Style.BorderColor = clBtnShadow
                Style.BorderStyle = xbsSingle
                Style.ButtonStyle = btsSimple
                Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
                Style.HotTrack = False
                Style.Shadow = False
                TabOrder = 7
                OnKeyDown = dxDBEdit1KeyDown
                DataField = 'NFE_ENT_CFOP_IMPORTACAO_INT'
                DataSource = DsEmpresas
                ReadOnly = False
                DropDownWidth = 294
                ClearKey = 46
                ListFieldName = 'CODIGO;NOME'
                Revertable = True
                KeyFieldName = 'CODIGO'
                ListSource = dsNaturezas2
                LookupKeyValue = Null
                StoredValues = 64
              end
              object cxLabel8: TcxLabel
                Left = 9
                Top = 97
                Caption = 'CFOP Padr'#227'o - Opera'#231#227'o Interestadual'
                Transparent = True
              end
            end
          end
        end
      end
      object dxTabSheet9: TcxTabSheet
        Caption = 'Ordens de Servi'#231'os'
        object cxGroupBox2: TcxGroupBox
          Left = 7
          Top = 10
          Caption = 'Controles'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clTeal
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 407
          Width = 682
          object DBRadioGroup2: TDBRadioGroup
            Left = 7
            Top = 128
            Width = 210
            Height = 49
            Caption = 'Visualiza'#231#227'o de OS'
            Columns = 2
            DataField = 'OFC_EXIBE_VISUALIZACAO'
            DataSource = DsEmpresas
            Items.Strings = (
              'Equipamentos'
              'Ve'#237'culos')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1')
          end
          object DBCheckBox16: TDBCheckBox
            Left = 341
            Top = 23
            Width = 155
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Envio Autom'#225'tico de Emails'
            DataField = 'OFC_ENVIO_EMAIL_AUTOMATICO'
            DataSource = DsEmpresas
            TabOrder = 1
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox17: TDBCheckBox
            Left = 12
            Top = 98
            Width = 113
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Movimentos de OS'
            DataField = 'OFC_EXIBE_MOVIMENTOS_OS'
            DataSource = DsEmpresas
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox18: TDBCheckBox
            Left = 137
            Top = 23
            Width = 156
            Height = 17
            Alignment = taLeftJustify
            Caption = ' Movimentos Avulsos na OS '
            DataField = 'OFC_EXIBE_MOVTO_AVULSO'
            DataSource = DsEmpresas
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox19: TDBCheckBox
            Left = 152
            Top = 48
            Width = 141
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Controla Tempo Resposta'
            DataField = 'OFC_CONTROLA_TEMPO_RESPOSTA'
            DataSource = DsEmpresas
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox20: TDBCheckBox
            Left = 159
            Top = 73
            Width = 134
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Dados Complementares'
            DataField = 'OFC_EXIBE_DADOS_COMPLEMENTARES'
            DataSource = DsEmpresas
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox21: TDBCheckBox
            Left = 5
            Top = 73
            Width = 120
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Notifica Pend'#234'ncia'
            DataField = 'OFC_EXIBE_NOTIFICACAO'
            DataSource = DsEmpresas
            TabOrder = 6
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox22: TDBCheckBox
            Left = 14
            Top = 48
            Width = 111
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Visitas Preventivas'
            DataField = 'OFC_EXIBE_VISITA_PREVENTIVA'
            DataSource = DsEmpresas
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox23: TDBCheckBox
            Left = 8
            Top = 23
            Width = 117
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Controle de C'#243'pias'
            DataField = 'OFC_EXIBE_COPIAS'
            DataSource = DsEmpresas
            TabOrder = 8
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox8: TDBCheckBox
            Left = 175
            Top = 98
            Width = 118
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Contatos por Cliente'
            DataField = 'OFC_CONTATO_POR_CLIENTE'
            DataSource = DsConfiguracoes
            TabOrder = 9
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object GroupBox14: TGroupBox
            Left = 6
            Top = 184
            Width = 606
            Height = 146
            Caption = 'Email'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
            object Label128: TcxLabel
              Left = 13
              Top = 17
              Caption = 'Email Padr'#227'o'
              ParentFont = False
              Transparent = True
            end
            object Label129: TcxLabel
              Left = 485
              Top = 17
              Caption = 'SMTP'
              ParentFont = False
              Transparent = True
            end
            object Label137: TcxLabel
              Left = 13
              Top = 57
              Caption = 'Login'
              ParentFont = False
              Transparent = True
            end
            object Label138: TcxLabel
              Left = 125
              Top = 57
              Caption = 'Senha'
              ParentFont = False
              Transparent = True
            end
            object Label131: TcxLabel
              Left = 237
              Top = 57
              Caption = 'Usu'#225'rio Padr'#227'o'
              ParentFont = False
              Transparent = True
            end
            object Label136: TcxLabel
              Left = 13
              Top = 99
              Caption = 'Email de Controle'
              ParentFont = False
              Transparent = True
            end
            object dxDBEdit72: TdxDBEdit
              Left = 12
              Top = 32
              Width = 469
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
              DataField = 'EMAIL_PADRAO'
              DataSource = DsEmpresas
            end
            object dxDBEdit73: TdxDBEdit
              Left = 484
              Top = 32
              Width = 109
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
              DataField = 'SMTP'
              DataSource = DsEmpresas
            end
            object dxDBEdit76: TdxDBEdit
              Left = 12
              Top = 72
              Width = 109
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
              TabOrder = 2
              OnKeyDown = dxDBEdit1KeyDown
              DataField = 'LOGIN'
              DataSource = DsEmpresas
            end
            object dxDBEdit77: TdxDBEdit
              Left = 124
              Top = 72
              Width = 109
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
              TabOrder = 3
              OnKeyDown = dxDBEdit1KeyDown
              DataField = 'SENHA'
              DataSource = DsEmpresas
              PasswordChar = '*'
            end
            object dxDBEdit74: TdxDBEdit
              Left = 236
              Top = 72
              Width = 355
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
              DataField = 'NOME_USUARIO'
              DataSource = DsEmpresas
            end
            object dxDBEdit75: TdxDBEdit
              Left = 12
              Top = 113
              Width = 469
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
              DataField = 'EMAIL_CONTROLE'
              DataSource = DsEmpresas
            end
          end
          object DBCheckBox15: TDBCheckBox
            Left = 308
            Top = 47
            Width = 189
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Fat. Automatico ap'#243's Fechamento'
            DataField = 'OFC_GERA_FAT_AUTOMATICO'
            DataSource = DsEmpresas
            TabOrder = 11
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object cxDBDateEdit1: TcxDBDateEdit
            Left = 223
            Top = 156
            DataBinding.DataField = 'OFC_DATA_BASE_MAN_OS'
            DataBinding.DataSource = DsEmpresas
            TabOrder = 12
            Width = 137
          end
          object cxLabel26: TcxLabel
            Left = 223
            Top = 140
            Caption = 'Dt. Base Listagem Man. OS'
          end
        end
      end
      object tbsObras: TcxTabSheet
        Caption = 'Obras'
        ImageIndex = 13
        object cxGroupBox1: TcxGroupBox
          Left = 8
          Top = 8
          Caption = #205'ndices e Percentuais'
          TabOrder = 0
          Height = 287
          Width = 577
          object cxLabel9: TcxLabel
            Left = 8
            Top = 24
            Caption = 'INSS'
            ParentFont = False
            Transparent = True
          end
          object dxDBCalcEdit14: TdxDBCalcEdit
            Left = 8
            Top = 40
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
            DataField = 'CTR_INSS'
            DataSource = DsEmpresas
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
          object cxLabel10: TcxLabel
            Left = 104
            Top = 24
            Caption = 'C. Custo'
            ParentFont = False
            Transparent = True
          end
          object btnCentroINSS: TcxButton
            Left = 351
            Top = 41
            Width = 23
            Height = 22
            Cursor = crHandPoint
            TabOrder = 18
            OnClick = btnCentroINSSClick
            Glyph.Data = {
              06030000424D06030000000000003600000028000000100000000F0000000100
              180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
              0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
              BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
              0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
              FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
              BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
              00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBF}
          end
          object cmbCentroINSS: TdxDBLookupEdit
            Left = 104
            Top = 40
            Width = 247
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
            DataField = 'CC_INSS'
            DataSource = DsEmpresas
            ClearKey = 46
            ListFieldName = 'NOME'
            CanDeleteText = True
            KeyFieldName = 'CODIGO'
            ListSource = dsCentroINSS
            LookupKeyValue = Null
          end
          object btnCentroIRPJ: TcxButton
            Left = 351
            Top = 81
            Width = 23
            Height = 22
            Cursor = crHandPoint
            TabOrder = 19
            OnClick = btnCentroIRPJClick
            Glyph.Data = {
              06030000424D06030000000000003600000028000000100000000F0000000100
              180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
              0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
              BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
              0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
              FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
              BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
              00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBF}
          end
          object cmbCentroIRPJ: TdxDBLookupEdit
            Left = 104
            Top = 80
            Width = 247
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
            DataField = 'CC_IRPJ'
            DataSource = DsEmpresas
            ClearKey = 46
            ListFieldName = 'NOME'
            CanDeleteText = True
            KeyFieldName = 'CODIGO'
            ListSource = dsCentroIRPJ
            LookupKeyValue = Null
          end
          object dxDBCalcEdit8: TdxDBCalcEdit
            Left = 8
            Top = 80
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
            TabOrder = 4
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CTR_IRPJ'
            DataSource = DsEmpresas
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
          object cxLabel11: TcxLabel
            Left = 8
            Top = 64
            Caption = 'IRPJ'
            ParentFont = False
            Transparent = True
          end
          object cxLabel12: TcxLabel
            Left = 104
            Top = 64
            Caption = 'C. Custo'
            ParentFont = False
            Transparent = True
          end
          object btnCentroPIS: TcxButton
            Left = 351
            Top = 161
            Width = 23
            Height = 22
            Cursor = crHandPoint
            TabOrder = 22
            OnClick = btnCentroPISClick
            Glyph.Data = {
              06030000424D06030000000000003600000028000000100000000F0000000100
              180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
              0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
              BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
              0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
              FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
              BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
              00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBF}
          end
          object cmbCentroPIS: TdxDBLookupEdit
            Left = 104
            Top = 160
            Width = 247
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
            DataField = 'CC_PIS'
            DataSource = DsEmpresas
            ClearKey = 46
            ListFieldName = 'NOME'
            CanDeleteText = True
            KeyFieldName = 'CODIGO'
            ListSource = dsCentroPIS
            LookupKeyValue = Null
          end
          object dxDBCalcEdit21: TdxDBCalcEdit
            Left = 8
            Top = 160
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
            TabOrder = 10
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CTR_PIS'
            DataSource = DsEmpresas
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
          object cxLabel13: TcxLabel
            Left = 8
            Top = 144
            Caption = 'PIS'
            ParentFont = False
            Transparent = True
          end
          object cxLabel14: TcxLabel
            Left = 104
            Top = 144
            Caption = 'C. Custo'
            ParentFont = False
            Transparent = True
          end
          object btnCentroISS: TcxButton
            Left = 351
            Top = 121
            Width = 23
            Height = 22
            Cursor = crHandPoint
            TabOrder = 25
            OnClick = btnCentroISSClick
            Glyph.Data = {
              06030000424D06030000000000003600000028000000100000000F0000000100
              180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
              0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
              BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
              0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
              FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
              BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
              00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBF}
          end
          object cmbCentroISS: TdxDBLookupEdit
            Left = 104
            Top = 120
            Width = 247
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
            DataField = 'CC_ISS'
            DataSource = DsEmpresas
            ClearKey = 46
            ListFieldName = 'NOME'
            CanDeleteText = True
            KeyFieldName = 'CODIGO'
            ListSource = dsCentroISS
            LookupKeyValue = Null
          end
          object cxLabel15: TcxLabel
            Left = 104
            Top = 104
            Caption = 'C. Custo'
            ParentFont = False
            Transparent = True
          end
          object dxDBCalcEdit22: TdxDBCalcEdit
            Left = 8
            Top = 120
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
            TabOrder = 6
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CTR_ISS'
            DataSource = DsEmpresas
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
          object cxLabel16: TcxLabel
            Left = 8
            Top = 104
            Caption = 'ISS'
            ParentFont = False
            Transparent = True
          end
          object btnCentroCOFINS: TcxButton
            Left = 351
            Top = 201
            Width = 23
            Height = 22
            Cursor = crHandPoint
            TabOrder = 28
            OnClick = btnCentroCOFINSClick
            Glyph.Data = {
              06030000424D06030000000000003600000028000000100000000F0000000100
              180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
              0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
              BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
              0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
              FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
              BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
              00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBF}
          end
          object cmbCentroCOFINS: TdxDBLookupEdit
            Left = 104
            Top = 200
            Width = 247
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
            DataField = 'CC_COFINS'
            DataSource = DsEmpresas
            ClearKey = 46
            ListFieldName = 'NOME'
            CanDeleteText = True
            KeyFieldName = 'CODIGO'
            ListSource = dsCentroCOFINS
            LookupKeyValue = Null
          end
          object dxDBCalcEdit23: TdxDBCalcEdit
            Left = 8
            Top = 200
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
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CTR_COFINS'
            DataSource = DsEmpresas
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
          object cxLabel17: TcxLabel
            Left = 8
            Top = 184
            Caption = 'COFINS'
            ParentFont = False
            Transparent = True
          end
          object cxLabel18: TcxLabel
            Left = 104
            Top = 184
            Caption = 'C. Custo'
            ParentFont = False
            Transparent = True
          end
          object btnCentroCSLL: TcxButton
            Left = 351
            Top = 241
            Width = 23
            Height = 22
            Cursor = crHandPoint
            TabOrder = 31
            OnClick = btnCentroCSLLClick
            Glyph.Data = {
              06030000424D06030000000000003600000028000000100000000F0000000100
              180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
              0000000000000000000000000000000000000000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
              FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
              000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
              FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
              0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
              BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
              0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
              FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
              BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
              00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
              00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
              BFBFBFBFBFBFBFBFBFBF}
          end
          object cmbCentroCSLL: TdxDBLookupEdit
            Left = 104
            Top = 240
            Width = 247
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
            DataField = 'CC_CSLL'
            DataSource = DsEmpresas
            ClearKey = 46
            ListFieldName = 'NOME'
            CanDeleteText = True
            KeyFieldName = 'CODIGO'
            ListSource = dsCentroCSLL
            LookupKeyValue = Null
          end
          object dxDBCalcEdit24: TdxDBCalcEdit
            Left = 8
            Top = 240
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
            DataField = 'CTR_CSLL'
            DataSource = DsEmpresas
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
          object cxLabel19: TcxLabel
            Left = 8
            Top = 224
            Caption = 'CSLL'
            ParentFont = False
            Transparent = True
          end
          object cxLabel20: TcxLabel
            Left = 104
            Top = 224
            Caption = 'C. Custo'
            ParentFont = False
            Transparent = True
          end
          object dxDBCalcEdit25: TdxDBCalcEdit
            Left = 380
            Top = 120
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
            TabOrder = 8
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CTR_BASE_ISS_MUN'
            DataSource = DsEmpresas
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
          object cxLabel21: TcxLabel
            Left = 380
            Top = 104
            Caption = 'B. Calc. Mun.'
            ParentFont = False
            Transparent = True
          end
          object dxDBCalcEdit26: TdxDBCalcEdit
            Left = 475
            Top = 120
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
            TabOrder = 9
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CTR_BASE_ISS_NAC'
            DataSource = DsEmpresas
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
          object cxLabel22: TcxLabel
            Left = 475
            Top = 104
            Caption = 'B. Calc. Nac.'
            ParentFont = False
            Transparent = True
          end
          object dxDBCalcEdit27: TdxDBCalcEdit
            Left = 475
            Top = 40
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
            TabOrder = 3
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CTR_BASE_INSS_NAC'
            DataSource = DsEmpresas
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
          object cxLabel23: TcxLabel
            Left = 475
            Top = 24
            Caption = 'B. Calc. Nac.'
            ParentFont = False
            Transparent = True
          end
          object dxDBCalcEdit28: TdxDBCalcEdit
            Left = 380
            Top = 40
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
            TabOrder = 2
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CTR_BASE_INSS_MUN'
            DataSource = DsEmpresas
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
          object cxLabel24: TcxLabel
            Left = 380
            Top = 24
            Caption = 'B. Calc. Mun.'
            ParentFont = False
            Transparent = True
          end
        end
      end
      object dxTabSheet12: TcxTabSheet
        Caption = 'Bemacash'
        object GroupBox20: TGroupBox
          Left = 8
          Top = 11
          Width = 729
          Height = 230
          BiDiMode = bdLeftToRight
          Caption = 'Configura'#231#245'es Bemacash'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          object Label142: TcxLabel
            Left = 86
            Top = 16
            Caption = 'Diret'#243'rio para Exporta'#231#227'o de Registros de Opera'#231#227'o'
            ParentFont = False
            Transparent = True
          end
          object Label193: TcxLabel
            Left = 13
            Top = 16
            Caption = 'Cod. Filial'
            ParentFont = False
            Transparent = True
          end
          object Label199: TcxLabel
            Left = 13
            Top = 64
            Caption = 'Diret'#243'rio para Exporta'#231#227'o de Pedidos'
            ParentFont = False
            Transparent = True
          end
          object dxDBEdit59: TdxDBEdit
            Left = 84
            Top = 32
            Width = 421
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
            DataField = 'BCH_PATH'
            DataSource = DsEmpresas
          end
          object dxDBSpinEdit1: TdxDBSpinEdit
            Left = 13
            Top = 32
            Width = 65
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderStyle = xbsFlat
            Style.ButtonStyle = btsFlat
            TabOrder = 1
            DataField = 'BCH_FILIAL'
            DataSource = DsEmpresas
          end
          object dxDBEdit78: TdxDBEdit
            Left = 13
            Top = 80
            Width = 493
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
            TabOrder = 2
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BCH_PATH_PEDIDOS'
            DataSource = DsEmpresas
          end
          object DBCheckBox10: TDBCheckBox
            Left = 13
            Top = 112
            Width = 169
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Concatenar C'#243'digo de Produto'
            DataField = 'BCH_CONC_CODIGO_PRODUTO'
            DataSource = DsEmpresas
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox12: TDBCheckBox
            Left = 213
            Top = 112
            Width = 220
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Habilitar Sincronia de Produtos e Clientes'
            DataField = 'BCH_HABILITA_SINC_AUT'
            DataSource = DsEmpresas
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBCheckBox13: TDBCheckBox
            Left = 80
            Top = 131
            Width = 102
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Exibe Descontos'
            DataField = 'BCH_EXIBE_DESCONTO'
            DataSource = DsEmpresas
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
    end
  end
  object Navigator: TdxBarDBNavigator
    BarManager = BarMgr
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DsEmpresas
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 397
    Top = 7
  end
  object BarMgr: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
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
    Left = 293
    Top = 8
    DockControlHeights = (
      0
      0
      0
      0)
    object BarMgrBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
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
          Visible = True
          ItemName = 'dxBarDBNavFirst1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPrev1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavNext1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavLast1'
        end
        item
          Visible = True
          ItemName = 'btnIncluir'
        end
        item
          Visible = True
          ItemName = 'btnExcluir'
        end
        item
          Visible = True
          ItemName = 'BtnSalvar'
        end
        item
          Visible = True
          ItemName = 'BtnCancelar'
        end
        item
          Visible = True
          ItemName = 'BtnFechar'
        end>
      OldName = 'Navega'#231#227'o'
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
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
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
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
      BarDBNavigator = Navigator
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrev1: TdxBarDBNavButton
      Caption = 'Prior'
      Category = 1
      Enabled = False
      Hint = 'Prior'
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
      BarDBNavigator = Navigator
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Caption = 'Next'
      Category = 1
      Enabled = False
      Hint = 'Next'
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
      BarDBNavigator = Navigator
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Caption = 'Last'
      Category = 1
      Enabled = False
      Hint = 'Last'
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
      BarDBNavigator = Navigator
      NavButton = dxbnLast
    end
  end
  object Actions: TActionList
    Left = 329
    Top = 8
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
    end
    object ActPost: TAction
      Caption = 'ActPost'
      Hint = 'Salvar informa'#231#245'es'
      ShortCut = 121
      OnExecute = ActPostExecute
    end
    object ActCancel: TAction
      Caption = 'ActCancel'
      Hint = 'Cancelar informa'#231#245'es'
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
      OnExecute = actLookupExecute
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
  object DsEmpresas: TDataSource
    DataSet = DMEmpresas.Empresas
    OnStateChange = DsEmpresasStateChange
    Left = 157
    Top = 3
  end
  object Cor: TColorDialog
    Left = 360
    Top = 10
  end
  object DsCaixa: TDataSource
    AutoEdit = False
    DataSet = DMEmpresas.SelCaixa
    OnStateChange = DsEmpresasStateChange
    Left = 221
    Top = 3
  end
  object ABRE: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.jpg;*.jpeg;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.jpg;*.j' +
      'peg;*.bmp;*.ico;*.emf;*.wmf|CompuServe GIF Image (*.gif)|*.gif|J' +
      'PEG Image File (*.jpg)|*.jpg|JPEG Image File (*.jpeg)|*.jpeg|Bit' +
      'maps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf' +
      ')|*.emf|Metafiles (*.wmf)|*.wmf|Texto|*.txt|Bombas|*.ugm'
    Left = 432
    Top = 8
  end
  object DsConfiguracoes: TDataSource
    DataSet = DmApp.Configuracoes
    OnStateChange = DsEmpresasStateChange
    Left = 189
    Top = 3
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = DMEmpresas.SelProdutos
    Left = 474
    Top = 9
  end
  object dsCidades: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Cidades
    Left = 573
    Top = 11
  end
  object dsLogradouros: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Logradouros
    Left = 541
    Top = 11
  end
  object dsBairros: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Bairros
    Left = 508
    Top = 11
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*-nfe.XML'
    Filter = 
      'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|To' +
      'dos os Arquivos (*.*)|*.*'
    Title = 'Selecione a NFe'
    Left = 736
    Top = 176
  end
  object dsForma: TDataSource
    Left = 734
    Top = 113
  end
  object DataSource1: TDataSource
    DataSet = DmServicos.Ordem
    Left = 682
    Top = 420
  end
  object ImageList1: TImageList
    DrawingStyle = dsSelected
    Left = 756
    Top = 8
    Bitmap = {
      494C0101C100C200040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001003000001002000000000000010
      0300000000000000000000000000000000000000000000000000000000000000
      0000F4F4F400F9F9F90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F6F6F6007371
      6F008B867F0065DD840076E1920059C173005FC4780059C173004FB769007CBD
      8B00AEDFB9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EBEBEB00AFAFAF00A29D
      9800958F89004FDA740068D4840063B4790068B17B0073C2880074CD8B0042B1
      5E003FB35B000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4E4E40084848300CECBC900B9B4
      B000948E89004AE974001B803700EAB13E00E7BB3700C7B63600C0B435007DA0
      4000628D3D00FEF6E900FEFDFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3D3D300D6D5D400DBD9D600B4B0
      AC0099928B0044B76300466D4E00F6B43D00FAC92E00FBDE1B00FDE71400FDEE
      0C00FDE81500FAD43E00F9D25C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700DFDDDB00D1CECB00A9A4
      9E00918A8300CBC1BC009B948D00F8C43200F9C43200B8A15700EEE6B700DBD4
      B500ACA49600F9CB2B00F8BD4400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DCDAD700CCC8C5009E99
      92008F878000C2BAB3008D867E00FDDE1E00FAD81D00F8D52200FAD81C00FAE0
      2C00F2DE4400F9CC2800F9CD3600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4D2CF00C1BDBA009891
      8B00928B84008E857D0098908700A9A38E00C7C39400D3D08600D6D39200E2DF
      8700ECE97F00FBF86C00FEFA7200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0CDCA00BEBAB5009892
      8C00928B8400948B82007B746D009D999400B9B3AE00BDB7B100B6B1AC00E0DC
      D800E3DFDA00F0EEEC00FEFEFE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D1CECB00BFBBB7009B95
      8F0098918B000AB3E90013A2D1002B9BB800349DB6005F90A10068859000818D
      8E00A6A9A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D2CFCC00C0BCB8009C96
      90009B948E0003DBFF0002E2FF0001EDFF0001EEFF0002E3FF0003D8FF000EC0
      F30023BBEF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D3D1CE00C2BEBA009D98
      92009A958E0006BEFF0005C6FE0072A0AB00B1E2EA00C2E1E400BEC1C40004C4
      FE000EBDFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D5D2CF00C3BFBB009F99
      93009C958F0000D0FF0000CDFE0000D4FE0001D7FE0002D8FE0002D4FE0003CE
      FE000CCFFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D3D100C4C0BD009F99
      9300BCB6B1006CDBEF006DDFEE0068E5F10068EAF10064F0F40055F1F70052F2
      FA005AF4FE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D6D4D200BDB9B500DAD5
      D100E3DFDC00D1CEC900CFCBC600C4C0BD00BCB7B500AFAAA800ABA9A500D4D2
      D000EDECEB000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F6F6F500F6F5F400F3F1
      F000F0EFED00ECEAE800EBE8E600E3E0DD00E9E7E50000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C7C3BF00CDC8C500D5D0
      CD00D9D5D000DDD9D500DFDAD600E0DBD700DFDBD600DEDBD600DEDAD500DFDA
      D600E1DEDB00EEECEC00FDFDFD00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00F3F3F300F2F2F200F8F9
      F800F4F8F500F2F7F400F7FAF800FCFDFD0000000000FEFEFE00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000F4F4F400F9F9F90000000000000000000000000000000000000000000000
      00000000000000000000000000000000000096918C00A5A09C00B2ADA900BCB7
      B200C1BDB800CAC7C200D6D1CD00DBD7D300DFDAD500E7E3DE00ECE8E300EFEB
      E700E9E5E300FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000F9F9F900D3D3D3006E6C6A003A62410040B7
      5E004BC267005DC2730077C38A0092CCA100BADDC300C9E7D000D8EDDE00DDEF
      E200F2F9F400F9FCFA00FBFDFB0000000000FEFEFE0000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000F6F6F6007371
      6F008B867F0065DD840076E1920059C173005FC4780059C173004FB769007CBD
      8B00AEDFB900000000000000000000000000706A640077716C00837E7700918C
      87009F9A9500ADA8A200B4AFAA00BAB4AF00BFB9B300C3BCB500C8C0BA00D9D7
      D400F6F6F500FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FDFDFD00EFEFEF00C0C0C0006D6C6B008F8B86003278400053D1
      750069DC870075DF910083E69E0090EBA80099EDAF00A0EEB500A5EEB70099E3
      AD0090D9A4009DCDAA00ACD9B900A5DDB500B9E2C400D7EDDD00E0F0E400FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000EBEBEB00AFAFAF00A29D
      9800958F89004FDA740068D4840063B4790068B17B0073C2880074CD8B0042B1
      5E003FB35B0000000000000000000000000023A4C80029A4C400329DBC004292
      AF005A8B9C0068838C005C6B6F007479770080827F007D7A7600C6C0BA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FEFE
      FE00F8F8F800E2E2E200ADADAD00666564009D989400ABA6A1002F773E003DC8
      620064DB82006FDE8C007CE397008BE9A30096EEAD00A0F2B600AAF5BD00ACF6
      C000A6F3BB009AEEB1008DE6A5007EE098006DD68A0077CE8D0083CE9600F9FB
      F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00E4E4E40084848300CECBC900B9B4
      B000948E89004AE974001B803700EAB13E00E7BB3700C7B63600C0B435007DA0
      4000628D3D00FEF6E900FEFDFA000000000001EEFF0001EFFF0001EFFF0002E8
      FF0002E1FF0005D7FC0006CBF9000CC2F30016BAEB0021AFE2004FBDE800A7D0
      E200FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FEFEFE00FBFBFB00F0F0
      F000D6D6D6009F9F9F0063626200A39F9B00BCB7B300A8A39D0030723F0036CB
      5E004DD771006EDF8E0054B36C0057B16F0059A66D0059A06B005CA36E0062AD
      740069BA7D006EC6860070CE89006ACF860065D283005DD37F0057D07400FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D3D3D300D6D5D400DBD9D600B4B0
      AC0099928B0044B76300466D4E00F6B43D00FAC92E00FBDE1B00FDE71400FDEE
      0C00FDE81500FAD43E00F9D25C000000000002E7FF0002EAFF0002EAFF0002E9
      FF0002E6FF0003E0FF0003DBFF0003D5FE0004CEFE0002C7FE0010C2FE0040BD
      F300FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FAFAFA00E9E9E900CACA
      CA009999990066666600A8A6A400CAC7C400B8B4AF00A8A29E0030713E0040D5
      69003ED8670043C2650036904E003F8E54005C7B620075927A0078907B00758D
      7900718A740069876D0062836800448955003C9C550030984B002F954900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700DFDDDB00D1CECB00A9A4
      9E00918A8300CBC1BC009B948D00F8C43200F9C43200B8A15700EEE6B700DBD4
      B500ACA49600F9CB2B00F8BD4400000000001E8DC1002C8EC0002994C6002497
      C9001D9ACD001AA1D50017A4DA000BBFF20004C9FE0002C1FE0012BAFE0040BA
      F400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000E9E9E900CBCBCB009B9B
      9B006F6F6F00AEACAA00D6D3D100C6C3BF00B8B3AE00A7A29D00306C3F0047DF
      720048E274002A9F49001C76350058873B00C7A44B00BDA546009E9D46008C99
      4C007C955300798E520081905C00588A4E00328940001F80390024753A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000DCDAD700CCC8C5009E99
      92008F878000C2BAB3008D867E00FDDE1E00FAD81D00F8D52200FAD81C00FAE0
      2C00F2DE4400F9CC2800F9CD36000000000095AFB600D0E6E600DFEBEA00E9ED
      E800EAEAE400E4E0DC00DCD9D60066D0E80005C6FE0003BEFE0015BDFE0041C4
      F400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000D4D4D400ACACAC008181
      8100B3B1AF00DEDDDA00D1CECB00C3C0BC00B5B0AB00A49E9A002E673B0056EE
      83004CDD750014682C0023683600B29C2F00F9BD3F00FAC92F00FACF2A00FBD5
      2400F8D61F00F8D91F00FADF2100E9D62900D0C93100BDB83600A7A43900E9CF
      8600EEDAB100F2E5CE00F7EFE500FFFFFF0000000000D4D2CF00C1BDBA009891
      8B00928B84008E857D0098908700A9A38E00C7C39400D3D08600D6D39200E2DF
      8700ECE97F00FBF86C00FEFA7200000000001BCEF3001ED9FB0022DBFD0033E1
      FD003EE1FD006DCFE7009ACFE00040D6FA0005C9FE0002C7FE0015CBFE003FCE
      F500FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C7C7C700A5A5A500B9B8
      B700E5E3E200D9D7D400CECBC700C1BDB900B2ADA8009F9A940047694B004FC5
      6F003EA45900315B3A0083877A00B7923800F9B84300FAC53200FACC2B00FBD4
      2500FCDC1E00FDE41700FDEA1100FDEF0B00FEF10900FEF00B00FDEA1300FCE2
      1B00FBD72300F9CE2E00F7C83E00EBCB930000000000D0CDCA00BEBAB5009892
      8C00928B8400948B82007B746D009D999400B9B3AE00BDB7B100B6B1AC00E0DC
      D800E3DFDA00F0EEEC00FEFEFE000000000000D7FE0001D7FE0002D8FE0002D8
      FE0003D8FE0003D7FE0002D5FE0002D5FE0002D5FE0000D5FE0013D8FE0039D9
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000D1D1D100B8B7B700E0DE
      DD00E1E0DE00D6D4D100CBC8C400BEBAB600B0ABA60097908A00BCB9B200657B
      6400557A5A00ACA9A2009A918C00B2893800F8B14B00F8BB3A00F9C63000FACF
      2900EFCA2100DCBC1900E2C51700EBD21500F3DC1400F8E21500FCE31700FCDE
      1B00FBD92000FAD32200F9CF3200EDBF720000000000D1CECB00BFBBB7009B95
      8F0098918B000AB3E90013A2D1002B9BB800349DB6005F90A10068859000818D
      8E00A6A9A50000000000000000000000000023E8FE0021E8FE001EE7FE001BE6
      FE0017E6FE0010E6FE000AE5FE0005E4FE0001E4FE0000E4FE000FE6FE0037E6
      F900FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000E8E8E800D8D7D700E0DE
      DC00DEDCDA00D4D1CD00C7C4C000B9B5B100ACA7A2008A817A00C1BAB500A6A0
      9900C6BEBA00B0AAA4008F888100AC853100FABE4000F8BA3B00F9C43300F9CD
      2C00B5922300B6AFA700C1B9A900BBB19100B6A97D00AF9F6700A6924C00D4BC
      4C00FAD42400F9CA2A00F8BD4800EDBC7B0000000000D2CFCC00C0BCB8009C96
      90009B948E0003DBFF0002E2FF0001EDFF0001EEFF0002E3FF0003D8FF000EC0
      F30023BBEF000000000000000000000000004CEFFB004EF3FC0051F5FC0055F6
      FC0056F7FD0050F6FE004CF6FE0055F6FE005DF6FE005BF5FF0079F7FF005AEF
      F600FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FAFAFA00EDEDED00E0DE
      DC00DBD9D600CFCDCA00C3BFBB00B6B1AD00A6A09A0080787100C1BBB600BEB7
      B100C4BEB600ACA59E0087817A00A8822C00FECF3200F9C92E00F9C92E00F9CD
      2B00CEB45400EFDC7F00F8E88A00EDE19200E1D79A00DCD2A700D1CCC700DAD7
      D400F9CC2A00F8C13200F8BD4700EEC4700000000000D3D1CE00C2BEBA009D98
      92009A958E0006BEFF0005C6FE0072A0AB00B1E2EA00C2E1E400BEC1C40004C4
      FE000EBDFE00000000000000000000000000A1CCD1009BCDD00098CFD10094D2
      D1008DD5D5007CDADB0070DDE0006BDDE20065DDE4005EDEE8005BE5EF0087E2
      E400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000F3F3F300DFDD
      DB00D8D5D200CCC9C600BFBBB700B2AEA9009B958F007E766F00C2BDB700BCB4
      AD00C2BAB300AFA79F0086807900A6822200FFE22000FAD81E00FAD62000FAD6
      2100F9D62500FAD52200FBD72000FAD82000FBD92000FAD72300D3BA5700F0CE
      4600F9CD2A00F9CA2A00F9CD3B00F1CF650000000000D5D2CF00C3BFBB009F99
      93009C958F0000D0FF0000CDFE0000D4FE0001D7FE0002D8FE0002D4FE0003CE
      FE000CCFFE00000000000000000000000000DAD6D200CFCBC900C5C1BF00C0BD
      BA00BCB8B500B6B3B000B3B0AD00B7B4B200D1CFCE00E4E3E300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000F2F2F200DDDC
      DA00D5D2CE00C8C5C200BBB7B300AAA6A1009690890080787100C4BFB900B6AD
      A500B8B0A900A39B93008E877F00B1972B00FFF22600FCEA2700FCE72300FCE6
      1D00FCE31900FCE31A00FCE21A00FBE11B00FBDF1A00FBDF1800FBDD1700FBDB
      1700FBDB1700FBD91700FBDC2B00F2DA590000000000D6D3D100C4C0BD009F99
      9300BCB6B1006CDBEF006DDFEE0068E5F10068EAF10064F0F40055F1F70052F2
      FA005AF4FE00000000000000000000000000DEDAD700D9D4D000C7C3BF00C2C0
      BC00C7C4C200D2D0CF00EFEFEE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000F2F2F200DCD9
      D700D2CECC00C5C1BE00B6B1AD00A49F99009690890081797200C5BFBA00ADA5
      9C00AEA69D009E968D008E867F00A69B7100E0DB6300EAE76200F2EE5B00F8F4
      5F00FDF75B00FEF75800FEF64D00FDF54100FDF33800FDF23900FDF03600FDEF
      3800FDEE3700FDED2600FDED3600F5E6540000000000D6D4D200BDB9B500DAD5
      D100E3DFDC00D1CEC900CFCBC600C4C0BD00BCB7B500AFAAA800ABA9A500D4D2
      D000EDECEB00000000000000000000000000D3D0CC00D1CDCB00E2E1DF00F0EF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000F2F2F100DAD7
      D500CECBC700C1BDB900B1ACA800A39D980097918A00827B7300C6C1BC00A69E
      9500AAA299009A928A00B0AAA3007E7873009F9A9500BDB9AD00BEB99D00C2BE
      9600C6C29400C9C59300CCC8AA00D2CFAB00D9D69900E1DF9600ECEA8A00F4F2
      7800FAF97C00FEFB7300FDFB8400EFEC740000000000F6F6F500F6F5F400F3F1
      F000F0EFED00ECEAE800EBE8E600E3E0DD00E9E7E50000000000000000000000
      0000000000000000000000000000000000000000000015D2FE0011CFFE0023E3
      FE003CF4FC0017BDEB000DB9F1000DD2FD000DD3FE0007C7FE0005C0FE0005BF
      FE001CD3FE006FE1F600FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0F0EF00D6D5
      D300CBC7C400BDB9B500B0ACA700A49F990098918B00837B7400C5BFBA00ACA1
      9A00A09890007F776F0095908A00938F8A001AD4FE001AD5FE001AD5FE000000
      000028E4FE0044F4FC0017BDEC000CBDF3000DD5FE000CD2FE0005C3FE0005C2
      FE001CD3FE0072E3F800FFFFFF00FFFFFF00000000000000000000000000FEFE
      FE00FEFEFE00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FDFDFD00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EEEEED00D6D4
      D100CAC6C300BEBAB600B1ADA800A5A09A0099928C00847B7400C6C0BC008C84
      7A005E554D00514A4100706A6300A19D98001ED6FE001ED8FE001ED9FE001ED8
      FE0019D3FE002EE7FE0049F4FC0015C0ED000DC8F6000EDAFE0008CDFE0005C6
      FE001AD5FE0078E6F800FFFFFF00FFFFFF00000000000000000000000000FCFC
      FD00F1F5F500DFEBEB00DFE9E900E8EAEA00ECECEC00F1F1F100F4F4F400F6F6
      F600FAFAFA00FCFCFC00FCFCFC00FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ECEBEB00D7D5
      D300CAC7C400BEBAB600B2ADA800A5A09A009A938C00857D7600CAC5BF00655C
      550041383000534B430056504700605A520024D4FE0024DAFE0024DDFE0024DC
      FE0023DDFE001ED9FE0038ECFF004AF3FC0012C3F0000ED1F9000CD7FE0004C9
      FE0019D6FE007AE6F900FFFFFF00FFFFFF000000000000000000FDFDFD00D6DE
      E70086AED300729AAC007F9DA4009EB0B800BCC2C400CCCCCC00D3D3D300DBDB
      DB00E3E3E300E7E7E700EBEBEB00EFEFEF00F3F3F300F7F7F700FAFAFA00FCFC
      FC00FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAEAE900D8D7
      D400CBC8C500BFBBB700B3AEA900A6A19B009A948D00888079007DADD00009BA
      F50005C5F9000BB7E80012AEDB001CA8CF002ED7FE002DD8FE002CDDFE002AE1
      FE002AE1FE002AE1FE0024DEFE0042F1FF004BF2FB0010C9F3000ED9FB0006D1
      FE0017D7FE007CE8FA00FFFFFF00FFFFFF000000000000000000F3F3F300A6C2
      E20012CFEC0007D5F8000ABDF1000FCAF0001BD0E7002EC5D90044C2CF0059C5
      CD0083CCD000A3CDCF00BFCCCC00CBD0D000D5D5D500DDDDDD00E4E4E400E8E8
      E800EEEEEE00F4F4F400F6F6F600F9F9F900FDFDFD00FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000E9E8E800D9D7
      D400CCC9C500C0BCB800B3AFAA00A7A29C009A948E008B837C003B97DA0004CC
      FF0003DBFF0003E0FF0001E8FF0001EBFF0039E0FE0039DFFE0039DFFE0036E3
      FE0031E8FE0031E8FE0031E8FE002EE6FE004EF7FF0047F0FC000FD1F6000AD7
      FD0014D9FE007CE8FA00FFFFFF00FFFFFF0000000000FCFCFC00EBEBEB007FB1
      E40019B7E4000FDEF90009C5F5000BA8EC000EB9F10011CCF50013D9F90015E4
      FA0019EAFA001BEAF7001EE2EF0025E2EB0037DCE30055D6DB0079D3D60097D1
      D400B3D1D200CDD3D300DADADA00E3E3E300E9E9E900EEEEEE00F2F2F200F8F8
      F800FBFBFB00FEFEFE00FEFEFE00000000000000000000000000E9E8E700DAD8
      D500CDCAC600C0BDB900B4B0AB00A8A39D009B958F008C857E003D90D10006B8
      FF0004CFFE0003D9FE0003DEFF0002E3FF0044E8FE0044E7FE0043E7FE0043E7
      FE0040EAFE0039EEFE0039EEFE0036EDFE0036EDFE005AFAFF0044F1FB000DD5
      F80013DAFD007CE9FB00FFFFFF00FFFFFF0000000000FAFAFA00EAEAEA0078B0
      E4001FBDE8001CCBF50009D8F9000BCDF7000DB6F1000FC0F30012C9F50014D2
      F80017DAF90018E2FA001CEBFC001EF1FD001FF6FE001FF8FE001FF7FE001DF3
      FB001DEAF50025DFEB0032D4E00049CED70068D1D7008CD4D700A5D3D400BFD6
      D700D6DEDE00ECECEC00F8F8F800000000000000000000000000E8E7E700DAD8
      D600CDCBC700C1BDB900B5B0AC00A8A39D009C9690008C857E003A90D20006B1
      FF0005BBFE0004CDFE0003D6FF0003DCFF0051EEFF0050EEFF0051EEFF0050EE
      FF0050EEFF004BEFFF003EF2FF003EF3FF003CF2FF003EF3FF0064FCFF003EF2
      FC0010D7FA0073EAFB00FFFFFF00FFFFFF0000000000FBFBFB00F4F4F40072B0
      E30023C6EF001ECBF50009A5F0000BE7FD000CD2F90010C2F60012CAF80013D2
      F90016DAFA0018E0FB001AE5FC001BE9FD001DECFD001DEEFD001DEFFE001DED
      FE001BECFE001AEAFE0019E9FE0017E7FE0014E5FC0013DDF70016D5ED0019CF
      E50026DAE9006EDDDF00F4F4F400000000000000000000000000E7E6E600DBD9
      D700CFCCC800C2BEBA00B6B1AD00A9A49E009D9791008E8680003999D90006BA
      FF0006BAFE0006C3FE0004CDFE0004D5FE0063F4FF005EF3FF005EF2FF005CF2
      FF005BF2FF005AF1FF0051F4FF0044F6FF0045F7FF0042F6FF0048F8FF0065FD
      FF003CEFFD0064EBFD00FFFFFF00FFFFFF0000000000FEFEFE00FCFCFC006CB1
      E50028CCF20020C7F500089DEF000BBBF8000EEDFE000ED7FA0011CCFA0012D3
      FB0015D8FC0016DDFC0018E3FD0019E7FE001AEAFE001AEAFE001AEAFF001AE9
      FF0019E7FF0018E4FF0016E0FF0015DDFF0013D7FE0011D3FE0010CEFE000ECB
      FE000DDEFE002CE3F200FEFEFE00000000000000000000000000E7E6E600DBD9
      D700CECCC800C2BEBB00B6B1AD00A9A49F009E9891008E87800034A4DF0005C9
      FF0005C7FE0005C8FE0004CBFE0004D0FE00DAFAFF00D6FAFF00DBFAFF00D3FA
      FF00D2FBFF00C4F9FF00ADFAFF0096FBFF0057FAFF0050FAFF0047F9FF004CFA
      FF0069FDFF0092F6FB00FFFFFF00FFFFFF0000000000FEFEFE00FEFEFE0063AF
      E5002ED1F60021C3F4000799EF000AB4F8000CCAFD000FF1FE000FDBFC0011D2
      FD0014D8FD0015DCFE0016E1FF0018E4FF0019E6FF001AE7FF0019E7FF0018E4
      FF0018E3FF0016DFFF0015DCFF0014D8FE0012D5FE0010D0FE000ECEFE000AE5
      FE0013E7FE0048D9F00000000000000000000000000000000000E7E6E500DCDA
      D800CFCDC900C3C0BC00B7B2AE00AAA5A000A09A9400918A830030AEE60001D7
      FE0000D5FE0000D5FE0000D5FE0000D5FE00BFDAF300C3DBF200CCDEF100CAE5
      F400DBEAF600DAEEFB00DDF0FC00E0F2FC00DAF4FD00E0F9FF00DDFAFF00D6FD
      FF00CEFCFF00B0F7FB00FFFFFF00FFFFFF000000000000000000000000005DB1
      E50032D4F60021C0F3000696EF0009B0F7000CC0FD000DCEFE0010F2FE000FDF
      FE0012D6FE0013DBFE0015DEFE0016DFFF0018E2FF0018E3FF0018E4FF0018E3
      FF0015DEFF0014DBFE0013D8FE0012D5FE0010D1FE000ED4FE000BEDFE0009DA
      FE001ED2FE0054DBF00000000000000000000000000000000000E6E5E500DCDA
      D800D0CDC900C4C0BC00B7B3AF00ABA6A0009F999200877F780034B9EC0020EB
      FE002AEBFE0028EAFE0028E9FE0026E9FE00FBFCFD00F6F8FC00EAF1FA00E7EF
      F800DAE9F500CFE3F200CEE5F300CEE0EE00C8DCE900CADEEB00CCE1ED00D3E6
      F100D5E7F100DFE9F000FFFFFF00FFFFFF0000000000000000000000000057AE
      E40038D7F70024BFF4000590EE0008ADF8000ABEFD000DC4FE000DD2FE000FF3
      FE0010DEFE0013D6FE0014D9FE0015DBFE0015DCFD0015DDFD0015DEFE0016DF
      FE0016DDFE0014D8FE0011D3FE0010D0FE000DDCFE000CF0FE000BD5FE000ABF
      FE0020D1FE005CDAF10000000000000000000000000000000000E6E5E400DEDB
      D900D1CECB00C4C1BD00B8B3AE00A7A29C009B958F00A49D96009CC6D7004DD1
      F10046DBF5004AE0F6004DE5F8004DECFA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000050A7
      E2003ED9F80023BCF300048BEE0006A8F70009BBFD000BC2FE000DC7FE000ED5
      FE000EF5FE0010DEFE0012D5FD0013CFFA0013C5F30013C3F10013CCF60014D8
      FC0014D9FE0014D9FE0011D2FE000DE2FE000DF0FE000CD0FE000BC3FE0009BE
      FE001FD0FE005FDCF20000000000000000000000000000000000E5E5E400DEDC
      DB00D1CFCC00C4C0BD00B7B3AE00BBB6B100CDC8C500E3DFDB00E3DFDD00CBD9
      DC00C3D8DB00BED6D800B8D1D400ADCED200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000004FA4
      E10045DCF90025BDF400048DEE0006A7F80008B5FD000ABDFE000CC3FE000DC8
      FE000DD7FE000FEFFC000FC8F4000FB0E9001AC5ED0021DAF30015BCEB0011C1
      F20013D4FC0012D8FE000FEEFE000DEBFE000CCCFE000BC6FE0009C2FE0008BD
      FE001FD0FE0064DDF30000000000000000000000000000000000E5E4E300DFDD
      DB00D2D0CD00CDCAC600D5D1CC00E0DBD700E2DDDA00DFDAD700DFDAD700DFDB
      D700DFDCD800E0DCD900DFDBD800DEDAD600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000499E
      E0004BDDF90024BDF4000594F00007A9F80007B6FE0007B7FE0009BCFE000DC1
      FD000DC0FA000CB9EE000DBCE6001DCEEF0024E8FD0023E8FE0026E4F90013B5
      E8000FC1F0000FEEFC000FE9FE000FD2FE000BC7FE0009C3FE0007C1FE0006BC
      FE001ED0FE0067DFF40000000000000000000000000000000000E4E3E300DCD9
      D500D7D4CF00DBD6D200DCD8D300DBD6D200DAD6D200DBD6D200DBD6D200DBD7
      D300DBD7D300DBD7D300DCD8D400DDD8D400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000479B
      DF004FDFF90024BDF3000497F00006ACF90007B6FE0007B9FE0008B8FD0008AF
      F600099EE90013ABE80031E6F80032F2FF0019DAFE0013D2FE0023E7FE0035F2
      FB0015C9EB000EC2EE000FD2FD000FD5FE000CCBFE0006C0FE0005BEFE0005BC
      FE001DD0FE006CDFF50000000000000000000000000000000000F7F7F700EEED
      EC00ECEAE900EBEAE900E9E7E600E6E5E300E4E2E100E0DEDC00DDDBD900DBD9
      D700DAD8D600D9D5D300D7D4D200D7D3D1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004396
      DF0056E2F90022BEF300049BF10006B1F90006BBFE0006B8FD0005A8F300058C
      E3001BB2EB0044F1FC0029E4FE0013CFFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEF0F200BDC9CD00B1C0
      C400CBD0D200DFDFDF00E9E9E900F2F2F200F7F7F700FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000004294
      E0005CE5FA0021C0F30004A1F10005B6FA0005BCFC0005A8F300048BE3002BC7
      F00055F4FE0025D8FE0013C8FE0018D2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A2C8EC0013D6F0000DBF
      F20016D2F3003CD6E50062D7DF00A6D5D700C9DADA00E3E3E300EBEBEB00F6F6
      F600FCFCFC00000000000000000000000000000000000000000000000000418D
      DF0060E7FA001EC0F30004A5F20005B6F70004ACF200079BE7003EDBF6005AF4
      FF0021D0FE0018C6FE001ECDFE001ED1FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007FC4F20021BDEE000CDF
      FB000DC8F70012CDF80014D7FA0018E6FD001AECFD001AF0FE0018EDFE0013E6
      FD0013DFFA0021D4EB0035E0EE00000000000000000000000000000000003D89
      E00062E9FA001DC1F20003AAF10004A9EF000BA9EC0056E9FA005AF1FF0023D0
      FE0020CDFE0026D3FE0026D2FE0024D2FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000077C7F40022C1F3000AB3
      F6000EE9FD0011CDFB0013D5FC0016E2FE0017E5FE0017E5FF0016E2FF0013D8
      FF0011D3FE000DCCFE000EE0FE00000000000000000000000000000000003C88
      E00067EBFA0019C0F200039BE8000FB5EE0070F3FC005CEFFF002BD5FE002DD6
      FE0030D9FE002FD9FE002ED8FE002ED7FE00AE751200AE751200AE751200AE75
      1200AE751200AE751200AE751200AE751200AE751200AE751200AE751200AE75
      1200AE751200AE751200AE751200AE751200AE751200AE751200AE751200AE75
      1200AD741200AD741200AB721200A46E1100B58F4D0000000000000000000000
      000000000000000000000000000000000000000000006CCCF7002AC3F50008AA
      F6000BBCFD000FEEFE0010D6FE0013D8FE0013DAFD0014DCFE0013D8FE000FCD
      FE000DD9FE000AC4FE0028D5FE00000000000000000000000000000000003C8B
      E30068EDFB0013B3EB0019BAEE0083F8FD005FF0FF0035DEFE0039E0FE003BE1
      FE003AE1FE003AE0FE003AE0FE003AE0FE00BE831A00BE831A00BE831A00BE83
      1A00BE831A00BE831A00BE831A00BE831A00BE831A00BE831A00BE831A00BE83
      1A00BE831A00BE831A00BE831A00BE831A00BE831A00BE831A00BE831A00BE83
      1A00BE831A00BD821A00BB811A00B37C1900A6731700EDE4D400000000000000
      000000000000000000000000000000000000000000006AC8F6002FC1F50006A5
      F60009B8FD000DCCFE000FEFFE0011C7F70010B8EE0011CDFA0012D5FE000BE2
      FE000DE4FE0009BDFE002BD3FE0000000000000000000000000000000000438A
      E10059EDFA0031D4F30092FAFE0064F2FF0040E6FE0046E9FE0047E9FE0046E9
      FE0046E9FE0046E8FE0045E8FE0045E8FE00C38A2200C38A2200C38A2200C792
      3100D1A65700C38A2200C38A2200C38A2200C38A2200C38A2200C38A2200CFA2
      5000C9963900C38A2200C38A2200C38A2200C38A2200C38A2200C7923100D1A6
      5700C38A2200C38A2200C2892200BB852100AD7B1E00E8DDC700000000000000
      000000000000000000000000000000000000000000006AC1F40038C2F40005AA
      F70007B3FE0009B0F9000A9EEA0027EAFB001ADAFE0025E4F80010C0E8000ED1
      FE000AC6FE0006BDFE002FD4FE00000000000000000000000000000000005691
      E100AFF8FD00A6FCFF0067F4FF004CEDFE0050EEFF004FEEFF004FEFFF004FEE
      FF0051EEFF0051EEFF0051EEFF0050EEFF00C68F2900C68F2900C68F2900CEA0
      4B00E9D6B200CE9E4700C68F2900C68F2900C68F2900C68F2900C58F2900E3CA
      9B00DCBB7F00C68F2900C68F2900C68F2900C68F2900C68F2900CEA04B00E9D6
      B200CE9E4700C68F2900C68F2900C18B2800B2812500EADEC800000000000000
      000000000000000000000000000000000000000000006CBEF3003BC3F40006AF
      F80006B9FE00068EE40025C2EE0012CBFE0011CBFE0019D6FE002CE8F9000CC8
      F9000BCFFE0005C1FE0032D6FE000000000000000000000000000000000080AD
      D800C6F7FD00D4FCFF00D2FAFF00D0FAFF00CFFBFF00C0FAFF00AAF9FF0095F8
      FF0086F8FF0078F6FF006EF5FF0069F4FF00C9953000C9953000C3912F00D0AF
      6F00F1E8D800C2923500C8943000C9953000C9953000C7933000BF8E2E00F1E8
      D800D2B37600C4912F00C9953000C9953000C9953000C3912F00D0AF6F00F1E8
      D800C2923500C8943000C9953000C5912F00B6862B00EADFCA00000000000000
      0000000000000000000000000000000000000000000072B9F10040C9F50004AF
      F10010ABEC002AD2FE0019C2FE001FC7FE001ECCFE001ED5FE001BD1FE0035E8
      F9000FC1F10006CBFE0034DAFE0000000000000000000000000000000000E6F3
      FC00AEE3F700A6E1F60099D8F2009FDCF200ADE2F500B9E8F800BFECF900C5EE
      F900CCF3FB00D0F5FD00D7F7FE00DBFAFE00CD9B3800CC9A3800C1923400DAC4
      980000000000B98C3200C9983600CD9B3800CD9A3800C9973600B98C32000000
      0000DAC49800C1923400CD9B3800CD9B3800CC9A3800C1923400DAC498000000
      0000B98C3200C9983600CD9B3800C9983700B98C3200EBE0CC00000000000000
      0000000000000000000000000000000000000000000077BAF00042CCF40016B8
      EF0052EEFC0024CAFE0028CEFE0028CDFE0027CDFE0024D9FE0024DCFE002CE4
      FF0037E9FA0009D4FE0033DBFE00000000000000000000000000000000000000
      000000000000FDFDFE00F5FAFD00EDF5FC00E0F1FC00D6EBFA00D3E7F700CCE4
      F700C8E1F600C3DFF600BBD7F100BAD8F300D0A03F00CF9F3F00C1953A00DAC5
      9B0000000000B98F3800CA9C3D00D0A03F00D0A03F00CA9B3D00B98E38000000
      0000DAC59B00C1953A00CF9F3F00D0A03F00CF9F3F00C1953A00DAC59B000000
      0000B98F3800CA9C3D00D0A03F00CC9D3E00BC913900ECE2CD00000000000000
      00000000000000000000000000000000000000000000A1D2EF0064E4F8003DE5
      FF0039E3FE003BE4FE003BE4FE003BE4FF003BE4FF003BE4FF0039E4FF0030ED
      FF002EEBFE0035EDFB002CDBFB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D4A64600D2A54600C3994100DAC7
      9E0000000000BB923E00CDA14400D3A64600D3A64600CDA14400BB923E000000
      0000DBC79E00C4994100D2A54600D4A64600D2A54600C3994100DAC79E000000
      0000BB923E00CDA14400D3A64600CFA34500BF963F00EDE3CF00000000000000
      00000000000000000000000000000000000000000000CAE7F70093EEFC0085F1
      FE0086F4FE007AF5FF0070F4FF0062F1FF005AEFFF0048EDFF0045ECFF0038F2
      FF0034F3FF0041F7FE0045EDFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D7AB4E00D6AB4D00C79E4800DCC9
      A10000000000BF984400D1A64B00D7AB4D00D7AB4D00D0A64B00BE9744000000
      0000DCC9A100C89F4800D6AB4D00D7AB4E00D6AB4D00C79E4800DCC9A1000000
      0000BF984400D1A64B00D7AB4D00D3A84C00C29B4600EDE4D000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FDFDFE00FCFCFE00F6FAFD00F0F9FC00E3F7FB00E1F7FB00D6F8
      FC00D0F8FC00C1F7FC00C8F9FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAB15500D9B15500CAA44F00DECC
      A40000000000C29E4B00D5AD5300DAB15500DAB15500D4AC5200C19D4B000000
      0000DECCA500CBA54F00D9B15500DAB15500D9B15500CAA44F00DECCA4000000
      0000C29E4B00D5AD5300DAB15500D6AE5300C5A04D00EEE5D200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEB75C00DDB65C00D0AC5700E1D0
      A80000000000C8A45300DAB35A00DEB75C00DEB75C00D9B35A00C7A453000000
      0000E1D0A900D1AC5700DEB75C00DEB75C00DDB65C00D0AC5700E1D0A8000000
      0000C8A45300DAB35A00DEB75C00D9B45A00C8A55300EFE7D300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFE8D500CBAA5900DCB86100E1BC6300DFBB6200D3B1
      5D0000000000E7D6AE00D9B66000E1BC63000000000000000000D9B66000E7D6
      AE00FFFFFF00D3B15D00DFBB62000000000000000000DFBB6200D3B15D00FFFF
      FF00E7D6AE00D9B66000000000000000000000000000D9B66000E7D6AE00FFFF
      FF00D3B15D00DFBB620000000000DDB96100CCAA5A00EFE8D500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0E9D600CEAF6000E0BE6900E5C26B00E4C26B00E1C0
      6900F6EED900E7CE8E00E3C16A00E5C26B00E5C26B00E5C26B00E3C16A00E7CE
      8E00F6EED900E1C06900E4C26B00E5C26B00E5C26B00E4C26B00E1C06900F6EE
      D900E7CE8E00E3C16A00E5C26B00E5C26B00E5C26B00E3C16A00E7CE8E00F6EE
      D900E1C06900E4C26B00E5C26B00E0BF6900CFAF6000F0E9D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1EAD800D1B46700E3C46F00E8C87200E8C87200E8C8
      7200EACF8400E8C87200E8C87200E8C87200E8C87200E8C87200E8C87200E8C8
      7200EACF8400E8C87200E8C87200E8C87200E8C87200E8C87200E8C87200EACF
      8400E8C87200E8C87200E8C87200E8C87200E8C87200E8C87200E8C87200EACF
      8400E8C87200E8C87200E8C87200E3C47000D2B56700F1EAD800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F1EBD900D4B96D00E6C97700EBCE7900EBCE7900EBCE
      7900EBCE7900EBCE7900EBCE7900EBCE7900EBCE7900EBCE7900EBCE7900EBCE
      7900EBCE7900EBCE7900EBCE7900EBCE7900EBCE7900EBCE7900EBCE7900EBCE
      7900EBCE7900EBCE7900EBCE7900EBCE7900EBCE7900EBCE7900EBCE7900EBCE
      7900EBCE7900EBCE7900EBCE7900E7CA7700D5BA6E00F2EBDA00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EBE2D300DDCBA800C9A95A00D7B56200DBB96400DBB96400DBB9
      6400DBB96400DBB96400DBB96400DBB96400DBB96400DBB96400DBB96400DBB9
      6400DBB96400DBB96400DBB96400DBB96400DBB96400DBB96400DBB96400DBB9
      6400DBB96400DBB96400DBB96400DBB96400DBB96400DBB96400DBB96400DBB9
      6400DBB96400DBB96400DBB96400D7B56200C9A95B00DDCBA900EBE2D300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D5C19D00A6761E00B27E2000B7812100B9832100BA842200BA842200BA84
      2200BA842200BA842200BA842200BA842200BA842200BA842200BA842200BA84
      2200BA842200BA842200BA842200BA842200BA842200BA842200BA842200BA84
      2200BA842200BA842200BA842200BA842200BA842200BA842200BA842200BA84
      2200BA842200BA842200B9842200B9832100B7812100B27E2000A6761E00D4C1
      9D00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C0A16B00A8752000A9711100AC731200AD74
      1200AE751200AE751200AE751200AE7512000000000000000000000000000000
      0000D6C19900B78C3500C6973900CC9C3B00CD9D3B00CD9D3B00CE9D3B00CE9D
      3B006C5221003A2D14006C522100CE9D3B00CE9D3B00CE9D3B00CE9D3B00CE9D
      3B00CE9D3B00CE9D3B00CE9D3B00CE9D3B00CE9D3B00CE9D3B00CE9D3B00CE9D
      3B00CE9D3B00CE9D3B00CE9D3B00CE9D3B00CE9D3B006C5221003A2D14006C52
      2100CE9D3B00CE9D3B00CD9D3B00CD9D3B00CC9C3B00C6973900B78C3500D6C1
      9900FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000E7DBC500A5711700B17A1800BA801A00BC821A00BD83
      1A00BE831A00BE831A00BE831A00BE831A000000000000000000000000000000
      0000DBCAA300C59F4C00D5AD5200DAB15400DAB15400DAB15400DAB15400DAB1
      54002A2929005B5A580035343400DAB15400DAB15400DAB15400DAB15400DAB1
      5400DAB15400DAB15400DAB15400DAB15400DAB15400DAB15400DAB15400DAB1
      5400DAB15400DAB15400DAB15400DAB15400DAB15400353434005B5A58002A29
      2900DAB15400DAB15400DAB15400DAB15400DAB15400D5AD5200C59F4C00DBCA
      A300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000E8DDC700AC7A1E00BB842000C2892200C38A2200C38A
      2200CFA25000C9963900C38A2200C38A22000000000000000000000000000000
      0000E0D2AD00CEAF6100DEBD6900E4C26C00E5C36C00E5C36D00E5C36D00E5C3
      6D0047443E00949392005D5B5900E5C36D00E5C36D00E5C36D00E5C36D00E5C3
      6D00E5C36D00E5C36D00E5C36D00E5C36D00E5C36D00E5C36D00E5C36D00E5C3
      6D00E5C36D00E5C36D00E5C36D00E5C36D00E5C36D005D5B5900949392004744
      3E00E5C36D00E5C36D00E5C36D00E5C36C00E4C26C00DEBD6900CEAF6100E0D2
      AD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000E9DEC800B1802500C08B2800C68F2900C68F2900C58F
      2900E3CA9B00DCBB7F00C68F2900C68F29000000000000000000000000000000
      0000E3D8B700D2BB7400E0C87C00E6CD7F00E8CF8000E9D08100E9D08100E9D0
      8100D4BE7A00A8A3940074737100B9A87600E9D08100E9D08100E9D08100E9D0
      8100E9D08100E9D08100E9D08100E9D08100E9D08100E9D08100E9D08100E9D0
      8100E9D08100E9D08100E9D08100E9D08100B9A8760074737100A8A39400D4BE
      7A00E9D08100E9D08100E9D08100E8CF8000E5CC7F00E0C87C00D2BB7400E3D8
      B700FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000EADFCA00B5862B00C4912F00C9953000C7933000BF8E
      2E00F1E8D800D2B37600C4912F00C99530000000000000000000000000000000
      0000F5F2E600DED4AB00E2D7A900E4D9AA00E6DAAA00E6DBAB00E6DBAB00E6DB
      AB00E6DBAB00CBC29C009C9B9A007E7C7700E6DBAB00E6DBAB00E6DBAB00E6DB
      AB00E6DBAB00E6DBAB00E6DBAB00E6DBAB00E6DBAB00E6DBAB00E6DBAB00E6DB
      AB00E6DBAB00E6DBAB00E6DBAB00E6DBAB007F7C77009C9B9A00CBC29C00E6DB
      AB00E6DBAB00E6DBAB00E6DBAB00E6DAAA00E4D9AA00E2D7A900DED4AB00F5F2
      E600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000EBE0CC00B88B3200C8973600CD9A3800C9973600B98C
      320000000000DAC49800C1923400CD9B38000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000BDBDBB007E7D7B00CBCAC900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CBCACA007F7D7C00BEBDBC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000ECE2CD00BC903900CC9D3D00D0A03F00CA9B3D00B98E
      380000000000DAC59B00C1953A00CF9F3F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E1E1E100A4A3A20092919000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF008A888700A4A3A200E1E1E100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000EDE3CF00BF963F00CFA24500D3A64600CDA14400BB92
      3E0000000000DBC79E00C4994100D2A546000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C2C1C10088878500DFDFDE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00DFDFDF0088878600C2C1C100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000EDE4D000C29A4600D3A74C00D7AB4D00D0A64B00BE97
      440000000000DCC9A100C89F4800D6AB4D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E4E4E300AFAEAE00A3A1A000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00A3A2A100ABAAAA00E4E4E300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000EEE5D200C5A04C00D6AD5300DAB15500D4AC5200C19D
      4B0000000000DECCA500CBA54F00D9B155000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CFCFCE008E8D8C00E1E1E000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00E1E1E00092919000CBCACA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000EFE6D300C8A55300D9B35A00DEB75C00D9B35A00C7A4
      530000000000E1D0A900D1AC5700DEB75C000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FBFBFB00FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AEADAC00AAA9A900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00AAA9A900B2B2B100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F5F500E6E6E600DFDFDF00E6E6E600F5F5
      F500000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00CFCFCF0098969600E4E4
      E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E4E4E40099979700CFCFCF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FBFBFB00D8D8D80092A0A3005A8595004B799400587790009199
      9F00DCDCDC00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00ECEBEB00B6B5B400B2B2
      B100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B2B2B100B7B6B500ECECEB00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F9F9F900BDC0C00044A5AE0001B1DC000996D3002897D4002790D600036C
      C10050729200D8D8D80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00CECECD00A2A1
      A000E7E7E600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7
      E600A3A2A000D5D4D300FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FEFE
      FE00BDC2C20028C2CC0000D4F60000B5DC0034D3ED0080EEFC00ABF1FC0067C8
      EE000B7FD800637E9E00F5F5F500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00E2E2E100BEBD
      BC00BAB9B800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BBBA
      B900BEBDBD00E2E2E200FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D4D4
      D40036B3C10000DDFD0000D8ED0000F5FE0002F5FF0000EBFF0009E6FF0022E9
      FF0010D4FD000E7CC800CCCDCF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00CDCD
      CC00ACACAA00E9E8E800FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9E8E800ADAC
      AB00CECDCD00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E70056A1
      B10000D5FD0000E2F40000FFFF0000FBFF0000F1FF0000EDFF0000E6FF0000DE
      FF0000DDFF0000C7FD00A3B2BD00FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00E5E5
      E500C5C5C400B6AEA200C7A76E00F9F6F100F9F6F100CCB07D00B6AFA300C6C5
      C400E5E5E500FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F4007DA0AA0000C0
      F90000D5F30000FAFF0000F9FF0000EBFF0000E6FF0000ECFF0000EDFF0000E1
      FF0000D8FF0000DCFF00A4C0C800FDFDFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00E6D9
      C000C9C4B900B4B4B300BD964900C29E5800C29E5800BD964900B5B4B300CAC4
      B900E6D9C000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00A4B0B5000CA6E80000C0
      F10000EFFE0000EFFF0000DDFF0000DBFF0000E2FF0000E7FF0000E4FF0000CA
      FF0000DAFF000AD3FF00D6DCDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00E4D5
      B200C9B17B00C7C6C500C3AF8200C6A24E00CAA85A00C3AF8200C7C6C500C9B1
      7B00E0CEA600FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C8C9002390CE0000ABF30000E1
      FB0000E7FF0000D2FF0000D1FF0000D7FF0000DCFF0000E4FF0000BCFF0000BE
      FF0000E4FF0060C4D90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00F0E8
      D200E1C88400D3C39500DBC38100D4BA7300E2CF9D00DBC38100D3C39500DCBF
      7000E9DDBD00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004888B8000095F40000CCF60000E2
      FF0000CCFF0000C8FF0000CEFF0000D3FF0000DBFF0000BAFF0000A6FF0000DF
      FF002FD1F000E9ECED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FBFA
      F600EAE1BF00E9DBA900E4D7A600EEE7CE00F3EEDC00E6DBAE00E7D8A100E4D9
      B100FBFAF600FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000007FEE0000B2EF0000DAFF0000C7
      FF0000BCFF0000C3FF0000C8FF0000D0FF0000B2FF0000A4FF0000DCFF0037D4
      EE00E5E9EA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000198E90009D2FF000FCAFF0019BD
      FF0023C4FF002CCBFF0036D2FF000AADFF002EADFF002AE4FF0043D2EC00EAED
      EE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000EC4FB0020CBFF002FBDFF003FC4
      FF0051CEFF0063D6FF002FAFFF003DB3FF0068F0FF0052D0EA00F3F4F5000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001FC7FF002EBAFF003DBBFF004EC6
      FF005CCDFF0023A7FF0040B7FF0068EFFF005EBCD100F6F6F600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002DB8FF003CB3FF004FC0FF0058C4
      FF001EA2FF0047BBFF0069ECFF0063BAD200FAFAFA0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E0E0E000E0E0E0000000
      0000DCDCDC00D3D3D300D6D6D600D2D2D200CBCBCB00E3E3E300EAE6E300BAD1
      E4000F72D700017EDE001CB6FF002CB7FF00000000004FB8FF0053BCFF00199E
      FF0050BEFF006AE8FF0070BDD400FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5E5E500DDDDDD00DDDDDD00E4E4
      E400DDDDDD00CBCBCB00D3D3D300CBCBCB00DCDCDC00E6E6E500F1ECE7005A9B
      DF000068D3001AA7FD0030B6FF002F95E7003FA4F7004FB4FF00169AFF0057C1
      FF0066E1FF0072B9D500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E3E3E300D0D0D000D0D0D000D4D4
      D400D1D1D100CBCBCB00D4D4D400B7B7B700ADADAD00B3B3B300BEB8B2005580
      AE000089F6002AACFF003EB6FF0071C1F6004C99E2001387EA005EC2FE005DD5
      FF0081BBD600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F2F2F200E2E2E200E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100E0E0E000E8E8E800FAFAFA0000000000000000000000
      000000000000000000000000000000000000D0D0D000B7B7B700B1B1B100A6A6
      A600BABABA00C4C4C400D1D1D100A1A1A100AEAEAE00C0C0C000ACAAA9006569
      6B00409ADE000799FF0040B2FF0062C4FF0079C8FA006DC0F7005CCDFF0064A2
      C300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000E7E7E700C9C9C900C7C7C700C8C8
      C800C8C8C800C8C8C800CCCCCC009D9A9A007870700077717100777171007771
      71007771710077717100766F6F00807A7A00BCBCBC00CACACA00C8C8C800C8C8
      C800C8C8C800C7C7C700CCCCCC00EBEBEB009090900089898900777777007070
      7000797979007D7D7D007B7B7B006C6C6C007A7A7A008181810088888900A2A0
      9E00CCC6C10065A8DC000B96FE0050B7FF007ECDFF0055BDFF0074B2D900C2BE
      BE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000A8A3A3007D7474007D7777007D77
      77007D7777007D7777007D7676007E737300A5A0A000A4A1A100A29F9F00A29F
      9F00A29F9F00A29F9F00A4A1A1008C81810067616100777171007D7878007D77
      77007D7777007D7575007E777700B8B6B600CBCBCB00B7B7B700989898009A9A
      9A009F9F9F00B8B8B800B7B7B700AAAAAA00AFAFAF00B3B3B300C1C1C100CCCC
      CC00C7C5C400CCC3BC007FACD0001597FA0037ABFF0080BBE500DED6D300A8A8
      A700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000A5A0A000C2C0C000BDBDBD00BCBC
      BC00BCBCBC00BCBCBC00BEBEBE00A7A1A100B4B2B200BDBEBE00BBBCBC00BBBC
      BC00BBBCBC00BBBDBD00B9BBBB009B9494008D8B8B00ADAEAE00BEBEBE00BCBC
      BC00BCBCBC00BDBEBE00BEBABA00AEABAB0077787800818182008F8F8F009494
      940094949400C6C6C600E5E5E500CECECE009C9C9C00C1C1C100A0A0A000B9B9
      B900CACACA00C3C3C300C9C1BB009DBDD50086BFEA00E0DBD700D9D8D700DDDD
      DD00A6A6A600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000B3AEAE00F7F5F500F3F3F300F2F2
      F200F2F2F200F2F2F200F8F8F800CEC9C900C6C4C400D9D9D900D4D4D400D3D3
      D300D4D4D400D7D7D700D0D1D100ACA6A600B7B5B500DEDFDF00F5F5F500F2F2
      F200F2F2F200F5F5F500EFECEC00B6B3B30069686700AFAFAF00ACACAC009494
      9400AFAFAF00E3E3E30000000000C9C9C90077777700A5A5A5008B8B8B00B9B9
      B900CCCCCC00C4C6C600C6C5C600E2DAD600E5DCD600DBD8D700DFDFDF00E6E6
      E600CCCCCC00B1B1B100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000D1CFCF00D7D0D000D5CECE00D5CE
      CE00D5CECE00D6CFCF00D0CBCB00B7AEAE00D5D1D100E7E4E400E7E6E600ECEC
      EC00E7E7E700E5E2E200DFDCDC00B5ACAC00B5B0B000D2CBCB00D5CFCF00D5CE
      CE00D5CECE00D4CDCD00DAD2D200DDDBDB004E312A00B6B1AF00D9DADA00CFCF
      CF00E0E0E000E3E3E300E3E3E300CACACA0075757500959595008C8C8C00BDBD
      BD00CFD1D100C5BFBE00AB6C5C00A75E4B009E564300A05E4D00D9D2D000EAEB
      EB00DADADA009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000ECEBEB00E4E0E000BEBBBB00CCC7C7000000
      0000DAD8D8009B979700DEDCDC00E2E0E000FBFBFB0000000000000000000000
      0000000000000000000000000000000000008F524300C5BAB600E5EBEC00E6EA
      EB00E4E9EA00E6E9EA00EAECEC00C5C5C50081818100A1A1A100A0A0A000C7C7
      C700D1D6D700BD938900A147310096412B00933D270096463200D7CECC00EBEC
      ED00DADADA009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EDEDED00BDB8B800DFE0
      E000BEBCBC00ACAAAA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E18B7600CB847200B0766700B081
      7500BE9B9200B6A5A100BAB5B300D6D5D500C8C8C800D3D3D300C4C4C400D1D6
      D800CFCCCC00A75B480098432D009845300096422C0097493600D6CDCB00EBED
      EE00DADADA009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F9F9F900F0F0F000E5E5E500DCDCDC00C0C0C000ADA8A800C6C6
      C600A9A7A70092909000DEDEDE00E0E0E000ECECEC00F6F6F600FDFDFD000000
      0000000000000000000000000000E2E2E200CE7A6500BE685200C0695300CD76
      6000DF846D009F60500052362F00ACA9A800D2D3D300D4D5D500D7D5D500BFA6
      A100B17D700099442F009946310097442F0095412B0096493500D5CCCA00EEF0
      F000DADADA009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00EAEA
      EA00CACACA00A4A4A4008C8C8C00838383008A8A8A0091919100B5B3B300C1C1
      C100BDBCBC00A0A0A000959595008E8E8E008B8B8B0099999900BBBBBB00E0E0
      E000F7F7F70000000000F2F2F2007291AA00C8756000D47E6900DD867000DB84
      6E00E2887200AE6857004A302A00ADABAB00D0D0D000C9CACB00E1DDDC00A85A
      46009A412B009B48330097442F0096432E0095412C0095483400D4CBC900EFF1
      F100DADADA009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000F3F3F300BCBCBC008888
      880090909000B2B2B200D4D4D400E8E8E800F0F0F000F5F5F500EEEEEE00EEEE
      EE00EFEFEF00F8F8F800FCFCFC00FCFCFC00F8F8F800DFDFDF00B1B1B1008888
      8800A4A4A400E1E1E1009BA7B0000779E000997E78008E76700081615800825B
      51008E5F5200825347004F363000B3B3B300CFCFCF00CBCDCD00DCD6D500A151
      3D009C4630009946310096432E0096432E0095412B0093463200D2C9C700F1F2
      F200DADADA009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000F9F9F900A8A8A8009C9C9C00DDDD
      DD00F0F0F000EEEEEE00E5E5E500E1E1E100DCDCDC00D9D9D900D9D9D900D8D8
      D800D8D8D800D8D8D800D9D9D900DDDDDD00DDDDDD00E5E5E500F2F2F200EAEA
      EA00B2AFAC007F8385002375C5000085E600A9A7A700B5BABB009A9FA000888B
      8D00737576006364640059565500BBBABA00B0B0B00091939300CBC3C000B068
      5600A7584500A0503C0098453000943F2A00953E280097483500D1C9C700F2F4
      F400DCDCDC009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000E1E1E100B3B3B300F5F5F500E7E7
      E700DADADA00D5D5D500D7D7D700D8D8D800D9D9D900D9D9D900D9D9D900D9D9
      D900D9D9D900D9D9D900D9D9D900D7D7D700D0D0D000CDCDCD00CFCFCF00DBDB
      DA00EFE9E30059A1E0000070DB000BAEF400D8D0CE00FCFEFE00F4F4F400EAEA
      EA00DFDFE000D0D0D100BDBDBE00D9DADA00DDDDDD00CACBCC00D6CDCA00C38A
      7B00C1867800BE847600BA7F7100B8786800B76F5D00AD655300D1C9C700F2F3
      F400DCDCDC009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD00DADADA00F0F0F000E9E9
      E900E7E7E700DDDDDD00CECECE00CACACA00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CDCDCD00CDCDCD00CDCDCD00C7C7C700BDBDBD00CACACA00DADADB00EBE4
      DD008FBBE200006BD8000697EB001EC0FF000000000000000000A4A4A400D3D3
      D300E9EEEF00AD7E7300A34C3500A8564100B25F4A00BE6C5800C8766100CD7B
      6600BB695400A8564100A9574200B05C460000000000F7FBFD00F1F1F100F1F1
      F100F0F0F000EFEFEF00EEEEEE00E7E7E700E3E3E300E3E6E700D7C8C400C68B
      7C00C68E8000CA948600D19F9200DAAA9E0000000000D1A69B00E2DDDB00F7F8
      F800DCDCDC009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000F2F2F200D8D8D800FEFEFE00F3F3
      F300F3F3F300F4F4F400ECECEC00DADADA000000000000000000A4A4A400D5D5
      D500E9EDEE00AA7C7100A34D3700AA584300B15F4A00BA685300BC6A5500A957
      42009D4B3600A4523D00AD5B4600B25D4700C7867500F3F3F300F2F4F500F0EF
      EF00EDEDED00EBEBEB00E9E9E900E6E6E600E3E3E300E0E4E500D4B2A900CD91
      8200D29B8D00D9A59800DEADA000DEAEA300DBADA100D3ACA100E8E4E300FFFF
      FF00DEDEDE009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000D1D1D100EDEDED000000
      00000000000000000000FDFDFD00E5E5E5000000000000000000A4A4A400D7D7
      D700EAEEEF00A87A6E00A34D3700A8564100AD5B4600AF5D4800A14F3A009947
      3200A04E3900A7554000AE5C4700B6634E00BB665000D9AA9F00F3F5F500F2F6
      F800F0F1F100EBECEC00E8E9E900E6E8E900E3E8E900DDCDC900D59C8E00D9A1
      9300E0AB9D00E2AFA200E0B0A400DEB0A500DAAEA300D1AAA000E7E3E200FFFF
      FF00DEDEDE009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FCFC
      FC00FBFBFB00FCFCFC00FCFCFC00FCFCFC00FCFCFC0000000000E7E7E700C7C7
      C700D7D7D700F3F3F30000000000E6E6E6000000000000000000A4A4A400D8D8
      D800EAEEEF00A6786D00A44D3700A5533E00A7554000A14F3A009B4934009E4C
      3700A3513C00AA584300B15E4A00B9675300C3745F00D4836F00E6AEA000E2CF
      CA00E2DDDB00E9E7E600E8E6E500E4DDDB00DFC3BC00DAA39500DDA59600E3AE
      A000E4B1A400E2B2A500E0B2A600DDB0A500D8ADA300CEA99F00E7E3E200FFFF
      FF00DFDFDF009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000C3C3C300C7C7C700CFCF
      CF00C9C9C900B8B8B800B5B5B500BDBDBD000000000000000000A4A4A400D9D9
      D900EAEEEF00A4776B00A44D3700A5533E00A4523D00A04E3900A04E3900A250
      3B00A8564100AD5B4600B5634F00C1715D00D2857200E2988500DE938000D38B
      7900CE8F8000D8A09300E2AB9E00E0A69700DFA29300E1A99A00E5B0A200E6B3
      A600E4B3A700E2B3A700DFB2A700DBB0A600D4ABA000C9A69C00E7E3E200FFFF
      FF00DFDFDF009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00008A8A8A008888880089898900898989008989890089898900898989008989
      8900888888008686860086868600858585000000000000000000A4A4A400D9D9
      D900EAEEEF00A2756900A44D3700A5533E00A5533E00A4523D00A4523D00A654
      3F00AA584300B15F4B00BD6D5900CE806D00E0948100E49C8900E09A8800DC98
      8700DD9B8A00E3A29100E4A69600E4A99A00E5AD9F00E7B1A300E7B4A700E6B5
      A800E4B5A800E1B3A800DCB1A600D6ADA300CDA69C00CAA89F00E7E4E300FFFF
      FF00DFDFDF009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000009393
      9300CDCDCD00D5D5D500D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D300D6D6D6000000000000000000A4A4A400DBDB
      DB00EBEFF000A0736700A44E3700A5533E00A5533E00A5533E00A5533E00A856
      4100AD5B4600B7675200C7796500D88C7900E39A8700E59E8C00E39F8E00E2A0
      9000E4A59500E7AA9B00E7AC9E00E7AEA000E8B2A400E9B5A800E8B6A900E5B6
      AA00E2B5A900DEB3A800D8AFA400CFA79E00CDA89E00CEADA500E8E4E300FFFF
      FF00DFDFDF009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000A2A2A200B7B7
      B700DEDDDD00D8D8D900D8D9DA00D8D9D900D8D9DA00D8D9DA00D8DADA00D8DA
      DA00D8DADA00D8D9DA00DDDEDF00B5B6B7000000000000000000A4A4A400DCDD
      DD00EBEFF0009D6F6400A24C3600A3513C00A4523D00A5533E00A5533E00A856
      4100B1604B00BE6F5C00CD816D00DA907E00E29B8900E5A18F00E6A49300E6A6
      9600E8AA9A00E9AE9F00E9B0A100E9B3A500EAB5A800E9B7AA00E7B7AB00E4B6
      AA00E0B5AA00DBB1A700D3ABA100CDA89E00D1ADA300D1B1A900E8E5E400FFFF
      FF00DFDFDF009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000A4A4A400C9C9
      C900E1E1E100DFDEDD00DDDAD900DEDBDB00DEDBDB00DDDBDA00DCDAD900DCD9
      D900DCD9D900DCDAD900E2E0DF00B3B1B0000000000000000000A4A4A400DEDE
      DE00EBEFF000996B60009E483200A04E3900A2503B00A4523D00A5533E00AA59
      4400B4655100C2756100CE847100D9917F00E09B8A00E5A29200E7A79700E8AA
      9A00E9AD9E00EAB0A200EAB3A500EBB6A800EAB7AB00E8B8AC00E6B7AB00E2B6
      AB00DEB4AA00DAB2A800D8B2A800D8B4AB00DBB8B000D8BAB200E9E6E500FFFF
      FF00DFDFDF009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000A3A3A300C7C7
      C700E6E9EA00CEA69C00C4796600C57E6C00BF786600B8715F00B36C5A00B46C
      5A00B66F5D00B8715F00C1796600A66858000000000000000000A4A4A400DFDF
      DF00EBEFF00094675B0099432D009B493400A04E3900A3513C00A6543F00AC5C
      4800B6695500C2776400CC847200D6907F00DF9B8A00E5A39300E7A99900E8AD
      9D00E9AFA100EAB3A500EBB6A800EBB8AB00EAB9AD00E8B9AD00E5B8AD00E2B8
      AD00E1B9AF00E1BBB200E3BEB500E3C1B800E3C2BA00DCBFB800E9E6E500FFFF
      FF00DFDFDF009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000A3A3A300CACA
      CA00E7EBEC00C4948800B2584100AF5A4400AC574100AB554000A9543F00AB56
      4000AF594400B25D4700B9634D00B4634E000000000000000000A4A4A400E1E1
      E100ECF0F1008E5E5200953A230099432D009F493300A44E3800A8543F00AD5C
      4700B6675300C0746100CB826F00D48E7B00DE998800E5A39200E9A99900EBAE
      9E00ECB1A200EDB4A700EDB8AA00EDB9AC00EBBAAD00E9BAAE00E7BAAF00E7BC
      B100E8BFB500E8C1B700E7C3B900E5C3BA00E3C2BA00DCBFB800EAE7E600FFFF
      FF00DFDFDF009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000A3A3A300CBCB
      CB00E8ECED00BD8F8300A9513C00AA574200AA574200A9564100A8554100AB58
      4300AF5C4700B25F4A00BA675200CD7964000000000000000000A4A4A400E3E3
      E300EEF1F20090716A008E544600935C4D00975F51009C665800A16C5F00A371
      6400AA786C00B1817500B98B8000C1948900C89D9200CEA59A00D2ABA100D5AF
      A600D8B3AA00DAB6AD00DBB9B100DBBBB300DBBDB500DCBEB700DCC0B900DDC3
      BC00DEC5BF00DFC7C100DFC8C300DEC9C400DECAC500DAC8C400ECEAEA00FFFF
      FF00E0E0E0009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000A3A3A300CCCC
      CC00E8ECED00B98A7F00A64E3900A7543F00A7543F00A6533E00A8554000AB58
      4300AF5C4700BB685300D3806B00DD8974000000000000000000BFBFBF00E7E7
      E700F8F8F800EDEEEE00EAECED00EAECED00E9ECED00EBEDEE00ECEEEF00ECEF
      EF00EDEFF000EDF0F000EEF0F100EEF0F100EFF1F200F0F2F200F1F3F300F1F3
      F300F1F3F400F2F4F400F3F4F500F4F5F600F4F6F600F5F6F700F6F7F800F6F8
      F800F7F8F800F8F9F900F8FAFA00F9FAFA00F9FAFB00FAFBFB00FEFEFE00FFFF
      FF00D8D8D8009F9F9F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000A3A3A300CDCD
      CD00E9EDEE00B6887C00A44C3600A5523D00A5523D00A6533E00A8554000AD5A
      4500BE6B5600D7847000E08C7800D2806C00000000000000000000000000A8A8
      A800FDFDFD00FBFBFB00FBFBFB00FBFBFB00FBFBFB00FBFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FEFEFE00FEFE
      FE00FDFEFE00FDFEFE00FEFEFE00FEFEFF00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7E7
      E700B7B7B700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000A4A4A400CFCF
      CF00E9EDEE00B2847800A34B3500A5523D00A5523D00A7543F00AE5B4600C06D
      5900D9867200E28F7A00E48F7A00C47A670000000000EFEFEF00000000000000
      0000B1B1B100B3B3B300B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2
      B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200B2B2B200AEAE
      AE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000A4A4A400D1D1
      D100E9EEEF00B0827600A34B3500A5523D00A6533E00AD5A4600C06D5800D582
      6D00DF8C7700E3907B00E7917C00B06957000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000A4A4A400D2D2
      D200E9EDEF00AE807400A34B3500A5523D00AB594400BA675200CB796400D583
      6E00DB887400D17F6A00BB685300A65945000000000000000000000000000000
      0000EEEBEB00F3EDED00FBF3F200FEF5F400E4D6D00084613C00AB855D00BB90
      6200A48D7100BFBFBF00C5C5C600B3B6BA000000000000ADEB00468189008793
      53007B935300A58A6600947B5F00CEC9C500E0E0E000DBDBDB00DEDDDD00E4E2
      E200FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FDFDFD00FBFB
      FB00F7F7F700F4F4F400F0F0F000EDEDED00EBEBEB00E8E8E800E6E6E600E3E3
      E300E3E3E300E0E0E000DFDFDF00DEDEDE0000000000DFDFDF00E0E0E000E2E2
      E200E3E3E300E6E6E600E8E8E800EDEDED00F1F1F100F6F6F600FBFBFB00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000F1EEEE00F1EBEB00FAF1F000FFF6F5009B7F64009A714300B88B5800C192
      5500C7965400AC8F6700B5B5B500FBFBFB00CACFD7004D8DC00076876E006389
      3600648B3B00948A52009E7D59009D8A7500E3E2E200DBDADA00DCDCDC00E4E1
      E100FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00F9F9F900F4F4F400F0F0
      F000ECECEC00E8E8E800E3E3E300E0E0E000DCDCDC00DADADA00D7D7D700D5D5
      D500D3D3D300D2D2D200D1D1D100D1D1D100D0D0D000D0D0D000D0D0D000D1D1
      D100D1D1D100D3D3D300D5D5D500D9D9D900DCDCDC00E3E3E300EAEAEA00F1F1
      F100F9F9F900FEFEFE00FFFFFF00FFFFFF000000000000000000000000000000
      0000FCFBFB00E7E1E000F8EFEE00E4D7D100855F3600AC7C4700BE8B4B00C692
      4B00CB985000BBA68700FAFAFA00D4D4D400B9B9B900C1C1C200BBBBBC00958D
      760092893F00A08A4B00AC8357008D704F00D1CAC500DEDDDC00DEDDDD00E5E3
      E300FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8F800F2F2F200EDEDED00E9E9
      E900E4E4E400E0E0E000DBDBDB00D6D6D600D3D3D300D1D1D100D0D0D000CECE
      CE00CCCCCC00CCCCCC00CBCBCB00CACACA00C9C9C900C8C8C800C8C8C800C8C8
      C800C9C9C900CACACA00CCCCCC00CDCDCD00D0D0D000D5D5D500DBDBDB00E3E3
      E300ECECEC00F7F7F700FEFEFE00FFFFFF000000000000000000000000000000
      000000000000E6E0DF00F5EDEC00BAA69400766D310098813B00C38D4500CB97
      4D00BBA48300F9F9F900CFC6B800A4936D00BDBDBD00C3C3C400C0C0C100BCBC
      BD00A69C9000A78E6E00A780560096744E00B0A09200E2DFDF00E0DEDE00E8E5
      E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F6F600F1F1F100ECECEC00E6E6
      E600E0E0E000DBDBDB00D7D7D700D3D3D300D1D1D100CECECE00CCCCCC00CBCB
      CB00C9C9C900C7C7C700C5C5C500C3C3C300C2C2C200C0C0C000BEBEBE00BEBE
      BE00BEBEBE00C0C0C000C3C3C300C7C7C700CACACA00CECECE00D4D4D400DBDB
      DB00E8E8E800F4F4F400FEFEFE00FFFFFF000000000000000000000000000000
      000000000000E6E1E000F4EBEB00A68E76004A772200577F2400C0934700BBA3
      7F00F7F6F600C8BDA900B7A45900859B4200A1987000BFBFBF00C5C5C600CECE
      CE00D2D2D300D5D4D500C6C5C500937D65009D897500E6E1E100E2E0DF00E7E5
      E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FBFBFB00F5F5F500F0F0F000EAEA
      EA00E4E4E400DFDFDF00DADADA00D5D5D500D2D2D200D0D0D000CDCDCD00CCCC
      CC00C9C9C900C7C7C700C5C5C500C2C2C200C0C0C000BCBCBC00BABABA00B8B8
      B800B8B8B800BABABA00C0C0C000C6C6C600CBCBCB00D0D0D000D7D7D700E3E3
      E300F0F0F000FBFBFB00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000E8E4E300F1E9E9009E8267004D79230058802400B19D7700F3F2
      F200C4B59B00C4AD610067943800B7AF5E00E5BD7300B1A38B00D5D4D400D7D6
      D700D9D9D900D7D7D700DDDCDD00C9C7C7008F7C6900E9E3E300E4E1E000E8E5
      E500FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FDFDFD00FAFAFA00F5F5
      F500E4E2E100D7D4D300D3CFCE00CECBCA00CBC7C600C8C5C400C6C2C100C4C1
      C000C2BFBE00C1BDBD00C0BCBB00BEBAB900BCB9B800BBB8B700BBB8B700BBB8
      B700BCB8B700BEBBBA00C1BEBD00C5C1C000C9C6C500D1CDCD00DBD7D600F1EF
      EF00FEFEFE00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000EAE6E600EFE8E700A68C7400678050008C967D00ECECEC00C2AE
      8D00E2B86E009DA8540066973D00A3AE5F00E9C68300BFB6A400DBDBDB00C5C2
      BE00BAA58500B58C5300A08D6700EAE9E900ABA19B00EDE6E500E3DFDF00ECEA
      E900FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000E1DC
      DB00ABA1A000C0BAB900C0BAB900C0BAB900C0BAB900C0BAB900C0BAB900C0BA
      B900C0BAB900C0BAB900C0BAB900C0BAB900C0BAB900C0BAB900C0BAB900C0BA
      B900C0BAB900C2BCBA00C3BCBB00C3BCBB00C3BCBB00C3BCBB00BEB7B600ACA1
      9F00EFECEC00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000F0EEED00E9E2E100BEB4AE00EEEEEE00F7F7F700B2A28800DEB2
      6800E7C07800A6AF6200679B430073A04B00D6C58500C3BAAB00E0E0E000BA9D
      6B00D6A75C00CB974D008C823600CACCC600C8C2C000EEE7E600DFDAD900F1EF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000C9C1
      BF00B3AEAD0083818100787676007A7777007977760079767600787676007876
      7600787676007775750077757500777574007775740077747400767474007674
      740075747300737171007B95AD0060ABCD002B979D00519F7B00CCC3C100B0A9
      A800D8D2D000FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FBFAFA00D8D2D100E3E2E200F4F3F300F1F0F000B5A07900E0B5
      6C00E9C58200E9CE940077A554006AA14D0075A45200C6B99A00E5E5E500BEA8
      8100D7A75D00A8914100627D2900938E7700D9D1CE00E8E0E000DBD5D400F9F8
      F800FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000D9D2
      D100958E8D005A525000322D2C002D2827002D2827002C2827002C282700706F
      6E00474646002C2827002C2827002C2827002C2827002C2827002C2827002C28
      27002C2827000C496B0000BFED0000CDF30000C5F100098CBC00A89B99009F98
      9800E2DCDB00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000EEEAEA00D3CFCE00D6D3D000798E5C008B9B4E00E2BC
      7B00ECCD9300EBD7A70087B26D007AAC650079AB6200C9C69000CFC7BB00C4BE
      B300D7AB6700BE9652009D7540008F775F00F6EDEC00E6E0DF00EAE7E600FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000E6E2
      E200CCC7C600A6A2A100A5A1A0008C898800A5A1A000A6A1A000A6A1A000A6A3
      A300E8E7E70096939300A6A1A100A6A1A100A6A1A100A6A2A100A6A2A000A6A2
      A000748C9E0001B4E80000C2F00000C9F20000BBEF0000A9E7008D95A500D7D1
      D000E8E5E500FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000DCD7D2008D774B00AEA56A00DEBE
      8500CAC58B0093B87A008DBA7E008DBB7F008CB87B009EBC7F00D2C78F00B0AE
      8800B3A56A00BD9A6800805F3A00DBD6D200F9F8F800FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000E7E4
      E300E9E8E800DFDDDD00DBDAD900C1C0C000D6D5D500DEDEDD00DFDFDE00D7D5
      D500D5D5D500C8C7C700E6E3E200E8E4E300E9E5E400EBE6E500EDE7E600E1E0
      E4001EB2E40000C0F00000CEF40000C8F20000B4ED000599DE00D8D9E000EEED
      EC00EAE8E800FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000CEC4BA00B79A7A00DCBC
      8E00D0C693009EBF8700A0C59200A0C797009EC38F009BBD840098B77A0093B0
      73009CA97300947B5A00C7BFB600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000F6F5
      F400E4E1E000E3E0E000CFCCCC00E9E8E800C2C1C100DFDEDE00DEDDDD00BFBF
      BF00D6D5D500C8C7C700DCDADA00E4E2E100E6E3E200E8E4E300E9E5E40057B6
      DD0000C1F00000D3F50000C9F30000BEEF0001B7EA0081B3D800E9E5E300EEEC
      EC00ECEBEA00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DDD8D200BEAB
      9500DEC4A200C7C89D00B3C99B00AFCA9D00AEC89900ABC39200AFBF9000BBB6
      9200A18E7800D2CDC600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000E1DDDD00EAE6E500E5E1E100D3D3D300D3D3D200C5C4C400C4C3C300DADA
      DA00DCDBDB00BAB9BA00CFCCC900CDC6C000CEC7C100DBD7D4009DC6DD0000BF
      EE0000D5F50000C8F20000C2F00023A7DE00B2C7DE00EDE7E600E9E6E400EAE8
      E800F3F2F200FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F6F6
      F500D0C9C100C6B7A800CFBEA700D9CBB200D3C8AE00C0B19B00B6A79800BFB6
      AF00F5F4F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000E7E2E100EEE8E800F2EDEC00C8C6C500E8E7E700E5E4E400DFDEDF00D9D8
      D900D1D1D100C4C4C500938F880088976D008C9D72008686810007AFDF0000D1
      F40000C2F10007B3E80073B1D800E4E3E500EEE9E800E9E4E300E6E3E300E3E1
      E000FCFCFC00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EDECEB00D9D7D400D8D5D300ECECEB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000E9E6E500F1EBEA00F7F0EF00F3ECEB00C4C2C100C2C2C200CCCBCB00D0D0
      D000C9C9C900C4C4C500BFBFC00085917C007B8C7F0016A0D20000BEEF0000BA
      EE002998C100A9AFB600E6E4E400E8E5E500E9E6E600E4E1E000E3E1E100E0DE
      DD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000EBE7E600F4EDEC00FBF2F100FBF3F200F9F1F100C1B2A700866C4F009E93
      8800C5C5C600C7C7C700C3C3C4008DA3BC0000B1E80000B7EE0002A3E3006189
      9C00A2926F009D846A00C1B8AF00E3E2E200E5E3E300E0DEDE00E1DFDF00E1DF
      DF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000CADBEE00C4D7EB00BED3
      E900B7CFE700AFC9E600A7C4E3009EBEE00096BBE2007B859000B5B6B900F3D2
      B900F5B06800B68450009D928700F0F0F000000000000000000000000000FAFA
      FA00F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F500F5F5F500F5F5F500F5F5F5000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000F7F7
      F700FDFDFD00FFFFFF00FFFFFF00FFFFFF0000000000DFDFDF00CBC9C900CDCB
      CB00CDCBCB00CDCBCB00CDCBCB00CCCBCB00CCCBCB00CDCBCB00CDCBCB00CDCB
      CB00CDCBCB00CBC9C900E5E5E50000000000EEF5FC00E1ECF700D2E2F100C4D8
      EC00B8D0E800AEC9E600A6C3E200A2C3E40099BBDD005B5F6200A2A4A700E1BF
      A700F7B97300B68856009D938800F0F0F000000000000000000000000000A79F
      9D008B7A74008F7F7B008F7F7B008F7F7B008F7F7B00907F7B00907F7B00907F
      7B008E7E7A008C7D79008C7D79008C7D79008C7D79008C7D79008E7E7A008F7F
      7B00907F7B008F7F7B008F7F7B008F7F7B008F7F7B008F7F7B008D7D79008F7D
      7800D1D0D000FFFFFF00FFFFFF00FFFFFF00EBEBEB00DCB3A200E5D1C200CDB4
      A100B9CFE500AEC2D600B8BEC600CDBFB400D5BFAE00D3BDAA00D7C0AF00D8C1
      B000D6C4B400DFCFC200D3B2A000E0DFDF00F8F6F600FEFEFE00FEFEFE00FDFE
      FE00F1F8FD00DEE9F700CBDDF100ACC9E400798C9F00403F3F0091939700CFAE
      9600F9C27C00B68E5D009D938900F0F0F00000000000FBFBFB00EBEBEB00A58C
      8600DDD6D300D1CAC800D3CBCA00D1C8C600CDC5C100CFC4C000CFC4BF00CEC2
      BE00D5CAC600D6CDCC00D5CDCB00D5CDCC00D5CDCC00D6CECC00D6CECD00CDC6
      C500CDC5C300CFC5C400CFC6C500D0C7C500D0C8C600D1C9C800CEC7C600D8C2
      BD00AAA3A200FAFAFA00FEFEFE00FFFFFF00DDDADA00EBA07C00E59F7100C789
      630091B7DF008FB5DE0088A5C600A4B0C200AFAAAC00A9897300BF927100BF92
      7300DF976000E2A87D00E7A78200CFCCCA00A1A1A200B0AFB000C4C2C200DAD7
      D600F1EDEC00FEFEFE00F5F5F300777A7D00242424002F2F2F00787A7D00BE9E
      8600FCCA8600B69262009D958B00F0F0F000FAFAFA00AAA4A200917A7100B994
      8500E2DBD500D1C9C000C7BFB800CCC7C300D5DCE300ABBED100B1BDC900B6BE
      C500C3C2C100D0C6BE00D5C6BC00D5C9BD00D5CAC000D5CBC300D3CBC400CAC3
      BD00CAC2BB00CBC3BC00CCC4BD00CCC4BD00CEC5BE00CFC6C000D1CBC500D6C4
      BC009C8274008E837C00C6C5C400FAFAFA00DDDBDB00DF967300DB8D5B00B6BB
      C5004C7CB7006A9CD1008BA3BB00C6D6E600C4D5E7007996B600648CBA006186
      AF00917F7700C4906A00DEA07B00CFCDCB006665650064646400626262006362
      620068676700757373006B6A6A00292828001212110023232300595B5E00AF8F
      7800FDD29100B69768009D968B00F0F0F000F0F0F000A15B4800E3481000E881
      4A00EEBB9800D8966A00CB865A00DEC0AB00DAE8F60098BBE0009CBDE0009AB8
      D80089A0B80098A6B700A2A0A400AC9A9000B9988100C6987700C08E6900CB95
      6B00DDA27600DCA27700DCA37700DCA37800D8A47C00D8A37C00DEAF8B00E0AC
      8D00E67F3F00B96225009F8B7E00F0F0F000DDDBDB00DFA18100D5976E00E7DE
      D8007BA6D50083ACD70083ACD9007DA8D50078A3D3006F9ED100719FD10078A3
      D30087B2E000BCBEC400E0AE8D00CFCDCB000002040000020400000204000102
      0400000203000001030000010200000102000001030008090B001F222700A180
      6A00FEDC9C00B69C6E009D978D00F0F0F000F0F0F0009F594600D1400C00DD75
      3C00E7A77C00D88E5E00B6896E00E0D0C600B8D0E80081A9D60088B0DA0086AE
      D70085A2C000A1BFE1009CBCDD0099B6D50099AFC800A0ACBD00999A9F008E83
      7F00A98C7800AE897200AE8D7600B9907200D7925F00DC935D00E0A27300E0A2
      7900D6753900AC5C22009E8B7E00F0F0F000DDDBDB00E2A98A00C5957300DCD6
      D20093B7DD0098BADE0099BADE0097B9DE0098BADE0097B9DD0092B6DC008EB2
      DA0099BCE100CCC4BF00E6BA9B00CFCDCB00744D3300744E3500745138007552
      390075543C0075563E0075584100765A4400765C4500775D47007A604C00D2AA
      8300F9DDA200B6A175009D988F00F0F0F000F0F0F000A0594700CC420F00D36C
      3400DC916000D69F7B009ABDE000DBDEE30090B1D5006D9CD00073A0D1006D9B
      CC00ABB6BF00EDEDEE00E7EBED00E7EBED00E7EBED00E9EEF200D7DADB007592
      B300648FBD006288B1005F84AC005F82A90087807F00A97D5F00CE916200D893
      6500CE733900AB5E25009E8B7E00F0F0F000DDDBDB00F6B59200DE9E7200DBD6
      D600A4C3E200A8C6E300ACC7E500B1CBE600B2CBE700B0CBE600B0CAE600ADC8
      E500AEC6DF00EDD8C600F4CCAD00CFCDCB00FEB66300FEBD6C00FEC47500FECA
      7D00FED18600FED88E00FEDE9700FEE49F00FEEBA700FEF1AE00FEF3B200FEF1
      B100F3DEA400B3A378009C998F00F0F0F000F0F0F000A05C4700CB441200CB63
      2C00D2804B00CE916900A2BDD700DBDDE3006C99CB006395CC006597CC006696
      CA007892AF00739ECE00709CCE006F9CCC006E9BCC006B9ACE007598BE006C93
      BD005E92CE006192CA006291C500628EBF005F8BBC005B84B300808B9900CF8B
      5C00C8703900AC6128009E8B7F00F0F0F000DDDBDB00FECFB300F6E2D700FAFB
      FC00FEFCFC00FEFCFC00FCFCFC00EFF3F900EFF3F900EDF3F900ECF1F900ECF1
      F800EDEFF200FBF6F100FCE5CF00CFCDCC00FEBE8100FEC38700FEC98E00FECF
      9500FED39B00FED8A300FEDEA900FEE3B000FEE8B700FEEDBD00FEF1C300FEF6
      C800F6ECC000C8BE9C00A8A49C00F8F8F800F0F0F000A25C4800CE461400C663
      2C00D07C4700C68B6200BECEDC00CED6E2006897CA0072A0D10073A0D10073A0
      D100709ECF006C9CD0006A9ACF006698CE006395CB005E90CA005C8FCA005D90
      CA005F91CA006597CC006C9BD00074A1D3007AA6D6007FA9D8008CAFD500D5A6
      8600C4753F00AF652B009E8D8000F0F0F000DDDBDB00E17E4300D8E1E700FAFA
      FA00F7F6F600F8F8F800FCFBFB00EBF2F9009EB4D4008AA6CB0080A0C800799A
      C6007F8E9D00C2BAB600F8BB7B00CFCDCC00FEF7D200FEF1CA00FEECBE00FEE6
      B200FEE0A700FED89C00FED29000FECC8600FEC58100FEBF7B00FEB97600FEB5
      7200E9A16700C4875B00C5C2BF00FFFFFF00F0F0F000A25C4A00D1471400CB75
      4400DD9F7600CEA08100E7E8E900BBCCE00074A0D10081AAD60082AAD70083AB
      D70083ABD70082AAD60080AAD6007DA7D30078A3D20073A0D1006F9ED0006F9C
      D0006F9ED000729FD10077A2D2007DA8D50084ACD70087B0DC00A6BBD000E1B3
      9300C37A4700B2692F009E8D8100F0F0F000DDDBDB00D06C3100505457008282
      82009A9A9A00AAA9A900BEBDBD00929192009B9A9B00BEBBBA00E1DCDB00D5D3
      D2002E2E2F00867F7B00F2C58900CFCECD00FEEBAF00FEE6A600FEDE9800FED6
      8900FECC7900FEC46900FEBB5A00FEB14F00FEA84700FE9F4000FE963900FE90
      3300CF6A220098562B00EBEBEB00FFFFFF00F0F0F000A05C4A00D84C1600CB7C
      4E00D8A48100C59E8300EEEDED00A8C2DC0085ACD7008FB3DB0090B5DC0091B5
      DC0091B6DC0090B5DC008EB3DB008CB2DA008CB1DA008DB2DA008CB1DA0089B0
      D80085ACD70083AAD60084ABD70089AFD8008FB5DB0092B8E100BBC0C800E2BB
      9E00C8824F00B66D32009D8E8100F0F0F000DDDBDB00C9662C00121D25004C53
      570053585D0051575C0053595D001B1F23001B1E2200181A1E001B1C20001819
      1C000A0D11004F464600F3CD9400CFCECD00FEE1A000FEDD9900FED88F00FED1
      8300FECA7600FEC26800FEB95A00FEB15200FEA94C00FEA04500FE983E00FE90
      3800BF65250098735A00FFFFFF00FFFFFF00F0F0F000A05C4A00E2511900D282
      5100D2A07C00B9937900E9EBEE009FBCDB0097B9DE009BBDDE009EBEE0009FBE
      E1009FBEE0009EBEE0009EBEE100A0BFE100A0BFE100A0BFE100A0BFE100A0BF
      E100A0BFE1009BBCDE0096B8DD0096B8DC009BBCE0009FBFE200CAC3BD00E3C4
      AC00D68F5900B87036009D8E8100F0F0F000DDDBDB00EB7228009D522200B268
      3800B5724400B5754800B6794C00985F32009A6539009A6F46009A744C009A7A
      53009E856200B3987300F8DCA100CECDCC00FEDA9500FED78F00FED38800FECE
      7F00FEC87300FEC06700FEB75A00FEAC4F00FEA64900FE9E4300FE973C00F286
      3300B55D2100A7978D00FFFFFF00FFFFFF00F0F0F000A05C4B00E6551B00F797
      5A00F6B18300D09C7A00E4EBF2009EBCDD00A3C2E200A8C5E200AAC6E300ABC8
      E400AEC9E600B0CAE600B1CBE700B2CBE700B2CCE700B2CCE700B2CBE700B1CB
      E700B1CBE600B1CBE600AFCAE600A9C5E300A7C4E300AEC6E200E8D3C200FDDE
      C800EDA46900B67238009D8F8200F0F0F000F3F3F300FEA36200FFB06800FEB8
      7000FECB8600FED59600FEDEA600FEEEC300FEEDC200FEE0A800FED89900FED0
      8B00FEC07B00FFBA7500F2AA6D00EAE9E900FED68F00FED38D00FED08600FECC
      7F00FEC67600FEC06C00FEBC6800FEAE5600FEA14500FE9A3F00FE953A00DE79
      2D00A7551D00C9C6C300FFFFFF00FFFFFF00F0F0F000A05E4C00E6561D00FE9C
      5D00F8A97400DAA98900F6F9FD00CCDBEB00B5CEE700B3CCE600B5CEE700B8D0
      E900BDD3EB00C0D5EC00C3D6EC00C3D6EC00C3D6EC00C2D6EC00C2D6EC00C0D6
      EC00BFD5EB00BFD5EB00BFD5EB00BFD5EB00B8D0E900BECFDE00F3DCC600FEE9
      D600F1AB7200B6743B009D8F8300F0F0F00000000000FA813300FF993B00FEA4
      4600FEBF6000FECB7600FED78B00FEE8AA00FEE7A700FED48500FEC76F00FEBA
      5900FE9F4000FF953700DF74250000000000FED59100FED38E00FED18900FECE
      8400FECA7F00FEC57A00FEC07800FEB76B00FE9E4400FE963C00FE913800CB6B
      27009E5E3400EDEDED00FFFFFF00FFFFFF00F0F0F000A05F4C00E6592100FE9E
      5D00F57B2F00DCBCA600F7FCFE00F7F6F600F2F3F600EBF0F500E2EBF500DBE7
      F300D5E3F200D2E1F100D0E0F100D0E0F100D0E0F100CFE0F000CEDEF000CEDE
      F000CEDDF000CEDDF000CEDEF000CFE0F000CEE0F200D6DBE000F8E0C900FEF0
      E000F1B57D00B6783F009D908400F0F0F00000000000EE783B00FF9D4400FEA5
      4E00FEBC6100FEC67100FED08200FEDB9500FEDA9500FECE7E00FEC46D00FEB9
      5B00FE9F4400FF943B00C468260000000000F8C88500F8C88200F8C68100F8C5
      8000F8C17E00F8BD7B00F8BA7700F8B27100F8A25B00F89F5600F6965100BE6F
      3A00AA8B7800FFFFFF00FFFFFF00FFFFFF00F0F0F000A05F4D00E6571D00FEA8
      6C00F6B89000EEE4DD00F7F8F900F7F6F600F9F8F700FCFBF800FEFCFB00FEFD
      FC00FDFCFC00FBFBFC00E8EEF600E1E8F300E2EBF500E1E9F300E0E9F300DEE8
      F200DCE7F200DBE6F200D8E4F100D8E4F100D6E3F300E1E1E200F2E7DD00FEF1
      E600F3B77B00B67D47009D918400F0F0F00000000000CA7B6100C76B4A00C971
      4E00C8785400C87C5700C87E5900C8815E00C8815D00C87E5900C87C5700C878
      5500C96B4300BE603B00AB7F6300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A05F4D00E9581C00E985
      4300BCC5CE00F5F6F700F2F1F100F3F2F200F5F5F500F6F6F600F8F8F800F9F9
      F900FBFBFB00FEFEFE00F0F5F800D1DEEE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A05F4D00EB5A1F00DE7A
      3900999C9F00FBFBFC00F5F5F500F3F3F300F3F3F300F5F5F500F6F6F600F8F8
      F800F9F9F900FCFDFD00FEFEFE00FCFDFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A05F4E00EC5C2100DC77
      370074757800B2B2B300D7D7D700E4E4E40000000000F8F8F800FCFCFC00FCFC
      FC00FEFEFE00F6F6F600DBDADA00E8E6E6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FCFCFC00FAFAFA00F8F8F800F7F7F700F5F5
      F500F4F4F400F4F4F400F0F0F000ECECEC00ECECEC00F1F1F100F2F2F200F3F3
      F300F4F4F400F5F5F500F7F7F700F8F8F800FCFCFC00FDFDFD00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0614E00ED5E2200DA75
      35004F5052006F70700090909000939393009C9C9C00ABABAB00BEBEBE00D6D5
      D500D8D8D800A9A9A900979797009A9A9B000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FDFDFD00F9F9F900F3F3
      F300ECECEC00E5E5E500DFDFDF00D9D9D900D3D3D300CECECE00C9C9C900C5C5
      C500C2C2C200C0C0C000BDBDBD00BCBCBC00BBBBBB00BBBBBB00BBBBBB00BBBB
      BB00BDBDBD00BFBFBF00C2C2C200C6C6C600CBCBCB00D2D2D200D9D9D900E6E6
      E600EFEFEF00F8F8F800FDFDFD00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0614E00ED602400D772
      32002F3032005050510075757500747575007473730072727200707070007373
      730075747400797979006E6E6E00666565000000000000000000000000000000
      0000000000000000000000000000FCFCFC00F3F3F300EAEAEA00E2E2E200D9D9
      D900D1D1D100C9C9C900C1C1C100BABABA00B4B4B400AFAFAF00ABABAB00A7A7
      A700A4A4A400A1A1A1009F9F9F009D9D9D009C9C9C009B9B9B009A9A9A009B9B
      9B009C9C9C009D9D9D009F9F9F00A2A2A200A6A6A600AAAAAA00B0B0B000B7B7
      B700C1C1C100CECECE00DEDEDE00EFEFEF00FDFDFD0000000000000000000000
      00000000000000000000000000000000000000000000A0614E00EE612600D36F
      3100090D1200151A1E004C5156004C5256004C5256004D5257004D5357004E53
      570050565A003D42460003060800000102000000000000000000000000000000
      0000000000000000000000000000F9F9F900F0F0F000ACACAC00949494009393
      93008F8F8F008C8C8C008A8A8A00888888008787870085858500838383008383
      830082828200818181008080800080808000808080007F7F7F007F7F7F007F7F
      7F007F7F7F007F7F7F0080808000808080008282820083838300858585008787
      8700898989008B8B8B00BCBCBC00E7E7E700FBFBFB0000000000000000000000
      00000000000000000000000000000000000000000000A0614F00E9602600F079
      2F0079442800774528009B6647009B6749009A694A00996C4F00996C5000996D
      52009A6D52007D53380070472D00744B31000000000000000000000000000000
      00000000000000000000FEFEFE00F9F9F900F2F2F2009B9B9B00C3C3C300CACA
      CA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CACA
      CA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CACA
      CA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CACACA00CACA
      CA00CBCBCB00A9A9A900BABABA00F0F0F000FBFBFB00FEFEFE00000000000000
      00000000000000000000000000000000000000000000A05F4D00E45B2200FE7A
      2200FE842900FE872D00FE862E00FE893200FE8E3700FE923A00FE963F00FE99
      4400FE9E4800FEA45000FEAB5700FEAF5C000000000000000000000000000000
      0000FDFDFD00F7F7F700F0F0F000EAEAEA00E7E7E70099999900C9C9C900D0D0
      D000CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CFCFCF00ABABAB00B3B3B300DCDCDC00E3E3E300ECECEC00F7F7F700FEFE
      FE0000000000000000000000000000000000F6F6F600A7746700EE815100FE97
      4E00FE985100FE9A5500FE9E5900FEA15C00FEA35F00FEA76300FEA96600FEAC
      6900FEB06D00FEB27200FEB67500FEB97A000000000000000000FEFEFE00F9F9
      F900F2F2F200ECECEC00E5E5E500DFDFDF00DCDCDC0096969600CDCDCD00D7D7
      D700D2D2D200CFCFCF00CDCDCD00CDCDCD00CDCDCD00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CFCFCF00AAAAAA00A4A4A400C7C7C700CDCDCD00D7D7D700E2E2E200EFEF
      EF00FCFCFC00000000000000000000000000FFFFFF00A7928C00EE956F00FDAF
      6E00FEB77400FEBD7900FEC37F00FECA8400FED08C00FED69700FEDDA200FEE3
      AE00FEE9B900FEEEC500FEF5CF00FEF8D5000000000000000000FAFAFA00F2F2
      F200EBEBEB00E5E5E500DDDDDD00CCCCCC00C0C0C00091919100D0D0D000DBDB
      DB00D9D9D900D7D7D700D3D3D300CFCFCF00CECECE00CDCDCD00CDCDCD00CDCD
      CD00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CFCFCF00A8A8A8008D8D8D00A1A1A100AFAFAF00C6C6C600D3D3D300E0E0
      E000EFEFEF00FDFDFD000000000000000000FFFFFF00B5ABA800D3562B00F783
      3100FE933800FE9B3F00FEA44600FEAE4D00FEB75600FEC06400FECA7400FED2
      8300FEDB9200FEE3A100FEE9AC00FEECB20000000000FEFEFE00F8F8F800F0F0
      F000E9E9E900E2E2E200DADADA009A9A9A009291910094939300D0D0D000DEDE
      DE00DCDCDC00DCDCDC00DBDBDB00D9D9D900D6D6D600D2D2D200D0D0D000CFCF
      CF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CECECE00CDCDCD00CECECE00CECECE00CECECE00CECE
      CE00CFCFCF00ABABAB00949393009593930088888800BCBCBC00CBCBCB00DADA
      DA00EAEAEA00FBFBFB000000000000000000FFFFFF00D6D4D300C1533300F07C
      3600FE973C00FE9C4300FEA64A00FEAE5000FEB65700FEBE6300FEC67000FECE
      7F00FED68B00FEDC9600FEE09E00FEE2A1000000000000000000FBFBFB00F3F3
      F300EBEBEB00E4E4E400DCDCDC0095959500C8C5C500B3B1B100D3D3D300E1E1
      E100E0E0E000DFDFDF00DEDEDE00DEDEDE00DEDEDE00D4D4D400A7A7A7008E8E
      8E008B8B8B0088888800868686008383830082828200808080007F7F7F007D7D
      7D0081818100A7A7A700CCCCCC00CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00B2B1B100CCC9C900CDCAC90088888700BDBDBD00CECECE00DEDE
      DE00F0F0F000FEFEFE000000000000000000FFFFFF00F4F4F400AF5F4900E977
      3B00FE994200FE9F4800FEA64E00FEAE5500FEB65A00FEBD6200FEC46D00FECB
      7900FED18400FED58D00FED89200FEDB9600000000000000000000000000FCFC
      FC00F3F3F300ECECEC00E3E3E30098979700CBC7C700B8B6B600D8D8D800E6E6
      E600E4E4E400E3E3E300E2E2E200E1E1E100E1E1E100CFCFCF009B9B9B008F8F
      8F008B8B8B0087878700828282007E7E7E007979790075757500707070006B6B
      6B006767670089898900C9C9C900CECECE00CECECE00CECECE00CECECE00CECE
      CE00CECECE00B4B3B300D6D2D100CCC9C8008C8C8C00CDCDCD00DFDFDF00F2F2
      F200FDFDFD00000000000000000000000000FFFFFF00FFFFFF00A4756900E374
      4700FE9F5000FEA45500FEAB5B00FEB26000FEB86500FEBE6A00FEC47200FECA
      7B00FECF8400FED28900FED58E00FED690000000000000000000000000000000
      0000FEFEFE00FAFAFA00F3F3F3009F9E9E00C8C5C400B8B6B600DCDCDC00EBEB
      EB00E9E9E900E8E8E800E7E7E700E6E6E600E5E5E500E4E4E400E0E0E000DDDD
      DD00DCDCDC00DBDBDB00DADADA00D9D9D900D8D8D800D6D6D600D5D5D500D3D3
      D300D2D2D200D4D4D400D2D2D200CECECE00CDCDCD00CDCDCD00CECECE00CECE
      CE00CECECE00B4B3B300D5D0CF00CAC7C6009C9C9C00F0F0F000FBFBFB000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00AB969000DD70
      5000FBA26000FEAE6600FEB26A00FEB86E00FEBD7400FEC37800FEC87B00FECC
      8100FED08700FED28D00FED59000FED591000000000000000000000000000000
      00000000000000000000FEFEFE00B7B7B700C4C0BF00B8B6B500E1E1E100F0F0
      F000EEEEEE00EDEDED00ECECEC00EBEBEB00EAEAEA00EAEAEA00E9E9E900E8E8
      E800E7E7E700E6E6E600E5E5E500E4E4E400E3E3E300E2E2E200E1E1E100E0E0
      E000DFDFDF00DEDEDE00DDDDDD00D9D9D900D3D3D300CECECE00CDCDCD00CECE
      CE00CECECE00B4B4B300D3CFCD00C5C2C100BEBEBE0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00D1CCCB00D071
      5500ED945D00FAA76400F8AB6700F8B06C00F8B57100F8BA7600F8BD7A00F8C2
      7C00F8C57F00F8C78100F8C88400F8C8850000000000E4E3E300DEDDDD00D3D2
      D200C6C5C500DCDBDB00DBDADA00B8B7B700C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200C0BDBC00B8B6B600E6E6E600F3F3
      F300F2F2F200F1F1F100F0F0F000F0F0F00000000000EEEEEE00EDEDED00ECEC
      EC00EBEBEB00EBEBEB00EAEAEA00E8E8E800E7E7E700E6E6E600E5E5E500E4E4
      E400E3E3E300E2E2E200E1E1E100E0E0E00000000000D8D8D800CFCFCF00CDCD
      CD00CECECE00B4B4B300D2CDCC00C3BFBE00C3C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6E5E400E7E5E500E0DEDD00D3D2
      D100C7C6C600DDDCDC00DEDDDD00BBBABA00C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200BEBBBA00B8B7B600E9E9E900F7F7
      F700F5F5F500F5F5F500F4F4F400F3F3F300F3F3F300F2F2F200F1F1F100F1F1
      F100F0F0F00000000000EEEEEE00EDEDED00ECECEC00EBEBEB00EAEAEA00E9E9
      E900E8E8E800E7E7E700E6E6E600E5E5E500E4E4E400E3E3E300DDDDDD00D3D3
      D300CFCFCF00B5B4B400D1CCCB00C2BEBD00C3C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E9E6E600E9E6E600E1DFDE00D4D2
      D200C9C7C700E0DEDD00E2DFDF00BFBDBD00C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200BCB9B800B9B8B800EFEFEF00FBFB
      FB00FAFAFA00F9F9F900F9F9F900F8F8F800F8F8F800F7F7F700F6F6F600F6F6
      F600F5F5F500F4F4F400F4F4F400F3F3F300F2F2F200F1F1F100F0F0F000F0F0
      F00000000000EEEEEE00EDEDED00ECECEC00EBEBEB00EAEAEA00E9E9E900E4E4
      E400D9D9D900B7B7B700CFCBC900C0BCBB00C3C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBE8E800EBE8E800E3E0E000D5D3
      D200CAC8C800E1DFDE00E5E2E200C3C1C100C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200BAB7B700B4B2B200D4D4D400DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DCDCDC00DCDCDC00DCDCDC00DBDBDB00DADA
      DA00DADADA00DADADA00D9D9D900D9D9D900D8D8D800D8D8D800D7D7D700D7D7
      D700D6D6D600D5D5D500D4D4D400D4D4D400D3D3D300D3D3D300D2D2D200D1D1
      D100CDCDCD00AFAEAE00CDC9C800BEBBBA00C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F2EFEE00EEEBEA00E5E1E100D7D4
      D400CBC9C900E3E0E000E9E6E500C7C5C400C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200B9B7B600CDC9C9009E9D9D007F7F
      7F00C1C1C100CDCDCD00CBCBCB00CDCDCD00C8C8C800BFBFBF00BDBDBD00BBBB
      BB00BCBCBC00BFBFBF00BEBEBE00C5C5C500CCCCCC00CDCDCD00CCCCCC00CACA
      CA00C8C8C800C6C6C600BFBFBF00C1C1C100C3C3C300BBBBBB00B2B2B2007271
      71006A6B6B00C1BEBD00DCD7D600BBB8B700C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F4F400F4F2F100E8E4E400D9D6
      D500CDCACA00E5E1E100EDE9E900CCC8C800C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200B7B5B400E1DEDD00A6A6A6008081
      8200EAEAEA00F1F1F100EFEFEF00F2F2F200E5E5E500D9D9D900D9D9D900DADA
      DA00D9D9D900DADADA00DADADA00DCDCDC00DFDFDF00E4E4E400E9E9E900EBEB
      EB00EBEBEB00EBEBEB00E9E9E900E7E7E700E6E6E600D7D7D700DFDFDF007776
      760050525300E0DCDB00E4DFDE00B9B6B600C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D8D6D500D7D5D500D1CECE00D3CF
      CF00C9C6C600E7E2E200F1ECEC00D0CDCC00C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200B5B4B300DFDBDB00A2A2A300999A
      9B00F2F2F200EEEEEE00EEEEEE00EFEFEF00DFDFDF00D8D8D800D8D8D800D8D8
      D800D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900D9D9D900DADA
      DA00DADADA00DADADA00E1E1E100E8E8E800E5E5E500D7D7D700F1F1F100A1A1
      A1004B4D4E00DDDAD900E2DDDC00B8B5B500C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCC8C800CBC8C700CBC8C700CDCA
      C900D1CDCD00EEE9E800F4EFEE00D3CFCF00C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200B4B3B300DCDAD900AAAAAA00BDBE
      BE00E5E5E500ECECEC00EFEFEF00ECECEC00DADADA00D8D8D800D8D8D800D8D8
      D800D8D8D800D8D8D800D9D9D900D9D9D900D9D9D900DADADA00DADADA00DADA
      DA00DADADA00D7D7D700E2E2E200EAEAEA00E1E1E100DDDDDD00F6F6F600D0D0
      D0005D5F6000DAD7D700E0DCDB00B7B5B400C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3EDEC00F3EDEC00F3EDEC00F2ED
      EC00F2EDEC00F3EDEC00F4EFEE00D5D0D000C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200B3B2B200D9D7D600B9B9B900DBDB
      DC00E3E2E200EBEBEB00F0F0F000E7E7E700D8D8D800D8D8D800D8D8D800D8D8
      D800D8D8D800D9D9D900D9D9D900D9D9D900D9D9D900DADADA00DADADA00DADA
      DA00DADADA00DCDCDC00E9E9E900ECECEC00DBDBDB0000000000F5F5F500ECEC
      EC008E909100D8D5D400DFDBDA00B6B4B300C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFDCDB00DEDCDB00DEDCDB00DEDC
      DB00DEDBDB00D9D7D700DBD8D800AEACAB00D1D0D000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200B2B2B200D3D2D100C9C9C800ECEC
      EC00F0F0F000EEEEEE00F0F0F000E2E2E200D7D7D700D7D7D700D8D8D800D8D8
      D800D8D8D800D8D8D800D9D9D900D9D9D900D9D9D900D9D9D900DADADA00DADA
      DA00DADADA00E0E0E000F0F0F000EDEDED00D4D4D400DDDDDD00F2F2F200F4F4
      F400C6C6C600D9D7D700DDDAD900B6B3B300C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6EFEE00F6EFEE00F6EFEE00F3ED
      EC00E2DEDE00D0CDCD00A6A4A300D0D0D000FDFDFD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200B2B1B100CBCACA00C4C3C300E3E3
      E300EAEAEA00EEEEEE00F1F1F100EDEDED00E8E8E800E3E3E300DEDEDE00DADA
      DA00D8D8D800D8D8D800D8D8D800D8D8D800D9D9D900D9D9D900DADADA00DADA
      DA00DADADA00E6E6E600F4F4F400EEEEEE00D9D9D900EFEFEF00F3F3F300F2F2
      F200DDDDDC00DBD9D900DBD9D800B5B3B300C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6EEED00F5EEED00F3ECEB00DFDB
      DA00C8C5C500A7A5A500E2E2E200FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200B1B1B100D2D1D100BEBEBE00BBBB
      BA00B6B6B600CDCDCD00D8D8D800DEDEDE00E9E9E900EDEDED00F0F0F000EEEE
      EE00EBEBEB00E6E6E600E1E1E100DDDDDD00DBDBDB00D9D9D900D9D9D900D9D9
      D900DBDBDB00EBEBEB00F5F5F500E8E8E800DBDBDB00E3E3E300D7D6D600D2D1
      D100BFBEBE00DAD8D800DAD8D800B4B3B200C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B7B5B500B8B5B500B7B4B400B0AD
      AD00A6A4A400EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200B2B2B200D6D5D500CCCBCB00CDCD
      CD00B8B8B800DBDBDB00D9D9D900C3C3C300C6C6C600CACACA00D5D5D500DCDC
      DC00E3E3E300EBEBEB0000000000F0F0F00000000000EBEBEB00E5E5E500E1E1
      E100E1E1E100F0F0F000F4F4F400DEDEDE00D3D3D30000000000CDCCCC00DBDA
      D900C6C5C400DDDCDB00D9D7D700B4B3B300C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC00CCCCCC00CCCCCC00D1D1
      D100F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200B4B3B300D8D7D700CCCCCC00CECE
      CE00BFBFBE00DDDDDD00E6E6E600CACACA00E3E3E300E7E7E700E4E4E400DFDF
      DF00D8D8D800D5D5D500D5D5D500D8D8D800DBDBDB00E6E6E600EEEEEE00F2F2
      F200F2F2F200F3F3F300F2F2F200D8D8D800E5E5E500E6E6E600D1D1D100D9D9
      D800C5C4C400DBDADA00D8D7D600B4B3B300C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200B7B5B500DBDAD900CECDCC00D0CF
      CF00CCCBCB00D7D6D600D7D7D700C5C5C500E1E1E100F1F1F100EEEEEE000000
      0000EAEAEA00DEDEDE00D0D0D000C1C0C000BBBBBB00C5C4C400CDCDCD00D3D3
      D300DCDCDC00E4E4E400E7E7E700CACACA00CFCFCF00CFCFCF00D2D2D200D5D5
      D500C4C4C400DAD9D900D7D7D600B4B4B400C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C2C2C200BAB8B800DEDCDC00CFCECE00D2D0
      D000DAD9D900EEECEC00EEEDEC00E5E4E300DADADA00E7E7E700DADADA00D2D1
      D100CECDCD00D2D1D100DAD9D800E2E1E000E6E4E400E6E5E500E4E2E200E0DF
      DF00D8D8D700D3D2D200CFCFCE00DBDADA00E3E2E200E3E2E200DDDCDC00D3D2
      D200C4C4C400DADADA00D8D7D700B5B5B500C2C2C200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C2C2C200BDBBBA00E1DEDE00D1CFCF00D4D2
      D200DFDEDD00F0EFEF00F1EFEF00EEEDED0000000000E0DEDE00E0DEDE00C8C7
      C700BDBBBB00BBBAB900B9B7B700B6B5B500B4B2B200B1B0B000AFAEAE00B1B0
      B000CDCCCC00E5E4E400E5E3E300E5E4E3007C7875007F7875007B7875007975
      710078726F00625E59005C59520057505000514D45003A33300072685F00FDFC
      FB0000000000000000000000000000000000000000000000000000000000FAFA
      FA00E0E0E000CFCFCF00C3C3C300BCBCBC00B8B8B800BBBBBB00C2C2C200D1D1
      D100F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C2C2C200C0BEBD00E5E1E100D2D0CF00D7D4
      D400E4E2E200F3F2F100F3F1F100F3F1F100F2F0F000F3F1F100E8E7E700C3C2
      C200B9B7B700B4B3B300AFAEAE00ABAAAA00A6A5A500A1A0A0009C9B9A009897
      9700B7B5B500E6E4E300E7E5E500E7E5E500E9881C00E5851800E6871800E084
      1500E3800E00E07D1000DC7B1100DB760900D9730A00D36C0500BF4F0000B972
      3300000000000000000000000000000000000000000000000000FBFBFB009D9D
      9D00BABABA00B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9B900B9B9
      B90097979700FCFCFC0000000000000000000000000000000000000000000000
      0000000000000000000000000000C2C2C200C4C1C100E8E4E400D4D1D000D9D6
      D500E7E5E500F6F4F400F6F4F400F5F4F300F5F3F300F5F3F200F4F2F200F2F1
      F000F0EFEE00F0EEEE00EFEEEE00EFEDED00EEEDEC00EDECEC00ECEBEA00ECEA
      EA00EEECEC00EDEBEB00EAE8E800E9E6E600E69F5000E49E4B00E39D4900DF97
      4600DD964600DA913F00D98C3700D3883500CF853000CC7E2F00BF600000F7E8
      D60000000000000000000000000000000000FEFEFE00EDEDED00DBDBDB00A6A6
      A600D1D1D100CDCDCD00CECECE00CECECE00CECECE00CECECE00CECECE00CECE
      CE008F8F8F00C2C2C200E5E5E500000000000000000000000000000000000000
      0000000000000000000000000000C2C2C200C8C5C400ECE7E700D5D2D100DAD7
      D600E9E7E700F8F6F600F8F6F600F8F6F600F8F6F500F7F5F500F7F5F400F6F5
      F400F6F4F400F6F4F300F5F3F300F5F3F300F5F2F200F4F2F200F4F2F100F3F1
      F100F3F1F000F2F0F000F1EFEF00EEEBEB00FDA12E00F49F2C00EC983400E39A
      4700E19C4700DD974300DA924000D68E3B00D2883600CE822F00CB6D0600D5CA
      BF000000000000000000000000000000000000000000FAFAFA00A6A5A500C5C5
      C400E5E5E500E2E2E200B9B9B900B2B2B200A7A7A700A1A1A100CECECE00CDCD
      CD00C2BFBF009D9D9D00F9F9F900000000000000000000000000000000000000
      0000000000000000000000000000C2C2C200CCC8C800F0EBEA00D6D3D200DCD8
      D700EBE9E900FAF8F800FAF8F800FAF8F800F9F8F700F9F7F700F9F7F700F8F6
      F600F8F6F600F8F6F500F7F5F500F7F5F500F7F4F400F6F4F400F6F4F300F5F3
      F300F5F3F300F5F2F200F5F2F200F4F2F100FFF1BE00FFE8C000FFE0AE00F9AA
      3E00E8A45000E39F4B00DF9A4700DB954200D78F3D00D3893800E18C33007A3C
      00003E0800000000000000000000000000000000000000000000DBDBDB00CCCC
      CC00F1F1F100EFEFEF00EDEDED00EBEBEB00E7E7E700E4E4E400E1E1E100D6D6
      D600C0BDBD00DBDBDB0000000000000000000000000000000000000000000000
      0000000000000000000000000000C2C2C200D1CCCB00F4EEED00D8D4D300DEDA
      D900EDEBEB00FCFBFA00FCFAFA00FBFAFA00FBF9F900FBF9F900FBF9F900FAF9
      F800FAF8F800FAF8F800FAF8F700F9F7F700F9F7F700F9F6F600F8F6F600F8F6
      F500F7F5F500F7F5F500F7F5F400F7F4F400102A4D0000184500728DB100FFC4
      4C00ECAD5A00E9A75200E5A14D00E09C4800DC964300D58F3D00DA913D00D882
      2300E07B1D000000000000000000000000000000000000000000DBDBDB00C5C5
      C400E3E3E300E1E1E100DFDFDF00DFDFDF00DDDDDD00DBDBDB00D8D8D800D6D6
      D600BDBBBA00DBDADA0000000000000000000000000000000000000000000000
      0000000000000000000000000000C2C2C200D5D0D000F9F2F100D8D3D300D7D2
      D200DEDBDB00E2E0E000E2E0DF00E2E0DF00E2E0DF00E2E0DF00E2DFDF00E1DF
      DF00E1DFDF00E1DFDF00E0DFDF00E0DFDE00E0DEDE0000000000DEDCDC00DDDA
      DA00DCD9D900DBD9D800DAD7D700D9D7D6009E91950095A1AF0069747B00FFCC
      3F00F4B46000EEAD5800E9A75300E5A24E00E09B4800DB954000DE944500C479
      2200C67C2F000000000000000000000000000000000000000000DADADA00CBC9
      C900F0F0F000E1E1E100D9D9D900DADADA00DFDFDF00E3E3E300E8E8E800E1E1
      E100EAE5E400DADADA0000000000000000000000000000000000000000000000
      0000000000000000000000000000C2C2C200D9D3D200FBF4F300E7E1E000D1CC
      CB00D1CCCC00D0CCCB00D0CCCB00D0CCCB00D0CCCB00D0CCCB00D0CCCB00CFCB
      CB00CFCBCB00CFCBCB00CECBCA00CECBCA00CFCBCA00CECACA00CECACA00CDCA
      C900CDCAC900CDC9C900CCC9C800CCC8C8000000000000000000516EA600FFC0
      4700FCBC6800F3B45F00EEAE5900EAA85400E5A14D00E09B4700DD9A4500CA78
      2700C88134000000000000000000000000000000000000000000DADADA00CBCA
      CA00F0F0F000DEDEDE00D8D8D800D8D8D800D9D9D900DBDBDB00EEEEEE00EEEE
      EE00E0DDDC00DADADA0000000000000000000000000000000000000000000000
      0000000000000000000000000000C2C2C200DAD4D300FBF3F300F9F2F100F9F1
      F000F8F1F000F8F1F000F8F0F000F8F0EF00F7F0EF00F7F0EF00F7F0EF00F7EF
      EE00F6EFEE00F6EFEE00F6EFEE00F5EFEE00F5EEEE00F5EEEE00F5EEED00F5EE
      ED00F4EEED00F4EEED00F4EDED00F3EDED00642B000067370000784C1200FFE1
      7200FFC36C00F8BB6500F3B45F00EEAE5900E9A75300DD9E4C00E6A34F00CF84
      2D00D18739000000000000000000000000000000000000000000DADADA00D5D4
      D400E0E0E000CECECE00DBDBDB00E7E7E700EAEAEA00E7E7E700E4E4E400D7D7
      D700DEDDDD00DADADA0000000000000000000000000000000000000000000000
      0000000000000000000000000000C8C8C800B8B5B500DDDAD900DDDADA00E0DD
      DD00E0DDDC00E0DDDC00E0DCDC00E0DCDC00E0DCDC00E0DCDC00DFDCDC00E0DC
      DC00DFDCDC00DFDCDC00DFDCDC00DFDCDC00DFDCDC00DFDCDC00DFDCDB00DFDC
      DB00DFDCDC00DFDCDB00DFDCDB00DFDCDB00FFFFB100FFFFA600FFEB8E00FFD3
      7A00FFC87100FFC47000F7C06400F2B66300F0B45800F1A75100EAA75000CE87
      2C00D48B42000000000000000000000000000000000000000000DADADA00DAD8
      D800EAE8E800DFDFDF00DADADA00D5D4D400DDDCDC00D7D7D600D6D6D600DDDD
      DD00DCDCDC00DADADA0000000000000000000000000000000000000000000000
      0000000000000000000000000000F9F9F900B5B5B500AEACAC00D6D3D300EFE9
      E800F9F1F000F9F1F000F9F1F000F9F1F000F9F1F000F9F1F000F8F1F000F9F1
      F000F8F0F000F8F0EF00F8F0EF00F8F0EF00F8F0EF00F8F0EF00F7F0EF00F7EF
      EF00F7F0EF00F7EFEF00F7EFEE00F6EFEE00FFD59400FFD59600FFD28C00FFC9
      8100FFCB6B00FFC66C00FCB66300FFBC6100FFB13700EF9C3100FFB44100D48B
      3400D6944B000000000000000000000000000000000000000000DBDADA00E0DD
      DC00F5F3F300F4F2F200E0DFDF00D3D2D200C8C7C700D8D6D600E8E6E500E5E3
      E300E2E0E000DADADA0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FDFDFD00CDCDCD00A4A2A200CFCB
      CB00ECE6E500F8F0EF00F8EFEE00F8EFEE00F8EFEE00F8EFEE00F8EFEE00F8EF
      EE00F7EFEE00F7EFEE00F7EFEE00F7EFEE00F7EFEE00F7EFEE00F7EFEE00F7EF
      EE00F6EEED00F6EEED00F6EEED00F6EEED00FFE5B100FFDFA800FFDA9C00FFD7
      9100FFD08700FFCA7300FFB76200FFD046007F7E8500008CFF00E3963600E28C
      3000DA9B55000000000000000000000000000000000000000000DBDBDB00EAE4
      E400F1F0F000F1EFEF00F0EEEE00F0EEEE00EEECEC00ECEAE900EAE8E800E4E1
      E100EDE9E800DBDBDB0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00D9D9D900A19F
      9F00B1AFAF00B7B4B400B7B4B400B7B4B400B7B4B400B7B4B400B7B4B400B7B4
      B400B7B4B400B7B4B400B7B4B400B8B5B400B8B5B400B8B5B400B8B5B400B8B5
      B400B7B5B400B7B5B400B7B5B400B7B4B400FFE69D00FFDF9F00FFDFA000FFE9
      A300FFE0A600FFE69700FFDA8F00FFE76A00FFD45500CCB8A400FFC44200E499
      3B00E0A25E000000000000000000000000000000000000000000DADADA00F5EE
      ED00F0E9E900EFE9E800EFE9E800EEE8E800EDE8E700EDE7E700ECE7E600ECE7
      E600EFEAEA00DADADA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00EFEF
      EF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00000000000000000000000000FFFA
      ED00FFFCEA00FFEFD500FCE4C900FBE1C100FFD19600FFC56100EDAD6400DD95
      4100ECB56400000000000000000000000000000000000000000000000000B5B4
      B300F8F0EF00F8F0EF00F8F0EF00F8F0EF00F7EFEE00F7EFEE00F6EEED00F5EE
      ED00C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EB660000EB660000EB660000EB66
      0000EB660000EB660000EB660000EB660000EB660000EB660000EB660000DD79
      0000F1BB78000000000000000000000000000000000000000000000000000000
      0000F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4F400F4F4
      F400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000085645A0084645A008364
      5D0085676300876E6C008D7D7C0099959500B6B6B600DADADA00F7F7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000F9C8
      8B00FFC13E00CBCCDD00F9ECE400F5610000FF950300FF980000FF970000FF9B
      0000FFAA0000FFA70000FFBD2100FFE54E0000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFB00FFFF6700FFFF8F00B0F1FF00FFA2
      0200F3C07D00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FF904100FF904000FF8D3E00FF88
      3B00F97F3500ED6B2900DB572100BF441B008C433000776A6800ABABAB00E7E7
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FEC9
      8F00FFE45C00AE745900E3FFFF0000000000E1FFFF00D4FFFF00DBFFFF00D1FF
      FF00C7FFFF00CEEBFF00C8DCFF00C9CFFF00A9A5D600FFD27600FFF6CB00FFD4
      A100FFCE9900FFC78100FFC27600F2A24300D6DEFF00FFFFFF0050499B00FFB1
      0000F7BE8600FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000A09A9200393939005452490058514C0059504900625B51007470
      6B0079736F007A7270007C7873007F797500FFBE6800FFB96800FFB96700FFB9
      6600FFBA6400FFB86200FFB45D00FFA95300FE823600DC4813007A4537009292
      9200E6E6E600FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFD1
      8D00FFFF770092573100D3BECC0000000000FFF8FF00FFE5FA00FFE0C000FFF6
      FF0000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001D145700FFDD
      2D00FBC18200FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000EED6BF00EB902900F9A13D00F1993200ED963100ED952C00EE962E00EC95
      2A00EB922400EC912300E98F2100E78F2000EFAB6A00FEC16F00FFC17300FFB9
      7000FFB86E00FFB76C00FFB56800FFB56500FFBA6500FFAA5600F56120007E45
      3500A9A9A900F6F6F600FFFFFF00FFFFFF00000000000000000000000000FFCC
      9400FFFF9C00A66E53003F0C5B00FFFF0A00FFFF0000FFFFB800FFE05800FFFF
      F800FA960000FFFC0000FFFFE900FFFF1D00FFFF7700FFFF7400FFFF7400FFFF
      6100FFFF4100FFFF3B00FFFF3200FFFF1D00FFFF0000FF7B35001C186500FFFF
      5500FAC27C00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000F5E5D500E5973D00E0964000E29A4400E39E4700E59F4800E7A34A00E8A2
      5000E7A34D00E8A45100E7A35000E7A55000170DA2007B556D00E4AA7400FFC3
      7E00FFC07E00FFBE7A00FFBD7600FFBA7300FFB86E00FFBD6F00FFB06000DD51
      1B007D706D00E1E1E100FFFFFF00FFFFFF00000000000000000000000000FFCE
      9600FFFF9F00854E3600000000000000000000000000FFEABF00CFC1F200F8FD
      FF00B4816100FF47000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000001D00FFFE
      7200FFC37600FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000E3E4E400FAAF4F00E29D4700E4A04B00E6A34E00E8A65100EAA85300EBAA
      5400EDAB5400F6A94600F8A43700FCA534000000EF000E14C6003A2C8C00F0B5
      8300FFCB8D00FFC58800FFC48500FFC48300FFC17E00FFBB7600FFC27700FD85
      40008A574700D0D0D000FFFFFF00FFFFFF00000000000000000000000000FFD4
      9800FFE59200FFFDA200FFECA400FFFFC200FFD9AD00FFE19900CC943E00DEA1
      4200D3B49700FFFFFD000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFA00FFFFF800FFFFE200FFFFDA00FFFFB300FFFC8A00FFE07A00FFD3
      5F00FFC57B00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000663B
      110070370000F6AD4F00EAA75100EAA95300ECAC5600EFAF5900F0B15B00F3B3
      6000FBB34F00FFD18900FFEDCA00FFF2B9000000D7003132E200453EAD00EEBD
      9200FFCD9700FEC99700FEC18B00FDB97E00FDB97C00FFC48600FEC17E00FFA9
      620099543B00C7C7C700FFFFFF00FFFFFF00000000000000000000000000FFD4
      9F00FFD38300FFDB9300FFF4A000FFFFAB00FFFDAC00FFFFB000FFFCB200FFFF
      C700FFFFAE00FFFAA300FFFF9B00FFFF8D00FFFC8700FFFC8400FFFA7900FFE9
      7E00FFEC7B00FFE67600FFDB7500FFD96B00FFD56700FFCC6700FFC76500F8B5
      5500FFC17B00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000E089
      2D00E7922F00F4AE5D00EEAD5700F0B15A00F3B45E00F5BA6100F7BA6300FABC
      6B00FFCA5400CDBAA300002166000E284B000505E1003234D2005D509E00F9CE
      A000FFDDB600FFD9A800FFC98F00FFB77300FCAB6A00FFC99200FDC38700FFBC
      7900A15A3D00C6C6C600FFFFFF00FFFFFF00000000000000000000000000FFE9
      B400FFECAB00FFEBB400FFEABD00FFECC900FFF2D500FFF8E100FFFFE600FFFF
      ED00FFFFFD00FFFFF700FFFFF900FFFCFF00FFFDF700FFFCF700FFFCE700FFEC
      D700FFFAD500FFF9C200FFEEBE00FFF7A900FFF6A600FFEF9700FFEA8E00FFE3
      8700FFF69C00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000CC88
      3B00D5873000F1B45D00F3B45E00F5B76100F8BB6300FBBF6800FFC26A00FFC5
      6C00FFE06400AD8A5C00778BB000A59A93002929FF004F52FB006F61B500FCDD
      B000FFE4C200FFDCA800FCCF9500FEC27F00FEB97B00FECF9F00FBC28C00FFC4
      8800A35F4300CACACA00FFFFFF00FFFFFF00000000000000000000000000D590
      3E00F0B66000F1B16300F9B76800FEBF6600FFC06F00FFC66B00FFC57600FFC8
      7B00FFC17800FFC98300FFCC7D00FFCD8600FFC88000FFC87500FEB66F00EEBA
      6400ECAC5F00EBA55200DD995100DC944F00D6844500CE7E3F00CA833D00CD80
      3B00D5903E00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000D18D
      4500DA903700F6B96300F8BE6300FBBF6800FFC36B00FFC96F00FFCB7400FFCB
      7600FFED7900795B4400E6FFFF00000000003333D1004A4BD6008A79B100FFEA
      C100FFE4BF00EBDEAD008DBD6B00F0C78F00FFC29000FDD1A700F8C29200FFCA
      96009F634A00D3D3D300FFFFFF00FFFFFF00000000000000000000000000E3A2
      5700F1B25B00F8B25500FFBE5C00FFC25B00FFC56800FFC97100FFCB7000FFD0
      7300FFC67600FFCE6C00FFCB6B00FFC76600FFC45D00FFBB4B00FFBB4600FFB1
      4600FAA94C00ECAB4200EA984300E2963E00D5883800D3852900CE7E2D00D187
      3100E3A25700FFFFFF00FFFFFF00FFFFFF00000000000000000000000000D692
      4A00DE903B00FFC37000FFC66900FFC67000FFCD7600FFCC7D00FFCE7D00FFCA
      7F00FFE8870087612C00653D0300673300003939EC004748CC00A895B300FFF4
      D300FFE6C000F8E4BB00D5D6A000FACDA200FFCBA200F7CAA300F9D0A800FFC0
      90009C6B5700E3E3E300FFFFFF00FFFFFF00000000000000000000000000E29A
      4900F8C27300FFC36B00FFCB7200FFCD7F00FFD28900FFD99300FFD89700FFDE
      9D00FFDC9D00FFDF9700FFD28D00FFD48E00FFD78900FFD49200FFD69500FFD7
      8700FECB7500F6B96400EFB25E00E9AD5900E4A25000DD9C4900D9964A00E0A2
      4E00E29A4900FFFFFF00FFFFFF00FFFFFF00000000000000000000000000DD9B
      5300E2994300FFCF7200FFC87100FFCB7B00FFCF7F00FFD07E00FFD17C00FFD6
      9000FFE6A700FFEFBE00FFFFB600FFFFBB004040FD005857EC00C0B2CE00FFFD
      E800FFF1E100FFEEDD00FFEDDB00FFE9D300FEE6CD00F0BF9E00FEE6C700FBA2
      7100A2897F00F6F6F600FFFFFF00FFFFFF00000000000000000000000000F8DE
      C000FBC36A00FFCA7400FFCD7C00FFD18300FFD58900FFD98900FFDA8800FFDB
      9300FFE29D00FFE6AB00FFECB700FFEEC000FFEABA00FFE0AF00FFD89A00FFD2
      8600FFCC7900FDC06B00F3B45B00ECAD5800E6A55400E1A05100DE9F5100E2A5
      5700F8DEC000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000DF9E
      5700E69C4500FFD77A00FFCB8000FFCE7C00FFCF7400FFCC7E00FFDFA400FFF0
      C000FFE4B300FFDFA900FFD8A200FFDCA0003232CE004846BD00CDC7DB00FFFF
      FE00FFFCF800FFF7EE00FFF4E800FFF7E900F4D6C000F1CAAF00FFEED400D57E
      5300C4C3C300FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFBB5C00FFC76C00FFC66700FFC87700FFD98E00FFE3A800FFEDC700FFF5
      DB00FFF6E500FFF7E100FFF1D400FFEEC600FFEABA00FFE5AD00FFDFA300FFD7
      9300FFD18600FEC97400F7BC6600F0AF5B00EAA75500E2A65800E6AA5D00DB9D
      4C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000E4A8
      5C00E9A24100FFD67B00FFC06500FFCB6D00FFDDA600FFF3D100FFE8CF00FFEA
      BF00FFE9BC00FFEFBE00FFEBC300FFE9BA002322C7003C38A900DAD5DA00FFF7
      E900FEE5D800FFFEFD00FFFCF800FDF7F000EABCA800FCF2E300FFC6A300AB85
      7400F5F5F500FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFBD6100FFE8B700FFF2D400FFFEF5000000000000000000FFFEF800FFFE
      F100FFFCEE00FFF9E800FFFAE200FFF4DC00FFF5DA00FFF2CE00FFE6C000FFE6
      B300FFDFAB00FFD99600FCCF8700F5C37B00EEB46A00E9AE6600EBB66D00D798
      3B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000ECB0
      6600EFA74600FFE08700FFDFAD00FFFAF100FFF6ED00FFF6D000FFEEC800FFEC
      C400FFE1B800FFE2B400FFEAAA00FFE59B000007D6002517BB00E1C6BA00FFD7
      AD00FEBD8B00FDD7C500FFFFFF00ECCEC700ECCFC700FFFBEE00D2855F00D6D3
      D300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFDDB000FFD29600FFD8A100FFDBA400FFE0AB00FFE6B400FFE7BD00FFF1
      C900FFF5D000FFF5D700FFF3CE00FFEBC500FFE8B600FFE0AA00FFD89E00FFD2
      9000FFCB8200FFC67300FDBB6D00F5B66B00EBB26700E4AD6900DB9D4D00E1BC
      8E00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000EEBB
      7700F3AD4A00FFEEDB00FFFFF600000000000000000000000000000000000000
      0000000000000000000000000000000000000540D4000020CB0083688900F8B7
      7D00FFD89D00FFC09100F5C6B300DDA99D00FFFFFD00F0A57E00C3B7B100FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000F3C0
      7D00FFAB3500EB660000EB660000EB660000EB660000EB660000EB660000EB66
      0000EB660000EB660000EB660000EB6600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FBCAB100FFC8A700ECBFAD00ED8E7200E8E8
      E1008DB6C1004990B400378FBE0044A2C400000000003598BE00227FB1004788
      A700A1AFA300F9BE8900E4805E00FBD0B900F4AF8500C4B2A900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FDFDFD00E2E2E200B7B1B1009D8D8C00917A
      77008B6F6A008869620086665C0085645A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFDCC800FFB37F00BC8C7A004F9F
      C80054ADDA0068BCE6006FBEE4006CB9E00064B4DB005CAFD6004FA8D3003898
      CB001D87BF004E849E00DE956D00DE926500CDC2BD00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000EFEFEF00B29F9B00AA584300CD4E2100E15C2200F171
      2C00FB823700FF893C00FF8E3E00FF8F4000D9D9D900F5F5F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000CAC1BC00599EC1007BC9
      F10088CDF00085CCF00085CBEF0082C9ED007DC6EA0074C0E50069B7DE005BAD
      D6004DA3CE002D95CB00437490007A726F00DCDCDC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000EAE9E900BB725D00EF561B00FF8D3F00FFAD5500FFB45D00FFB8
      6000FFB96300FFB96400FFB86600FFBA68008D8D8D00AAAAAA00D4D4D400F2F2
      F200FEFEFE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1F1F200569CC50086D3F90093D4
      F6008FD2F6008FD3F6008FD2F6008ED2F5008CD1F4008ACFF20083C9EE0075C0
      E60064B4DB0056A8D1003196CB002A5F7E009C9C9C00F4F4F400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FAFAFA00CE7E6600FF752D00FFB15C00FFB86300FFB46300FFB46600FFB7
      6B00FFB86D00FFB96F00FFC26D00FBBF6B0052525200828282008B8B8B00A5A5
      A500CFCFCF00EFEFEF00FDFDFD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ACC3D0006FBEEA009ADAFB0094D5
      F90095D6FA0095D6FA0095D6FA0094D6F90092D4F80090D2F6008DD0F40087CE
      F1007BC4E80067B5DD0054A9D4002D86B700626E7500DBDBDB00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000D6BEB700FF6B2900FFB86600FFB86800FFB76B00FFBA7100FFBC7500FFBF
      7900FFC07C00FDC27D00D9A591005C43C5003F3F3F006F6F6F00818181008181
      810089898900A1A1A100CACACA00ECECEC00FCFCFC0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000073AACB0095D9FE0099D9FC009AD9
      FD009CDAFE009EDBFF009DDAFE009ADAFE0098D8FC0096D6FB0092D4F8008FD2
      F50089CFF2007BC4EA0066B5DC0048A5D60040667D00C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000EA907000FE9A5000FFBE7300FFBB7300FFBE7A00FFC07F00FFC38300FFC5
      8800FFCF8800C5998E00312EDA001216FF006464640017171700818181008080
      80008181810080808000878787009D9D9D00C4C4C400E9E9E900FBFBFB000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F5F9FB0063AEDC00A2DFFF00A0DDFF00A7E0
      FF00AAE0FF00ABE1FF00AAE0FF00A7DFFF00A1DDFF009BDAFF0098D8FC0093D5
      F9008ED2F50089CEF20077C1E7005CB4E1003A779B00ADADAD00FCFCFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000EE7D5000FDB26900FFC27E00FFC28300FFC58700FFC88D00FFCA9200FFCB
      9600FFD79900C1A098004A4CB9003233D0002F2F2F0011111100585858007877
      74007A7977008080800081818100808080008585850099999900BEBEBE00E5E5
      E500FAFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E7F1F80069B6E600AAE2FF00ADE1FF00B4E4
      FF00B8E5FF00BAE6FF00B9E5FF00B5E4FF00AEE2FF00A6DEFF009DDBFF0097D9
      FC0093D4F8008ED1F40083CAED006CBEE7003D81AA00A9AAAC00FCFCFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000F37F4A00FDBC7C00FEC48700FFC99000FFCC9500FFCE9B00FFD09F00FFD3
      A400FFDCA700D6B9A6007371D7004446F100060606000000000012100E007E71
      57007E7159006E685C007A7A7800808080007F7F7F0080808000858585009292
      9200B7B7B700E1E1E100F8F8F800000000000000000000000000000000000000
      0000000000000000000000000000EEF6FB0069B4E700B6E6FF00B9E5FF00C1E8
      FF00C6EAFF00C9EBFF00C8EAFF00C3E8FF00BBE6FF00B0E2FF00A6DFFF009BDA
      FE0096D7FA0090D2F6008ACFF20077C7EF004281AC00B7B8B900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000F4845000FEC38900F9C08900FFD19F00FFD2A300FFD5A800FFD7AE00FFD9
      B300FFE1B700E9CDB3007C76C8004648FA0034323000000000001B1710007569
      5200A49D8700887E67006F624B00716C64008080800078787800434343004848
      48003C3C3C007C7C7C00B7B7B700E3E3E3000000000000000000000000000000
      0000000000000000000000000000000000006CB2E300BDE8FF00C5EAFF00CEEC
      FF00D4F0FF00D7F1FF00D6F0FF00CFEDFF00C5EAFF00BBE6FF00AFE2FF00A2DC
      FF0099D9FC0092D5F8008FD2F4007AC9F4004A7B9E00D6D6D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000F38E6000FFCD9900F7C19000FFD6AA00FFD9B100FFDCB700FFDEBC00FFE0
      C200FFE4C500FFE6C600817AB6003B3CCC00726A64000000000050443100564A
      35005F543F008076620099917D00978B78009C8F840068625C00242322005E5E
      5E00B9B9B9003B3B3B00C3C3C300E2E2E2000000000000000000000000000000
      00000000000000000000000000000000000094C2E700A6D7F600D6F2FF00D8F1
      FF00E2F4FF00E6F6FF00E3F4FF00DAF1FF00CEEEFF00C2E8FF00B4E3FF00A6DF
      FF009BD9FD0094D5F90095D8F80062B5EA0073899A00F5F5F500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000F39E7A00FFCD9E00F6C69A00FAD1AA00FFE1C100FFE2C300FFE5C900FFE7
      CF00FFEAD300FFF0D3009D96D6004E4FF8006762560018330E00484A2A005B4C
      37005C4E39005B4E3900564C39007F7261009D8E8000A8998D0054504D006060
      61009E9E9E003D3D3D00EBEBEB00000000000000000000000000000000000000
      000000000000000000000000000000000000DEECF70068ACE200DDF7FF00E1F5
      FF00EDF9FF00F5FCFF00EFFAFF00E2F5FF00D4EFFF00C7EAFF00B8E5FF00AAE0
      FF009DDBFF0099D9FB0090D6FB004087BF00C6C7C900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000F9BFA600FDBE9100FAD9B700F3C5A400FFE8CE00FFE9D200FFECD800FFEE
      DD00FFF1E200FFFCE600A5A1CD004748E600637D550002890900085F0200165C
      0B0034551D00524E31005F513C0062543E0065584200776A58003C3934003737
      38004343430014141400AEA6A000EDEAE8000000000000000000000000000000
      0000000000000000000000000000000000000000000095C1E70098C9EF00F2FF
      FF00F1FAFF00FAFDFF00F3FBFF00E4F5FF00D5F0FF00C7EAFF00B9E5FF00AADF
      FF00A0DDFF00A0E0FF004DA3E5008E9FAF00FCFCFC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FDE8DF00F8A47700FFEFD500ECBA9C00FAE4CF00FFF1E100FFF2E500FFF7
      ED00FFFAF300FFFFFC00ACACD4003D3DC200677E590002860900096503000867
      0300086C0400077106001B6A12003B5D26005B52390067584300695C4500564E
      3E00312E27000000000092857900C3B9B1000000000000000000000000000000
      000000000000000000000000000000000000000000000000000075ADE00093C4
      EC00F4FEFF00F9FFFF00EFFBFF00E0F4FF00D3EFFF00C6EAFF00BCE8FF00B3E7
      FF009FDEFF004EA5EC007A96AF00F9F9F900FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000F8AE8B00FFDEC300F5DDCA00ECC3AF00FFFDF400FFFBF600FFF8
      F500FDE8E000FFFCF200C7C3E0003837CB006B835F0002860900096B0400096C
      06000870050006750600057C08000582090006860C002174180046622E006659
      42006F614B00685C48007A6D5A00BBB4AB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE008FBA
      E4005EA0DD00AFD6F300D6EFFC00DFF7FF00D5F3FF00C5EDFF00A8DDFD0075BD
      F4004090D8009BACBF00FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FEF1EC00FAA77C00FFFDF700E5BBAF00F3DFDA00FFFFFE00FCDB
      CE00FEDBC600FFDEBB00CBB4C4000805C900718B670002860900087206000872
      060006770800077A0700067F0A0004860B00048B0A00048F0B0004940C000B91
      0F002A791F00526437006E5F4A00958D7C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D9E6F50086B2E1005F9AD800569ADB00569CDD004F96D8005A96D4008BAB
      CD00DFE1E500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FBD3BE00FEC4A500F9F2F100DCA89C00FAD2C100FEE7
      D500FFF2D400ECA4780057519B000027D2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B3B0AF00929292008686
      86007877770066656600625F5F0062615D0069656100756F6B006E696400B9B1
      A900635D5800595756002C2B2A00110F10000000000002860900077807000779
      0700057C090006810A0004840B00058A0A00048E0C0006920D0005950C00069A
      0D00069F0D0006A40E0012981200ADC5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DAD9D7009D9C9C00A0A0
      A00092919100858484007A797900797777007B7977007A77740065615D00B1AA
      A500857A70003F3E3D004C4C4C004645460069855F0002870900067F0A000680
      0A000482090004870B00058A0A00048E0C0004900B0006950D0005990C00079D
      0E0006A00D0008A60F0007AA0E00C5E9C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400BABAB900A7A6
      A60096979700979696009B9A9A00A4A1A000ACA8A500BAB6B200D8D3CF00D9D4
      CF00B7ACA4009A8D82006C645D0059524F006F8C63000289090005860B000488
      0B00058A0A00058C0C00048D0B0006900D0006950D0005970C00079C0E0006A0
      0D0008A40F0007A70E0009AC1000C3EBC5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F7F7
      F700EEEEEE00DFDFDF00CCCCCC00C0C0C000CACACA00ECECEC00FCFCFC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000DBDAD900CAC4
      C000CFC8C100C9C1B800C6BDB500C7BDB600CCC3BD00D1CAC400D5CFCB00DBD5
      D200E0DBD900E2DEDD00D1C8C500BBADA6005C834F00038B0A00048C0C00048C
      0C00048F0C00048F0B0006930D0006940D0005970C00079C0E00079E0E0006A3
      0D0008A70F0007AB0E0009AF1000C4ECC6000000000000000000000000000000
      000000000000FEFEFE00FAFAFA00F2F2F200E5E5E500D4D4D400BEBEBE00AAAA
      AA00999999008D8D8D0076767600747474007575750090909000BBBBBB00E3E3
      E300F9F9F9000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      F900E1DEDB00CEC8C200BEB6AF00C4BBB300CCC1BC00C6C1B900ADB7A40091AB
      8D00739D7100518F5200308533000D7D12000382090004900B0006910D000692
      0D0006920D0006950D0005960C00059A0C00079B0E00069E0D0006A30D0008A5
      0F0007AA0E0009AE100009B21000C4ECC6000000000000000000FAFAFA00ECEC
      EC00DBDBDB00C7C7C700B2B2B2009F9F9F009191910088888800848484008282
      8200606060003A3A3A00474747003A3A3A006A6A6A006A6A6A00717171008585
      8500ACACAC00D8D8D800F4F4F400FEFEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F4F6F3005FB76200027D070003860900048F
      0A0005960B00059C0C00069D0C00069A0D0006970D0006920D0005960C000597
      0C0005970C00059A0C00079C0E00079D0E0006A10D0008A20F0008A70F0007AA
      0E0009AC100009B1100008B50F00C4EDC5000000000000000000EDEDED00C0C0
      C000909090006B6B6B0074747400818181007D7D7B007F7D77007D786C00736C
      5F001E1E1D00272727005F5F5E00ACACAC005A5A5B00696969006A6A6A006A6A
      6A006D6D6E007E7E7E009F9F9F00CBCBCB00EDEDED00FCFCFC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000056C65A0009AB100008AA0F0008A8
      0F0008A50F0008A20F00069F0E00079B0E0005970C0005940C00079A0E00079C
      0E00079D0E00079D0E00069F0D0006A10D0008A50F0008A60F0007A90E0009AE
      100009B1100008B40F000AB61100C4EDC6000000000000000000000000006F6F
      70004747450066665F0089888200AEAC9C00C0BCA700B2AD97008A8068007466
      4D007D72640047454300666667009C9D9D00332F26007D6F55006E6655006967
      600068696800696969006B6B6B007676760093939300BFBFBF00E6E6E600FAFA
      FA00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000055C85A0008AE0F0009AD100007AA
      0E0007A70E0007A40E0006A00D00069F0D0007A30E0009A90F0007A70E0006A0
      0D0006A10D0008A20E0008A40F0008A70F0007A80E0007AC0E0009AD100008B0
      0F0008B50F000AB611000AB71100C4EDC600FCFBFA00EDECE500D4D2C700B2B0
      A500E1E1DD00F4F4F300DCDAD300AEA99A00A9A49700908780008181A0006866
      860093877B00787068003F3F3F007C7C7C00272621008F836900968C77007C70
      59006E64510069686600676767005454540047474700494949005B5B5B00B1B1
      B100DCDCDC00F5F5F50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000006ED372000AB4110009B710000BBC
      13000CC014000DC515000ECB16000ED017000ED017000ECF17000ECF17000DCA
      16000CC0140009B6110008AE0F0007AA0E0008AD0F0008AF0F0008B20F000AB5
      11000AB611000AB711000AB71100C4EDC600D9D7CA00C4C1AC00B5B19C00BDB8
      AA00B7B1A7008B857D00868280006B6A6900915B2C009C5E2C0059467300474A
      B000887F7400B2A79E003938370019191900007BE3001260A400496C82008984
      7300948B7400A2928400837970003D3A370025252500747474007D7D7D004646
      46005C5C5C0087878700CFCFCF00F2F2F2000000000000000000000000000000
      00000000000000000000000000000000000000000000D8F4D90096E69A0053D8
      590018CE20000ED017000ED217000FD218000FD118000FD118000FD116000FD0
      17000FD017000FD017000ECF17000ECC16000BC514000ABE120009B9110009B6
      100009B6100009B610000AB61100C4EDC600C1BDB70086807800806E61007571
      6D00434140005453530053535200ADA8A500B5A19200A89F9800BBB5BD007873
      880081786C00A39B9400CFCAC70083807F000080E7000073DB000078E0000077
      DC001467A700688598009D8E800082776D0039383800878888006C6C6C001F1F
      1F00646464006363630087878700D8D8D8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFEFC00C5F1C70083E2870041D6470010CE18000ED117000DD217000FD2
      18000FD218000FD118000FD118000FD117000FD117000FD017000FD017000ECD
      16000DC714000AC0130009B81000C4EDC600CCCCDF0098634F00A37246008A85
      82006E6A6700928D8900B1ADA900DFDAD600E2DEDB00DEDAD600DAD5D2008D86
      7F00837B7200857C730098908700ACA49C000084EB000078DF00007BE2000080
      E7000085ED000089F100058BEB00267CB600163950002D2B2A001E1D1C002928
      28008E8F8F00737373008A8A8A00FCFCFC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3FCF300B5EEB80076E07B0037D5
      3F000ECF17000ED117000ED117000ECF170011CD19002DD2340052D8570075DF
      7A009AE79D00C0EFC200E9F9E900FFFFFF00DAD8E100B7B1B000D2CBC600D8D1
      CC00DDD7D300DFDAD600DBD5D000D3CDC700D2CBC600D5CECA00D8D2CE008F87
      8000857C7200898078008B8279008E847B000087EE00007DE4000081E8000083
      EA000087EE00008DF4000091F8000096FE00019BFF00058CE4001B6C9F001D37
      470034313000252423007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFFBF000C6F2C700CCF4CE00E5F9E600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E0DF00D0C8C100D1C8C100D0C8
      C100CFC7C000D6CFCA00C3BEB800A9A5A00099949100827D790095918E00968D
      8500AAA19500A19587008D82760091867C00008BF2000083EA000085EC000089
      F000008BF200008FF6000095FC000099FE00059AFF00079EFF000BA1FF000FA7
      FF00118FD9000E557E0002131C00FAFAFB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E1E000BFBBB700918E8C006E6C
      6A004F4D4C003C393700312D2A00443E3A00575049005B544D008C8681009990
      880089837D00827B740098908A0081776F00008FF5000088EF00008AF100008E
      F5000091F8000093FB000098FE00029BFF00079CFF0009A0FF000EA3FF0012A5
      FF0015A9FF0019ADFF001DB2FF00E5F1F8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CDC9C40083818000252424001F1E
      1E0025232200302D2A0036322F00423E39004D4842005750490087817B00A198
      8F005D575100564F49004A474400716D69000194F900008EF5000091F8000092
      FA000096FD000098FE000299FF00059DFF000A9EFF000DA2FF0010A5FF0012A8
      FF0017ABFF001BAEFF001EB1FF00E5F6FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6E4E200A7A4A300777777005A5A
      5A0043424100403E3D00423F3C0049444000554F4900625B5400736D6700ADA2
      9A0068635F00423E3B002F2B29001D1A19000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BCB9B800282727002524
      250041404000666463008684820099959200A49F9A00B8B4AF00BEB6AF009287
      7D00645D55004A4744006E6660001891D700000000000094FC000096FD000098
      FE000198FF00039BFF00079DFF00089EFF000BA2FF0010A3FF0011A7FF0014AA
      FF0019ABFF001DAEFF0020B2FF00E5F6FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00D6D4D300B3ADA800C7BE
      B600BEB3AA00B7ACA200B3A79D00B7ACA300BDB3AC00C3BBB400CBC2BD00D2CC
      C700CEC6C200C1B5AC00A59A91001394DA00059DFF000198FF00019AFF00049B
      FF00069BFF00089EFF0009A0FF000DA2FF000EA3FF0011A7FF0015A8FF0018AC
      FF001AADFF001FB1FF0023B4FF00E5F6FF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FCFCFC00F9F9
      F900F8F8F800FDFDFD000000000000000000D9D9D900F5F5F500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FCFCFC00E5E2
      E000CFC9C200BCB3AC00B1A59C00B4A9A100A9A9A60097A7A60084A3A8006B9D
      AC00509BB6003198C600199AD90015A5F400099FFF00059CFF00079CFF00079E
      FF000A9EFF000AA1FF000EA3FF0010A5FF0011A7FF0015A8FF0018AAFF001BAE
      FF001EAFFF0020B3FF0025B6FF00E6F6FF000000000000000000000000000000
      00000000000000000000FBFBFB00F3F3F300E3E3E300CCCCCC00B7B7B700ADAD
      AD00AEAEAE00C1C1C100DDDDDD00F4F4F4008D8D8D00AAAAAA00D4D4D400F2F2
      F200FEFEFE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C9E8F0003DB6D8003DB8DE003BC0ED0037C3
      FA0030C0FE002ABAFE002EBAFF0035BDFF002BB5FF000FA3FF0009A0FF000AA0
      FF000CA2FF000EA3FF0011A6FF0013A6FF0014A8FF0018ACFF001BAEFF001EAF
      FF0021B3FF0023B4FF0028B8FF00E6F6FF000000000000000000FDFDFD00F4F4
      F400E5E5E500CECECE00B3B3B3009797970081818100747575006F6F6F006161
      61004D4D4D0049494900525252009B9B9B0052525200828282008B8B8B00A5A5
      A500CFCFCF00EFEFEF00FDFDFD00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00DAF6FE005CD9FE0050D4FE0056D6FE005DD8
      FE0067DCFD0071E1FF0074E2FF0075E3FF0076E4FF0076E5FF0065DAFF004DCB
      FF0035BBFF001EAEFF0012A8FF0015A9FF0018ABFF001AADFF001DAFFF0021B3
      FF0024B4FF0027B8FF0029B9FF00E6F7FF0000000000F9F9F900CDCDCD00A1A1
      A100848484007575750071716E007F7E76008E8B7E008F8772007B6E58002221
      20003535350062626300969696003F3F3F003F3F3F006F6F6F00818181008181
      810089898900A1A1A100CACACA00ECECEC00FCFCFC0000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E8F9FF00C3EFFF00A1E6
      FF0082DFFF006ADCFF006EE0FF0074E3FF0077E5FF0078E5FF0078E5FF0077E5
      FF0077E4FF0075E3FF006BDDFF0054D1FF0040C4FF0030BBFF0022B3FF0023B4
      FF0026B6FF0028B8FF002ABAFF00E6F6FF0000000000FCFCFC00C0C0BE009292
      8D00A09F9900CECDC700CECEC200B2AE98009C9886007E8F89005B556D00988A
      7C003939390080818100B3B3B300272727006464640017171700818181008080
      80008181810080808000878787009D9D9D00C4C4C400E9E9E900FBFBFB000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00E2F7FF00C0EFFF00A1E8FF0083E2FF006DDFFF0072E3
      FF0075E4FF0075E4FF0074E3FF0071E1FF006FE0FF006CDEFF0066DBFF0058D3
      FF0048CBFF0039C2FF002CBAFF00E6F7FE00E7E5DE00C7C4AF00C5C2AC00D4D1
      C800AAA8A30075736D0058565000625F5D00C4CDCE00A7E0F000746F95009E91
      8500635E5A005252520083838300161616002F2F2F0011111100585858007877
      74007A7977008080800081818100808080008585850099999900BEBEBE00E5E5
      E500FAFAFA00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFEFF00DEF7
      FF00BDEFFF009EE7FF008BE3FF0089E2FF0090E3FF009BE4FF00A9E8FF00B9EC
      FF00CAF0FF00DDF5FF00F1FBFF00FFFFFF00CBCAC70087AAAF00545854003836
      36003F3E3D00555453005554540063616000CAC3BD00DBD5D20087807A009289
      7E00ADA59F00373637001212120001010100060606000000000012100E007E71
      57007E7159006E685C007A7A7800808080007F7F7F0080808000858585009292
      9200B7B7B700E1E1E100F8F8F80000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E3E600C0D0D5006A6663003F3D
      3C0051514E00565554005453530067656400CAC3BD00D8D3CF0089827B008179
      6D00B4ADA600DCD9D8009B9693000907060034323000000000001B1710007569
      5200A49D8700887E67006F624B00716C64008080800078787800434343004848
      48003C3C3C007C7C7C00B7B7B700E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EAE9E800CFC8C1008A8684008280
      7F006E6D6C00656463006C6C6C008C8B8B00CEC7C200D7D1CD008C857E00857D
      7300887F750091877D00968B7E000E88D800726A64000000000050443100564A
      35005F543F008076620099917D00978B78009C8F840068625C00242322005E5E
      5E00B9B9B9003B3B3B00C3C3C300E2E2E200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBE9E800CEC6BF008F8B88007777
      760088868400A09C9900B9B6B500DAD8D700D5D0CB00D7D0CC00928A8300887F
      75008C837B008E847C00918377000C88D6006762560018330E00484A2A005B4C
      37005C4E39005B4E3900564C39007F7261009D8E8000A8998D0054504D006060
      61009E9E9E003D3D3D00EBEBEB0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EBEAE800D1CAC400CDCAC900CFC9
      C400C1B6AE00BBB2A900C7BFB700CBC4BD00D0CAC400D7D1CC00958C84008C82
      76008F857C0091877D00938578000A88D700637D550002890900085F0200165C
      0B0034551D00524E31005F513C0062543E0065584200776A58003C3934003737
      38004343430014141400AEA6A000EDEAE800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDECEB00D8D2CE00D9D3CF00D7D1
      CD00E1DCD900E4E1DE00E5E0DD00E1DED900E2DEDB00CCC7C500988F8600746C
      650094887E00958A8000958879000A88D800677E590002860900096503000867
      0300086C0400077106001B6A12003B5D26005B52390067584300695C4500564E
      3E00312E27000000000092857900C3B9B100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EEEDED00E0DBD800EAE7E400E5E2
      E000BBB8B6009B98950073706E0079746E00676059006D676300A3998F009388
      80006D676200706C670094897F000B87D8006B835F0002860900096B0400096C
      06000870050006750600057C08000582090006860C002174180046622E006659
      42006F614B00685C48007A6D5A00BBB4AB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E1E000B7B5B3002F2E2E001312
      1100201E1C00322F2C003C3733004B454000565049005C575300AAA09700C6C1
      BC004D48430035312E00554E4A000E8AD700718B670002860900087206000872
      060006770800077A0700067F0A0004860B00048B0A00048F0B0004940C000B91
      0F002A791F00526437006E5F4A00958D7C00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2DEDB00AEACAA0036353500302F
      2F003634350038363400494543005B575400706C6800827D7900B6AAA200635E
      5900595756003A3A390056504A00138ED70000000000847777007B6B6B007764
      640075606000735D5D00735E5E0074616100776767007D717100888282009E9E
      9E00C3C3C300E9E9E900FEFEFE00FFFFFF0000000000B3B0AF00929292008686
      86007877770066656600625F5F0062615D0069656100756F6B006E696400B9B1
      A900635D5800595756002C2B2A00110F10000000000002860900077807000779
      0700057C090006810A0004840B00058A0A00048E0C0006920D0005950C00069A
      0D00069F0D0006A40E0012981200ADC5A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A63C2100C1532A00D2673400DB72
      3900DF743B00DF753B00DD743B00D96E3800CC603000B34825009A311D007820
      1C00644646008A8A8A00D6D6D600FDFDFD0000000000DAD9D7009D9C9C00A0A0
      A00092919100858484007A797900797777007B7977007A77740065615D00B1AA
      A500857A70003F3E3D004C4C4C004645460069855F0002870900067F0A000680
      0A000482090004870B00058A0A00048E0C0004900B0006950D0005990C00079D
      0E0006A00D0008A60F0007AA0E00C5E9C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FDFDFD00FFB55D00FFBB6300FFBC6600FFBE
      6800FFBE6A00FFBE6B00FFBD6B00FFBE6900FFBC6700FFBA6300FFB25C00F395
      4B00BB4220006C1F1D007C7B7B00DCDCDC0000000000F4F4F400BABAB900A7A6
      A60096979700979696009B9A9A00A4A1A000ACA8A500BAB6B200D8D3CF00D9D4
      CF00B7ACA4009A8D82006C645D0059524F006F8C63000289090005860B000488
      0B00058A0A00058C0C00048D0B0006900D0006950D0005970C00079C0E0006A0
      0D0008A40F0007A70E0009AC1000C3EBC5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD00F7F7
      F700EEEEEE00DFDFDF00CCCCCC00C0C0C000FFB76B00FFB97000FFBB7300FFBC
      7500FFBD7700FFBD7700FFBC7700FFBC7500FFBB7300FFB97000FFB86B00FFBC
      6A00FFBB6400D56233006A302E00A6A6A6000000000000000000DBDAD900CAC4
      C000CFC8C100C9C1B800C6BDB500C7BDB600CCC3BD00D1CAC400D5CFCB00DBD5
      D200E0DBD900E2DEDD00D1C8C500BBADA6005C834F00038B0A00048C0C00048C
      0C00048F0C00048F0B0006930D0006940D0005970C00079C0E00079E0E0006A3
      0D0008A70F0007AB0E0009AF1000C4ECC6000000000000000000000000000000
      000000000000FEFEFE00FAFAFA00F2F2F200E5E5E500D4D4D400BEBEBE00AAAA
      AA00999999008D8D8D007676760074747400FFBF7C00FFC28100FFC48400FFC5
      8700FFC58900FFC68900FFC58900FFC58700FFC48500FFC18100FFBF7D00FFBD
      7700FFBE7300FFB96A00A4362000837A7A00000000000000000000000000FAFA
      F900E1DEDB00CEC8C200BEB6AF00C4BBB300CCC1BC00C6C1B900ADB7A40091AB
      8D00739D7100518F5200308533000D7D12000382090004900B0006910D000692
      0D0006920D0006950D0005960C00059A0C00079B0E00069E0D0006A30D0008A5
      0F0007AA0E0009AE100009B21000C4ECC6000000000000000000FAFAFA00ECEC
      EC00DBDBDB00C7C7C700B2B2B2009F9F9F009191910088888800848484008282
      8200606060003A3A3A00474747003A3A3A00FFC78E00FFCA9300FFCC9600FFCD
      9800FFCE9B00FFCE9B00FFCE9B00FFCD9900FFCC9700FFC99200FFC88E00FFC5
      8900FFC18100FFC67D00D1693C007A6665000000000000000000000000000000
      0000000000000000000000000000F4F6F3005FB76200027D070003860900048F
      0A0005960B00059C0C00069D0C00069A0D0006970D0006920D0005960C000597
      0C0005970C00059A0C00079C0E00079D0E0006A10D0008A20F0008A70F0007AA
      0E0009AC100009B1100008B50F00C4EDC5000000000000000000EDEDED00C0C0
      C000909090006B6B6B0074747400818181007D7D7B007F7D77007D786C00736C
      5F001E1E1D00272727005F5F5E00ACACAC00FFD09E00FFD2A400FFD4A700FFD6
      AA00FFD7AC00FFD7AD00FFD7AD00FFD6AA00FFD5A800FFD2A400FFD09F00FFCD
      9900FFCB9400FFC98A00EB8F5C007B6460000000000000000000000000000000
      00000000000000000000000000000000000056C65A0009AB100008AA0F0008A8
      0F0008A50F0008A20F00069F0E00079B0E0005970C0005940C00079A0E00079C
      0E00079D0E00079D0E00069F0D0006A10D0008A50F0008A60F0007A90E0009AE
      100009B1100008B40F000AB61100C4EDC6000000000000000000000000006F6F
      70004747450066665F0089888200AEAC9C00C0BCA700B2AD97008A8068007466
      4D007D72640047454300666667009C9D9D00FFD9AF00FFDBB500FFDDB900FFDE
      BC00FFE0BE00FFE0BE00FFDFBE00FFDFBC00FFDDBA00FFDBB400FFD9B000FFD6
      A900FFD1A200FEC78F00EE9B6A00806A66000000000000000000000000000000
      00000000000000000000000000000000000055C85A0008AE0F0009AD100007AA
      0E0007A70E0007A40E0006A00D00069F0D0007A30E0009A90F0007A70E0006A0
      0D0006A10D0008A20E0008A40F0008A70F0007A80E0007AC0E0009AD100008B0
      0F0008B50F000AB611000AB71100C4EDC600FCFBFA00EDECE500D4D2C700B2B0
      A500E1E1DD00F4F4F300DCDAD300AEA99A00A9A49700908780008181A0006866
      860093877B00787068003F3F3F007C7C7C00FFE1C000FFE3C600FFE5CA00FFE6
      CD00FFE8D000FFE8D000FFE7D000FFE7CE00FFE5CA00FFE3C600FFE0C000FFDF
      BC00FDD3AA00FFCF9E00E7986D008A7773000000000000000000000000000000
      0000000000000000000000000000000000006ED372000AB4110009B710000BBC
      13000CC014000DC515000ECB16000ED017000ED017000ECF17000ECF17000DCA
      16000CC0140009B6110008AE0F0007AA0E0008AD0F0008AF0F0008B20F000AB5
      11000AB611000AB711000AB71100C4EDC600D9D7CA00C4C1AC00B5B19C00BDB8
      AA00B7B1A7008B857D00868280006B6A6900915B2C009C5E2C0059467300474A
      B000887F7400B2A79E003938370019191900FFE9D100FFECD700FFEEDB00FFEF
      DF00FFF1E100FFF1E300FFF1E200FFF0DF00FFEDDC00FFECD700FFE9D100FFE7
      CD00F6CAA700FFDAB300D17D5A009E9290000000000000000000000000000000
      00000000000000000000000000000000000000000000D8F4D90096E69A0053D8
      590018CE20000ED017000ED217000FD218000FD118000FD118000FD116000FD0
      17000FD017000FD017000ECF17000ECC16000BC514000ABE120009B9110009B6
      100009B6100009B610000AB61100C4EDC600C1BDB70086807800806E61007571
      6D00434140005453530053535200ADA8A500B5A19200A89F9800BBB5BD007873
      880081786C00A39B9400CFCAC70083807F00FFF0E000FFF5E900FFF8F000FFF8
      F300FFFCF700FFFCF800FFFBF700FFFAF400FFF9F300FFF4E800FFF1E100FEEC
      D900F2C8AC00FFE3C500B5694D00C7C5C5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFEFC00C5F1C70083E2870041D6470010CE18000ED117000DD217000FD2
      18000FD218000FD118000FD118000FD117000FD117000FD017000FD017000ECD
      16000DC714000AC0130009B81000C4EDC600CCCCDF0098634F00A37246008A85
      82006E6A6700928D8900B1ADA900DFDAD600E2DEDB00DEDAD600DAD5D2008D86
      7F00837B7200857C730098908700ACA49C00FFFBF600FEF3EE00FEECE400FFFB
      F900FFF2E600FEE0C000FFF6F000FFF4F000FEE9DE00FFFDFB00FFFDF900F3D5
      C700F6DFCD00FAC4A5009F817500F5F5F5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F3FCF300B5EEB80076E07B0037D5
      3F000ECF17000ED117000ED117000ECF170011CD19002DD2340052D8570075DF
      7A009AE79D00C0EFC200E9F9E900FFFFFF00DAD8E100B7B1B000D2CBC600D8D1
      CC00DDD7D300DFDAD600DBD5D000D3CDC700D2CBC600D5CECA00D8D2CE008F87
      8000857C7200898078008B8279008E847B00FFFDFB00FFE1D000FFD9BA00FFD9
      B900F2B27400E99A4B00F7BE8400FFD6B000FFC49000FFE1D000FBF3F000E7C4
      BB00FFF1E600C77C5B00D3D2D200FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00EFFBF000C6F2C700CCF4CE00E5F9E600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E2E0DF00D0C8C100D1C8C100D0C8
      C100CFC7C000D6CFCA00C3BEB800A9A5A00099949100827D790095918E00968D
      8500AAA19500A19587008D82760091867C00F4BCA400FCF2E200C9B1C500A185
      B1008982B9008380C200897CB000AF8AAA00E3BFA600FFC48C00E5A79400F8DF
      D600E5A28100C1B4AE00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E3E1E000BFBBB700918E8C006E6C
      6A004F4D4C003C393700312D2A00443E3A00575049005B544D008C8681009990
      880089837D00827B740098908A0081776F00DB8E7D0099A4F2008BA3FA009FB9
      FC00A3BEFF00A1BBFE0095B2FF007E9EFE007790F500B58A9E00F5996E00EFA2
      7700C5B3A900FEFEFE00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CDC9C40083818000252424001F1E
      1E0025232200302D2A0036322F00423E39004D4842005750490087817B00A198
      8F005D575100564F49004A474400716D6900958BD100AAC1FC00C3D4F500C2D2
      F500BFCFF400BCCDF400B5C7F400ACC1F40098B4F8007B96FF009B748D009985
      7A00F2F2F200FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E6E4E200A7A4A300777777005A5A
      5A0043424100403E3D00423F3C0049444000554F4900625B5400736D6700ADA2
      9A0068635F00423E3B002F2B29001D1A19000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000006AAB6500CEF0D700A8DA
      B400E4F7EA00FBFFFD00E0F0E100DCF1DA00EBF9E0004749E7000E07ED00D5DE
      D300D7F8D400C2EFCC00F6F6F10096ADEF0000000000CBDBF600C6D6F700C7D6
      F700C6D6F700C4D5F600C1D2F500BACCF400B0C4F400A5BCF900708BE9005C62
      7800C9C9C900FEFEFE00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000ECECEC00B8B5B5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00CBE1CB0077B87300E3F3
      E800BADCBF00DCEEDC00CAF1C900ADE99A006F9497000010DF00000EED004A59
      A60092DD7D0071FE920086BDA8009EACF800D0DEFA00C9D8FA00C9D8FA00C9D8
      FA00C9D8FB00C8D7F900C8D8F700C5D5F600BFCFF400B4C7F300A2BAFF005C6E
      B60097979700F4F4F400FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C8C5C50087545400902D22000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00A1CFA1009CCF
      9900A7D4AA0098D09000BFEAD50047A19B002073A4002981BD002683BA001B6C
      AA00288A8F0055DA960059AFB100B5C1FF00CEDDFB00C9D9FD00CADAFD00CADA
      FD00C9D9FD00C9D8FC00C9D8FA00C8D7F800C5D5F600BECFF400B3C7F6007790
      EC00797C8700E9E9E900FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C6B8B8009D2F2400D7693500FEA855000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00A2D2
      A1005CB75100459B7D004698CB0059ACDC0068BAE20067B9DB005EB1D60050AA
      D1003994CB001D80AC004480CF00C6D4FF00D0DDFD00D2DFFD00D4E1FD00D4E1
      FD00D1DFFD00CEDCFD00CAD9FD00C9D8FB00C8D7F800C4D4F600C1D1F50087A3
      F7006E768F00E5E5E500FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6E3
      E300AB433500F1944D00FFBE6600FFB767000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0087AEA000439CC90085CCF40089CEF00086CCEF0082CAEE007CC4EA006FBC
      E20060B2DA00479DC500477BD900CAD6FF00D8E3FE00DBE5FE00DEE7FE00DEE7
      FE00DBE6FE00D6E2FE00CFDDFD00C9D8FD00C9D9FB00C7D6F800C8D7F70088A5
      F7006F789500EAEAEA00FFFFFF00FFFFFF000000000000000000000000000000
      0000F6F6F600E6E6E600D8D8D800CDCDCD00C5C5C500BFBFBF00C7C7C7009874
      7200E3713D00FFC57100FFB97000FFBD77000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00E8E9
      EC004B8EC80093D7FC0093D5F70090D3F60091D3F7008FD3F6008DD1F40088CE
      F1007DC6EB0067B6D7004477D400BECBFF00E2ECFE00E3EBFE00E7EEFE00E7EE
      FE00E4EBFE00DEE8FE00D6E2FD00CDDCFD00C9D8FC00C8D7F800CDDCF7007691
      F000868A9E00F7F7F700FFFFFF00FFFFFF000000000000000000F7F7F700C0C0
      C000817E7A00625E55005252400049503600444F3100425030003C4D2E008436
      1E00FB9F5F00FFC37D00FFC18000FFC588000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF0095AD
      C4006FBDF0009CDBFD0096D7FB0098D8FC0098D8FC0096D8FB0094D6F90091D3
      F7008CD1F40084CFED004983CC0097A6F500F0F8FF00EAF1FE00F1F5FF00F1F5
      FF00EBF1FE00E4ECFE00DBE6FE00D1DFFD00C9D9FD00CCDBFA00C7D8FC005367
      CE00C0C0C300FFFFFF00FFFFFF00FFFFFF0000000000EFEFEF00828176003C4F
      2000307128003397400035B3530037BD5B0038C15E0038C5610030B85800A259
      3000FFB17300FFC88A00FFCA9100FFCE9900FBFBFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FEFEFE006299
      CC0092D6FD009FDCFF00A1DDFF00A5DEFF00A5DEFF00A1DDFF009CDAFE0097D7
      FB0091D4F7008FD4F60070B5DB004E67DA00E1E6FF00F9FCFF00F8FAFF00F9FB
      FF00F1F5FE00E6EEFE00DDE7FE00D3E0FD00C9D9FD00D9E9FC0090A2FC006E74
      AA00F3F3F300FFFFFF00FFFFFF00FFFFFF00FBFBFB007C806B003072240035C2
      5F0039D971003DD9730042D5750047D5770049D679004BD97C0041C87100AA63
      3900FFB88100FDC79000FFD3A300FFD6A900D2D2D200EBEBEB00F8F8F800FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00F8FAFC005999
      D700A1DDFF00ACE1FF00B3E3FF00B7E4FF00B7E4FF00B1E2FF00A9DFFF009FDC
      FF0098D7FC0091D3F7008ED6F2004C83D000626CE300F5F6FF00FFFFFF00F9FC
      FF00F1F4FE00E6EEFE00DDE7FE00D4E3FE00D9EAFF00A8B7FE004F59BF00DBDB
      DC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B9BCB300307324003CD6710044D6
      77004BD1780052D47C0057D581005CD684005ED7870060D9890056D08300A26C
      4000FEBB8C00FAC89800FFDAB200FFDDB9008A8A8A00A7A7A700C9C9C900E3E3
      E300F5F5F500FDFDFD0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FAFBFD005C9A
      D600AEE1FF00BBE7FF00C3E9FF00C8EBFF00C7EBFF00C1E9FF00B8E5FF00AAE0
      FF009EDBFF0095D7FA0090D3F70086D1EA002159C5004F52DC00D1D3FE00FBFC
      FF00F9FFFF00F2FBFF00E8F3FF00D2E0FF008893F8004A4EC700D3D3DA00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0071875C003FB75C0053DC830059D6
      820061D7890068D98E006DDB920071DB950074DD980077DD99006FE19C008E80
      5000F8AE8700F8C9A200FBD8B800FFE6CB006D6D6D0074747400838383009E9E
      9E00BFBFBF00DCDCDC00F1F1F100FBFBFB000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF006FA1
      D400ABDAF900CAEDFF00D1EEFF00D9F1FF00D9F1FF00D0EEFF00C4E9FF00B5E4
      FF00A5DFFF0098D8FD0093D5F8008CD3F400347BAE008E8EA9006A6AD2006769
      E4008387E700888DEB007074E3005356D9008080C400EEEEEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004D7B3D0052CE790066DC8E006DDB
      910075DC97007CDE9C0081E0A00086E0A40089E2A6008CE2A80089EBB00089A7
      7400E7977200FCDDBF00F6D0B500FFF0DD00696969006A6A6A006B6B6B007070
      70007D7D7D0096969600B6B6B600D5D5D500ECECEC00F9F9F900000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00B7CD
      E50077ACDA00DFFAFF00DFF3FF00EBF8FF00E9F7FF00DDF3FF00CDEDFF00BDE6
      FF00ABE0FF009BDAFE009ADCFC0077C0EF00486D9400E7E7E700FFFFFF00E4E4
      FA00D0D0F500CACAEF00D6D6F200EEEEFA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0047863B0062D7890076DE9A0081E0
      A1008AE1A70091E4AC0097E6B1009CE6B500A0E8B800A2E8B900A3EBBD0096DD
      B000C1886000FFE3CC00ECC4AE00FCEEE200686969006A6A6A00696969006464
      640056565600515151004B4B4B0061616100AAAAAA00CCCCCC00E6E6E600F6F6
      F600FDFDFD00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FCFC
      FD006391C100CAE8F900F0FEFF00F7FCFF00F5FBFF00E3F5FF00D1EEFF00BFE7
      FF00ADE1FF009EDCFF009ADEFF004181BA00A6AAB000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004F8E440074DB940082DEA10096E5
      B1009EE6B500A6E9BB00ACEBC000B1EBC400B5EDC700B7EDC900B7ECC900B4F5
      D000ACB08900EDA78600F7E5DB00EDD0C8008078720064626000343435003030
      31001F1F1F0048484800646465004B4B4C004747470086868600A1A1A100C1C1
      C100DEDEDE00F2F2F200FCFCFC0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D9E3EE00608BBA00D5E9F400FEFFFF00F4FEFF00E1F6FF00D1EFFF00C2EA
      FF00B4EAFF00A1E1FF005495CB008191A300F6F6F600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006198580088DBA00088DEA400AAEA
      C000B2ECC500BAEDCA00C1EFD100C7F1D500CBF1D700CDF3D900CDF3D900CDF4
      DA00C2F2D800C39D7700F8CAB500E7C1B900A5968900A5968900847970003431
      2E00161616005555550078787900BDBDBD0029292900484848004D4D4D004646
      46007F7F7F00B8B8B800D9D9D900F2F2F200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00D6E0EB006387B0009EBBD500D1E8F200D8F3FF00CCEFFF00B2E0
      F7008AC0E4005183B4008F9CAC00FAFAFA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0085B07D008DD2990096E0AE00B3EA
      C500C8F2D600CFF3D900D5F4E000DCF7E500E0F7E800E8FDEA00EDFFE900E3F8
      EA00E1FBEB00D2F2E000D2A78200FAAD810098897B00A5958700A7978A006E66
      6000363636004A4A4A007B7C7D007D7D7D003C3C3C002C2C2C00515151007E7E
      7E00323232007D7D7D00B0B0B000DDDDDD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F2F4F800A4B6CC00728EB0006889AD006288AE006585
      A9008599B100D1D3D600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C5DBC30077BA7900BBEFCE00AFE2
      BD00DDF7E600E2F8E900EEFBF300F5FDF800FEFFFD00C2C3E9009A95D400FFFF
      FB00F7FDFB00F8FFFE00E7F9ED00CFAB9200000000008D847C008E847A009086
      7D0090877E0091867B005B7E8E000290EF000088EF000275DB000278DE000078
      DF00027CE2000280E6000082EA000286EE00000000004180AC007D868A00635C
      55002B2A29003B3A3A004F4F4F00575757001B1B1B002A2A2A00717172009494
      94007E7E7E0060606000DADADA00F1F1F1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008A80740090867D0090847B009286
      7E0093897F0092877C005C7E8E000290EF00008AF1000279DF00027AE000007B
      E2000280E6000281E7000083EA000289ED00008BF200028FF6000292F9000B86
      D8000F5380001927300029272600141313000E0E0E003D3D3D005D5D5E006C6D
      6D006868680052525200FDFDFD00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000756C63007F756D0092877E009287
      7D0094897F0095897C005B7E8E00008FEF00008CF300007CE300007EE5000080
      E7000082E9000083EA000087EE00008AF100008DF4000090F7000092FA000097
      FE00009AFF00039CFF000677C1001C557B002D363C0025232200383736004444
      4400282828006A6A6A00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000FEFEFE00FBFBFB00F8F8F800F5F5F500F3F3F300F7F7
      F700FCFCFC000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000756D660079726B008C847E009B90
      87007E766F008C8177005E8190000290EF00008DF4000280E6000281E7000083
      EA000286EC000287ED00008AF100028CF200008EF5000292F8000296FC000098
      FE00059BFD00069DFE00089EFF000BA2FF000FA0F9001078B700194A67001C21
      2300070504000C0C0C009E9F9F00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FEFEFE00FAFA
      FA00F3F3F300E9E9E900DBDBDB00CFCFCF00C4C4C400BEBEBE00BCBCBC00C7C7
      C700D7D7D700E8E8E800F5F5F500FDFDFD000000000000000000000000000000
      000000000000000000000000000000000000968C8300B1A59C00605952005C59
      560075716E00968E8800628494000290EF00008FF6000284EA000286EC000085
      EC000289EF00028BF100008BF2000290F6000092F9000296FC000298FE000298
      FF00059BFD00099EFD00089FFF000EA2FD000FA4FE0011A5FF0014A9FF0015A2
      F2000F6DA300062F4500757F8300FFFFFF000000000000000000000000000000
      00000000000000000000FEFEFE00FBFBFB00F5F5F500EBEBEB00DDDDDD00CCCC
      CC00B7B7B700A2A2A20091919100858585008181810080808000818181007A7A
      7A007676760097979700BEBEBE00DADADA00EFEFEF00FBFBFB00000000000000
      000000000000000000000000000000000000A59D9700CBC4C000524C46004540
      3C00383431002F2D2A00688C9C000192EF000091F8000087EE000089F000008A
      F100008AF100008CF3000090F7000092F9000093FA000097FE000099FF00049B
      FF00069DFF00079DFF000B9FFF000CA1FF0010A4FF0012A6FF0014A8FF0015AA
      FF0019ADFF001CB0FF0066BEEC00FFFFFF00000000000000000000000000FCFC
      FC00F6F6F600EDEDED00DFDFDF00CECECE00B9B9B900A4A4A400919191008282
      820077777700717171006C6D6D006B6B6B006B6B6B004D4D4D003D3D3D004949
      490040404000383838005D5D5D0093939300B0B0B000D1D1D100EAEAEA00F8F8
      F800FEFEFE00000000000000000000000000A3999000B7AFAA00605D5A003633
      3000242120001D1B1A006B8E9E000695EF000194F900028CF200028CF200008C
      F3000290F6000292F8000093FA000296FC000097FE00029AFE00059AFD00049B
      FF000A9FFD000CA1FD000BA2FF0011A5FD0013A5FD0013A6FF0016AAFD001AAB
      FD0019ADFF001EAFFE0065C7FC00FFFFFF000000000000000000F8F8F800DDDD
      DD00C0C0C000A8A8A800939393008383830078787800707071006C6C6C007171
      6E007D7B7400898578008A826C007F735B00504C440015151500303030004747
      47006F6F6F006F6F7000262626005B5B5B007676760089898900A5A5A500C7C7
      C700E2E2E200F4F4F400FDFDFD00000000007F736A003E3D3C00575554005756
      56004645450031302F006D909E000A98EF000397FB00028FF5000291F7000091
      F8000292F8000295FB000096FD000299FE000299FF00049AFD00079DFD00079E
      FF000A9FFD000EA1FD000EA3FF0011A6FD0014A8FD0013A9FF0017AAFD001BAB
      FD001CADFF001FB0FD0066CAFE00FFFFFF000000000000000000F4F4F400CECE
      CE00A6A6A6008989890077777600757571007C7A73008E8D8300BBB9A500C1BD
      A700B8B49D00AAA38D008F846D007D715700786C570049433E002D2D2D005C5C
      5C0073737300C4C4C4005F5F5F002F2F2F006A6A6A006B6B6B00737373008282
      82009C9C9C00BCBCBC00DADADA00F0F0F0008B80750081766C00504A45003634
      330048474700484747006C8D9A000B9AEF00069AFD000092F9000094FB000095
      FC000096FD000096FE000099FF00019AFF00049BFF00069BFF00069EFF00099E
      FF000BA1FF000CA3FF0010A3FF0012A5FF0012A8FF0016AAFF0018ACFF0019AE
      FF001DB0FF001EB0FF0067CBFF00FFFFFF000000000000000000FBFBFB00CAC9
      C700AAA9A200A1A09600C0BEB600D2D1CC00EBEBEB00ECECE900BDB9A400A39D
      8700938C7B00848E85006E9599003C3F8F0084776600A49689003F3F3F005F5F
      5F007D7E7F00858585007E7E7E00141414006969690069696900696969006B6B
      6B00707070007C7C7C0093939300B1B1B100CBC3BE00BFB6AF00AFA49A009E8F
      8300786D640080756D006B8D9900109DEF00069DFE000297FE000297FE000098
      FE00029AFE00039BFD00029BFF00079DFD00059DFF000A9EFD000CA1FD000AA0
      FF000EA4FD0011A4FD0010A6FF0014A9FD0017A9FD0016ABFF001CADFD001EAF
      FD001DB1FF0022B3FD0067CBFD00FFFFFF00F6F6F300CFCDBE00C5C2AE00C5C2
      AD00CCC9B60000000000EFEDEA00C1BEB6008E8A82005D5951003D3A3500635F
      5E00BBBEBE00A0E9FE0095E4F9005E5DBB008A827800A69789006A645F003B3B
      3C00727273005B5B5B0056565600080808006868680069696900696969006969
      6900696969006B6B6B006E6E6E0077777700CDC6C100D2CBC800D7D1CF00D6D0
      CC00C8BFB800B0A49A004F89A30013A0EE000AA0FF000399FD00039BFD000399
      FF00069CFD00079DFD00069DFF00089FFD00099FFF000BA1FD000EA1FD000EA3
      FF0012A4FD0012A7FD0013A6FF0017A9FD0019ABFD0019ABFF001CADFD0020B0
      FD0020B2FF0022B4FD0069CCFD00FFFFFF00EBEAE700C3C0AB00BAB59F009D98
      840075716300534F480032302C004644430053525200575657005C5C5C006B69
      6700C6BFB800DAD4D000DCD7D3008C867E00827B7400A69A8F00A0968E003D3D
      3D003131310040404000202020000404040015151500636058006E675B006967
      6200696968006A6A6A006969690069696900A2B0B00089A6AC006E9CAB005094
      AD00308CB100188CC0001596D50015A6F7000BA2FF00049BFF00049BFF00069D
      FF00079CFF00089EFF00099FFF000AA0FF000AA1FF000DA2FF000DA2FF0010A5
      FF0012A6FF0012A6FF0015A9FF0017ABFF0019ABFF001BAEFF001DB0FF001EB0
      FF0022B2FF0024B5FF0069CDFF00FFFFFF00EBEAEA006A737E006CB1C2005765
      6900403E3C0047454300494847003A3B39004F4E4E005A5959005C5C5B007572
      7000C1BAB300D7D2CF00DAD5D2008A8480007F776B00978E8600C2B8B1008985
      81002E2E2E001717170007070700000000001A1813007E71570077694F007C6E
      5500726958006C6962006A6A6A00696969002E9BC0002EA5D0002BACE2002BB3
      F00028B4FA0021B3FF001EAFFE0018AAFE000DA2FF00099EFD00099EFD00099F
      FF000A9FFD000BA1FD000AA1FF000DA3FD000EA3FF0010A5FD0013A6FD0012A5
      FF0014A9FD0017A9FD0017ABFF001BABFD001DAEFD001DAEFF0021B0FD0023B3
      FD0022B5FF0027B5FD006BCEFD00FFFFFF00000000009DA9C200BDD7DB006D69
      660042403E004B4847004F4E4C005554530048474700555656005F5E5E007774
      7200C2BAB300D6D0CD00D9D3D0008C857F00827A7000827A6E00B6AEAA00D9D4
      D200D0CCCA008B8885003E3C3A000202020015110C0077694E00968D7600A099
      8200726651006A5E480073685300686663003FCAFD003AC6FD0033C0FE0030BC
      FD002DBAFE0033BDFF003EC2FD004AC9FD0042C4FF0028B2FD0010A3FD0009A0
      FF000DA1FD000EA2FD000DA2FF0010A4FD000FA5FF0014A7FD0015A8FD0014A8
      FF0016A9FD0019ABFD0019ABFF001DAEFD001FAEFD001FB1FF0023B3FD0025B3
      FD0025B5FF0027B8FD006CCFFD00FFFFFF0000000000C0BBB700D1CAC2009490
      8D006665640058565600514F4E00565655005756560059585800605F5F007A78
      7700C6BFB900D5CFCB00D8D2CF008F888000837B7100877F7800857C7000AAA4
      9C00C9C4C000C2BCB700747D820002467500004F8D002F4B5F0079725E008D82
      6C00ABA6900092897400736853008174600052D4FE0057D5FE005FD8FD0068DD
      FE0071E1FF0073E2FF0073E3FF0074E3FF0075E4FF0077E4FF0076E5FF0062D8
      FF0049C9FF0031B9FF001AABFF0011A6FF0010A6FF0012A7FF0014A8FF0015A9
      FF0018AAFF0018ADFF001BADFF001DB0FF001FB0FF0021B3FF0023B3FF0025B6
      FF0027B8FF0029B9FF006CCFFF00FFFFFF0000000000C0B9B500D0C9C2009591
      8D007977760083818000807F7E007B7A7900797878006D6C6C00797979009998
      9700CCC6C000D5CFCA00D7D2CE00938B8400857C7200898179008A8179008B82
      79008A8075008A8072005F7F8F000293F4000086ED000270D700026ACA001F64
      9C004B606C008C836E00A39A8500958979005FD8FE0067DCFD006DDFFF0071E1
      FD0073E2FD0074E3FF0075E3FD0076E4FD0076E3FF0078E5FD0078E5FD0077E5
      FF0078E5FD0078E5FD0076E5FF006ADCFD0052CFFF003EC1FD002AB5FD0019AD
      FF001AACFD001DADFD001CAFFF0020B0FD0023B3FD0023B3FF0027B6FD0029B6
      FD0029B9FF0029B8FD006CCEFD00FFFFFF0000000000C0B9B300D0C8C1009792
      8F00747271007B7A7900848382008A89880095949300A8A6A500B3B2B100D7D7
      D600D5D0CB00D3CDC900D7D1CD00978F8800867D72008A8179008C817A008C84
      7B008F857C0090857A005D7C8A00008FEF000087EE000071D8000074DB000077
      DF00007AE3000070CF000E558B0062717A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FCFEFE0000000000BDEDFF0098E3FF0077DB
      FF0061D7FF0069DEFF0070E1FF0074E3FF0077E5FF0078E5FF0078E5FF0078E5
      FF0078E5FF0077E5FF0077E5FF0075E4FF000000000073E2FF0072E1FF006BDE
      FF0059D3FF0047C9FF0035BEFF0025B5FF0021B3FF0024B5FF0026B6FF0028B8
      FF002ABAFF002ABAFF006CCFFF00FFFFFF0000000000C0B9B300D1C9C1009D99
      9500918E8C009C999600A59F9A00ACA39B00BFB5AD00CFC7C100D5D0CA00DAD6
      D100D0CAC400D4CEC900D7D1CD00999089000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FCFEFE00DCF5FF00B9EDFE0097E4FD0076DDFF0068DBFD006EE0FD0074E3
      FF0077E4FD0078E5FD0077E5FF0077E4FD0075E4FF0075E3FD0073E2FD0070E1
      FF006FE0FD006DDFFD006ADEFF0069DCFD005ED6FD004ECEFF0042C7FD0034BF
      FD002AB9FF0028B8FD006BCFFD00FFFFFF0000000000C2BCB800D4CEC900E7E3
      E000EAE6E300D0CAC400C3B9B100BCB3AA00BDB4AC00C4BCB400CCC5BE00D1CA
      C300D2CBC600D4CDC800D8D2CD009A928A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F4FCFE00D8F5FE00B5EC
      FF0094E4FD0075DDFD0066DBFF006CDFFD0070E1FF0073E2FD0072E1FD006EE0
      FF006BDFFD0068DDFD0064DAFF005FD8FD005AD5FD0057D3FF005CD3FD0065D4
      FD0072D6FD007ED7FE00B0E5FE00FFFFFF0000000000C5C0BC00D9D4D000D9D4
      CF00CFC8C200D5CFCA00D8D2CD00DAD4D000DFDBD700E5E1DD00E8E6E200E8E4
      E000E4DFDC00DFDAD700DBD6D1009E958D000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F3FCFF00D4F4FF00B2EBFF009BE6FF0099E5FF009AE4
      FF00A4E6FF00B3EAFF00C0EDFF00D0F2FF00E2F7FF00F3FBFF00FBFEFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C5C2BE00DED9D600E1DB
      D900E4E0DD00E7E4E100EBE7E500EAE7E400E4E1DD00E2DEDA00D3CFCB00B5B1
      AD009E9A970085827F00908D8900A59B92000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000C7C4C100E5E1DF00E9E5
      E300EDEAE800D6D4D200ADABA900908D8B0074726F003F3D3C004A454000685F
      5800766D64006F67600075726E00ABA199000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFEFE00B6B3B000B1B0AF004C4B
      4B0021212000121110001C1A190029262400312E2B0049443F005C554F00665D
      56006E665E00756C6400746E6B00B2A9A1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F5F400B6AEA800999897002525
      25001B1A1A001C1B1A0023211F002F2C2A003C38350046413C0055504A00635D
      570078716B008D8680007A757200BAB1A9000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F6F500BEB8B500ADACAB003837
      37003B3A3A003B3A3A003E3D3D004B494700575553006662600075716E00817D
      79008D898400948F8A0075706C00C4BBB4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F6F5F400B3ABA500C1C1C0002C2B
      2B002C2B2B002A292900282828002D2B2B00373736004C4A4800686563007E7C
      79008F8B88009F9B9700BBB6B300CBC3BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000DCDBDA00C9C8C7005454
      5500747474008E8D8D00A7A5A400BFBBBA00CFC9C500D3CCC600CCC4BD00C7BE
      B700C2B9B200C2B9B200C4BBB400C9C0BB000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000D4D2D100C1B9
      B300BAAFA500AEA19500A8988C00A7998D00AB9E9200AFA39800B3A99F00B7AC
      A300BBB1AA00BFB6AF00C4BCB600C9C1BC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000ECEAE800D2CDC800B9B1A900AA9E9400AB9F9400B0A49900B4A89F00B8AC
      A300BDB2AA00C2B7B000C1B9B300B8B6B2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000F2F0EF00DFDBD800CDCCC800A3C6
      CE005D9AA700478C9C00378CA1002C90AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000AAE3
      F40045C7ED0046C8EF0047CEFA0042CDFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ACEB
      FD0050D8FE004ED7FE004DD4FE004FD4FE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FDFE
      FE00C9F1FE009BE3FE0078D9FE0060D5FE0000000000E0E0E000FBFBFA00FAFA
      FA00FAFAFA00FAF9F900F9F9F900F9F8F800F8F8F800F8F8F700F7F7F700F7F7
      F600DDDDDC008B8A8A00676666006564640000000000616061005F5E5F006968
      6900DADADA00F2F1F100F1F1F000F1F0F000F0EFEF00EFEFEE00EFEEEE00EEEE
      ED00EEEDEC00C0BFBF00F3F3F300FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5E5E500FBFBFB00FBFB
      FB00FBFAFA00FAFAFA00FAFAFA00F9F9F900F9F9F900F9F8F800F8F8F800DBDA
      DA00747272006C6A6A006A68680068676700666565006968680098979700E3E2
      E200F3F3F200F3F2F200F2F2F100F2F1F100F1F1F000F0F0EF00F0EFEF00EFEF
      EE00EFEEED00C1C0C000F6F6F600FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FAFAFA00F6F6F600F3F3F300F3F3F300F6F6F600FAFAFA00FEFE
      FE00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F2F2F200FBFBFB00FCFC
      FB00FBFBFB00FBFBFB00FBFAFA00FAFAFA00FAFAF900F9F9F900F8F8F8008C8A
      8A00716F6F006F6D6D00706E6E006B6A6A0099989800ECECEB00F5F5F400F5F4
      F400F4F4F300F4F3F300F3F3F200F3F2F200F2F2F100F1F1F000F1F0F000F0F0
      EF00F0EFEF00BEBEBE00FAFAFA00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00F5F5F500DEDE
      DE00C3C3C300BCBCBB00BEBDBD00BDBDBC00BCBCBB00B9B8B800B8B8B800C6C6
      C600E2E2E200F7F7F700FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FCFCFC00E9E9E900FCFC
      FC00FCFCFC00FCFBFB00FBFBFB00FBFBFB00FAFAFA00FAFAFA00E7E6E6007674
      7300747271007E7D7C00D7D6D6006F6D6D00ADACAC00F7F6F600F6F6F500F6F5
      F500F5F5F400F4F4F400F4F4F300F3F3F300F3F3F200F2F2F200F2F1F100F1F1
      F000F1F0F000C4C4C400FDFDFD00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000F4F4F400CECECE00C4C3C300E1E1
      E000EAE9E800E9E8E700E8E7E700E8E7E600E7E6E500E6E5E400E6E5E400E3E2
      E100C7C7C600B4B4B300D5D5D500F7F7F7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D8D8D800FDFD
      FD00FDFCFC00FCFCFC00FCFCFC00FBFBFB00FBFBFB00FBFBFA00DAD9D9007977
      760077757400B0AFAE00ECECEC0072706F00AFAEAE00F4F3F300EEEEEE00F6F6
      F600F6F6F500F5F5F500F5F5F400F4F4F400F4F3F300F3F3F300F3F2F200F2F2
      F100E8E8E800DEDEDE00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FCFCFC00E0E0E000C7C6C600EBEAEA00ECEBEB00EBEB
      EA00EBEAE900EAE9E900E9E9E800E9E8E700E8E7E600E7E7E600E7E6E500E6E5
      E400E5E4E300E5E4E300CDCCCC00B5B5B400E8E8E800FEFEFE00000000000000
      0000000000000000000000000000000000000000000000000000E4E4E400FDFD
      FD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FCFCFB00FBFBFB00E5E4E4007C7A
      78007A787700A09F9E00EDEDED0075737200B1B0B000C2C1C100706F6E007876
      7600B8B7B700F6F6F600F6F5F500F5F5F500F5F4F400F4F4F300F4F3F300F3F3
      F200C7C7C700F5F5F500FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FCFCFC00D1D1D100DFDEDE00EEEEED00EEEDEC00EDECEC00ECEC
      EB00ECEBEA00EBEAEA00EAEAE900EAE9E800E9E8E800E8E8E700E8E7E600E7E6
      E500E7E6E500E6E5E400E5E4E300E2E1E000B3B2B200DDDDDD00FDFDFD000000
      0000000000000000000000000000000000000000000000000000FDFDFD00E2E2
      E200FEFEFE00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00FAFAFA00908E
      8C007E7B7A007C7A7800A8A6A50078767500939291007C7A790073717000716F
      6E00D6D5D500F7F7F700F7F6F600F6F6F600F6F5F500F5F5F400F5F4F400F3F2
      F200CECECE00FEFEFE00FFFFFF00FFFFFF000000000000000000000000000000
      0000FDFDFD00D0D0D000E9E8E800F0EFEF00EFEFEE00EFEEED00EEEDED00EDED
      EC00EDECEB00ECECEB00E3E3E20092929300BABABA00EAE9E800E9E8E700E8E8
      E700E8E7E600E7E6E500E6E5E500E6E5E400E5E4E300B8B7B700DDDDDD00FEFE
      FE0000000000000000000000000000000000000000000000000000000000E5E5
      E500FDFDFD00FEFEFE00FEFDFD00FDFDFD00FDFDFD00FDFDFC00FCFCFC00DBDB
      DA0084817F007F7C7B007D7B79007B797800797776007875740076747300A4A3
      A300F8F8F800F8F8F700F7F7F700F7F7F600F6F6F600F6F6F500F5F5F500CACA
      CA00F5F5F500FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000DADADA00E8E8E800F1F1F000F1F0F000F0F0EF00F0EFEF00EFEEEE00EEEE
      ED00EEEDED00EDEDEC00DDDDDC0047484A0093939400EBEAE900EAE9E900E9E9
      E800E9E8E700E8E7E700E7E7E600E7E6E500E6E5E400E5E5E400B3B3B200E8E8
      E80000000000000000000000000000000000000000000000000000000000FEFE
      FE00DADADA00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFC
      FC00E2E1E100A2A09E0083807F007E7C7A007D7A79008C8A8800BFBEBD00F8F8
      F700F9F9F900F9F8F800F8F8F800F8F8F700F7F7F700F7F7F600E4E4E400E0E0
      E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000F1F1
      F100DBDBDB00F3F2F200F2F2F100F2F1F100F1F1F000F1F0F000F0F0EF00EFEF
      EE00EFEEEE00D0CFCF009C9C9C004A4B4D0073747500C0C0C000E9E8E700EBEA
      E900EAE9E900E9E9E800E9E8E700E8E7E600E7E6E600E7E6E500E4E3E200B5B5
      B500F7F7F7000000000000000000000000000000000000000000000000000000
      0000FAFAFA00E2E2E200FEFEFE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFD
      FD00FDFDFD00FCFCFC00EEEDED00817F7D00B7B6B400FBFAFA00FBFAFA00FAFA
      FA00FAFAF900F9F9F900F9F9F900F9F8F800F8F8F800EFEEEE00D1D1D100FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FDFDFD00CCCC
      CC00F4F4F400F4F3F300F3F3F200F3F2F200F2F2F100F2F1F100F1F1F000EAE9
      E9008887880052525400505052004E4E50004C4C4E004A4A4D0061616300C8C8
      C800EBEAEA00EAEAE900EAE9E800E9E8E800E8E8E700E8E7E600E7E6E500CFCE
      CE00D6D6D600FEFEFE0000000000000000000000000000000000000000000000
      000000000000F7F7F700E2E2E20000000000FEFEFE00FEFEFE00FEFEFE00FEFE
      FD00FDFDFD00FDFDFD00FBFBFB00E9E8E800F1F1F100FCFCFB00FBFBFB00FBFB
      FB00FAFAFA00FAFAFA00FAF9F900F9F9F900EEEEEE00D1D1D100FCFCFC00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000EFEFEF00EAEA
      EA00F5F5F500F5F4F400F4F4F300F4F3F300F3F3F200F3F2F200F2F1F1008A89
      8A0057565800555556005353550051515300505052004D4D50004B4C4E005252
      5400D2D2D100ECEBEA00EBEAE900EAEAE900EAE9E800E9E8E700E8E7E700E8E7
      E600B5B5B500F7F7F70000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00DBDBDB00FEFEFE00FEFEFE00FEFEFE00FEFE
      FE00FEFEFE00FEFDFD00FDFDFD00FDFDFD00FDFCFC00FCFCFC00FCFCFC00FCFB
      FB00FBFBFB00FBFBFA00FAFAFA00E0E0DF00DBDBDB00FDFDFD00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000D1D1D100F7F6
      F600F6F6F500F6F5F500F5F5F400F5F4F400F4F4F300F4F3F300D1D1D1005C5B
      5D005A595B0059595A00A3A2A3005454560098989800A8A7A8004F4F51004D4D
      4F007E7E8000EDECEB00ECEBEB00EBEBEA00EBEAE900EAE9E900E9E9E800E9E8
      E700C9C9C800E2E2E20000000000000000000000000000000000000000000000
      0000000000000000000000000000FEFEFE00E6E6E600E3E3E300FEFEFE00FEFE
      FE00FEFEFE00FEFEFE00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFC
      FC00FCFCFC00EFEFEF00CECECE00F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FDFDFD00D6D6D600F7F7
      F700F7F7F600F6F6F600F6F6F500F5F5F500F5F5F400F4F4F400A3A2A3005F5E
      5F005D5D5E009A9A9A00E4E3E300585759009E9D9E00F0F0EF00787879005050
      520054545600EBEAEA00EDECEC00ECECEB00ECEBEA00EBEAEA00EBEAE900EAE9
      E800E7E7E600C6C6C600FEFEFE00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00E5E5E500D8D8
      D800EBEBEB00FEFEFD00FEFEFE00FEFEFE00FEFEFE00FDFDFD00F2F2F200D8D8
      D800D3D3D300F0F0F000FDFDFD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000F7F7F700EFEFEF00F8F8
      F800F8F7F700F7F7F700F7F7F600F6F6F600F6F5F500F5F5F500D7D7D700BBBB
      BB00ABAAAA00DDDDDD00E5E4E4005B5A5C00A0A0A000F1F1F000868586005353
      550051515300E4E3E300EEEEED00EEEDEC00EDECEC00ECECEB00ECEBEA00EBEA
      EA00EAEAE900B9B9B800FAFAFA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FCFCFC00F3F3F300E7E7E700E2E2E200E3E3E300EAEAEA00F7F7F700FDFD
      FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000E9E9E900F9F9F900F9F9
      F900F9F8F800F8F8F800F8F7F700F7F7F700F7F6F600F6F6F600F6F5F500F5F5
      F400F5F4F400F4F4F300E6E5E5005E5D5E00A2A2A200CDCDCD005E5D5F005756
      580059595A00ECEBEB00EFEFEE00EFEEED00EEEDED00EDEDEC00EDECEB00ECEB
      EB00ECEBEA00BBBABA00F6F6F600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000E1E1E100FAFAFA00FAF9
      F900F9F9F900F9F9F800F8F8F800F8F8F700F8F7F700F7F7F700F7F6F600F6F6
      F500F6F5F500F5F5F400D4D3D300626161006A696A005F5E5F005C5B5C005A59
      5B0084848500F1F0F000F0F0EF00F0EFEE00EFEEEE00EEEEED00EEEDED00EDED
      EC00EDECEB00BFBEBE00F3F3F300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00ECECEC00D6D6D600BCBCBC009D9D9D00C0C0C000F0F0F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FCFCFC00FBFBFB00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4E4E400A7A7A7009191
      910088878500817D76003939380061616100606060008C8C8C00BABABA00ECEC
      EC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FDFDFD00F9F9F900F3F3
      F300EBEBEB00E0E0E000D4D4D400D2D2D200E3E3E300F5F5F500FDFDFD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9F8F600C0BFB9009F9F9B00AFAC
      A100AAA4940079737600736B62005E5E5F002E2E2E00757473007E7E7E008888
      8800B2B2B200E6E6E600FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDFDFD00FBFBFB00F6F6F600EFEFEF00E5E5E500D8D8D800CACACA00BABA
      BA00ABABAB009E9E9E009494940093939300A5A5A500C1C1C100DFDFDF00F3F3
      F300FCFCFC000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B9B5A9009A92850077746F007D7A
      7800A37F6200756F9A00988E85006967660010100F0048403100867C68007873
      6B007E7F7E006868680093939300E4E4E4000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FCFCFC00F8F8F800F2F2F200E9E9
      E900DEDEDE00D0D0D000C1C1C100B1B1B100A3A3A300979797008E8E8E008989
      890083838300717171006363630072727200858585008D8D8D00A1A1A100BEBE
      BE00DCDCDC00F1F1F100FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BAABB100B5A49600AEA9A500CEC9
      C400D9D3CF00B3ACA800857D7400978E85003B40320051483100655A44008176
      630092867B004D4C4B0067676700E2E2E2000000000000000000000000000000
      0000FBFBFB00F5F5F500EDEDED00E2E2E200D5D5D500C6C6C600B6B6B600A7A7
      A7009B9B9B00919191008A8A8A008585850082828200818181007D7D7D004B4B
      4B003D3D3D004A4A4A003F3F3F00373737005252520081818100838383008B8B
      8B009D9D9D00B9B9B900D8D8D800EFEFEF00FBFBFB0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D3CECB00A7A19D008C8783007D78
      7300817A7400938C8600948C82008D837A00348230000C610400255F1600455B
      2C00675B45004C463B0022212000BCB3AC00000000000000000000000000F5F5
      F500DCDCDC00C2C2C200AFAFAF00A0A0A000969696008D8D8D00878787008383
      8300818181008181810081818100808080007C7C7B00807F7F00484848001818
      18003838380046464600707071006C6D6D00262626005E5E5E00818181008080
      8000828282008A8A8A009B9B9B00B6B6B600D5D5D500EDEDED00FAFAFA000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5B3B10046454500363432004944
      4000635C56009189820057524D00413E3C0037863600076F0500067507000580
      08000B840E002E772200546639008D827100000000000000000000000000F5F5
      F500D9D9D900BABABA00979797006E6E6E005C5C5C0065656600818181008282
      82007E7E7D0083817B008C897D00938B7900867A6200786E590023211E000707
      0700393939005C5C5C006C6C6C00CACACA00666666002A2A2A00808080007F7F
      7F008080800080808000828282008888880098989800B2B2B200D1D1D100EAEA
      EA00F9F9F9000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E5E4E300959494007C7C7C006E6C
      6B0075716E008F898400605B57003333320036853500067C0800058109000489
      0A0004910B0005990C0006A20D0062BC62000000000000000000000000000000
      0000F3F3F3006565650036363600494948004F4F4C0066655E0081807600B6B3
      A000C1BCA700BAB69F00AFA993009B927B00847860007B6E540074695B00514C
      47003A3A3A006666660084848500878787009494940010101000181818008080
      80007F7F7F007F7F7F007F7F7F0080808000818181008787870095959500AEAE
      AE00CDCDCD00E7E7E700F7F7F700FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000FBFBFB00C2C0BF00B1ACA900B2AC
      A800C0BAB500D7D2CE00C3BCB500928A84003488310004890B00048C0B000491
      0B0005970C00069F0D0007A70E0063CB67000000000000000000000000000000
      0000B3B3B0004B4A430075746C00A9A89F00C6C5BF00DBDBD900D4D3CF00C1BE
      A900BBB6A200A39D8800958D7A00968D7E008D8374006F635300897D6E00A696
      89004D4C4B004242420076767700646464006E6E6E000C0C0C002F2F2F008181
      8100818181008181810080808000818181007F7F7F0080808000818181008686
      860093939300AAAAAA00C9C9C900E5E5E500F6F6F600FDFDFD00000000000000
      00000000000000000000000000000000000000000000FDFDFD00EBE8E600DDD8
      D4007CAD7600519E510034973700128E1800048E0B0005930C0005960C00069A
      0D00069F0D0007A60E0008AD0F0063CF6800FDFDFD00EFEEE900DFDDD200CDCA
      BA00C4C1AB00DFDED900FBFBFB0000000000F4F4EF00CDCAC000B0AA9D00A7A0
      9200ABA39B00A09C9900968D89006B6A79004A53C80069677A008A827800A697
      8A0068615B003A3A3A0040404000515151003535350007070700080808003535
      35006C6B6A0077746E00767470008181810080808000808080007F7F7F008080
      8000818181008585850090909000A7A7A700C6C6C600E2E2E200F5F5F500FDFD
      FD00000000000000000000000000000000000000000000000000000000000000
      00002EBA350008AA0F0006A40D00069E0D00069E0D00069F0D00069F0D0007A3
      0E0007A70E0008AD0F0009B3100063D16800E6E5DD00C2BFAA00C2BFAA00C3C0
      AB00C0BDA700CBC7BB00B8B3A600ACA69700A9A09600A6A09C009C9895005A58
      5800683B20006B4F3000C3671E005E4B46004849EC004E508C00837C7300A598
      8E00ABA198002F2E2D002D2D2D00151515000A0A0A0003030300010101000000
      00005D5746007A6C520076674E00776F5C0078777100807F8000818181007F7F
      7F00808080008080800080808000848484008E8E8E00A4A4A400C1C1C100DEDE
      DE00F2F2F200FCFCFC0000000000000000000000000000000000000000000000
      000092DD95003ECC440010C919000DCF16000ED017000ECE16000CC514000ABC
      120009B7100009B5100009B50F0063D06800DFDDD600B4B09B00A6A08D00A8A0
      9100AEA79B00A29B94007E7A7700696664005352520053525200686564007A78
      7700A47857008A5B2C00A3755300654F49005D59D9005758920081786800938B
      8300C1B7AF00A19B96002E2E2E00111111000303030002020200020202000000
      0000655A46007B6E5600968C750071654F0075685000776F5D0075726E008080
      80008181810081818100808080007C7C7C00696969005B5B5B00606060009696
      9600BDBDBD00DBDBDB00F1F1F100FBFBFB000000000000000000000000000000
      00000000000000000000EEFBEF00B0EDB2006FE1740033D63B000ED017000DD0
      160017CF200039D53F005CD66100ABE6AD00DDDCDB00837C7100807A7800795B
      47003532300075716D004B4846004A494800595858006362620064626100D5CE
      CA00C0BAB500C4BDB900D1CCC900D9D4D100BBB5AF00817A730082786E00837B
      6F00A79F9A00D9D5D300DDD9D800B0ACAA00726D6A0006060500020202001E19
      12003730230084796100AAA48D00988F7B00978E78006D614C00695D4700746F
      67007F807F00818181006C6C6C00303030004242420043434300393939003737
      370082828200A1A1A100C1C1C100E2E2E2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EBFAEB00EAFA
      EB0000000000000000000000000000000000FBFBFC00544DA300B9732D00D082
      3F007866520074706E003E3C3B005E5B5900767270008C888400B5AFAA00D4CE
      C900DAD5D100E0DBD800E1DCDA00DCD7D500BEB8B400827B7400827A7000857D
      7400847A6F00988F8600B9B4B000BBB5AF00A8A098000808090000000000463C
      2B005C4E380050443100594E3A008278630092897500ADA79100867C67008D7F
      6D00A0928700827C77003A3836000A0A0A004242420060606000ADADAD005555
      550048484800AEAEAE00C4C4C400DEDEDE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000079C0E00079C0E00079F
      0E0006A10D0008A30F0008A50F0008A70F0008A90F0007AB0E0009AC100009B0
      100008B10F000AB5110026BF2D00FFFFFF00000000006966AB00997559009C8E
      8000C6BDB700B9B2AB00CAC3BE00DDD7D200E6E1DE00EDEAE700EDEAE800E8E5
      E300E1DCD900D8D2CE00D4CEC900D6D0CC0000000000857E7600837B70008880
      79008A817900887F76008A8074008B8073008B81760008070800020202004C41
      2E005C503A005C503A005C4F3900584D380000000000635B4A008D877700A193
      8500A4958800A5968900A596880047433F003F3F3F008383830089898900AEAE
      AE001A1A1A00E5E5E500F4F4F400FAFAFA00079E0E0009A0100009A0100006A2
      0D0009A5100008A50F0008A60F000AA9110009AA100009AC10000BB012000AB2
      11000AB4110009B6100027BF2D00FFFFFF00FCFCFC00BBB4B000D1CAC400D4CF
      C900D8D2CD00DCD8D300DCD7D200D8D2CD00D3CCC600CFC8C100CEC7C000CFC8
      C200D1CBC400D3CCC700D5CFCA00D7D0CD00BEB7B300877F7800847B70008980
      7A008A837A008C837A008F857C0090857C008C827600273A19002A5A1C003B4D
      2100564B34005B4E39005C4F39005D513B005E513A005E523C00645743007A6C
      5B0093857700A4948800A7988B00625D59003F3F3F006C6C6D00727274007F7F
      7F0015151500DBDBDB00FFFFFF00FFFFFF0006A10D0008A30F0008A30F0008A5
      0F0008A80F000AA8110007AA0E0009AC100009AE100009B010000AB111000AB4
      11000AB6110009B5100026BE2D00FFFFFF00FCFCFC00B8B1AB00D0C9C200CEC6
      BF00CDC5BE00CDC4BD00CCC4BD00CDC5BE00CEC6BF00D0C9C200D6D0CA00D6D0
      CC00BCB8B500A09C9A00898683007C797800C1BAB5008B827A00968A7A009287
      770090847400897E70008F857C0090857B008D83760009780E00048B0B00095F
      02000D5D040025551300424E2600574A34005D4F3A005F523C0061543E006155
      3E00645742006D604D0087796A004A474300373737003A3A3A005A5A5A004F4F
      4F0007070700ABA5A000EBE9E800FFFFFF0008A30F0008A40F0008A70F0008A8
      0F0008A80F0007AB0E0009AD100009AF100009B1100008B30F000AB511000AB6
      11000AB711000AB7110028C02E00FFFFFF00FCFCFC00B8B1AB00D3CCC600D4CD
      C700D8D1CC00DED8D300CDC9C500ACAAA700928F8C006F6D6B0054514E00534D
      480068605800766D65006C655E00615C5800C5BEB9008C827900C9C4C100D4CE
      CA00B3A9A00094897D0091877E0092877D008D8476000C771000058A0D000A63
      03000B6204000B6605000769040012680C002A5B18004B522E005D503B006254
      3F00655843006559430066594300564D3D0038342C00323232001C1C1C000E0E
      0E00010102008D807600A6978A00D9D3CE0007A90E0009A8100009AA100007AA
      0E0009AB100009AE100009B010000BB012000AB211000AB511000AB611000AB5
      11000AB7110009B5100026BE2D00FFFFFF00FDFDFD00C0BAB600A4A2A1007675
      7600525152002A29280017151400302D2A00383431002B2825004C474200635B
      54006D655D00746C6300786F660065605A00C6BFBA008E847B005B554F007E75
      6D005D5752009E9A96007C756E0080786F00948A7E000C771000058A0D000967
      03000A6605000A6A0700096C040009700700077306000878090015721100305F
      1E00545234006355400067594400695D47006C5E4900655944004E483B001917
      130000000000877B7100A6978A00D1CAC4000ECE16000FC717000CBF140009B6
      11000AB111000AB0110008B10F000AB311000AB611000AB711000AB511000AB5
      11000AB7110009B5100026BE2D00FFFFFF00F6F5F400C1BBB700444343001918
      1800141414001312120023211E0021201E003633300046403C00504A45005A53
      4D00635C55006C645C00736B6200625B5500CBC4BF008F857C0059524D00635C
      550059524C0045413D00737271009C959100958C7F0008750E00048A0C00096B
      040009690500096D0400076E06000873070006750600077A0700057E08000582
      090004860A0017771400386123005A533800675943006B5F48006D604A006F63
      4C005D5341007A6D5A008F817300CDC7C0000FD017000FD017000FCF17000ECF
      17000ECE16000DC915000CC314000ABD110009B7100009B6100009B610000AB6
      10000AB611000AB7110028C02E00FFFFFF00CAC4BD00BCB6B100828281005F5F
      5F004A4A4A003F3E3E003534330037353400393634003D39350047423E004F49
      44005B564E00645D56006D655D005F585200C4BEB90093887F0065605D005651
      4C0047423E003D39350036322F0024222100A29B920009760F00058A0D00086F
      0500096F08000A720700087207000876080007780800077E0B0008820C000485
      090007880D00058D0C00048F0B000A8F0F00217A1A0042612B00625740006E60
      4B006F634D0072664E0073675200C4BFB7000FD118000FD118000FD119000FD1
      16000FD0190010D019000FD0170010D0190010CF18000ECB15000EC516000BBE
      140009B810000BB6120025BE2C00FFFFFF00FFFFFF00CDCAC700959493008181
      810076757500605E5E0049494900434242004442410044413F00494541004A45
      4100524D47005A554E00645C5600635C5400B0ABA800998E8300635D58006B67
      6500373431002D2A270028262400191716009F988F0009760F00058A0C000773
      06000A7309000876080006760800097B0900057D090008810A0006830B000586
      0B00058C0C00078D0E00048F0B0006940D0007970E00049A0C000E9512002979
      1E004C6032006A5A470074665000A5A091000FD218000FD218000FD218000FD2
      18000FD118000FD118000ED117000FD018000ECF17000ECD16000DCB150015C9
      1D0030CE360057D35C008BDD8E00FFFFFF00FFFFFF00DEDDDC00A9A8A7009292
      920089888800807F7F0077767600686868005D5C5B0059585700595654005B57
      5400605C580067625E00746E6900817B750099949100A4988F00625C55006462
      61005553500025232200191817000F0F0E009992890007750D00048A0C000778
      07000777080007780700077A0900057E0800067F0A000482090005870B00058A
      0A00058D0C00048E0B0006920D0006950D0005980C00079B0E00069E0D0006A1
      0D0006A50E00119812003C7C2D00C6CDBD000ED117000ED117000ECF17000ECD
      16000CCA140026CC2C0046D44C0069DB6E008EE49200B2ECB500D8F5D900F5FC
      F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5F500C8C6C4008C8B
      8B009B9B9B009290900086878700807F7F007878780073727200757373007674
      7200797674007B7875007F7A7700817C770087838000B2A9A100847970004544
      43005452520051504F003B3A3A00232222009891880009760F00058A0C00067C
      0800077C0B00087F0B000680080008830C000483090007880D00058B0C00058B
      0C0007900E0006910D0006940D0008980F0007990E00079B0E00099F100008A2
      0F0008A40F0008A80F0028B32D00FFFFFF00A6EAA900ACECAF00C3F1C400DCF7
      DD00FBFEFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCAC900A09F
      9F00ABABAB00A3A1A1009798980090909000888787007F7E7E007C7B7B007B79
      78007D7B79007E7B79007975720065625E00706D6B00C1B9B2009B8E8300615A
      5500383737004746460051515100474747009892880006770D00058B0C000680
      090008810C0006820C000484090006870D0005880B00058A0C00078E0E00048F
      0B0006920D0006930D0006960D00079A0E00079B0E00079E0E0008A20F0008A5
      0F0008A70F0008AA0F0026B62C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E5E4E400CBCA
      C900ABAAAA00B3B3B300A9A9A900989898008383830073727200797878008583
      8300928F8E009F9C9900B3AFAB00D5D0CC00E0DBD700D4CEC900A89C92009E90
      84008D8075005A534E00403F3D0036353600A59D910004770900048C0C000485
      0A0005860B0005870B0005870A00058A0C00058C0C00058C0C00048E0B000690
      0D0006920D0006960D0005970C00079B0E00079C0E0006A00D0008A30F0008A6
      0F0007A70E0009AA100026B82C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CECC
      CC00B0B0B000AFAEAE00B3B3B300BFBDBC00CFCCCA00DED9D500DAD4CF00D6CF
      CA00D3CCC700D2CAC500D3CCC600D5CFCA00D7D2CD00DBD6D300DEDAD700D3CE
      CA00BCB2AA00A5988C00A29487009D8F83009D928300077A0D00068E0D000589
      0C00058B0C00058C0C00058C0C00078D0E00048F0B0007900E0006930D000694
      0D0008970F0007980E0007990E00079E0E00099F100006A20D0008A60F000AA7
      110007AA0E0008AD0F0026B92C00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFEF
      EE00CBC7C300C7BDB500BFB4AB00BBAFA500BBB0A700BFB4AC00C2B8B000C6BD
      B500CAC1BA00CDC5BF00D0C9C500D4CECA00D7D2CE00DAD6D200DDD9D600E1DD
      DB00E5E1E000E6E2E200D5CDCA00BEB0AA007C896A00057C0B0006900E00048C
      0B00078D0E00078F0E00048F0B0006900D0006920D0006930D0006960D000697
      0D0007980E00079C0E00079D0E00099F100008A30F0008A30F0008A80F0009A9
      100009AC100008AF0F0027BA2D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F3F2F100D8D3CF00C1B9B300B8AEA600BEB4AB00C2B8B000C6BC
      B500CAC0BA00CEC5BF00D2CAC400D5CECA00D7D0CC00CECCC600B4BEAE0094AE
      9100719E71004F8D50002B7E2E0009730E000178080005840A0006900D00068F
      0D0006910D0006900D0006920D0006920D0006950D0006950D0006980D000798
      0E00079B0E00079C0E00079E0E0006A20D0008A40F0008A50F0008A90F0009AA
      100009AE100009B1100027BC2D00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FCFCFB00E9E7E500D7D2CF00C5C2
      BB009FBB97006C9A660053895000347C34001B711D00076B0B00036F07000478
      090005830B00048B0A0007920E0007960E0006950D0006950D0006920D000692
      0D0006950D0006960D0006940D0007960E0005980C00079A0E00079A0E00079C
      0E00099F100008A10F0006A20D0008A40F0008A60F0008A90F0009AB100009AC
      100009B0100009B3100027BE2D00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008BD18D00048F0B00058B0A0006940C000000000006A00E0007A20E0007A2
      0E0007A00E00079E0E00079C0E00079A0E0005960C0006950D0006920D000597
      0C0006960D0006980D0005990C00079A0E00000000000000000000000000FAFA
      FA00ECECEC00D6D6D600BCBCBC009E9E9E00C0C0C000F0F0F000000000000000
      000000000000000000000000000000000000000000000000000000000000FAFA
      FA00ECECEC00D6D6D600BCBCBC009E9E9E00C0C0C000F0F0F000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007DD1800008AB10000AAB110008AA0F000AAA11000AA8110008A60F0008A5
      0F0009A31000079E0E00079E0E00079C0E0005990C0008960F0006940D00079A
      0E00079C0E00079B0E00079C0E00079E0E0000000000E4E4E400A9A9A9009191
      91008A898700807D76003939390061616100606060008C8C8C00BABABA00ECEC
      EC000000000000000000000000000000000000000000E4E4E400A9A9A9009191
      91008A898700807D76003939390061616100606060008C8C8C00BABABA00ECEC
      EC00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007CD37F0008AC0F0009AD100009AB100009AB100009AA100008A60F0008A5
      0F0008A40F0006A10D00099E1000079C0E0007990E0007970E0007950E00079C
      0D00079E0E0009A01000069E0D0009A11000F9F8F600BEBEB7009F9F9B00AFAC
      A000A9A3930079737600736A62005E5E5E002E2E2E00757573007F7E7E008888
      8800B2B2B200E6E6E600FCFCFC0000000000F9F8F600BEBEB7009F9F9B00AFAC
      A000A9A3930079737600736A62005E5E5E002E2E2E00757573007F7E7E008888
      8800B2B2B200E6E6E600FCFCFC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007DD5800009B0100009B0100009AF100009AC100009AA100007A80E0007A6
      0E0007A30E0007A10E00069F0D0006A10D0007A70F0008AE10000AB6120008AE
      100007A30E0006A10D0007A10E0008A20E00B9B5A8009991850077736E007D7A
      7900A27F6200756E9900968D8400686665000F0E0E0047403100867D69007874
      6C007D7D7D006969690094949400E4E4E400B9B5A8009991850077736E007D7A
      7900A27F6200756E9900968D8400686665000F0E0E0047403100867D69007874
      6C007D7D7D006969690094949400E4E4E4000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080D7830008B30F0009B1100008B00F000AAF11000AB1120009B511000DBA
      15000EC016000DC7150010CD180010CF19000FCF170010CF180010CF18000ECF
      170010CE18000EC617000BBC13000AB11200BCADB000B5A49600AEA9A600CEC9
      C400D8D2CE00B3ACA700867D7400978E85003B40320051493100655A44008075
      630093877C004D4C4B0067676700E2E2E200BCADB000B5A49600AEA9A600CEC9
      C400D8D2CE00B3ACA700867D7400978E85003B40320051493100655A44008075
      630093877C004D4C4B0067676700E2E2E2000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EDF9EE007ED8820038C93E000EC616000ECD16000FD118000FD2170010D1
      190010D119000FD118000FD118000FD118000FD116000FCF19000FD019000FD0
      16000FD0190010CF19000ECF170010CF1800D3D0CC00A6A19D008C8783007D78
      740080797300938C8600948B82008C837A00338230000D61040025601600455B
      2C00675B45004C463C0023222000BCB4AC00D3D0CC00A6A19D008C8783007D78
      740080797300938C8600948B82008C837A00338230000D61040025601600455B
      2C00675B45004C463C0023222000BCB4AC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E8F9E800A8EAAB0065DB6A0023CD2A000ECD
      16000ED017000DD217000FD218000FD218000FD218000FD018000FD118000FD1
      18000FD118000FD116000FCF16000FD01700B6B3B00046464600363433004944
      4000625B54009189820058524D00413E3C0037863600086F0500067507000580
      09000C840F002E772200546639008D827100B6B3B00046464600363433004944
      4000625B54009189820058524D00413E3C0037863600086F0500067507000580
      09000C840F002E772200546639008D8271000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00D7F5
      D90096E6990055D75B001BCC22000ECE16000ED117000FD218000ED217000FD2
      18000FD218000FD218000FD218000FD01800E4E3E200959494007D7C7C006E6C
      6B0075716D008F898300605B57003333320036853500067C0800058109000489
      0B0005910C0006990D0007A20E0062BA6200E4E3E200959494007D7C7C006E6C
      6B0075716D008F898300605B57003333320036853500067C0800058109000489
      0B0005910C0006990D0007A20E0062BA62000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F9FDF900C7F2C90085E28A0045D44B0013CB1D000ED0
      17000FD218000FD318000FD318000FD31800FBFBFB00C3C1BF00B1ADA900B2AD
      A800C0BAB500D7D1CD00C3BBB600928A84003488310004890B00058D0B000591
      0C0006980D00079F0E0007A70E0065CC6900FBFBFB00C3C1BF00B1ADA900B2AD
      A800C0BAB500D7D1CD00C3BBB600928A84003488310004890B00058D0B000591
      0C0006980D00079F0E0007A70E0065CC69000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F3FCF300BAEE
      BC007CE0800040D345000ECB17000ED0170000000000FDFDFD00EBE8E600DDD9
      D5007CAD7600519E510034983700138E1800058E0C0005930C0006960D00069A
      0D00079F0E0007A60E0008AD0F0065CF690000000000FDFDFD00EBE8E600DDD9
      D5007CAD7600519E510034983700138E1800058E0C0005930C0006960D00069A
      0D00079F0E0007A60E0008AD0F0065CF69000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F4FCF400BEF0C0000000000000000000000000000000
      00002FBA350008AA0F0007A40E00069E0D00069E0E00069F0E00079F0E0007A3
      0E0008A70F0008AD0F0009B4100066D16B000000000000000000000000000000
      00002FBA350008AA0F0007A40E00069E0D00069E0E00069F0E00079F0E0007A3
      0E0008A70F0008AD0F0009B4100066D16B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000094DE97003FCC45000EC817000ECF17000ED017000ECE16000CC514000BBD
      12000AB7110009B5100009B6100066D26B000000000000000000000000000000
      000094DE97003FCC45000EC817000ECF17000ED017000ECE16000CC514000BBD
      12000AB7110009B5100009B6100066D26B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000EEFBEF00B0EDB20070E1750034D63B000ED017000ED0
      170018D0200039D53F005CD66100ABE6AD000000000000000000000000000000
      00000000000000000000EEFBEF00B0EDB20070E1750034D63B000ED017000ED0
      170018D0200039D53F005CD66100ABE6AD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAFAEB00EAFA
      EB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000EAFAEB00EAFA
      EB00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F4F4F400E4E3E300E2E2
      E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2E100E2E2
      E100E2E2E100E4E3E300F4F4F400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA009DBCD300518DC0004E8B
      BD004E8ABD004E8ABD004E8ABD004E8ABD004E89BD004E89BD004D89BD004D88
      BC004D88BC00508CBE00A8B9C500FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FAFAFA0043A0EE001685E8001584
      E8001583E7001482E7001381E6001280E6001280E5002086E3004199E4004198
      E3004097E3001D83E1006BACE200FAFAFA000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003CA8F9001D9BF8001C9A
      F8001C99F8001B99F8001B99F8001A98F7001998F700329EEF005DB6F2005DB6
      F2005DB6F2002F9CEF006EBDF900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003DAEFE002DA8FE002CA8
      FE002CA8FE002CA8FE002BA8FE002BA8FE002BA8FE002AA8FE002AA8FE0029A8
      FD0029A7FD0029A7FD006CC2FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003FB1FE003DB1FD003EB2
      FD003FB3FD003FB4FD003FB4FD003FB4FD003FB3FD003EB3FD003EB3FE003EB3
      FE003EB3FE003EB3FE006CC4FE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5FBFE0052BEFD0057C2FD0058C2
      FD0058C3FD0058C3FD0059C3FC0059C3FC0059C3FC0059C3FC0057C2FD0054BF
      FD004EBDFD004DBCFE006FC8FD00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EBF7FE006ACBFC006CCCFC006DCC
      FC006DCCFC006DCCFC006ECCFC006ECDFC006FCDFC006FCDFC0070CDFC0070CE
      FC006FCDFC0065C8FD0075CDFD0000000000FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FEFEFE00FEFEFE00FEFEFE00FEFEFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E2F4FE0084D8FD007ED5FD007ED5
      FD007ED6FD007ED6FD007ED5FD007FD6FD007FD6FD0080D6FD0080D6FD0081D6
      FD0081D7FD0082D7FD0087D8FD0000000000F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F9F9F900F9F9F900FAFAFA00FBFBFB00FCFCFC00FDFDFD00FDFD
      FD00FDFDFD00FEFEFE00FEFEFE00000000000000000000000000000000000000
      000000000000000000000000000000000000DBF2FE009EE5FD008CDDFD008CDD
      FD008CDDFD008CDDFD008CDDFD008CDDFD008CDDFD008CDDFD008CDDFD008CDD
      FD008CDDFD008DDDFD0096E1FD0000000000F0F0EF00F0F0EF00F0F0EF00F0F0
      EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0
      EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0
      EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F1F0
      F000F1F0F000F2F1F100F3F2F200F3F3F300F5F5F500F7F7F700F8F8F800FAFA
      FA00FCFCFC00FDFDFD00FDFDFD00FEFEFE000000000000000000000000000000
      000000000000000000000000000000000000DDF3FE00B5EFFD00B0EDFD00B0ED
      FD00B0EDFD00B0EDFD00B0EDFD00B0EDFD00B0EDFD00B0EDFD00B0EDFD00B0ED
      FD00B0EDFD00B1EDFD00A6E6FC0000000000E6E5E500E6E5E500E6E5E500E6E5
      E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5
      E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5
      E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5
      E500E6E5E500E7E7E700E9E9E900EAEAEA00EDEDED00F0F0EF00F3F2F200F5F5
      F500F8F8F800FAFAFA00FCFCFC00FDFDFD00FEFEFE0000000000000000000000
      0000000000000000000000000000000000000000000059AEE10071A6C90088BC
      DF0088BBDE0088BADD0088B9DC0087B7DB0087B6DA0087B5D90087B4D80087B3
      D70077A3C7006794B7007EB9E70000000000D7D6D600D7D6D600D7D6D600D7D6
      D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6
      D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6
      D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D8D7D700D8D7
      D700D9D8D800DBDADA00DCDCDC00DFDFDE00E2E2E100E6E5E500EAEAEA00EFEF
      EE00F3F2F200F6F6F600F9F9F900FBFBFB00FDFDFD00FEFEFE00000000000000
      000000000000000000000000000000000000000000007CC2E8008FB8CD00E6E6
      E600EBEBEB00EAEAEA00EAEAEA00E9E9E900EAEAEA00E9E9E900E7E7E700E5E5
      E500BDCCD5006AA4C90091C7EF0000000000C5C5C400C5C5C400C5C5C400C5C5
      C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5
      C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5
      C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C6C6
      C500C8C7C700CAC9C900CDCCCC00D0D0CF00D5D4D400DBDADA00E0E0DF00E6E5
      E500ECECEC00F2F1F100F5F5F500F9F9F900FCFCFC00FDFDFD00FEFEFE000000
      00000000000000000000000000000000000000000000E4F0FB00C8DDEE00E0E0
      E000DEDEDE00DEDEDE00DEDEDE00DFDFDF00DFDFDF00E2E2E200E6E6E600EAEA
      EA00BAD4ED00B9DAF800F0F6FD0000000000B2B1B000B2B1B000B2B1B000B2B1
      B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1
      B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1
      B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B3B2
      B100B4B3B200B7B6B500BAB9B900BFBEBE00C5C5C400CCCBCB00D3D3D200DCDC
      DC00E5E4E400EBEBEB00F2F1F100F6F6F600FAFAFA00FDFDFD00FEFEFE000000
      0000000000000000000000000000000000000000000000000000FEFEFE00F8F8
      F800F7F7F700F3F3F300EEEEEE00EBEBEB00E8E8E800E6E6E600E3E3E300E1E1
      E100FAFAFA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FAFAFA00F9F9F900F9F9F900F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8F800F8F8
      F800F8F8F800F8F8F800F8F8F800F8F8F800F3F3F300F3F2F200F2F1F100F1F0
      F000F1F0F000F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0
      EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0
      EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0
      EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0
      EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0
      EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0
      EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00F0F0
      EF00F0F0EF00F0F0EF00F0F0EF00F0F0EF00EAEAEA00E9E9E900E7E7E700E6E5
      E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5
      E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5
      E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5
      E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5
      E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5
      E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5
      E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5E500E6E5
      E500E6E5E500E6E5E500E6E5E500E6E5E500DFDFDE00DCDCDC00DBDADA00D9D8
      D800D8D7D700D8D7D700D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6
      D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6
      D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6
      D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6
      D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6
      D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6
      D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6D600D7D6
      D600D7D6D600D7D6D600D7D6D600D7D6D600D0D0CF00CDCCCC00CAC9C900C8C7
      C700C6C6C500C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5
      C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5
      C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5
      C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5
      C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5
      C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5
      C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5C400C5C5
      C400C5C5C400C5C5C400C5C5C400C5C5C400BFBEBE00BAB9B900B7B6B500B4B3
      B200B3B2B100B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1
      B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1
      B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1
      B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1
      B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1
      B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1
      B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1
      B000B2B1B000B2B1B000B2B1B000B2B1B0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009B9A99009B9A99009C9B
      9A009D9C9B00A09F9E00A5A4A300ABAAA90000000000BBBABA00C5C5C400CFCF
      CE00DBDADA00E5E4E400ECECEC00F3F3F300F8F8F800FCFCFC00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008482810084828100848281008482
      8100848281008482810084828100848281008482810084828100848281008482
      8100848281008482810084828100848281008482810084828100848281008482
      8100848281008482810084828100848281008482810084828100848281008684
      8300878584008A8988008F8E8D00969594009F9D9D00AAA9A800B6B5B400C3C2
      C100CFCFCE00DCDCDC00E7E6E600EFEFEE00F5F5F500FAFAFA00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000706E6D00706E6D00706E6D00706E
      6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E
      6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E
      6D00706E6D00706E6D00706E6D00706E6D00706E6D00716F6E00716F6E007170
      6E0073727000767473007C7A7900838180008D8C8B0098979600A6A5A400B6B5
      B400C5C5C400D4D4D300E1E1E000EAEAEA00F3F2F200F8F8F800FDFDFD00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004B83AD004B83AD004B83AD004B83
      AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83
      AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83
      AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83
      AD004C84AE004E86B0005881A000707579007D7B7A008A89880099989700ABAA
      A900BCBBBB00CDCCCC00DBDBDB00E7E6E600F0F0EF00F7F7F700FCFCFC00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE004C92C700797E82008D8C8B00A09E
      9E00B4B3B200C5C5C400D6D5D500E3E2E200EEEEEE00F5F5F500FBFBFB00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0039A4F500768A98009796
      9500ACABAB00C1C0BF00D1D1D000E0E0DF00EBEBEB00F4F4F400FAFAFA00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000177CE000177CE000177BE000177B
      E000177BE000177BDF00177BDF00177BDF00177BDF00177ADF00177ADF00177A
      DF00167ADF00167ADF00167ADF00167ADF00167ADE00167ADE00167ADE00167A
      DE00167ADE00167ADE00167ADE00157ADE00157ADE001579DE001579DE001579
      DD001D85E5002590ED0035A8FE0035A8FE0035A8FE0035A8FE0039A5F5008592
      9C00A7A6A500BCBBBB00CFCECE00DDDDDD00EAEAEA00F3F3F300FAFAFA00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D6FD7000D6FD7000D6FD7000D6F
      D7000D6FD7000D6FD7000D6FD7000D6FD7000D6FD6000D6FD6000D6ED6000D6E
      D6000D6ED6000D6ED6000D6ED6000D6ED6000D6DD6000C6DD6000C6DD6000C6D
      D5000C6DD5000C6CD5000C6CD5000C6CD5000C6CD5000C6CD5000C6CD5000B6C
      D5000B6CD4000B6CD4001073D9002895F10035A8FE0035A8FE0035A8FE00459A
      DA00A3A2A100B9B8B800CDCCCC00DCDCDC00E9E9E900F3F3F300FAFAFA00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000E73DB000E73DA000E73DA000E73
      DA000E73DA000E73DA000D73DA000D73DA000D73DA000D72DA000D72DA000D72
      DA000D71D9000D71D9000D71D9000D71D9000D71D9000D71D9000D71D9000D71
      D9000D71D9000D70D9000D70D9000D70D9000C70D8000C70D8000C70D8000C70
      D8000C70D8000C70D8000C70D8000C6FD800208BEB0035A8FE0035A8FE0035A8
      FE008F9CA500B8B8B700CCCBCB00DCDCDC00E9E9E900F3F3F300F9F9F900FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F77DE000F77DE000F77DE000E77
      DE000E77DD000E76DD000E76DD000E76DD000E75DD000E75DD000E75DD000E75
      DD000E75DD000E75DD000E75DD000E75DD000E75DC000E75DC000E74DC000E74
      DC000E74DC000E74DC000D74DC000D74DC000D74DC000D74DC000D74DC000D74
      DB000D74DB000D74DB000D73DB000C73DB000C73DB002897F30035A8FE0035A8
      FE005E96C000BAB9B900CDCCCC00DCDCDC00E9E9E900F3F3F300FAFAFA00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FEFEFE00FEFEFE00FEFEFE00107AE0000F7AE0000F7AE0000F7A
      E0000F7AE0000F79E0000F79E0000F79E0000F79E0000F79E0000E79E0000E79
      E0000E79DF000E79DF000E78DF000E78DF000E78DF000E78DF000E78DF000E78
      DF000E78DF000E78DF000E78DF000E78DF000E77DE000E77DE000E77DE000E77
      DE000E77DE000D77DE000D76DE000D76DE000D76DE000F79E00032A5FC0035A8
      FE004C9AD500BDBCBC00CFCECE00DEDEDE00EAEAEA00F3F3F300FAFAFA00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000FEFEFE00FEFEFE00FDFD
      FD00FDFDFD00FDFDFD00FCFCFC00FBFBFB00258AE6002389E6002389E6002389
      E6002389E6002389E6002389E6002389E6002389E6002388E5002388E5002388
      E5002388E5002388E5002387E5002387E5002387E5002287E5002287E5002287
      E5002287E5002287E5002287E5002388E5000877E1000A79E2000D79E2000E7A
      E2000E7AE1000E7AE1000E7AE1000E7AE1000E7AE1000E7AE1002697F30035A8
      FE00489DDD00C2C1C000D3D3D200E1E1E000ECECEC00F4F4F400FBFBFB00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000FEFEFE00FDFDFD00FDFDFD00FCFC
      FC00FAFAFA00F8F8F800F7F7F700F5F5F50070BBF10070BCF10070BCF10070BC
      F10070BCF10070BCF10070BCF10070BBF10070BBF10070BBF10070BBF10070BB
      F10070BBF10070BBF10070BBF10070BBF10070BBF10070BBF10070BBF10070BB
      F10070BBF10070BBF1006FBBF1006FBAF10070BBF0004AA1EA00107EE4000D7C
      E4000F7DE4000F7DE4000F7DE4000F7DE4000F7DE4000E7DE4001D8DED0035A8
      FE00489EDE00C8C7C700D8D7D700E5E4E400EFEFEE00F6F6F600FBFBFB00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FEFEFE00FDFDFD00FCFCFC00FAFAFA00F8F8
      F800F5F5F500F3F2F200F0F0EF00EDEDED004896DA004291D6004291D6004291
      D6004291D6004191D6004191D6004191D6004191D6004191D6004191D6004190
      D6004190D6004190D6004190D6004190D6004190D6004090D6004090D6004090
      D6004090D6004090D6004090D6004C9CDD0064B2EC006FBCF2006CB9F0001685
      E8000F81E7001081E7001081E7000F81E7000F81E7000F81E700188AEC0035A8
      FE004A9FDF00CFCECE00DCDCDC00E7E7E700F1F0F000F8F8F800FCFCFC00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FCFCFC00F9F9F900F6F6F600F3F3
      F300EFEFEE00EAEAEA00E6E5E500E2E2E1004E99D50061A9DE0061A9DE0061A9
      DE0061A9DE0061A9DE0061A9DE0061A9DE0061A9DE0061A9DE0061A9DE0061A9
      DE0061A9DE0061A9DE0061A9DE0061A9DE0061A9DE0061A9DE0061A9DE0061A9
      DE0061A9DE0061A9DE0062AADE004491D0001366B9004493D80072BFF50059B0
      F1000D82EA001185EA001185EA001185EA001084EA001084EA00198DEF0035A8
      FE0040A4EF00D7D6D600E2E2E100ECECEC00F3F3F300F9F9F900FDFDFD00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00FCFCFC00F9F9F900F5F5F500F2F1F100ECEC
      EC00E6E5E500E0E0DF00DBDADA00D5D4D400ACE9FF00AAE7FF00AAE7FF00AAE7
      FF00AAE7FF00AAE7FF00AAE7FF00AAE7FF00AAE7FF00AAE7FF00AAE7FF00AAE7
      FF00AAE7FF00AAE7FF00AAE7FF00AAE7FF00AAE7FF00AAE7FF00AAE7FF00AAE7
      FF00AAE7FF00AAE7FF00AAE7FF00ADE9FF008ACCF1001D6FBF004595D80075C1
      F5002090EE001288EC001288EC001287EC001287EC001287EC001287EC0035A8
      FE0035A8FE00DEDEDE00E8E8E800F0F0EF00F6F6F600FAFAFA00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00FAFAFA00F6F6F600F2F1F100EBEBEB00E5E4
      E400DCDCDC00D3D3D200CCCBCB00C5C5C40000000000A5A4A300A09F9E009D9C
      9B009C9B9A009B9A99009B9A99009A9998009A9998009A9998009A9998009A99
      98009A9998009A9998009A9998009A9998000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000969594008F8E8D008A8988008785
      8400868483008482810084828100848281008482810084828100848281008482
      8100848281008482810084828100848281008482810084828100848281008482
      8100848281008482810084828100848281008482810084828100848281008482
      8100848281008482810084828100848281008482810084828100848281008482
      8100848281008482810084828100848281008482810084828100848281008482
      8100848281008482810084828100848281008482810084828100848281008482
      8100848281008482810084828100848281008482810084828100848281008482
      810084828100848281008482810084828100838180007C7A7900767473007372
      700071706E00716F6E00716F6E00706E6D00706E6D00706E6D00706E6D00706E
      6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E
      6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E
      6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E
      6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E
      6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E
      6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E6D00706E
      6D00706E6D00706E6D00706E6D00706E6D00548CB7005188B2004E86B0004C84
      AE004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83
      AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83
      AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83
      AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83
      AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83
      AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83
      AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83AD004B83
      AD004B83AD004B83AD004B83AD004B83AD0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8FE0035A8
      FE0035A8FE0035A8FE0035A8FE0035A8FE002A98F300248FED001B82E4001B82
      E4001B82E4001B82E4001A82E4001A82E4001A82E4001A82E4001A81E4001A81
      E3001A81E3001A81E3001A81E3001A81E3001A81E3001A81E3001A81E3001981
      E3001981E3001980E3001980E3001980E3001980E3001980E3001980E3001980
      E3001980E2001980E200197FE200197FE200187FE200187FE200187EE200187E
      E200187EE200187EE200187EE200187EE100187EE100187EE100187EE100177E
      E100177EE100177EE100177EE100177EE100177EE100177DE100177DE100177D
      E100177DE000177CE000177CE000177CE000177CE000177CE000177CE000177C
      E000177CE000177CE000177CE000177CE0001378DD001377DD001377DD001377
      DD001377DD001377DD001377DD001376DD001276DD001276DC001276DC001276
      DC001276DC001276DC001276DC001276DC001276DC001175DC001175DC001175
      DC001175DC001175DB001175DB001175DB001075DB001075DB001075DB001075
      DB001075DB001075DB001074DA001074DA001074DA001074DA001074DA001074
      DA001073DA001073DA001073DA000F73DA000F73DA000F73DA000F72D9000F72
      D9000F72D9000F72D9000E72D9000E72D9000E72D9000E72D9000E72D9000E71
      D8000E71D8000E71D8000E71D8000E71D8000E71D8000E71D8000E71D8000E70
      D8000E70D8000E70D8000E70D7000D6FD700137BE000137BE000137BE000137B
      E000137AE000137AE000137AE000137AE000137AE000137ADF00137ADF00137A
      DF00137ADF001379DF001379DF001279DF001279DF001279DF001279DF001279
      DF001279DF001278DE001278DE001278DE001178DE001178DE001178DE001178
      DE001177DE001177DE001177DE001177DE001177DD001177DD001177DD001177
      DD001177DD001177DD001176DD001176DD001176DD001176DD001076DD001076
      DD001075DC001075DC001075DC001075DC001075DC001075DC001075DC000F75
      DC000F75DC000F74DB000F74DB000F74DB000F74DB000E74DB000E74DB000E74
      DB000E74DB000E74DB000E74DB000E73DB00157EE300147EE300147EE300147E
      E300147EE300147EE300147DE200147DE200137DE200137DE200137DE200137D
      E200137DE200137CE200137CE200137CE200137CE200137CE200137CE200137C
      E200137CE100127CE100127CE100127BE100127BE100127BE100127BE100127B
      E100127BE100127BE100127BE100117BE000117AE000117AE000117AE000117A
      E000117AE0001179E0001179E0001179E0001179E0001179E0001179E0001179
      DF001179DF001179DF001179DF001178DF001178DF001078DF001078DF001078
      DF001078DF001078DF001078DF001078DE001078DE001077DE000F77DE000F77
      DE000F77DE000F77DE000F77DE000F77DE001681E6001581E5001581E5001581
      E5001581E5001581E5001580E5001580E5001580E5001580E5001480E5001480
      E5001480E4001480E4001480E400147FE400147FE400147FE400147FE400137F
      E400137FE400137EE400137EE400137EE300137EE300137EE300137EE300137E
      E300127EE300127EE300127EE300127EE300127DE300127DE300127DE300127D
      E300127DE300127DE200127DE200127DE200127DE200117CE200117CE200117C
      E200117CE200117CE200117CE200117CE200117BE100117BE100117BE100117B
      E100117BE100117BE100117BE100117BE100107BE100107BE100107AE100107A
      E100107AE100107AE100107AE000107AE0001784E9001784E9001784E9001784
      E9001784E9001784E9001784E9001784E8001684E8001684E8001684E8001684
      E8001583E8001583E7001583E7001583E7001583E7001583E7001583E7001583
      E7001483E7001482E7001482E6001482E6001482E6001482E6001381E6001381
      E6001381E6001381E6001381E6001381E6001381E6001381E6001381E6001381
      E5001380E5001380E5001380E5001380E5001380E5001380E5001380E5001380
      E5001280E500127FE500127FE500127FE500127FE400127FE400127FE400127E
      E400127EE400127EE400117EE400117EE400117EE400117EE400117EE400117E
      E400117EE400107DE4000D7BE3000A79E2001787EB001787EB001787EB001787
      EB001787EB001786EB001786EB001786EB001786EB001786EA001786EA001786
      EA001786EA001786EA001686EA001686EA001685EA001685EA001685EA001685
      EA001685EA001685EA001685EA001685E9001584E9001584E9001584E9001584
      E9001584E9001584E9001584E9001584E9001584E9001484E9001484E8001483
      E8001383E8001383E8001383E8001383E8001383E8001383E8001383E8001383
      E7001383E7001383E7001383E7001382E7001382E7001382E7001382E7001382
      E7001382E7001282E7001282E6001282E6001282E6001281E6001281E6001281
      E6000F80E6001E89E80058ACEE0071BBF000188AEC00188AEC00188AEC00178A
      EC001789EC001789EC001789EC001789EC001789EC001789EC001789EC001789
      EC001788EC001788EC001788EC001788EC001788EC001788EC001788EC001788
      EC001788EC001688EC001688EC001688EC001688EB001687EB001687EB001687
      EB001687EB001687EB001587EB001587EB001587EB001587EB001587EB001587
      EB001587EB001586EB001586EB001586EB001486EB001486EB001486EB001486
      EB001486EB001486EB001486EB001486EB001486EB001485EB001485EB001485
      EA001485EA001485EA001485EA001485EA001384EA001384EA001384EA001183
      EA00208BEB006DBAF10072BDF30067B3ED00198DEE00198DEE00198DEE00188D
      EE00188DEE00188DEE00188DEE00188DEE00188DEE00188CEE00188CEE00188C
      EE00188CEE00178CEE00178BEE00178BEE00178BEE00178BEE00178BEE00178B
      ED00178BED00178BED00178BED00178BED00178BED00178AED00178AED00178A
      ED00168AED00168AED00168AED00168AED00168AED00168AED00168AED00168A
      ED00168AED00158AED001589ED001589ED001589EC001589EC001589EC001589
      EC001588EC001588EC001588EC001488EC001488EC001488EC001488EC001488
      EC001488EC001488EC001488EC001488EC001488EC001488EC001487EC000F84
      EC0069B9F30074C1F6003F90D4001367BA001A8FF0001A8FF0001A8FF0001A8F
      F0001A8FF000198FF000198FF000198FF000198FF000198FF000198FF000198F
      F000198FF000198FF000198FF000198EF000198EF000188EF000188EF000188E
      F000188EF000188EF000188EF000188EF000188EF000188EEF00188EEF00188E
      EF00188EEF00188DEF00188DEF00188DEF00188DEF00178DEF00178DEF00178D
      EF00178DEF00178CEF00178CEF00178CEF00168CEF00168CEF00168CEF00168C
      EF00168CEF00168CEF00168CEE00168CEE00158CEE00158CEE00158BEE00158B
      EE00158BEE00158BEE00158BEE00158BEE00158BEE00148BEE00148BEE002E99
      F00076C2F6004090D6001C6EBE0094D4F4000000000098DEFD0098DEFD0098DE
      FD0098DEFD0098DEFD0098DEFD0098DEFD0098DEFD0098DEFD0098DEFD0098DE
      FD0098DEFD0098DEFD0098DEFD0098DEFD000000000000000000000000000000
      000000000000000000000000000099DFFD009DE2FF0063ADE1001A69BC006FBE
      F4003AA1F100128BEF00128BEF00128BEF0000000000000000000000000035A8
      FE0035A8FE00E7E6E600EEEEEE00F3F3F300F8F8F800FCFCFC00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FDFDFD00FCFCFC00F8F8F800F3F3F300ECECEC00E5E4E400DBDA
      DA00CFCFCE00C5C5C400BBBABA00B3B2B10088D5FD0088D5FD0088D5FD0088D5
      FD0088D5FD0088D5FD0088D5FD0088D5FD0088D5FD0088D5FD0088D5FD0088D5
      FD0088D5FD0088D5FD0088D5FD0088D5FD0088D5FD0088D5FD0088D5FD0088D5
      FD0088D5FD0088D5FD0088D5FD0088D5FD0089D6FD0090DDFF001461B6005EAF
      E90043A8F500148EF100148EF100138EF100138EF100138EF100138EF10035A8
      FE0035A8FE00EDEDED00F3F3F300F7F7F700FAFAFA00FDFDFD00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FDFDFD00FAFAFA00F5F5F500EFEFEE00E7E6E600DCDCDC00CFCF
      CE00C3C2C100B6B5B400AAA9A8009F9D9D0079CDFC0079CDFC0079CDFC0079CD
      FC0079CDFC0079CDFC0079CDFC0079CDFC0079CDFC0079CDFC0079CDFC0079CD
      FC0079CDFC0079CDFC0079CDFC0079CDFC0079CDFC0079CDFC0079CDFC0079CD
      FC0079CDFC0079CDFC0079CDFC0079CDFC0079CDFC007ED3FF00155CB20062B0
      EA003EA8F6001492F4001492F4001492F4001492F4001492F4001492F40032A6
      FD0035A8FE00F3F3F300F7F7F700FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE00FDFDFD00F8F8F800F3F2F200EAEAEA00E1E1E000D4D4D300C5C5
      C400B6B5B400A6A5A400989796008D8C8B006AC5FC006AC5FC006AC5FC006AC5
      FC006AC5FC006AC5FC006AC5FC006AC5FC006AC5FC006AC5FC006AC5FC006AC5
      FC006AC5FC006AC5FC006AC5FC006AC5FC006AC5FC006AC5FC006AC5FC006AC5
      FC006AC5FC006AC5FC006AC5FC006AC5FC006AC5FC006FCCFF00145BB00063B1
      EA00239DF8001595F6001595F6001595F6001595F6001595F6001595F6002DA3
      FC0035A8FE00C8E4F900FAFAFA00FCFCFC00FDFDFD00FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE00FCFCFC00F7F7F700F0F0EF00E7E6E600DBDBDB00CDCCCC00BCBB
      BB00ABAAA90099989700858A8E006789A2005CBFFE005CBFFE005CBFFE005CBF
      FE005CBFFE005CBFFE005CBFFE005CBFFE005CBFFE005CBFFE005CBFFE005CBF
      FE005CBFFE005CBFFE005CBFFE005CBFFE005CBFFE005CBFFE005CBFFE005CBF
      FE005CBFFE005CBFFE005CBFFE005CBFFE005EC2FF0049A5E9001C5FB2005EBB
      F9001296F8001698F8001698F8001698F8001698F8001598F8001598F8002DA4
      FC0035A8FE00CAE6FB00FDFDFD00FDFDFD00FEFEFE00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE00FBFBFB00F5F5F500EEEEEE00E3E2E200D6D5D500C5C5C400B4B3
      B200999FA3005C9BCB0035A8FE0035A8FE004EB9FF004DB7FF004DB7FF004DB7
      FF004DB7FF004DB7FF004DB7FF004DB7FF004DB7FF004DB7FF004DB7FF004DB7
      FF004DB7FF004DB7FF004DB7FF004DB7FF004DB7FF004DB7FF004DB7FF004DB7
      FF004DB7FF004DB7FF004EB8FF004EB9FF004AB1F8001959AE004D9ADA0021A2
      FD00169AFB00179BFB00179BFB00179BFB00179BFB00179BFB00179BFB002DA4
      FD0035A8FE00CBE7FC00FEFEFE00FEFEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE00FAFAFA00F4F4F400EBEBEB00E0E0DF00D1D1D000C1C0BF0096AB
      BA0042A6F10035A8FE0035A8FE0035A8FE00246CBE00246CBE00246CBE00246C
      BE00246CBE00246CBE00246CBE00246CBE00246CBE00246CBE00246CBE00246C
      BE00246CBE00246CBE00246CBE00246CBE00246CBE00246CBE00246CBE00246C
      BE00246CBE00246CBE00246CBE00246CBE001E60B3002E8ADB0024A6FF00189E
      FC00189EFC00189EFC00189EFC00189EFC00189EFC00189EFC00189EFC002AA4
      FD0035A8FE00CCE8FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE00FAFAFA00F3F3F300EAEAEA00DDDDDD00CFCECE00B4BABE0043A7
      F30035A8FE0035A8FE0035A8FE0035A8FE001A94F000188EEA00188DEA00188D
      EA00188DEA00188DEA00188DEA00188DE900188CE900188CE900188CE900188C
      E900188CE900188CE900188CE900188CE900188CE900188CE900188CE900188C
      E900188CE900188CE900188CE900178DE9001999F5001AA0FF001A9FFD001B9F
      FD001B9FFD001A9FFD001A9FFD001A9FFD001A9FFD001A9FFD001A9FFD0027A3
      FD0035A8FE00B4DEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE00FAFAFA00F3F3F300E9E9E900DCDCDC00CDCCCC0067AEE30035A8
      FE0035A8FE0035A8FE002C9CF600177EE20020A3FE0020A3FE0020A3FE0020A3
      FE0020A3FE001FA3FE001FA3FE001FA3FE001FA3FE001FA3FE001FA3FD001FA2
      FD001FA2FD001FA2FD001FA2FD001FA1FD001EA1FD001EA1FD001EA1FD001EA1
      FD001EA1FD001EA1FD001EA1FD001EA1FD001EA1FD001EA1FD001EA1FD001EA1
      FD001EA1FD001DA1FD001DA1FD001DA1FD001DA1FD001DA1FD001DA1FD0029A5
      FD0035A8FE009AD3FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE00F9F9F900F3F3F300E9E9E900DCDCDC00BAC7D10035A8FE0035A8
      FE0035A8FE002897F300137BE000137BE00023A4FE0023A4FE0023A4FE0023A4
      FE0023A4FE0023A4FE0022A4FE0022A4FE0022A4FE0022A4FE0022A4FE0022A4
      FE0022A4FE0022A4FE0022A4FE0022A4FE0022A4FE0022A4FD0022A3FD0022A3
      FD0022A3FD0022A3FD0021A3FD0021A3FD0021A3FD0021A3FD0021A3FD0021A3
      FD0021A3FD0021A3FD0021A3FD0021A3FD0021A3FD0021A3FD0021A3FD002BA6
      FD0035A9FE009AD4FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE00FAFAFA00F3F3F300E9E9E900DCDCDC0094BFDE0035A8FE0035A8
      FE002D9DF700157EE300157EE300157EE30027A6FE0027A6FE0026A6FE0026A6
      FE0026A6FE0026A6FE0026A6FE0026A6FE0026A6FE0026A6FE0026A6FE0026A6
      FE0026A6FE0026A6FE0026A6FE0026A6FE0025A6FE0025A6FE0025A6FE0025A6
      FE0025A6FE0025A6FE0025A6FE0025A6FE0025A5FD0025A5FD0025A5FD0025A5
      FD0025A5FD0025A4FD0025A4FD0025A4FD0025A4FD0025A4FD0025A4FD002AA6
      FD0036A9FE009BD4FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE00FAFAFA00F3F3F300EAEAEA00DEDEDE0082BBE60035A8FE0035A8
      FE001A86E9001682E6001681E6001681E60029A7FE0029A7FE0029A7FE0029A7
      FE0029A7FE0029A7FE0029A7FE0029A7FE0029A7FE0029A7FE0029A7FE0029A7
      FE0029A7FE0029A7FE0029A7FE0029A7FE0029A7FE0028A7FE0028A7FE0028A7
      FE0028A7FE0028A7FE0028A7FE0028A7FE0028A7FE0028A7FE0028A7FE0028A7
      FE0028A7FE0028A7FE0028A7FD0028A7FD0028A6FD0028A6FD0028A6FD002BA7
      FD0037AAFE009BD4FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE00FBFBFB00F4F4F400ECECEC00E1E1E00066B5F00035A8FE002B9D
      F7001785E9001785E9001784E9001784E9002CA9FE002CA9FE002CA9FE002CA9
      FE002CA9FE002CA9FE002CA9FE002CA9FE002CA9FE002CA9FE002CA9FE002CA9
      FE002CA9FE002CA9FE002CA9FE002CA9FE002CA9FE002BA9FE002BA9FE002BA9
      FE002BA9FE002BA9FE002BA9FE002BA9FE002BA9FE002BA9FE002BA9FE002BA9
      FE002BA9FE002BA9FE002BA9FE002BA9FE002CA9FE0032AAFE0030A9FE002EA9
      FE0037ABFE0076C5FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE00FBFBFB00F6F6F600EFEFEE00E4E3E3005EB4F30035A8FE002496
      F3001788EB001787EB001787EB001787EB002EAAFE002EAAFE002EAAFE002EAA
      FE002EAAFE002EAAFE002EAAFE002EAAFE002EAAFE002EAAFE002EAAFE002EAA
      FE002EAAFE002EAAFE002EAAFE002EAAFE002EAAFE002EAAFE002EAAFE002EAA
      FE002EAAFE002EAAFE002EAAFE002DAAFE002DAAFE002DAAFE002DAAFE002DAA
      FE002DAAFE002DAAFE002DAAFE002DAAFE002FAAFE0033ABFE0032AAFE0030AA
      FE0038ABFE006AC0FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE00FCFCFC00F8F8F800F1F0F000E7E7E70060B5F60035A8FE001F91
      F100188AED00188AED00188AED00188AED0032ACFE0032ACFE0032ACFE0032AC
      FE0032ACFE0032ACFE0032ACFE0032ACFE0032ACFE0032ACFE0032ACFE0031AC
      FE0031ACFE0031ACFE0031ACFE0031ACFE0031ACFE0031ACFE0031ACFE0031AC
      FE0031ACFE0031ACFE0031ACFE0031ACFE0031ACFE0031ACFE0031ACFE0031AC
      FE0031ACFE0031ACFE0031ACFE0031ACFE0031ACFE0035ACFE0035ACFE0031AC
      FE0039ACFE006BC1FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FEFEFE00FDFDFD00F9F9F900F3F3F300ECECEC0061B6F70035A8FE002094
      F200198DEF00198DEF00198DEF00198DEE0034AEFE0034AEFE0034AEFE0034AE
      FE0034AEFE0034AEFE0034AEFE0034AEFE0034AEFE0034AEFE0034AEFE0034AE
      FE0034AEFE0034AEFE0034AEFE0034AEFE0034AEFE0034AEFE0034AEFE0034AE
      FE0034AEFE0034AEFE0034AEFE0034AEFE0034AEFE0034AEFE0034AEFE0034AE
      FE0034AEFE0034AEFE0034AEFE0034AEFE0034AEFE0036ADFE0036ADFE0034AE
      FE0039ACFE006BC1FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FDFDFD00FAFAFA00F6F6F600F0F0EF0062B8F80035A8FE002196
      F4001A90F1001A90F1001A90F1001A90F1000000000000000000000000001A92
      F3001A92F3001A92F3001A92F3001A92F2001A92F2001A92F2001A92F2001A91
      F2001A91F2001A91F2001A91F2001991F2000000000000000000000000000000
      000000000000000000001990F2001990F2001990F2001890F2001890F2001890
      F2001890F2001890F2001890F2001890F2000000000000000000000000000000
      00000000000000000000188FF100188FF100188FF100188FF100178FF100178F
      F100178FF100178FF100178FF100178FF100000000000000000000000000168F
      F100168EF100168EF100168EF100168EF100168EF100168EF000168EF00043A7
      F4006CBAF1001464B8007FC6F0009CE2FF001B95F4001B95F4001B95F4001B95
      F4001B95F4001B95F4001B95F4001B95F4001B94F4001B94F4001B94F4001B94
      F4001B94F4001B94F4001B94F4001B94F4001B94F4001B94F4001B94F4001A94
      F4001A94F4001A94F4001A94F4001A94F4001A94F4001A94F4001A93F4001A93
      F4001A93F4001A93F4001993F4001993F3001993F3001993F3001993F3001993
      F3001993F3001993F3001993F3001993F3001893F3001892F3001892F3001892
      F3001892F3001892F3001892F3001892F3001892F3001792F3001792F3001792
      F3001792F3001792F3001792F3001792F3001792F3001791F3001791F30046AB
      F7004F9CDC002470BF008FDCFF0088D5FD001C98F6001C98F6001C98F6001C98
      F6001C98F6001C98F6001C98F6001C98F6001C98F6001C98F6001B97F6001B97
      F6001B97F6001B97F6001B97F6001B96F6001B96F6001B96F6001B96F6001B96
      F6001B96F6001B96F6001B96F6001B96F6001B96F6001B96F6001A96F6001A96
      F6001A96F6001A96F6001A96F6001A96F6001A96F6001A96F6001A96F5001A96
      F5001A95F5001995F5001995F5001995F5001995F5001995F5001995F5001995
      F5001995F5001995F5001895F5001895F5001895F5001895F5001895F5001895
      F5001895F5001894F5001894F5001894F5001894F5001894F5001894F50048AE
      F8004996D8002F7CC6007DD2FF0079CDFC001D9AF8001D9AF8001D9AF8001D9A
      F8001D9AF8001C9AF8001C9AF8001C9AF8001C9AF8001C9AF8001C9AF8001C9A
      F8001C9AF8001C9AF8001C9AF8001C99F8001C99F8001C99F8001C99F8001C99
      F8001C99F8001C99F8001C99F8001B99F8001B99F8001B99F8001B99F8001B99
      F8001B99F8001B99F8001B99F8001B98F8001B98F8001A98F8001A98F8001A98
      F8001A98F8001A98F8001A98F8001A98F8001A98F8001A98F7001A98F7001A98
      F7001998F7001998F7001998F7001998F7001998F7001998F7001998F7001998
      F7001998F7001897F7001897F7001897F7001897F7001897F7001897F70034A7
      FA00529CDB002770C0006ECAFF006AC5FC001E9CFA001E9CFA001E9CFA001E9C
      FA001D9CFA001D9CFA001D9CFA001D9CFA001D9CFA001D9CFA001D9CFA001D9C
      FA001D9BFA001C9BFA001C9BF9001C9BF9001C9BF9001C9BF9001C9BF9001C9B
      F9001C9BF9001C9BF9001C9BF9001C9BF9001C9BF9001C9BF9001C9BF9001C9B
      F9001C9BF9001C9BF9001B9BF9001B9BF9001B9BF9001B9BF9001B9BF9001B9A
      F9001B9AF9001B9AF9001B9AF9001A9AF9001A9AF9001A9AF9001A9AF9001A9A
      F9001A9AF9001A9AF9001A9AF9001A9AF9001A9AF9001A9AF9001A9AF900199A
      F900199AF900199AF900199AF900199AF900199AF900199AF900199AF9001598
      FA0068BBF4001557AC0057B8F8005DC1FF001F9FFB001F9FFB001F9FFB001F9F
      FB001F9FFB001F9FFB001F9FFB001F9FFB001F9FFB001E9FFB001E9FFB001E9E
      FB001E9EFB001E9EFB001E9EFB001E9EFB001E9EFB001E9EFB001E9EFB001D9E
      FB001D9EFB001D9EFB001D9EFB001D9EFB001D9EFB001D9EFB001D9EFB001D9E
      FB001D9EFB001D9EFB001D9EFB001D9EFB001D9EFB001D9EFB001D9EFB001D9E
      FB001D9EFB001C9EFB001C9EFB001C9EFB001C9DFB001C9DFB001C9DFB001C9D
      FB001C9DFB001C9DFB001B9DFB001B9DFB001B9DFB001B9DFB001B9DFB001B9D
      FB001B9DFB001A9DFB001A9DFB001A9CFB001A9CFB001A9CFB001A9CFB00199B
      FB002AA6FE004289CF002168B9004EB6FE0020A1FD0020A1FD0020A1FD0020A1
      FD0020A1FD0020A1FD0020A1FD0020A1FD001FA1FD001FA1FD001FA1FD001FA1
      FD001FA1FD001FA0FD001FA0FD001FA0FD001FA0FD001EA0FD001EA0FD001EA0
      FD001EA0FD001EA0FD001EA0FD001EA0FD001EA0FD001EA0FD001DA0FD001DA0
      FD001DA0FD001DA0FD001DA0FD001DA0FD001DA0FD001DA0FD001DA0FD001DA0
      FD001DA0FD001DA0FD001DA0FD001DA0FD001DA0FD001DA0FD001DA0FD001DA0
      FD001CA0FD001C9FFD001C9FFD001C9FFD001C9FFD001C9FFD001C9FFD001C9F
      FD001C9FFD001C9FFD001B9FFD001B9FFD001B9FFD001B9FFD001B9FFD001B9F
      FD00199FFE002DABFF002E81D0001C5AAD0022A3FE0022A3FE0021A3FE0021A3
      FE0021A3FE0021A3FE0021A3FE0021A3FE0021A3FE0021A2FE0021A2FE0021A2
      FE0021A2FE0021A2FE0021A2FE0021A2FE0021A2FE0021A2FE0021A2FE0020A2
      FE0020A2FE0020A2FE0020A2FE0020A2FE0020A2FE0020A2FE0020A2FE0020A2
      FE0020A2FE0020A2FE0020A2FE0020A2FE001FA2FE001FA2FE001FA2FE001FA2
      FE001FA2FE001FA2FE001FA2FE001FA2FE001FA2FE001EA2FE001EA2FE001EA2
      FE001EA2FE001EA2FE001EA2FE001EA2FE001EA1FE001EA1FE001EA1FE001EA1
      FE001EA1FE001DA1FE001DA1FE001DA1FE001DA1FE001DA1FE001DA1FE001DA1
      FE001DA1FE001CA1FF001CA3FF001B9AF70025A4FE0025A4FE0024A4FE0024A4
      FE0024A4FE0024A4FE0024A4FE0024A4FE0024A4FE0024A4FE0024A4FE0024A4
      FE0024A4FE0023A4FE0023A4FE0023A4FE0023A4FE0023A4FE0023A4FE0023A4
      FE0023A4FE0023A4FE0023A4FE0023A4FE0023A4FE0022A3FE0022A3FE0022A3
      FE0022A3FE0022A3FE0022A3FE0022A3FE0022A3FE0022A3FE0022A3FE0022A3
      FE0021A3FE0021A3FE0021A3FE0021A3FE0021A3FE0021A3FE0021A3FE0021A3
      FE0021A3FE0021A3FE0021A3FE0021A3FE0021A3FE0021A3FE0021A3FE0021A3
      FE0021A3FE0021A3FE0020A3FE0020A3FE0020A3FE0020A3FE0020A3FE0020A3
      FE0020A3FE0020A3FE0020A3FE0020A3FE0028A5FE0028A5FE0028A5FE0028A5
      FE0028A5FE0028A5FE0027A5FE0027A5FE0027A5FE0027A5FE0027A5FE0027A5
      FE0027A5FE0027A5FE0027A5FE0027A5FE0027A5FE0027A5FE0027A5FE0026A5
      FE0026A5FE0026A5FE0026A5FE0026A5FE0026A5FE0026A4FE0026A4FE0026A4
      FE0026A4FE0026A4FE0026A4FE0025A4FE0025A4FE0025A4FE0025A4FE0025A4
      FE0025A4FE0025A4FE0025A4FE0025A4FE0025A4FE0025A4FE0025A4FE0025A4
      FE0024A4FE0024A4FE0024A4FE0024A4FE0024A4FE0024A4FE0024A4FE0024A4
      FE0024A4FE0024A4FE0024A4FE0024A4FE0023A4FE0023A4FE0023A4FE0023A4
      FE0023A4FE0023A4FE0023A4FE0023A4FE002AA7FE002AA7FE002AA7FE002AA7
      FE002AA7FE002AA7FE002AA7FE002AA6FE002AA6FE002AA6FE002AA6FE0029A6
      FE0029A6FE0029A6FE0029A6FE0029A6FE0029A6FE0029A6FE0029A6FE0029A6
      FE0029A6FE0029A6FE0029A6FE0029A6FE0029A6FE0029A6FE0029A6FE0029A6
      FE0029A6FE0029A6FE0029A6FE0029A6FE0029A6FE0029A6FE0029A6FE0029A6
      FE0029A6FE0029A6FE0029A6FE0028A6FE0028A6FE0028A6FE0028A6FE0028A6
      FE0028A6FE0028A6FE0028A6FE0028A6FE0028A6FE0028A6FE0028A6FE0028A6
      FE0027A6FE0027A6FE0027A6FE0027A6FE0027A6FE0027A6FE0027A6FE0027A6
      FE0027A6FE0027A6FE0027A6FE0027A6FE002DA8FE002DA8FE002CA8FE002CA8
      FE002CA8FE002CA8FE002CA8FE002CA8FE002CA8FE002CA8FE002CA8FE002CA8
      FE002CA8FE002CA8FE002CA8FE002CA8FE002CA8FE002CA8FE002CA8FE002CA8
      FE002CA8FE002CA8FE002CA8FE002CA8FE002CA7FE002CA7FE002CA7FE002CA7
      FE002CA7FE002BA7FE002BA7FE002BA7FE002BA7FE002BA7FE002BA7FE002BA7
      FE002BA7FE002BA7FE002BA7FE002BA7FE002BA7FE002BA7FE002BA7FE002BA7
      FE002BA7FE002AA7FE002AA7FE002AA7FE002AA7FE002AA7FE002AA7FE002AA7
      FE002AA7FE002AA7FE002AA7FE002AA7FE002AA7FE002AA7FE002AA7FE002AA7
      FE002AA7FE002AA7FE0029A7FE0029A7FE002FA9FE002FA9FE002FA9FE002FA9
      FE002FA9FE002FA9FE002FA9FE002FA9FE002EA9FE002EA9FE002EA9FE002EA9
      FE002EA9FE002EA9FE002EA9FE002EA9FE002EA9FE002EA9FE002EA9FE002EA9
      FE002EA9FE002EA9FE002EA9FE002EA9FE002EA9FE002EA9FE002DA9FE002DA9
      FE002DA9FE002DA9FE002DA9FE002DA9FE002DA9FE002DA9FE002DA9FE002DA9
      FE002DA9FE002DA9FE002DA9FE002DA9FE002DA9FE002DA9FE002DA9FE002DA9
      FE002DA9FE002DA9FE002DA9FE002DA9FE002DA9FE002DA9FE002DA9FE002DA9
      FE002DA9FE002DA9FE002DA9FE002CA9FE002CA9FE002CA9FE002CA9FE002CA9
      FE002CA9FE002CA9FE002CA9FE002CA9FE0030AAFE0030AAFE0030AAFE0030AA
      FE0030AAFE0030AAFE0030AAFE0030AAFE0030AAFE0030AAFE0030AAFE0030AA
      FE0030AAFE0030AAFE0030AAFE0030AAFE0030AAFE0030AAFE0030AAFE0030AA
      FE0030AAFE0030AAFE0030AAFE0030AAFE0030AAFE0030AAFE0030AAFE0030AA
      FE0030AAFE0030AAFE0030AAFE0030AAFE002FAAFE002FAAFE002FAAFE002FAA
      FE002FAAFE002FAAFE002FAAFE002FAAFE002FAAFE002FAAFE002FAAFE002FAA
      FE002FAAFE002FAAFE002FAAFE002FAAFE002FAAFE002FAAFE002FAAFE002FAA
      FE002FAAFE002FAAFE002FAAFE002FAAFE002FAAFE002FAAFE002FAAFE002FAA
      FE002FAAFE002FAAFE002FAAFE002FAAFE0034ACFE0034ACFE0034ACFE0034AC
      FE0034ACFE0034ACFE0034ACFE0034ACFE0034ACFE0034ACFE0034ACFE0034AC
      FE0034ACFE0034ACFE0034ACFE0034ACFE0034ACFE0034ACFE0034ACFE0034AC
      FE0033ACFE0033ACFE0033ACFE0033ACFE0033ACFE0033ACFE0033ACFE0033AC
      FE0033ACFE0033ACFE0033ACFE0033ACFE0033ACFE0033ACFE0033ACFE0033AC
      FE0033ACFE0033ACFE0033ACFE0033ACFE0033ACFE0033ACFE0033ACFE0033AC
      FE0033ACFE0033ACFE0033ACFE0033ACFE0032ACFE0032ACFE0032ACFE0032AC
      FE0032ACFE0032ACFE0032ACFE0032ACFE0032ACFE0032ACFE0032ACFE0032AC
      FE0032ACFE0032ACFE0032ACFE0032ACFE0035ADFE0035ADFE0035ADFE0035AD
      FE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035AD
      FE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035AD
      FE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035AD
      FE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035AD
      FE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035AD
      FE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035ADFE0035AD
      FE0035AEFE0035AEFE0035AEFE0035AEFE0035AEFE0035AEFE0035AEFE0035AE
      FE0035AEFE0035AEFE0035AEFE0034AEFE000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000036AF
      FE0036AFFE0036AFFE0036AFFE0036AFFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000038AEFE0038AEFE000000
      00003AADFE005FBCFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FEFEFE00FCFCFC00F8F8F800F3F3F30035A8FE0035A8FE001D94
      F3001B93F3001B93F3001B92F3001B92F30039B0FE0039B0FE0039B0FE0039B0
      FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0
      FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0
      FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0
      FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE003AAFFE003AAFFE0039B0
      FE003AADFE003AADFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00FAFAFA00F7F7F70035A8FE0035A8FE001C96
      F5001C96F5001C95F5001C95F5001C95F4003BB1FE003BB1FE003BB1FE003BB1
      FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1
      FE003BB2FE003BB2FE003BB2FE003BB2FE003BB2FE003BB2FE003BB2FE003BB2
      FE003BB2FE003BB2FE003BB2FE003BB2FE003BB2FE003BB2FE003BB2FE003BB2
      FE003BB2FE003BB2FE003BB2FE003BB2FE003BB2FE003BB1FE003BB1FE003BB2
      FE003BAFFE003BAEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000FEFEFE00FDFDFD00FCFCFC00FAFAFA0035A8FE0035A8FE001D98
      F7001D98F6001D98F6001C98F6001C98F6003DB3FE003DB3FE003DB3FE003DB3
      FE003DB3FE003DB3FE003DB3FE003DB3FE003DB3FE003DB3FE003DB3FE003EB3
      FE003EB3FE003EB3FE003EB3FE003EB3FE003EB3FE003EB3FE003EB3FE003EB3
      FE003EB3FE003EB3FE003EB3FE003EB3FE003EB3FE003EB3FE003EB3FE003EB3
      FE003EB3FE003EB3FE003EB3FE003EB3FE003EB3FE003DB3FE003DB2FE003EB3
      FE003CB0FE003CAEFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000FEFEFE00FDFDFD00FCFCFC0035A8FE0035A8FE001E9A
      F8001D9AF8001D9AF8001D9AF8001D9AF8003FB4FE003FB4FE003FB4FE003FB4
      FE003FB4FE0040B4FE0040B4FE0040B4FE0040B4FE0040B4FE0040B4FE0040B4
      FE0040B4FE0040B4FE0040B4FE0040B4FE0040B4FE0040B4FE0040B4FE0040B4
      FE0040B4FE0040B4FE0040B4FE0040B4FE0040B4FE0040B4FE0040B4FE0040B4
      FE0040B4FE0040B4FE0040B5FE0040B5FE0040B5FE003FB4FE003FB4FE003FB4
      FE003DB0FE003CAFFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FEFEFE00E4F2FD0035A8FE002FA5FD001E9C
      FA001E9CFA001E9CFA001E9CFA001E9CFA0042B5FE0042B5FE0042B5FE0042B5
      FE0042B5FE0042B5FE0042B5FE0042B5FE0043B5FE0043B5FE0043B5FE0043B5
      FE0043B5FE0043B5FE0043B5FE0043B5FE0043B5FE0043B5FE0043B5FE0043B5
      FE0043B5FE0043B5FE0043B5FE0043B5FE0043B5FE0043B5FE0043B5FE0043B5
      FE0043B5FE0043B5FE0043B5FE0043B5FE0043B6FE0042B5FE0042B5FE0042B5
      FE003FB2FE003DAFFE00E7F5FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000CCE8FD0035A8FE002FA5FD00209F
      FB00209FFB00209FFB00209FFB00209FFB0044B6FE0044B6FE0044B6FE0044B6
      FE0044B6FE0044B6FE0044B6FE0044B6FE0044B6FE0044B6FE0044B6FE0044B6
      FE0044B6FE0044B6FE0044B7FE0044B7FE0044B7FE0044B7FE0044B7FE0044B7
      FE0044B7FE0044B7FE0044B7FE0044B7FE0044B7FE0044B7FE0044B7FE0045B7
      FE0045B7FE0045B7FE0045B7FE0045B7FE0045B7FE0044B7FE0044B7FE0044B7
      FE0041B4FE003DB0FE00CFEBFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000CDE9FE0035A8FE0030A6FD0021A1
      FD0021A1FD0021A1FD0020A1FD0020A1FD0045B8FE0045B8FE0045B8FE0045B8
      FE0045B8FE0045B8FE0045B8FE0045B8FE0045B8FE0045B8FE0045B8FE0045B8
      FE0045B8FE0045B8FE0045B8FE0046B8FE0046B8FE0046B8FE0046B8FE0046B9
      FE0046B9FE0046B9FE0046B9FE0046B9FE0046B9FE0046B9FE0046B9FE0046B9
      FE0046B9FE0046B9FE0046B9FE0046B9FE0046B9FE0046B9FE0047B9FE0046B9
      FE0042B5FE003EB1FE00CFEBFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000CDE9FE0035A8FE002FA6FE0022A3
      FE0022A3FE0022A3FE0022A3FE0022A3FE0047B9FE0047B9FE0047B9FE0047B9
      FE0047B9FE0047B9FE0047B9FE0047B9FE0047B9FE0047B9FE0048B9FE0048B9
      FE0048B9FE0048B9FE0048B9FE0048B9FE0048B9FE0048B9FE0048B9FE0048B9
      FE0048B9FE0048B9FE0048BAFE0048BAFE0048BAFE0048BAFE0048BAFE0048BA
      FE0048BAFE0049BAFE0049BAFE0049BAFE0049BAFE0049BAFE004ABBFE0049BA
      FE0044B5FE003FB1FE00CFEBFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000CDE9FE0035A8FE002DA6FE0025A4
      FE0025A4FE0025A4FE0025A4FE0025A4FE0051BFFD004FBEFD004CBCFD004ABA
      FD0049BAFE0049BAFE0049BAFE0049BAFE0049BAFE0049BAFE0049BAFE0049BA
      FE0049BAFE004ABAFE004ABAFE004ABAFE004ABBFE004ABBFE004ABBFE004ABB
      FE004ABBFE004ABBFE004ABBFE004ABBFE004ABBFE004ABBFE004ABBFE004ABB
      FE004ABBFE004ABBFE004ABBFE004ABBFE004ABBFE004BBCFE004CBDFE004CBD
      FE0047B8FE003FB2FE00CFECFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000A7D9FE0035A9FE002FA7FE0028A5
      FE0028A5FE0028A5FE0028A5FE0028A5FE0055C1FD0055C2FD0055C2FD0055C2
      FD0054C1FD0051BEFD004EBDFD004ABBFE004ABBFE004ABBFE004BBBFE004BBB
      FE004BBBFE004BBBFE004BBBFE004BBBFE004BBBFE004BBBFE004BBBFE004BBB
      FE004BBBFE004BBBFE004BBBFE004BBBFE004BBBFE004BBBFE004BBBFE004BBB
      FE004BBBFE004BBCFE004BBCFE004BBCFE004BBCFE004EBDFE0050BEFE0050BE
      FE0048B9FE0040B2FE00A0D8FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000009BD4FE0036A9FE0030A8FE002BA7
      FE002BA7FE002AA7FE002AA7FE002AA7FE0059C3FD0059C3FD0059C3FD0059C3
      FD0059C3FD0059C3FD0059C3FD0059C3FD0055C1FD0051BFFD004CBCFD004CBC
      FE004CBCFE004CBCFE004CBCFE004CBCFE004CBCFE004CBCFE004CBCFE004CBC
      FE004CBCFE004CBCFE004CBCFE004CBCFE004DBCFE004DBDFE004DBDFE004DBD
      FE004DBDFE004DBDFE004DBDFE004DBDFE004DBDFE0050BEFE0053C0FE0053C0
      FE004ABAFE0041B3FE00A0D9FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000009BD4FE0037AAFE0030A8FE002DA8
      FE002DA8FE002DA8FE002DA8FE002DA8FE005BC5FD005BC5FD005BC5FD005BC5
      FD005BC5FD005BC5FD005BC5FD005BC5FD005BC5FD005BC5FD005BC5FD0057C2
      FD0052BFFD004DBCFE004DBCFE004DBCFE004DBCFE004DBDFE004DBDFE004DBD
      FE004DBDFE004DBDFE004EBDFE004EBDFE004EBDFE004EBDFE004EBDFE004EBD
      FE004EBDFE004EBDFE004EBDFE004EBDFE004EBDFE0051BEFE0056C2FE0056C2
      FE004DBCFE0041B3FE00A0D9FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000009BD5FE0037ABFE0031AAFE0031A9
      FE0032AAFE0032AAFE002FA9FE002FA9FE005EC6FD005EC6FD005EC6FD005EC6
      FD005EC6FD005EC6FD005EC6FD005FC6FD005FC6FD005FC6FD005FC6FD005FC6
      FD005FC6FD005EC5FD0059C3FD0052BFFD004FBDFE004FBDFE004FBDFE0050BE
      FE0050BEFE0050BEFE0050BEFE0050BEFE0050BEFE0050BEFE0050BEFE0050BE
      FE0051BEFE0051BEFE0051BEFE0051BEFE0051BEFE0053BFFE005AC4FE005AC4
      FE0053C0FE0042B4FE00A1D9FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000008FD0FE0038ABFE0032AAFE0032AA
      FE0033ABFE0033ABFE0031AAFE0030AAFE0061C7FD0061C7FD0062C7FD0061C7
      FD0062C7FD0062C7FD0062C7FD0062C7FD0062C7FD0062C7FD0062C7FD0062C7
      FD0062C7FD0062C7FD0062C7FD0062C7FD005FC6FD0057C1FD0051BFFD0051BE
      FE0051BEFE0051BEFE0051BEFE0051BEFE0051BEFE0051BEFE0051BEFE0051BE
      FE0051BEFE0051BEFE0051BFFE0052BFFE0052BFFE0055C1FE005CC6FE005CC6
      FE0055C1FE0042B4FE0095D5FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000006BC1FE0039ACFE0035ACFE0034AC
      FE0035ACFE0034ACFE0034ACFE0034ACFE0064C8FC0064C8FC0064C8FC0064C8
      FC0064C8FC0064C8FC0064C8FC0064C8FC0064C8FC0064C8FC0064C8FC0064C8
      FC0064C8FC0064C8FC0064C8FC0064C8FC0064C8FC0064C8FC0063C7FC005BC3
      FD0054C0FD0052BFFE0052BFFE0052BFFE0052BFFE0052BFFE0052BFFE0052BF
      FE0052BFFE0052BFFE0053BFFE0053BFFE0053BFFE0056C1FD0060C7FD0060C7
      FD0059C3FD0043B5FE0072C7FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000006BC1FE0039ACFE0036ADFE0036AD
      FE0036ADFE0036ADFE0035ADFE0035ADFE000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000038AF
      FE0038AFFE0038AFFE0038AFFE0038AFFE000000000000000000000000000000
      00000000000037AFFE0037AFFE0037AFFE0037AFFE0037AFFE0037AFFE0037AF
      FE0037AFFE0037AFFE0037AFFE0037AFFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003AAFFE003AAFFE003AAFFE003AAF
      FE003AAFFE003AAFFE003AAFFE003AAFFE003AAFFE003AAFFE003AAFFE003AAF
      FE003AAFFE003AAFFE003AAFFE003AAFFE003AAFFE003AAFFE003AAFFE0039AF
      FE0039AFFE0039AFFE0039AFFE0039B0FE0039B0FE0039B0FE0039B0FE0039B0
      FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0
      FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0
      FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0
      FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0FE0039B0
      FE0039B0FE0039B0FE0039B0FE0039B0FE003BB0FE003BB0FE003BB0FE003BB0
      FE003BB0FE003BB0FE003BB0FE003BB0FE003BB0FE003BB0FE003BB1FE003BB1
      FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1
      FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1
      FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1
      FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1
      FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1
      FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1FE003BB1
      FE003BB1FE003BB1FE003BB1FE003BB1FE003DB1FE003DB1FE003DB1FE003DB1
      FE003DB1FE003DB1FE003DB1FE003DB1FE003DB1FE003DB1FE003DB1FE003DB1
      FE003DB1FE003DB1FE003DB1FE003DB1FE003DB1FE003DB2FE003DB2FE003DB2
      FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2
      FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2
      FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2
      FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2
      FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2FE003DB2
      FE003DB2FE003DB2FE003DB2FE003DB3FE003EB2FE003EB2FE003EB2FE003EB2
      FE003EB2FE003EB2FE003EB2FE003EB2FE003EB2FE003FB3FE003FB3FE003FB3
      FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3
      FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3
      FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3
      FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3
      FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB3FE003FB4FE003FB4
      FE003FB4FE003FB4FE003FB4FE003FB4FE003FB4FE003FB4FE003FB4FE003FB4
      FE003FB4FE003FB4FE003FB4FE003FB4FE0040B3FE0040B3FE0040B3FE0040B3
      FE0040B3FE0040B3FE0040B3FE0040B3FE0040B3FE0040B3FE0040B3FE0040B3
      FE0040B3FE0040B3FE0040B3FE0040B3FE0040B3FE0040B3FE0040B3FE0040B3
      FE0041B4FD0042B5FD0042B5FD0042B5FD0043B6FD0043B6FD0043B6FD0043B6
      FD0043B6FD0043B6FD0043B6FD0043B6FD0043B6FD0043B7FD0043B7FD0043B7
      FD0043B7FD0043B7FD0043B7FD0043B7FD0042B6FD0042B6FD0042B6FD0042B6
      FD0041B4FE0041B4FE0041B4FE0041B4FE0041B4FE0041B4FE0041B4FE0041B4
      FE0041B4FE0041B4FE0041B4FE0041B4FE0041B4FE0041B4FE0041B4FE0041B4
      FE0041B4FE0042B5FE0042B5FE0042B5FE0041B4FE0041B4FE0041B4FE0041B4
      FE0041B4FE0042B4FE0042B4FE0042B4FE0042B4FE0042B4FE0042B4FE0043B5
      FD0044B5FD0045B7FD0045B7FD0047B9FD0047B9FD0047BAFD0048BAFD0048BA
      FD0048BAFD0048BAFD0048BAFD0048BAFD0048BAFD0048BAFD0048BAFD0048BA
      FD0048BAFD0048BAFD0048BAFD0048BAFD0048BAFD0048BAFD0048BAFD0048BA
      FD0048BAFD0048BAFD0048BBFD0048BBFD0048BBFD0048BBFD0048BBFD0048BB
      FD0048BBFD0048BBFD0048BAFD0047B9FD0047B9FD0046B8FD0046B8FD0045B7
      FD0044B6FD0044B6FE0044B6FE0044B6FE0044B6FE0044B6FE0044B6FE0044B6
      FE0044B6FE0044B6FE0044B6FE0044B6FE0042B5FE0042B5FE0042B5FE0043B5
      FE0043B5FE0044B6FD0045B7FD0047B9FD0049BAFD0049BBFD004BBCFD004BBC
      FD004BBCFD004BBCFD004BBCFD004BBCFD004BBCFD004BBCFD004BBCFD004BBC
      FD004BBCFD004BBCFD004BBCFD004BBCFD004BBCFD004BBCFD004BBCFD004BBC
      FD004BBCFD004BBCFD004BBCFD004BBCFD004BBCFD004BBCFD004BBCFD004BBC
      FD004BBCFD004BBCFD004BBCFD004BBCFD004BBCFD004CBCFD004CBCFD004CBC
      FD004CBCFD004CBCFD004CBCFD004CBCFD004CBCFD004CBCFD004CBCFD004CBC
      FD004CBCFD004CBCFD004BBCFD004ABBFD0049BAFD0048B9FD0046B8FD0045B8
      FE0045B8FE0045B8FE0045B8FE0045B8FE0044B6FD0047B8FD0049B9FD004CBC
      FD004EBEFD004EBEFD004EBEFD004EBEFD004EBEFD004EBEFD004EBEFD004EBE
      FD004EBEFD004EBEFD004EBEFD004EBEFD004EBEFD004EBEFD004FBEFD004FBE
      FD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBE
      FD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBE
      FD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBE
      FD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBE
      FD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBEFD004FBE
      FD004DBCFD004CBBFD004ABBFD0048B9FD0051BFFD0051BFFD0051BFFD0051BF
      FD0052BFFD0052BFFD0052BFFD0052BFFD0052BFFD0052BFFD0052BFFD0052BF
      FD0052BFFD0052BFFD0052BFFD0052BFFD0052BFFD0052BFFD0052BFFD0052BF
      FD0052BFFD0052BFFD0052BFFD0052BFFD0052BFFD0052BFFD0052BFFD0052BF
      FD0052BFFD0052BFFD0052BFFD0052BFFD0052BFFD0052BFFD0052BFFD0052C0
      FD0052C0FD0052C0FD0052C0FD0052C0FD0052C0FD0052C0FD0052C0FD0052C0
      FD0052C0FD0052C0FD0052C0FD0052C0FD0052C0FD0052C0FD0052C0FD0052C0
      FD0052C0FD0052C0FD0052C0FD0052C0FD0052C0FD0052C0FD0052C0FD0052C0
      FD0052C0FD0052C0FD0052C0FD0052C0FD0053C1FD0053C1FD0054C1FD0054C1
      FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1
      FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1
      FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1
      FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1
      FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1FD0054C1
      FD0054C1FD0054C1FD0055C1FD0055C1FD0055C1FD0055C1FD0055C1FD0055C1
      FD0055C1FD0055C1FD0055C1FD0055C1FD0055C1FD0055C1FD0055C1FD0055C1
      FD0055C1FD0055C1FD0055C1FD0055C1FD0057C2FD0057C2FD0057C2FD0058C2
      FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2
      FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2
      FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2
      FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2FD0058C2FD0058C3FD0058C3
      FD0058C3FD0058C3FD0058C3FD0058C3FD0058C3FD0059C3FD0059C3FD0059C3
      FD0059C3FD0059C3FD0059C3FD0059C3FD0059C3FD0059C3FD0059C3FD0059C3
      FD0059C3FD0059C3FD0059C3FD0059C3FD0059C3FD0059C3FD0059C3FD0059C3
      FD0059C3FD0059C3FD0059C3FD0059C3FD005AC3FD005AC3FD005AC3FD005AC4
      FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4
      FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4
      FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4
      FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4FD005AC4
      FD005AC4FD005BC4FD005BC4FD005BC4FD005BC4FD005BC4FD005BC4FD005BC4
      FD005BC4FD005BC4FD005BC4FD005BC4FD005BC4FD005BC4FD005BC4FD005BC4
      FD005BC4FD005BC4FD005BC4FD005BC4FD005BC5FD005BC5FD005BC5FD005BC5
      FD005BC5FD005BC5FD005BC5FD005BC5FD005CC4FD005CC4FD005CC4FD005CC4
      FD005CC4FD005CC5FD005CC5FD005CC5FD005CC5FD005CC5FD005CC5FD005CC5
      FD005CC5FD005CC5FD005CC5FD005CC5FD005CC5FD005CC5FD005CC5FD005CC5
      FD005CC5FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5
      FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5
      FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5
      FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5FD005DC5
      FD005DC5FD005DC5FD005DC5FD005EC5FD005EC6FD005EC6FD005EC6FD005EC6
      FD005EC6FD005EC6FD005EC6FD005EC6FD005FC6FD005FC6FD005FC6FD005FC6
      FD005FC6FD005FC6FD005FC6FD005FC6FD005FC6FD005FC6FD005FC6FD005FC6
      FD005FC6FD0060C7FD0060C7FD0060C7FD0060C7FD0060C7FD0060C7FD0060C7
      FD0060C7FD0060C7FD0060C7FD0060C7FD0060C7FD0060C7FD0060C7FD0060C7
      FD0060C7FD0060C7FD0060C7FD0060C7FD0060C7FD0061C7FD0061C7FD0061C7
      FD0061C7FD0061C7FD0061C7FD0061C7FD0061C7FD0061C7FD0061C7FD0061C7
      FD0061C7FD0061C7FD0061C7FD0061C7FD0061C7FD0061C7FD0061C7FD0061C7
      FD0061C7FD0061C7FD0061C7FD0061C7FD0061C7FD0061C7FD0061C7FD0061C7
      FD0061C7FD0061C7FD0061C7FD0061C7FD0062C7FD0062C7FD0062C7FD0062C7
      FD0062C7FD0062C7FD0062C7FD0062C7FD0062C7FD0062C7FD0062C7FD0062C8
      FD0062C8FD0062C8FD0062C8FD0062C8FD0062C8FD0062C8FD0062C8FD0062C8
      FD0062C8FD0062C8FD0063C8FD0063C8FD0063C8FD0063C8FD0063C8FD0063C8
      FD0063C8FD0063C8FD0063C8FD0063C8FD0063C8FD0063C8FD0063C8FC0063C8
      FC0063C8FC0063C8FC0063C8FC0063C8FC0063C8FC0063C8FC0063C8FC0063C8
      FC0063C8FC0063C8FC0063C8FC0063C8FC0063C8FC0063C8FC0063C8FC0063C8
      FC0063C8FC0063C8FC0063C8FC0063C8FC0063C8FC0063C8FC0063C8FC0063C8
      FC0064C8FC0064C8FC0064C8FC0064C8FC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000067CAFC0060C6FC0055C1FD0053C0FE0053C0FE0053C0FE0053C0FE0053C0
      FE0053C0FE0053C0FE0053C0FE0053C0FE000000000056C2FD0064C8FC0064C8
      FC005CC4FD0046B7FE0073C8FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000006CC1FE003AADFE0038AEFE0038AE
      FE0038AEFE0038AEFE0038AEFE0038AEFE006ACBFC006ACBFC006ACBFC006ACB
      FC006ACBFC006ACBFC006ACBFC006ACBFC006ACBFC006ACBFC006ACBFC006ACB
      FC006ACBFC006ACBFC006ACBFC006ACBFC006ACBFC006ACBFC006ACBFC006ACB
      FC006ACBFC006ACBFC006ACBFC0062C7FC0056C1FD0053C0FE0053C0FE0053C0
      FE0053C0FE0053C0FE0054C0FE0054C0FE0054C1FE0054C1FE0068CAFC0068CA
      FC005EC5FD0048B9FE0073C8FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000006CC1FE003AADFE003AAFFE003AAF
      FE003AAFFE003AAFFE003AAFFE003AAFFE006CCCFC006DCCFC006DCCFC006DCC
      FC006DCCFC006DCCFC006DCCFC006DCCFC006DCCFC006DCCFC006DCCFC006DCC
      FC006DCCFC006DCCFC006DCCFC006DCCFC006DCCFC006DCCFC006DCCFC006DCC
      FC006DCCFC006DCCFC006DCCFC006DCCFC006DCDFC0064C8FC0055C1FD0054C1
      FE0054C1FE0054C1FE0055C1FE0055C1FE0055C1FE0055C1FE006CCCFC006CCC
      FC0066C9FC0049BAFE0074CAFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000054B8FE003BAEFE003BB0FE003BB1
      FE003BB1FE003BB0FE003BB0FE003BB0FE006FCDFC006FCDFC006FCDFC006FCD
      FC006FCDFC006FCDFC006FCDFC006FCDFC006FCEFC006FCEFC006FCEFC006FCE
      FC006FCEFC006FCEFC006FCEFC006FCEFC0070CEFC0070CEFC0070CEFC0070CE
      FC0070CEFC0070CEFC0070CEFC0070CEFC0070CEFC0070CEFC006ECDFC0062C7
      FD0054C1FE0054C1FE0055C1FE0055C1FE0055C1FE0055C1FE0070CEFC0070CE
      FC0069CBFC0049BAFE0051BCFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000003CAEFE003CAFFE003DB2FE003DB2
      FE003DB2FE003DB2FE003DB1FE003DB1FE0071CEFC0071CEFC0071CEFC0071CE
      FC0072CEFC0072CEFC0072CEFC0072CEFC0072CFFC0072CFFD0072CFFD0072CF
      FD0072CFFD0072CFFD0072CFFD0072CFFD0072CFFD0072CFFD0072CFFD0072CF
      FD0072CFFD0072CFFD0072CFFD0073CFFD0073CFFD0073CFFD0073CFFD0073CF
      FD006FCEFD005DC5FD0056C2FE0056C2FE0056C2FE0056C2FE0074D0FD0074D0
      FD006FCDFD004DBDFE0046B9FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000003CAFFE003CAFFE003EB3FE003FB4
      FE003FB4FE003EB2FE003EB2FE003EB2FE0074D0FD0074D0FD0074D0FD0074D0
      FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0
      FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0
      FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0
      FD0074D0FD0075D0FD006BCCFD0058C3FD0057C2FE0057C2FE0072CFFD0078D2
      FD0078D2FD004FBEFE0047B9FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000003DAFFE003DB0FE0041B4FE0042B5
      FE0042B5FE0040B4FE0040B3FE0040B3FE0075D1FD0075D1FD0076D1FD0076D1
      FD0076D1FD0076D1FD0076D1FD0076D1FD0076D1FD0076D1FD0076D1FD0076D1
      FD0076D1FD0076D1FD0076D1FD0076D1FD0076D2FD0076D2FD0076D2FD0076D2
      FD0076D2FD0076D2FD0076D2FD0076D2FD0076D2FD0077D2FD0077D2FD0077D2
      FD0077D2FD0077D2FD0077D2FD0075D1FD0061C7FD0057C3FE0073D0FD007CD5
      FD007CD5FD0050BEFE0047BAFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000003DB0FE003FB1FE0043B5FE0044B7
      FE0044B7FE0042B4FE0041B4FE0041B4FE0077D2FD0078D2FD0078D2FD0078D2
      FD0078D2FD0078D2FD0078D2FD0078D2FD0078D2FD0078D2FD0078D2FD0078D2
      FD0078D2FD0078D2FD0078D3FD0078D3FD0078D3FD0078D3FD0078D3FD0079D3
      FD0079D3FD0079D3FD0079D3FD0079D3FD0079D3FD0079D3FD0079D3FD0079D3
      FD0079D3FD0079D3FD0079D3FD0079D3FD0079D3FD006DCDFD0078D3FD0080D7
      FD0080D7FD0052C0FD0048BAFE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000CFEBFE003EB1FE0040B3FE0045B8FE0047B9
      FE0047B9FE0043B6FE0042B5FE0042B5FE007AD3FD007AD3FD007AD3FD007AD3
      FD007AD3FD007AD3FD007AD3FD007AD3FD007AD3FD007AD3FD007AD3FD007AD3
      FD007BD3FD007BD3FD007BD3FD007BD3FD007BD3FD007BD3FD007BD3FD007BD3
      FD007BD3FD007BD4FD007BD4FD007BD4FD007BD4FD007BD4FD007BD4FD007BD4
      FD007BD4FD007BD4FD007BD4FD007BD4FD007BD4FD007CD4FD0087DAFD0085D9
      FD0084D9FD005FC6FD0048BBFE00D1EEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000CFEBFE003FB1FE0041B3FE0048B9FE004ABB
      FE004ABBFE0043B5FE0043B5FE0043B5FE007CD4FD007CD4FD007CD4FD007CD4
      FD007CD4FD007CD4FD007CD4FD007CD4FD007CD4FD007CD4FD007CD5FD007CD5
      FD007CD5FD007CD5FD007CD5FD007CD5FD007DD5FD007DD5FD007DD5FD007DD5
      FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5
      FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5FD008ADCFD008BDC
      FD0089DBFD0061C7FD0049BBFE00D2EEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000CFECFE003FB2FE0042B4FE004ABBFE004CBD
      FE004DBDFD004ABAFD004DBCFD0050BEFD007ED5FD007ED5FD007ED5FD007ED5
      FD007ED5FD007ED5FD007ED5FD007ED5FD007ED5FD007ED5FD007FD5FD007FD6
      FD007FD6FD007FD6FD007FD6FD007FD6FD007FD6FD007FD6FD007FD6FD007FD6
      FD007FD6FD007FD6FD007FD6FD007FD6FD007FD6FD007FD6FD007FD6FD007FD6
      FD007FD6FD0080D6FD0080D6FD0080D6FD0080D6FD0080D6FD008ADBFD0090DE
      FD008EDEFD0069CBFD004ABCFE00D2EEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000CFECFE0040B2FE0043B5FE0050BEFE0052BF
      FD0058C3FD0053C0FD0053C1FD0053C1FD0080D6FD0080D6FD0080D6FD0080D6
      FD0080D6FD0080D6FD0080D6FD0080D7FD0080D7FD0080D7FD0080D7FD0080D7
      FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7
      FD0081D7FD0081D7FD0081D7FD0082D7FD0082D7FD0082D7FD0082D7FD0082D7
      FD0082D7FD0082D7FD0082D7FD0082D7FD0082D7FD0082D7FD008DDDFD0095E1
      FD0093DFFD0072D0FD004ABDFE00D2EEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000C4E7FE0041B3FE0045B6FE0053C0FE0055C1
      FD005BC5FD0057C2FD0057C2FD0057C2FD0082D7FD0082D7FD0082D7FD0082D7
      FD0082D7FD0082D7FD0082D7FD0082D7FD0082D7FD0082D7FD0082D7FD0082D7
      FD0082D7FD0082D7FD0082D7FD0082D8FD0082D8FD0082D8FD0083D8FD0083D8
      FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8
      FD0084D8FD0084D8FD0084D8FD0084D8FD0084D8FD0084D8FD0090DEFD0099E3
      FD0097E2FD0074D1FD004BBDFE00BCE6FE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000A0D9FE0041B3FE0045B7FE0056C2FE0058C3
      FD005EC6FD005AC3FD005AC3FD005AC3FD0084D8FD0084D9FD0084D9FD0084D9
      FD0084D9FD0084D9FD0084D9FD0084D9FD0084D9FD0085D9FD0084D9FD0084D9
      FD0084D9FD0084D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9
      FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9
      FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0093E0FD009EE5
      FD009BE4FD007ED5FD004CBDFD00A6DEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000A1D9FE0042B4FE004BBAFE005AC4FE005EC6
      FD0061C7FC005CC4FD005CC4FD005CC4FD0085D9FD0085D9FD0085D9FD0085D9
      FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0086D9
      FD0086D9FD0086D9FD0086D9FD0086D9FD0086DAFD0086DAFD0086DAFD0086DA
      FD0086DAFD0086DAFD0086DAFD0086DAFD0086DAFD0086DAFD0086DAFD0086DA
      FD0086DAFD0086DAFD0086DAFD0087DAFD0087DAFD0087DAFD0090DEFD00A2E7
      FD00A1E6FD008BDCFD004CBDFD00A6DEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000A1D9FE0042B4FE004DBCFE005CC6FE0062C8
      FD0065C9FC005FC6FD005FC6FD005FC6FD0086DAFD0086DAFD0086DAFD0086DA
      FD0086DAFD0086DAFD0087DAFD0087DAFD0087DAFD0087DAFD0087DAFD0087DA
      FD0087DAFD0087DAFD0087DAFD0087DBFD0087DBFD0087DBFD0088DBFD0088DB
      FD0088DBFD0088DBFD0088DBFD0088DBFD0088DBFD0088DBFD0088DBFD0088DB
      FD0088DBFD0088DBFD0088DBFD0088DBFD0088DBFD0088DBFD0090DEFD00A7E9
      FD00A5E8FD008FDEFD004DBEFD00A6DEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000A1DAFE0043B5FE0050BDFD0060C7FD0066C9
      FC0067CAFC0062C7FD0062C7FD0062C7FD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000065C8FC0065C8FC0065C8FC0065C8FC0065C8FC0065C8
      FC0065C8FC0065C8FC0065C8FC0065C8FC000000000000000000000000000000
      00000000000000000000000000000000000065C9FC0066C9FC0066C9FC0066C9
      FC0066C9FC0066C9FC0066C9FC0066C9FC000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000066C9FC0066C9FC0067C9FC0067C9
      FC0067C9FC0067C9FC0067C9FC0067C9FC0067C9FC0067C9FC0067C9FC0067C9
      FC0067C9FC0067C9FC0067C9FC0067C9FC0067C9FC0067C9FC0067C9FC0067C9
      FC0067C9FC0068CAFC0068CAFC0068CAFC0068CAFC0068CAFC0068CAFC0068CA
      FC0068CAFC0068CAFC0068CAFC0068CAFC0068CAFC0068CAFC0068CAFC0068CA
      FC0069CAFC0069CAFC0069CAFC0069CAFC0069CAFC0069CAFC0069CAFC0069CA
      FC0069CAFC0069CAFC0069CAFC0069CAFC0069CAFC0069CAFC0069CAFC0069CA
      FC0069CAFC0069CAFC0069CAFC0069CAFC0069CAFC0069CAFC0069CAFC0069CA
      FC0069CAFC0069CAFC0069CAFC0069CBFC006ACAFC006ACAFC006ACAFC006ACA
      FC006ACBFC006ACBFC006ACBFC006ACBFC006ACBFC006ACBFC006ACBFC006ACB
      FC006ACBFC006ACBFC006ACBFC006ACBFC006ACBFC006ACBFC006ACBFC006ACB
      FC006ACBFC006BCBFC006BCBFC006BCBFC006BCBFC006BCBFC006BCBFC006BCB
      FC006BCBFC006BCBFC006BCBFC006BCBFC006BCBFC006BCBFC006BCBFC006BCB
      FC006BCBFC006BCBFC006BCBFC006BCBFC006BCBFC006BCBFC006BCBFC006BCB
      FC006BCBFC006BCBFC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCC
      FC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCC
      FC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCC
      FC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCC
      FC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCC
      FC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCCFC006CCC
      FC006CCCFC006CCCFC006CCCFC006DCCFC006DCCFC006DCCFC006DCCFC006DCD
      FC006DCDFC006DCDFC006DCDFC006DCDFC006DCDFC006DCDFC006DCDFC006DCD
      FC006DCDFC006ECDFC006ECDFC006ECDFC006ECDFC006ECDFC006ECDFC006ECD
      FC006ECDFC006ECDFC006ECDFC006ECDFC006ECDFC006ECDFC006ECDFC006ECD
      FC006FCDFC006FCDFC006FCDFC006FCDFC006ECDFC006ECDFC006ECDFC006ECD
      FC006ECDFC006ECDFC006ECDFC006ECDFC006FCDFC006FCDFC006FCDFC006FCD
      FC006FCDFC006FCDFC006FCDFC006FCDFC006FCDFC006FCDFC006FCDFC006FCD
      FC006FCDFC006FCDFC006FCDFC006FCDFC006FCDFC006FCDFC006FCDFC0070CD
      FC0070CDFC0070CDFC0070CDFC0070CDFC0070CEFC0070CDFC0070CDFC0070CD
      FC0070CEFC0070CEFC0070CEFC0070CEFC0070CEFC0070CEFC0070CEFC0070CE
      FC0070CEFC0070CEFC0070CEFC0070CEFC0070CEFC0070CEFC0071CEFC0071CE
      FC0071CEFC0071CEFC0071CEFC0071CEFC0071CEFC0071CEFC0071CEFC0071CE
      FC0071CEFC0071CEFC0071CEFC0071CEFC0070CFFD0070CFFD0070CFFD0070CF
      FD0070CFFD0070CEFC0070CEFC0071CEFC0071CEFC0071CEFC0071CEFC0071CE
      FC0071CEFC0071CEFC0071CEFC0071CEFC0071CEFC0071CEFC0071CEFC0071CE
      FC0071CEFC0071CEFC0071CEFC0071CEFC0071CFFC0071CFFC0072CFFC0072CF
      FC0072CFFC0072CFFC0072CFFC0072CFFC0072CFFC0072CFFC0072CFFC0072CF
      FC0072CFFC0072CFFC0072CFFC0072CFFD0072CFFD0072CFFD0072CFFD0072CF
      FD0073CFFD0073CFFD0073CFFD0073CFFD0073CFFD0073CFFD0073CFFD0073CF
      FD0073CFFD0073CFFD0073D0FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0
      FD0074D0FD0074D0FD0074D0FD0074D0FD0072D0FE0072D0FE0072D0FE0072D0
      FE0072D0FE0072D0FE0072D0FE0072D0FD0073D0FD0073D0FD0073D0FD0073D0
      FD0073D0FD0073D0FD0073D0FD0073D0FD0073D0FD0073D0FD0073D0FD0073D0
      FD0073D0FD0073D0FD0073D0FD0073D0FD0073D0FD0073D0FD0073D0FD0073D0
      FD0073D0FD0073D0FD0073D0FD0074D0FD0074D0FD0074D0FD0074D0FD0074D0
      FD0074D0FD0074D0FD0074D0FD0075D0FD0075D1FD0075D1FD0075D1FD0075D1
      FD0075D1FD0075D1FD0075D1FD0075D1FD0075D1FD0075D1FD0075D1FD0075D1
      FD0075D1FD0075D1FD0075D1FD0075D1FD0075D1FD0075D1FD0075D1FD0075D1
      FD0075D1FD0075D1FD0075D1FD0075D1FD0074D1FE0074D1FE0074D1FE0074D1
      FE0074D1FE0074D1FE0074D1FE0074D1FE0074D1FE0075D1FE0075D1FD0075D1
      FD0075D1FD0075D1FD0075D1FD0075D1FD0075D1FD0075D1FD0075D1FD0075D1
      FD0075D1FD0075D1FD0075D1FD0076D1FD0076D1FD0076D1FD0076D1FD0076D1
      FD0076D1FD0076D1FD0076D1FD0076D1FD0076D1FD0076D1FD0076D1FD0076D1
      FD0076D1FD0076D1FD0076D1FD0076D1FD0076D1FD0076D1FD0076D1FD0076D1
      FD0076D1FD0076D1FD0077D2FD0077D2FD0077D2FD0077D2FD0077D2FD0077D2
      FD0077D2FD0077D2FD0077D2FD0077D2FD0077D2FD0077D2FD0077D2FD0077D2
      FD0077D2FD0077D2FD0077D2FD0077D2FD0077D2FE0077D2FE0077D2FE0077D2
      FE0077D2FE0077D2FE0077D2FE0077D2FE0077D2FE0077D2FE0077D2FE0077D2
      FE0077D2FE0077D2FE0077D2FE0077D2FE0077D2FE0077D2FD0077D2FD0077D2
      FD0077D2FD0077D2FD0077D2FD0078D2FD0078D2FD0078D2FD0078D2FD0078D2
      FD0078D2FD0078D2FD0078D2FD0078D2FD0078D2FD0078D2FD0078D2FD0078D2
      FD0078D2FD0078D2FD0078D2FD0078D2FD0078D2FD0078D2FD0079D2FD0079D2
      FD0079D2FD0079D2FD0079D2FD0079D2FD0079D2FD0079D2FD0079D2FD0079D2
      FD0079D2FD0079D3FD0079D3FD007AD3FD007AD3FD007AD3FD007AD3FD007AD3
      FD007AD3FD007AD3FD007AD3FD007AD3FD0079D3FE0079D3FE0079D3FE0079D3
      FE0079D3FE0079D3FE0079D3FE0079D3FE0079D3FE0079D3FE0079D3FE0079D3
      FE0079D3FE0079D3FE0079D3FE0079D3FE0079D3FE0079D3FE0079D4FE0079D4
      FE0079D4FE0079D4FE0079D4FE0079D4FE0079D4FD0079D4FD0079D4FD007AD4
      FD007AD4FD007AD3FD007AD3FD007AD3FD007AD3FD007AD3FD007AD3FD007AD3
      FD007AD3FD007AD3FD007AD3FD007AD3FD007AD3FD007AD4FD007AD4FD007AD4
      FD007AD4FD007BD4FD007BD4FD007BD4FD007BD4FD007BD4FD007BD4FD007BD4
      FD007BD4FD007BD4FD007BD4FD007BD4FD007BD4FD007BD4FD007BD4FD007CD4
      FD007CD4FD007CD4FD007CD4FD007CD4FD007BD4FE007BD4FE007BD4FE007BD4
      FE007BD4FE007BD4FE007BD4FE007BD4FE007BD4FE007BD4FE007BD4FE007BD4
      FE007BD4FE007BD4FE007BD4FE007BD4FE007BD4FE007BD4FE007BD4FE007BD4
      FE007BD5FE007BD5FE007BD5FE007BD5FE007BD5FE007BD5FE007BD5FE007BD5
      FE007BD5FE007BD5FE007CD5FE007CD5FD007CD5FD007CD5FD007CD5FD007CD5
      FD007CD4FD007CD4FD007CD4FD007CD4FD007CD4FD007CD4FD007CD4FD007CD5
      FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5
      FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5FD007DD5
      FD007DD5FD007DD5FD007ED5FD007ED5FD007DD6FE007DD6FE007DD6FE007DD6
      FE007DD6FE007DD6FE007DD6FE007DD6FE007DD6FE007DD6FE007DD6FE007DD6
      FE007DD6FE007DD6FE007DD6FE007DD6FE007DD6FE007DD6FE007DD6FE007DD6
      FE007DD6FE007DD6FE007DD6FE007DD6FE007ED6FE007ED6FE007ED6FE007ED6
      FE007ED6FE007ED6FE007ED6FE007ED6FE007ED6FE007FD6FE007FD6FE007FD6
      FD007FD6FD007ED6FD007ED6FD007FD6FD007FD6FD007FD6FD007FD6FD007FD6
      FD007FD6FD007FD6FD007FD6FD007FD6FD007FD6FD007FD6FD007FD6FD007FD6
      FD007FD6FD007FD6FD007FD6FD0080D6FD0080D6FD0080D6FD0080D6FD0080D6
      FD0080D6FD0080D6FD0080D6FD0080D6FD0080D7FE0080D7FE0080D7FE0080D7
      FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7
      FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7
      FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7
      FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7
      FE0080D7FE0080D7FE0080D7FE0080D7FE0080D7FD0080D7FD0080D7FD0080D7
      FD0080D7FD0080D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7
      FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7
      FD0082D7FD0082D7FD0082D7FD0082D7FD0081D7FD0081D7FD0081D7FD0081D7
      FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7
      FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7
      FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7
      FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7FD0081D7
      FD0081D7FD0081D7FD0081D8FD0081D8FD0081D8FD0082D8FD0082D8FD0082D8
      FD0082D8FD0082D8FD0082D8FD0082D8FD0082D8FD0082D8FD0082D8FD0082D8
      FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8
      FD0083D8FD0083D8FD0084D8FD0084D8FD0084D8FD0084D8FD0084D8FD0084D8
      FD0084D8FD0084D8FD0084D8FD0084D8FD0084D8FD0084D8FD0084D8FD0084D8
      FD0084D8FD0084D8FD0084D8FD0084D8FD0084D8FD0084D8FD0083D8FD0083D8
      FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8
      FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8
      FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8FD0083D8
      FD0083D8FD0084D8FD0084D8FD0084D8FD0084D8FD0084D8FD0084D8FD0084D8
      FD0084D8FD0084D8FD0084D8FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9
      FD0085D9FD0085D9FD0085D9FD0085D9FD0085DAFD0085DAFD0085DAFD0085DA
      FD0085DAFD0085DAFD0085DAFD0085DAFD0085DAFD0085DAFD0085DAFD0085DA
      FD0085DAFD0085DAFD0085DAFD0085DAFD0085DAFD0085DAFD0085DAFD0085DA
      FD0085DAFD0085DAFD0085DAFD0085DAFD0085DAFD0085DAFD0085DAFD0085DA
      FD0085DAFD0085DAFD0085DAFD0085DAFD0085DAFD0085DAFD0085D9FD0085D9
      FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9
      FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9FD0085D9
      FD0085D9FD0085DAFD0085DAFD0085DAFD0085DAFD0085DAFD0085DAFD0086DA
      FD0086DAFD0086DAFD0086DAFD0086DAFD000000000088DAFD0088DAFD0088DA
      FD0088DBFD0088DBFD0088DBFD0088DBFD0088DBFD0088DBFD0088DBFD0088DB
      FD0088DBFD0088DBFD0088DBFD0088DBFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00008ADBFD008ADBFD008ADCFD008ADCFD00000000000000000092E0FD00ABEB
      FD00AAEBFD00A4E8FD004DBEFD00A6DEFE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000007FCDFE0044B6FE0056C1FD0064C8FC0069CB
      FC0069CBFC0064C8FC0064C8FC0064C8FC0089DCFD0089DCFD0089DCFD0089DC
      FD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD008ADCFD008ADCFD008ADC
      FD008ADCFD008ADCFD008ADCFD008ADCFD008ADCFD008ADCFD008ADCFD008BDC
      FD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008CDC
      FD008CDDFD008CDDFD008CDDFD008CDDFD008CDDFD008CDDFD0095E1FD00AFED
      FD00AFEDFD00AFEDFD004EBFFD0086D3FD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000073C8FE0044B6FE0058C2FD0068CAFC0070CE
      FC006CCCFC0066C9FC0066C9FC0066C9FC008BDCFD008BDCFD008BDCFD008BDC
      FD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDC
      FD008CDCFD008CDCFD008CDCFD008CDCFD008CDDFD008CDDFD008CDDFD008CDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008CDDFD0095E1FD00B2EE
      FD00B4EFFE00B4EFFE004FBFFD007BCFFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000074CAFE0046B8FE005DC4FC006CCCFC0074D0
      FC006FCDFC0069CAFC0069CAFC006ACAFC008DDDFD008DDDFD008DDDFD008DDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD00B5EF
      FE00B9F1FE00B9F1FE0069CCFD007BCFFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000074CAFE0046B8FE0066C9FC0070CEFC0077D2
      FC006FCEFC006CCCFC006CCCFC006CCCFC008EDEFD008EDEFD008EDEFD008EDE
      FD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDE
      FD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDE
      FD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDE
      FD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD00B8F1
      FE00BDF3FE00BDF3FE006BCDFD007CD0FD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000074CAFE0046B9FE0069CBFD0074D0FD007DD5
      FD0072CFFC006ECDFC006ECDFC006ECDFC008EDFFD008EDFFD008EDFFD008EDF
      FD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDF
      FD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDF
      FD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDF
      FD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD00BAF2
      FE00C1F4FE00C1F4FE006DCDFD0072CCFD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000047B9FE0047B9FE0072CFFD0078D2FD0081D7
      FD0074D1FD0070CFFD0070CFFD0070CFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD009AE4FD00BDF3
      FE00C3F5FE00C3F5FE008BDBFD0052C2FD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000047BAFE0047BAFE007CD5FD007CD5FD0085D9
      FD0073D1FD0072D0FE0072D0FE0072D0FE008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD00A6E9FD00C0F4
      FE00C6F6FE00C6F6FE008CDCFD0053C2FD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000048BAFE0048BAFE0080D7FD0080D7FD0089DB
      FD0074D1FE0074D1FE0074D1FE0074D1FE0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0093E1FD00B8F1FD00C4F6
      FE00C8F7FE00C8F7FE008EDDFD0054C3FD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000048BBFE0050BEFD0084D9FD0086D9FD008DDD
      FD0077D2FE0077D2FE0077D2FE0077D2FE0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD00ABEBFD00C2F5FE00CBF8
      FE00CBF8FE00CBF8FE008FDEFD0054C3FD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000E9F6FE0049BBFE0059C3FD0089DBFD008BDCFD008FDE
      FD0079D3FE0079D3FE0079D3FE0079D3FE0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD00A6E9FD00C2F5FE00CCF9FE00CDF9
      FE00CDF9FE00CDF9FE0072D1FD0054C4FD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000D2EEFE004ABCFE005BC4FD008EDEFD008FDEFD008EDD
      FD007BD4FE007BD4FE007BD4FE007BD4FE0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD009AE4FD00B5EFFD00C4F6FE00CEFAFE00CFFAFE00CFFA
      FE00CFFAFE00C8F7FD0054C4FD005FC7FD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000D2EEFE004ABDFE0066CAFD0093DFFD0094E0FD0091DF
      FD007DD6FE007DD6FE007DD6FE007DD6FE00BAF1FD00BAF1FD00BAF1FD00BAF1
      FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1
      FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1
      FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1
      FD00BAF1FD00C0F4FD00CAF8FE00CFFAFE00D2FBFE00D2FBFE00D2FBFE00D2FB
      FE00D2FBFE0093E0FD0055C5FD008AD7FD00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000D2EEFE004BBDFE0071CFFD0097E2FD0099E3FD0095E1
      FD0080D7FE0080D7FE0080D7FE0080D7FE00D4FCFE00D4FCFE00D4FCFE00D4FC
      FE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FC
      FE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FC
      FE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FC
      FE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FC
      FE00BCF2FD0056C5FD0056C5FD00B0DEFA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000D2EEFE004CBDFD0073D0FD009BE4FD009EE5FD0095E0
      FD0081D7FD0081D7FD0081D7FD0081D7FD00D7FDFE00D7FDFE00D7FDFE00D7FD
      FE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FD
      FE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FD
      FE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FD
      FE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00BEF3
      FD005EC9FD0056C6FD0046B1F200D0DFF400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000A6DEFE004CBDFD0086D9FD00A1E6FD00A2E7FD0094E0
      FD0084D8FD0084D8FD0084D8FD0084D8FD00D8FEFE00D8FEFE00D8FEFE00D8FE
      FE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FE
      FE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FE
      FE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FE
      FE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00C7F7FD0097E2FD0057C7
      FD0057C7FD0051BFF9004B8ED900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000A6DEFE004DBEFD008FDEFD00A5E8FD00A7E9FD0097E2
      FD0085DAFD0085DAFD0085DAFD0085DAFD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000089DCFD0089DCFD0089DCFD0089DC
      FD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DC
      FD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DC
      FD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DC
      FD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DC
      FD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DC
      FD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DC
      FD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DCFD0089DC
      FD0089DCFD0089DCFD0089DCFD0089DCFD008CDCFD008CDCFD008CDCFD008CDC
      FD008CDCFD008CDCFD008CDCFD008CDCFD008CDCFD008CDCFD008CDCFD008CDC
      FD008CDCFD008CDCFD008CDCFD008CDCFD008CDCFD008CDCFD008CDCFD008CDC
      FD008CDCFD008CDCFD008CDCFD008CDCFD008CDCFD008CDCFD008CDCFD008CDC
      FD008CDCFD008CDCFD008CDCFD008CDCFD008CDCFD008BDCFD008BDCFD008BDC
      FD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDC
      FD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDC
      FD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDCFD008BDC
      FD008BDCFD008BDCFD008BDCFD008BDCFD008DDDFD008DDDFD008DDDFD008DDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDDFD008DDD
      FD008DDDFD008DDDFD008DDDFD008DDDFD008EDEFD008EDEFD008EDEFD008EDE
      FD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDE
      FD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDE
      FD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDE
      FD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDE
      FD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDE
      FD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDE
      FD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDEFD008EDE
      FD008EDEFD008EDEFD008EDEFD008EDEFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008EDF
      FD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDF
      FD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDF
      FD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDF
      FD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDF
      FD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDF
      FD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDFFD008EDF
      FD008EDFFD008EDFFD008EDFFD008EDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD0090DFFD0090DFFD0090DFFD0090DF
      FD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DF
      FD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DF
      FD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DF
      FD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DF
      FD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DF
      FD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DF
      FD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD0090DFFD008FDF
      FD008FDFFD008FDFFD008FDFFD008FDFFD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0FD0091E0
      FD0091E0FD0091E0FD0091E0FD0091E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0FD0092E0
      FD0092E0FD0092E0FD0092E0FD0092E0FD00C4F5FD00BAF1FD00BAF1FD00BAF1
      FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1
      FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1
      FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1
      FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1
      FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1
      FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1
      FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00BAF1
      FD00BAF1FD00BAF1FD00BAF1FD00BAF1FD00D4FCFE00D4FCFE00D4FCFE00D4FC
      FE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FC
      FE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FC
      FE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FC
      FE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FC
      FE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FC
      FE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FC
      FE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D4FC
      FE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00D7FDFE00D7FDFE00D7FDFE00D7FD
      FE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FD
      FE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FD
      FE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FD
      FE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FD
      FE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FD
      FE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FD
      FE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D7FD
      FE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00D8FEFE00D8FEFE00D8FEFE00D8FE
      FE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FE
      FE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FE
      FE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FE
      FE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FE
      FE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FE
      FE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FE
      FE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FEFE00D8FE
      FE00D8FEFE00D8FEFE00D8FEFE00D8FEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000058C7FD0058C7FD0058C7
      FD0047B1F200106BCE00C0D5F000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000A6DEFE004DBEFD0093DFFD00AAEBFD00ABEBFD0099E3
      FD0087DAFD0087DAFD0087DAFD0087DAFD0059C8FD0059C8FD0059C8FD0059C8
      FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8
      FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8
      FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8
      FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0048B2F2002687
      DC000056C400A0C0E900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000A7DFFE004EBFFD00A9EAFD00AFEDFD00AFEDFD0093E0
      FD0089DCFD0089DCFD0089DCFD0089DCFD00005CCA00005CCA00005BC900005A
      C800005AC8000059C7000059C7000058C6000058C6000058C5000057C5000056
      C4000056C4000056C4000056C4000056C4000056C4000056C4000056C4000056
      C4000056C4000056C4000056C4000056C4000056C4000056C4000056C4000056
      C4000056C4000056C4000056C4000056C4000056C4000056C4000056C400075D
      C7000879E400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000009CDBFD004FBFFD00B4EFFE00B4EFFE00B3EEFD0095E1
      FD008BDCFD008CDCFD008CDCFD008CDCFD001F65B7002267BA00256ABC002266
      B9001F63B6002367B9002568BA002163B6001F62B4002567B9002567B9001F60
      B3002161B4002565B8002364B6001F60B2002263B5002565B8002263B5001F60
      B2002364B6002565B8001F60B2001C5CAF001252A5001252A5001252A5002D6E
      C0003677C9003677C9002B6BBE001F60B2001F60B2000B64CA002B8BE40074C3
      F9001096FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000007BCFFD004FC0FD00B9F1FE00B9F1FE00B6F0FE0097E2
      FD008DDDFD008DDDFD008DDDFD008DDDFD00A6A6A600A7A7A700A7A7A700A7A7
      A700A6A6A600A7A7A600A7A7A700A6A6A600A6A6A600A7A7A700A7A7A700A6A6
      A600A6A6A600A7A7A700A7A7A700A6A6A600A7A7A700A7A7A700A7A7A700A6A6
      A600A6A6A600A4A4A4007A7A7A006E6E6E00494949005B5B5B00ADADAD00DBDB
      DB00D8D8D800B8B8B800848484007B7B7B007B7B7B002B91DC0048B2FD007FCD
      FD001198FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000007CD0FD006BCDFD00BDF3FE00BDF3FE00B8F1FE0093E0
      FD008EDEFD008EDEFD008EDEFD008EDEFD00D4D4D400D3D3D300D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3
      D300CFCFCF00B5B5B500737373006D6D6D0079797900D1D1D100DBDBDB00D0D0
      D000AAAAAA007A7A7A007777770077777700777777003E8AC2004BB4FD0084CF
      FD001199FD00C0DCF800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000007DD0FD006DCDFD00C1F4FE00C1F4FE00BAF2FE0097E2
      FD008FDFFD008FDFFD008FDFFD008FDFFD00E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E2E2E200E2E2E200E2E2E200E1E1
      E100E6E6E600ADADAD0064646400646464007777770085858500BEBEBE00B5B5
      B500A7A7A7007B7B7B007373730073737300737373004287B8003EAFFD0088D1
      FE0028A4FD00C0DCF800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000007DD1FD006ECEFD00C3F5FE00C3F5FE00BEF3FE009DE5
      FD008FDFFD008FDFFD008FDFFD008FDFFD00ECECEC00ECECEC00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00F1F1F100A8A8A80054545400545454006565650060606000545454009393
      9300BABABA00B1B1B1008E8E8E006F6F6F006F6F6F004185B60040B0FD008CD3
      FE0030A9FD00C3E3FD00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000005EC6FD008CDCFD00C6F6FE00C6F6FE00C1F4FE00A9EA
      FD0090DFFD0090DFFD0090DFFD0090DFFD00F0F0F000F0F0F000F0F0F000EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EEEEEE00EEEEEE00EFEF
      EF00F9F9F900A6A6A6003F3F3F003F3F3F004B4B4B00474747003F3F3F004141
      4100C0C0C000D2D2D200BCBCBC00A0A0A000707070004A7DA10051B9FD0090D5
      FE0032AAFD00C4E6FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000054C3FD008EDDFD00C8F7FE00C8F7FE00C6F6FE00BCF2
      FD0093E1FD0091E0FD0091E0FD0091E0FD00EDEDED00EDEDED00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00EBEBEB00EBEBEB00EBEBEB00EDED
      ED00F9F9F900A8A8A800D3D3D300D3D3D300D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D3D3D300D1D1D100BBBBBB00B5B5B5006D8FA7006CC5FD0094D7
      FE00139DFD00A3D2F900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000054C3FD0080D7FD00CBF8FE00CBF8FE00CBF8FE00C3F5
      FE00AEECFD0091E0FD0091E0FD0091E0FD00EAEAEA00EAEAEA00EAEAEA00E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E8E8E800E8E8E800EBEB
      EB00FBFBFB00A9A9A9007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00728B9C0099DAFE0080CE
      FD00139EFD0080B9F200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000054C4FD006ACEFD00CDF9FE00CDF9FE00CDF9FE00CCF9
      FE00C2F5FE00AFEDFD0092E0FD0092E0FD00E7E7E700E7E7E700E7E7E700E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E5E5E500E5E5E500E5E5E500E6E6
      E600FBFBFB00ABABAB0051758B0051758B0051758B0051758B0051758B005175
      8B0051758B0051748B0051748B0051748B0051748B0084B3CE009EDCFE0047B6
      FD000D91F500C0DCF800FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000006ACBFD0054C4FD00C0F4FD00CFFAFE00CFFAFE00CFFA
      FE00CEFAFE00C6F7FE00B5EFFD009DE5FD00E4E4E400E4E4E400E4E4E400E4E4
      E400E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E0E0E000E6E6
      E600FAFAFA00ACACAC00149FFD00149FFD00149FFD00149EFD00149EFD00149E
      FD00149EFD00149EFD00149DFD00149DFD0065C3FD00A3DEFE0088D2FD0014A0
      FD00057EEB00E0EEFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000095DAFD0055C5FD0083D9FD00D2FBFE00D2FBFE00D2FB
      FE00D2FBFE00D2FBFE00D0FAFE00CAF8FE00DFDFDF00DFDFDF00DFDFDF00DDDD
      DD00DDDDDD00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00E2E2
      E200E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E2E2E200E8E8E800F5F5
      F500FDFDFD00AFAFAF00149BFD00149BFD00149BFD00149BFD00149BFD00139B
      FD00139BFD00139BFD0023A2FD0079CCFD00A6E0FE008BD4FD001EA6FD000E93
      F500308DE900FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000B5E1FC0056C5FD0056C5FD00B4EEFD00D4FCFE00D4FC
      FE00D4FCFE00D4FCFE00D4FCFE00D4FCFE00F6F6F600F4F4F400F4F4F400F4F4
      F400FAFAFA00FEFEFE00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FDFD
      FD00FDFDFD00FDFDFD00FDFDFD00FDFDFD00FCFCFC00FCFCFC00E9E9E900EBEB
      EB00D1D1D100B2B2B200AAE4FE00AAE4FE00AAE4FE00AAE4FE00AAE4FE00AAE4
      FE00AAE4FE00AAE4FE00ABE2FE00ABE2FE0072CAFD001FA6FD00119AF8000176
      E600B0D3F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000E0F0FD0040B6FA0056C6FD005EC9FD00B6EFFD00D7FD
      FE00D7FDFE00D7FDFE00D7FDFE00D7FDFE00DEDEDE00DDDDDD00DDDDDD00DFDF
      DF00D0D0D000CCCCCC00CBCBCB00CBCBCB00CACACA00CACACA00CACACA00B9B9
      B900B8B8B800B8B8B800B8B8B800B9B9B900B8B8B800B7B7B700B4B4B400B3B3
      B300B6B6B6009EBBCC0063C5FD0063C5FD0063C4FD0063C4FD0063C4FD0063C4
      FD0063C4FD0063C4FD0059BFFD0029ABFD0014A0FB000B8BF0000073E50060A8
      EE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000055B0F6004CBEFB0057C7FD0057C7FD0087DB
      FD00C7F7FD00D8FEFE00D8FEFE00D8FEFE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000059C8FD0059C8FD0059C8FD0059C8
      FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8
      FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8
      FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8
      FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8
      FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8
      FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8
      FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8FD0059C8
      FD0059C8FD0059C8FD0059C8FD0059C8FD000081ED000081ED000080EC00007F
      EB00007FEB00007EEA00007EEA00007DE900007CE900007CE800007CE800007B
      E700007BE700007AE6000079E5000079E5000078E4000077E4000077E3000076
      E3000075E2000075E2000074E1000074E1000073E0000072DF000072DF000071
      DE000070DE000070DD00006FDD00006EDC00006EDC00006EDB00006EDB00006D
      DA00006CD900006CD900006BD800006AD800006AD7000069D7000068D6000068
      D6000067D5000067D5000066D4000065D3000065D3000064D2000064D2000064
      D1000063D1000062D0000062D0000061CF000060CE000060CE00005FCD00005F
      CD00005ECC00005ECC00005DCB00005DCB003698E9003697E8003697E8001272
      C3001271C2001776C7002583D4002382D3001F7DCE00227FD1002582D300227F
      D0001F7CCD00237FD0002580D100217BCD001F7ACB00257ED000257ED0001F78
      CA002179CB00257DCE00237BCD001F76C8002279CA00257BCD002176C8001F75
      C7002378CA002579CB001F73C5001F72C5002577CA002376C8001F72C4002173
      C4002576C8002273C5001F70C2002272C4002574C7002170C2001F6EC0002371
      C4002573C5001F6DBF001F6CBF002571C400236FC2001F6BBE00216CBE002570
      C200226DBF001F69BC00226CBE00256EC0002169BC001F68BA00236BBE00256C
      BF001F67B9001F66B800256BBE002369BC00BEBEBE00D8D8D800DBDBDB00B6B6
      B6005B5B5B005A5A5A0091919100AFAFAF00BCBCBC00C0C0C000A5A5A500A4A4
      A400A6A6A600A7A7A700A7A7A700A6A6A600A6A6A600A7A7A700A7A7A700A6A6
      A600A6A6A600A7A7A700A7A7A700A6A6A600A7A7A700A7A7A700A6A6A600A6A6
      A600A7A7A700A7A7A700A6A6A600A6A6A600A7A7A700A7A7A700A6A6A600A6A6
      A600A7A7A700A7A7A700A6A6A600A7A7A700A7A7A700A6A6A600A6A6A600A7A7
      A700A7A7A700A6A6A600A6A6A600A7A7A700A7A7A700A6A6A600A6A6A600A7A7
      A700A7A7A700A6A6A600A7A7A700A7A7A700A6A6A600A6A6A600A7A7A700A7A7
      A700A6A6A600A6A6A600A7A7A700A7A7A70081818100B8B8B800D3D3D300DBDB
      DB00D1D1D1007979790099999900DDDDDD00FFFFFF00FCFCFC00C6C6C600BFBF
      BF00D3D3D300D6D6D600D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5D500D5D5
      D500D5D5D500D5D5D500D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4D400D4D4
      D400D4D4D400D4D4D400D4D4D400D4D4D4007F7F7F00B3B3B300B8B8B800C9C9
      C900787878006868680097979700E8E8E800FFFFFF00FCFCFC00C8C8C800BCBC
      BC00E1E1E100E9E9E900E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E3E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300B5B5B500C1C1C100ABABAB006565
      65005454540058585800AAAAAA00F3F3F300FFFFFF00FDFDFD00C7C7C700BCBC
      BC00E0E0E000F6F6F600EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EDEEEE00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00CDCDCD00D4D4D4004B4B4B004B4B
      4B003F3F3F0041414100ABABAB00FCFCFC00FFFFFF00FDFDFD00C9C9C900BDBD
      BD00E8E8E800FFFFFF00F1F1F100F3F3F300F3F3F300F3F3F300F3F3F300F3F3
      F300F3F3F300F3F3F300F3F3F300F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2F200F2F2
      F200F2F2F200F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1
      F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F1F1F100F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000D3D3D300D3D3D300D3D3D300D3D3
      D300D3D3D300D3D3D300B8B8B800FFFFFF00FEFEFE00FEFEFE00C3C3C300BDBD
      BD00E8E8E800FFFFFF00EEEEEE00F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00EFEFEF00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EEEE
      EE00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED007B7B7B007B7B7B007B7B7B007B7B
      7B007B7B7B007C7C7C00BFBFBF00FFFFFF00FEFEFE00FEFEFE00C4C4C400BEBE
      BE00E9E9E900FEFEFE00EBEBEB00EDEDED00EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00EDEDED00EDEDED00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECECEC00ECEC
      EC00ECECEC00ECECEC00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA0054798C0053798C0053798C005379
      8C0053798C0066849500D0D0D000FFFFFF00FEFEFE00FCFCFC00BBBBBB00C0C0
      C000E9E9E900FDFDFD00E8E8E800EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00EAEAEA00E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9
      E900E9E9E900E9E9E900E9E9E900E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E800E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E7001DB0FE001DAFFE001CAFFE001CAF
      FE001CAFFE0072B9DF00D4D4D400FFFFFF00FCFCFC00FAFAFA00BABABA00CFCF
      CF00EAEAEA00FDFDFD00E5E5E500E7E7E700E7E7E700E7E7E700E7E7E700E7E7
      E700E7E7E700E7E7E700E7E7E700E7E7E700E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6E600E6E6
      E600E6E6E600E6E6E600E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E4001BADFE001BADFE001BACFE001BAC
      FE001BACFE0079B8DC00E5E5E500FFFFFF00F9F9F900F4F4F400B9B9B900D3D3
      D300E9E9E900FCFCFC00E0E0E000E4E4E400E4E4E400E4E4E400E4E4E400E4E4
      E400E4E4E400E4E4E400E4E4E400E4E4E400E4E4E400E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2E200E2E2
      E200E2E2E200DFDFDF00E1E1E100DFDFDF00DFDFDF00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00DFDFDF00AFEAFE00AAE4FE00AAE4FE00AAE4
      FE00AAE4FE00BEC9CE00E2E2E200FFFFFF00F6F6F600F1F1F100B8B8B800D4D4
      D400E9E9E900FFFFFF00E2E2E200DCDCDC00DDDDDD00DDDDDD00DDDDDD00DDDD
      DD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DCDCDC00DCDCDC00DCDC
      DC00DCDCDC00DEDEDE00DEDEDE00DDDDDD00DDDDDD00DCDCDC00DCDCDC00DCDC
      DC00DCDCDC00DDDDDD00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DCDCDC00DBDB
      DB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DBDBDB00DADADA00E4E4E400E3E3
      E300E3E3E300E3E3E300E2E2E200E6E6E600EDEDED00EDEDED00EDEDED00EDED
      ED00EDEDED00EDEDED00F6F6F600F6F6F6006AD0FE006ACFFE0069CFFE0069CF
      FE0069CFFE00C1C3C400F7F7F700FFFFFF00F3F3F300EBEBEB00B5B5B500D7D7
      D700E2E2E200FFFFFF00FFFFFF00FFFFFF00FBFBFB00FCFCFC00FCFCFC00FCFC
      FC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FCFCFC00FAFAFA00FAFA
      FA00FAFAFA00F2F2F200EEEEEE00F4F4F400F9F9F900FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F7F7F700F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FDFDFD00F0F0F000F0F0F000F0F0F000F0F0
      F000F1F1F100EDEDED00DEDEDE00DEDEDE000000000000000000C2C2C200C2C2
      C200C1C1C100C1C1C100C1C1C100C1C1C100C2C2C200C1C1C100C1C1C100C3C3
      C300C3C3C300C4C4C400C5C5C50000000000000000006A9EC7002793E8000C8C
      F0000C8CF0000C8CF0000C8CF0000B8CF0000B8CF0000B8CF0000B8CF0000B8B
      F0000B8BF0000B8BF0000B8BF0000781EB00000000000072E40060A8EE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000D0E8FC000A8EF20047BAFA0058C7FD0058C7
      FD0058C7FD0070D1FD0078D5FD0078D5FD00D2D2D200D2D2D200D2D2D200D0D0
      D000D0D0D000D6D6D600D6D6D600D6D6D600D4D4D400D9D9D900DCDCDC00E0E0
      E000E0E0E000DDDDDD00E0E0E000D9D9D900B7B7B700518AC2000072E3000072
      E3000072E3000072E4000072E4000072E4000072E4000072E4000072E4000072
      E4000072E4000072E4000072E4000072E400509EEC00C0DCF800FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000A0D2F9000086F100219EF50048BB
      FA0059C8FD0059C8FD0059C8FD0059C8FD00E3E3E300E3E3E300E5E5E500EAEA
      EA00ECECEC00ECECEC00ECECEC00EDEDED00F0F0F000F0F0F000F0F0F000EEEE
      EE00EEEEEE00F2F2F200F6F6F600E9E9E900B3B3B300BBD3EA00C0DCF800C0DC
      F800C0DCF800C0DCF800C0DCF800C0DCF800C0DCF800C0DCF800C0DCF800C0DC
      F800C0DCF800C0DCF800E0EDFB00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000004BB3F9000188F1000085
      F0000084EF000083EF000082EE000082EE00F1F1F100F6F6F600F6F6F600F6F6
      F600F6F6F600F6F6F600F8F8F800F9F9F900FAFAFA00FAFAFA00FAFAFA00F8F8
      F800FDFDFD00FDFDFD00FBFBFB00F7F7F700B7B7B700EFEFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000053BFFD007AD0FC002FA7
      F700068EF3001387E2001F81D2002B8CDD00F4F4F400F5F5F500F5F5F500F5F5
      F500F6F6F600F6F6F600F6F6F600F6F6F600F7F7F700F7F7F700F7F7F700F8F8
      F800F8F8F800F8F8F800F6F6F600F6F6F600B3B3B300EEEEEE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000001AABFD0087D7FE0050C1
      FD001AABFD005C8AA3007B7B7B0084848400F1F1F100F2F2F200F2F2F200F2F2
      F200F3F3F300F3F3F300F3F3F300F4F4F400F4F4F400F4F4F400F4F4F400F5F5
      F500F5F5F500F5F5F500F4F4F400F8F8F800A2A2A200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000001BACFD008BD9FE0053C2
      FD001AACFD00608498007777770077777700EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00F0F0F000F0F0F000F0F0F000F0F0F000F1F1F100F1F1F100F1F1F100F2F2
      F200F2F2F200F2F2F200F2F2F200FAFAFA00A4A4A400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000001BADFD008FDAFE0055C4
      FD001BADFD005D8195007373730073737300EBEBEB00ECECEC00ECECEC00ECEC
      EC00EDEDED00EDEDED00EDEDED00EEEEEE00EEEEEE00EEEEEE00EEEEEE00EFEF
      EF00EFEFEF00EFEFEF00F0F0F000F5F5F500A5A5A500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000001CAFFE0093DCFE0057C5
      FD001BAEFD00647781006F6F6F008A8A8A00E9E9E900E9E9E900E9E9E900E9E9
      E900EAEAEA00EAEAEA00EAEAEA00EBEBEB00EBEBEB00EBEBEB00EBEBEB00ECEC
      EC00ECECEC00ECECEC00F1F1F100E6E6E600BABABA00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000001CB0FE0097DEFE0061CA
      FE001CAFFE006B6B6B0097979700BABABA00E6E6E600E6E6E600E6E6E600E6E6
      E600E7E7E700E7E7E700E7E7E700E8E8E800E8E8E800E8E8E800E9E9E900E9E9
      E900E9E9E900E9E9E900F1F1F100E6E6E60000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000001DB1FE009BE0FE0083D7
      FE001CB0FE009C9C9C00BBBBBB00CBCBCB00E3E3E300E3E3E300E3E3E300E4E4
      E400E4E4E400E4E4E400E4E4E400E5E5E500E5E5E500E5E5E500E5E5E500E6E6
      E600E6E6E600E4E4E400F3F3F300E2E2E200C0C0C000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000000000000000000000000000000000001BAEFC0077D2FE00A0E1
      FE003DBDFE007B7B7B007B7B7B007B7B7B00DDDDDD00DCDCDC00DDDDDD00DFDF
      DF00DFDFDF00DFDFDF00DFDFDF00E0E0E000E0E0E000E2E2E200E3E3E300E3E3
      E300E3E3E300E1E1E100F5F5F500D2D2D200D8D8D800FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000053BEF90050C5FE00A4E3
      FE0083D7FE00428CB20054798C0054798C00FEFEFE00FDFDFD00FDFDFD00F5F5
      F500F3F3F300F4F4F400EDEDED00E9E9E900ECECEC00E2E2E200E3E3E300E3E3
      E300DDDDDD00E6E6E600F8F8F800D6D6D600D6D6D600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000068B6F1001EB4FE0085D8
      FE00A8E5FE0074D2FE001DB0FE001DB0FE00C1C1C100C8C8C800C8C8C800D7D7
      D700DCDCDC00DADADA00E7E7E700EDEDED00EAEAEA00F9F9F900FCFCFC00FCFC
      FC00FBFBFB00FAFAFA00F7F7F700B9B9B900ECECEC00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000000000000000000000000000B0D2F4001196F00027B8
      FE0091DDFE00ACE6FE0089DAFE002BB3FE00DFDFDF00D9D9D900C6C6C600C7C7
      C700C6C6C600B7B7B700B7B7B700B5B5B500B5B5B500B3B3B300B3B3B300B2B2
      B200C7C7C700C4C4C400BEBEBE00B5B5B500F5F5F500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000308AE40017A4
      F60028B9FE0070D1FE00B0E8FE00B0E8FE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F2F2F200F3F3F300E7E7
      E700DADADA00DBDBDB00DADADA00EAEAEA00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D0E4F8001078
      E0001093EE001EB2FC0032BDFE0060CDFE000000000000000000000000000000
      00000F92EE00C5C5C500F6F6F600F7F7F700F0F0F000E8E8E800BDBDBD00D4D4
      D400D6D6D600DBDBDB00E0E0E000ECECEC000000000000000000EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00E8E8E800F2F2F200F9F9
      F900F8F8F800F9F9F900F8F8F800F8F8F80000000000E8E8E800E8E8E800E8E8
      E800E8E8E800E7E7E700E7E7E700E7E7E700E7E7E700E6E6E600E6E6E600E6E6
      E600D4D4D400D4D4D400D4D4D400D4D4D40000000000CFCFCF00C3C3C300C3C3
      C300C2C2C200C2C2C200C2C2C200C2C2C200C3C3C300C3C3C300C1C1C100C1C1
      C100C1C1C100C0C0C000C2C2C200C2C2C200006FDE00006FDE00006FDE00006F
      DE002881DA00C6C6C600FFFFFF00F8F8F800EDEDED00E4E4E400C6C6C600BCBC
      BC00C7C7C700C5C5C500CDCDCD00D0D0D000D0D0D000CFCFCF00CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00CECECE00CDCDCD00CDCDCD00CECECE00C9C9C900C5C5
      C500C4C4C400C4C4C400C4C4C400C4C4C400C5C5C500C5C5C500C5C5C500C5C5
      C500C5C5C500C5C5C500C4C4C400C5C5C500C8C8C800C8C8C800C8C8C800C8C8
      C800CACACA00C9C9C900C9C9C900C9C9C900C8C8C800C7C7C700C8C8C800C8C8
      C800C7C7C700C7C7C700C7C7C700C7C7C700C7C7C700C9C9C900CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CCCCCC00D1D1D100C0DBF600C0DBF600C0DBF600C0DB
      F600C3D7EC00C6C6C600FFFFFF00EEEEEE00EAEAEA00E5E5E500D2D2D200CFCF
      CF00CFCFCF00CACACA00CACACA00C9C9C900C9C9C900CACACA00CACACA00CBCB
      CB00CBCBCB00CBCBCB00CACACA00CBCBCB00CBCBCB00CBCBCB00CBCBCB00CBCB
      CB00CBCBCB00CBCBCB00CBCBCB00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
      CC00CCCCCC00CCCCCC00D3D3D300D1D1D100D1D1D100D1D1D100D5D5D500D8D8
      D800DADADA00DBDBDB00DBDBDB00DBDBDB00DDDDDD00DEDEDE00DFDFDF00DFDF
      DF00DFDFDF00DFDFDF00E5E5E500E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00E5E5E500D4D4D400FFFFFF00EBEBEB00E7E7E700E4E4E400DFDFDF00E0E0
      E000E0E0E000E0E0E000E0E0E000E0E0E000DEDEDE00DEDEDE00DCDCDC00DADA
      DA00DBDBDB00DBDBDB00DADADA00DADADA00DBDBDB00DBDBDB00DBDBDB00DCDC
      DC00DBDBDB00DBDBDB00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDC
      DC00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DDDDDD00DFDF
      DF00E3E3E300E5E5E500E6E6E600E6E6E600E4E4E400E8E8E800E9E9E900E7E7
      E700E7E7E700E8E8E800E8E8E800EDEDED00EBEBEB00EBEBEB00EBEBEB00EFEF
      EF00F1F1F100F2F2F200F3F3F300F3F3F300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE00DBDBDB00FFFFFF00E9E9E900E4E4E400E4E4E400E3E3E300E3E3
      E300E3E3E300E4E4E400E4E4E400E4E4E400E6E6E600E6E6E600E7E7E700E7E7
      E700E7E7E700E7E7E700E8E8E800E7E7E700E7E7E700E7E7E700E8E8E800E8E8
      E800E8E8E800E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900E9E9E900EAEA
      EA00EAEAEA00EAEAEA00EAEAEA00EBEBEB00EBEBEB00ECECEC00EDEDED00EDED
      ED00EEEEEE00EBEBEB00EEEEEE00ECECEC00F0F0F000F0F0F000F1F1F100F1F1
      F100F1F1F100F2F2F200F4F4F400F4F4F400F4F4F400F4F4F400F5F5F500F5F5
      F500F3F3F300F4F4F400F4F4F400F4F4F400FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D7D7D700DCDCDC00FFFFFF00EEEEEE00DCDCDC00DEDEDE00E0E0E000E0E0
      E000E2E2E200E3E3E300E3E3E300E3E3E300E4E4E400E4E4E400E4E4E400E4E4
      E400E5E5E500E5E5E500E5E5E500E6E6E600E6E6E600E6E6E600E6E6E600E7E7
      E700E7E7E700E7E7E700E8E8E800E8E8E800E8E8E800E8E8E800E9E9E900E9E9
      E900E9E9E900EAEAEA00EAEAEA00EAEAEA00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00ECECEC00ECECEC00ECECEC00EDEDED00EDEDED00EDEDED00EDEDED00EEEE
      EE00EEEEEE00EEEEEE00EFEFEF00EFEFEF00EFEFEF00EFEFEF00F0F0F000F0F0
      F000F0F0F000F1F1F100F1F1F100F1F1F100FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00D1D1D100D6D6D600FFFFFF00FFFFFF00FEFEFE00F9F9F900EFEFEF00E9E9
      E900E5E5E500DBDBDB00DCDCDC00DCDCDC00DEDEDE00DFDFDF00DFDFDF00DFDF
      DF00E2E2E200E2E2E200E2E2E200E3E3E300E3E3E300E3E3E300E4E4E400E4E4
      E400E4E4E400E4E4E400E5E5E500E5E5E500E5E5E500E5E5E500E6E6E600E6E6
      E600E6E6E600E7E7E700E7E7E700E7E7E700E8E8E800E8E8E800E8E8E800E8E8
      E800E9E9E900E9E9E900E9E9E900EAEAEA00EAEAEA00EAEAEA00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00ECECEC00ECECEC00ECECEC00ECECEC00EDEDED00EDED
      ED00EDEDED00EEEEEE00EEEEEE00EEEEEE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00DBDBDB00D1D1D100D1D1D100DFDFDF00ECECEC00F1F1F100F8F8F800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00F9F9F900F1F1F100EBEBEB00E5E5
      E500DFDFDF00DADADA00DBDBDB00DCDCDC00DDDDDD00DEDEDE00DEDEDE00DFDF
      DF00E1E1E100E1E1E100E2E2E200E2E2E200E2E2E200E3E3E300E3E3E300E3E3
      E300E3E3E300E4E4E400E4E4E400E4E4E400E5E5E500E5E5E500E5E5E500E5E5
      E500E6E6E600E6E6E600E6E6E600E7E7E700E7E7E700E7E7E700E7E7E700E8E8
      E800E8E8E800E8E8E800E9E9E900E9E9E900E9E9E900EAEAEA00EAEAEA00EAEA
      EA00EAEAEA00EBEBEB00EBEBEB00EBEBEB00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F6F6F600E7E7E700E4E4E400D8D8D800CECECE00CDCDCD00CBCB
      CB00CECECE00DBDBDB00E0E0E000E9E9E900F0F0F000F9F9F900FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFEFE00FBFBFB00F4F4F400EFEFEF00E9E9E900E4E4
      E400E2E2E200D9D9D900DBDBDB00DBDBDB00DBDBDB00DDDDDD00DEDEDE00DEDE
      DE00DEDEDE00DFDFDF00E1E1E100E1E1E100E2E2E200E2E2E200E2E2E200E2E2
      E200E3E3E300E3E3E300E3E3E300E4E4E400E4E4E400E4E4E400E5E5E500E5E5
      E500E5E5E500E5E5E500E6E6E600E6E6E600E6E6E600E7E7E700E7E7E700E7E7
      E700E7E7E700E8E8E800E8E8E800E8E8E800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAFA
      FA00F7F7F700EAEAEA00E7E7E700D6D6D600D5D5D500CBCBCB00C9C9C900C7C7
      C700D3D3D300D8D8D800E4E4E400E7E7E700F3F3F300F7F7F700FEFEFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00F9F9F900F6F6F600EFEFEF00ECEC
      EC00E9E9E900E2E2E200E3E3E300DEDEDE00DADADA00DBDBDB00DBDBDB00DBDB
      DB00DDDDDD00DEDEDE00DEDEDE00DFDFDF00DFDFDF00DFDFDF00E2E2E200E2E2
      E200E2E2E200E2E2E200E3E3E300E3E3E300E3E3E300E4E4E400E4E4E400E4E4
      E400E5E5E500E5E5E500E5E5E500E5E5E500FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5
      F500F3F3F300E5E5E500E2E2E200D4D4D400CFCFCF00C9C9C900C5C5C500C6C6
      C600C7C7C700D6D6D600D4D4D400E2E2E200E7E7E700E9E9E900F6F6F600F5F5
      F500FCFCFC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F8F8
      F800F6F6F600F7F7F700EBEBEB00EDEDED00EEEEEE00E5E5E500E3E3E300E3E3
      E300DDDDDD00DBDBDB00DCDCDC00DDDDDD00DDDDDD00DFDFDF00DFDFDF00DFDF
      DF00DFDFDF00E0E0E000E2E2E200E2E2E200FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F5F5
      F500F2F2F200E4E4E400E0E0E000D2D2D200D2D2D200C5C5C500C5C5C500C4C4
      C400C3C3C300C1C1C100C3C3C300C9C9C900D4D4D400D1D1D100D5D5D500E4E4
      E400E4E4E400E1E1E100F3F3F300F2F2F200F0F0F000FEFEFE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F7F7F700F6F6F600F6F6F600EEEEEE00ECEC
      EC00ECECEC00E4E4E400E3E3E300E3E3E300FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F9F9
      F900F5F5F500F1F1F100E3E3E300E3E3E300D9D9D900CECECE00CFCFCF00C3C3
      C300C1C1C100C1C1C100C0C0C000C0C0C000BFBFBF00BEBEBE00BEBEBE00BCBC
      BC00C9C9C900CDCDCD00CDCDCD00DADADA00E0E0E000DEDEDE00E7E7E700EFEF
      EF00EDEDED00F6F6F600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00F3F3F300F4F4F400F5F5F500E0E0E000E1E1
      E100E1E1E100CACACA00CBCBCB00CCCCCC00BEBEBE00BCBCBC00BCBCBC00B9B9
      B900BABABA00B9B9B900B8B8B800B8B8B800FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFD
      FD00F2F2F200F4F4F400EFEFEF00DEDEDE00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F4F4F400D6D7
      DA00D8DADC00E1E2E500E2E4E600E2E5E700E3E6E800E3E5E700DCDEE100DADB
      DE00DADCDE000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000D0E4
      F8001078E0000273E0000A85E8001093EE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D58B3800D48B
      3500D68E3800D78F3900D7903900D68E3700D38A3300CF842E00CA7E2800C475
      2000BC6A1700E5C7AB0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F0F6FD0080B7EE002081E200006FDE00AAB0B500A9AEB500ACB1B700A7AD
      B600ABB1B800ACB1B900ACB4BB00AAB2BA00ACB6BB00ADB4BC00ABB4BA00A9B1
      BA00AEB3BC00AFB5BC009FA7AE00949BA600949CA3009297A1009297A0009297
      9E008A91990081889000ADB1B600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D0C8C300DE9A4700E4A1
      4C00E9A75200ECAB5500EDA84D00ECA44300E89F4100E39E4600DD974300D58D
      3A00CD822F00BB977700F0EEEC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B76C1D00B5701C00B46C1B00B46F
      1B00B36D1800B56A1900B36B1800B26A1800B2691500B16A1500B0651100AF66
      1300AC631100A9620B00A95F0D00A85E0D00A85A0600A55A0700A1570600A353
      0500A05200009C4B00009B470000AC5C0C000000000000000000000000000000
      00000000000000000000000000000000000000000000D8934D00E9A75100F0B1
      5B00F5B86100F9BC6400AEA17F007B7A7B00777D8300E4AE6500E8A65100DF9A
      4700D78E3C00CB782300EBD0B600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EEA14600ECA14400EDA24700EDA2
      4500EDA54500EDA24400EFA24300EE9F4200EB9C4400E79E4100E89B3D00E899
      3E00E4973C00E4933700E4923600E0913600DD8E3200DB8A2E00DD842B00D584
      2800D57E2700D47D2200CE761B00B55500000000000000000000000000000000
      00000000000000000000000000000000000000000000D89A5500F3B45D00FBC0
      6900FEC77200FFCB7800B2A37C00AEA9A500A1A3A200D39E4E00F2B35E00E9A7
      5200DF9A4700CC802E00ECD4BC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E4A14B00E5A04B00E5A24C00E5A2
      4C00E5A04C00E3A14B00E49E4A00E39E4900E19E4800DF9B4700E0984500DD96
      4300DD954100DB933F00D9903D00D58D3A00D28A3700D2863400D0843100CD80
      2E00C87F2C00C87A2800C4731F00B65C03000000000000000000000000000000
      00000000000000000000000000000000000000000000E0A55E00FBC16900FFCB
      7A00FFD18400FFDA9800FFE1A000FFE19900FFDB8B00FFCC7700FBC06900F2B3
      5C00ECA74B00D48A3700EED7BF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E8A55000E8A65100E8A65100E8A6
      5100E8A65100E8A65000E7A75100E6A64F00E5A24E00E4A14C00E39F4A00E19D
      4800E09B4600DE984400DC954100D9923F00D78F3C00D58C3900D2893600D085
      3300CD823000CA7E2B00C6772200BA6104000000000000000000000000000000
      00000000000000000000000000000000000000000000E8AE6500FEC87200FFD9
      9900FFE7BC00FFE9BD00FFE9BC00FFE6B300FFDFA500FFD69100FFCB7900F6B8
      5A00A7998500DD953E00F0DAC300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ECAB5600EDAC5600EDAC5700EFAB
      4F00EEA84A00EEA84800EDA44800EDA64000EBA34500E8A04300EAA14100E69E
      4600E4A24A00E29E4700E09B4600DD964200DB954100D8913E00D68E3B00D38A
      3800D0863400CE823100CC7E2800C97114000000000000000000000000000000
      00000000000000000000000000000000000000000000F1B96F00FDC57200FFD1
      8B00FFD38F00FFD69300FFD59500FFD49100FFD28D00FECC8200FEC67300FCBF
      6400F7B24C00E59D4300F2DDC600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F1B15B00F1B25B00F3B05100F1A8
      4600F1A43D00F1A43900F0A03900F0A23100EE9E3600EB9B3500EC9C3300E799
      3C00E9A44700E6A34E00E3A04B00E19D4900DF994600DC964300D9924000D68F
      3C00D48B3800D1863500D1853000D17F2400350F00001E00000080695A000000
      00000000000000000000000000000000000000000000F9C67D00E6C89F00F2B8
      6800F8CA8400F8CE9000F6D19800F3D2A100FEE7B800FFE6B800FFE3AE00FAD9
      9500E1CFA900E9A04200F3E0C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F5B76000F6B55E00FFB85000E4EC
      F50000000000000000000000000000000000000000000000000000000000FBFF
      FF00ECA44A00EAA65100E7A55000E5A14D00E29E4A00DF9A4700DD974300DA93
      4000D78F3C00D48A3800D2883600D0833100D5751800DB7A1300CF741C000000
      00000000000000000000000000000000000000000000FECC8400C1A67F00FCE3
      A300F9E3B700F9EAC200F4E7C200FAFACD00FBF7CE00FDFBCF00FEF4C500FAEB
      B400B4A08D00F6B15000F4E1C900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F9BD6500FDBF6500FFCE5D009695
      930015202D002F2C30002A2B2C0024292B00292A290018171A0041597700C090
      5200F4AF5400EEAE5900EBA95500E8A65200E5A34E00E39F4B00E09B4800DD97
      4400DA934000D78F3C00D68C3B00CF853600BD6C1B00C2711F00BF7127000000
      00000000000000000000000000000000000000000000FFD29000B39767008E6F
      4600F0CD9500EBCEA900DCAA60009B7441009D763F0099733A00946C3500946B
      340072523900F9C06100F5E2CA00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FEC36B00FFC66B00FFD763006369
      630036435300494A4900474946004B42480045474200494C4B00233D5E00AF83
      3F00F7B85A00EFB45C00EFAE5900ECAB5600E9A75300E6A34F00E39F4B00E09B
      4800DD974400DA923E00D88E3E00D58A3900BF6E1B00C5742200C07830000000
      00000000000000000000000000000000000000000000FFDA9B00FFDD9400FFE8
      A400FFEAAE00FFEDB400FFEDAF00FFE9AB00FFE6A200FFE39900FFDD8C00FFD5
      7D00FECD6E00F9BC6200F6E4CC00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFC77100FFCC7300FFD161009592
      9200000000000000000000000000000000000000000000000000DCFBFF008E5E
      1B00F9BE6200EFB96200F4B35E00EFAF5A00ECAC5700E9A85300E6A44F00E39F
      4B00E09B4700DC964300D9974000D48B3C00C2702100C7782300C37B33000000
      00000000000000000000000000000000000000000000F3CA9300F7C17200FECC
      8100FFD38E00FFD79700FFDAA000FFD79A00FED39000F8C77D00F0BA6D00E6AB
      5F00DD9A4E00D58D4000EEDDCE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCB7900FFCF7D00FFD567003C3F
      5100D2EDFF00BDD0ED00C1D1EF00C2CBEF00BAD0F000E3F1FF00416FB300A269
      1800FFC16600FCBB6500F5B96200F3B45E00EFB05B00ECAC5700E9A75300E6A3
      4F00E39F4B00DF9A4700DD984400D7943F00C6762200C87B2A00C57E37000000
      00000000000000000000000000000000000000000000F7D3A200FDC36C00FFCE
      7F00FFD68E00FFDB9600FFDD9900FFDB9900FFD59000FECB7B00F5B86200E8A6
      5100DA934000CA82330000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFCF8000FFD08000FFE487005641
      22004E3512004D3109004E3003004D2E00004E2E000054300300563916005F4F
      2600FFC56C00FEC06A00F8BC6600F5B86200F2B45E00EFB05A00ECAB5600E9A7
      5200E5A24E00E29D4A00DE994700D9954300C7792800CD7F2D00CA813B000000
      00000000000000000000000000000000000000000000FDE7C800FFCB7800FFDB
      9D00FFE9BC00FFF1D000FFF3D300FFECC400FFE3AE00FFD69400FBC67600EEAF
      5B00DF9A4600DEAC730000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFD18200FFD48100FFDA9500FFE8
      9B00FFF29E00FFED9600FFF19400FFEE8E00FFEA8D00FFEC8B00FFE48100FFD8
      7A00FFCC7400FFC56F00FFC16A00F9BD6600F5B86200F2B45E00EFAF5A00EBAA
      5600E8A65100E4A14D00E3A14A00DC984500C87F2700CD823100CA873B000000
      00000000000000000000000000000000000000000000FEF9F200FFEBCF00FFEF
      D700FEF3DC00FEF7E300FEF8E400FEF3D900FEEBCB00FFE3B900FDDAA500F5CC
      9700EABD8900EED5BA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E3B7
      8700E3A45500DD954000F5B55900FFC87500FFC76E00FFC97600FFCC7A00FFCE
      7F00FFD08400FFD28500FFD08300FFD1880000000000FFE2A800FFDEA200FFDE
      A000FFDC9E00FFDC9B00FFD39E00FFDA9100FFD58D00FFD28800FFD18300FFCF
      7B00FFCB7800FFC76A00FFCA6E00FBC16A0000000000F5B76100F1B35D00EEAD
      5800E8A95700E8A45300E2A04C00E29B4500CC7C2D00D1883400CE8A4000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E6BA
      8A00E4A65800DC994100FAB95C00FFCC7800FFC97600FFCC7B00FFCF8000FFD1
      8300FFCF8200FFD28200FFDB9800FFE5B100FFE3B300FFE2AC00FFE2AA00FFE1
      A800FFE0A600FFE1A300FFDDA000FFDB9C00FFDD9700FFD79200FFD48C00FFD1
      8600FFCE7E00FFCB7900FFC66E00FFC46C00FBC06900F6BB6400F2B66000FFB8
      5700FFB34100FFAF3B00F4AB4E00E49B4B00CF822C00D48C3700D28C4200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E9BD
      8D00E7AB5D00E29C4400FEBC6000FFD17D00FFCC7B00FFCF7F00FFCE7E00FFCE
      7D00FFDB9500FFE3B800FFE6C200FFE9B600FFE6B500FFE6B500FFE6B400FFE6
      B300FFE5B100FFE3AE00FFE2AD00FFE0A600FFDEA200FFDB9F00FFD99700FFD6
      9000FFD38900FFCF8200FFCB7300FFC86E00FFC56B00FABC6500FFC06800FFAF
      36007E727200827D7100F6A43800ECA64C00D0853300DA8C3A00D18F4800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000FCFCFC00AFAFAF0082878D008C9197008B8F
      9700898E93008B90970090979E00A1A6AC00000000000000000000000000EABD
      8B00EAAF5D00E39F4900FDBF6400FFD17E00FFCD7900FFCB7400FFD58800FFE3
      B200FFECC800FFE9C500FFE8BD00FFE9BE00FFEABE00FFEABE00FFE8BE00FFEA
      BC00FFE9BA00FFE8B700FFE6B400FFE5B000FFE2AB00FFDFA600FFDDA000FFDA
      9D00FFD59600FFD39000FFD08700FFCC7C00FFC87300FCBD6C00FFD06700BC88
      42004BA1FF0058A3FF00DA9A4400F4AB4900D38B3600D9913D00D3914D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000DB9E5D00D2883700C67F3000BD762500B66F1F00B56E
      1B00B56F1C00B56F1C00B56E1D00B46E1D00000000000000000000000000EDBE
      8A00F0B06500E8A54A00FEBF6400FFCD7300FFCE7800FFDFAB00FFEDCA00FFEB
      CC00FFEAC100FFEBC300FFECC500FFEDC600FFEEC500FFECC500FFECC600FFED
      C600FFEDC400FFEDC000FFEAC000FFEBB700FFE6B300FFE5B000FFE1A400FFDE
      9F00FFDB9B00FFD68700FFD48C00FFCC8200FFCC7600FFBF6E00FFC46A00FFB5
      3F00C8B69F00B69F8500F2A33400E7A34800D28B3900DB954000D6974F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000C4751E00E1923800E6953B00E79A3D00EA9B3E00E99B
      4100E9A04600ED9F4500ECA04500EBA04400000000000000000000000000EFC1
      8C00EFB76900EDA84900FDC56F00FFEAB700FFF5E000FFFAE800FFF3D800FFF5
      D700FFF0D200FFF2D300FFF0D600FFF5D100FFF1D400FFF0CD00FFF0C700FFEC
      C400FFE9BC00FFEABA00FFE9B000FFE7B500FFE7AE00FFE4AB00FFE2A700FFE1
      AF00FFE1B300FFE9AB00FFDF9D00FFDD9900FFDF8F00FFDB8400FFDB8700FFD2
      7000FFCB5000FFCC4B00FFC26200F4B35A00DC913B00E0974300DB965400FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000CB7E2800DA933F00DA923E00DC964100DD984300DF9A
      4500E19C4600E29B4800E39F4900E4A04A00000000000000000000000000F1C5
      9000F2BA6F00F0AB4E00F7C37E00FFE9CB00FFE3BB00FFEAC200FFECC400FFEA
      CC00FFF2D500FFF4DE00FFF6DF00FFF9E700FFFDE300FFFFF600FFFFFE00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFC00FFF4
      E500FFE9D700FEEBD100FFE3C400FCE0C200FADDC200FCD7B900F6CFB100F3CC
      A700EAC4A400E7BC9300E4AE7D00D5A16F00DF993C00DF9C4700D79A5300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000EDA45400DD953E00DD974300DF9A4600E19C4800E29E
      4A00E4A04B00E5A24D00E6A34E00E7A44F00000000000000000000000000F3C6
      8F00F6BF7500F5B75D00FF950000FF950000FF950000FF950000FF950000FF95
      0000FF950000FF950000FF950000FF950000FF950000FF950000FF950000FF95
      0000FF950000FF950000FF950000FF950000FF950000FF950000FF950000FF95
      0000FF950000FF950000FF950000FF950000FF950000FF950000FF950000FF95
      0000FF950000FF950000FF950000FF950000E8A74C00E39E4700D99D5500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      00000000000000000000C8914B00ECA34600E19D4800E3A04A00E5A24D00E7A4
      4F00E8A65100E9A85200EAA95400EBAA5500000000000000000000000000F4C7
      9100F7C47C00F8BC6200FEB34500CAC3C200FCF7F100E6973500EEB46700F5BC
      6B00FABC7200FFC77700FFC97900FFC87F00FFC58100FFC58600FFC88200FFC8
      8500FFCC8A00FFD19700FFD3A200FFD9AD00FFE3B600FFE2C600FFE7C900FFF4
      D700FFF1D400FFF2D800FFFDD900FFF8D600FFFACD00FFFAC600FFF8BF00FFF8
      B300FFEAAE00FFE88B00DFFFFF00E0973B00F2A85100EBA04C00DBA25800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000E5E5
      E500431E05003A180300C07F3300F1A95200E5A24D00E7A54F00E9A75200EBAA
      5400ECAC5600EEAD5700EFAF5900F0B05A00000000000000000000000000F7CA
      9300FAC87C00FCBE6500FFBE5000C5AE9F00FBF0E400F49C2400FCBB6200FFC2
      6800FFCD7700FFD47F00FFD68C00FFDD9600FFE3A000FFEBAA00FFEDB300FFF9
      C200FFFCCA00FFFFD300FFFFD600FFFFDC00FFFFD900FFEDC500FFE7B900FFE5
      B900FFE6B600FFE1B200FFDDB300FFDDAB00FFD7A000FFD6A100FFDB9900FFD2
      8600FFCB6B00FFC74E00ADC1FF00DB871700EFAE5000E8A34F00DCA15900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000D5AA
      8200EF953300E5882A00E59C4100EAA95400E9A75100EBAA5400EDAC5600EFAF
      5900F0B15B00F2B35C00F3B55E00F4B65F00000000000000000000000000FACC
      9500FBCF8200FFC36800FFCD5700B58E7900E7ECFF00F3CA9400EDC89100ECC8
      9600EEC59600EEC99500EAC99600F0C79000EDC09300E9BE8B00EBB98A00E2B7
      8300E5B07B00E2AE7600DFA97400D2925C00FAC77600FFFCC600FFE0A200FFDF
      A600FFD8A300FFE19000FFD69200FFD58A00FFD48A00FFDA8300FFBD4F00DAA3
      7300E5B97B00FFDCBD007E8FCA00E7952200F5AE5100E9AA5100DEA65900FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000D5A5
      7700D48C3E00CB7F2900E29C4400EDAD5800ECAC5600EFAF5900F1B25B00F3B4
      5E00F4B76000F6B86100F7BA6300F8BC6400000000000000000000000000FBCF
      9400FFCF8700FFC26900FFD56700A47D6100D7DBF80000000000F4FFFF00F3FF
      FF00F0FFFF00EDFFFF00F0FFFF00EEFFFF00F0FFFF00ECFFFF00EBFFFF00F2FF
      FF00EFFFFF00EFFFFF00F4FFFF00F1FFFF00DFCACB00FFFDF800FFFFFF00FEFF
      FE00FEFCFF00FEFBFB00FEFCFD00FEFBF700FEF9F900FFECD900F0DEDC00E3FF
      FF00FFFFFF00FFFFFF0056508100F8A53400F9AF5500EBA85300DDA25B00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000D8AD
      8100D78E4200CC7E2C00E49F4800F1B25F00F0B15A00F2B45D00F4B76000F7BA
      6300F8BC6500FABE6700FBC06900FCC16A00000000000000000000000000FECD
      9500FFD28C00FFC96F00FFE4750097725C00BF9C8C00FFE78300FFE7C600FFE0
      BB00FFDDAC00FDD49C00FFD59800FFD99E00FFD89F00FFF0C200FFFFFA00FFF8
      E900FFF2DA00FFF8EB00FFFDEF00FFFDFF00FFFFFF00FDFBF600FEF5FF00FAFA
      F800FBF9FD00FCFBFD00FFF9F900FDF6F200FCFDF400FFFAEF00FFFEEB00FFFB
      E000FFFFD800FFD868002B2A6400FFBB4700F7B25600EDAC5600E3A75D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000DAB1
      8500D8934300D1842F00E8A34C00F4B76000F4B55F00F6B96200F8BC6500FBBF
      6800FCC16A00FFC36C00FFC56D00FFC77000000000000000000000000000FFD2
      9900FFD78D00FFC87000FFEE8300916C51006C5E8E00FFAE3900FFDF4E00FFC4
      3500FFC85C00FFDFA700FFD89200FFDC9200FFE4AE00FFDC9A00D3740000FFDD
      8400FFEB9900FFDE5E00FFFF8600FFFF8200FFFF8700FFFF8300FFFF8000FFF9
      7A00FFFF7200FFFA7300FFEE6700FFED6300FFE35A00FFDC5200FFD64C00FFD7
      5000FFB90200BA8474001E1C5C00FFC95800FAB25600F1AF5800DFA65F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000DCB2
      8400DA974800D4863200EFA84F00F8BE6700F7BA6300FABE6700FCC16800FEC4
      6B00FFC66E00FFC87200FFC97500FFCA7700000000000000000000000000FFD2
      9D00FFD69400FFC97500FFFC920090674A005134650069443A00BD793900FFC7
      6D00FFF28600FFFAF800FFF4E700FFF8E400FFFFFF00FFFFFF00CB7B0000FFFA
      BA00FFFFB300CE610700D36C1A00DB681900DE6B1700DD610F00D3600F00CF60
      1500D15F0E00C65B0A00C2560E00BE550E00BB541000BA5C1600B95B1600CB6A
      1F00732B0000846E9000190A3000FFDA6A00FABC5A00F7B15A00E1AB6000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000DEB4
      8400DD9A4E00D58D3600EEAC5300FBC06900FBBF6800FDC36B00FFC56F00FFC8
      7300FFCA7600FFCB7900FFCC7C00FFCE7E00000000000000000000000000FFD7
      A300FFD89800FFCB7800FFF99600835748000000000000000000000000000000
      0000F6A94000F5CFA800EBCBA900ECC49D00EDCEA300F3D7CC00C6680000FEA4
      1900772903000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000A0000000700FFDA7000FAB75C00F5B15C00E4A85F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000E2B6
      8700E0A04F00D7903C00F2B05700FEC56D00FFC56C00FFC77000FFC97400FFCB
      7900FFCD7C00FFCE8000FFD08300FFD0810001FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF0101000000000000000000000000FFDA
      A900FFD89A00FFCC7D00FFE19000FFD38200EDB67100FFD48D00FFDC8D00E2B6
      8100EDBF8700DDAF6700D4A55A00D49E530000000000D9A66200DDBA9A00F4D1
      AB00EAC69500FFE4A800FFFFB400FFFFB300FFFFB200FFFFAC00FFFFAA00FFFF
      A700FFFD9C00FFF5A200FFF49500FFEF930000000000FFE78800FFE18500FFDA
      7C00FFD37200FFBE6000F4AF6000FFCE6D00F4B65E00F7B95E00E2AB6500FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF0101000000000000000000000000FFDC
      AF00FFDD9C00FFD07B00FFD88B00FFE49800FFF5A300FFF8A900FFFDB200FFFD
      B200FFF7B300FFFAB800FFF7BC00FFFAC100FFFFC600FFFFC700FFFBC100FFFF
      C000FFFFC100FFFFC700FFFFC600FFFFC100FFFFB800FFFFB600FFFFB500FFFF
      AF00FFFFAB00FFFDA400FFF8A000FFF29C00FFF29400FFEF8A00FFE38500FFE3
      8300FFE27900FFDF7400FFD27000FBBD6300F4B65D00F8B76000E3AC6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000D4002B00EC001300FC000301FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF0101000000000000000000000000FFDD
      B000FFDC9D00FFCF8400FFD48D00FFD59000FFD79200FFD99600FFDE9D00FFDD
      9F00FFDBA200FFDFA700FFE1A400FFE2A900FFE3A700FFE4AB00FFE4A800FFDE
      A900FFE2A500FFDEA500FFDBA200FFDCA000FFD6A100FFDBA000FFD89B00FFD1
      9700FFCF9000FFD28E00FFCF8C00FFCD8500FFCA8200FFC87B00FFC47900FFC5
      7600FFC26F00FFC26A00FCBB6800F7BA6500F5B86000FBBB6100E3AC6300FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000094006B00AC005300D8002700F0
      000F01FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF0101000000000000000000000000FFE1
      B500FFE5A900FFD78900FFDD9200FFDC9700FFE09C00FFDF9E00FFE4A000FFE3
      A700FFE7AC00FFEAAF00FFE8AF00FFE9AF00FFEAAF00FFE9AE00FFE9AC00FFE6
      A900FFE9A200FFE39F00FFE19700FFE09800FFDF9300FFDC9300FFDD9100FFDC
      8F00FFDE9300FFDB9300FFDA8A00FFD58500FFD78000FFD27E00FFD47700FFD2
      7700FFCF7300FFCD6A00FFC96B00FEC56500FBC36400FFC56800EBB87000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00105210BD007C0083008A007500A2
      005D00CC003300E8001700FA000501FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF0101000000000000000000000000FBDE
      B800FCD79D00FED59B00FFDA9E00FCDEA900FFE3AD00FEE3B500FEE6BA00FFE9
      BE00FFEBC500FFEECA00FFEFCE00FFF5D000FFF5DA00FFF9E900FFFFF400FFFF
      FE00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFA00FEFAE900FEF6
      E200FDF2CD00FFE6C200FFEBBE00FFE5B400FFE4AC00FFDFAC00FFDDA400FFD9
      9B00FFD39200FFCF8A00FFC98200FBC77D00F8BE7A00FFC37E00DA994A00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00394739F10468049B0080007F0082
      007D008E007100A6005900CE003100EA001500FC000301FF010101FF010101FF
      010101FF010101FF010101FF010101FF01010000000000000000000000000000
      0000E19D4600E9A65200ECA95100EFAB5600F4B15700FAB45900FEBA5F00FFBB
      5F00FFBF6200FFBF6500FFC06800FFC26800FFC36700FFBF6500FFC16300FFBB
      6100FFBD5D00FFBA5400FFBA5000FFBB5200FFB44D00FFB34800FEB14A00F9AD
      4800EFA94700EFA34800E69C4000E4994100DE974000D78F3500D48B3900CD86
      3000C77E2D00C5782E00C0732A00BF712200BA6A1A00BB6B1E00AF754D00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005F5F5FFF051905EB0080007F007E
      00810080007F0080007F00880077009A006500C2003D00E0001F00F8000700FC
      000301FF010101FF010101FF010101FF01010000000000000000000000000000
      0000E7A24800F0B35A00F3B35A00F9BA5D00FBBE6100FEC36800FFC66D00FFC9
      7200FFCB7900FFCD7D00FFCF7F00FFCE7E00FFD28500FFCD8700FFD58500FFD0
      8700FFD48300FFCD8200FFCD7C00FFCE7E00FFCC7500FFCA7500FFC66900FEC4
      6300FBBE6200F6B95A00F2B45700F0B05300EAA85000E8A24B00E29A4700DD93
      3F00D9903C00D5893300D0822E00CA7D2900C87A2700CB762300DCC2AF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00323232FF010F01F1005800A71175
      0D99097A068D0080007F0080007F0080007F008A0075009C006300C4003B00E4
      001B00FA000501FF010101FF010101FF01010000000000000000000000000000
      0000EAA04600F3BD6500F7BA6300FBC06800FFC46D00FFC87300FFCB7C00FFCE
      7E00FFD18300FFD38700FFD58B00FFD68E00FFDB9300FFD89200FFDC9600FFD8
      9200FFDA9100FFD69100FFD68D00FFD18600FFCF7F00FFCD7800FFCA7700FFCA
      7500FFC67100FBC06B00F7BA6400F3B55F00EEAF5900EAA95400E6A35100E19D
      4900DD994300D8904000D38A3800CF843200CD823000BC721C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00050505FF000200FD1F1C16FF7064
      4DFF767053F94A6F34D31979139D037D02850080007F0080007F0181017F0888
      087F05AD055700D8002700F4000B00FC00030000000000000000000000000000
      0000F0B56E00F6BD6700FABE6600FFC56C00FFC87200FFCB7800FFCE7F00FFD1
      8500FFD48A00FFD68F00FFD99300FFDA9600FFDC9900FFDD9900FFDD9A00FFDB
      9700FFDA9100FFD68900FFD68B00FFD88F00FFD69400FFD69300FFD59000FFD0
      8C00FFCD7E00FFC67100FABF6900F6B76100F1B25B00EDAC5700E8A65200E4A0
      4C00DF9A4600DA934100D58D3A00D2863600D3883200B0681500FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00343230FF000200FD241F16FF6B62
      4BFD9A927CFF8B806AFF606444F1316F22BB0080007F01770189204820D7344C
      34E7264A26DB0981098700BC004300E2001D0000000000000000000000000000
      0000FBEBD800F8BC6600FFC46E00FFC77000FFCA7700FFCE7E00FFD18500FFD4
      8B00FFD99200FFDA9700FFDD9C00FFDD9B00FFDE9900FFDE9700FFE19900FFDF
      A200FFE5B100FFE5B400FFECB700FFE5B700FFE2AD00FFDCA300FFD89C00FFD4
      8E00FFD08400FFCD7B00FFC77200F8BD6700F4B65F00EFAF5A00EAA95500E6A3
      4D00E19C4900DC964300D78F3D00D28A3800D6873700CA956100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006C6660FF020202FF4E432FFF5649
      34FF625742FF7C725EFF908874FF8F8371FF888D71ED516542E3292827FF5D5D
      5DFF919191FF304C30E300C6003900E0001F0000000000000000000000000000
      000000000000FABB6100FFC87100FFC97400FFCE7C00FFCF8400FFD38800FFD6
      8C00FFD78C00FFDA8F00FFDE9700FFE3A100FFE7B300FFECCA00FFF2D100FFEF
      D200FFF5CD00FFEEC900FFE9BD00FFE6B500FFE3AE00FFE0A600FFDB9E00FFD7
      9500FFD38C00FFCE8200FFC97800FBC26F00F6BA6500F1B15C00ECAA5700E7A5
      5100E39E4B00DE984500D8913E00D58E3A00D1863400EDDDD000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00666354FF193510FD48492AFF584D
      35FD5B4E38FF5C503AFF635A44FD7F7261FF998D7EFDA59689FF4D4C48FD6161
      61FF7E807EFD3C3E3CFD01E7011900FC00030000000000000000000000000000
      000000000000FCB95A00FFCB7500FFC77400FFC97300FFCB7500FFD37F00FFD8
      9400FFE1A700FFE9BE00FFF4D600FFF2DD00FFF5DF00FFF8DB00FFF4D700FFF2
      D100FFF0CB00FFEEC800FFECC300FFE9BC00FFE6B500FFE3AD00FFDFA500FFDB
      9D00FFD69300FFD18900FFCD7F00FCC97600F8BF6D00F3B76300EEAF5800E9A7
      5000E4A04C00DF9A4600DA934000D8903E00CA7C2900FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00617F53FF05840CFF0A5F02FF165B
      0AFF34551EFF47532BFF5A5138FF60533DFF665944FF766856FF45413BFF3736
      35FF404040FF161616FF51A9439F27E4213F0000000000000000000000000000
      000000000000FEB45800FFC86F00FFCC7800FFD99600FFE2AF00FFEED400FFF8
      E800FFFAE900FFF7E700FFF6DF00FFF6E000FFF6DE00FFF8DD00FFF5DB00FFF7
      D800FFF3D700FFF1D300FFEFCC00FFEEC500FFEBBE00FFE8BA00FFE4AE00FFDF
      A600FFDBA000FFD79200FFD58B00FFCB7F00FAC47600F5BC6C00F2B46100EAAB
      5700E9A44E00E19E4A00DB964500DB964200C5792200FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00648257FF04820BFD096502FF0767
      02FD086B04FF0F6B0AFF206915FD395E25FF5A5438FD655742FF5D543FFD554C
      3DFF2D2B23FD060505FF8F8377FD6EBA5CA90000000000000000000000000000
      000000000000FFD6A400FFE8C000FFF5E100FFFBF200FFF7EB00FFF7E300FFF2
      DE00FFF2DA00FFF6E000FFF6E000FFF6DE00FFF7E400FFF9E100FFF8E200FFFA
      DD00FFF9DE00FFF4D600FFF3D400FFF0CC00FFF0C400FFE8BF00FFE4B400FFE0
      AC00FFDBA000FFDC9800FFD48F00FFD08500FCC97700F8C07100F2B76600EBAD
      5D00E9A35300E09E4700DB974200DC924100CD915600FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0068875DFF05820CFF086B04FF086D
      04FF077006FF067506FF067C07FF048108FF08830CFF1F7417FF44652DFF5860
      3BFF6A5E47FF665B46FF7B6E5BFF5BAB48A70000000000000000000000000000
      000000000000FFF6EB00FFCE8E00FFD39700FFD59900FFD79E00FFDAA100FFDF
      AA00FFE4B000FFE5B900FFEABF00FFEFC500FFF1CD00FFF3CF00FFF5D400FFF3
      D200FFF1CC00FFEEC400FFEBC000FFE5B500FFE2B000FFDEA700FFD8A000FFD5
      9600FFCF8B00FFCA8600FFC77600FFC17000FABC6C00F4B66900EFB06500EBAC
      6100E5A65C00DF9E5700D79B5100CC863900F1E1D100FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006D8D64FF03820AFD077105FF0673
      05FD067507FF057A08FF048007FD04840AFF028A09FD048E0BFF078F0CFD1588
      14FF2E7B22FD4F6535FF6D6049FD509338B50000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0001FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010110F6101987C285C38F8F8FFF8887
      87FF777777FF686867FF61605FFF63605DFF696562FF736E6AFF86817CFFA198
      91FF66605BFF555352FF2E2C2BFF191918FF68885FFF04820BFF067807FF0679
      07FF067D08FF057F09FF048509FF04890AFF048D0BFF05910CFF05960CFF069A
      0DFF069F0DFF06A30DFF149713F917C3107501FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FD01036AD9688F9D9C9CFF9D9E
      9CFD8E8F8FFF828381FD7A7979FF797776FF7A7975FD797773FD716D69FFA29E
      96FD7F756CFF464542FD494848FF3C3E3CFD67885EFF028309FD057E08FF0480
      08FD048309FF04850AFF028909FD048D0BFF03900AFD05940CFF04980BFD069B
      0DFF05A10CFD07A50EFF06AC0DF502E6044B01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010100FC000300DA002500F4000B01FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010117F21623B6BFB5F5B0AF
      AFFFA9A9A9FF9F9E9DFF979593FF9D9A98FFAAA5A3FFB9B4AFFFD7D2CEFFD8D3
      CEFFB6ACA4FFA2978DFF6C645EFF5A5551FF6D8E60FF04850AFF04860AFF0487
      0AFF05890BFF048C0BFF048D0BFF05900CFF05940CFF05970CFF069B0DFF069F
      0DFF07A40EFF07A70EFF06AF0DF501E7034B01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010100FC000300F8000700F2
      000D00E6001900D8002700C6003900BE0041008C007300AA005500D4002B00F2
      000D01FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010168D7668FB5B9
      ABF5BBB3ADFFBFB7B0FFC9C0B9FFCAC2BBFFCBC5BDFDCEC8C1FDD5CFCBFFD7D4
      CEFDDDD8D6FFD7D3CEFDCCC4BFFFB6ABA2FD5B864FFF02870AFD048B0BFF038C
      0AFD048E0BFF05900CFF03920AFD05950CFF04970BFD069B0DFF059E0CFD07A2
      0EFF05A60CFD08AA0FFF06B10DF502E7044B01FF010101FF010101FF010101FF
      010101FF010101FF010100F8000700F2000D00E4001B00D6002900C0003F00B0
      004F009E00610092006D077B078B0579058B115511BB0082007D008A007500A6
      005900CE003100F0000F00FC000301FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF01010BF8
      0A113DDB365D6ACA5E9992C284C7A8BE99E1AEBBA1F7A9B49EFF9CB195FF8FAD
      8AFF71A16FFF549755FF2E8931FF0F8014FF038409FF058D0BFF05900CFF0591
      0CFF05920CFF05950CFF05960CFF06990DFF069C0DFF069E0DFF06A20DFF07A5
      0EFF07A90EFF08AD0FFF07B50EF502E8044B01FF010101FF010100F8000700E8
      001700D4002B00C4003B00AE0051009E00610090006F008800770082007D007E
      0081085808AF2A3A2AEF4A4A4AFF4A4A4AFF3D3F3DFD02700291007E00810080
      007F0088007700A0005F00CA003500EC001300FC000301FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010102FD010313F4111D25EC22372FB72FC1208C23FF128C16FF078D
      0EFF05910BFF05950CFF06970CFF06980DFF05950CFF05920CFF05950CFF0596
      0CFF05970CFF06990DFF069B0DFF069D0DFF06A00DFF07A30EFF07A60EFF07A9
      0EFF08AC0FFF08B00FFF08B60FF502E9044B01FF010101FF010100EC001300C6
      00390393036F0F730F9B0476048D0082007D137E109334832CAF568343CD4A75
      34CD0D200BEB282828FF5C5C5CFF939593FD626262FF061806ED0080007F007E
      0081007E00810080007F00860079009C006300C4003B00E8001700FA000501FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010104C40AAF06AB0DFD08AA0FFF06A8
      0DFD07A50EFF05A20CFD069E0DFF049B0BFD05970CFF03940AFD069A0DFF049B
      0BFD069D0DFF069E0DFF05A00CFD06A20DFF05A50CFD07A60EFF06AA0DFD08AC
      0FFF07B10EFD09B410FF07B70EF502E9044B01FF010101FF010103F3030F1E86
      1B9753544FFD71716DFF8B9084F9A2AD91F3BAB5A0FFAAA48EFF938974FF7C6F
      59FF766B5FFF4E4B48FF666666FF7C7C7CFF2F2F2FFF011101EF005800A7137A
      0F97097B078D0080007F007E00810080007F008600790098006700BE004100E4
      001B00FA000501FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010105C70AAF08AE0FFF08AD0FFF08AA
      0FFF07A60EFF06A30DFF06A00DFF059E0CFF07A30EFF07A90FFF07A50EFF06A0
      0DFF07A00DFF07A20EFF07A40EFF07A60EFF07A80EFF08AB0FFF08AE0FFF08B1
      0FFF09B410FF09B610FF08B80FF502E9044B0EFA0C133AEB334D72D0649FA0B1
      96EDD4D4D1FFE3E3DFFFCAC7BFFFB3AEA0FFABA499FF999188FF706F8BFF6764
      81FF92877BFF766D66FF434343FF555555FF070707FF000000FF13120EFF7B6E
      55FF7B7055FD466D31D1127D0E93007E0081007E00810080007F0084007B0191
      016F00B6004900E0001F00F8000701FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010104D6078707BB0DE709B710FF09BA
      11FD0BBF13FF0BC413FD0DCB15FF0CCF15FD0ECF16FF0CCF15FD0ECF16FF0CCA
      14FD0BBF13FF09B711FF07B10FFD07AE0FFF06AD0DFD08AF0FFF07B10EFD09B4
      10FF07B50EFD09B610FF07B70EF502E8044B70D56299BAB6A1FFBAB5A2FFBAB7
      A7FD9F9A90FF8C887EFD8A8583FF706E6DFF774F2EFD9F632CFD5A4C7BFF4D50
      A8FD8B8277FFA9A095FD474543FF191B19FD353331FF000000FF1C1811FF7468
      51FFA29A84FF867C66FF6B6148FD347226BD017E00810175018B1E441ED94246
      42FB303C30F3067E068700B6004900E2001D01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010100F9011302EE043F05E5097308DA
      0DB10CCE14F50DCF16FF0DD117FF0ED117FF0ED117FF0ED017FF0ED017FF0ED0
      16FF0ECF16FF0ECF16FF0ECB16FF0CC715FF0BC313FF0ABE12FF09B810FF09B6
      10FF08B50FFF09B610FF08B80FF502E9044B4EC144898D877DFF79695BFF7572
      6BFD585654FF535452FD5F5E5EFF9B9794FFB2A18FFDB9A897FDAAA1ACFF7E7C
      8FFD837A6EFF9F998FFDBAB6B4FF858481FD6F6963FF000000FF4E4330FF564A
      35FF60543FFF7E7661FF97907BFF958977FF8D8E76F14E6741DF252424FF5D5D
      5DFFA0A1A1FF1F3D1FE100C2003D00E2001D01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010100FC000902F1043B06E10A8709DA0EB50BD413DD0CD015F70ED117FF0CD2
      15FD0ED117FF0ED117FF0CD115FD0ED116FF0CD016FD0ED017FF0DCF15FD0ECC
      15FF0AC513FD09BF11F707C10DD902EC03411BC335558D6859FBAF845EFF8D84
      7DFF75726FFF94908EFFB5B1ADFFD4CFCBFFDCD7D3FFDCD7D4FFD0CBC7FF968F
      89FF837B71FF857C73FF9A9189FFAAA29BFF676255FF19340FFF474A2AFF5A4C
      37FF5C4F39FF5C4F39FF574C39FF7F7160FF9B8D7FFFA69689FF54514EFF6060
      60FF808080FF3C3C3CFF02E8011901FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010100FB010F02F3043303ED065307E10C950AD5
      11CF0CCE15FD0ED117FF0DD016FF0ECF16FF0BCC14F90BD012DF08D90EB506E0
      0B9304E8086903ED064F02F1033500FA010F32DA3855AFA59FFBC6BFB7FFCECB
      C3FDD7D1CCFFD7D3CCFDD8D3CDFFD7D1CDFFD3CFC8FDD2CEC7FDCEC7C4FF9690
      88FD847C72FF868077FD8B8178FF8B8277FD627C54FF03870AFF0A5F02FF175B
      0AFF33551DFF514E31FF5E513BFF61553EFF655842FF766957FF3C3935FF3838
      38FF434343FF141414FF55A946A31FEA1A3101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010100FA011502F2043902F3043501F8021F00FE000301FF010101FF010101FF
      010101FF010101FF010101FF010101FF01013BE33755C3C0B6FBD0C8C1FFD1CA
      C3FFC8C2BCFFBCB6B0FFADA8A3FFAAA4A0FF9B9591FF85807CFF8D8885FF9D94
      8DFFA79D91FF9F9487FF8D8276FF8F857BFF667F58FF03860BFF096503FF0966
      03FF086B04FF077006FF1B6912FF3A5D25FF5A5339FF655942FF685B45FF554D
      3DFF322E27FF020202FF908377FF72B960AF01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF01013BE53753B0B1A8F98D8A89FF6B6B
      67FD55524FFF54534EFD45423EFF58514CFF6C665CFD726B61FD847E79FF9D96
      8CFD88817CFF827D74FD928B84FF827C71FD69835EFF03860BFF086B05FF086C
      05FF077006FF067507FF067B08FF058109FF07840CFF217319FF45622DFF6359
      41FF6D604AFF675B47FF796D5AFF58B2479D01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010153D64C79767872FB2C2C2CFF2221
      21FF282624FF312E2CFF46403CFF534C47FF635C54FF6E665DFF837C76FFA299
      92FF5D5752FF564F4AFF4B4845FF6C6865FF6F8965FF03860BFF077106FF0773
      06FF067507FF067A08FF057F09FF04850AFF058A0BFF058F0CFF05930CFF0C90
      0FFF2B781FFF516536FF6D604AFF548D3BBF01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010140DD3B5F8DA08AEB707070FF5859
      57FD403F3FFF3C3C39FD433F3CFF494440FF555148FD615C53FD7D7771FF9E97
      8DFD635E5AFF46443FFD2F2C29FF1F1E1BFD01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010193AF8FE1919191FF8585
      85FF777777FF666565FF61605EFF62605DFF696561FF746F6AFF6E6965FFB7AF
      A7FF645E59FF585655FF2C2A2AFF111110FF698460FF03860BFF067807FF0679
      08FF067C08FF058009FF04840AFF058A0BFF048D0BFF06910DFF05960CFF079A
      0EFF069E0DFF07A30EFF129713FF1DC0146F01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF01016FE06C8D9C9C9CFFA09F
      9FFF919191FF848383FF7A7979FF797877FF7B7977FF7B7774FF66635FFFB0A9
      A3FF847A70FF413F3EFF4C4B4BFF454545FF67845FFF04870BFF057F09FF0580
      09FF05830AFF04860BFF058A0BFF048D0BFF05900CFF05940CFF06980DFF079C
      0EFF07A10EFF08A50FFF07AA0FFF02E9033F01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010100FC000300DA002500F4000B01FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010116F21523B6B9B5FBA6A6
      A6FF979696FF979696FF9B9A99FFA3A19FFFABA7A4FFB9B5B1FFD6D1CEFFD8D2
      CEFFB6ACA4FF998D82FF6D655EFF59544FFF6E8A61FF04880BFF04850AFF0488
      0BFF058A0BFF048B0BFF048E0BFF06910DFF06940DFF05970CFF079B0EFF069F
      0DFF08A30FFF07A70EFF09AC10FF01EA033F01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010100FC000300F6
      000900EE001100DE002100CA003500C0003F008C007300AA005500D4002B00F2
      000D01FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010164E06281C5C3
      BBFBCEC6C0FFC8BFB8FFC5BCB4FFC6BCB5FFCBC2BBFFD0C9C2FFD5CECAFFD9D4
      D0FFDED9D7FFDFDBDAFFCDC6C1FFB7ABA2FF5B834FFF048B0BFF048C0BFF048C
      0BFF058E0CFF05900CFF06920DFF05950CFF06980DFF079C0EFF069E0DFF07A2
      0EFF07A60EFF08AA0FFF09AE10FF02EB033F01FF010101FF010101FF010101FF
      010101FF010100FC000300FA000500F2000D00E4001B00D2002D00BE004100AA
      0055009A0065008C0073087608910676068F115511BB0082007D008A007500A6
      005900CE003100F0000F00FC000301FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF01010BF8
      0A1139DC33596ECA639DA1B791E1C3BAB3FFCAC0BBFFC4C0B7FFABB7A3FF90AB
      8BFF729E70FF529052FF308633FF0E7E12FF04820AFF058F0CFF06900DFF0691
      0DFF06930DFF05940CFF05970CFF06990DFF079C0EFF069F0DFF07A30EFF08A5
      0FFF07A90EFF09AD10FF08B10FFF01EC033F01FF010101FF010100FA000500EC
      001300DA002500C6003900B2004D009E00610090006F008800770082007D0080
      007F096109A72C382CF3454545FF3A3A3AFF3D3F3DFD02700291007E00810080
      007F0088007700A0005F00CA003500EC001300FC000301FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010110F40E1B16B518B9047F09FF05870AFF068F
      0CFF07960DFF069C0DFF079C0DFF07990EFF05960CFF06920DFF05960CFF0596
      0CFF06980DFF06990DFF079B0EFF069D0DFF06A00DFF08A30FFF08A60FFF07AA
      0EFF09AC10FF08B00FFF09B410FF01EC033F01FF010101FF010100EC001300BE
      004103910371127012A10575058F0080007F12800F913F8B35B1568141CD4972
      33CF0D1F0BED272727FF5E5E5EFFA7A7A8FF626262FF061806ED0080007F007E
      0081007E00810080007F00860079009C006300C4003B00E8001700FA000501FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010105C50AAF09AB10FF08AA0FFF07A8
      0EFF08A50FFF08A20FFF069F0DFF079B0EFF06980DFF05940CFF079A0EFF079B
      0EFF079C0EFF069E0DFF06A00DFF07A20EFF08A40FFF07A70EFF08AA0FFF09AD
      10FF08B10FFF09B310FF0AB611FF02EC043F01FF010101FF010101FF01011272
      129F464843FD66655FFF84877DFB9FAA8CF1BDB9A4FFB0AA94FF897F68FF7366
      4EFF7B7063FF484643FF656666FF7F7F80FF2F2F2FFF011101EF005800A7137A
      0F97097B078D0080007F007E00810080007F008600790098006700BE004100E4
      001B00FA000501FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010106C80AAF09AF10FF09AD10FF08AB
      0FFF07A70EFF07A30EFF06A00DFF069E0DFF07A30EFF08A90FFF07A60EFF06A0
      0DFF06A10DFF08A20FFF08A40FFF07A60EFF07A90EFF08AB0FFF09AE10FF08B1
      0FFF09B410FF0AB611FF0AB711FF02ED043F0BFB0A0F3CEB344F6CD75F93B0AF
      A4FFDEDEDAFFF0F0EFFFD8D6CEFFAEA899FFA8A396FF90887FFF81809FFF6866
      85FF91867BFF776F67FF3F3F3FFF555555FF070707FF000000FF13120EFF7B6E
      55FF7B7055FD466D31D1127D0E93007E0081007E00810080007F0084007B0191
      016F00B6004900E0001F00F8000701FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010104D2089509B410FF09B711FF0ABB
      12FF0BBF13FF0CC414FF0DCB16FF0ECF16FF0ECF16FF0ECF16FF0ECE17FF0DCA
      16FF0BC013FF09B611FF08AE0FFF08AB0FFF08AD0FFF08AF0FFF08B20FFF0AB5
      11FF0AB611FF0AB711FF0AB711FF02ED043F72D86497C3C0ABFFB4B09BFFBBB6
      A8FFB5B0A6FF8C867EFF868280FF6D6B6AFF915D2FFF9A5F30FF5B4974FF484A
      ACFF877F75FFAFA49BFF3B3A39FF1B1B1BFF353331FF000000FF1C1811FF7468
      51FFA29A84FF867C66FF6B6148FD347226BD017E00810175018B1E441ED94246
      42FB303C30F3067E068700B6004900E2001D01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101F3022B05E5086F09D9
      0EB50CCE14F30ED017FF0ED217FF0FD118FF0FD118FF0FD118FF0FD017FF0FD0
      17FF0FD017FF0FCF16FF0ECF16FF0DCB16FF0CC414FF0BBE12FF09B910FF09B6
      10FF09B610FF0AB711FF0AB711FF02ED043F49BB3C89878078FF816F62FF7571
      6EFF454342FF555453FF555555FFADA7A4FFB4A091FFA99F98FFB8B3BBFF7773
      87FF81786CFFA29A93FFCAC6C3FF817E7DFF6F6963FF000000FF4E4330FF564A
      35FF60543FFF7E7661FF97907BFF958977FF8D8E76F14E6741DF252424FF5D5D
      5DFFA0A1A1FF1F3D1FE100C2003D00E2001D01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010100FD000702F0043F06E20A8309D60FC70CCD15FB0ED117FF0ED217FF0FD2
      18FF0FD118FF0FD118FF0FD118FF0FD017FF0FD017FF0FD017FF0FCF17FF0DCD
      16FF0CC613FF0BBF12FF09B810FF02EC043F17C82F4F986451FFA27347FF8A86
      82FF6F6C69FF928D8AFFB0ACA9FFDDD9D5FFE0DCD9FFDDD8D5FFD9D4D0FF8D86
      7FFF837B72FF857C73FF989087FFA9A199FF676255FF19340FFF474A2AFF5A4C
      37FF5C4F39FF5C4F39FF574C39FF7F7160FF9B8D7FFFA69689FF54514EFF6060
      60FF808080FF3C3C3CFF02E8011901FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010100FB010F03EC054F07E00B9109D5
      11D10DCE15FD0ED117FF0ED017FF0ECE17FF0CCC14FB0AD112DD08D80EB706DF
      0B9104E5076B02EE044300F8011901FF01012AD82F4FB7B0AEFFD0CAC4FFD6D0
      CBFFDBD4D1FFDDD8D4FFD9D3CEFFD2CBC5FFD0CAC4FFD3CDC8FFD6D0CCFF8F88
      81FF857D73FF898178FF8C837AFF8E847AFF627C54FF03870AFF0A5F02FF175B
      0AFF33551DFF514E31FF5E513BFF61553EFF655842FF766957FF3C3935FF3838
      38FF434343FF141414FF55A946A31FEA1A3101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010100FA011302F1043D02F2043701F8021D00FE000301FF010101FF010101FF
      010101FF010101FF010101FF010101FF010131DF2D4FCEC6BFFFCEC6C0FFCDC6
      BFFFCEC5BFFFD4CDC7FFC1BCB7FFA9A4A0FF999490FF827E7AFF95918DFF958D
      85FFA99F93FF9F9486FF8D8276FF90857BFF667F58FF03860BFF096503FF0966
      03FF086B04FF077006FF1B6912FF3A5D25FF5A5339FF655942FF685B45FF554D
      3DFF322E27FF020202FF908377FF72B960AF01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010130E02C4DBEBAB7FF908D8BFF6E6C
      6AFF4F4E4CFF3E3B38FF322F2CFF58524BFF6F675EFF756C64FF8B8680FF988F
      87FF87817CFF817A73FF968E88FF80776FFF69835EFF03860BFF086B05FF086C
      05FF077006FF067507FF067B08FF058109FF07840CFF217319FF45622DFF6359
      41FF6D604AFF675B47FF796D5AFF58B2479D01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010145C53B7B838280FF292828FF2120
      20FF262423FF302D2AFF453F3BFF554F49FF625C55FF6F675FFF87807BFFA096
      8EFF5E5751FF564F4AFF4B4744FF6F6B68FF6F8965FF03860BFF077106FF0773
      06FF067507FF067A08FF057F09FF04850AFF058A0BFF058F0CFF05930CFF0C90
      0FFF2B781FFF516536FF6D604AFF548D3BBF01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF01012FE52B47A5A3A1FF777777FF5A59
      59FF424141FF403E3DFF423F3CFF494440FF554E48FF635B54FF736C67FFABA1
      99FF68645FFF433E3BFF2E2B28FF1E1C1BFF01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010193AF8FE1919191FF8585
      85FF777777FF666565FF61605EFF62605DFF696561FF746F6AFF6E6965FFB7AF
      A7FF645E59FF585655FF2C2A2AFF111110FF698460FF03860BFF067807FF0679
      08FF067C08FF058009FF04840AFF058A0BFF048D0BFF06910DFF05960CFF079A
      0EFF069E0DFF07A30EFF129713FF1DC0146F01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF01016FE06C8D9C9C9CFFA09F
      9FFF919191FF848383FF7A7979FF797877FF7B7977FF7B7774FF66635FFFB0A9
      A3FF847A70FF413F3EFF4C4B4BFF454545FF67845FFF04870BFF057F09FF0580
      09FF05830AFF04860BFF058A0BFF048D0BFF05900CFF05940CFF06980DFF079C
      0EFF07A10EFF08A50FFF07AA0FFF02E9033F01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010100FC000300F8000700F8000700F8000700F8
      000700F8000700F8000700F8000700F8000700F8000700F8000700F8000700FA
      000500FC000301FF010101FF010101FF010101FF010116F21523B6B9B5FBA6A6
      A6FF979696FF979696FF9B9A99FFA3A19FFFABA7A4FFB9B5B1FFD6D1CEFFD8D2
      CEFFB6ACA4FF998D82FF6D655EFF59544FFF6E8A61FF04880BFF04850AFF0488
      0BFF058A0BFF048B0BFF048E0BFF06910DFF06940DFF05970CFF079B0EFF069F
      0DFF08A30FFF07A70EFF09AC10FF01EA033F01FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010100FC000300F6
      000900EE001100DE002100CA003500C0003F03CD023503CD023503CD023503CD
      023503CD023503CD023503CD023503CD023503CD023503CD023503CD023503D1
      023102E1011F00F4000B01FF010101FF010101FF010101FF010164E06281C5C3
      BBFBCEC6C0FFC8BFB8FFC5BCB4FFC6BCB5FFCBC2BBFFD0C9C2FFD5CECAFFD9D4
      D0FFDED9D7FFDFDBDAFFCDC6C1FFB7ABA2FF5B834FFF048B0BFF048C0BFF048C
      0BFF058E0CFF05900CFF06920DFF05950CFF06980DFF079C0EFF069E0DFF07A2
      0EFF07A60EFF08AA0FFF09AE10FF02EB033F01FF010101FF010101FF010101FF
      010101FF010100FC000300FA000500F2000D00E4001B00D2002D00BE004100AA
      0055009A0065008C0073087608910676068F0F8226990F8226990F8226990F82
      26990F8226990F8226990F8226990F8226990F8226990F8226990F8226990D88
      1D8D06A7055D02DC022500FA000501FF010101FF010101FF010101FF01010BF8
      0A1139DC33596ECA639DA1B791E1C3BAB3FFCAC0BBFFC4C0B7FFABB7A3FF90AB
      8BFF729E70FF529052FF308633FF0E7E12FF04820AFF058F0CFF06900DFF0691
      0DFF06930DFF05940CFF05970CFF06990DFF079C0EFF069F0DFF07A30EFF08A5
      0FFF07A90EFF09AD10FF08B10FFF01EC033F01FF010101FF010100FA000500EC
      001300DA002500C6003900B2004D009E00610090006F008800770082007D0080
      007F096109A72C382CF3454545FF3A3A3AFF238FEDFF238FEDFF238FEDFF238E
      ECFF238EECFF238EECFF238EECFF238EECFF238DEBFF228DEBFF228DEBFF2A98
      F3FF239B9BCB04C5033D00F6000901FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010110F40E1B16B518B9047F09FF05870AFF068F
      0CFF07960DFF069C0DFF079C0DFF07990EFF05960CFF06920DFF05960CFF0596
      0CFF06980DFF06990DFF079B0EFF069D0DFF06A00DFF08A30FFF08A60FFF07AA
      0EFF09AC10FF08B00FFF09B410FF01EC033F01FF010101FF010100EC001300BE
      004103910371127012A10575058F0080007F12800F913F8B35B1568141CD4972
      33CF0D1F0BED272727FF5E5E5EFFA7A7A8FF1079E0FF1079DFFF0F78DFFF0E78
      DFFF137BDFFF137ADFFF137ADFFF1379DEFF1279DEFF1278DEFF0C74DCFF0D74
      DCFF2594F1FF0CC0255900F4000B01FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010105C50AAF09AB10FF08AA0FFF07A8
      0EFF08A50FFF08A20FFF069F0DFF079B0EFF06980DFF05940CFF079A0EFF079B
      0EFF079C0EFF069E0DFF06A00DFF07A20EFF08A40FFF07A70EFF08AA0FFF09AD
      10FF08B10FFF09B310FF0AB611FF02EC043F01FF010101FF010101FF01011272
      129F464843FD66655FFF84877DFB9FAA8CF1BDB9A4FFB0AA94FF897F68FF7366
      4EFF7B7063FF484643FF656666FF7F7F80FF1486EAFF1386EAFF1486EAFF4FA2
      E5FF6EB6E8FF6FB7E9FF6FB6E9FF6FB6E9FF6EB6E9FF6DB6E8FF4A9FE4FF1183
      E8FF1B8DEEFF0ECE395700F8000701FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010106C80AAF09AF10FF09AD10FF08AB
      0FFF07A70EFF07A30EFF06A00DFF069E0DFF07A30EFF08A90FFF07A60EFF06A0
      0DFF06A10DFF08A20FFF08A40FFF07A60EFF07A90EFF08AB0FFF09AE10FF08B1
      0FFF09B410FF0AB611FF0AB711FF02ED043F0BFB0A0F3CEB344F6CD75F93B0AF
      A4FFDEDEDAFFF0F0EFFFD8D6CEFFAEA899FFA8A396FF90887FFF81809FFF6866
      85FF91867BFF776F67FF3F3F3FFF555555FF1793F4FF1792F4FF2198F4FF5EAC
      E5FF80D1FCFF80D1FCFF80D1FCFF80D1FCFF80D1FCFF80D1FCFF5DACE5FF1C94
      F3FF1B95F5FF0EDF444D00FC000301FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010104D2089509B410FF09B711FF0ABB
      12FF0BBF13FF0CC414FF0DCB16FF0ECF16FF0ECF16FF0ECF16FF0ECE17FF0DCA
      16FF0BC013FF09B611FF08AE0FFF08AB0FFF08AD0FFF08AF0FFF08B20FFF0AB5
      11FF0AB611FF0AB711FF0AB711FF02ED043F72D86497C3C0ABFFB4B09BFFBBB6
      A8FFB5B0A6FF8C867EFF868280FF6D6B6AFF915D2FFF9A5F30FF5B4974FF484A
      ACFF877F75FFAFA49BFF3B3A39FF1B1B1BFF1B9DFBFF1B9DFBFF1A9DFBFF3097
      E8FF399CE9FF399BE9FF399BE9FF399BE9FF399BE9FF399BE9FF2E96E8FF179B
      FBFF1C9DFBFF10E2525301FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101F3022B05E5086F09D9
      0EB50CCE14F30ED017FF0ED217FF0FD118FF0FD118FF0FD118FF0FD017FF0FD0
      17FF0FD017FF0FCF16FF0ECF16FF0DCB16FF0CC414FF0BBE12FF09B910FF09B6
      10FF09B610FF0AB711FF0AB711FF02ED043F49BB3C89878078FF816F62FF7571
      6EFF454342FF555453FF555555FFADA7A4FFB4A091FFA99F98FFB8B3BBFF7773
      87FF81786CFFA29A93FFCAC6C3FF817E7DFF25A5FEFF25A5FEFF25A5FEFF24A5
      FEFF24A5FEFF24A5FEFF24A4FDFF24A4FDFF23A4FDFF23A4FDFF23A4FDFF22A3
      FDFF24A4FDFF13DE5E5F01FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010100FD000702F0043F06E20A8309D60FC70CCD15FB0ED117FF0ED217FF0FD2
      18FF0FD118FF0FD118FF0FD118FF0FD017FF0FD017FF0FD017FF0FCF17FF0DCD
      16FF0CC613FF0BBF12FF09B810FF02EC043F17C82F4F986451FFA27347FF8A86
      82FF6F6C69FF928D8AFFB0ACA9FFDDD9D5FFE0DCD9FFDDD8D5FFD9D4D0FF8D86
      7FFF837B72FF857C73FF989087FFA9A199FF30ABFEFF30ABFEFF30ABFEFF30AB
      FEFF30ABFEFF30ABFEFF2FABFEFF2FABFEFF2FABFEFF2FABFEFF2FABFEFF2FAB
      FEFF32ABFEFF18DA6E6F01FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010100FB010F03EC054F07E00B9109D5
      11D10DCE15FD0ED117FF0ED017FF0ECE17FF0CCC14FB0AD112DD08D80EB706DF
      0B9104E5076B02EE044300F8011901FF01012AD82F4FB7B0AEFFD0CAC4FFD6D0
      CBFFDBD4D1FFDDD8D4FFD9D3CEFFD2CBC5FFD0CAC4FFD3CDC8FFD6D0CCFF8F88
      81FF857D73FF898178FF8C837AFF8E847AFF3AB0FEFF3AB0FEFF3AB0FEFF3AB0
      FEFF3AB0FEFF3AB0FEFF3AB0FEFF3AB1FEFF3AB1FEFF3AB1FEFF3AB1FEFF3AB1
      FEFF3AB0FEFF1CD67C7D01FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010100FA011302F1043D02F2043701F8021D00FE000301FF010101FF010101FF
      010101FF010101FF010101FF010101FF010131DF2D4FCEC6BFFFCEC6C0FFCDC6
      BFFFCEC5BFFFD4CDC7FFC1BCB7FFA9A4A0FF999490FF827E7AFF95918DFF958D
      85FFA99F93FF9F9486FF8D8276FF90857BFF44B6FDFF43B6FDFF42B5FDFF42B5
      FEFF42B5FEFF42B5FEFF43B5FEFF43B5FEFF43B6FEFF43B6FEFF43B6FEFF43B6
      FEFF43B6FEFF21D5888901FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010130E02C4DBEBAB7FF908D8BFF6E6C
      6AFF4F4E4CFF3E3B38FF322F2CFF58524BFF6F675EFF756C64FF8B8680FF988F
      87FF87817CFF817A73FF968E88FF80776FFF53C0FDFF53C0FDFF53C0FDFF52BF
      FDFF50BEFDFF4EBCFDFF4ABBFDFF4ABAFEFF4ABAFEFF4ABAFEFF4ABBFEFF4ABB
      FEFF4CBCFEFF27D2969701FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010145C53B7B838280FF292828FF2120
      20FF262423FF302D2AFF453F3BFF554F49FF625C55FF6F675FFF87807BFFA096
      8EFF5E5751FF564F4AFF4B4744FF6F6B68FF5FC6FCFF5FC6FCFF5FC6FCFF5FC6
      FCFF5FC6FCFF5FC6FCFF5FC6FCFF5BC3FCFF54C0FDFF50BEFDFF50BEFEFF50BE
      FEFF56C1FDFF2ED1A3A501FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF01012FE52B47A5A3A1FF777777FF5A59
      59FF424141FF403E3DFF423F3CFF494440FF554E48FF635B54FF736C67FFABA1
      99FF68645FFF433E3BFF2E2B28FF1E1C1BFF85FF858583FF83837DFF7D7D75FF
      757567FF676757FF575743FF434331FF31311BFF1B1B09FF090901FF010101FF
      010101FF010101FF010101FF010101FF010101FF01010CF12E2F5FC5FCFF69CA
      FCFF68C9FCFF68CAFCFF68CAFCFF68CAFCFF68CAFCFF68CAFCFF69CAFCFF69CA
      FCFF69CAFCFF69CAFCFF69CAFCFF6ACAFCFF6ACBFCFF6ACBFCFF6ACBFCFF6ACB
      FCFF6BCBFCFF6BCBFCFF6BCBFCFF6BCBFCFF6BCBFCFF68CAFCFF5CC4FDFF53C0
      FEFF5FC6FCFF38D0B1B301FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010168CD729F68CC72A164CB6F9D5DCC
      669352C15C9547BB518F37B841812BB8337519B323690BC1134D01FF010101FF
      010101FF010101FF010101FF010101FF010101FF010110EE3C3D6ECDFDFF71CF
      FDFF71CFFDFF71CFFDFF71CFFCFF72CFFCFF72CFFCFF72CFFCFF72CFFCFF72CF
      FCFF73CFFCFF73CFFCFF73CFFCFF73CFFCFF73D0FCFF74D0FCFF74D0FCFF74D0
      FCFF74D0FCFF75D0FCFF75D0FCFF75D0FDFF75D1FDFF75D1FDFF75D1FDFF6ECD
      FDFF6BCCFDFF43D2BDBF01FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF0101C47A24FFC27821FFC07620FFBD73
      1BFFBC6F1AFFBA6C16FFB66813FFB46411FFB05F0CFFAC5809FF748F05AB01FF
      010101FF010101FF010101FF010101FF010101FF010115EB4A4B80D6FDFF7AD3
      FEFF7AD3FEFF7AD3FEFF7AD3FEFF7AD3FEFF7AD3FDFF7AD4FDFF7AD4FDFF7AD4
      FDFF7BD4FDFF7BD3FDFF7BD4FDFF7BD4FDFF7CD4FDFF7CD4FDFF7CD4FDFF7CD4
      FDFF7DD4FDFF7DD4FDFF7DD4FDFF7DD5FDFF7ED5FDFF7ED5FDFF7ED5FDFF7ED5
      FDFF85D8FDFF52D3CDCF01FF010101FF010101FF010101FF010101FF010100FC
      000300FA000500F8000700F8000700F8000700F8000700F8000700F8000700F8
      000700F8000700F8000700F8000700F80007E39C46FFE29A43FFE09640FFDE93
      3DFFDB8F3AFFD68C36FFD48631FFD1822DFFCC7D28FFC87620FF798F01AB01FF
      010101FF010101FF010101FF010101FF010101FF010119E8565794E0FDFF82D8
      FDFF82D8FDFF82D8FDFF82D8FDFF82D8FDFF82D8FDFF82D8FDFF82D8FDFF82D8
      FDFF82D7FDFF82D7FDFF82D8FDFF82D8FDFF83D8FDFF83D8FDFF83D8FDFF84D8
      FDFF84D8FDFF84D8FDFF84D8FDFF84D8FDFF85D9FDFF85D9FDFF85D9FDFF85D9
      FDFF8FDDFDFF63D6DBDD01FF010101FF010101FF010101FF010100F4000B02E1
      011F03D1023103CD023503CD023503CD023503CD023503CD023503CD023503CD
      023503CD023503CD023503CD023503CD0235E6A14AFFE5A047FFE29D47FFE09B
      45FFDC9541FFD9913EFFD58C39FFD18835FFCD822FFFC97B27FF809806AB01FF
      010101FF010101FF010101FF010101FF010101FF01011EE56465A8E9FDFF8ADB
      FDFF8ADBFDFF8ADBFDFF8ADBFDFF8ADBFDFF8ADBFDFF8ADBFDFF8ADBFDFF8ADB
      FDFF8ADBFDFF8ADBFDFF8ADBFDFF8ADBFDFF8ADBFDFF8ADBFDFF8ADBFDFF8ADB
      FDFF8ADBFDFF8ADCFDFF8ADCFDFF8ADCFDFF8BDCFDFF8BDCFDFF8BDCFDFF8CDC
      FDFF96E1FDFF79DCE7E901FF010101FF010101FF010100FA000502DC022507A9
      0A5F0E8B258F0F8226990F8226990F8226990F8226990F8226990F8226990F82
      26990F8226990F8226990F8226990F822699EC9E3AFFEA9D38FFE69D42FFE5A2
      4AFFE19D48FFDE9845FFD99340FFD68E3BFFD18735FFCF832FFF957014E31856
      00AB1ABB085301FF010101FF010101FF010101FF01012DE77273B6EFFDFF8FDE
      FDFF8FDEFDFF8FDEFDFF8EDEFDFF8EDEFDFF8EDEFDFF8EDEFDFF8EDEFDFF8EDE
      FDFF8EDEFDFF8EDEFDFF8EDEFDFF8EDEFDFF8EDEFDFF8EDEFDFF8EDEFDFF8EDE
      FDFF8EDEFDFF8EDEFDFF8EDEFDFF8EDEFDFF8EDEFDFF8EDEFDFF8EDEFDFF8EDE
      FDFF9BE4FDFF91E0F5F701FF010101FF010101FF010100F600090CC52D592DA2
      E3F12794F0FF2592EFFF2591EFFF2591EEFF2591EEFF2591EEFF2491EEFF2491
      EEFF2490EEFF2490EDFF2490EDFF2390EDFFB5B5B6FFBBC0C7FFE9C99DFFECA8
      51FFE7A550FFE4A04CFFDF9A47FFDC9542FFD78E3CFFD38A38FFCE7D2AFFD075
      17FF86A014AB01FF010101FF010101FF010101FF010130E57C7DC9F7FDFFA2E7
      FDFF91E0FDFF91E0FDFF91E0FDFF91E0FDFF91E0FDFF91E0FDFF91E0FDFF91E0
      FDFF91E0FDFF91E0FDFF91E0FDFF91E0FDFF91E0FDFF91E0FDFF91E0FDFF91E0
      FDFF91E0FDFF91E0FDFF91E0FDFF91E0FDFF91E0FDFF91E0FDFF91E0FDFF94E1
      FDFFB9F1FDFF96E2FBFD01FF010101FF010101FF010100F4000B20B99AAB1A86
      E9FF147FE4FF147FE4FF147EE3FF137EE3FF137DE3FF127DE2FF127CE2FF117C
      E1FF117BE1FF117BE1FF117AE0FF117AE0FF3A3C3AFF304257FFCA964BFFF1B3
      5AFFECAB56FFE8A652FFE4A04CFFE09B47FFDB9440FFD78E3DFFCC7F2EFFC271
      1FFF80A21EAB01FF010101FF010101FF010101FF010113E84B4D96E1FDFFD3FB
      FDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFA
      FDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFA
      FDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFAFDFFCFFAFDFFD1FB
      FDFFC6F6FDFF52CFCBD101FF010101FF010101FF010100F800071FB6ACB7188B
      EDFF188BEDFF178AEDFF178AEDFF178AEDFF1789ECFF1689ECFF1688ECFF1688
      ECFF1588EBFF1587EBFF1487EBFF1487EBFFECF3FBFFC2DBEEFFB68032FFF5BB
      63FFF3B35EFFEEAE59FFE9A753FFE5A14DFFDF9A47FFDB9742FFCF8433FFC676
      24FF82A622AB01FF010101FF010101FF010101FF010100FD020322B7C6CD37A8
      F2FF3FAAF1FF3BA5ECFF3CA6ECFF3CA5EBFF3CA3EAFF3CA2E9FF3CA1E8FF3CA0
      E7FF3C9FE6FF3C9EE5FF3C9DE4FF3C9CE4FF3C9BE3FF3C9AE2FF3C99E1FF3C98
      E0FF3C97DFFF3C96DEFF3C96DDFF3C95DCFF3C95DCFF3C95DCFF3A93DAFF3F98
      DFFF3696E2FF06CF4E5B01FF010101FF010101FF010100FC000321B7BCC11C96
      F5FF1B96F5FF1B96F5FF1B95F5FF1A95F5FF1A95F5FF1A94F5FF1994F5FF1994
      F4FF1994F4FF1993F4FF1893F4FF1893F4FF776852FF60574EFFA37B39FFFDC0
      68FFF6B963FFF2B45EFFEDAD57FFE9A752FFE39F4BFFDE9947FFD28B38FFC97B
      2AFF86A926AB01FF010101FF010101FF010101FF010101FF01013ED2BDBF5B88
      A1FFB4B4B4FF959595FFD4D4D4FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3
      D3FFD3D3D3FFD3D3D3FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2D2FFD2D2
      D2FFD2D2D2FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FF939393FF939393FF9191
      91FF5EA0CCFF07E04B4D01FF010101FF010101FF010101FF010123B5CACD209F
      FCFF1F9FFCFF1F9FFCFF1E9FFCFF1E9EFBFF1E9EFBFF1D9EFBFF1D9EFBFF1D9E
      FBFF1D9EFBFF1C9EFBFF1C9EFBFF1B9EFBFFFFE38CFFFFDF84FFFFD178FFFFC7
      70FFFDC26AFFF7BB64FFF1B35DFFEDAC58FFE7A551FFE3A14CFFD7903BFFCC82
      2FFF88AE28AB01FF010101FF010101FF010101FF010101FF010147D8B9BB739C
      B1FF8B9599FFACB0B2FFDFDFDFFFF0F0F0FFEEEEEEFFEEEEEEFFEDEDEDFFEDED
      EDFFEDEDEDFFEDEDEDFFECECECFFECECECFFECECECFFEBEBEBFFEBEBEBFFEBEB
      EBFFEBEBEBFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFA4A8ABFF788187FF959D
      A3FF77ACCCFF06DC525501FF010101FF010101FF010101FF010128B4D8D929A6
      FEFF28A6FEFF28A5FEFF28A5FEFF27A5FEFF27A5FEFF27A5FEFF27A5FEFF27A5
      FEFF26A5FEFF26A5FEFF26A5FEFF25A5FEFFFFD892FFFFD38AFFFFCF80FFFFCA
      76FFFEC56DFFFBC069FFF4B861FFF6B459FFF7AE46FFF1A849FFDC923FFFD187
      32FF8BB12BAB01FF010101FF010101FF010101FF010101FF01010FCE757D5FC9
      FCFF53C4FEFFB4D9EDFFDDDDDDFFEEEEEEFFE8E8E8FFE9E9E9FFE8E8E8FFE6E6
      E6FFE7E7E7FFE7E7E7FFE6E6E6FFE8E8E8FFE9E9E9FFE9E9E9FFE8E8E8FFE6E6
      E6FFE5E5E5FFE2E2E2FFE0E0E0FFDEDEDEFFDDDDDDFF89C0E4FF4DB8FDFF50B9
      FDFF3BACF1F900EB212501FF010101FF010101FF010101FF010130B2E6E733AB
      FEFF32ABFEFF32ABFEFF31ABFEFF31ABFEFF31ABFEFF31ABFEFF31ABFEFF31AB
      FEFF31ABFEFF31ABFEFF31ABFEFF31ABFEFFFFDEA3FFFFDB9CFFFFD692FFFFD1
      88FFFFCB77FFFFC76FFFFCBF67FFF0AD49FF6F84A0FFC4995DFFE49C43FFD68B
      38FF8CB330AB01FF010101FF010101FF010101FF010101FF010100FD020301C9
      596503B7808FBBDAD6EFDBDBDBFFD5D5D5FFD8D8D8FFD7D7D7FFD8D8D8FFD8D8
      D8FFD5D5D5FFD5D5D5FFD5D5D5FFD4D4D4FFD3D3D3FFD3D3D3FFD5D5D5FFD8D8
      D8FFDBDBDBFFDEDEDEFFE1E1E1FFE2E2E2FF3FB68EB102B6828F02B6828F02B8
      7C8900DF323901FF010101FF010101FF010101FF010101FF010137B1F4F53AAF
      FEFF3AAFFEFF3AAFFEFF3AAFFEFF3AB0FEFF3AB0FEFF3AB0FEFF3AB0FEFF3AB0
      FEFF3AB0FEFF3AB0FEFF3AB0FEFF3AB0FEFFFFE4AFFFFFE0A6FFFFDB9CFFFFD6
      8FFFFFD086FFFFCB78FFFEC16BFFF0B14DFF9BAAB9FFCEA060FFE39C42FFD790
      3CFF8EB734AB01FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF0101D7E3D7F3EAEAEAFFE8E8E8FFE5E5E5FFE2E2E2FFE3E3E3FFE5E5
      E5FFE6E6E6FFE7E7E7FFE9E9E9FFEAEAEAFFEBEBEBFFEDEDEDFFEEEEEEFFEFEF
      EFFFF0F0F0FFF1F1F1FFF2F2F2FFF4F4F4FF2BE72B4301FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FD04053FB2FEFF41B4
      FEFF40B3FEFF41B3FDFF42B5FDFF43B6FDFF44B6FDFF44B7FDFF45B7FDFF45B7
      FDFF45B7FDFF45B8FDFF45B8FDFF44B7FDFFFFEEC8FFFFECC4FFFFE6C0FFFEE7
      BAFFFEDFA8FFFDDEA2FFFDD895FFFBD288FFF7C869FFF6BF68FFE5A454FFDE97
      41FF91B937AB01FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010111FB111532F2323F50F0505F70F0707F93EF93A3ACEAACC1C5E3
      C5E1DDE1DDFBE1E1E1FFE4E4E4FFE7E7E7FFE9E9E9FFE8E8E8FFE6E6E6FFE4E4
      E4FFE3E3E3FFE5E5E5FFE6E6E6FFE8E8E8FF1FEF1F2F01FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010104F9101147B8FDFF4FBD
      FDFF50BEFDFF53C0FDFF53C0FDFF53C0FDFF53C0FDFF53C0FDFF53C0FDFF53C0
      FDFF53C0FDFF53C0FDFF53C0FDFF53C0FDFFFFB855FFFFB854FFFFB34AFFFEB1
      46FFFEAE41FFFDAD40FFFDAA3CFFFBA738FFF7A334FFF69E2CFFED9C30FFE29F
      46FF90BC38AB01FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010101FF010101FF010101FF
      010102FE020312FA121728F2283532EE32433FE93F5557E7576F69E7698179E7
      799190E490ABA0E2A0BDADDFADCDB8DAB8DD0AFA0A0F01FF010101FF010101FF
      010101FF010101FF010101FF010101FF010101FF010108F5202151BEFDFF5FC5
      FCFF5DC5FDFF5DC5FDFF5DC5FDFF5DC5FDFF5EC6FDFF5EC6FDFF5EC6FDFF5EC6
      FDFF5EC6FCFF5EC6FCFF5FC6FCFF5FC6FCFF0000000000000000000000000000
      0000F4F4F400F9F9F90000000000000000000000000000000000000000000000
      00000000000000000000000000000000000001FF010101FF0101A9C63EB3F8BF
      6BFFECB86DFFEAE1DAFFEDA241FFF6BB68FFFCC475FFFFCC7DFFFFCF88FFFFD0
      8FFFFFD594FFFFDA9DFFFFE0ADFFFFE4B9FFFFEAC3FFFFE6C4FFFFEECCFFFFEC
      CAFFFFF1CAFFFFEEC1FFFFEEB7FFFFECA8FFFFDE8CFFDEE5D1FFE4993AFFECA4
      4EFF92BF3BAB01FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010101FF010101FF010104FE040513FF131327FF27273DFF3D3D4EFE
      4E4F61FF61616DFF6D6D7BFF7B7B81FF81810000000000000000F6F6F6007371
      6F008B867F0065DD840076E1920059C173005FC4780059C173004FB769007CBD
      8B00AEDFB90000000000000000000000000001FF010101FF0101ADCB41B3FCC5
      6FFFE8B865FFDCD1D0FFF2BD74FFF2C584FFF3C98CFFF1CD91FFF4CD93FFF1CC
      96FFEFCB97FFEDCA96FFEBC794FFE3BB8BFFFCE3A6FFFFE9B3FFFFDFABFFFFDF
      A0FFFFD89AFFFFD592FFFFD280FFEEB973FFF3C681FFB3B1C5FFE89A2FFFECA9
      50FF94C13BAB01FF010101FF010101FF010101FF010101FF010101FF010101FF
      010101FF010100DA002506B00E590CB5135915B31D6522B72B6F36C53C7342C9
      497B50C9588959C9639363CA6C9B66CB709F00000000EBEBEB00AFAFAF00A29D
      9800958F89004FDA740068D4840063B4790068B17B0073C2880074CD8B0042B1
      5E003FB35B0000000000000000000000000001FF010101FF0101B0CE44B3FFC8
      74FFDFB967FFBFACADFFFCF7DDFFF7F5E9FFF4F2E1FFF4F0DDFFF4F2DEFFF3F7
      E6FFF3FEFBFFF5FBF4FFF5FDF8FFF6FEFDFFF0E6E5FFFEFBFCFFFCFCFCFFFDFB
      FCFFFEFAF9FFFDFAF6FFFBEEE0FFEFF6EEFFFFFAE5FF847D93FFF9AD43FFEFAB
      54FF95C13DAB01FF010101FF010101FF010101FF010101FF010101FF010101FF
      0101D48E42FFD28834FFC9802BFFC67D28FFC67F29FFC77E2AFFC77E2AFFC87F
      29FFC77E29FFC67F27FFC77C27FFC67C26FFE4E4E40084848300CECBC900B9B4
      B000948E89004AE974001B803700EAB13E00E7BB3700C7B63600C0B435007DA0
      4000628D3D00FEF6E900FEFDFA000000000001FF010101FF0101B2D247B3FFCC
      79FFDBC170FF8B717AFFFFCB5DFFFFD468FFFED385FFFED899FFFFDC9CFFFFE1
      A7FFEBB86EFFFFEAABFFFFEE96FFFFFEAAFFFEFEADFFFEFCAAFFFDFAA2FFFDFB
      A0FFFEF196FFFEED8FFFFFE584FFFFE380FFEFC056FF5C4B64FFFDBE53FFF2AF
      56FF96C33FAB01FF010101FF010101FF010101FF010101FF010101FF010101FF
      0101CF822CFFDD923CFFE09740FFE29942FFE49D46FFE59E47FFE6A048FFE7A0
      48FFE7A24AFFE7A149FFE6A048FFE79E47FFD3D3D300D6D5D400DBD9D600B4B0
      AC0099928B0044B76300466D4E00F6B43D00FAC92E00FBDE1B00FDE71400FDEE
      0C00FDE81500FAD43E00F9D25C000000000001FF010101FF0101B1D44DB1FFCE
      80FFD8C77AFF523745FF583926FF9B733DFFFBDF93FFF9E8D6FFF8E9D3FFFAF0
      E9FFDB972CFFE0C47CFF8A4308FF904610FF93450DFF8E400AFF8A3F0CFF863D
      07FF803909FF7D380AFF7B3D0EFF834312FF502B21FF281C38FFFDCF66FFF7B4
      5AFF97C63FAB01FF010101FF010101FF010101FF010101FF010101FF010101FF
      0101E19C4BFFDF9943FFE19C48FFE39F4BFFE5A24DFFE7A44FFFE8A651FFE9A7
      52FFE9A752FFEAA74FFFE9A64DFFE8A64BFFF7F7F700DFDDDB00D1CECB00A9A4
      9E00918A8300CBC1BC009B948D00F8C43200F9C43200B8A15700EEE6B700DBD4
      B500ACA49600F9CB2B00F8BD44000000000001FF010101FF0101B1D853B1FFCF
      85FFF1D386FFB08957FFAA8F5EFF9D8158FFECB873FFDEB477FFDCAB6CFFE0B3
      7DFFE0AA6DFFD4A16BFFAA9E72FFAAAA77FFAAAA75FFAAAA71FFAAA96CFFAAA5
      6AFFAAA162FFAA9F60FFAA985AFFAA9254FFAA8849FFA57842FFFCC868FFF6B6
      5DFF97C642AB01FF010101FF010101FF010101FF010101FF010123C015592564
      00A9D19041FFE7A24CFFE6A44EFFE9A751FFEBAA54FFEDAC56FFEEAE58FFEFAF
      59FFF0AC4FFFF0A643FFEFA43EFFEFA238FF00000000DCDAD700CCC8C5009E99
      92008F878000C2BAB3008D867E00FDDE1E00FAD81D00F8D52200FAD81C00FAE0
      2C00F2DE4400F9CC2800F9CD36000000000001FF010101FF0101B1DC5AB1FFD4
      88FFFFD98EFFFFE79AFFFFEFA5FFFFF2ABFFFFEEAFFFFFF0B3FFFFF3B9FFFFF5
      BDFFFFF3B8FFFFF4B7FFFFF3BBFFFFF3B7FFFFF1AFFFFFF2ADFFFFEFA5FFFFEE
      9EFFFFE897FFFFE590FFFFDE83FFFFD87FFFFFD674FFFECE6EFFF7BA61FFF7B7
      5FFF97C642AB01FF010101FF010101FF010101FF010101FF01019BA026BFDF89
      2EFFE6A048FFEAA953FFEDAC56FFEFAF59FFF2B35DFFF4B65FFFF5B861FFF7B8
      60FFEDC47FFFB9BDC2FFB9B8B9FFB6B7B8FF00000000D4D2CF00C1BDBA009891
      8B00928B84008E857D0098908700A9A38E00C7C39400D3D08600D6D39200E2DF
      8700ECE97F00FBF86C00FEFA72000000000001FF010101FF0101B3E062B3FFD8
      91FFFFD991FFFFDB97FFFFDE9CFFFFE1A2FFFFE4A9FFFFE5ABFFFFE7ACFFFFE7
      ACFFFFE6AAFFFFE5A5FFFFE09EFFFFDE9AFFFFDB97FFFFDB95FFFFD891FFFFD8
      91FFFFD588FFFFD282FFFFCE7BFFFFCE77FFFFCA6FFFFEC66AFFFAC064FFFCC0
      64FF9BCC47AB01FF010101FF010101FF010101FF010101FF010190A023B9CF83
      32FFE7A44EFFEFAF5AFFF1B35CFFF4B760FFF7BA63FFF9BD66FFFBBF68FFFDC2
      69FFD0B567FF434C55FF3F3F3FFF3D3B3EFF00000000D0CDCA00BEBAB5009892
      8C00928B8400948B82007B746D009D999400B9B3AE00BDB7B100B6B1AC00E0DC
      D800E3DFDA00F0EEEC00FEFEFE000000000001FF010101FF010183DC3E89F5C4
      81FFF8CA87FFFAD08FFFFDD498FFFED89DFFFFDDA5FFFFDFAAFFFFE4AFFFFFE5
      B9FFFFE9C5FFFFE8C9FFFFE8C5FFFFE8C5FFFFE5C2FFFEE3B7FFFBDCA9FFF9D3
      9BFFF6CF91FFF4CA89FFF1C383FFEFBE7AFFECB56EFFEAAE66FFE5A75DFFE6A4
      5CFF76B2209901FF010101FF010101FF010101FF010101FF010192A727B7D489
      36FFEEAB54FFF5B761FFF8BB64FFFBBF68FFFDC36CFFFFC56FFFFFC872FFFFCB
      75FFD1B36BFFC7CDD3FFE9EFF9FFEAEEF9FF00000000D1CECB00BFBBB7009B95
      8F0098918B000AB3E90013A2D1002B9BB800349DB6005F90A10068859000818D
      8E00A6A9A50000000000000000000000000001FF010101FF01014CDF1755EAA9
      52FFF2B158FFF7B85CFFFDBF64FFFEC36AFFFFC772FFFFC976FFFFCB78FFFFC9
      7BFFFFCC79FFFFCB77FFFFC670FFFFC76EFFFFC367FFFEC061FFFABA59FFF4B3
      55FFEDAA4EFFE8A44BFFE09943FFD9903CFFD18735FFCC7F2EFFC57725FFC473
      21FF2AC4004D01FF010101FF010101FF010101FF010101FF010196AA2AB9D78F
      3CFFF2B159FFF9BE67FFFCC26AFFFEC56FFFFFC974FFFFCA78FFFFCD7CFFFFCF
      7EFFC3AA63FF6B6151FF736553FF746350FF00000000D2CFCC00C0BCB8009C96
      90009B948E0003DBFF0002E2FF0001EDFF0001EEFF0002E3FF0003D8FF000EC0
      F30023BBEF0000000000000000000000000001FF010101FF010148E1144FEAB4
      58F9F9BD65FFFEC46CFFFFCA77FFFFCE7FFFFFD286FFFFD58CFFFFD892FFFFDA
      94FFFFDB96FFFFD991FFFFD68DFFFFD48AFFFFD084FFFFCE7FFFFFCA7AFFFDC4
      6FFFF6B963FFF0B15BFFE9A853FFE3A04CFFDC9642FFD58D3BFFCF8432FFBF75
      20FF01FF010101FF010101FF010101FF010101FF010101FF010199AF2CB7DB96
      43FFF6B85FFFFEC56DFFFFC873FFFFCB79FFFFCE7FFFFFCF82FFFFD185FFFFD7
      8CFFFFDE9AFFFFE89DFFFFE797FFFFE791FF00000000D3D1CE00C2BEBA009D98
      92009A958E0006BEFF0005C6FE0072A0AB00B1E2EA00C2E1E400BEC1C40004C4
      FE000EBDFE0000000000000000000000000001FF010101FF01011EF20721C3C5
      4BCBFDC36CFFFFC873FFFFCE7EFFFFD287FFFFD791FFFFDA97FFFFDC99FFFFDD
      98FFFFDF9BFFFFE0A3FFFFE1A6FFFFE2A9FFFFDCA2FFFFD899FFFFD189FFFFCC
      7BFFFBC16BFFF4B660FFECAC57FFE6A44FFFDE9946FFD8903EFFD38836FF9F86
      19D701FF010101FF010101FF010101FF010101FF010101FF01019CB22FB7DE9C
      48FFFABE64FFFFC974FFFFCC7AFFFFCF80FFFFD082FFFFD58CFFFFDEA6FFFFE1
      AAFFFFE0A6FFFFDFA4FFFFDDA0FFFFDA9AFF00000000D5D2CF00C3BFBB009F99
      93009C958F0000D0FF0000CDFE0000D4FE0001D7FE0002D8FE0002D4FE0003CE
      FE000CCFFE0000000000000000000000000001FF010101FF010101FF0101A7D0
      3FABFFC872FFFFCB77FFFFCF81FFFFD58BFFFFDB98FFFFE3A7FFFFE9B9FFFFEE
      CBFFFFF1D2FFFFF2CEFFFFECC5FFFFE8B9FFFFE3ADFFFFDDA3FFFFD694FFFFD0
      87FFFDC877FFF8BE6AFFF0B05CFFE9A752FFE19C49FFDA9440FFD38A37FF53C6
      116B01FF010101FF010101FF010101FF010101FF010101FF01019EB731B5E4A2
      4DFFFEC36AFFFFCD7BFFFFCE7DFFFFD38AFFFFE2ADFFFFE6BFFFFFE8B8FFFFE7
      B8FFFFE6B6FFFFE6B4FFFFE4B0FFFFE2ABFF00000000D6D3D100C4C0BD009F99
      9300BCB6B1006CDBEF006DDFEE0068E5F10068EAF10064F0F40055F1F70052F2
      FA005AF4FE0000000000000000000000000001FF010101FF010101FF0101A1CD
      33A3FFC972FFFFD083FFFFDDA5FFFFEAC5FFFFF1D5FFFFF4DBFFFFF5DEFFFFF7
      DDFFFFF4D8FFFFF3D3FFFFEFCDFFFFECC4FFFFE8B9FFFFE3AEFFFFDCA0FFFFD6
      93FFFECF83FFFAC576FFF3B765FFECAC57FFE5A04BFFDC9745FFD38B37FF42D2
      0C5501FF010101FF010101FF010101FF010101FF010101FF0101A4B934B7E8A7
      51FFFEC46AFFFFCD77FFFFDCA1FFFFE7BEFFFFEAC3FFFFEAC2FFFFECC3FFFFEB
      C2FFFFEBC3FFFFEBC1FFFFEABCFFFFE8B7FF00000000D6D4D200BDB9B500DAD5
      D100E3DFDC00D1CEC900CFCBC600C4C0BD00BCB7B500AFAAA800ABA9A500D4D2
      D000EDECEB0000000000000000000000000001FF010101FF010101FF01013DEB
      103DF5E2ACF5F1ECC1F1F0ECC1F1F0ECBDF1F1EDBFF1F1F0C5F1F1F3C9F1F1F5
      CDF1F1F6CEF1F1F6CAF1F1F0C0F1F1EDB8F1F1E8ACF1F1E0A1F1F0DA92F1F0D5
      86F1F1CD75F1EEC667F1E6B95CF1DFAE52F1D6A144F1CD993AF1AF972BD723E2
      053101FF010101FF010101FF010101FF010101FF010101FF0101A7BD38B7EEAE
      55FFFCD08CFFFFEDCCFFFFF3D8FFFFF1D2FFFFF1D4FFFFF2D8FFFFF5D8FFFFF5
      DAFFFFF4D8FFFFF1D4FFFFF0CEFFFFEFCCFF00000000F6F6F500F6F5F400F3F1
      F000F0EFED00ECEAE800EBE8E600E3E0DD00E9E7E50000000000000000000000
      00000000000000000000000000000000000001FF010101FF010101FF010107FC
      01074DEE274D48F0264947F1264747F3294746F62D4746F7304746F9344746FA
      364746FB384746FA364746F8324746F62F4746F42B4746F2274747F0224747ED
      1F4746EB184745E9154742E5144740E312473DE00F473CDC0E492EE0093B05FA
      000701FF010101FF010101FF010101FF010101FF010101FF0101A7C239B3F3B6
      61FFFDA832FFFFAF40FFFFB140FFFFB143FFFFB448FFFFB54AFFFFB64CFFFFB8
      4FFFFFB854FFFFB855FFFFB855FFFFB855FF424D3E000000000000003E000000
      2800000040000000100300000100010000000000801800000000000000000000
      000000000000000000000000FFFFFF00F3FFFBFF00000000C007D55700000000
      8007AAAF0000000000015555000000000001AAAB000000000001555500000000
      8001AAAB000000008001D555000000008001AAAB000000008007D55700000000
      8007AAAF000000008007D557000000008007AAAF000000008007D55700000000
      8007AAAF00000000807FD57F000000008000FF008000F3FF0000FE000140C007
      0000F800000080070000E0000000000100008000000000010000800000000001
      0000800000008001000080000000800100008000000080010000800000008007
      000080000000800700008000000080070000C000000080070000C00000008007
      0000C000000080070000C0000000807F8000FFFFFFFFC0001000E01FFFFFC000
      0000E000FFFFC0000000C00007FFC0000000C000003FC000000080000001C000
      000080000001C000000080000001C000000080000001C000000080000003C000
      0000E0000003C0000000E0000003C0000000E0000003C0000000E0000003C000
      0000E0000003C0000000E0000003C000FFFFFFFFFFFFE000FFFFFFFF803FE000
      FFFFFFFF8007E000FFFFFFFF8001E000FFFFFFFF8001E0000000007F8001E000
      0000003F8001E0000000003F8001E0000000003F8001E0000000003F8001E000
      0810103F8001F8000810103F8001FFFF0810103F8001FFFF0810103FF801FFFF
      0810103FFFFFFFFF0810103FFFFFFFFFFC08C1838200FFFFFC0000000000FFFF
      FC0000000000FFFFFC0000000000FFFFF80000000000FFFFF00000000000FE00
      F00000000000FC00F00000000000FC00F00000000000FC00F00000000000FC00
      F00000000000FC08FFFC00000000FC08FFFC00000000FC08FFFE00000000FC08
      FFFE00000000FC08FFFF00000000FC08FF1FFFFF8001FFFFFE0FFFFF0000FFFF
      F803FFFF0000FFFFF003FFFF0000FFFFE001FFFF0000FFFFE001FFFF0000FFFF
      C000FFFF0000FFFF8000FFFF0000FFFF0001FFFF0000FFFF0003FFFF0000FFFF
      0003FFFF0000FFFF0007FFFF0000FFFF000FFFFF0000FFFF001FFFFF0000FFFF
      003FFFFF0000FFFF007FFFFF0000FFFF90008000FFFFFFFF00000000FFFFFFFF
      00000000FFFE007F00000000FF00000000000000FF00000000000000FF000000
      00000000FF00000002000000FF00000000000000FFFE107F00000000FFFF83FF
      00000000FFF8001E00000000FFC0000400000000FF80000000000000FF000000
      00000000FF00000000000000FF000000C00080008000FF00C00000000000FF9C
      C00000000000E042C00000000000FF80C00000000000F000C00000000000E000
      C00000000000C000C00000000000C000C00000000000C000C00000000000C000
      C00000000000C000C00000000000C000C00000000000C000E00000000000C000
      B00000000000C000FFFF00000000C000F0008000C0008000F000000000000000
      F000000000000000F800000000000000F800000000000000F800000080000000
      F8000000E0000000F8000000E0000000F8000000E0000000FC000000E0000000
      FF000000E0000000FF800000E0000000FFC00000F0000000FFE00000F0000000
      FFFC0000F0000000FFFF0000F00000008000E000FFE080010000E00000000000
      0000800000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008001
      00000000000080010000000000008001FFFFFFFFFFFF8000FFFFFFFFFFFF8000
      FFFFFFFFFFFF8080FFF800001FFF8000FF00000001FF8000FE000000007F8000
      FE000000007F8000FC000000003F8000F0000000000F0000C000000000070000
      C0000000000300008000000000030000C000000000030000E000000000070000
      F0000000001F0000FC000000007F00008000FE00800080000000FE0004000000
      0000FE00000800000000FE00000000000000FE00000000000000FE0000000000
      0000FE00000000000000FE00000000000000FE00000040000000FE0000000000
      0000FE00000000000000FE00000000000000FE00028040000000FE0000000000
      0000FE00100000000000FE0000000000FFFFFFFFFE008000000FE007FE000000
      000FC003FE000000000F0001FE000000000F8001FE0000000007C003FE000000
      0007C003FE0000400007C003FE000000C007C003FE0000000007C003FE000000
      0007C003FE0000000007C003FF0000000007C003FF8000000007C003FFC00000
      E007E007FFFF00000007F00FFFFF00008000E0008000FFFF0000E1000000F800
      0000E10F0000F0000000E0000000F0000000E0000000F0000000E0030000E000
      0000E0000000E0000000E0000000E0000000E0000000E0010000E0000000E000
      0000E0000000E0000000E0000000E0000000F0000000E0000000F0C00000E000
      0000F0000000E1FF0000FFFF0000E000FFFFFE008000FE00FFFFFF000000FC00
      3FFFFF800000F80007FFFF000000F00001FFFF000000F000007FFF000000F000
      001FFE000000F0000007FE000000F0000001FE000000F0000000FF000000F000
      0000FF000000F0000001FF000000F0000000FF800000F0000000FFC00000F800
      0000FFC00000F8000000FFF00000FC00FFFF80008000FFFFFFFF80000000FFFE
      7FFF80000000FFC01FFFC0000000F80007FFE0000000C00000FFFE000000C000
      003FFF000000E000000FFF00000000000003FF00000000000000FF8000000000
      0000FFF0000000000000FFFF000000000001FFFF000000000000FFFF00000000
      0000FFFF000000000000FFFF00000000FFFF80008000FFFFFFFF00000000FFC3
      3FFF00000000FC0007FF00000000C00001FF000000008000007F000000008000
      001F000000000000000700000000000000010000000000000000000000000000
      0000000000000000000100000000000000000000000000000000000000000000
      00000000000000000000000000000000800080008000FFFF000080000000FFFE
      000080000000FFC00000C0000000F8000000E0000000C0000000FE000000C000
      0000FF000000E0000000FF00000000000000FF00000000000000FF8000000000
      0000FFF0000000000000FFFF000000000000FFFF000000000000FFFF00000000
      0000FFFF000000000000FFFF00000000FFFF80008000FFFCFFFF00000000FFF8
      FFFF00000000FFF0FFFF00000000FFE0FFFF00000000F000FFFF00000000C000
      FFFF0000000080007FFF0000000000000FFF00000000000003FF000000000000
      00FF000000000000003F00000000000000070000000000000001000000000000
      0000000000000000000000000000000080008000FFFFFFFF00000000FFFFFFFF
      00000000FFFC07FF00000000FFC000FF00000000FC00003F00000000E0000007
      00000000C000000100000000C000000000000000C00000000000000004000000
      0000000000000000000000000000000000000000800000000000000080000000
      00000000800000000000000080000000FFFE800080008000FFFF000000008000
      FFFF000000008000FFFF000000008000FFFF000000008000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000008000
      FFFF00000000C000FFFF00000000F000FFFF00000000FF00FFFF00000000FFE0
      FFFF00000000FFE0FFFF00000000FFE080008000FFFFFFFF80000000FFF00FFF
      80000000FF8001FF80000000FF0000FFC0000000FC00003FC0000000F800001F
      C0000000F000000FE0000000F000000FE0000000E0000007F0000000C0000003
      F9000000C0000003FC000000C0000003FE00000080000001FF80000080000001
      FFF0000080000001FFFF000080000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFE03F
      FFFFF87FFFFF800FFFFF801FFFFF0001FFF00007FFFF0000FE000001FFFF0000
      F00000007FFF0000E00000001FFF0000E000000007FF0000F000000000FF0000
      F0000000003F800001000000000FF000000000000003F000000000000000FC00
      000000000000FFCF000000000000FFFF80008000800080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFF08000E03FE03FFFF00000
      800F800FFFF0000000010001FFF0000000000000FFF0000000000000FFF00000
      00000000FFFE000000000000FFFF000000000000FFFF000000000000FFFF0000
      80008000FFFF0000F000F000FFFF0000F000F000FFFF0000FC00FC00FFFF0000
      FFCFFFCFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF8001
      FFFFFFFFFFFF0000FFFFFFFFFFFF0000FFFFFFFFFFFF8001FFFFFFFFFFFF8001
      FFFFFFFFFFFF8001FFFFFFFFFFFF0001FFFFFFFFFFFF0001000000001FFF0001
      0000000001FF00010000000000FF000100000000007F800100000000003F8001
      00000000001F800100000000001FC007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFF808000FFFF000000000000FFFF
      000000000000FFFF000000000000FFFF000000000000FFFF000000000000FFFF
      000000000000FFFF000000000000FFFF000000000000FFFF000000000000FFF8
      000000000000FF80000000000000FF00000000000000FE00000000000000FC00
      000000000000F800000000000000F8008000FFFFFFFFFFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008000FE00E000F800000000000000F800
      000000000000F000000000000000F000000000000000F000000000000000F000
      000000000000F000000000000000F000000000000000F000000000000000F000
      000000000000F000000000000000F000000000000000F000000000000000F000
      000000000000F000000000000000F800E000FC00FC00E0000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFE0FFFF9000F800000000000000F800
      000000000000F800000000000000FC00000000000000FE00000000000000FF00
      000000000000FF00000000000000FF00000000000000FF00000000000000FF00
      000000000000FF00000000000000FF00000000000000FF00000000000000FF00
      000000000000FF00000000000000FF00FFE0F800FFFFFFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFF0008000FF00000000000000FF00
      000000000000FF00000000000000FF00000000000000FF00000000000000FF00
      000000000000FF00000000000000FE00000000000000FE00000000000000FE00
      000000000000FE00000000000000FE00000000000000FE00000000000000FE00
      000000000000FE00000000000000FE00FFFFFC00FF00FFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000008000FFF0C000FE00000000000000FE00
      000000000000FE00000000000000FE00000000000000FE00000000000000FE00
      000000000000FE00000000000000FE00000000000000FE00000000000000FC00
      000000000000FC00000000000000FC00000000000000FC00000000000000FC00
      000000000000FC00000000000000FC00FFFFFFFFFFFFFFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFF8000FC00000000000000FC00
      000000000000FC00000000000000FC00000000000000FC00000000000000FC00
      000000000000FC00000000000000FC00000000000000FC00000000000000FC00
      000000000000FC00000000000000FC00000000000000FC00000000000000FC00
      000000000000FC00000000000000FE00FFFFFFFFFFFFFFFF0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C00180008000FE00000000000000FF00
      000000000000FF80000000000000FF80000000000000FF80000000000000FF80
      000000000000FF80000000000000FF80000000000000FF80000080000000FF80
      000000000000FF80000000000000FF80000000000000FF80000000000000FF80
      000000000000FFC0000000000000FFC0F000C000800080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFC007FFE0FFFFFFFFC003FFF0
      000001FF8001FFFF000000FF8001FFFF000000FF8001FFFF000000FF8001FFFF
      000000FF8001FFFF000000FF8001FFFF0000001F8001FFFF0FE0001F8001FFFF
      0000001F8001FFFF0000001F8001FFFF0FC0001F8001FFFF0000001F8003FFFF
      0000001F8003FFFF0000001F8003FFFFE00080008000FFFFE00000000000FFFF
      E00000000000FE00E00000000000FC00E00000000000FC00E00000000000FC00
      E00000000000FC00E00000000000FC00E00000000000E000E00000000000E000
      E00000000000E000E04000000000E000E00000000000E000E00000000000E000
      E00000000000E000E00000000000E0000000E000800080000000E00000000000
      0000E000000000000000E000000000000000E000000000000000F00000000000
      0000F000000000000000F000000000000000F000000000000000F00000000000
      0000F800000000000000F800000000000000F800000000000000F80000000000
      0000F800000000000000FFFF0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F3FF000000000000C007000000000000
      8007000000000000000100000000000000010000000000000001000000000000
      8001000000000000800100000000000080010000000000008007000000000000
      8007000000000000800700000000000080070000000000008007000000000000
      8007000000000000807F00000000000000000000000000000000000000000000
      000000000000}
  end
  object dsNaturezas: TDataSource
    AutoEdit = False
    DataSet = SelNatureza
    Left = 678
    Top = 142
  end
  object SelNatureza: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelNaturezaBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               NOME, '
      '               PERC_ICMS,'
      '               INTERESTADUAL'
      'FROM EST_NATUREZA'
      'WHERE CNPJ = :CNPJ AND'
      '               ES = '#39'E'#39
      'ORDER BY NOME')
    Left = 681
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelNaturezaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_NATUREZA"."CODIGO"'
      Required = True
    end
    object SelNaturezaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_NATUREZA"."NOME"'
      Required = True
      Size = 50
    end
    object SelNaturezaPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
      Origin = '"EST_NATUREZA"."PERC_ICMS"'
    end
    object SelNaturezaINTERESTADUAL: TIBStringField
      DisplayLabel = 'Int/Est'
      FieldName = 'INTERESTADUAL'
      Origin = '"EST_NATUREZA"."INTERESTADUAL"'
      FixedChar = True
      Size = 1
    end
  end
  object dsNaturezas2: TDataSource
    AutoEdit = False
    DataSet = SelNatureza2
    Left = 710
    Top = 102
  end
  object SelNatureza2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelNatureza2BeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               NOME, '
      '               PERC_ICMS,'
      '               INTERESTADUAL'
      'FROM EST_NATUREZA'
      'WHERE CNPJ = :CNPJ AND'
      '               ES = '#39'E'#39
      'ORDER BY NOME')
    Left = 673
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelNatureza2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_NATUREZA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelNatureza2NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_NATUREZA"."NOME"'
      Size = 50
    end
    object SelNatureza2PERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
      Origin = '"EST_NATUREZA"."PERC_ICMS"'
    end
    object SelNatureza2INTERESTADUAL: TIBStringField
      FieldName = 'INTERESTADUAL'
      Origin = '"EST_NATUREZA"."INTERESTADUAL"'
      FixedChar = True
      Size = 1
    end
  end
  object SelCentroINSS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelCentroINSSBeforeOpen
    SQL.Strings = (
      'select codigo, nome from fin_centro_custo ct1'
      
        'where cnpj = :cnpj and 0 = (select count(*) from fin_centro_cust' +
        'o ct2 where ct2.agrupador = ct1.codigo)'
      'order by nome')
    Left = 712
    Top = 227
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelCentroINSSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_CENTRO_CUSTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelCentroINSSNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Size = 50
    end
  end
  object dsCentroINSS: TDataSource
    AutoEdit = False
    DataSet = SelCentroINSS
    Left = 680
    Top = 227
  end
  object SelCentroIRPJ: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelCentroINSSBeforeOpen
    SQL.Strings = (
      'select codigo, nome from fin_centro_custo ct1'
      
        'where cnpj = :cnpj and 0 = (select count(*) from fin_centro_cust' +
        'o ct2 where ct2.agrupador = ct1.codigo)'
      'order by nome')
    Left = 712
    Top = 259
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelCentroIRPJCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_CENTRO_CUSTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelCentroIRPJNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Size = 50
    end
  end
  object dsCentroIRPJ: TDataSource
    AutoEdit = False
    DataSet = SelCentroIRPJ
    Left = 680
    Top = 259
  end
  object SelCentroISS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelCentroINSSBeforeOpen
    SQL.Strings = (
      'select codigo, nome from fin_centro_custo ct1'
      
        'where cnpj = :cnpj and 0 = (select count(*) from fin_centro_cust' +
        'o ct2 where ct2.agrupador = ct1.codigo)'
      'order by nome')
    Left = 712
    Top = 291
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelCentroISSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_CENTRO_CUSTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelCentroISSNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Size = 50
    end
  end
  object dsCentroISS: TDataSource
    AutoEdit = False
    DataSet = SelCentroISS
    Left = 680
    Top = 291
  end
  object SelCentroPIS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelCentroINSSBeforeOpen
    SQL.Strings = (
      'select codigo, nome from fin_centro_custo ct1'
      
        'where cnpj = :cnpj and 0 = (select count(*) from fin_centro_cust' +
        'o ct2 where ct2.agrupador = ct1.codigo)'
      'order by nome')
    Left = 712
    Top = 323
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelCentroPISCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_CENTRO_CUSTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelCentroPISNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Size = 50
    end
  end
  object dsCentroPIS: TDataSource
    AutoEdit = False
    DataSet = SelCentroPIS
    Left = 680
    Top = 323
  end
  object SelCentroCOFINS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelCentroINSSBeforeOpen
    SQL.Strings = (
      'select codigo, nome from fin_centro_custo ct1'
      
        'where cnpj = :cnpj and 0 = (select count(*) from fin_centro_cust' +
        'o ct2 where ct2.agrupador = ct1.codigo)'
      'order by nome')
    Left = 712
    Top = 355
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelCentroCOFINSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_CENTRO_CUSTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelCentroCOFINSNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Size = 50
    end
  end
  object dsCentroCOFINS: TDataSource
    AutoEdit = False
    DataSet = SelCentroCOFINS
    Left = 680
    Top = 355
  end
  object SelCentroCSLL: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelCentroINSSBeforeOpen
    SQL.Strings = (
      'select codigo, nome from fin_centro_custo ct1'
      
        'where cnpj = :cnpj and 0 = (select count(*) from fin_centro_cust' +
        'o ct2 where ct2.agrupador = ct1.codigo)'
      'order by nome')
    Left = 712
    Top = 387
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelCentroCSLLCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_CENTRO_CUSTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelCentroCSLLNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Size = 50
    end
  end
  object dsCentroCSLL: TDataSource
    AutoEdit = False
    DataSet = SelCentroCSLL
    Left = 680
    Top = 387
  end
end
