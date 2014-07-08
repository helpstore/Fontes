object FrmGeraFatSaida: TFrmGeraFatSaida
  Left = 210
  Top = 152
  Width = 299
  Height = 260
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Gerar Faturamento de Sa'#237'da'
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
    Width = 283
    Height = 222
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
      Caption = 'Gerar Faturamento de Sa'#237'da'
      ParentFont = False
      Transparent = True
    end
    object CFOP: TcxLabel
      Left = 8
      Top = 40
      Caption = 'Opera'#231#227'o Interna'
      ParentFont = False
      Transparent = True
    end
    object RzBitBtn1: TcxButton
      Left = 202
      Top = 189
      Width = 75
      Height = 25
      Action = ActOk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
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
    object CmbOP: TdxLookupEdit
      Left = 8
      Top = 56
      Width = 270
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
      ClearKey = 46
      ListFieldName = 'NOME'
      KeyFieldName = 'CODIGO'
      ListSource = dsOperacoes
      LookupKeyValue = Null
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 88
      Caption = 'Contrato'
      ParentFont = False
      Transparent = True
    end
    object cmbContrato: TdxLookupEdit
      Left = 8
      Top = 104
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
      TabOrder = 1
      OnEnter = EdDataEnter
      OnExit = EdDataExit
      OnKeyDown = EdDataKeyDown
      ClearKey = 46
      ListFieldName = 'DESCRICAO'
      KeyFieldName = 'CODIGO'
      ListSource = dsContrato
      LookupKeyValue = Null
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 136
      Caption = 'Vendedor'
      ParentFont = False
      Transparent = True
    end
    object cmbVendedor: TdxLookupEdit
      Left = 8
      Top = 152
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
      ListFieldName = 'NOME'
      KeyFieldName = 'CODIGO'
      ListSource = dsVendedor
      LookupKeyValue = Null
    end
  end
  object Actions: TActionList
    Left = 121
    Top = 12
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
  object dsContrato: TDataSource
    AutoEdit = False
    DataSet = qryContratos
    Left = 132
    Top = 104
  end
  object qryContratos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select ct.codigo, ct.descricao from ctr_contrato ct'
      'where ct.ativo = '#39'S'#39)
    Left = 92
    Top = 105
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
  object QryOperacao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = QryVendedorBeforeOpen
    SQL.Strings = (
      
        'select * from est_natureza nat where nat.cnpj = :cnpj and nat.es' +
        ' = '#39'S'#39)
    Left = 92
    Top = 57
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryOperacaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_NATUREZA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryOperacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_NATUREZA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryOperacaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_NATUREZA"."NOME"'
      Size = 50
    end
    object QryOperacaoES: TIBStringField
      FieldName = 'ES'
      Origin = '"EST_NATUREZA"."ES"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
      Origin = '"EST_NATUREZA"."PERC_ICMS"'
    end
    object QryOperacaoPERC_ICMS_REV: TFloatField
      FieldName = 'PERC_ICMS_REV'
      Origin = '"EST_NATUREZA"."PERC_ICMS_REV"'
    end
    object QryOperacaoPERC_ISS: TFloatField
      FieldName = 'PERC_ISS'
      Origin = '"EST_NATUREZA"."PERC_ISS"'
    end
    object QryOperacaoMOV_CAIXA: TIBStringField
      FieldName = 'MOV_CAIXA'
      Origin = '"EST_NATUREZA"."MOV_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoMOV_ESTOQUE: TIBStringField
      FieldName = 'MOV_ESTOQUE'
      Origin = '"EST_NATUREZA"."MOV_ESTOQUE"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoPAGA_COMISSAO: TIBStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = '"EST_NATUREZA"."PAGA_COMISSAO"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoCOMPUTA_VENDA: TIBStringField
      FieldName = 'COMPUTA_VENDA'
      Origin = '"EST_NATUREZA"."COMPUTA_VENDA"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoRESUMO_CONTABIL: TIBStringField
      FieldName = 'RESUMO_CONTABIL'
      Origin = '"EST_NATUREZA"."RESUMO_CONTABIL"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoALTERA_CUSTO: TIBStringField
      FieldName = 'ALTERA_CUSTO'
      Origin = '"EST_NATUREZA"."ALTERA_CUSTO"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoCONSIGNACAO: TIBStringField
      FieldName = 'CONSIGNACAO'
      Origin = '"EST_NATUREZA"."CONSIGNACAO"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoMENSAGEM_1: TIBStringField
      FieldName = 'MENSAGEM_1'
      Origin = '"EST_NATUREZA"."MENSAGEM_1"'
      Size = 50
    end
    object QryOperacaoMENSAGEM_2: TIBStringField
      FieldName = 'MENSAGEM_2'
      Origin = '"EST_NATUREZA"."MENSAGEM_2"'
      Size = 50
    end
    object QryOperacaoATIVA: TIBStringField
      FieldName = 'ATIVA'
      Origin = '"EST_NATUREZA"."ATIVA"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoTTL_RES_DIVERSOS: TIBStringField
      FieldName = 'TTL_RES_DIVERSOS'
      Origin = '"EST_NATUREZA"."TTL_RES_DIVERSOS"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoTTL_RES_BONIFICACAO: TIBStringField
      FieldName = 'TTL_RES_BONIFICACAO'
      Origin = '"EST_NATUREZA"."TTL_RES_BONIFICACAO"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoDEVOLUCAO: TIBStringField
      FieldName = 'DEVOLUCAO'
      Origin = '"EST_NATUREZA"."DEVOLUCAO"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoREMESSA: TIBStringField
      FieldName = 'REMESSA'
      Origin = '"EST_NATUREZA"."REMESSA"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoENTREGA_FUTURA: TIBStringField
      FieldName = 'ENTREGA_FUTURA'
      Origin = '"EST_NATUREZA"."ENTREGA_FUTURA"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoINTERESTADUAL: TIBStringField
      FieldName = 'INTERESTADUAL'
      Origin = '"EST_NATUREZA"."INTERESTADUAL"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoGERA_FINANCEIRO: TIBStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = '"EST_NATUREZA"."GERA_FINANCEIRO"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoMSG_FISCAL: TMemoField
      FieldName = 'MSG_FISCAL'
      Origin = '"EST_NATUREZA"."MSG_FISCAL"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QryOperacaoCALC_ICMS: TIBStringField
      FieldName = 'CALC_ICMS'
      Origin = '"EST_NATUREZA"."CALC_ICMS"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoCALC_INSS: TIBStringField
      FieldName = 'CALC_INSS'
      Origin = '"EST_NATUREZA"."CALC_INSS"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoCALC_ISSQN: TIBStringField
      FieldName = 'CALC_ISSQN'
      Origin = '"EST_NATUREZA"."CALC_ISSQN"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoCALC_SEST_SENAT: TIBStringField
      FieldName = 'CALC_SEST_SENAT'
      Origin = '"EST_NATUREZA"."CALC_SEST_SENAT"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoCALC_PIS: TIBStringField
      FieldName = 'CALC_PIS'
      Origin = '"EST_NATUREZA"."CALC_PIS"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoCALC_COFINS: TIBStringField
      FieldName = 'CALC_COFINS'
      Origin = '"EST_NATUREZA"."CALC_COFINS"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoCALC_IPI: TIBStringField
      FieldName = 'CALC_IPI'
      Origin = '"EST_NATUREZA"."CALC_IPI"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoCALC_IRRF: TIBStringField
      FieldName = 'CALC_IRRF'
      Origin = '"EST_NATUREZA"."CALC_IRRF"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"EST_NATUREZA"."CFOP"'
    end
    object QryOperacaoCFOP_DESCRICAO: TIBStringField
      FieldName = 'CFOP_DESCRICAO'
      Origin = '"EST_NATUREZA"."CFOP_DESCRICAO"'
      Size = 50
    end
    object QryOperacaoMOV_ESTOQUE_FISCAL: TIBStringField
      FieldName = 'MOV_ESTOQUE_FISCAL'
      Origin = '"EST_NATUREZA"."MOV_ESTOQUE_FISCAL"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoIMP_PEDIDO: TIBStringField
      FieldName = 'IMP_PEDIDO'
      Origin = '"EST_NATUREZA"."IMP_PEDIDO"'
      FixedChar = True
      Size = 1
    end
    object QryOperacaoREL_GERENCIAL: TIBStringField
      FieldName = 'REL_GERENCIAL'
      Origin = '"EST_NATUREZA"."REL_GERENCIAL"'
      FixedChar = True
      Size = 1
    end
  end
  object dsOperacoes: TDataSource
    AutoEdit = False
    DataSet = QryOperacao
    Left = 132
    Top = 56
  end
  object QryVendedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = QryVendedorBeforeOpen
    SQL.Strings = (
      'select * from fat_vendedor vdd  where vdd.cnpj = :cnpj')
    Left = 92
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryVendedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVendedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object QryVendedorCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"FAT_VENDEDOR"."COM_VISTA"'
    end
    object QryVendedorCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
    end
    object QryVendedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
    end
    object QryVendedorSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
    object QryVendedorATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FAT_VENDEDOR"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object QryVendedorCOD_PERFIL: TIntegerField
      FieldName = 'COD_PERFIL'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL"'
    end
    object QryVendedorCOD_PERFIL_PAGTO: TIntegerField
      FieldName = 'COD_PERFIL_PAGTO'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL_PAGTO"'
    end
  end
  object dsVendedor: TDataSource
    AutoEdit = False
    DataSet = QryVendedor
    Left = 132
    Top = 152
  end
end
