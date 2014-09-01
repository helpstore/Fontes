object FrmConsultaVenda: TFrmConsultaVenda
  Left = 230
  Top = 115
  BorderStyle = bsDialog
  Caption = 'Consulta Faturamento'
  ClientHeight = 521
  ClientWidth = 805
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = ActFecharExecute
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label10: TcxLabel
    Left = 223
    Top = 462
    Caption = 'Tipo Documento'
    ParentFont = False
    Transparent = True
  end
  object Panel2: TPanel
    Left = 0
    Top = 472
    Width = 805
    Height = 49
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Label21: TcxLabel
      Left = 285
      Top = 4
      Caption = '( F10 ) Consulta Descri'#231#227'o/Servi'#231'o   '
      ParentFont = False
      Transparent = True
    end
    object Label23: TcxLabel
      Left = 519
      Top = 4
      Caption = 'C'#243'd. Barras'
      ParentFont = False
      Transparent = True
    end
    object Label24: TcxLabel
      Left = 653
      Top = 4
      Caption = 'Vlr. Dec'
      ParentFont = False
      Transparent = True
    end
    object Label26: TcxLabel
      Left = 4
      Top = 4
      Caption = '( F7 ) Redefine Comiss'#227'o'
      ParentFont = False
      Transparent = True
    end
    object Label30: TcxLabel
      Left = 133
      Top = 24
      Caption = '( F12 ) Corrigir N'#186' Nota Fiscal'
      ParentFont = False
      Transparent = True
    end
    object Label31: TcxLabel
      Left = 3
      Top = 24
      Caption = '( F11 ) Consulta Cores'
      ParentFont = False
      Transparent = True
    end
    object RzBitBtn2: TcxButton
      Left = 712
      Top = 18
      Width = 84
      Height = 25
      Cursor = crHandPoint
      Action = ActFechar
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
    object btnDevolucao: TcxButton
      Left = 457
      Top = 19
      Width = 61
      Height = 25
      Hint = 'Habilitar/Desabilitar Devolu'#231#245'es'
      Action = actLancarDevolucao
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
    end
    object edtCodBarras: TdxEdit
      Left = 518
      Top = 19
      Width = 139
      Hint = 'C'#243'digo de Barras'
      Enabled = False
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
      TabOrder = 2
      OnEnter = edtCodBarrasEnter
      OnKeyDown = edtCodBarrasKeyDown
      CharCase = ecUpperCase
    end
    object edtVlrDec: TdxEdit
      Left = 656
      Top = 19
      Width = 44
      Hint = 'Vlr. de Decremento'
      Enabled = False
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
      TabOrder = 3
      OnEnter = edtCodBarrasEnter
      OnKeyDown = edtCodBarrasKeyDown
    end
    object cxLabel1: TcxLabel
      Left = 132
      Top = 4
      Caption = '( F8 ) Altera Status NFe'
      ParentFont = False
      Transparent = True
    end
  end
  object PGC: TPageControl
    Left = 0
    Top = 0
    Width = 805
    Height = 472
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados Faturamento'
      object pnlClient: TPanel
        Left = 0
        Top = 0
        Width = 797
        Height = 444
        Align = alClient
        BevelInner = bvRaised
        BevelOuter = bvLowered
        Color = clWhite
        TabOrder = 0
        object Image1: TImage
          Left = 8
          Top = 2
          Width = 32
          Height = 32
          AutoSize = True
          Picture.Data = {
            055449636F6E0000010001002020000100000000A80800001600000028000000
            2000000040000000010008000000000080040000000000000000000000000000
            0000000000000000000080000080000000808000800000008000800080800000
            C0C0C000C0DCC000F0CAA6000020400000206000002080000020A0000020C000
            0020E00000400000004020000040400000406000004080000040A0000040C000
            0040E00000600000006020000060400000606000006080000060A0000060C000
            0060E00000800000008020000080400000806000008080000080A0000080C000
            0080E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C000
            00A0E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C000
            00C0E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C000
            00E0E00040000000400020004000400040006000400080004000A0004000C000
            4000E00040200000402020004020400040206000402080004020A0004020C000
            4020E00040400000404020004040400040406000404080004040A0004040C000
            4040E00040600000406020004060400040606000406080004060A0004060C000
            4060E00040800000408020004080400040806000408080004080A0004080C000
            4080E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C000
            40A0E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C000
            40C0E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C000
            40E0E00080000000800020008000400080006000800080008000A0008000C000
            8000E00080200000802020008020400080206000802080008020A0008020C000
            8020E00080400000804020008040400080406000804080008040A0008040C000
            8040E00080600000806020008060400080606000806080008060A0008060C000
            8060E00080800000808020008080400080806000808080008080A0008080C000
            8080E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C000
            80A0E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C000
            80C0E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C000
            80E0E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000
            C000E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000
            C020E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000
            C040E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000
            C060E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000
            C080E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000
            C0A0E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00
            A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
            FFFFFF000000000000000000000000000000A4A4A4A4000000A4A4A400000000
            00000000000000000000000000000000A4A4FFFF00009E9E0D00A4A4A4000000
            0000000000000000000000000000A4A4FFFF00009E9E9E9E0D0100A4A4A40000
            0000000000000000000000000000000000009E9E9E9E9E9E0D0D0100A4A4A400
            000000000000000000000000A4A4A4A4000000009E9E9E9E0D0D010D00A4A4A4
            00000000000000000000000000A4A4A4009E9E9E00009E9E0D0D010D0D00A4A4
            A40000000000000000000000FF00A4A4009E9E9E9E9E00000D0D010D0D0100A4
            A4A4000000000000000000FFF6FF00A4009E9E9E9E9E9E9E00000D0D0D0100A4
            0000000000000000000000FFF6FFFF00009E9E9E9E9E9E9E0D0D00000D010000
            00000000000000000000FFFFF6F6F6FF009E9E9E9E9EFFFFAF0D010D000D0000
            00000000000000000000BFBFF6F6F6F6009E9E9EFFFFAFAFAFAF0D010D000000
            000000000000000000FFBFBFF6F6F6F6009EFFFFAFAFAFAFAFAFAF0D010D0000
            000000000000000000FFBFBFF6F6F6F6F600AFAFAFAFAFAFAFAFAFAF0D010000
            0000000000000000FFBFBFBFF65B5BF6F6F600AFAFAFAFAFAFAFAFAFAF0D0000
            0000000000000000FFBFBFBFF65B5BF6F6F6F600AFAFAFAFAFAFAFAFAFAF0000
            00000000000000FFFFBFBFBF5B5B5B5BF6F6F6F600AFAFAFAFAFAFAF00000000
            00000000000000FBFBBFBFBF5BADADB6B6B6F6000000AFAFAFAF000092000000
            000000000000FFFBFBBF5B5B5B5B5BB6F6F6F600EDED00AF0000929292000000
            000000000000FFFBFBBF5B5B5B5B5BB6F6F600EDEDEDED00EDED929292000000
            0000000000FFFBFBFBBF5B5BADB6B6B6F6F600EDEDEDEDEDEDED929292000000
            000000000000FFFBFBBFBFBF5BB6B6F6F60000EDEDEDEDEDEDED929292000000
            00000000000000FBFBBFBFBF5BB6B6F6F60000EDEDEDEDEDFFFF929292000000
            0000000000000000FFBFBFBFF6B6B6F6000000EDEDEDFFFF0909090992000000
            000000000000000000FFBFBFF6F6F6F6000000EDFFFF92929292929209000000
            00000000000000000000BFBFF6F6F600000000FF095B00000000920000000000
            0000000000000000000000FFF6F6F6000000000009005B5B525B000000000000
            000000000000000000000000FFF60000000000000052F7F7F75B520000000000
            00000000000000000000000000F600000000000049F7080807F7520000000000
            00000000000000000000000000000000000000000008FFFF08F75B0000000000
            00000000000000000000000000000000000000004908FFFF08F7520000000000
            000000000000000000000000000000000000000000490807F752000000000000
            0000000000000000000000000000000000000000000000000052000000000000
            00000000FFFC00FFFFF0007FFFC0003FFC00001FF300000FEF000007DE000003
            DC00000FDC00001FD800001FD800001FD000001FE000000FE000000FE0000017
            C0000037C000003B8000003B8000003B0000003B8000003BC0000037E0040037
            F004000FF80C003FFC0E01FFFE1F00FFFF1F00FFFFBF00FFFFFF00FFFFFF81FF
            FFFFC3FF}
          Transparent = True
        end
        object b2: TBevel
          Left = 8
          Top = 35
          Width = 184
          Height = 2
          Shape = bsTopLine
        end
        object Bevel1: TBevel
          Left = 8
          Top = 321
          Width = 546
          Height = 1
          Shape = bsTopLine
        end
        object Label1: TcxLabel
          Left = 33
          Top = 49
          Caption = 'C'#243'digo'
          ParentFont = False
          Transparent = True
        end
        object Label3: TcxLabel
          Left = 276
          Top = 45
          Caption = 'Data'
          ParentFont = False
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 33
          Top = 74
          Caption = 'Cliente'
          ParentFont = False
          Transparent = True
        end
        object Label15: TcxLabel
          Left = 8
          Top = 99
          Caption = 'Propriedade'
          ParentFont = False
          Transparent = True
        end
        object Label16: TcxLabel
          Left = 300
          Top = 98
          Caption = 'Conveniado'
          ParentFont = False
          Transparent = True
        end
        object Label4: TcxLabel
          Left = 22
          Top = 123
          Caption = 'Natureza'
          ParentFont = False
          Transparent = True
        end
        object Label5: TcxLabel
          Left = 396
          Top = 47
          Caption = 'Vendedor'
          ParentFont = False
          Transparent = True
        end
        object LBLTERCEIROS: TcxLabel
          Left = 403
          Top = 72
          Caption = 'Terceiro'
          ParentFont = False
          Transparent = True
        end
        object LblTitulo: TcxLabel
          Left = 48
          Top = 6
          Caption = 'Consulta Faturamento'
          ParentFont = False
          Transparent = True
        end
        object Label17: TcxLabel
          Left = 30
          Top = 353
          Caption = 'Desconto/Acr'#233'scimo'
          ParentFont = False
          Transparent = True
        end
        object Label34: TcxLabel
          Left = 262
          Top = 352
          Caption = 'Entrada'
          ParentFont = False
          Transparent = True
        end
        object Label35: TcxLabel
          Left = 276
          Top = 378
          Caption = 'Local'
          ParentFont = False
          Transparent = True
        end
        object Label29: TcxLabel
          Left = 50
          Top = 379
          Caption = 'Tipo Documento'
          ParentFont = False
          Transparent = True
        end
        object Label9: TcxLabel
          Left = 88
          Top = 405
          Caption = 'Dinheiro'
          ParentFont = False
          Transparent = True
        end
        object Label11: TcxLabel
          Left = 263
          Top = 405
          Caption = 'Cheque'
          ParentFont = False
          Transparent = True
        end
        object Label12: TcxLabel
          Left = 94
          Top = 431
          Caption = 'Cart'#227'o'
          ParentFont = False
          Transparent = True
        end
        object Label13: TcxLabel
          Left = 272
          Top = 431
          Caption = 'Ticket'
          ParentFont = False
          Transparent = True
        end
        object Label14: TcxLabel
          Left = 483
          Top = 95
          Caption = 'Hist'
          ParentFont = False
          Transparent = True
        end
        object Label8: TcxLabel
          Left = 40
          Top = 327
          Caption = 'Forma Pagamento'
          ParentFont = False
          Transparent = True
        end
        object Label18: TcxLabel
          Left = 408
          Top = 97
          Caption = 'Nf'
          ParentFont = False
          Transparent = True
        end
        object Label19: TcxLabel
          Left = 404
          Top = 123
          Caption = 'Ecf'
          ParentFont = False
          Transparent = True
        end
        object Label20: TcxLabel
          Left = 396
          Top = 328
          Caption = 'Tipo'
          ParentFont = False
          Transparent = True
        end
        object Label22: TcxLabel
          Left = 395
          Top = 408
          Caption = 'Tr'#244'co'
          ParentFont = False
          Transparent = True
        end
        object Label7: TcxLabel
          Left = 550
          Top = 117
          Caption = 'Obs:'
          ParentFont = False
          Transparent = True
        end
        object EdDocumento: TdxDBEdit
          Left = 73
          Top = 43
          Width = 94
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
          Style.HotTrack = True
          TabOrder = 0
          DataField = 'CODIGO'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object cbFrete: TdxDBCheckEdit
          Left = 174
          Top = 43
          Width = 70
          Enabled = False
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
          Alignment = taRightJustify
          Caption = 'Fechada'
          DataField = 'FECHADA'
          DataSource = DsVenda
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object EdDataNota: TdxDBDateEdit
          Left = 306
          Top = 42
          Width = 87
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
          Style.ButtonTransparence = ebtNone
          Style.HotTrack = True
          TabOrder = 2
          Alignment = taLeftJustify
          DataField = 'DATA'
          DataSource = DsVenda
          ReadOnly = False
          DateOnError = deToday
          DateValidation = True
          SaveTime = False
          UseEditMask = True
          StoredValues = 69
        end
        object dxDBEdit3: TdxDBEdit
          Left = 126
          Top = 68
          Width = 267
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
          TabOrder = 3
          DataField = 'NOME'
          DataSource = DsVenda
        end
        object EdPessoa: TdxDBEdit
          Left = 73
          Top = 68
          Width = 54
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
          TabOrder = 4
          DataField = 'PESSOA_FJ'
          DataSource = DsVenda
        end
        object dxDBEdit9: TdxDBEdit
          Left = 73
          Top = 93
          Width = 224
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
          Style.HotTrack = True
          TabOrder = 5
          DataField = 'NOME_PROPRIEDADE'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit10: TdxDBEdit
          Left = 360
          Top = 93
          Width = 33
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
          Style.HotTrack = True
          TabOrder = 6
          DataField = 'CONVENIADO'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object EdNatureza: TdxDBEdit
          Left = 73
          Top = 118
          Width = 54
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
          TabOrder = 7
          DataField = 'NATUREZA'
          DataSource = DsVenda
        end
        object EdVendedor: TdxDBEdit
          Left = 449
          Top = 42
          Width = 54
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
          TabOrder = 8
          DataField = 'VENDEDOR'
          DataSource = DsVenda
        end
        object EdTerceiro: TdxDBEdit
          Left = 449
          Top = 67
          Width = 54
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
          TabOrder = 9
          DataField = 'TERCEIRO'
          DataSource = DsVenda
        end
        object dxDBEdit1: TdxDBEdit
          Left = 126
          Top = 118
          Width = 267
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
          TabOrder = 10
          DataField = 'NOME_NATUREZA'
          DataSource = DsVenda
        end
        object dxDBEdit4: TdxDBEdit
          Left = 502
          Top = 42
          Width = 292
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
          TabOrder = 11
          DataField = 'NOME_VENDEDOR'
          DataSource = DsVenda
        end
        object dxDBEdit5: TdxDBEdit
          Left = 502
          Top = 67
          Width = 292
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
          TabOrder = 12
          DataField = 'NOME_TERCEIRO'
          DataSource = DsVenda
        end
        object GridItens: TdxDBGrid
          Left = 2
          Top = 145
          Width = 581
          Height = 176
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'PRODUTO'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          PopupMenu = MenuSelecionar
          TabOrder = 13
          DataSource = dsProdutos
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsCustomize = [edgoBandMoving, edgoBandPanelSizing, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoFullSizing, edgoKeepColumnWidth, edgoRowSizing]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
          ShowRowFooter = True
          object GridItensPRODUTO: TdxDBGridMaskColumn
            Width = 80
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRODUTO'
          end
          object GridItensCODIGO_2: TdxDBGridMaskColumn
            Width = 94
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CODIGO_2'
          end
          object GridItensNome_Produto: TdxDBGridLookupColumn
            Caption = 'Nome'
            TabStop = False
            Width = 113
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOME_PRODUTO'
          end
          object GridItensGRADE: TdxDBGridMaskColumn
            Width = 35
            BandIndex = 0
            RowIndex = 0
            FieldName = 'GRADE'
          end
          object GridItensNUMERO: TdxDBGridMaskColumn
            Sorted = csDown
            Width = 43
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NUMERO'
          end
          object GridItensLUCRO_ITEM: TdxDBGridMaskColumn
            Width = 61
            BandIndex = 0
            RowIndex = 0
            FieldName = 'LUCRO_ITEM'
            SummaryFooterType = cstAvg
            SummaryFooterField = 'LUCRO_ITEM'
            SummaryField = 'LUCRO_ITEM'
            SummaryFormat = '###,##0.00'
          end
          object GridItensSEQUENCIA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'SEQUENCIA'
          end
          object GridItensQUANTIDADE: TdxDBGridMaskColumn
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'QUANTIDADE'
            SummaryFooterType = cstSum
            SummaryFooterField = 'QUANTIDADE'
            SummaryField = 'QUANTIDADE'
            SummaryFormat = '###,##0.00'
          end
          object GridItensPRC_UNITARIO: TdxDBGridMaskColumn
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRC_UNITARIO'
          end
          object GridItensDesconto: TdxDBGridColumn
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DESCONTO'
          end
          object GridItensPRC_UNIT_ORIGINAL: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRC_UNIT_ORIGINAL'
          end
          object GridItensTotal: TdxDBGridColumn
            Width = 65
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Total'
            SummaryFooterType = cstSum
            SummaryFooterField = 'Total'
            SummaryField = 'Total'
            SummaryFormat = '###,##0.00'
          end
          object GridItensComplemento: TdxDBGridColumn
            Caption = 'Complemento'
            Width = 200
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COMPLEMENTO'
          end
          object GridItensVENDEDOR: TdxDBGridMaskColumn
            Width = 1500
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VENDEDOR'
          end
          object GridItensQTDE_ENTREGUE: TdxDBGridMaskColumn
            Width = 118
            BandIndex = 0
            RowIndex = 0
            FieldName = 'QTDE_ENTREGUE'
          end
          object GridItensPRC_CUSTO: TdxDBGridMaskColumn
            Width = 118
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PRC_CUSTO'
          end
          object GridItensCUSTO_MEDIO: TdxDBGridMaskColumn
            Width = 118
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CUSTO_MEDIO'
          end
          object GridItensNOME_MARCA: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'NOME_MARCA'
          end
          object GridItensCFOP: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CFOP'
          end
          object GridItensBCH_CODIGO: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'BCH_CODIGO'
          end
        end
        object Panel3: TPanel
          Left = 580
          Top = 234
          Width = 214
          Height = 87
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 14
          object Label25: TcxLabel
            Left = 74
            Top = 6
            Caption = 'Total Lan'#231'ado'
            ParentFont = False
            Transparent = True
          end
          object Label27: TcxLabel
            Left = 124
            Top = 46
            Caption = 'Total'
            ParentFont = False
            Transparent = True
          end
          object Label6: TcxLabel
            Left = 5
            Top = 46
            Caption = 'Desc/Acr'#233's'
            ParentFont = False
            Transparent = True
          end
          object Label28: TcxLabel
            Left = 4
            Top = 8
            Caption = 'Com. %)'
            ParentFont = False
            Transparent = True
          end
          object dxDBEdit6: TdxDBEdit
            Left = 78
            Top = 21
            Width = 75
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
            TabStop = False
            DataField = 'TOTAL'
            DataSource = DsVenda
            ReadOnly = True
            StoredValues = 64
          end
          object dxDBEdit8: TdxDBEdit
            Left = 78
            Top = 59
            Width = 75
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
            TabStop = False
            DataField = 'Total_Geral'
            DataSource = DsVenda
            ReadOnly = True
            StoredValues = 64
          end
          object dxDBEdit7: TdxDBEdit
            Left = 2
            Top = 59
            Width = 76
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
            TabStop = False
            DataField = 'DESC_ACRES'
            DataSource = DsVenda
            ReadOnly = True
            StoredValues = 64
          end
          object dxDBEdit26: TdxDBEdit
            Left = 2
            Top = 22
            Width = 76
            Hint = 'Comiss'#227'o de Venda'
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
            TabStop = False
            DataField = 'PCT_COMISSAO'
            DataSource = DsVenda
            ReadOnly = True
            StoredValues = 64
          end
        end
        object GRIDFATURAMENTO: TDBGrid
          Left = 471
          Top = 324
          Width = 320
          Height = 122
          TabStop = False
          BorderStyle = bsNone
          DataSource = DsParcelas
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgEditing, dgTitles, dgIndicator, dgRowLines, dgTabs, dgCancelOnExit]
          ParentFont = False
          TabOrder = 15
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = 8404992
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'VENCTO'
              Title.Caption = 'Vencimento'
              Width = 85
              Visible = True
            end
            item
              Color = clBtnFace
              Expanded = False
              FieldName = 'VALOR'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PARCELA'
              Width = 65
              Visible = True
            end>
        end
        object edObservacoes: TdxDBMemo
          Left = 580
          Top = 116
          Width = 214
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 16
          DataField = 'OBSERVACAO'
          DataSource = DsVenda
          Height = 117
        end
        object dxDBEdit11: TdxDBEdit
          Left = 144
          Top = 349
          Width = 94
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
          Style.HotTrack = True
          TabOrder = 17
          DataField = 'DESC_ACRES'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit12: TdxDBEdit
          Left = 144
          Top = 374
          Width = 94
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
          Style.HotTrack = True
          TabOrder = 18
          DataField = 'NOME_DOCUMENTO'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit13: TdxDBEdit
          Left = 310
          Top = 349
          Width = 76
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
          Style.HotTrack = True
          TabOrder = 19
          DataField = 'ENTRADA'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit14: TdxDBEdit
          Left = 310
          Top = 374
          Width = 76
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
          Style.HotTrack = True
          TabOrder = 20
          DataField = 'LOCAL_COBRANCA'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit15: TdxDBEdit
          Left = 144
          Top = 399
          Width = 94
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
          Style.HotTrack = True
          TabOrder = 21
          DataField = 'DINHEIRO'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit16: TdxDBEdit
          Left = 310
          Top = 399
          Width = 76
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
          Style.HotTrack = True
          TabOrder = 22
          DataField = 'CHEQUE'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit17: TdxDBEdit
          Left = 144
          Top = 424
          Width = 94
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
          Style.HotTrack = True
          TabOrder = 23
          DataField = 'CARTAO'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit19: TdxDBEdit
          Left = 310
          Top = 424
          Width = 76
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
          Style.HotTrack = True
          TabOrder = 24
          DataField = 'TICKET'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit20: TdxDBEdit
          Left = 502
          Top = 90
          Width = 292
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
          TabOrder = 25
          DataField = 'HISTORICO'
          DataSource = DsVenda
        end
        object dxDBEdit18: TdxDBEdit
          Left = 144
          Top = 324
          Width = 241
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
          Style.HotTrack = True
          TabOrder = 26
          DataField = 'NOME_FORMA'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit21: TdxDBEdit
          Left = 251
          Top = 43
          Width = 22
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
          Style.HotTrack = True
          TabOrder = 27
          DataField = 'LOCAL'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit22: TdxDBEdit
          Left = 426
          Top = 93
          Width = 46
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
          Style.HotTrack = True
          TabOrder = 28
          DataField = 'NUM_NF'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit23: TdxDBEdit
          Left = 426
          Top = 118
          Width = 46
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
          Style.HotTrack = True
          TabOrder = 29
          DataField = 'NUM_CUPOM'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit24: TdxDBEdit
          Left = 423
          Top = 324
          Width = 46
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
          Style.HotTrack = True
          TabOrder = 30
          DataField = 'TIPO_VENDA'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit25: TdxDBEdit
          Left = 392
          Top = 424
          Width = 76
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
          Style.HotTrack = True
          TabOrder = 31
          DataField = 'TROCO'
          DataSource = DsVenda
          ReadOnly = False
          StoredValues = 64
        end
        object EDSERVICO: TdxDBMemo
          Left = 1
          Top = 146
          Width = 580
          Enabled = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 32
          Visible = False
          OnClick = EDSERVICOClick
          DataField = 'SERVICO'
          DataSource = dsProdutos
          Height = 176
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'NFe - XML'
      ImageIndex = 1
      object WBResposta: TWebBrowser
        Left = 0
        Top = 0
        Width = 797
        Height = 444
        Align = alClient
        TabOrder = 0
        ControlData = {
          4C00000058260000AA1A00000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
      object MemoResp: TMemo
        Left = 0
        Top = 0
        Width = 797
        Height = 444
        Align = alClient
        Lines.Strings = (
          'Memo esta marcado como visible false, usado apenas para exibir'
          'o xml correto')
        TabOrder = 1
        Visible = False
      end
    end
  end
  object Actions: TActionList
    Left = 520
    Top = 232
    object ActFechar: TAction
      Caption = '&Fechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActCores: TAction
      Caption = 'Cores'
      ShortCut = 122
      OnExecute = ActCoresExecute
    end
    object ActServico: TAction
      Caption = 'ActServico'
      ShortCut = 121
      OnExecute = ActServicoExecute
    end
    object actLancarDevolucao: TAction
      Caption = 'Dev.'
      OnExecute = actLancarDevolucaoExecute
    end
    object ActDefineComissao: TAction
      Caption = 'ActDefineComissao'
      ShortCut = 118
      OnExecute = ActDefineComissaoExecute
    end
    object ActReusaNF: TAction
      Caption = '( F12 ) Corrigir N'#186' Nota Fiscal'
      ShortCut = 123
      OnExecute = ActReusaNFExecute
    end
    object ActAlteraStatus: TAction
      Caption = 'ActAlteraStatus'
      ShortCut = 119
      OnExecute = ActAlteraStatusExecute
    end
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = DmVendas.Consulta_Venda_Itens
    Left = 408
    Top = 232
  end
  object DsVenda: TDataSource
    AutoEdit = False
    DataSet = DmVendas.Consulta_Venda
    Left = 200
    Top = 232
  end
  object DsParcelas: TDataSource
    AutoEdit = False
    DataSet = DmVendas.Consulta_Venda_Parc
    Left = 296
    Top = 240
  end
  object MenuSelecionar: TPopupMenu
    OnPopup = MenuSelecionarPopup
    Left = 80
    Top = 200
    object SelecionarItem: TMenuItem
      Caption = 'Selecionar Item'
      OnClick = SelecionarItemClick
    end
  end
  object stgFrmConsultaVenda: TcxPropertiesStore
    Components = <
      item
        Component = GridItens
        Properties.Strings = (
          'Align'
          'Anchors'
          'ArrowsColor'
          'AutoExpandOnSearch'
          'AutoSearchColor'
          'AutoSearchTextColor'
          'BandColor'
          'BandFont'
          'BandMaxRowCount'
          'BandRowCount'
          'Bands'
          'BorderStyle'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'CustomizingRowCount'
          'DataSource'
          'DblClkExpanding'
          'DefaultFields'
          'DefaultLayout'
          'DefaultRowHeight'
          'DragCursor'
          'DragMode'
          'Enabled'
          'Filter'
          'FixedBandLineColor'
          'FixedBandLineWidth'
          'Font'
          'GridLineColor'
          'GrIndicatorWidth'
          'GroupNodeColor'
          'GroupNodeTextColor'
          'GroupPanelColor'
          'GroupPanelFontColor'
          'HeaderColor'
          'HeaderFont'
          'HeaderMinRowCount'
          'HeaderPanelMaxRowCount'
          'HeaderPanelRowCount'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HideFocusRect'
          'HideSelection'
          'HideSelectionColor'
          'HideSelectionTextColor'
          'HighlightColor'
          'HighlightTextColor'
          'Hint'
          'IndentDesc'
          'IniFileName'
          'IniSectionName'
          'KeyField'
          'Left'
          'LookAndFeel'
          'MaxRowLineCount'
          'Name'
          'Options'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsDB'
          'OptionsEx'
          'OptionsView'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PartialLoad'
          'PartialLoadBufferCount'
          'PopupMenu'
          'PreviewFieldName'
          'PreviewFont'
          'PreviewLines'
          'PreviewMaxLength'
          'RegistryPath'
          'RowFooterColor'
          'RowFooterTextColor'
          'RowSeparatorLineWidth'
          'ScrollBars'
          'ShowBands'
          'ShowGrid'
          'ShowGroupPanel'
          'ShowHeader'
          'ShowHiddenInCustomizeBox'
          'ShowHint'
          'ShowNewItemRow'
          'ShowPreviewGrid'
          'ShowRowFooter'
          'ShowSummaryFooter'
          'SimpleCustomizeBox'
          'SummaryGroups'
          'SummarySeparator'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseBookmarks'
          'Visible'
          'WaitForExpandNodeTime'
          'Width')
      end
      item
        Component = GridItensBCH_CODIGO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensCFOP
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensCODIGO_2
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensComplemento
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensCUSTO_MEDIO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensDesconto
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensGRADE
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensLUCRO_ITEM
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensNOME_MARCA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensNome_Produto
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'ButtonGlyph'
          'CanDeleteText'
          'Caption'
          'CharCase'
          'ClearKey'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'DropDownRows'
          'DropDownWidth'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'ImmediateDropDown'
          'ListFieldIndex'
          'ListFieldName'
          'ListWidth'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'PopupAlignment'
          'PopupBorder'
          'ReadOnly'
          'RowIndex'
          'ShowButtonStyle'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensNUMERO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensPRC_CUSTO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensPRC_UNIT_ORIGINAL
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensPRC_UNITARIO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensPRODUTO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensQTDE_ENTREGUE
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensQUANTIDADE
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensSEQUENCIA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensTotal
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensVENDEDOR
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end>
    StorageName = 'stgFrmConsultaVenda'
    Left = 274
    Top = 176
  end
  object PCD_ALTERA_STATUS_NFE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_ALTERA_STATUS_NFE'
    Left = 552
    Top = 191
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'STATUS'
        ParamType = ptInput
      end>
  end
end
