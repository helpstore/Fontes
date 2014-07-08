object FrmReceberParcelamento: TFrmReceberParcelamento
  Left = 373
  Top = 264
  Width = 370
  Height = 359
  BorderIcons = [biMinimize, biMaximize]
  Caption = ' Lan'#231'ar Parcelas do Receber'
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
    Width = 354
    Height = 321
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
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
      Caption = 'Lan'#231'ar Parcelas do Receber'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 17
      Top = 51
      Caption = 'Data Inicial'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 35
      Top = 106
      Caption = 'Pessoa'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 209
      Top = 133
      Caption = 'N. Doc.'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 12
      Top = 157
      Caption = 'Parcelas Ini.'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 29
      Top = 181
      Caption = 'Hist'#243'rico'
      ParentFont = False
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 214
      Top = 158
      Caption = 'Valor'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 29
      Top = 78
      Caption = 'Intervalo'
      ParentFont = False
      Transparent = True
    end
    object Label7: TcxLabel
      Left = 9
      Top = 232
      Caption = 'Centro Custo'
      ParentFont = False
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 14
      Top = 134
      Caption = 'Tipo. Docto'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 135
      Top = 157
      Caption = 'fim'
      ParentFont = False
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 132
      Top = 75
      Caption = '*Intervalo igual a zero incrementa o m'#234's'
      ParentFont = False
      Transparent = True
    end
    object EdData: TdxDateEdit
      Left = 80
      Top = 45
      Width = 89
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
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object RzBitBtn1: TcxButton
      Left = 272
      Top = 272
      Width = 75
      Height = 25
      Action = ActOk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
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
    object CmbPessoa: TdxLookupEdit
      Left = 80
      Top = 102
      Width = 268
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
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      ClearKey = 46
      ListFieldName = 'NOME_RAZAO'
      KeyFieldName = 'CODIGO'
      ListSource = dsPessoas
      LookupKeyValue = Null
    end
    object EdDocumento: TdxEdit
      Left = 248
      Top = 127
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
      TabOrder = 4
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      CharCase = ecUpperCase
    end
    object Parcelas: TdxCurrencyEdit
      Left = 80
      Top = 152
      Width = 49
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 5
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      Alignment = taRightJustify
      DisplayFormat = ',0;-,0'
      StoredValues = 1
    end
    object EdHistorico: TdxEdit
      Left = 80
      Top = 177
      Width = 268
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
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      CharCase = ecUpperCase
    end
    object EdValor: TdxCurrencyEdit
      Left = 248
      Top = 152
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
      TabOrder = 7
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      Alignment = taRightJustify
      DisplayFormat = 'R$ ,###,###,##0.00;-R$ ,###,###,##0.00'
      MaxValue = 99999999.000000000000000000
      StoredValues = 17
    end
    object EdIntervalo: TdxCurrencyEdit
      Left = 80
      Top = 73
      Width = 48
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 1
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      Alignment = taRightJustify
      DisplayFormat = ',0;-,0'
      StoredValues = 1
    end
    object CmbCentro_Custo: TdxLookupEdit
      Left = 80
      Top = 228
      Width = 268
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
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      ClearKey = 46
      ListFieldName = 'NOME'
      KeyFieldName = 'CODIGO'
      ListSource = DsCentro
      LookupKeyValue = Null
    end
    object CmbTipo: TdxLookupEdit
      Left = 80
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
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      ListFieldName = 'NOME'
      KeyFieldName = 'SIGLA'
      ListSource = FrmReceber.DsTipoDocto
      LookupKeyValue = Null
    end
    object ParcelasFim: TdxCurrencyEdit
      Left = 152
      Top = 152
      Width = 49
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 6
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      Alignment = taRightJustify
      DisplayFormat = ',0;-,0'
      StoredValues = 1
    end
    object cxLabel2: TcxLabel
      Left = 30
      Top = 206
      Caption = 'Contrato'
      ParentFont = False
      Transparent = True
    end
    object cmbContrato: TdxLookupEdit
      Left = 80
      Top = 203
      Width = 268
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
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      ClearKey = 46
      ListFieldName = 'DESCRICAO'
      KeyFieldName = 'CODIGO'
      ListSource = dsContrato
      LookupKeyValue = Null
    end
  end
  object Actions: TActionList
    Left = 257
    Top = 4
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
  object dsPessoas: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Pessoas_FJ
    Left = 312
    Top = 3
  end
  object DsCentro: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelCentro
    Left = 176
    Top = 3
  end
  object dsContrato: TDataSource
    AutoEdit = False
    DataSet = qryContratos
    Left = 228
    Top = 40
  end
  object qryContratos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select ct.codigo, ct.descricao from ctr_contrato ct'
      'where ct.ativo = '#39'S'#39)
    Left = 188
    Top = 41
    object qryContratosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CTR_CONTRATO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContratosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CTR_CONTRATO"."DESCRICAO"'
      Size = 50
    end
  end
end
