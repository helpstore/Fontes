object FrmDadosBaixa: TFrmDadosBaixa
  Left = 438
  Top = 152
  Width = 395
  Height = 377
  BorderIcons = [biMinimize, biMaximize]
  Caption = ' Baixa de Contas '
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
    Height = 339
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
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
      Caption = 'Dados da Baixa'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 37
      Top = 115
      Caption = 'Data'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 36
      Top = 143
      Caption = 'Valor'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 197
      Top = 143
      Caption = 'Desconto'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 34
      Top = 169
      Caption = 'Juros'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 218
      Top = 168
      Caption = 'Total'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 19
      Top = 199
      Caption = 'Hist'#243'rico'
      ParentFont = False
      Transparent = True
    end
    object RxLabel1: TcxLabel
      Left = 292
      Top = 10
      Caption = '      F10 '#13#10'Calculadora'
      ParentFont = False
      Transparent = True
    end
    object Label7: TcxLabel
      Left = 8
      Top = 52
      Caption = 'Pessoa F/J'
      ParentFont = False
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 6
      Top = 78
      Caption = 'Documento'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 309
      Top = 78
      Caption = 'Pcl'
      ParentFont = False
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 187
      Top = 78
      Caption = 'Vencto'
      ParentFont = False
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 191
      Top = 115
      Caption = 'Valor Pago'
      ParentFont = False
      Transparent = True
    end
    object Label13: TcxLabel
      Left = 206
      Top = 224
      Caption = 'Cheque'
      ParentFont = False
      Transparent = True
    end
    object Label15: TcxLabel
      Left = 21
      Top = 224
      Caption = 'Dinheiro'
      ParentFont = False
      Transparent = True
    end
    object Label16: TcxLabel
      Left = 215
      Top = 252
      Caption = 'Troco'
      ParentFont = False
      Transparent = True
    end
    object Label17: TcxLabel
      Left = 17
      Top = 278
      Caption = 'Sld. Descto'
      ParentFont = False
      Transparent = True
    end
    object Label18: TcxLabel
      Left = 34
      Top = 252
      Caption = 'Cart'#227'o'
      ParentFont = False
      Transparent = True
    end
    object Data: TdxDateEdit
      Left = 70
      Top = 109
      Width = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      OnEnter = pagoEnter
      OnExit = DataExit
      OnKeyDown = DataKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object Valor: TdxCurrencyEdit
      Left = 70
      Top = 138
      Width = 121
      Enabled = False
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
      OnExit = ValorExit
      OnKeyDown = DataKeyDown
      Alignment = taRightJustify
      ReadOnly = True
      DisplayFormat = 'R$ ,###,###,##0.00;-R$ ,###,###,##0.00'
      MaxValue = 99999999.000000000000000000
      StoredValues = 81
    end
    object Desconto: TdxCurrencyEdit
      Left = 248
      Top = 138
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
      OnEnter = DescontoEnter
      OnExit = DescontoExit
      OnKeyDown = DataKeyDown
      Alignment = taRightJustify
      DisplayFormat = 'R$ #,###,##0.00'
      MaxValue = 99999999.000000000000000000
      StoredValues = 17
    end
    object Juros: TdxCurrencyEdit
      Left = 70
      Top = 165
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
      OnEnter = DescontoEnter
      OnExit = JurosExit
      OnKeyDown = DataKeyDown
      Alignment = taRightJustify
      DisplayFormat = 'R$ ,###,###,##0.00;-R$ ,###,###,##0.00'
      MaxValue = 99999999.000000000000000000
      StoredValues = 17
    end
    object Total: TdxCurrencyEdit
      Left = 248
      Top = 165
      Width = 121
      Enabled = False
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
      OnKeyDown = DataKeyDown
      Alignment = taRightJustify
      ReadOnly = True
      DisplayFormat = 'R$ ,###,###,##0.00;-R$ ,###,###,##0.00'
      MaxValue = 99999999.000000000000000000
      StoredValues = 81
    end
    object HISTORICO: TdxEdit
      Left = 70
      Top = 193
      Width = 300
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      OnEnter = DescontoEnter
      OnExit = HISTORICOExit
      OnKeyDown = DataKeyDown
      CharCase = ecUpperCase
    end
    object EdNome: TdxEdit
      Left = 70
      Top = 46
      Width = 300
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 10
      OnKeyDown = DataKeyDown
      CharCase = ecUpperCase
    end
    object EdDocumento: TdxEdit
      Left = 70
      Top = 72
      Width = 100
      Enabled = False
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
      OnKeyDown = DataKeyDown
      CharCase = ecUpperCase
    end
    object EdParcela: TdxEdit
      Left = 328
      Top = 72
      Width = 42
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 12
      OnKeyDown = DataKeyDown
      CharCase = ecUpperCase
    end
    object edvencto: TdxEdit
      Left = 224
      Top = 72
      Width = 82
      Enabled = False
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
      OnKeyDown = DataKeyDown
      CharCase = ecUpperCase
    end
    object pago: TdxCurrencyEdit
      Left = 248
      Top = 109
      Width = 121
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      OnEnter = pagoEnter
      OnExit = pagoExit
      OnKeyDown = DataKeyDown
      Alignment = taRightJustify
      DisplayFormat = 'R$ ,###,###,##0.00;-R$ ,###,###,##0.00'
      MaxValue = 99999999.000000000000000000
      StoredValues = 17
    end
    object Panel1: TPanel
      Left = 2
      Top = 303
      Width = 375
      Height = 34
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 14
      object Label12: TcxLabel
        Left = 31
        Top = 11
        Caption = 'Conta'
        ParentFont = False
        Transparent = True
      end
      object RzBitBtn1: TcxButton
        Left = 294
        Top = 5
        Width = 75
        Height = 25
        Action = ActOk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000004000
          000080000000FF000000002000004020000080200000FF200000004000004040
          000080400000FF400000006000004060000080600000FF600000008000004080
          000080800000FF80000000A0000040A0000080A00000FFA0000000C0000040C0
          000080C00000FFC0000000FF000040FF000080FF0000FFFF0000000020004000
          200080002000FF002000002020004020200080202000FF202000004020004040
          200080402000FF402000006020004060200080602000FF602000008020004080
          200080802000FF80200000A0200040A0200080A02000FFA0200000C0200040C0
          200080C02000FFC0200000FF200040FF200080FF2000FFFF2000000040004000
          400080004000FF004000002040004020400080204000FF204000004040004040
          400080404000FF404000006040004060400080604000FF604000008040004080
          400080804000FF80400000A0400040A0400080A04000FFA0400000C0400040C0
          400080C04000FFC0400000FF400040FF400080FF4000FFFF4000000060004000
          600080006000FF006000002060004020600080206000FF206000004060004040
          600080406000FF406000006060004060600080606000FF606000008060004080
          600080806000FF80600000A0600040A0600080A06000FFA0600000C0600040C0
          600080C06000FFC0600000FF600040FF600080FF6000FFFF6000000080004000
          800080008000FF008000002080004020800080208000FF208000004080004040
          800080408000FF408000006080004060800080608000FF608000008080004080
          800080808000FF80800000A0800040A0800080A08000FFA0800000C0800040C0
          800080C08000FFC0800000FF800040FF800080FF8000FFFF80000000A0004000
          A0008000A000FF00A0000020A0004020A0008020A000FF20A0000040A0004040
          A0008040A000FF40A0000060A0004060A0008060A000FF60A0000080A0004080
          A0008080A000FF80A00000A0A00040A0A00080A0A000FFA0A00000C0A00040C0
          A00080C0A000FFC0A00000FFA00040FFA00080FFA000FFFFA0000000C0004000
          C0008000C000FF00C0000020C0004020C0008020C000FF20C0000040C0004040
          C0008040C000FF40C0000060C0004060C0008060C000FF60C0000080C0004080
          C0008080C000FF80C00000A0C00040A0C00080A0C000FFA0C00000C0C00040C0
          C00080C0C000FFC0C00000FFC00040FFC00080FFC000FFFFC0000000FF004000
          FF008000FF00FF00FF000020FF004020FF008020FF00FF20FF000040FF004040
          FF008040FF00FF40FF000060FF004060FF008060FF00FF60FF000080FF004080
          FF008080FF00FF80FF0000A0FF0040A0FF0080A0FF00FFA0FF0000C0FF0040C0
          FF0080C0FF00FFC0FF0000FFFF0040FFFF0080FFFF00FFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0
          00FFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E000FFFFFFFFFFFFFFFFFFFFFFFFE0E0
          E000FFFFFFFFFFFFFFFFFFFFFFE0E0E0E0E000FFFFFFFFFFFFFFFFFFE0E0E0E0
          E0E000FFFFFFFFFFFFFFFF6DE0E000FFE0E0E000FFFFFFFFFFFF6DE000FFFFFF
          FFE0E000FFFFFFFFFFFFFFFFFFFFFFFFFFE0E0E000FFFFFFFFFFFFFFFFFFFFFF
          FFFFE0E000FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFF6DE000FFFFFFFFFFFFFFFFFFFFFFFFFFFF6DE000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFE0E000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object cmbConta: TdxLookupEdit
        Left = 70
        Top = 6
        Width = 215
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
        OnEnter = cmbContaEnter
        OnExit = HISTORICOExit
        OnKeyDown = DataKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CONTA'
        ListSource = DsConta
        LookupKeyValue = Null
      end
    end
    object Cheque: TdxCurrencyEdit
      Left = 249
      Top = 220
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
      TabOrder = 8
      OnEnter = DescontoEnter
      OnExit = ChequeExit
      OnKeyDown = DataKeyDown
      Alignment = taRightJustify
      DisplayFormat = 'R$ ,###,###,##0.00;-R$ ,###,###,##0.00'
      MaxValue = 99999999.000000000000000000
      StoredValues = 17
    end
    object Dinheiro: TdxCurrencyEdit
      Left = 71
      Top = 220
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
      TabOrder = 7
      OnEnter = DescontoEnter
      OnExit = DinheiroExit
      OnKeyDown = DataKeyDown
      Alignment = taRightJustify
      DisplayFormat = 'R$ ,###,###,##0.00;-R$ ,###,###,##0.00'
      MaxValue = 99999999.000000000000000000
      StoredValues = 17
    end
    object TROCO: TdxCurrencyEdit
      Left = 249
      Top = 247
      Width = 121
      Enabled = False
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
      OnEnter = pagoEnter
      OnExit = ChequeExit
      OnKeyDown = DataKeyDown
      Alignment = taRightJustify
      DisplayFormat = 'R$ ,###,###,##0.00;-R$ ,###,###,##0.00'
      MaxValue = 99999999.000000000000000000
      MinValue = -99999999.000000000000000000
      StoredValues = 49
    end
    object SaldoDescto: TcxTextEdit
      Left = 72
      Top = 275
      TabStop = False
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 16
      Width = 119
    end
    object Cartao: TdxCurrencyEdit
      Left = 71
      Top = 247
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
      TabOrder = 9
      OnEnter = DescontoEnter
      OnExit = CartaoExit
      OnKeyDown = DataKeyDown
      Alignment = taRightJustify
      DisplayFormat = 'R$ ,###,###,##0.00;-R$ ,###,###,##0.00'
      MaxValue = 99999999.000000000000000000
      StoredValues = 17
    end
  end
  object Actions: TActionList
    Left = 409
    Top = 28
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
    object ActCalculadora: TAction
      Caption = 'ActCalculadora'
      ShortCut = 121
      OnExecute = ActCalculadoraExecute
    end
  end
  object DsConta: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelPlano
    Left = 32
    Top = 16
  end
end
