object FrmTipoFaturaVenda: TFrmTipoFaturaVenda
  Left = 361
  Top = 184
  BorderStyle = bsDialog
  Caption = '  Imprime Nota / Cupom Fiscal'
  ClientHeight = 160
  ClientWidth = 330
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 330
    Height = 120
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object LBLPEDIDO: TcxLabel
      Left = 58
      Top = 9
      Caption = 'Pedido N'#186' =>'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 19
      Top = 46
      Caption = 'Sa'#237'da'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 21
      Top = 79
      Caption = 'S'#233'rie'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 165
      Top = 78
      Caption = 'N'#186
      ParentFont = False
      Transparent = True
    end
    object EdTipo: TdxPickEdit
      Left = 57
      Top = 38
      Width = 123
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      OnEnter = EdTipoEnter
      OnExit = EdTipoExit
      OnKeyDown = EdTipoKeyDown
      OnChange = EdTipoChange
      DropDownListStyle = True
      Items.Strings = (
        '1-Nota'
        '2-Cupom'
        '3-Or'#231'amento')
      CanDeleteText = True
      Sorted = True
    end
    object CmbTipo: TdxPickEdit
      Left = 57
      Top = 72
      Width = 60
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      OnEnter = CmbTipoEnter
      OnExit = CmbTipoExit
      OnKeyDown = cmbPessoaKeyDown
      DropDownListStyle = True
      Sorted = True
    end
    object edNumNF: TdxEdit
      Left = 184
      Top = 72
      Width = 114
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 3
      OnEnter = edNumNFEnter
      OnExit = edNumNFExit
      OnKeyDown = EdTipoKeyDown
    end
    object EdCodigo: TdxEdit
      Left = 121
      Top = 72
      Width = 32
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
    end
    object DATANF: TdxDateEdit
      Left = 183
      Top = 38
      Width = 115
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      OnEnter = EdTipoEnter
      OnExit = EdTipoExit
      OnKeyDown = EdTipoKeyDown
      Date = -700000.000000000000000000
      UseEditMask = True
      StoredValues = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 120
    Width = 330
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object RzBitBtn2: TcxButton
      Left = 99
      Top = 7
      Width = 91
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
      TabOrder = 1
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
    object btnimprimir: TcxButton
      Left = 5
      Top = 7
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Action = ActImprimir
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B8030000C30E0000C30E00000000000000000000BFBFBF000000
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
  end
  object Actions: TActionList
    Left = 168
    Top = 96
    object ActFechar: TAction
      Caption = '&Fechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActImprimir: TAction
      Caption = 'Imprimir'
      OnExecute = ActImprimirExecute
    end
  end
  object DSource: TDataSource
    DataSet = DmVendas.Serie
    Left = 144
    Top = 96
  end
  object ppSerieNF: TppDBPipeline
    DataSource = dsPedidos
    UserName = 'SerieNF'
    Left = 192
    object ppSerieNFppField1: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object ppSerieNFppField2: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppSerieNFppField3: TppField
      FieldAlias = 'ENDERECO_CLI'
      FieldName = 'ENDERECO_CLI'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object ppSerieNFppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDA'
      FieldName = 'COD_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppSerieNFppField5: TppField
      FieldAlias = 'DT_VENDA'
      FieldName = 'DT_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppSerieNFppField6: TppField
      FieldAlias = 'DATA_CAIXA'
      FieldName = 'DATA_CAIXA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppSerieNFppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ACRESC'
      FieldName = 'DESC_ACRESC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppSerieNFppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ITEM'
      FieldName = 'DESC_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppSerieNFppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppSerieNFppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_BRUTO'
      FieldName = 'TOTAL_BRUTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppSerieNFppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_CUPOM'
      FieldName = 'NUM_CUPOM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppSerieNFppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppSerieNFppField13: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppSerieNFppField14: TppField
      FieldAlias = 'PRODUTO'
      FieldName = 'PRODUTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppSerieNFppField15: TppField
      FieldAlias = 'FORMA_PAGTO'
      FieldName = 'FORMA_PAGTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppSerieNFppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEQUENCIA'
      FieldName = 'SEQUENCIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppSerieNFppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppSerieNFppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO'
      FieldName = 'PRC_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppSerieNFppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO_LIQ'
      FieldName = 'PRC_UNITARIO_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppSerieNFppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_ITEM'
      FieldName = 'TOTAL_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppSerieNFppField21: TppField
      FieldAlias = 'PARCELAMENTO'
      FieldName = 'PARCELAMENTO'
      FieldLength = 500
      DisplayWidth = 500
      Position = 20
    end
    object ppSerieNFppField22: TppField
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 21
    end
    object ppSerieNFppField23: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 22
    end
    object ppSerieNFppField24: TppField
      FieldAlias = 'COMPLEMENTO'
      FieldName = 'COMPLEMENTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 23
    end
    object ppSerieNFppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_ITEM_DESCTO'
      FieldName = 'PCT_ITEM_DESCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppSerieNFppField26: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 25
    end
    object ppSerieNFppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppSerieNFppField28: TppField
      FieldAlias = 'CGC_CPF_CLI'
      FieldName = 'CGC_CPF_CLI'
      FieldLength = 20
      DisplayWidth = 20
      Position = 27
    end
    object ppSerieNFppField29: TppField
      FieldAlias = 'TIPO_DOCTO'
      FieldName = 'TIPO_DOCTO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 28
    end
    object ppSerieNFppField30: TppField
      FieldAlias = 'NOME_TIPO_DOCTO'
      FieldName = 'NOME_TIPO_DOCTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 29
    end
    object ppSerieNFppField31: TppField
      FieldAlias = 'RG_IE'
      FieldName = 'RG_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 30
    end
    object ppSerieNFppField32: TppField
      FieldAlias = 'HORA'
      FieldName = 'HORA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 31
    end
    object ppSerieNFppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_DESCTO_VENDA'
      FieldName = 'PCT_DESCTO_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object ppSerieNFppField34: TppField
      FieldAlias = 'CPF_CGC'
      FieldName = 'CPF_CGC'
      FieldLength = 14
      DisplayWidth = 14
      Position = 33
    end
    object ppSerieNFppField35: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 34
    end
    object ppSerieNFppField36: TppField
      FieldAlias = 'CEP_EMP'
      FieldName = 'CEP_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 35
    end
    object ppSerieNFppField37: TppField
      FieldAlias = 'BAIRRO_EMP'
      FieldName = 'BAIRRO_EMP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object ppSerieNFppField38: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 37
    end
    object ppSerieNFppField39: TppField
      FieldAlias = 'FONE_CLIENTE'
      FieldName = 'FONE_CLIENTE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 38
    end
    object ppSerieNFppField40: TppField
      FieldAlias = 'ENDERECO_EMP'
      FieldName = 'ENDERECO_EMP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 39
    end
    object ppSerieNFppField41: TppField
      FieldAlias = 'FANTASIA_CLI'
      FieldName = 'FANTASIA_CLI'
      FieldLength = 50
      DisplayWidth = 50
      Position = 40
    end
    object ppSerieNFppField42: TppField
      FieldAlias = 'EMPRESA'
      FieldName = 'EMPRESA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 41
    end
    object ppSerieNFppField43: TppField
      FieldAlias = 'CNPJ_EMP'
      FieldName = 'CNPJ_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 42
    end
    object ppSerieNFppField44: TppField
      FieldAlias = 'OBSERVACAO'
      FieldName = 'OBSERVACAO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 43
    end
    object ppSerieNFppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONT_ITENS'
      FieldName = 'CONT_ITENS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 44
    end
    object ppSerieNFppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'VOLUME'
      FieldName = 'VOLUME'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 45
    end
    object ppSerieNFppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO'
      FieldName = 'PESO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 46
    end
    object ppSerieNFppField48: TppField
      FieldAlias = 'CIDADE_EMP'
      FieldName = 'CIDADE_EMP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 47
    end
    object ppSerieNFppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'MRC_CODIGO'
      FieldName = 'MRC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 48
    end
    object ppSerieNFppField50: TppField
      FieldAlias = 'MRC_NOME'
      FieldName = 'MRC_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 49
    end
    object ppSerieNFppField51: TppField
      FieldAlias = 'PRO_NOME'
      FieldName = 'PRO_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 50
    end
    object ppSerieNFppField52: TppField
      FieldAlias = 'PRO_PROPRIETARIO'
      FieldName = 'PRO_PROPRIETARIO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 51
    end
    object ppSerieNFppField53: TppField
      FieldAlias = 'PRO_IE'
      FieldName = 'PRO_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 52
    end
    object ppSerieNFppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_PROPRIEDADE'
      FieldName = 'PRO_PROPRIEDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 53
    end
    object ppSerieNFppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_ENDERECO'
      FieldName = 'PRO_ENDERECO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 54
    end
    object ppSerieNFppField56: TppField
      FieldAlias = 'PRO_COMPLEMENTO'
      FieldName = 'PRO_COMPLEMENTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 55
    end
    object ppSerieNFppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_CIDADE'
      FieldName = 'PRO_CIDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 56
    end
    object ppSerieNFppField58: TppField
      FieldAlias = 'PRO_UF'
      FieldName = 'PRO_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 57
    end
    object ppSerieNFppField59: TppField
      FieldAlias = 'PRO_CEP'
      FieldName = 'PRO_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 58
    end
    object ppSerieNFppField60: TppField
      FieldAlias = 'PRO_AREA_TOTAL'
      FieldName = 'PRO_AREA_TOTAL'
      FieldLength = 30
      DisplayWidth = 30
      Position = 59
    end
    object ppSerieNFppField61: TppField
      FieldAlias = 'PRO_ATIVA'
      FieldName = 'PRO_ATIVA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 60
    end
    object ppSerieNFppField62: TppField
      FieldAlias = 'PRO_NUMERO'
      FieldName = 'PRO_NUMERO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 61
    end
    object ppSerieNFppField63: TppField
      FieldAlias = 'PRO_CPF'
      FieldName = 'PRO_CPF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 62
    end
    object ppSerieNFppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_TECNICO'
      FieldName = 'PRO_TECNICO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object ppSerieNFppField65: TppField
      FieldAlias = 'PSA_CELULAR'
      FieldName = 'PSA_CELULAR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 64
    end
    object ppSerieNFppField66: TppField
      FieldAlias = 'PSA_FAX'
      FieldName = 'PSA_FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 65
    end
    object ppSerieNFppField67: TppField
      FieldAlias = 'VDI_GRADE'
      FieldName = 'VDI_GRADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 66
    end
    object ppSerieNFppField68: TppField
      FieldAlias = 'VDI_NUMERO'
      FieldName = 'VDI_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 67
    end
    object ppSerieNFppField69: TppField
      FieldAlias = 'GRD_GRADE'
      FieldName = 'GRD_GRADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 68
    end
    object ppSerieNFppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_MATERIAL'
      FieldName = 'GRD_MATERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 69
    end
    object ppSerieNFppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_COR'
      FieldName = 'GRD_COR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 70
    end
    object ppSerieNFppField72: TppField
      FieldAlias = 'GRD_NOME_MATERIAL'
      FieldName = 'GRD_NOME_MATERIAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 71
    end
    object ppSerieNFppField73: TppField
      FieldAlias = 'GRD_NOME_COR'
      FieldName = 'GRD_NOME_COR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 72
    end
    object ppSerieNFppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_PERFIL'
      FieldName = 'GRD_PERFIL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object ppSerieNFppField75: TppField
      FieldAlias = 'GRD_NOME_PERFIL'
      FieldName = 'GRD_NOME_PERFIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 74
    end
    object ppSerieNFppField76: TppField
      FieldAlias = 'GRD_NUMERO'
      FieldName = 'GRD_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 75
    end
    object ppSerieNFppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_ORDEM'
      FieldName = 'GRD_ORDEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object ppSerieNFppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CLIENTE'
      FieldName = 'COD_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 77
    end
    object ppSerieNFppField79: TppField
      FieldAlias = 'PC_PARCELAMENTO'
      FieldName = 'PC_PARCELAMENTO'
      FieldLength = 300
      DisplayWidth = 300
      Position = 78
    end
    object ppSerieNFppField80: TppField
      FieldAlias = 'PRO_RUA_NOME'
      FieldName = 'PRO_RUA_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 79
    end
    object ppSerieNFppField81: TppField
      Alignment = taRightJustify
      FieldAlias = 'TROCO'
      FieldName = 'TROCO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 80
    end
    object ppSerieNFppField82: TppField
      FieldAlias = 'TRP_NOME'
      FieldName = 'TRP_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 81
    end
    object ppSerieNFppField83: TppField
      FieldAlias = 'TRP_CNPJ'
      FieldName = 'TRP_CNPJ'
      FieldLength = 15
      DisplayWidth = 15
      Position = 82
    end
    object ppSerieNFppField84: TppField
      FieldAlias = 'TRP_PLACA'
      FieldName = 'TRP_PLACA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 83
    end
    object ppSerieNFppField85: TppField
      FieldAlias = 'TRP_ENDERECO'
      FieldName = 'TRP_ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 84
    end
    object ppSerieNFppField86: TppField
      FieldAlias = 'TRP_CIDADE'
      FieldName = 'TRP_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 85
    end
    object ppSerieNFppField87: TppField
      FieldAlias = 'TRP_UF'
      FieldName = 'TRP_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 86
    end
    object ppSerieNFppField88: TppField
      FieldAlias = 'TRP_UF_VEICULO'
      FieldName = 'TRP_UF_VEICULO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 87
    end
    object ppSerieNFppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_FRETE'
      FieldName = 'TRP_FRETE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 88
    end
    object ppSerieNFppField90: TppField
      FieldAlias = 'TRP_IE'
      FieldName = 'TRP_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 89
    end
    object ppSerieNFppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_PESO_LIQ'
      FieldName = 'TRP_PESO_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 90
    end
    object ppSerieNFppField92: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_PESO_BRUTO'
      FieldName = 'TRP_PESO_BRUTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 91
    end
    object ppSerieNFppField93: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_PESO_QTDE'
      FieldName = 'TRP_PESO_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 92
    end
    object ppSerieNFppField94: TppField
      FieldAlias = 'TRP_ESPECIE'
      FieldName = 'TRP_ESPECIE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 93
    end
    object ppSerieNFppField95: TppField
      FieldAlias = 'TRP_MARCA'
      FieldName = 'TRP_MARCA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 94
    end
    object ppSerieNFppField96: TppField
      FieldAlias = 'TRP_NUMERO'
      FieldName = 'TRP_NUMERO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 95
    end
    object ppSerieNFppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_FRETE'
      FieldName = 'VD_VLR_FRETE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 96
    end
    object ppSerieNFppField98: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_BASE_CALC'
      FieldName = 'VD_BASE_CALC'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 97
    end
    object ppSerieNFppField99: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_BASE_CALC_SUB'
      FieldName = 'VD_BASE_CALC_SUB'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 98
    end
    object ppSerieNFppField100: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_ICM_SUB'
      FieldName = 'VD_VLR_ICM_SUB'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 99
    end
    object ppSerieNFppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_ICM'
      FieldName = 'VD_VLR_ICM'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 100
    end
    object ppSerieNFppField102: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL_PROD'
      FieldName = 'VD_TOTAL_PROD'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 101
    end
    object ppSerieNFppField103: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_SEGURO'
      FieldName = 'VD_VLR_SEGURO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 102
    end
    object ppSerieNFppField104: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_OUTRAS_DESP'
      FieldName = 'VD_VLR_OUTRAS_DESP'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 103
    end
    object ppSerieNFppField105: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_IPI'
      FieldName = 'VD_VLR_IPI'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 104
    end
    object ppSerieNFppField106: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL_NF'
      FieldName = 'VD_TOTAL_NF'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 105
    end
    object ppSerieNFppField107: TppField
      FieldAlias = 'S_VD_TOTAL_NF'
      FieldName = 'S_VD_TOTAL_NF'
      FieldLength = 30
      DisplayWidth = 30
      Position = 106
    end
    object ppSerieNFppField108: TppField
      FieldAlias = 'S_VD_VLR_IPI'
      FieldName = 'S_VD_VLR_IPI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 107
    end
    object ppSerieNFppField109: TppField
      FieldAlias = 'S_VD_VLR_OUTRAS_DESP'
      FieldName = 'S_VD_VLR_OUTRAS_DESP'
      FieldLength = 30
      DisplayWidth = 30
      Position = 108
    end
    object ppSerieNFppField110: TppField
      FieldAlias = 'S_VD_VLR_SEGURO'
      FieldName = 'S_VD_VLR_SEGURO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 109
    end
    object ppSerieNFppField111: TppField
      FieldAlias = 'S_VD_VLR_FRETE'
      FieldName = 'S_VD_VLR_FRETE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 110
    end
    object ppSerieNFppField112: TppField
      FieldAlias = 'S_VD_TOTAL_PROD'
      FieldName = 'S_VD_TOTAL_PROD'
      FieldLength = 30
      DisplayWidth = 30
      Position = 111
    end
    object ppSerieNFppField113: TppField
      FieldAlias = 'S_VD_VLR_ICM'
      FieldName = 'S_VD_VLR_ICM'
      FieldLength = 30
      DisplayWidth = 30
      Position = 112
    end
    object ppSerieNFppField114: TppField
      FieldAlias = 'S_VD_VLR_ICM_SUB'
      FieldName = 'S_VD_VLR_ICM_SUB'
      FieldLength = 30
      DisplayWidth = 30
      Position = 113
    end
    object ppSerieNFppField115: TppField
      FieldAlias = 'S_VD_BASE_CALC'
      FieldName = 'S_VD_BASE_CALC'
      FieldLength = 30
      DisplayWidth = 30
      Position = 114
    end
    object ppSerieNFppField116: TppField
      FieldAlias = 'S_VD_BASE_CALC_SUB'
      FieldName = 'S_VD_BASE_CALC_SUB'
      FieldLength = 30
      DisplayWidth = 30
      Position = 115
    end
    object ppSerieNFppField117: TppField
      FieldAlias = 'S_TOTAL_BRUTO'
      FieldName = 'S_TOTAL_BRUTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 116
    end
    object ppSerieNFppField118: TppField
      FieldAlias = 'S_DESC_ACRESC'
      FieldName = 'S_DESC_ACRESC'
      FieldLength = 30
      DisplayWidth = 30
      Position = 117
    end
    object ppSerieNFppField119: TppField
      FieldAlias = 'S_TOTAL'
      FieldName = 'S_TOTAL'
      FieldLength = 30
      DisplayWidth = 30
      Position = 118
    end
    object ppSerieNFppField120: TppField
      FieldAlias = 'S_MSG_PROX_FOLHA'
      FieldName = 'S_MSG_PROX_FOLHA'
      FieldLength = 100
      DisplayWidth = 100
      Position = 119
    end
    object ppSerieNFppField121: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_CFOP'
      FieldName = 'VD_CFOP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 120
    end
    object ppSerieNFppField122: TppField
      FieldAlias = 'VD_CFOP_DESC'
      FieldName = 'VD_CFOP_DESC'
      FieldLength = 50
      DisplayWidth = 50
      Position = 121
    end
    object ppSerieNFppField123: TppField
      FieldAlias = 'PROD_COMPLEMENTO'
      FieldName = 'PROD_COMPLEMENTO'
      FieldLength = 120
      DisplayWidth = 120
      Position = 122
    end
    object ppSerieNFppField124: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO_ITEN'
      FieldName = 'PESO_ITEN'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 123
    end
    object ppSerieNFppField125: TppField
      FieldAlias = 'VD_DATA_BASE'
      FieldName = 'VD_DATA_BASE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 124
    end
    object ppSerieNFppField126: TppField
      FieldAlias = 'SERV_COMPLEMENTO'
      FieldName = 'SERV_COMPLEMENTO'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 125
      Searchable = False
      Sortable = False
    end
    object ppSerieNFppField127: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_DESC_ITEM'
      FieldName = 'TOTAL_DESC_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 126
    end
    object ppSerieNFppField128: TppField
      FieldAlias = 'CONTATO'
      FieldName = 'CONTATO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 127
    end
    object ppSerieNFppField129: TppField
      FieldAlias = 'VD_DESC_CARREGAMENTO'
      FieldName = 'VD_DESC_CARREGAMENTO'
      FieldLength = 300
      DisplayWidth = 300
      Position = 128
    end
    object ppSerieNFppField130: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_INDICE'
      FieldName = 'COD_INDICE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 129
    end
    object ppSerieNFppField131: TppField
      FieldAlias = 'PRO_BAIRRO'
      FieldName = 'PRO_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 130
    end
    object ppSerieNFppField132: TppField
      FieldAlias = 'LOCALIZACAO_1'
      FieldName = 'LOCALIZACAO_1'
      FieldLength = 30
      DisplayWidth = 30
      Position = 131
    end
    object ppSerieNFppField133: TppField
      FieldAlias = 'LOCALIZACAO_2'
      FieldName = 'LOCALIZACAO_2'
      FieldLength = 30
      DisplayWidth = 30
      Position = 132
    end
    object ppSerieNFppField134: TppField
      FieldAlias = 'LOCALIZACAO_3'
      FieldName = 'LOCALIZACAO_3'
      FieldLength = 30
      DisplayWidth = 30
      Position = 133
    end
    object ppSerieNFppField135: TppField
      FieldAlias = 'OFC_PLACA'
      FieldName = 'OFC_PLACA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 134
    end
    object ppSerieNFppField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTR_COD_CONTRATO'
      FieldName = 'CTR_COD_CONTRATO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object ppSerieNFppField137: TppField
      FieldAlias = 'CTR_NOME_CONTRATO'
      FieldName = 'CTR_NOME_CONTRATO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 136
    end
  end
  object rptSerieNF: TppReport
    AutoStop = False
    DataPipeline = ppSerieNF
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'TV HDTV 1920x1080'
    PrinterSetup.PrinterName = 'PDFCreator'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 3000000
    PrinterSetup.mmPaperWidth = 120000
    PrinterSetup.PaperSize = 182
    Template.DatabaseSettings.DataPipeline = ppLayout
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_SERIE_NF'
    Template.FileName = 'C:\Users\Fabiano\Desktop\SerieNF.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
    DeviceType = 'Printer'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 160
    Version = '12.03'
    mmColumnWidth = 76000
    DataPipelineName = 'ppSerieNF'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 67469
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_VENDA'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 4233
        mmLeft = 26458
        mmTop = 31750
        mmWidth = 19579
        BandType = 1
      end
      object ppLabel113: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RUC:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4530
        mmLeft = 2593
        mmTop = 14817
        mmWidth = 10160
        BandType = 1
      end
      object ppLabel124: TppLabel
        UserName = 'Label124'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SHOPPING CHINA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4763
        mmLeft = 41010
        mmTop = 6085
        mmWidth = 38100
        BandType = 1
      end
      object ppLabel114: TppLabel
        UserName = 'Label114'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RESTAURANTE FOG'#195'O MINEIRO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4763
        mmLeft = 30692
        mmTop = 794
        mmWidth = 68527
        BandType = 1
      end
      object ppLabel116: TppLabel
        UserName = 'Label116'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '604384-8'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4530
        mmLeft = 13229
        mmTop = 14817
        mmWidth = 21431
        BandType = 1
      end
      object ppLabel118: TppLabel
        UserName = 'Label118'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'END:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4530
        mmLeft = 2646
        mmTop = 19050
        mmWidth = 10160
        BandType = 1
      end
      object ppLabel125: TppLabel
        UserName = 'Label125'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DR. ARTHUR FRANCIA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 13229
        mmTop = 19050
        mmWidth = 49742
        BandType = 1
      end
      object ppLabel126: TppLabel
        UserName = 'Label126'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ESQUINA C/RUA V INTERNACIONAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 13494
        mmTop = 23813
        mmWidth = 78317
        BandType = 1
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1058
        mmTop = 30692
        mmWidth = 118534
        BandType = 1
      end
      object ppLabel129: TppLabel
        UserName = 'Label129'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Timbrado:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4530
        mmLeft = 2381
        mmTop = 32015
        mmWidth = 22860
        BandType = 1
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valido Hasta: 30 DIAS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 2381
        mmTop = 36248
        mmWidth = 58738
        BandType = 1
      end
      object ppLabel131: TppLabel
        UserName = 'Label1301'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Factura Contado N.:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4530
        mmLeft = 2381
        mmTop = 41804
        mmWidth = 48260
        BandType = 1
      end
      object ppLine16: TppLine
        UserName = 'Line16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 1058
        mmTop = 47096
        mmWidth = 118534
        BandType = 1
      end
      object ppLabel132: TppLabel
        UserName = 'Label132'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Fecha y Hora: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4530
        mmLeft = 2646
        mmTop = 48948
        mmWidth = 35560
        BandType = 1
      end
      object ppVariable2: TppVariable
        UserName = 'Variable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtDateTime
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4498
        mmLeft = 38629
        mmTop = 48948
        mmWidth = 66411
        BandType = 1
      end
      object ppLine17: TppLine
        UserName = 'Line17'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 794
        mmTop = 54504
        mmWidth = 118534
        BandType = 1
      end
      object ppLabel133: TppLabel
        UserName = 'Label133'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Codigo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4826
        mmLeft = 0
        mmTop = 61585
        mmWidth = 15240
        BandType = 1
      end
      object ppLabel134: TppLabel
        UserName = 'Label134'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descripcion del Artigo Vend.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4826
        mmLeft = 18256
        mmTop = 61585
        mmWidth = 71120
        BandType = 1
      end
      object ppLine18: TppLine
        UserName = 'Line18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Style = psDot
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 529
        mmTop = 66411
        mmWidth = 118534
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 7938
      mmPrintPosition = 0
      object ppDBText15: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE'
        DataPipeline = ppSerieNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 4233
        mmLeft = 9790
        mmTop = 3704
        mmWidth = 12965
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRC_UNITARIO_LIQ'
        DataPipeline = ppSerieNF
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 4233
        mmLeft = 26194
        mmTop = 3704
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_ITEM'
        DataPipeline = ppSerieNF
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 4233
        mmLeft = 49213
        mmTop = 3704
        mmWidth = 25135
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 4233
        mmLeft = 16140
        mmTop = 0
        mmWidth = 103188
        BandType = 4
      end
      object ppLabel121: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'X'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 23283
        mmTop = 3704
        mmWidth = 2646
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OFC_PLACA'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 0
        mmWidth = 14817
        BandType = 4
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 66675
      mmPrintPosition = 0
      object SubIndice: TppSubReport
        UserName = 'SubIndice1'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppRegion1
        TraverseAllData = False
        DataPipelineName = 'ppSubIndice'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 42863
        mmWidth = 120000
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppSubIndice
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'TV HDTV 1920x1080'
          PrinterSetup.PrinterName = 'PDFCreator'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 0
          PrinterSetup.mmMarginLeft = 0
          PrinterSetup.mmMarginRight = 0
          PrinterSetup.mmMarginTop = 0
          PrinterSetup.mmPaperHeight = 3000000
          PrinterSetup.mmPaperWidth = 120000
          PrinterSetup.PaperSize = 182
          Template.DatabaseSettings.DataPipeline = ppLayout
          Template.DatabaseSettings.NameField = 'CNPJ'
          Template.DatabaseSettings.TemplateField = 'CONFIG_SERIE_NF'
          Template.SaveTo = stDatabase
          Template.Format = ftASCII
          Units = utMillimeters
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppSubIndice'
          object ppHeaderBand1: TppHeaderBand
            Visible = False
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLabel123: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Moeda '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 12
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4826
              mmLeft = 794
              mmTop = 6879
              mmWidth = 15240
              BandType = 0
            end
            object ppLine22: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Pen.Style = psDot
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 794
              mmTop = 12435
              mmWidth = 118534
              BandType = 0
            end
            object ppLabel127: TppLabel
              UserName = 'Label13'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 12
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4826
              mmLeft = 56356
              mmTop = 6879
              mmWidth = 12700
              BandType = 0
            end
            object ppLabel135: TppLabel
              UserName = 'Label14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'USO'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 12
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4826
              mmLeft = 102394
              mmTop = 6879
              mmWidth = 7620
              BandType = 0
            end
          end
          object ppDetailBand7: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText3: TppDBText
              UserName = 'DBText1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME'
              DataPipeline = ppSubIndice
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Courier New'
              Font.Size = 12
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppSubIndice'
              mmHeight = 4498
              mmLeft = 0
              mmTop = 265
              mmWidth = 36513
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TOTAL'
              DataPipeline = ppSubIndice
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Courier New'
              Font.Size = 12
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppSubIndice'
              mmHeight = 4530
              mmLeft = 46038
              mmTop = 265
              mmWidth = 22490
              BandType = 4
            end
            object myDBCheckBox1: TmyDBCheckBox
              UserName = 'DBCheckBox1'
              CheckBoxColor = clBlack
              BooleanFalse = '0'
              BooleanTrue = '1'
              DataPipeline = ppSubIndice
              DataField = 'USO'
              Transparent = True
              DataPipelineName = 'ppSubIndice'
              mmHeight = 5027
              mmLeft = 103188
              mmTop = 0
              mmWidth = 6350
              BandType = 4
            end
          end
          object ppFooterBand1: TppFooterBand
            Visible = False
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Brush.Style = bsClear
        Pen.Style = psClear
        Stretch = True
        Transparent = True
        mmHeight = 38894
        mmLeft = 0
        mmTop = 265
        mmWidth = 120121
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLabel122: TppLabel
          UserName = 'Label201'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total '#224' Pagar: '
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4498
          mmLeft = 265
          mmTop = 7938
          mmWidth = 38100
          BandType = 7
        end
        object ppDBText5: TppDBText
          UserName = 'DBText1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TOTAL'
          DataPipeline = ppSerieNF
          DisplayFormat = 'R$#,0.00;-R$#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppSerieNF'
          mmHeight = 4233
          mmLeft = 38365
          mmTop = 8202
          mmWidth = 22490
          BandType = 7
        end
        object ppLabel128: TppLabel
          UserName = 'Label1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Cantidad de Items: '
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4498
          mmLeft = 529
          mmTop = 2910
          mmWidth = 48154
          BandType = 7
        end
        object ppLine19: TppLine
          UserName = 'Line19'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 529
          mmTop = 2117
          mmWidth = 118534
          BandType = 7
        end
        object ppDBCalc1: TppDBCalc
          UserName = 'DBCalc1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'SEQUENCIA'
          DataPipeline = ppSerieNF
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'ppSerieNF'
          mmHeight = 4763
          mmLeft = 48948
          mmTop = 2646
          mmWidth = 17198
          BandType = 7
        end
        object ppLine20: TppLine
          UserName = 'Line20'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 1058
          mmTop = 14288
          mmWidth = 118534
          BandType = 7
        end
        object ppLabel115: TppLabel
          UserName = 'Label115'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Detalhe por conceptos'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4763
          mmLeft = 265
          mmTop = 15610
          mmWidth = 57415
          BandType = 7
        end
        object ppLabel117: TppLabel
          UserName = 'Label117'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Compras Exentas.....:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4498
          mmLeft = 529
          mmTop = 20638
          mmWidth = 56092
          BandType = 7
        end
        object ppLabel119: TppLabel
          UserName = 'Label119'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Compras Gravadas 5%.:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4498
          mmLeft = 529
          mmTop = 24871
          mmWidth = 58473
          BandType = 7
        end
        object ppLabel120: TppLabel
          UserName = 'Label120'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Compras Gravadas 12%:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4498
          mmLeft = 529
          mmTop = 29369
          mmWidth = 57679
          BandType = 7
        end
        object ppLine21: TppLine
          UserName = 'Line201'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 794
          mmTop = 35190
          mmWidth = 118534
          BandType = 7
        end
      end
      object ppRegion2: TppRegion
        UserName = 'Region2'
        Brush.Style = bsClear
        Pen.Style = psClear
        ShiftRelativeTo = SubIndice
        Transparent = True
        mmHeight = 14288
        mmLeft = 0
        mmTop = 48948
        mmWidth = 119592
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppLine23: TppLine
          UserName = 'Line22'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 1323
          mmTop = 52387
          mmWidth = 116152
          BandType = 7
        end
        object ppLabel136: TppLabel
          UserName = 'Label123'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Gracias por la preferencia'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Courier New'
          Font.Size = 12
          Font.Style = []
          Transparent = True
          mmHeight = 4498
          mmLeft = 19579
          mmTop = 54239
          mmWidth = 70379
          BandType = 7
        end
        object ppLine24: TppLine
          UserName = 'Line23'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Pen.Style = psDot
          Weight = 0.750000000000000000
          mmHeight = 1058
          mmLeft = 1323
          mmTop = 60325
          mmWidth = 116152
          BandType = 7
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppLayout: TppDBPipeline
    DataSource = DMCadastros.dsEdtSerieNF
    UserName = 'SerieNF1'
    Left = 216
  end
  object ppCT13: TppDBPipeline
    DataSource = DmVendas2.dsQryCT13
    UserName = 'ppCT13'
    Left = 37
    Top = 36
    object ppCT13ppField1: TppField
      FieldAlias = 'INSC_ESTADUAL'
      FieldName = 'INSC_ESTADUAL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 0
    end
    object ppCT13ppField2: TppField
      FieldAlias = 'CNPJ_PROPRIEDADE'
      FieldName = 'CNPJ_PROPRIEDADE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 1
    end
    object ppCT13ppField3: TppField
      FieldAlias = 'PECUARISTA'
      FieldName = 'PECUARISTA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppCT13ppField4: TppField
      FieldAlias = 'PROPRIEDADE'
      FieldName = 'PROPRIEDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object ppCT13ppField5: TppField
      FieldAlias = 'CIDADE_PROPRIEDADE'
      FieldName = 'CIDADE_PROPRIEDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppCT13ppField6: TppField
      FieldAlias = 'ENDERECO_PROPRIEDADE'
      FieldName = 'ENDERECO_PROPRIEDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppCT13ppField7: TppField
      FieldAlias = 'ENDERECO_PECUARISTA'
      FieldName = 'ENDERECO_PECUARISTA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object ppCT13ppField8: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppCT13ppField9: TppField
      FieldAlias = 'CELULAR'
      FieldName = 'CELULAR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 8
    end
    object ppCT13ppField10: TppField
      FieldAlias = 'CIDADE_PECUARISTA'
      FieldName = 'CIDADE_PECUARISTA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object ppCT13ppField11: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 10
    end
    object ppCT13ppField12: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppCT13ppField13: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 12
    end
    object ppCT13ppField14: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object ppCT13ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_DOSES'
      FieldName = 'NUM_DOSES'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object ppCT13ppField16: TppField
      FieldAlias = 'PARTIDA'
      FieldName = 'PARTIDA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object ppCT13ppField17: TppField
      FieldAlias = 'LABORATORIO'
      FieldName = 'LABORATORIO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object ppCT13ppField18: TppField
      FieldAlias = 'DATA_FABRICACAO'
      FieldName = 'DATA_FABRICACAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 17
    end
    object ppCT13ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppCT13ppField20: TppField
      FieldAlias = 'DATA_COMPRA'
      FieldName = 'DATA_COMPRA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 19
    end
  end
  object rptCT13: TppReport
    AutoStop = False
    DataPipeline = ppCT13
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 184600
    PrinterSetup.mmPaperWidth = 220800
    PrinterSetup.PaperSize = 256
    Template.DatabaseSettings.DataPipeline = ppLayoutCT
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_CT13'
    Template.FileName = 'D:\Updates\Manager\CT13(Pampa).rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 6
    Top = 4
    Version = '12.03'
    mmColumnWidth = 297000
    DataPipelineName = 'ppCT13'
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 112977
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSC_ESTADUAL'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 6350
        mmWidth = 56621
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_PROPRIEDADE'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 114300
        mmTop = 6350
        mmWidth = 78052
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PECUARISTA'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 14817
        mmWidth = 188384
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_PROPRIEDADE'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 23283
        mmWidth = 188384
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_PECUARISTA'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 42333
        mmTop = 29633
        mmWidth = 150548
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMAIL'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 38100
        mmWidth = 70644
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CELULAR'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 110067
        mmTop = 38100
        mmWidth = 82286
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_PECUARISTA'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 50800
        mmWidth = 99484
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UF'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 107950
        mmTop = 50800
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 139700
        mmTop = 50800
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAX'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 50800
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NUM_DOSES'
        DataPipeline = ppCT13
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 61383
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LABORATORIO'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 69850
        mmWidth = 56886
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PARTIDA'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 110067
        mmTop = 69850
        mmWidth = 28840
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_FABRICACAO'
        DataPipeline = ppCT13
        DisplayFormat = 'dd/mm/yy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 155575
        mmTop = 69850
        mmWidth = 35190
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NUM_NF'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 95250
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_COMPRA'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 110067
        mmTop = 95250
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOME DA REVENDA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 4233
        mmTop = 82550
        mmWidth = 34290
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MUNIC'#205'PIO UF - REVENDA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 110067
        mmTop = 84667
        mmWidth = 44281
        BandType = 4
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppLayoutCT: TppDBPipeline
    DataSource = DMCadastros.dsEdtCT13
    UserName = 'LayoutCT'
    Left = 68
    Top = 28
    object ppLayoutCTppField1: TppField
      FieldAlias = 'CONFIG_CT13'
      FieldName = 'CONFIG_CT13'
      FieldLength = 0
      DataType = dtMemo
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppLayoutCTppField2: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 1
    end
  end
  object ppLayoutGrafNF: TppDBPipeline
    DataSource = DataSource
    UserName = 'LayoutCT1'
    Left = 280
    object ppLayoutGrafNFppField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppLayoutGrafNFppField2: TppField
      FieldAlias = 'SERIE'
      FieldName = 'SERIE'
      FieldLength = 3
      DisplayWidth = 3
      Position = 1
    end
    object ppLayoutGrafNFppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'ULTIMO_NUMERO'
      FieldName = 'ULTIMO_NUMERO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppLayoutGrafNFppField4: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object ppLayoutGrafNFppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_NUM_DST'
      FieldName = 'NOTA_NUM_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppLayoutGrafNFppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_NUM_ALT'
      FieldName = 'NOTA_NUM_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppLayoutGrafNFppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_NUMRECIBO_DST'
      FieldName = 'NOTA_NUMRECIBO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppLayoutGrafNFppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_NUMRECIBO_ALT'
      FieldName = 'NOTA_NUMRECIBO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppLayoutGrafNFppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_ENT_SAI_DST'
      FieldName = 'NOTA_ENT_SAI_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppLayoutGrafNFppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_ENT_SAI_ALT'
      FieldName = 'NOTA_ENT_SAI_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppLayoutGrafNFppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_NATUREZA_DST'
      FieldName = 'NOTA_NATUREZA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppLayoutGrafNFppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_NATUREZA_ALT'
      FieldName = 'NOTA_NATUREZA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppLayoutGrafNFppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_CFOP_DST'
      FieldName = 'NOTA_CFOP_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppLayoutGrafNFppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_CFOP_ALT'
      FieldName = 'NOTA_CFOP_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppLayoutGrafNFppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_SUBS_TRIB_DST'
      FieldName = 'NOTA_SUBS_TRIB_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppLayoutGrafNFppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_SUBS_TRIB_ALT'
      FieldName = 'NOTA_SUBS_TRIB_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppLayoutGrafNFppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_CNDPG_DST'
      FieldName = 'NOTA_CNDPG_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppLayoutGrafNFppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_CNDPG_ALT'
      FieldName = 'NOTA_CNDPG_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppLayoutGrafNFppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_NOME_DST'
      FieldName = 'CLI_NOME_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppLayoutGrafNFppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_NOME_ALT'
      FieldName = 'CLI_NOME_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppLayoutGrafNFppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CGCCPF_DST'
      FieldName = 'CLI_CGCCPF_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppLayoutGrafNFppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CGCCPF_ALT'
      FieldName = 'CLI_CGCCPF_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppLayoutGrafNFppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_END_DST'
      FieldName = 'CLI_END_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object ppLayoutGrafNFppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_END_ALT'
      FieldName = 'CLI_END_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppLayoutGrafNFppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_BAIRRO_DST'
      FieldName = 'CLI_BAIRRO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppLayoutGrafNFppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_BAIRRO_ALT'
      FieldName = 'CLI_BAIRRO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object ppLayoutGrafNFppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CEP_DST'
      FieldName = 'CLI_CEP_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppLayoutGrafNFppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CEP_ALT'
      FieldName = 'CLI_CEP_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppLayoutGrafNFppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CID_DST'
      FieldName = 'CLI_CID_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object ppLayoutGrafNFppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CID_ALT'
      FieldName = 'CLI_CID_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppLayoutGrafNFppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_FONE_DST'
      FieldName = 'CLI_FONE_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppLayoutGrafNFppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_FONE_ALT'
      FieldName = 'CLI_FONE_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
    object ppLayoutGrafNFppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_FAX_DST'
      FieldName = 'CLI_FAX_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object ppLayoutGrafNFppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_FAX_ALT'
      FieldName = 'CLI_FAX_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppLayoutGrafNFppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_UF_DST'
      FieldName = 'CLI_UF_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object ppLayoutGrafNFppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_UF_ALT'
      FieldName = 'CLI_UF_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object ppLayoutGrafNFppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_INSCEST_DST'
      FieldName = 'CLI_INSCEST_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object ppLayoutGrafNFppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_INSCEST_ALT'
      FieldName = 'CLI_INSCEST_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
    object ppLayoutGrafNFppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DATEMIS_DST'
      FieldName = 'CLI_DATEMIS_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 38
    end
    object ppLayoutGrafNFppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DATEMIS_ALT'
      FieldName = 'CLI_DATEMIS_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 39
    end
    object ppLayoutGrafNFppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DATENTSAI_DST'
      FieldName = 'CLI_DATENTSAI_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 40
    end
    object ppLayoutGrafNFppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DATENTSAI_ALT'
      FieldName = 'CLI_DATENTSAI_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 41
    end
    object ppLayoutGrafNFppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_HORASAI_DST'
      FieldName = 'CLI_HORASAI_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 42
    end
    object ppLayoutGrafNFppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_HORASAI_ALT'
      FieldName = 'CLI_HORASAI_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 43
    end
    object ppLayoutGrafNFppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_PEDNUM_DST'
      FieldName = 'CLI_PEDNUM_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 44
    end
    object ppLayoutGrafNFppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_PEDNUM_ALT'
      FieldName = 'CLI_PEDNUM_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 45
    end
    object ppLayoutGrafNFppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_INSCMUN_DST'
      FieldName = 'CLI_INSCMUN_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 46
    end
    object ppLayoutGrafNFppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_INSCMUN_ALT'
      FieldName = 'CLI_INSCMUN_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 47
    end
    object ppLayoutGrafNFppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DUPLNUM_DST'
      FieldName = 'CLI_DUPLNUM_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 48
    end
    object ppLayoutGrafNFppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DUPLNUM_ALT'
      FieldName = 'CLI_DUPLNUM_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 49
    end
    object ppLayoutGrafNFppField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DUPLVENC_DST'
      FieldName = 'CLI_DUPLVENC_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 50
    end
    object ppLayoutGrafNFppField52: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DUPLVENC_ALT'
      FieldName = 'CLI_DUPLVENC_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 51
    end
    object ppLayoutGrafNFppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DUPLVALOR_DST'
      FieldName = 'CLI_DUPLVALOR_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 52
    end
    object ppLayoutGrafNFppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DUPLVALOR_ALT'
      FieldName = 'CLI_DUPLVALOR_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 53
    end
    object ppLayoutGrafNFppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_COD_DST'
      FieldName = 'PROD_COD_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 54
    end
    object ppLayoutGrafNFppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_COD_ALT'
      FieldName = 'PROD_COD_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 55
    end
    object ppLayoutGrafNFppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_PROD_DST'
      FieldName = 'PROD_PROD_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 56
    end
    object ppLayoutGrafNFppField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_PROD_ALT'
      FieldName = 'PROD_PROD_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 57
    end
    object ppLayoutGrafNFppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_CF_DST'
      FieldName = 'PROD_CF_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 58
    end
    object ppLayoutGrafNFppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_CF_ALT'
      FieldName = 'PROD_CF_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 59
    end
    object ppLayoutGrafNFppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_SITTRIB_DST'
      FieldName = 'PROD_SITTRIB_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object ppLayoutGrafNFppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_SITTRIB_ALT'
      FieldName = 'PROD_SITTRIB_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object ppLayoutGrafNFppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_UNIDADE_DST'
      FieldName = 'PROD_UNIDADE_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object ppLayoutGrafNFppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_UNIDADE_ALT'
      FieldName = 'PROD_UNIDADE_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object ppLayoutGrafNFppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_QUANT_DST'
      FieldName = 'PROD_QUANT_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 64
    end
    object ppLayoutGrafNFppField66: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_QUANT_ALT'
      FieldName = 'PROD_QUANT_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 65
    end
    object ppLayoutGrafNFppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_VALORUNIT_DST'
      FieldName = 'PROD_VALORUNIT_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 66
    end
    object ppLayoutGrafNFppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_VALORUNIT_ALT'
      FieldName = 'PROD_VALORUNIT_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 67
    end
    object ppLayoutGrafNFppField69: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_VALORTOT_DST'
      FieldName = 'PROD_VALORTOT_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 68
    end
    object ppLayoutGrafNFppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_VALORTOT_ALT'
      FieldName = 'PROD_VALORTOT_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 69
    end
    object ppLayoutGrafNFppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_ICMS_DST'
      FieldName = 'PROD_ICMS_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 70
    end
    object ppLayoutGrafNFppField72: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_ICMS_ALT'
      FieldName = 'PROD_ICMS_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 71
    end
    object ppLayoutGrafNFppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_IPI_DST'
      FieldName = 'PROD_IPI_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 72
    end
    object ppLayoutGrafNFppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_IPI_ALT'
      FieldName = 'PROD_IPI_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object ppLayoutGrafNFppField75: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_VALORIPI_DST'
      FieldName = 'PROD_VALORIPI_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 74
    end
    object ppLayoutGrafNFppField76: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_VALORIPI_ALT'
      FieldName = 'PROD_VALORIPI_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 75
    end
    object ppLayoutGrafNFppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_BASEICMS_DST'
      FieldName = 'FEC_BASEICMS_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object ppLayoutGrafNFppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_BASEICMS_ALT'
      FieldName = 'FEC_BASEICMS_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 77
    end
    object ppLayoutGrafNFppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORFRETE_DST'
      FieldName = 'FEC_VALORFRETE_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 78
    end
    object ppLayoutGrafNFppField80: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORFRETE_ALT'
      FieldName = 'FEC_VALORFRETE_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 79
    end
    object ppLayoutGrafNFppField81: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORICMS_DST'
      FieldName = 'FEC_VALORICMS_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 80
    end
    object ppLayoutGrafNFppField82: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORICMS_ALT'
      FieldName = 'FEC_VALORICMS_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 81
    end
    object ppLayoutGrafNFppField83: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORSEGURO_DST'
      FieldName = 'FEC_VALORSEGURO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 82
    end
    object ppLayoutGrafNFppField84: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORSEGURO_ALT'
      FieldName = 'FEC_VALORSEGURO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 83
    end
    object ppLayoutGrafNFppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_BASECALCICMS_DST'
      FieldName = 'FEC_BASECALCICMS_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 84
    end
    object ppLayoutGrafNFppField86: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_BASECALCICMS_ALT'
      FieldName = 'FEC_BASECALCICMS_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 85
    end
    object ppLayoutGrafNFppField87: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_DESPESAS_DST'
      FieldName = 'FEC_DESPESAS_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 86
    end
    object ppLayoutGrafNFppField88: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_DESPESAS_ALT'
      FieldName = 'FEC_DESPESAS_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 87
    end
    object ppLayoutGrafNFppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORICMSSUB_DST'
      FieldName = 'FEC_VALORICMSSUB_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 88
    end
    object ppLayoutGrafNFppField90: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORICMSSUB_ALT'
      FieldName = 'FEC_VALORICMSSUB_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 89
    end
    object ppLayoutGrafNFppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_IPI_DST'
      FieldName = 'FEC_IPI_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 90
    end
    object ppLayoutGrafNFppField92: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_IPI_ALT'
      FieldName = 'FEC_IPI_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 91
    end
    object ppLayoutGrafNFppField93: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORTOTAL_DST'
      FieldName = 'FEC_VALORTOTAL_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 92
    end
    object ppLayoutGrafNFppField94: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_ISS_DST'
      FieldName = 'FEC_ISS_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 93
    end
    object ppLayoutGrafNFppField95: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORTOTAL_ALT'
      FieldName = 'FEC_VALORTOTAL_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 94
    end
    object ppLayoutGrafNFppField96: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_ISS_ALT'
      FieldName = 'FEC_ISS_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 95
    end
    object ppLayoutGrafNFppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORNOTA_DST'
      FieldName = 'FEC_VALORNOTA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 96
    end
    object ppLayoutGrafNFppField98: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORNOTA_ALT'
      FieldName = 'FEC_VALORNOTA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 97
    end
    object ppLayoutGrafNFppField99: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_NOME_DST'
      FieldName = 'TRANS_NOME_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 98
    end
    object ppLayoutGrafNFppField100: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_NOME_ALT'
      FieldName = 'TRANS_NOME_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 99
    end
    object ppLayoutGrafNFppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_END_DST'
      FieldName = 'TRANS_END_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 100
    end
    object ppLayoutGrafNFppField102: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_END_ALT'
      FieldName = 'TRANS_END_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 101
    end
    object ppLayoutGrafNFppField103: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_QUANTIDADE_DST'
      FieldName = 'TRANS_QUANTIDADE_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 102
    end
    object ppLayoutGrafNFppField104: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_QUANTIDADE_ALT'
      FieldName = 'TRANS_QUANTIDADE_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 103
    end
    object ppLayoutGrafNFppField105: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_ESPECIE_DST'
      FieldName = 'TRANS_ESPECIE_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 104
    end
    object ppLayoutGrafNFppField106: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_ESPECIE_ALT'
      FieldName = 'TRANS_ESPECIE_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 105
    end
    object ppLayoutGrafNFppField107: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_MARCA_DST'
      FieldName = 'TRANS_MARCA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 106
    end
    object ppLayoutGrafNFppField108: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_MARCA_ALT'
      FieldName = 'TRANS_MARCA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 107
    end
    object ppLayoutGrafNFppField109: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_FRETECONTA_DST'
      FieldName = 'TRANS_FRETECONTA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 108
    end
    object ppLayoutGrafNFppField110: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_FRETECONTA_ALT'
      FieldName = 'TRANS_FRETECONTA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 109
    end
    object ppLayoutGrafNFppField111: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_CID_DST'
      FieldName = 'TRANS_CID_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 110
    end
    object ppLayoutGrafNFppField112: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_CID_ALT'
      FieldName = 'TRANS_CID_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 111
    end
    object ppLayoutGrafNFppField113: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_NUMERO_DST'
      FieldName = 'TRANS_NUMERO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 112
    end
    object ppLayoutGrafNFppField114: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_NUMERO_ALT'
      FieldName = 'TRANS_NUMERO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 113
    end
    object ppLayoutGrafNFppField115: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_PLACA_DST'
      FieldName = 'TRANS_PLACA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 114
    end
    object ppLayoutGrafNFppField116: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_PLACA_ALT'
      FieldName = 'TRANS_PLACA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 115
    end
    object ppLayoutGrafNFppField117: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_UFVEI_DST'
      FieldName = 'TRANS_UFVEI_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 116
    end
    object ppLayoutGrafNFppField118: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_UFVEIALT'
      FieldName = 'TRANS_UFVEIALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 117
    end
    object ppLayoutGrafNFppField119: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_UF_DST'
      FieldName = 'TRANS_UF_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 118
    end
    object ppLayoutGrafNFppField120: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_UF_ALT'
      FieldName = 'TRANS_UF_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 119
    end
    object ppLayoutGrafNFppField121: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_CGCCPF_DST'
      FieldName = 'TRANS_CGCCPF_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 120
    end
    object ppLayoutGrafNFppField122: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_CGCCPF_ALT'
      FieldName = 'TRANS_CGCCPF_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 121
    end
    object ppLayoutGrafNFppField123: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_INSCEST_DST'
      FieldName = 'TRANS_INSCEST_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 122
    end
    object ppLayoutGrafNFppField124: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_INSCEST_ALT'
      FieldName = 'TRANS_INSCEST_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 123
    end
    object ppLayoutGrafNFppField125: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_PESBRT_DST'
      FieldName = 'TRANS_PESBRT_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 124
    end
    object ppLayoutGrafNFppField126: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_PESOBRT_ALT'
      FieldName = 'TRANS_PESOBRT_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 125
    end
    object ppLayoutGrafNFppField127: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_PESOLIQ_DST'
      FieldName = 'TRANS_PESOLIQ_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 126
    end
    object ppLayoutGrafNFppField128: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_PESOLIQ_ALT'
      FieldName = 'TRANS_PESOLIQ_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 127
    end
    object ppLayoutGrafNFppField129: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_OBS_DST'
      FieldName = 'TRANS_OBS_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 128
    end
    object ppLayoutGrafNFppField130: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRANS_OBS_ALT'
      FieldName = 'TRANS_OBS_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 129
    end
    object ppLayoutGrafNFppField131: TppField
      Alignment = taRightJustify
      FieldAlias = 'IMPRESSORA_PULO'
      FieldName = 'IMPRESSORA_PULO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 130
    end
    object ppLayoutGrafNFppField132: TppField
      FieldAlias = 'IMPRESSORA_LPP'
      FieldName = 'IMPRESSORA_LPP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 131
    end
    object ppLayoutGrafNFppField133: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRODUTOSNOTA'
      FieldName = 'PRODUTOSNOTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 132
    end
    object ppLayoutGrafNFppField134: TppField
      FieldAlias = 'LOCALDUPLICATAS'
      FieldName = 'LOCALDUPLICATAS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 133
    end
    object ppLayoutGrafNFppField135: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUMERODELINHASDANOTA'
      FieldName = 'NUMERODELINHASDANOTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 134
    end
    object ppLayoutGrafNFppField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_DESC_DST'
      FieldName = 'PROD_DESC_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object ppLayoutGrafNFppField137: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_DESC_ALT'
      FieldName = 'PROD_DESC_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 136
    end
    object ppLayoutGrafNFppField138: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA_ANO_ALT'
      FieldName = 'DATA_ANO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 137
    end
    object ppLayoutGrafNFppField139: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA_ANO_DST'
      FieldName = 'DATA_ANO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 138
    end
    object ppLayoutGrafNFppField140: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA_DIA_ALT'
      FieldName = 'DATA_DIA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 139
    end
    object ppLayoutGrafNFppField141: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA_DIA_DST'
      FieldName = 'DATA_DIA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 140
    end
    object ppLayoutGrafNFppField142: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA_MES_ALT'
      FieldName = 'DATA_MES_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 141
    end
    object ppLayoutGrafNFppField143: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA_MES_DST'
      FieldName = 'DATA_MES_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 142
    end
    object ppLayoutGrafNFppField144: TppField
      Alignment = taRightJustify
      FieldAlias = 'OBS_ALT'
      FieldName = 'OBS_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 143
    end
    object ppLayoutGrafNFppField145: TppField
      Alignment = taRightJustify
      FieldAlias = 'OBS_DST'
      FieldName = 'OBS_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 144
    end
    object ppLayoutGrafNFppField146: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_VENDEDOR_DST'
      FieldName = 'NOTA_VENDEDOR_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 145
    end
    object ppLayoutGrafNFppField147: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_VENDEDOR_ALT'
      FieldName = 'NOTA_VENDEDOR_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 146
    end
    object ppLayoutGrafNFppField148: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_ECF_DST'
      FieldName = 'NOTA_ECF_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 147
    end
    object ppLayoutGrafNFppField149: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_ECF_ALT'
      FieldName = 'NOTA_ECF_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 148
    end
    object ppLayoutGrafNFppField150: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_DESCONTO_DST'
      FieldName = 'NOTA_DESCONTO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 149
    end
    object ppLayoutGrafNFppField151: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_DESCONTO_ALT'
      FieldName = 'NOTA_DESCONTO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 150
    end
    object ppLayoutGrafNFppField152: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_INDCOMPL_DST'
      FieldName = 'NOTA_INDCOMPL_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 151
    end
    object ppLayoutGrafNFppField153: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_INFCOMPL_ALT'
      FieldName = 'NOTA_INFCOMPL_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 152
    end
    object ppLayoutGrafNFppField154: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DUPLLARGURA_COLUNA'
      FieldName = 'CLI_DUPLLARGURA_COLUNA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 153
    end
    object ppLayoutGrafNFppField155: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DUPLNUM_COLUNA'
      FieldName = 'CLI_DUPLNUM_COLUNA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 154
    end
    object ppLayoutGrafNFppField156: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_MSGNAT_DST'
      FieldName = 'NOTA_MSGNAT_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 155
    end
    object ppLayoutGrafNFppField157: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_MSGNAT_ALT'
      FieldName = 'NOTA_MSGNAT_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 156
    end
    object ppLayoutGrafNFppField158: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_NUMRDP_DST'
      FieldName = 'NOTA_NUMRDP_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 157
    end
    object ppLayoutGrafNFppField159: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_NUMRDP_ALT'
      FieldName = 'NOTA_NUMRDP_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 158
    end
    object ppLayoutGrafNFppField160: TppField
      FieldAlias = 'PORTA_IMPRESSAO'
      FieldName = 'PORTA_IMPRESSAO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 159
    end
    object ppLayoutGrafNFppField161: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_DESCONTO_ALT2'
      FieldName = 'NOTA_DESCONTO_ALT2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 160
    end
    object ppLayoutGrafNFppField162: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_DESCONTO_DST2'
      FieldName = 'NOTA_DESCONTO_DST2'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 161
    end
    object ppLayoutGrafNFppField163: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_QNTD_UNID_ALT'
      FieldName = 'PROD_QNTD_UNID_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 162
    end
    object ppLayoutGrafNFppField164: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_QNTD_UNID_DST'
      FieldName = 'PROD_QNTD_UNID_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 163
    end
    object ppLayoutGrafNFppField165: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_TIPO_UNID_ALT'
      FieldName = 'PROD_TIPO_UNID_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 164
    end
    object ppLayoutGrafNFppField166: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_TIPO_UNID_DST'
      FieldName = 'PROD_TIPO_UNID_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 165
    end
    object ppLayoutGrafNFppField167: TppField
      FieldAlias = 'MODELO'
      FieldName = 'MODELO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 166
    end
    object ppLayoutGrafNFppField168: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_IRRF_DST'
      FieldName = 'NOTA_IRRF_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 167
    end
    object ppLayoutGrafNFppField169: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_IRRF_ALT'
      FieldName = 'NOTA_IRRF_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 168
    end
    object ppLayoutGrafNFppField170: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_INSS_DST'
      FieldName = 'NOTA_INSS_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 169
    end
    object ppLayoutGrafNFppField171: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_INSS_ALT'
      FieldName = 'NOTA_INSS_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 170
    end
    object ppLayoutGrafNFppField172: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_PIS_DST'
      FieldName = 'NOTA_PIS_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 171
    end
    object ppLayoutGrafNFppField173: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_PIS_ALT'
      FieldName = 'NOTA_PIS_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 172
    end
    object ppLayoutGrafNFppField174: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_ISS_SUBST_DST'
      FieldName = 'NOTA_ISS_SUBST_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 173
    end
    object ppLayoutGrafNFppField175: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_ISS_SUBST_ALT'
      FieldName = 'NOTA_ISS_SUBST_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 174
    end
    object ppLayoutGrafNFppField176: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_TAM_NOME'
      FieldName = 'PROD_TAM_NOME'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 175
    end
    object ppLayoutGrafNFppField177: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_NOME_RODAPE_DST'
      FieldName = 'CLI_NOME_RODAPE_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 176
    end
    object ppLayoutGrafNFppField178: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_NOME_RODAPE_ALT'
      FieldName = 'CLI_NOME_RODAPE_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 177
    end
    object ppLayoutGrafNFppField179: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DATENTSAI_RODAPE_DST'
      FieldName = 'CLI_DATENTSAI_RODAPE_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 178
    end
    object ppLayoutGrafNFppField180: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_DATENTSAI_RODAPE_ALT'
      FieldName = 'CLI_DATENTSAI_RODAPE_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 179
    end
    object ppLayoutGrafNFppField181: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORNOTA_RODAPE_ALT'
      FieldName = 'FEC_VALORNOTA_RODAPE_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 180
    end
    object ppLayoutGrafNFppField182: TppField
      Alignment = taRightJustify
      FieldAlias = 'FEC_VALORNOTA_RODAPE_DST'
      FieldName = 'FEC_VALORNOTA_RODAPE_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 181
    end
    object ppLayoutGrafNFppField183: TppField
      FieldAlias = 'NOTA_DUPLICA_NUMERO'
      FieldName = 'NOTA_DUPLICA_NUMERO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 182
    end
    object ppLayoutGrafNFppField184: TppField
      FieldAlias = 'NF_GRAFICA'
      FieldName = 'NF_GRAFICA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 183
    end
    object ppLayoutGrafNFppField185: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_EMPRESA_ALT'
      FieldName = 'NOTA_EMPRESA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 184
    end
    object ppLayoutGrafNFppField186: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_EMPRESA_DST'
      FieldName = 'NOTA_EMPRESA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 185
    end
    object ppLayoutGrafNFppField187: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_MARCA_ALT'
      FieldName = 'PROD_MARCA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 186
    end
    object ppLayoutGrafNFppField188: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_MARCA_DST'
      FieldName = 'PROD_MARCA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 187
    end
    object ppLayoutGrafNFppField189: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_LOTE_ALT'
      FieldName = 'PROD_LOTE_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 188
    end
    object ppLayoutGrafNFppField190: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_LOTE_DST'
      FieldName = 'PROD_LOTE_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 189
    end
    object ppLayoutGrafNFppField191: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_EMPRESA_UF_ALT'
      FieldName = 'NOTA_EMPRESA_UF_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 190
    end
    object ppLayoutGrafNFppField192: TppField
      Alignment = taRightJustify
      FieldAlias = 'NOTA_EMPRESA_UF_DST'
      FieldName = 'NOTA_EMPRESA_UF_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 191
    end
    object ppLayoutGrafNFppField193: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CID_PROP_DST'
      FieldName = 'CLI_CID_PROP_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 192
    end
    object ppLayoutGrafNFppField194: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CID_PROP_ALT'
      FieldName = 'CLI_CID_PROP_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 193
    end
    object ppLayoutGrafNFppField195: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_UF_PROP_DST'
      FieldName = 'CLI_UF_PROP_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 194
    end
    object ppLayoutGrafNFppField196: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_UF_PROP_ALT'
      FieldName = 'CLI_UF_PROP_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 195
    end
    object ppLayoutGrafNFppField197: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_LOTE_VALIDADE_ALT'
      FieldName = 'PROD_LOTE_VALIDADE_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 196
    end
    object ppLayoutGrafNFppField198: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROD_LOTE_VALIDADE_DST'
      FieldName = 'PROD_LOTE_VALIDADE_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 197
    end
    object ppLayoutGrafNFppField199: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_END_PROP_ALT'
      FieldName = 'CLI_END_PROP_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 198
    end
    object ppLayoutGrafNFppField200: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_END_PROP_DST'
      FieldName = 'CLI_END_PROP_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 199
    end
    object ppLayoutGrafNFppField201: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_NOME_PROP_ALT'
      FieldName = 'CLI_NOME_PROP_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 200
    end
    object ppLayoutGrafNFppField202: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_NOME_PROP_DST'
      FieldName = 'CLI_NOME_PROP_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 201
    end
    object ppLayoutGrafNFppField203: TppField
      FieldAlias = 'NFSERV_GRAFICA'
      FieldName = 'NFSERV_GRAFICA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 202
    end
    object ppLayoutGrafNFppField204: TppField
      FieldAlias = 'NF_GRAFICA2'
      FieldName = 'NF_GRAFICA2'
      FieldLength = 1
      DisplayWidth = 1
      Position = 203
    end
    object ppLayoutGrafNFppField205: TppField
      FieldAlias = 'CONFIG_NF_GRAF'
      FieldName = 'CONFIG_NF_GRAF'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 204
      Searchable = False
      Sortable = False
    end
    object ppLayoutGrafNFppField206: TppField
      FieldAlias = 'INDICE'
      FieldName = 'INDICE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 205
    end
  end
  object rptGrafNF: TppReport
    AutoStop = False
    DataPipeline = ppGrafNF
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 1000
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 2000
    PrinterSetup.mmPaperHeight = 280000
    PrinterSetup.mmPaperWidth = 215000
    PrinterSetup.PaperSize = 1
    Template.DatabaseSettings.DataPipeline = ppLayoutGrafNF
    Template.DatabaseSettings.NameField = 'INDICE'
    Template.DatabaseSettings.TemplateField = 'CONFIG_NF_GRAF'
    Template.FileName = 'C:\Documents and Settings\Marcel Alves\Desktop\NFGrafica.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 120
    Top = 32
    Version = '12.03'
    mmColumnWidth = 213000
    DataPipelineName = 'ppGrafNF'
    object ppHeaderBand3: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 91811
      mmPrintPosition = 0
      object ppDBText60: TppDBText
        UserName = 'NomeNatureza'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_NATUREZA'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 6085
        mmTop = 29898
        mmWidth = 73290
        BandType = 0
      end
      object ppDBText62: TppDBText
        UserName = 'RazaoSocial'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_NOME'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 6085
        mmTop = 43127
        mmWidth = 126471
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_ENDERECO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 6085
        mmTop = 52123
        mmWidth = 101336
        BandType = 0
      end
      object ppDBText81: TppDBText
        UserName = 'CodCFOP'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_CFOP'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 79904
        mmTop = 29898
        mmWidth = 9525
        BandType = 0
      end
      object ppDBText63: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 107950
        mmTop = 52123
        mmWidth = 41540
        BandType = 0
      end
      object ppDBText82: TppDBText
        UserName = 'DBText82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CEP'
        DataPipeline = ppGrafNF
        DisplayFormat = '00000\-9999;0; '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 150019
        mmTop = 52123
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText83: TppDBText
        UserName = 'DBText83'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_DT_SAIDA'
        DataPipeline = ppGrafNF
        DisplayFormat = 'dd/mm/yyyy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 176213
        mmTop = 52123
        mmWidth = 34131
        BandType = 0
      end
      object ppDBText84: TppDBText
        UserName = 'DBText84'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_DT_EMISSAO'
        DataPipeline = ppGrafNF
        DisplayFormat = 'dd/mm/yyyy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 176213
        mmTop = 43127
        mmWidth = 34131
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText68'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CIDADE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 60590
        mmWidth = 78317
        BandType = 0
      end
      object ppDBText69: TppDBText
        UserName = 'DBText69'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_FONE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 84931
        mmTop = 60590
        mmWidth = 38629
        BandType = 0
      end
      object ppDBText70: TppDBText
        UserName = 'DBText70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_IE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 132292
        mmTop = 60590
        mmWidth = 40481
        BandType = 0
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo4'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = True
        DataField = 'PC_PARCELAMENTO'
        DataPipeline = ppGrafNF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 11113
        mmLeft = 6085
        mmTop = 70904
        mmWidth = 203994
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText72: TppDBText
        UserName = 'DBText701'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_IE_SUB'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 89959
        mmTop = 29898
        mmWidth = 42598
        BandType = 0
      end
      object ppDBText73: TppDBText
        UserName = 'DBText108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CNPJ'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 133086
        mmTop = 43127
        mmWidth = 39688
        BandType = 0
      end
      object ppDBText74: TppDBText
        UserName = 'DBText702'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_UF'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 124090
        mmTop = 60590
        mmWidth = 7673
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtTime
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        mmHeight = 3969
        mmLeft = 176213
        mmTop = 60590
        mmWidth = 34131
        BandType = 0
      end
      object ppDBText85: TppDBText
        UserName = 'DBText85'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_SAIDA'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 5027
        mmLeft = 39688
        mmTop = 0
        mmWidth = 4233
        BandType = 0
      end
      object ppDBText75: TppDBText
        UserName = 'DBText110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_ENTRADA'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4995
        mmLeft = 154252
        mmTop = 7144
        mmWidth = 4233
        BandType = 0
      end
      object ppDBText76: TppDBText
        UserName = 'DBText1101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NUM_NF'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 197644
        mmTop = 0
        mmWidth = 13229
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 8202
      mmPrintPosition = 0
      object ppDBText77: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_CODIGO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText78: TppDBText
        UserName = 'DBText72'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_SIT_TRIB'
        DataPipeline = ppGrafNF
        DisplayFormat = '999999999'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 130704
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText79: TppDBText
        UserName = 'DBText73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_UNIDADE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 138113
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText74'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_QTDE'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 142875
        mmTop = 0
        mmWidth = 12435
        BandType = 4
      end
      object ppDBText86: TppDBText
        UserName = 'DBText76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_VLR_UNIT'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 0
        mmWidth = 20638
        BandType = 4
      end
      object ppDBText87: TppDBText
        UserName = 'DBText77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_VLR_TTL_ITEM'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 178859
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText88: TppDBText
        UserName = 'DBText78'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_ALIQ_ICM'
        DataPipeline = ppGrafNF
        DisplayFormat = '99'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 203994
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo3'
        ForceJustifyLastLine = True
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = True
        DataField = 'PRD_NOME'
        DataPipeline = ppGrafNF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 30956
        mmTop = 0
        mmWidth = 97631
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo5: TppDBMemo
        UserName = 'DBMemo5'
        ForceJustifyLastLine = True
        SaveOrder = 1
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = True
        DataField = 'PRD_PRODUTO_LOTE'
        DataPipeline = ppGrafNF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 3969
        mmWidth = 122502
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 133086
      mmPrintPosition = 0
      object ppDBText89: TppDBText
        UserName = 'DBText79'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_BASE_CALC'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 20902
        mmWidth = 37042
        BandType = 8
      end
      object ppDBText90: TppDBText
        UserName = 'DBText80'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_VLR_ICM'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 20902
        mmWidth = 38100
        BandType = 8
      end
      object ppDBText91: TppDBText
        UserName = 'DBText801'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_VLR_ICM_SUB'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 124884
        mmTop = 20902
        mmWidth = 38629
        BandType = 8
      end
      object ppDBText92: TppDBText
        UserName = 'DBText87'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_BASE_CALC_SUB'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 84931
        mmTop = 20902
        mmWidth = 38100
        BandType = 8
      end
      object ppDBText93: TppDBText
        UserName = 'DBText88'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_TOTAL_PROD'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 165100
        mmTop = 20902
        mmWidth = 40746
        BandType = 8
      end
      object ppDBText94: TppDBText
        UserName = 'DBText89'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_VLR_FRETE'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 29104
        mmWidth = 37042
        BandType = 8
      end
      object ppDBText95: TppDBText
        UserName = 'DBText802'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_VLR_SEGURO'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 44979
        mmTop = 29104
        mmWidth = 38100
        BandType = 8
      end
      object ppDBText96: TppDBText
        UserName = 'DBText91'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_VLR_IPI'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 124884
        mmTop = 29104
        mmWidth = 38365
        BandType = 8
      end
      object ppDBText97: TppDBText
        UserName = 'DBText92'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_VLR_OUTRAS_DESP'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 84931
        mmTop = 29104
        mmWidth = 38100
        BandType = 8
      end
      object ppDBText98: TppDBText
        UserName = 'DBText93'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_TOTAL_NF'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 165100
        mmTop = 29104
        mmWidth = 40746
        BandType = 8
      end
      object ppDBText99: TppDBText
        UserName = 'RazaoSocial1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_NOME'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 43127
        mmWidth = 103981
        BandType = 8
      end
      object ppDBText100: TppDBText
        UserName = 'DBText95'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_FRETE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 128588
        mmTop = 43127
        mmWidth = 3969
        BandType = 8
      end
      object ppDBText101: TppDBText
        UserName = 'DBText96'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_PLACA'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 137848
        mmTop = 43127
        mmWidth = 22490
        BandType = 8
      end
      object ppDBText102: TppDBText
        UserName = 'DBText97'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_UF_VEICULO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 162190
        mmTop = 43127
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText103: TppDBText
        UserName = 'DBText98'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_CNPJ'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 43127
        mmWidth = 34396
        BandType = 8
      end
      object ppDBText104: TppDBText
        UserName = 'DBText99'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_ENDERECO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 51065
        mmWidth = 103981
        BandType = 8
      end
      object ppDBText105: TppDBText
        UserName = 'DBText100'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_CIDADE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 111919
        mmTop = 51065
        mmWidth = 48419
        BandType = 8
      end
      object ppDBText106: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_UF'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 162190
        mmTop = 51065
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText156: TppDBText
        UserName = 'DBText102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_IE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 170127
        mmTop = 51065
        mmWidth = 34396
        BandType = 8
      end
      object ppDBText157: TppDBText
        UserName = 'DBText103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_ESPECIE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 37042
        mmTop = 60061
        mmWidth = 35719
        BandType = 8
      end
      object ppDBText158: TppDBText
        UserName = 'DBText104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_PESO_LIQ'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 177007
        mmTop = 60061
        mmWidth = 27252
        BandType = 8
      end
      object ppDBText159: TppDBText
        UserName = 'DBText105'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_PESO_BRUTO'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 144992
        mmTop = 60061
        mmWidth = 30163
        BandType = 8
      end
      object ppDBText160: TppDBText
        UserName = 'DBText106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_PESO_QTDE'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 60061
        mmWidth = 29104
        BandType = 8
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'VD_OBS'
        DataPipeline = ppGrafNF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 15610
        mmLeft = 6085
        mmTop = 79640
        mmWidth = 97896
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText161: TppDBText
        UserName = 'DBText107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_DESCONTO'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 178859
        mmTop = 7938
        mmWidth = 23019
        BandType = 8
      end
      object ppDBText162: TppDBText
        UserName = 'DBText112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NUM_NF'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 185209
        mmTop = 110067
        mmWidth = 14552
        BandType = 8
      end
      object ppDBText163: TppDBText
        UserName = 'DBText114'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ICM_LBL_TTL_PROD'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 0
        mmWidth = 32279
        BandType = 8
      end
      object ppDBText164: TppDBText
        UserName = 'DBText115'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ICM_LBL_TTL_DESCTO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 3969
        mmWidth = 32279
        BandType = 8
      end
      object ppDBText165: TppDBText
        UserName = 'DBText116'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ICM_LBL_TTL_LIQ'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 6085
        mmTop = 7938
        mmWidth = 32279
        BandType = 8
      end
      object ppDBText166: TppDBText
        UserName = 'DBText117'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ICM_TTL_LIQ'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 39688
        mmTop = 7938
        mmWidth = 37571
        BandType = 8
      end
      object ppDBText167: TppDBText
        UserName = 'DBText118'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ICM_TTL_DESCTO'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 39688
        mmTop = 3969
        mmWidth = 37571
        BandType = 8
      end
      object ppDBText168: TppDBText
        UserName = 'DBText119'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ICM_TTL_PROD'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 39688
        mmTop = 0
        mmWidth = 37571
        BandType = 8
      end
      object ppLabel110: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Desconto:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 156898
        mmTop = 7938
        mmWidth = 20638
        BandType = 8
      end
      object ppDBMemo7: TppDBMemo
        UserName = 'DBMemo7'
        SaveOrder = 1
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'DESC_ICM_MSG_1'
        DataPipeline = ppGrafNF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 7938
        mmLeft = 6085
        mmTop = 71967
        mmWidth = 97896
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText169: TppDBText
        UserName = 'DBText113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_MARCA'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 74613
        mmTop = 60061
        mmWidth = 35454
        BandType = 8
      end
      object ppDBText170: TppDBText
        UserName = 'DBText120'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_NUMERO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 111919
        mmTop = 60061
        mmWidth = 31221
        BandType = 8
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        SaveOrder = 2
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Memo1'
        CharWrap = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Lines.Strings = (
          
            '**************************      **************************      ' +
            '**************************      **************************      ' +
            '**************************      '
          ''
          
            '**************************      **************************      ' +
            '**************************      **************************      ' +
            '**************************      '
          ''
          ''
          
            '****************************************************************' +
            '**************                   ***     ****************    ***' +
            '*  ************************      '
          ''
          
            '****************************************************************' +
            '**************    ***********************************    ****  *' +
            '***********************      '
          ''
          
            '**********************   *************************   ***********' +
            '***************    **********************   ********************' +
            '**   *******************')
        Transparent = True
        mmHeight = 46302
        mmLeft = 5821
        mmTop = 22225
        mmWidth = 200555
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppGrafNF: TppDBPipeline
    DataSource = DmVendas2.dsQryGrafNF
    UserName = 'GrafNF'
    Left = 152
    Top = 24
    object ppGrafNFppField1: TppField
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppGrafNFppField2: TppField
      FieldAlias = 'CLI_PROPRIEDADE'
      FieldName = 'CLI_PROPRIEDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppGrafNFppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppGrafNFppField4: TppField
      FieldAlias = 'CLI_IE_SUB'
      FieldName = 'CLI_IE_SUB'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppGrafNFppField5: TppField
      FieldAlias = 'CLI_IE'
      FieldName = 'CLI_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object ppGrafNFppField6: TppField
      FieldAlias = 'CLI_CNPJ'
      FieldName = 'CLI_CNPJ'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppGrafNFppField7: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object ppGrafNFppField8: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object ppGrafNFppField9: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object ppGrafNFppField10: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppGrafNFppField11: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 10
    end
    object ppGrafNFppField12: TppField
      FieldAlias = 'VD_NATUREZA'
      FieldName = 'VD_NATUREZA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object ppGrafNFppField13: TppField
      FieldAlias = 'VD_MSG_ECF'
      FieldName = 'VD_MSG_ECF'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppGrafNFppField14: TppField
      FieldAlias = 'VD_OBS'
      FieldName = 'VD_OBS'
      FieldLength = 200
      DisplayWidth = 200
      Position = 13
    end
    object ppGrafNFppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_CFOP'
      FieldName = 'VD_CFOP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppGrafNFppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_CODIGO'
      FieldName = 'VD_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppGrafNFppField17: TppField
      FieldAlias = 'VD_DT_EMISSAO'
      FieldName = 'VD_DT_EMISSAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 16
    end
    object ppGrafNFppField18: TppField
      FieldAlias = 'VD_DT_SAIDA'
      FieldName = 'VD_DT_SAIDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 17
    end
    object ppGrafNFppField19: TppField
      FieldAlias = 'VD_HORA_SAIDA'
      FieldName = 'VD_HORA_SAIDA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 18
    end
    object ppGrafNFppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL_PROD'
      FieldName = 'VD_TOTAL_PROD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppGrafNFppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL_LIQUIDO'
      FieldName = 'VD_TOTAL_LIQUIDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppGrafNFppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_ICMS_DEBITADO'
      FieldName = 'VD_ICMS_DEBITADO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object ppGrafNFppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL_NF'
      FieldName = 'VD_TOTAL_NF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppGrafNFppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_DESCONTO'
      FieldName = 'VD_DESCONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object ppGrafNFppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_FRETE'
      FieldName = 'VD_VLR_FRETE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppGrafNFppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_SEGURO'
      FieldName = 'VD_VLR_SEGURO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object ppGrafNFppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_OUTRAS_DESP'
      FieldName = 'VD_VLR_OUTRAS_DESP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object ppGrafNFppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_BASE_CALC'
      FieldName = 'VD_BASE_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object ppGrafNFppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_ICM'
      FieldName = 'VD_VLR_ICM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object ppGrafNFppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_BASE_CALC_SUB'
      FieldName = 'VD_BASE_CALC_SUB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object ppGrafNFppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_ICM_SUB'
      FieldName = 'VD_VLR_ICM_SUB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 30
    end
    object ppGrafNFppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_IPI'
      FieldName = 'VD_VLR_IPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 31
    end
    object ppGrafNFppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_IPI'
      FieldName = 'PRD_IPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object ppGrafNFppField34: TppField
      FieldAlias = 'PRD_CODIGO'
      FieldName = 'PRD_CODIGO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 33
    end
    object ppGrafNFppField35: TppField
      FieldAlias = 'PRD_NOME'
      FieldName = 'PRD_NOME'
      FieldLength = 400
      DisplayWidth = 400
      Position = 34
    end
    object ppGrafNFppField36: TppField
      FieldAlias = 'PRD_UNIDADE'
      FieldName = 'PRD_UNIDADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 35
    end
    object ppGrafNFppField37: TppField
      FieldAlias = 'PRD_SIT_TRIB'
      FieldName = 'PRD_SIT_TRIB'
      FieldLength = 6
      DisplayWidth = 6
      Position = 36
    end
    object ppGrafNFppField38: TppField
      FieldAlias = 'PRD_CL_FIS'
      FieldName = 'PRD_CL_FIS'
      FieldLength = 2
      DisplayWidth = 2
      Position = 37
    end
    object ppGrafNFppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_QTDE'
      FieldName = 'PRD_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 38
    end
    object ppGrafNFppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_VLR_UNIT'
      FieldName = 'PRD_VLR_UNIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object ppGrafNFppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_VLR_TTL_ITEM'
      FieldName = 'PRD_VLR_TTL_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
    object ppGrafNFppField42: TppField
      FieldAlias = 'PRD_ALIQ_ICM'
      FieldName = 'PRD_ALIQ_ICM'
      FieldLength = 10
      DisplayWidth = 10
      Position = 41
    end
    object ppGrafNFppField43: TppField
      FieldAlias = 'PRD_COMPLEMENTO'
      FieldName = 'PRD_COMPLEMENTO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 42
    end
    object ppGrafNFppField44: TppField
      FieldAlias = 'PRD_REDUCAO'
      FieldName = 'PRD_REDUCAO'
      FieldLength = 80
      DisplayWidth = 80
      Position = 43
    end
    object ppGrafNFppField45: TppField
      FieldAlias = 'VDI_COMPLEMENTO'
      FieldName = 'VDI_COMPLEMENTO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 44
    end
    object ppGrafNFppField46: TppField
      FieldAlias = 'TRP_NOME'
      FieldName = 'TRP_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 45
    end
    object ppGrafNFppField47: TppField
      FieldAlias = 'TRP_CNPJ'
      FieldName = 'TRP_CNPJ'
      FieldLength = 15
      DisplayWidth = 15
      Position = 46
    end
    object ppGrafNFppField48: TppField
      FieldAlias = 'TRP_PLACA'
      FieldName = 'TRP_PLACA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 47
    end
    object ppGrafNFppField49: TppField
      FieldAlias = 'TRP_ENDERECO'
      FieldName = 'TRP_ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 48
    end
    object ppGrafNFppField50: TppField
      FieldAlias = 'TRP_CIDADE'
      FieldName = 'TRP_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 49
    end
    object ppGrafNFppField51: TppField
      FieldAlias = 'TRP_UF'
      FieldName = 'TRP_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 50
    end
    object ppGrafNFppField52: TppField
      FieldAlias = 'TRP_UF_VEICULO'
      FieldName = 'TRP_UF_VEICULO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 51
    end
    object ppGrafNFppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_FRETE'
      FieldName = 'TRP_FRETE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 52
    end
    object ppGrafNFppField54: TppField
      FieldAlias = 'TRP_IE'
      FieldName = 'TRP_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 53
    end
    object ppGrafNFppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_PESO_LIQ'
      FieldName = 'TRP_PESO_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 54
    end
    object ppGrafNFppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_PESO_BRUTO'
      FieldName = 'TRP_PESO_BRUTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 55
    end
    object ppGrafNFppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_PESO_QTDE'
      FieldName = 'TRP_PESO_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 56
    end
    object ppGrafNFppField58: TppField
      FieldAlias = 'TRP_ESPECIE'
      FieldName = 'TRP_ESPECIE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 57
    end
    object ppGrafNFppField59: TppField
      FieldAlias = 'TRP_MARCA'
      FieldName = 'TRP_MARCA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 58
    end
    object ppGrafNFppField60: TppField
      FieldAlias = 'TRP_NUMERO'
      FieldName = 'TRP_NUMERO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 59
    end
    object ppGrafNFppField61: TppField
      FieldAlias = 'PRD_OBSERVACAO'
      FieldName = 'PRD_OBSERVACAO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 60
    end
    object ppGrafNFppField62: TppField
      FieldAlias = 'GPR_OBS'
      FieldName = 'GPR_OBS'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppGrafNFppField63: TppField
      FieldAlias = 'PC_PARCELAMENTO'
      FieldName = 'PC_PARCELAMENTO'
      FieldLength = 300
      DisplayWidth = 300
      Position = 62
    end
    object ppGrafNFppField64: TppField
      FieldAlias = 'PRD_PRODUTO_LOTE'
      FieldName = 'PRD_PRODUTO_LOTE'
      FieldLength = 250
      DisplayWidth = 250
      Position = 63
    end
    object ppGrafNFppField65: TppField
      FieldAlias = 'VD_ENTRADA'
      FieldName = 'VD_ENTRADA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 64
    end
    object ppGrafNFppField66: TppField
      FieldAlias = 'VD_SAIDA'
      FieldName = 'VD_SAIDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
    object ppGrafNFppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 66
    end
    object ppGrafNFppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'ALT_DETALHE'
      FieldName = 'ALT_DETALHE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 67
    end
    object ppGrafNFppField69: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ICM_TTL_PROD'
      FieldName = 'DESC_ICM_TTL_PROD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 68
    end
    object ppGrafNFppField70: TppField
      FieldAlias = 'DESC_ICM_LBL_TTL_PROD'
      FieldName = 'DESC_ICM_LBL_TTL_PROD'
      FieldLength = 50
      DisplayWidth = 50
      Position = 69
    end
    object ppGrafNFppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ICM_TTL_DESCTO'
      FieldName = 'DESC_ICM_TTL_DESCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 70
    end
    object ppGrafNFppField72: TppField
      FieldAlias = 'DESC_ICM_LBL_TTL_DESCTO'
      FieldName = 'DESC_ICM_LBL_TTL_DESCTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 71
    end
    object ppGrafNFppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ICM_TTL_LIQ'
      FieldName = 'DESC_ICM_TTL_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 72
    end
    object ppGrafNFppField74: TppField
      FieldAlias = 'DESC_ICM_LBL_TTL_LIQ'
      FieldName = 'DESC_ICM_LBL_TTL_LIQ'
      FieldLength = 50
      DisplayWidth = 50
      Position = 73
    end
    object ppGrafNFppField75: TppField
      FieldAlias = 'DESC_ICM_MSG_1'
      FieldName = 'DESC_ICM_MSG_1'
      FieldLength = 200
      DisplayWidth = 200
      Position = 74
    end
    object ppGrafNFppField76: TppField
      FieldAlias = 'DESC_ICM_MSG_2'
      FieldName = 'DESC_ICM_MSG_2'
      FieldLength = 200
      DisplayWidth = 200
      Position = 75
    end
    object ppGrafNFppField77: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 76
    end
    object ppGrafNFppField78: TppField
      FieldAlias = 'VEND_NOME'
      FieldName = 'VEND_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 77
    end
    object ppGrafNFppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'VEND_COD'
      FieldName = 'VEND_COD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 78
    end
    object ppGrafNFppField80: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_PORC_DESC'
      FieldName = 'PRD_PORC_DESC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 79
    end
    object ppGrafNFppField81: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO_LIQ'
      FieldName = 'PRC_UNITARIO_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 80
    end
    object ppGrafNFppField82: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO'
      FieldName = 'PRC_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 81
    end
    object ppGrafNFppField83: TppField
      FieldAlias = 'COD_ORIGINADOR'
      FieldName = 'COD_ORIGINADOR'
      FieldLength = 70
      DisplayWidth = 70
      Position = 82
    end
    object ppGrafNFppField84: TppField
      FieldAlias = 'DT_IMP_NF'
      FieldName = 'DT_IMP_NF'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 83
    end
    object ppGrafNFppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDI_CFOP'
      FieldName = 'VDI_CFOP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 84
    end
    object ppGrafNFppField86: TppField
      FieldAlias = 'S_VD_TOTAL_NF'
      FieldName = 'S_VD_TOTAL_NF'
      FieldLength = 30
      DisplayWidth = 30
      Position = 85
    end
    object ppGrafNFppField87: TppField
      FieldAlias = 'S_VD_VLR_IPI'
      FieldName = 'S_VD_VLR_IPI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 86
    end
    object ppGrafNFppField88: TppField
      FieldAlias = 'S_VD_VLR_OUTRAS_DESP'
      FieldName = 'S_VD_VLR_OUTRAS_DESP'
      FieldLength = 30
      DisplayWidth = 30
      Position = 87
    end
    object ppGrafNFppField89: TppField
      FieldAlias = 'S_VD_VLR_SEGURO'
      FieldName = 'S_VD_VLR_SEGURO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 88
    end
    object ppGrafNFppField90: TppField
      FieldAlias = 'S_VD_VLR_FRETE'
      FieldName = 'S_VD_VLR_FRETE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 89
    end
    object ppGrafNFppField91: TppField
      FieldAlias = 'S_VD_TOTAL_PROD'
      FieldName = 'S_VD_TOTAL_PROD'
      FieldLength = 30
      DisplayWidth = 30
      Position = 90
    end
    object ppGrafNFppField92: TppField
      FieldAlias = 'S_VD_VLR_ICM'
      FieldName = 'S_VD_VLR_ICM'
      FieldLength = 30
      DisplayWidth = 30
      Position = 91
    end
    object ppGrafNFppField93: TppField
      FieldAlias = 'S_VD_VLR_ICM_SUB'
      FieldName = 'S_VD_VLR_ICM_SUB'
      FieldLength = 30
      DisplayWidth = 30
      Position = 92
    end
    object ppGrafNFppField94: TppField
      FieldAlias = 'S_VD_BASE_CALC'
      FieldName = 'S_VD_BASE_CALC'
      FieldLength = 30
      DisplayWidth = 30
      Position = 93
    end
    object ppGrafNFppField95: TppField
      FieldAlias = 'S_VD_BASE_CALC_SUB'
      FieldName = 'S_VD_BASE_CALC_SUB'
      FieldLength = 30
      DisplayWidth = 30
      Position = 94
    end
    object ppGrafNFppField96: TppField
      FieldAlias = 'CLI_ENDERECO'
      FieldName = 'CLI_ENDERECO'
      FieldLength = 130
      DisplayWidth = 130
      Position = 95
    end
    object ppGrafNFppField97: TppField
      FieldAlias = 'PRD_DEFENSIVO'
      FieldName = 'PRD_DEFENSIVO'
      FieldLength = 300
      DisplayWidth = 300
      Position = 96
    end
    object ppGrafNFppField98: TppField
      FieldAlias = 'PRD_CONCAT'
      FieldName = 'PRD_CONCAT'
      FieldLength = 800
      DisplayWidth = 800
      Position = 97
    end
    object ppGrafNFppField99: TppField
      FieldAlias = 'PARCELA_1_NUMERO'
      FieldName = 'PARCELA_1_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 98
    end
    object ppGrafNFppField100: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA_1_VALOR'
      FieldName = 'PARCELA_1_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 99
    end
    object ppGrafNFppField101: TppField
      FieldAlias = 'PARCELA_1_VENCTO'
      FieldName = 'PARCELA_1_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 100
    end
    object ppGrafNFppField102: TppField
      FieldAlias = 'PARCELA_1_EXTENSO'
      FieldName = 'PARCELA_1_EXTENSO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 101
    end
    object ppGrafNFppField103: TppField
      FieldAlias = 'PARCELA_2_NUMERO'
      FieldName = 'PARCELA_2_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 102
    end
    object ppGrafNFppField104: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA_2_VALOR'
      FieldName = 'PARCELA_2_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 103
    end
    object ppGrafNFppField105: TppField
      FieldAlias = 'PARCELA_2_VENCTO'
      FieldName = 'PARCELA_2_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 104
    end
    object ppGrafNFppField106: TppField
      FieldAlias = 'PARCELA_2_EXTENSO'
      FieldName = 'PARCELA_2_EXTENSO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 105
    end
    object ppGrafNFppField107: TppField
      FieldAlias = 'PARCELA_3_NUMERO'
      FieldName = 'PARCELA_3_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 106
    end
    object ppGrafNFppField108: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA_3_VALOR'
      FieldName = 'PARCELA_3_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 107
    end
    object ppGrafNFppField109: TppField
      FieldAlias = 'PARCELA_3_VENCTO'
      FieldName = 'PARCELA_3_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 108
    end
    object ppGrafNFppField110: TppField
      FieldAlias = 'PARCELA_3_EXTENSO'
      FieldName = 'PARCELA_3_EXTENSO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 109
    end
    object ppGrafNFppField111: TppField
      FieldAlias = 'PARCELA_4_NUMERO'
      FieldName = 'PARCELA_4_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 110
    end
    object ppGrafNFppField112: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA_4_VALOR'
      FieldName = 'PARCELA_4_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 111
    end
    object ppGrafNFppField113: TppField
      FieldAlias = 'PARCELA_4_VENCTO'
      FieldName = 'PARCELA_4_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 112
    end
    object ppGrafNFppField114: TppField
      FieldAlias = 'PARCELA_4_EXTENSO'
      FieldName = 'PARCELA_4_EXTENSO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 113
    end
    object ppGrafNFppField115: TppField
      FieldAlias = 'PARCELA_5_NUMERO'
      FieldName = 'PARCELA_5_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 114
    end
    object ppGrafNFppField116: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA_5_VALOR'
      FieldName = 'PARCELA_5_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 115
    end
    object ppGrafNFppField117: TppField
      FieldAlias = 'PARCELA_5_VENCTO'
      FieldName = 'PARCELA_5_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 116
    end
    object ppGrafNFppField118: TppField
      FieldAlias = 'PARCELA_5_EXTENSO'
      FieldName = 'PARCELA_5_EXTENSO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 117
    end
    object ppGrafNFppField119: TppField
      FieldAlias = 'PARCELA_6_NUMERO'
      FieldName = 'PARCELA_6_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 118
    end
    object ppGrafNFppField120: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA_6_VALOR'
      FieldName = 'PARCELA_6_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 119
    end
    object ppGrafNFppField121: TppField
      FieldAlias = 'PARCELA_6_VENCTO'
      FieldName = 'PARCELA_6_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 120
    end
    object ppGrafNFppField122: TppField
      FieldAlias = 'PARCELA_6_EXTENSO'
      FieldName = 'PARCELA_6_EXTENSO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 121
    end
    object ppGrafNFppField123: TppField
      FieldAlias = 'VD_MSG_FISCAL'
      FieldName = 'VD_MSG_FISCAL'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object ppGrafNFppField124: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VOLUME'
      FieldName = 'VD_VOLUME'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 123
    end
    object ppGrafNFppField125: TppField
      FieldAlias = 'S_VD_VOLUME'
      FieldName = 'S_VD_VOLUME'
      FieldLength = 30
      DisplayWidth = 30
      Position = 124
    end
    object ppGrafNFppField126: TppField
      FieldAlias = 'VD_MSG_COMPLEMENTAR'
      FieldName = 'VD_MSG_COMPLEMENTAR'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 125
      Searchable = False
      Sortable = False
    end
    object ppGrafNFppField127: TppField
      Alignment = taRightJustify
      FieldAlias = 'LINHA'
      FieldName = 'LINHA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 126
    end
    object ppGrafNFppField128: TppField
      FieldAlias = 'VND_CODIGOS'
      FieldName = 'VND_CODIGOS'
      FieldLength = 180
      DisplayWidth = 180
      Position = 127
    end
  end
  object rptDuplicata: TppReport
    AutoStop = False
    DataPipeline = ppDuplicata
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 50000
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = ppLayoutDuplicata
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_DPL'
    Template.FileName = 'C:\Documents and Settings\Administrador\Desktop\Duplicata.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 16
    Top = 40
    Version = '12.03'
    mmColumnWidth = 495301
    DataPipelineName = 'ppDuplicata'
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 45508
      mmPrintPosition = 0
      object ppDBText122: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_NOME'
        DataPipeline = ppDuplicata
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3175
        mmLeft = 21960
        mmTop = 15346
        mmWidth = 91017
        BandType = 4
      end
      object ppDBText123: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_CODIGO'
        DataPipeline = ppDuplicata
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3175
        mmLeft = 3704
        mmTop = 15346
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText125: TppDBText
        UserName = 'DBText32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_TOTAL'
        DataPipeline = ppDuplicata
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3704
        mmLeft = 3704
        mmTop = 1852
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText107: TppDBText
        UserName = 'DBText107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_CODIGO'
        DataPipeline = ppDuplicata
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3175
        mmLeft = 22754
        mmTop = 2117
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText108: TppDBText
        UserName = 'DBText108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DPL_VALOR'
        DataPipeline = ppDuplicata
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3704
        mmLeft = 44186
        mmTop = 1852
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText109: TppDBText
        UserName = 'DBText109'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DPL_PARCELA'
        DataPipeline = ppDuplicata
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3704
        mmLeft = 83608
        mmTop = 1852
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText110: TppDBText
        UserName = 'DBText110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DPL_VENCTO'
        DataPipeline = ppDuplicata
        DisplayFormat = 'dd/mm/yyyy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3704
        mmLeft = 146579
        mmTop = 2117
        mmWidth = 22225
        BandType = 4
      end
      object ppDBText111: TppDBText
        UserName = 'DBText111'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_CEP'
        DataPipeline = ppDuplicata
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3175
        mmLeft = 146844
        mmTop = 13758
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText112: TppDBText
        UserName = 'DBText112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_NOME'
        DataPipeline = ppDuplicata
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3175
        mmLeft = 21960
        mmTop = 22754
        mmWidth = 42333
        BandType = 4
      end
      object ppDBText113: TppDBText
        UserName = 'DBText113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_BAIRRO'
        DataPipeline = ppDuplicata
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3175
        mmLeft = 66411
        mmTop = 23019
        mmWidth = 42333
        BandType = 4
      end
      object ppDBText114: TppDBText
        UserName = 'DBText114'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_UF'
        DataPipeline = ppDuplicata
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3175
        mmLeft = 112713
        mmTop = 23019
        mmWidth = 14288
        BandType = 4
      end
      object ppDBText117: TppDBText
        UserName = 'DBText117'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_CPF_CGC'
        DataPipeline = ppDuplicata
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 4498
        mmLeft = 26988
        mmTop = 35719
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object ppDuplicata: TppDBPipeline
    DataSource = dmCadastros2.dsDuplicata
    UserName = 'Duplicata'
    Left = 40
    Top = 8
    object ppDuplicatappField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL'
      FieldName = 'VD_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object ppDuplicatappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_CODIGO'
      FieldName = 'VD_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppDuplicatappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_NUM_NF'
      FieldName = 'VD_NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDuplicatappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'DPL_VALOR'
      FieldName = 'DPL_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object ppDuplicatappField5: TppField
      FieldAlias = 'DPL_VENCTO'
      FieldName = 'DPL_VENCTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object ppDuplicatappField6: TppField
      FieldAlias = 'DPL_PARCELA'
      FieldName = 'DPL_PARCELA'
      FieldLength = 6
      DisplayWidth = 6
      Position = 5
    end
    object ppDuplicatappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'SAC_CODIGO'
      FieldName = 'SAC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppDuplicatappField8: TppField
      FieldAlias = 'SAC_NOME'
      FieldName = 'SAC_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppDuplicatappField9: TppField
      FieldAlias = 'SAC_ENDERECO'
      FieldName = 'SAC_ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object ppDuplicatappField10: TppField
      FieldAlias = 'SAC_CEP'
      FieldName = 'SAC_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 9
    end
    object ppDuplicatappField11: TppField
      FieldAlias = 'SAC_CIDADE'
      FieldName = 'SAC_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object ppDuplicatappField12: TppField
      FieldAlias = 'SAC_BAIRRO'
      FieldName = 'SAC_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object ppDuplicatappField13: TppField
      FieldAlias = 'SAC_UF'
      FieldName = 'SAC_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 12
    end
    object ppDuplicatappField14: TppField
      FieldAlias = 'SAC_NUMERO'
      FieldName = 'SAC_NUMERO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 13
    end
    object ppDuplicatappField15: TppField
      FieldAlias = 'SAC_RG_IE'
      FieldName = 'SAC_RG_IE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object ppDuplicatappField16: TppField
      FieldAlias = 'PROP_IE'
      FieldName = 'PROP_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 15
    end
    object ppDuplicatappField17: TppField
      FieldAlias = 'VALOR_EXTENSO'
      FieldName = 'VALOR_EXTENSO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 16
    end
    object ppDuplicatappField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'DPL_NUMERO'
      FieldName = 'DPL_NUMERO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppDuplicatappField19: TppField
      FieldAlias = 'SAC_CPF_CGC'
      FieldName = 'SAC_CPF_CGC'
      FieldLength = 79
      DisplayWidth = 79
      Position = 18
    end
  end
  object ppLayoutDuplicata: TppDBPipeline
    DataSource = dmCadastros2.dsLayoutDuplicata
    UserName = 'LayoutDPL'
    Left = 64
    Top = 8
    object ppLayoutDuplicatappField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppLayoutDuplicatappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA_ALT'
      FieldName = 'DATA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppLayoutDuplicatappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA_DST'
      FieldName = 'DATA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppLayoutDuplicatappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCUMENTO_ALT'
      FieldName = 'DOCUMENTO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppLayoutDuplicatappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCUMENTO_DST'
      FieldName = 'DOCUMENTO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppLayoutDuplicatappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'EXTENSO_ALT'
      FieldName = 'EXTENSO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppLayoutDuplicatappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'EXTENSO_DST'
      FieldName = 'EXTENSO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppLayoutDuplicatappField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'INSTRUCOES_ALT'
      FieldName = 'INSTRUCOES_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppLayoutDuplicatappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'INSTRUCOES_DST'
      FieldName = 'INSTRUCOES_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppLayoutDuplicatappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'LPP'
      FieldName = 'LPP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppLayoutDuplicatappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'SACADO_ALT'
      FieldName = 'SACADO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppLayoutDuplicatappField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'SACADO_DST'
      FieldName = 'SACADO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppLayoutDuplicatappField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAMANHOPAGINA'
      FieldName = 'TAMANHOPAGINA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppLayoutDuplicatappField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_ALT'
      FieldName = 'VALOR_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppLayoutDuplicatappField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_DST'
      FieldName = 'VALOR_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppLayoutDuplicatappField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENCIMENTO_ALT'
      FieldName = 'VENCIMENTO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppLayoutDuplicatappField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENCIMENTO_DST'
      FieldName = 'VENCIMENTO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppLayoutDuplicatappField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDA_DST'
      FieldName = 'VENDA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppLayoutDuplicatappField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDA_ALT'
      FieldName = 'VENDA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppLayoutDuplicatappField20: TppField
      FieldAlias = 'PORTA_IMPRESSORA'
      FieldName = 'PORTA_IMPRESSORA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 19
    end
    object ppLayoutDuplicatappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_DPL_DST'
      FieldName = 'VALOR_DPL_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppLayoutDuplicatappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_DPL_ALT'
      FieldName = 'VALOR_DPL_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppLayoutDuplicatappField23: TppField
      FieldAlias = 'DPL_GRAFICA'
      FieldName = 'DPL_GRAFICA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 22
    end
    object ppLayoutDuplicatappField24: TppField
      FieldAlias = 'CONFIG_DPL'
      FieldName = 'CONFIG_DPL'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 23
      Searchable = False
      Sortable = False
    end
  end
  object DataSource: TDataSource
    DataSet = DMCadastros.SerieLeiute
    Left = 304
    Top = 16
  end
  object dsPedidos: TDataSource
    DataSet = DmVendas2.qrySeriesNF
    Left = 248
  end
  object LayoutSERV: TppDBPipeline
    DataSource = DMCadastros.dsEdtServicoNF
    UserName = 'LayoutSERV'
    Left = 296
    Top = 88
  end
  object rptServico: TppReport
    AutoStop = False
    DataPipeline = ppServico
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 184600
    PrinterSetup.mmPaperWidth = 220800
    PrinterSetup.PaperSize = 256
    Template.DatabaseSettings.DataPipeline = LayoutSERV
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_NF_SERV'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 216
    Top = 104
    Version = '12.03'
    mmColumnWidth = 297000
    DataPipelineName = 'ppServico'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 53711
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 17526
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PRESTA'#199#195'O DE SERVI'#199'O'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 65617
        mmTop = 2117
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLIENTE'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 10583
        mmWidth = 56621
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 19050
        mmWidth = 70115
        BandType = 0
      end
      object ppDBText42: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAIRRO'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 103717
        mmTop = 19050
        mmWidth = 42333
        BandType = 0
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 158750
        mmTop = 19050
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UF'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 198967
        mmTop = 19050
        mmWidth = 6879
        BandType = 0
      end
      object ppDBText39: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CPF_CGC'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 101600
        mmTop = 31750
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RG_IE'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 46567
        mmTop = 31750
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ISENTO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 78317
        mmTop = 31750
        mmWidth = 13229
        BandType = 0
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 31750
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSC_MUNIC'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 156634
        mmTop = 31750
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_FATURA1'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 48683
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText51: TppDBText
        UserName = 'DBText501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VENCTO1'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 29633
        mmTop = 48683
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VLR1'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 61383
        mmTop = 48683
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText53: TppDBText
        UserName = 'DBText502'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_FATURA2'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 103717
        mmTop = 48683
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VENCTO2'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 133350
        mmTop = 48683
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VLR2'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 165100
        mmTop = 48683
        mmWidth = 22754
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppDBText41: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 31750
        mmTop = 794
        mmWidth = 120650
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_TOTAL_UNIT'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 170921
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_UNITARIO'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 190500
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'COMPLEMENTO'
        DataPipeline = ppServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 8731
        mmLeft = 31750
        mmTop = 5821
        mmWidth = 120650
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 102659
      mmPrintPosition = 0
      object RegionPIS: TppRegion
        UserName = 'RegionPIS'
        Caption = 'RegionPIS'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 10160
        mmLeft = 76200
        mmTop = 7938
        mmWidth = 127265
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText35: TppDBText
          UserName = 'DBText33'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TEXTO_PIS'
          DataPipeline = ppServico
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 107421
          mmTop = 11642
          mmWidth = 51594
          BandType = 7
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = '('
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 160602
          mmTop = 11377
          mmWidth = 1323
          BandType = 7
        end
        object ppDBText36: TppDBText
          UserName = 'DBText34'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'PIS'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 161925
          mmTop = 11642
          mmWidth = 10583
          BandType = 7
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ')'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 172509
          mmTop = 11377
          mmWidth = 1588
          BandType = 7
        end
        object ppDBText37: TppDBText
          UserName = 'DBText35'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'VLR_PIS'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 178594
          mmTop = 11642
          mmWidth = 20902
          BandType = 7
        end
      end
      object RegionIRRS: TppRegion
        UserName = 'RegionIRRS'
        Caption = 'RegionIRRF'
        Pen.Style = psClear
        ShiftRelativeTo = RegionPIS
        Stretch = True
        mmHeight = 10054
        mmLeft = 76200
        mmTop = 18521
        mmWidth = 127265
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText44: TppDBText
          UserName = 'DBText36'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TEXTO_IRRF'
          DataPipeline = ppServico
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 106892
          mmTop = 21431
          mmWidth = 51594
          BandType = 7
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = '('
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 160073
          mmTop = 21167
          mmWidth = 1323
          BandType = 7
        end
        object ppDBText40: TppDBText
          UserName = 'DBText37'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'IRRF'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 161396
          mmTop = 21431
          mmWidth = 10583
          BandType = 7
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ')'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 171980
          mmTop = 21167
          mmWidth = 1588
          BandType = 7
        end
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'VLR_IRRF'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 178065
          mmTop = 21431
          mmWidth = 20902
          BandType = 7
        end
      end
      object RegionINSS: TppRegion
        UserName = 'RegionINSS'
        Caption = 'RegionINSS'
        Pen.Style = psClear
        ShiftRelativeTo = RegionIRRS
        Stretch = True
        mmHeight = 10054
        mmLeft = 76200
        mmTop = 29104
        mmWidth = 127265
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText58: TppDBText
          UserName = 'DBText56'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'VLR_INSS'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 177800
          mmTop = 32544
          mmWidth = 20902
          BandType = 7
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ')'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 171186
          mmTop = 32279
          mmWidth = 1588
          BandType = 7
        end
        object ppDBText57: TppDBText
          UserName = 'DBText44'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'INSS'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 160602
          mmTop = 32544
          mmWidth = 10583
          BandType = 7
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = '('
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 159279
          mmTop = 32279
          mmWidth = 1323
          BandType = 7
        end
        object ppDBText56: TppDBText
          UserName = 'DBText40'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TEXTO_INSS'
          DataPipeline = ppServico
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 106098
          mmTop = 32544
          mmWidth = 51594
          BandType = 7
        end
      end
      object RegionDescto: TppRegion
        UserName = 'RegionDescto'
        Caption = 'RegionDescto'
        Pen.Style = psClear
        ShiftRelativeTo = RegionINSS
        mmHeight = 10054
        mmLeft = 76200
        mmTop = 39688
        mmWidth = 127265
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText59: TppDBText
          UserName = 'DBText401'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TEXTO_DESCONTO'
          DataPipeline = ppServico
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 106627
          mmTop = 43127
          mmWidth = 51594
          BandType = 7
        end
        object ppDBText32: TppDBText
          UserName = 'DBText59'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'DESC_ACRESC'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 178330
          mmTop = 43127
          mmWidth = 20902
          BandType = 7
        end
      end
      object ppDBText61: TppDBText
        UserName = 'DBText58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BASE_CALC_ISS'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 75672
        mmWidth = 20902
        BandType = 7
      end
      object ppDBText64: TppDBText
        UserName = 'DBText60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_ISS_SUB'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 61383
        mmTop = 75672
        mmWidth = 20902
        BandType = 7
      end
      object ppDBText65: TppDBText
        UserName = 'DBText601'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_ISS'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 97367
        mmTop = 75672
        mmWidth = 20902
        BandType = 7
      end
      object ppDBText66: TppDBText
        UserName = 'DBText62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_NF'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 177800
        mmTop = 75672
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'O PR'#211'PRIO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 6350
        mmTop = 84138
        mmWidth = 19939
        BandType = 7
      end
      object ppDBText71: TppDBText
        UserName = 'DBText65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FRETE_EMITENTE'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 92604
        mmWidth = 5027
        BandType = 7
      end
      object ppDBText115: TppDBText
        UserName = 'DBText66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FRETE_DESTINATARIO'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 92604
        mmWidth = 5027
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0.000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 152400
        mmTop = 92604
        mmWidth = 8731
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 188384
        mmTop = 92604
        mmWidth = 8731
        BandType = 7
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppServico: TppDBPipeline
    DataSource = DmVendas2.dsqryServico
    OpenDataSource = False
    UserName = 'Servico'
    Left = 256
    Top = 104
    object ppServicoppField1: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object ppServicoppField2: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppServicoppField3: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppServicoppField4: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 3
    end
    object ppServicoppField5: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object ppServicoppField6: TppField
      FieldAlias = 'INSC_MUNIC'
      FieldName = 'INSC_MUNIC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppServicoppField7: TppField
      FieldAlias = 'FAT_FATURA1'
      FieldName = 'FAT_FATURA1'
      FieldLength = 10
      DisplayWidth = 10
      Position = 6
    end
    object ppServicoppField8: TppField
      FieldAlias = 'FAT_VENCTO1'
      FieldName = 'FAT_VENCTO1'
      FieldLength = 12
      DisplayWidth = 12
      Position = 7
    end
    object ppServicoppField9: TppField
      FieldAlias = 'FAT_VLR1'
      FieldName = 'FAT_VLR1'
      FieldLength = 12
      DisplayWidth = 12
      Position = 8
    end
    object ppServicoppField10: TppField
      FieldAlias = 'FAT_FATURA2'
      FieldName = 'FAT_FATURA2'
      FieldLength = 10
      DisplayWidth = 10
      Position = 9
    end
    object ppServicoppField11: TppField
      FieldAlias = 'FAT_VENCTO2'
      FieldName = 'FAT_VENCTO2'
      FieldLength = 12
      DisplayWidth = 12
      Position = 10
    end
    object ppServicoppField12: TppField
      FieldAlias = 'FAT_VLR2'
      FieldName = 'FAT_VLR2'
      FieldLength = 12
      DisplayWidth = 12
      Position = 11
    end
    object ppServicoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppServicoppField14: TppField
      FieldAlias = 'PRODUTO'
      FieldName = 'PRODUTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppServicoppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDE'
      FieldName = 'QTDE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object ppServicoppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_UNITARIO'
      FieldName = 'VLR_UNITARIO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 15
    end
    object ppServicoppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_TOTAL_UNIT'
      FieldName = 'VLR_TOTAL_UNIT'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object ppServicoppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'PIS'
      FieldName = 'PIS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object ppServicoppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'INSS'
      FieldName = 'INSS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 18
    end
    object ppServicoppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_PIS'
      FieldName = 'VLR_PIS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object ppServicoppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_INSS'
      FieldName = 'VLR_INSS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object ppServicoppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_VENDA'
      FieldName = 'TOTAL_VENDA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 21
    end
    object ppServicoppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ACRESC'
      FieldName = 'DESC_ACRESC'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 22
    end
    object ppServicoppField24: TppField
      FieldAlias = 'TEXTO_PIS'
      FieldName = 'TEXTO_PIS'
      FieldLength = 30
      DisplayWidth = 30
      Position = 23
    end
    object ppServicoppField25: TppField
      FieldAlias = 'TEXTO_INSS'
      FieldName = 'TEXTO_INSS'
      FieldLength = 30
      DisplayWidth = 30
      Position = 24
    end
    object ppServicoppField26: TppField
      FieldAlias = 'TEXTO_DESCONTO'
      FieldName = 'TEXTO_DESCONTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 25
    end
    object ppServicoppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'BASE_CALC_ISS'
      FieldName = 'BASE_CALC_ISS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 26
    end
    object ppServicoppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_ISS'
      FieldName = 'VLR_ISS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 27
    end
    object ppServicoppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_ISS_SUB'
      FieldName = 'VLR_ISS_SUB'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 28
    end
    object ppServicoppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_NF'
      FieldName = 'TOTAL_NF'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 29
    end
    object ppServicoppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'IRRF'
      FieldName = 'IRRF'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 30
    end
    object ppServicoppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_IRRF'
      FieldName = 'VLR_IRRF'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 31
    end
    object ppServicoppField33: TppField
      FieldAlias = 'TEXTO_IRRF'
      FieldName = 'TEXTO_IRRF'
      FieldLength = 30
      DisplayWidth = 30
      Position = 32
    end
    object ppServicoppField34: TppField
      FieldAlias = 'FRETE_DESTINATARIO'
      FieldName = 'FRETE_DESTINATARIO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 33
    end
    object ppServicoppField35: TppField
      FieldAlias = 'FRETE_EMITENTE'
      FieldName = 'FRETE_EMITENTE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 34
    end
    object ppServicoppField36: TppField
      FieldAlias = 'COMPLEMENTO'
      FieldName = 'COMPLEMENTO'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppServicoppField37: TppField
      FieldAlias = 'CPF_CGC'
      FieldName = 'CPF_CGC'
      FieldLength = 20
      DisplayWidth = 20
      Position = 36
    end
    object ppServicoppField38: TppField
      FieldAlias = 'RG_IE'
      FieldName = 'RG_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 37
    end
    object ppServicoppField39: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 130
      DisplayWidth = 130
      Position = 38
    end
    object ppServicoppField40: TppField
      FieldAlias = 'CLI_PROPRIEDADE'
      FieldName = 'CLI_PROPRIEDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 39
    end
    object ppServicoppField41: TppField
      FieldAlias = 'CLI_IE'
      FieldName = 'CLI_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 40
    end
    object ppServicoppField42: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 41
    end
  end
  object ppSubIndice: TppDBPipeline
    DataSource = DMCadastros.dsIndice
    UserName = 'SubIndice'
    Left = 104
  end
  object Extenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 112
    Top = 96
  end
end
