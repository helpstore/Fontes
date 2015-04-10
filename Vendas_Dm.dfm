object DmVendas: TDmVendas
  OldCreateOrder = False
  Height = 644
  Width = 1280
  object SelPessoasFJ: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT '
      '   * '
      'FROM VER_Cliente( :CNPJ )')
    Left = 672
    Top = 528
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelPessoasFJEMPRESA: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA'
      Origin = '"VER_CLIENTE"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
    object SelPessoasFJCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object SelPessoasFJNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome Raz'#227'o'
      DisplayWidth = 50
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object SelPessoasFJFANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object SelPessoasFJCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object SelPessoasFJBLOQUEADO: TIBStringField
      DisplayLabel = 'Bloqueado'
      FieldName = 'BLOQUEADO'
      Origin = '"VER_CLIENTE"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object SelPessoasFJCLASSIFICACAO: TIBStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'CLASSIFICACAO'
      Origin = '"VER_CLIENTE"."CLASSIFICACAO"'
      Size = 50
    end
    object SelPessoasFJUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_CLIENTE"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPessoasFJFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_CLIENTE"."FONE"'
    end
    object SelPessoasFJORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'ORDEM'
      Origin = '"VER_CLIENTE"."ORDEM"'
    end
    object SelPessoasFJENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_CLIENTE"."ENDERECO"'
      Size = 65
    end
    object SelPessoasFJEMAIL: TIBStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = '"VER_CLIENTE"."EMAIL"'
      Size = 80
    end
    object SelPessoasFJRG_IE: TIBStringField
      DisplayLabel = 'RG/Insc. Est.'
      FieldName = 'RG_IE'
      Origin = '"VER_CLIENTE"."RG_IE"'
      Size = 15
    end
    object SelPessoasFJREGIAO: TIntegerField
      DisplayLabel = 'C'#243'd. Regi'#227'o'
      FieldName = 'REGIAO'
      Origin = '"VER_CLIENTE"."REGIAO"'
    end
    object SelPessoasFJNOME_REGIAO: TIBStringField
      DisplayLabel = 'Regi'#227'o'
      FieldName = 'NOME_REGIAO'
      Origin = '"VER_CLIENTE"."NOME_REGIAO"'
      Size = 50
    end
    object SelPessoasFJATIVIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Atividade'
      FieldName = 'ATIVIDADE'
      Origin = '"VER_CLIENTE"."ATIVIDADE"'
    end
    object SelPessoasFJNOME_ATIVIDADE: TIBStringField
      DisplayLabel = 'Atividade'
      FieldName = 'NOME_ATIVIDADE'
      Origin = '"VER_CLIENTE"."NOME_ATIVIDADE"'
      Size = 50
    end
    object SelPessoasFJBAIRRO: TIntegerField
      DisplayLabel = 'C'#243'd. Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_CLIENTE"."BAIRRO"'
    end
    object SelPessoasFJNOME_BAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'NOME_BAIRRO'
      Origin = '"VER_CLIENTE"."NOME_BAIRRO"'
      Size = 50
    end
    object SelPessoasFJDT_NASCIMENTO: TDateTimeField
      DisplayLabel = 'Dt. Nascimento'
      FieldName = 'DT_NASCIMENTO'
      Origin = '"VER_CLIENTE"."DT_NASCIMENTO"'
    end
    object SelPessoasFJCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"VER_CLIENTE"."CELULAR"'
    end
    object SelPessoasFJPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_PESSOA_FJ"."PESSOA_FJ"'
    end
    object SelPessoasFJPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"VER_CLIENTE"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object SelPessoasFJCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_CLIENTE"."CIDADE"'
    end
    object SelPessoasFJNOME_CIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'NOME_CIDADE'
      Origin = '"VER_CLIENTE"."NOME_CIDADE"'
      Size = 50
    end
  end
  object SelNatureza: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME,'
      '               INTERESTADUAL '
      'FROM EST_NATUREZA'
      'WHERE CNPJ = :CNPJ and ATIVA = '#39'S'#39' '
      'ORDER BY NOME')
    Left = 144
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelNaturezaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_NATUREZA"."CODIGO"'
      Required = True
    end
    object SelNaturezaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_NATUREZA"."NOME"'
      Required = True
      Size = 50
    end
    object SelNaturezaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_NATUREZA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelNaturezaINTERESTADUAL: TIBStringField
      FieldName = 'INTERESTADUAL'
      Origin = '"EST_NATUREZA"."INTERESTADUAL"'
      FixedChar = True
      Size = 1
    end
  end
  object SelProduto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT CODIGO, '
      '               CODIGO_2, '
      '               NOME,'
      '               UNIDADE,'
      '               PRC_VENDA,'
      '               IPI,'
      '               MARGEM_BRUTA'
      'FROM EST_PRODUTOS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 224
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelProdutoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object SelProdutoCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"EST_PRODUTOS"."CODIGO_2"'
      Required = True
      Size = 15
    end
    object SelProdutoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelProdutoPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PRODUTOS"."PRC_VENDA"'
    end
    object SelProdutoIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"EST_PRODUTOS"."IPI"'
    end
    object SelProdutoMARGEM_BRUTA: TFloatField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"EST_PRODUTOS"."MARGEM_BRUTA"'
    end
    object SelProdutoUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"EST_PRODUTOS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
  end
  object SelTipoDocto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT * '
      'FROM GLO_TIPOS_DOCTO'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 226
    Top = 177
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelTipoDoctoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_TIPOS_DOCTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelTipoDoctoSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"GLO_TIPOS_DOCTO"."SIGLA"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SelTipoDoctoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_TIPOS_DOCTO"."NOME"'
      Required = True
      Size = 50
    end
    object SelTipoDoctoBLT: TIBStringField
      FieldName = 'BLT'
      Origin = '"GLO_TIPOS_DOCTO"."BLT"'
      FixedChar = True
      Size = 1
    end
  end
  object Parametros: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT CNPJ, '
      '               VENDEDOR, '
      '               DESCONTOS, '
      '               CUSTO_VARIAVEL, '
      '               PROPAGANDA '
      'FROM SIS_EMPRESAS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY CNPJ')
    Left = 48
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object ParametrosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ParametrosVENDEDOR: TFloatField
      FieldName = 'VENDEDOR'
      Origin = '"SIS_EMPRESAS"."VENDEDOR"'
      DisplayFormat = '#,##0.00'
    end
    object ParametrosDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"SIS_EMPRESAS"."DESCONTOS"'
      DisplayFormat = '#,##0.00'
    end
    object ParametrosCUSTO_VARIAVEL: TFloatField
      FieldName = 'CUSTO_VARIAVEL'
      Origin = '"SIS_EMPRESAS"."CUSTO_VARIAVEL"'
      DisplayFormat = '#,##0.00'
    end
    object ParametrosPROPAGANDA: TFloatField
      FieldName = 'PROPAGANDA'
      Origin = '"SIS_EMPRESAS"."PROPAGANDA"'
      DisplayFormat = '#,##0.00'
    end
  end
  object DsVendas: TDataSource
    AutoEdit = False
    Left = 48
    Top = 600
  end
  object SelVendedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'Select * From FAT_VENDEDOR'
      'Where Cnpj = :CNPJ AND ATIVO = '#39'S'#39
      'Order By Nome')
    Left = 296
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelVendedorCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelVendedorCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      Required = True
    end
    object SelVendedorNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object SelVendedorCOM_VISTA: TFloatField
      DisplayLabel = 'Vista'
      FieldName = 'COM_VISTA'
      Origin = '"FAT_VENDEDOR"."COM_VISTA"'
      DisplayFormat = '% ##0.00'
    end
    object SelVendedorCOM_PRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
      DisplayFormat = '% ##0.00'
    end
    object SelVendedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
      Required = True
    end
    object SelVendedorSENHA: TIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
  end
  object SelFormaPgto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'Select * From FIN_FORMAS_PAGTO'
      'Where Cnpj = :CNPJ AND ATIVO = '#39'S'#39
      'Order By Nome')
    Left = 392
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelFormaPgtoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_FORMAS_PAGTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelFormaPgtoCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_FORMAS_PAGTO"."CODIGO"'
      Required = True
    end
    object SelFormaPgtoNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_FORMAS_PAGTO"."NOME"'
      Required = True
      Size = 50
    end
    object SelFormaPgtoACRESCIMO: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'ACRESCIMO'
      Origin = '"FIN_FORMAS_PAGTO"."ACRESCIMO"'
      Required = True
      DisplayFormat = '% ##0.00'
    end
    object SelFormaPgtoDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"FIN_FORMAS_PAGTO"."DESCONTO"'
      Required = True
      DisplayFormat = '% ##0.00'
    end
    object SelFormaPgtoNPARCELAS: TIntegerField
      DisplayLabel = 'N'#186' Parcelas'
      FieldName = 'NPARCELAS'
      Origin = '"FIN_FORMAS_PAGTO"."NPARCELAS"'
      Required = True
    end
    object SelFormaPgtoCOMENTRADA: TIBStringField
      DisplayLabel = 'Com Entrada'
      FieldName = 'COMENTRADA'
      Origin = '"FIN_FORMAS_PAGTO"."COMENTRADA"'
      FixedChar = True
      Size = 1
    end
    object SelFormaPgtoINTERVALO: TIntegerField
      DisplayLabel = 'Intervalo'
      FieldName = 'INTERVALO'
      Origin = '"FIN_FORMAS_PAGTO"."INTERVALO"'
    end
    object SelFormaPgtoAVISTA: TIBStringField
      DisplayLabel = 'A Vista'
      FieldName = 'AVISTA'
      Origin = '"FIN_FORMAS_PAGTO"."AVISTA"'
      FixedChar = True
      Size = 1
    end
    object SelFormaPgtoFATURA_FUTURA: TIBStringField
      DisplayLabel = 'Fatura Futura'
      FieldName = 'FATURA_FUTURA'
      Origin = '"FIN_FORMAS_PAGTO"."FATURA_FUTURA"'
      FixedChar = True
      Size = 1
    end
    object SelFormaPgtoFORMA_ECF: TIBStringField
      DisplayLabel = 'Forma Ecf'
      FieldName = 'FORMA_ECF'
      Origin = '"FIN_FORMAS_PAGTO"."FORMA_ECF"'
      Size = 30
    end
    object SelFormaPgtoTIPO_PAGAMENTO: TIBStringField
      DisplayLabel = 'Tipo Pagto'
      FieldName = 'TIPO_PAGAMENTO'
      Origin = '"FIN_FORMAS_PAGTO"."TIPO_PAGAMENTO"'
      Size = 30
    end
    object SelFormaPgtoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FIN_FORMAS_PAGTO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object SelFormaPgtoINTERVALO_PRE_DEFINIDO: TIBStringField
      FieldName = 'INTERVALO_PRE_DEFINIDO'
      Origin = '"FIN_FORMAS_PAGTO"."INTERVALO_PRE_DEFINIDO"'
      FixedChar = True
      Size = 1
    end
    object SelFormaPgtoVENCTO_FIXO: TIBStringField
      FieldName = 'VENCTO_FIXO'
      Origin = '"FIN_FORMAS_PAGTO"."VENCTO_FIXO"'
      FixedChar = True
      Size = 1
    end
    object SelFormaPgtoDT_VENCTO_FIXO: TDateField
      FieldName = 'DT_VENCTO_FIXO'
      Origin = '"FIN_FORMAS_PAGTO"."DT_VENCTO_FIXO"'
    end
  end
  object SelTerceiros: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'Select * From FAT_TERCEIROS'
      'Where Cnpj = :CNPJ'
      'Order By Nome')
    Left = 392
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelTerceirosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_TERCEIROS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelTerceirosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_TERCEIROS"."CODIGO"'
      Required = True
    end
    object SelTerceirosNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_TERCEIROS"."NOME"'
      Size = 50
    end
    object SelTerceirosCOM_VISTA: TFloatField
      DisplayLabel = 'Com. Vista'
      FieldName = 'COM_VISTA'
      Origin = '"FAT_TERCEIROS"."COM_VISTA"'
      DisplayFormat = '% ##0.00'
    end
    object SelTerceirosCOM_PRAZO: TFloatField
      DisplayLabel = 'Com. Prazo'
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_TERCEIROS"."COM_PRAZO"'
      DisplayFormat = '% ##0.00'
    end
    object SelTerceirosPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa Fj'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_TERCEIROS"."PESSOA_FJ"'
      Required = True
    end
  end
  object SelPlano: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'select * from CTB_PLANOCONTA'
      'WHERE CNPJ = :CNPJ'
      'AND BANCO IS NOT NULL'
      'Order By NOME')
    Left = 488
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelPlanoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CTB_PLANOCONTA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelPlanoCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_PLANOCONTA"."CONTA"'
      Required = True
    end
    object SelPlanoCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CTB_PLANOCONTA"."CODIGO"'
      Required = True
      Size = 15
    end
    object SelPlanoCONTAPAI: TIBStringField
      DisplayLabel = 'Conta Pai'
      FieldName = 'CONTAPAI'
      Origin = '"CTB_PLANOCONTA"."CONTAPAI"'
      Required = True
      Size = 10
    end
    object SelPlanoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CTB_PLANOCONTA"."NOME"'
      Size = 50
    end
    object SelPlanoBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"CTB_PLANOCONTA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object SelPlanoULTIMO_CHEQUE: TIntegerField
      FieldName = 'ULTIMO_CHEQUE'
      Origin = '"CTB_PLANOCONTA"."ULTIMO_CHEQUE"'
    end
    object SelPlanoTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"CTB_PLANOCONTA"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object SelPlanoAGENCIA: TIBStringField
      FieldName = 'AGENCIA'
      Origin = '"CTB_PLANOCONTA"."AGENCIA"'
      Size = 10
    end
    object SelPlanoDV_AGENCIA: TIBStringField
      FieldName = 'DV_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."DV_AGENCIA"'
      FixedChar = True
      Size = 3
    end
    object SelPlanoCONTA_CORRENTE: TIBStringField
      FieldName = 'CONTA_CORRENTE'
      Origin = '"CTB_PLANOCONTA"."CONTA_CORRENTE"'
      Size = 15
    end
    object SelPlanoDV_CONTA_CORRENTE: TIBStringField
      FieldName = 'DV_CONTA_CORRENTE'
      Origin = '"CTB_PLANOCONTA"."DV_CONTA_CORRENTE"'
      FixedChar = True
      Size = 3
    end
    object SelPlanoDV_AGENCIA_CONTA: TIBStringField
      FieldName = 'DV_AGENCIA_CONTA'
      Origin = '"CTB_PLANOCONTA"."DV_AGENCIA_CONTA"'
      FixedChar = True
      Size = 3
    end
    object SelPlanoCTB_FLUXO_CAIXA: TIBStringField
      FieldName = 'CTB_FLUXO_CAIXA'
      Origin = '"CTB_PLANOCONTA"."CTB_FLUXO_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object SelPlanoGERA_BOLETOS: TIBStringField
      FieldName = 'GERA_BOLETOS'
      Origin = '"CTB_PLANOCONTA"."GERA_BOLETOS"'
      FixedChar = True
      Size = 1
    end
    object SelPlanoBLT_INSTRUCAO: TMemoField
      FieldName = 'BLT_INSTRUCAO'
      Origin = '"CTB_PLANOCONTA"."BLT_INSTRUCAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelPlanoBLT_LOCAL_PAGTO: TIBStringField
      FieldName = 'BLT_LOCAL_PAGTO'
      Origin = '"CTB_PLANOCONTA"."BLT_LOCAL_PAGTO"'
      Size = 200
    end
    object SelPlanoBLT_COD_CEDENTE: TIntegerField
      FieldName = 'BLT_COD_CEDENTE'
      Origin = '"CTB_PLANOCONTA"."BLT_COD_CEDENTE"'
    end
    object SelPlanoBLT_DIG_COD_CEDENTE: TIBStringField
      FieldName = 'BLT_DIG_COD_CEDENTE'
      Origin = '"CTB_PLANOCONTA"."BLT_DIG_COD_CEDENTE"'
      FixedChar = True
      Size = 1
    end
    object SelPlanoBLT_AGENCIA: TIBStringField
      FieldName = 'BLT_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."BLT_AGENCIA"'
      Size = 10
    end
    object SelPlanoBLT_DIG_AGENCIA: TIBStringField
      FieldName = 'BLT_DIG_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."BLT_DIG_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object SelPlanoBLT_CONVENIO: TIntegerField
      FieldName = 'BLT_CONVENIO'
      Origin = '"CTB_PLANOCONTA"."BLT_CONVENIO"'
    end
    object SelPlanoBLT_CONTA: TIBStringField
      FieldName = 'BLT_CONTA'
      Origin = '"CTB_PLANOCONTA"."BLT_CONTA"'
      Size = 10
    end
    object SelPlanoBLT_DIG_CONTA: TIBStringField
      FieldName = 'BLT_DIG_CONTA'
      Origin = '"CTB_PLANOCONTA"."BLT_DIG_CONTA"'
      FixedChar = True
      Size = 1
    end
    object SelPlanoBLT_CARTEIRA: TIBStringField
      FieldName = 'BLT_CARTEIRA'
      Origin = '"CTB_PLANOCONTA"."BLT_CARTEIRA"'
      Size = 10
    end
    object SelPlanoBLT_LAYOUT: TSmallintField
      FieldName = 'BLT_LAYOUT'
      Origin = '"CTB_PLANOCONTA"."BLT_LAYOUT"'
    end
    object SelPlanoBLT_ACEITE_DOCTO: TIBStringField
      FieldName = 'BLT_ACEITE_DOCTO'
      Origin = '"CTB_PLANOCONTA"."BLT_ACEITE_DOCTO"'
      FixedChar = True
      Size = 1
    end
    object SelPlanoBLT_DIAS_ABATIMENTO: TIBStringField
      FieldName = 'BLT_DIAS_ABATIMENTO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_ABATIMENTO"'
      FixedChar = True
      Size = 14
    end
    object SelPlanoBLT_DIAS_DESCONTO: TIntegerField
      FieldName = 'BLT_DIAS_DESCONTO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_DESCONTO"'
    end
    object SelPlanoBLT_DIAS_MORA_JUROS: TIntegerField
      FieldName = 'BLT_DIAS_MORA_JUROS'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_MORA_JUROS"'
    end
    object SelPlanoBLT_DIAS_PROTESTO: TIntegerField
      FieldName = 'BLT_DIAS_PROTESTO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_PROTESTO"'
    end
    object SelPlanoBLT_PCT_ABATIMENTO: TFloatField
      FieldName = 'BLT_PCT_ABATIMENTO'
      Origin = '"CTB_PLANOCONTA"."BLT_PCT_ABATIMENTO"'
    end
    object SelPlanoBLT_PCT_DESCONTO: TFloatField
      FieldName = 'BLT_PCT_DESCONTO'
      Origin = '"CTB_PLANOCONTA"."BLT_PCT_DESCONTO"'
    end
    object SelPlanoDESP_BANCARIA: TFloatField
      FieldName = 'DESP_BANCARIA'
      Origin = '"CTB_PLANOCONTA"."DESP_BANCARIA"'
    end
    object SelPlanoMORA_DIARIA: TFloatField
      FieldName = 'MORA_DIARIA'
      Origin = '"CTB_PLANOCONTA"."MORA_DIARIA"'
    end
    object SelPlanoBLT_VLR_IOF: TFloatField
      FieldName = 'BLT_VLR_IOF'
      Origin = '"CTB_PLANOCONTA"."BLT_VLR_IOF"'
    end
    object SelPlanoBLT_VLR_OUTRAS_DESP: TFloatField
      FieldName = 'BLT_VLR_OUTRAS_DESP'
      Origin = '"CTB_PLANOCONTA"."BLT_VLR_OUTRAS_DESP"'
    end
    object SelPlanoBLT_DIR_REMESSA: TIBStringField
      FieldName = 'BLT_DIR_REMESSA'
      Origin = '"CTB_PLANOCONTA"."BLT_DIR_REMESSA"'
      Size = 200
    end
    object SelPlanoBLT_DIR_RETORNO: TIBStringField
      FieldName = 'BLT_DIR_RETORNO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIR_RETORNO"'
      Size = 200
    end
    object SelPlanoBLT_MULTA: TFloatField
      FieldName = 'BLT_MULTA'
      Origin = '"CTB_PLANOCONTA"."BLT_MULTA"'
    end
    object SelPlanoBLT_NOSSO_NUM_INI: TIntegerField
      FieldName = 'BLT_NOSSO_NUM_INI'
      Origin = '"CTB_PLANOCONTA"."BLT_NOSSO_NUM_INI"'
    end
    object SelPlanoBLT_NOSSO_NUM_FIM: TIntegerField
      FieldName = 'BLT_NOSSO_NUM_FIM'
      Origin = '"CTB_PLANOCONTA"."BLT_NOSSO_NUM_FIM"'
    end
    object SelPlanoBLT_NOSSO_NUM_PROX: TIntegerField
      FieldName = 'BLT_NOSSO_NUM_PROX'
      Origin = '"CTB_PLANOCONTA"."BLT_NOSSO_NUM_PROX"'
    end
  end
  object SelFaturaVendas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = SelFaturaVendasBeforeOpen
    SQL.Strings = (
      
        'SELECT * FROM SEL_VER_VENDAS(:CNPJ,:TP,:I_CODIGO,:I_TIPO_VENDA,:' +
        'I_CLIENTE,:I_DATA_INI,:I_DATA_FIM,:I_DATA_CAIXA_INI,:I_DATA_CAIX' +
        'A_FIM)'
      'ORDER BY NOME'
      ''
      ''
      '')
    Left = 680
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TP'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'I_CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'I_TIPO_VENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'I_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'I_DATA_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'I_DATA_FIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'I_DATA_CAIXA_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'I_DATA_CAIXA_FIM'
        ParamType = ptUnknown
      end>
    object SelFaturaVendasCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDA"."CODIGO"'
      Required = True
    end
    object SelFaturaVendasFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDA"."HISTORICO"'
      Size = 100
    end
    object SelFaturaVendasPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDA"."PESSOA_FJ"'
      Required = True
    end
    object SelFaturaVendasUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDA"."USUARIO"'
      Required = True
    end
    object SelFaturaVendasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDA"."VENDEDOR"'
      Required = True
    end
    object SelFaturaVendasNUM_NF: TIntegerField
      Tag = 1
      DisplayLabel = 'NF'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDA"."NUM_NF"'
    end
    object SelFaturaVendasNUM_CUPOM: TIntegerField
      Tag = 1
      DisplayLabel = 'Cupom'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDA"."NUM_CUPOM"'
    end
    object SelFaturaVendasNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDA"."NATUREZA"'
      Required = True
    end
    object SelFaturaVendasTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"FAT_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object SelFaturaVendasNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object SelFaturaVendasORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object SelFaturaVendasLOCAL: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"FAT_VENDAS"."LOCAL"'
    end
    object SelFaturaVendasNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS"."NOME"'
      Size = 50
    end
    object SelFaturaVendasTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_VENDAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasVLR_TOTAL: TIBBCDField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      Origin = '"VER_VENDAS"."VLR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acres'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_VENDAS"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasNOMENATUREZA: TIBStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NOMENATUREZA'
      Origin = '"VER_VENDAS"."NOMENATUREZA"'
      Size = 50
    end
    object SelFaturaVendasNOMEVENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOMEVENDEDOR'
      Origin = '"VER_VENDAS"."NOMEVENDEDOR"'
      Size = 50
    end
    object SelFaturaVendasDATA_CAIXA: TDateField
      DisplayLabel = 'Dt. Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_VENDAS"."DATA_CAIXA"'
    end
    object SelFaturaVendasCONTA_CAIXA: TIntegerField
      DisplayLabel = 'Conta Caixa'
      FieldName = 'CONTA_CAIXA'
      Origin = '"VER_VENDAS"."CONTA_CAIXA"'
    end
    object SelFaturaVendasCANCELADA: TIBStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      Origin = '"VER_VENDAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasCARGA: TIntegerField
      DisplayLabel = 'Carga'
      FieldName = 'CARGA'
      Origin = '"VER_VENDAS"."CARGA"'
    end
    object SelFaturaVendasSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"VER_VENDAS"."SERIE"'
      FixedChar = True
      Size = 3
    end
    object SelFaturaVendasOBSERVACAO: TIBStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_VENDAS"."OBSERVACAO"'
      Size = 200
    end
    object SelFaturaVendasSELECIONADA: TIBStringField
      DisplayLabel = '[ x ]'
      FieldName = 'SELECIONADA'
      Origin = '"VER_VENDAS"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasID_AGRUPADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Refer'#234'ncia'
      FieldName = 'ID_AGRUPADOR'
      Origin = '"VER_VENDAS"."ID_AGRUPADOR"'
    end
    object SelFaturaVendasPCT_COMISSAO: TIBBCDField
      DisplayLabel = 'Comiss'#227'o (%)'
      FieldName = 'PCT_COMISSAO'
      Origin = '"VER_VENDAS"."PCT_COMISSAO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_VENDAS"."DATA"'
    end
    object SelFaturaVendasHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
      Origin = '"VER_VENDAS"."HORA"'
    end
    object SelFaturaVendasNFE_CHAVE: TIBStringField
      DisplayLabel = 'NFe. Chave'
      FieldName = 'NFE_CHAVE'
      Origin = '"VER_VENDAS"."NFE_CHAVE"'
      Size = 80
    end
    object SelFaturaVendasNFE_SELECIONADO: TIBStringField
      FieldName = 'NFE_SELECIONADO'
      Origin = '"VER_VENDAS"."NFE_SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasNFE_VALIDADA: TIBStringField
      FieldName = 'NFE_VALIDADA'
      Origin = '"VER_VENDAS"."NFE_VALIDADA"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasNFE_ASSINADA: TIBStringField
      FieldName = 'NFE_ASSINADA'
      Origin = '"VER_VENDAS"."NFE_ASSINADA"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasNFE_TRANSMITIDA: TIBStringField
      FieldName = 'NFE_TRANSMITIDA'
      Origin = '"VER_VENDAS"."NFE_TRANSMITIDA"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasNFE_AUTORIZADA: TIBStringField
      DisplayLabel = 'NFe. Status'
      FieldName = 'NFE_AUTORIZADA'
      Origin = '"VER_VENDAS"."NFE_AUTORIZADA"'
      OnGetText = SelFaturaVendasNFE_AUTORIZADAGetText
      OnSetText = SelFaturaVendasNFE_AUTORIZADASetText
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasNFE_DANFE_IMPRESSO: TIBStringField
      FieldName = 'NFE_DANFE_IMPRESSO'
      Origin = '"VER_VENDAS"."NFE_DANFE_IMPRESSO"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasN_SEQ_ECF: TIBStringField
      DisplayLabel = 'N. Seq. ECF'
      FieldName = 'N_SEQ_ECF'
      Origin = '"VER_VENDAS"."N_SEQ_ECF"'
      FixedChar = True
      Size = 3
    end
    object SelFaturaVendasN_SERIE_ECF: TIBStringField
      DisplayLabel = 'N. Serie ECF'
      FieldName = 'N_SERIE_ECF'
      Origin = '"VER_VENDAS"."N_SERIE_ECF"'
      FixedChar = True
    end
    object SelFaturaVendasNFE_PROTOCOLO: TIBStringField
      DisplayLabel = 'NFe. Protocolo'
      FieldName = 'NFE_PROTOCOLO'
      Origin = '"VER_VENDAS"."NFE_PROTOCOLO"'
      FixedChar = True
      Size = 200
    end
    object SelFaturaVendasNFE_RECIBO: TIBStringField
      DisplayLabel = 'NFe. Recibo'
      FieldName = 'NFE_RECIBO'
      Origin = '"VER_VENDAS"."NFE_RECIBO"'
      FixedChar = True
      Size = 200
    end
    object SelFaturaVendasNFE_XML: TBlobField
      DisplayLabel = 'NFe. XML'
      FieldName = 'NFE_XML'
      Origin = '"VER_VENDAS"."NFE_XML"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SelFaturaVendasENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_VENDAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasBASE_ICM: TIBBCDField
      FieldName = 'BASE_ICM'
      Origin = '"VER_VENDAS"."BASE_ICM"'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_VENDAS"."ICM"'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasBASE_ICM_SUBST: TIBBCDField
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"VER_VENDAS"."BASE_ICM_SUBST"'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasVALOR_ICM_SUBST: TIBBCDField
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"VER_VENDAS"."VALOR_ICM_SUBST"'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasFRETE: TIBBCDField
      FieldName = 'FRETE'
      Origin = '"VER_VENDAS"."FRETE"'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasSEGURO: TIBBCDField
      FieldName = 'SEGURO'
      Origin = '"VER_VENDAS"."SEGURO"'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasDESPESAS: TIBBCDField
      FieldName = 'DESPESAS'
      Origin = '"VER_VENDAS"."DESPESAS"'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_VENDAS"."IPI"'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasTOTAL_NOTA: TIBBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = '"VER_VENDAS"."TOTAL_NOTA"'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasSTATUS_CARREGAMENTO: TIntegerField
      FieldName = 'STATUS_CARREGAMENTO'
      Origin = '"VER_VENDAS"."STATUS_CARREGAMENTO"'
    end
    object SelFaturaVendasORDEM_CARGA: TIntegerField
      FieldName = 'ORDEM_CARGA'
      Origin = '"VER_VENDAS"."ORDEM_CARGA"'
    end
    object SelFaturaVendasPSA_ATIVIDADE: TIntegerField
      FieldName = 'PSA_ATIVIDADE'
      Origin = '"VER_VENDAS"."PSA_ATIVIDADE"'
    end
    object SelFaturaVendasPSA_BAIRRO: TIntegerField
      FieldName = 'PSA_BAIRRO'
      Origin = '"VER_VENDAS"."PSA_BAIRRO"'
    end
    object SelFaturaVendasPSA_CELULAR: TIBStringField
      FieldName = 'PSA_CELULAR'
      Origin = '"VER_VENDAS"."PSA_CELULAR"'
    end
    object SelFaturaVendasPSA_CEP: TIBStringField
      FieldName = 'PSA_CEP'
      Origin = '"VER_VENDAS"."PSA_CEP"'
      Size = 8
    end
    object SelFaturaVendasPSA_CIDADE: TIntegerField
      FieldName = 'PSA_CIDADE'
      Origin = '"VER_VENDAS"."PSA_CIDADE"'
    end
    object SelFaturaVendasPSA_COMPLEMENTO: TIBStringField
      FieldName = 'PSA_COMPLEMENTO'
      Origin = '"VER_VENDAS"."PSA_COMPLEMENTO"'
      Size = 30
    end
    object SelFaturaVendasPSA_CONTATO: TIBStringField
      FieldName = 'PSA_CONTATO'
      Origin = '"VER_VENDAS"."PSA_CONTATO"'
      Size = 30
    end
    object SelFaturaVendasPSA_CONVENIO: TIntegerField
      FieldName = 'PSA_CONVENIO'
      Origin = '"VER_VENDAS"."PSA_CONVENIO"'
    end
    object SelFaturaVendasPSA_CPF_CGC: TIBStringField
      FieldName = 'PSA_CPF_CGC'
      Origin = '"VER_VENDAS"."PSA_CPF_CGC"'
      Size = 15
    end
    object SelFaturaVendasPSA_DT_CADASTRO: TDateTimeField
      FieldName = 'PSA_DT_CADASTRO'
      Origin = '"VER_VENDAS"."PSA_DT_CADASTRO"'
    end
    object SelFaturaVendasPSA_DT_NASCIMENTO: TDateTimeField
      FieldName = 'PSA_DT_NASCIMENTO'
      Origin = '"VER_VENDAS"."PSA_DT_NASCIMENTO"'
    end
    object SelFaturaVendasPSA_EMISSOR: TIBStringField
      FieldName = 'PSA_EMISSOR'
      Origin = '"VER_VENDAS"."PSA_EMISSOR"'
      Size = 6
    end
    object SelFaturaVendasPSA_ENDERECO: TIntegerField
      FieldName = 'PSA_ENDERECO'
      Origin = '"VER_VENDAS"."PSA_ENDERECO"'
    end
    object SelFaturaVendasPSA_FANTASIA: TIBStringField
      FieldName = 'PSA_FANTASIA'
      Origin = '"VER_VENDAS"."PSA_FANTASIA"'
      Size = 50
    end
    object SelFaturaVendasPSA_FAX: TIBStringField
      FieldName = 'PSA_FAX'
      Origin = '"VER_VENDAS"."PSA_FAX"'
    end
    object SelFaturaVendasPSA_FONE: TIBStringField
      FieldName = 'PSA_FONE'
      Origin = '"VER_VENDAS"."PSA_FONE"'
    end
    object SelFaturaVendasPSA_INSC_MUNIC: TIBStringField
      FieldName = 'PSA_INSC_MUNIC'
      Origin = '"VER_VENDAS"."PSA_INSC_MUNIC"'
      Size = 15
    end
    object SelFaturaVendasPSA_NOME_RAZAO: TIBStringField
      FieldName = 'PSA_NOME_RAZAO'
      Origin = '"VER_VENDAS"."PSA_NOME_RAZAO"'
      Size = 50
    end
    object SelFaturaVendasPSA_NUMERO: TIBStringField
      FieldName = 'PSA_NUMERO'
      Origin = '"VER_VENDAS"."PSA_NUMERO"'
      Size = 15
    end
    object SelFaturaVendasPSA_PESSOA: TIBStringField
      FieldName = 'PSA_PESSOA'
      Origin = '"VER_VENDAS"."PSA_PESSOA"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasPSA_RG_IE: TIBStringField
      FieldName = 'PSA_RG_IE'
      Origin = '"VER_VENDAS"."PSA_RG_IE"'
      Size = 15
    end
    object SelFaturaVendasPSA_UF: TIBStringField
      FieldName = 'PSA_UF'
      Origin = '"VER_VENDAS"."PSA_UF"'
      FixedChar = True
      Size = 2
    end
    object SelFaturaVendasLGD_NOME: TIBStringField
      FieldName = 'LGD_NOME'
      Origin = '"VER_VENDAS"."LGD_NOME"'
      Size = 50
    end
    object SelFaturaVendasBAI_NOME: TIBStringField
      FieldName = 'BAI_NOME'
      Origin = '"VER_VENDAS"."BAI_NOME"'
      Size = 50
    end
    object SelFaturaVendasCID_NOME: TIBStringField
      FieldName = 'CID_NOME'
      Origin = '"VER_VENDAS"."CID_NOME"'
      Size = 50
    end
    object SelFaturaVendasENTREGA_FUTURA: TIBStringField
      FieldName = 'ENTREGA_FUTURA'
      Origin = '"VER_VENDAS"."ENTREGA_FUTURA"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasATI_NOME: TIBStringField
      FieldName = 'ATI_NOME'
      Origin = '"VER_VENDAS"."ATI_NOME"'
      Size = 50
    end
    object SelFaturaVendasREG_NOME: TIBStringField
      FieldName = 'REG_NOME'
      Origin = '"VER_VENDAS"."REG_NOME"'
      Size = 50
    end
    object SelFaturaVendasPSA_EMAIL: TIBStringField
      FieldName = 'PSA_EMAIL'
      Origin = '"VER_VENDAS"."PSA_EMAIL"'
      Size = 80
    end
    object SelFaturaVendasNUM_NF_XML: TIBStringField
      FieldName = 'NUM_NF_XML'
      Origin = '"VER_VENDAS"."NUM_NF_XML"'
      Size = 8
    end
    object SelFaturaVendasCONT_CARTAO: TIntegerField
      DisplayLabel = 'Parc. Cart'#227'o'
      FieldName = 'CONT_CARTAO'
      Origin = '"VER_VENDAS"."CONT_CARTAO"'
    end
    object SelFaturaVendasCONT_CHEQUE: TIntegerField
      DisplayLabel = 'Parc. Cheque'
      FieldName = 'CONT_CHEQUE'
      Origin = '"VER_VENDAS"."CONT_CHEQUE"'
    end
    object SelFaturaVendasVD_CHEQUE: TFloatField
      DisplayLabel = 'Vlr. Cheque'
      FieldName = 'VD_CHEQUE'
      Origin = '"VER_VENDAS"."VD_CHEQUE"'
      DisplayFormat = '###,##0.00'
    end
    object SelFaturaVendasVD_CARTAO: TFloatField
      DisplayLabel = 'Vlr. Cart'#227'o'
      FieldName = 'VD_CARTAO'
      Origin = '"VER_VENDAS"."VD_CARTAO"'
      DisplayFormat = '###,##0.00'
    end
    object SelFaturaVendasVD_DINHEIRO: TFloatField
      DisplayLabel = 'Vlr. Dinheiro'
      FieldName = 'VD_DINHEIRO'
      Origin = '"VER_VENDAS"."VD_DINHEIRO"'
      DisplayFormat = '###,##0.00'
    end
    object SelFaturaVendasVD_ENTRADA: TFloatField
      DisplayLabel = 'Vlr. Entrada'
      FieldName = 'VD_ENTRADA'
      Origin = '"VER_VENDAS"."VD_ENTRADA"'
      DisplayFormat = '###,##0.00'
    end
    object SelFaturaVendasDIVERG_CARTAO: TFloatField
      DisplayLabel = 'Div. Cart'#227'o'
      FieldName = 'DIVERG_CARTAO'
      Origin = '"VER_VENDAS"."DIVERG_CARTAO"'
      DisplayFormat = '###,##0.00'
    end
    object SelFaturaVendasDIVERG_CHEQUE: TFloatField
      DisplayLabel = 'Div. Cheque'
      FieldName = 'DIVERG_CHEQUE'
      Origin = '"VER_VENDAS"."DIVERG_CHEQUE"'
      DisplayFormat = '###,##0.00'
    end
    object SelFaturaVendasDT_EMISSAO_NF: TDateField
      DisplayLabel = 'Dt. Emiss'#227'o NF'
      FieldName = 'DT_EMISSAO_NF'
      Origin = '"VER_VENDAS"."DT_EMISSAO_NF"'
    end
    object SelFaturaVendasNFE_IMPRESSAO: TIBStringField
      DisplayLabel = 'Imp. NFe'
      FieldName = 'NFE_IMPRESSAO'
      Origin = '"VER_VENDAS"."NFE_IMPRESSAO"'
      FixedChar = True
      Size = 1
    end
  end
  object ConfCliente: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'Select Pessoa_Fj, Cod_Vend, Cod_FPagto, Requisicao, Dia_Pref_Fat' +
        ', '
      
        'Limite_Tempo, Limite_Credito, Classif, Bloqueado, Obs from Glo_C' +
        'lientes ')
    Left = 592
    Top = 8
    object ConfClientePESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CLIENTES"."PESSOA_FJ"'
      Required = True
    end
    object ConfClienteCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
      Origin = '"GLO_CLIENTES"."COD_VEND"'
    end
    object ConfClienteCOD_FPAGTO: TIntegerField
      FieldName = 'COD_FPAGTO'
      Origin = '"GLO_CLIENTES"."COD_FPAGTO"'
    end
    object ConfClienteREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"GLO_CLIENTES"."REQUISICAO"'
      FixedChar = True
      Size = 1
    end
    object ConfClienteDIA_PREF_FAT: TIntegerField
      FieldName = 'DIA_PREF_FAT'
      Origin = '"GLO_CLIENTES"."DIA_PREF_FAT"'
    end
    object ConfClienteLIMITE_TEMPO: TIntegerField
      FieldName = 'LIMITE_TEMPO'
      Origin = '"GLO_CLIENTES"."LIMITE_TEMPO"'
    end
    object ConfClienteLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      Origin = '"GLO_CLIENTES"."LIMITE_CREDITO"'
    end
    object ConfClienteCLASSIF: TIBStringField
      FieldName = 'CLASSIF'
      Origin = '"GLO_CLIENTES"."CLASSIF"'
      FixedChar = True
      Size = 1
    end
    object ConfClienteBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"GLO_CLIENTES"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object ConfClienteOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_CLIENTES"."OBS"'
      Size = 8
    end
  end
  object VendasPdv: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    AfterInsert = VendasAfterInsert
    BeforeDelete = VendasPdvBeforeDelete
    BeforeOpen = VendasBeforeOpen
    OnCalcFields = VendasPdvCalcFields
    OnNewRecord = VendasPdvNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_VENDAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_VENDAS'
      '  (CNPJ, CODIGO, DATA, FECHADA, HISTORICO, PESSOA_FJ, USUARIO, '
      'VENDEDOR, '
      '   NATUREZA, ENVIADA_CX, FORMA_PGTO, NUM_NF, NUM_CUPOM, '
      'PROPRIEDADE, CONVENIADO, '
      '   TIPO_DOCTO, LOCAL_COBRANCA, DESC_ACRES, ENTRADA, DINHEIRO, '
      'CHEQUE, CARTAO, '
      
        '   TICKET, TOTAL, OBSERVACAO, VLR_PARC_LC, TERCEIRO, CARGA, VOLU' +
        'ME, '
      'PESO, '
      '   REQUISICAO, DESCRICAO, TIPO_VENDA, NOME_CONSUMIDOR, '
      'ORCAMENTO, TROCO, '
      '   LOCAL, NOME, CANCELADA, SELECIONADA, DUPLICATA, RECEBIDAS, '
      'CONS_REV, '
      '   CENTRO_CUSTO, ES, GERA_FINANCEIRO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :FECHADA, :HISTORICO, :PESSOA_FJ, :USU' +
        'ARIO, '
      ':VENDEDOR, '
      '   :NATUREZA, :ENVIADA_CX, :FORMA_PGTO, :NUM_NF, :NUM_CUPOM, '
      ':PROPRIEDADE, '
      '   :CONVENIADO, :TIPO_DOCTO, :LOCAL_COBRANCA, :DESC_ACRES, '
      ':ENTRADA, :DINHEIRO, '
      
        '   :CHEQUE, :CARTAO, :TICKET, :TOTAL, :OBSERVACAO, :VLR_PARC_LC,' +
        ' '
      ':TERCEIRO, '
      
        '   :CARGA, :VOLUME, :PESO, :REQUISICAO, :DESCRICAO, :TIPO_VENDA,' +
        ' '
      ':NOME_CONSUMIDOR, '
      '   :ORCAMENTO, :TROCO, :LOCAL, :NOME, :CANCELADA, :SELECIONADA, '
      ':DUPLICATA, '
      '   :RECEBIDAS, :CONS_REV, :CENTRO_CUSTO, :ES, :GERA_FINANCEIRO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  FECHADA,'
      '  HISTORICO,'
      '  PESSOA_FJ,'
      '  USUARIO,'
      '  VENDEDOR,'
      '  NATUREZA,'
      '  ENVIADA_CX,'
      '  FORMA_PGTO,'
      '  NUM_NF,'
      '  NUM_CUPOM,'
      '  PROPRIEDADE,'
      '  CONVENIADO,'
      '  TIPO_DOCTO,'
      '  LOCAL_COBRANCA,'
      '  DESC_ACRES,'
      '  ENTRADA,'
      '  DINHEIRO,'
      '  CHEQUE,'
      '  CARTAO,'
      '  TICKET,'
      '  TOTAL,'
      '  OBSERVACAO,'
      '  VLR_PARC_LC,'
      '  TERCEIRO,'
      '  CARGA,'
      '  VOLUME,'
      '  PESO,'
      '  REQUISICAO,'
      '  DESCRICAO,'
      '  TIPO_VENDA,'
      '  NOME_CONSUMIDOR,'
      '  ORCAMENTO,'
      '  TROCO,'
      '  LOCAL,'
      '  NOME,'
      '  DATA_CAIXA,'
      '  CONTA_CAIXA,'
      '  CANCELADA,'
      '  TOTAL_NOTA,'
      '  BASE_ICM,'
      '  ICM,'
      '  BASE_ICM_SUBST,'
      '  VALOR_ICM_SUBST,'
      '  FRETE,'
      '  SEGURO,'
      '  DESPESAS,'
      '  IPI,'
      '  APRAZO,'
      '  SELECIONADA,'
      '  DUPLICATA,'
      '  BANCO,'
      '  RECEBIDAS,'
      '  CONTROLA_PLACA,'
      '  CONTROLA_KM,'
      '  ASSINA_NOTA,'
      '  KM_ATUAL,'
      '  NOME_PROPRIEDADE,'
      '  NOME_VENDEDOR,'
      '  NOME_NATUREZA,'
      '  NOME_TERCEIRO,'
      '  NOME_FORMA,'
      '  UF,'
      '  VALIDADE,'
      '  MEDIA_KM,'
      '  DOCUMENTOS_CONSUMIDOR,'
      '  ENDERECO_CONSUMIDOR,'
      '  TURNO,'
      '  HORA,'
      '  NAO_COBR_JUR_ATE,'
      '  SERIE,'
      '  DESCONTOS_CONCEDIDOS,'
      '  NOME_CONVENIO,'
      '  DT_EMISSAO_AGRUPADA,'
      '  TRANSPORTADORA,'
      '  DATA_CANCELAMENTO,'
      '  TOTAL_FISCAL,'
      '  CONS_REV,'
      '  IRRF,'
      '  INSS,'
      '  PIS_COFINS_CSLL,'
      '  ISS,'
      '  VALE_TROCO,'
      '  CIDADE_CONSUMIDOR,'
      '  PGTO_FRETE,'
      '  BAIRRO_CONSUMIDOR,'
      '  FONE_CONSUMIDOR,'
      '  MESA,'
      '  DESCTO_RES,'
      '  COMPROMETER_ESTOQUE,'
      '  ID_AGRUPADOR,'
      '  DESCTO_ICMS,'
      '  PCT_DESCTO_ICMS,'
      '  NF_AGRUPADA,'
      '  TRP_QTDE,'
      '  TRP_ESPECIE,'
      '  TRP_PESO_BRUTO,'
      '  TRP_PESO_LIQUIDO,'
      '  TRP_NUMERO,'
      '  TRP_MARCA,'
      '  TRP_NOME,'
      '  STATUS_CARREGAMENTO,'
      '  ORDEM_CARGA,'
      '  ENTREGA_FUTURA,'
      '  PCT_COMISSAO,'
      '  CENTRO_CUSTO,'
      '  ES,'
      '  GERA_FINANCEIRO'
      'from FAT_VENDAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select  '
      '* '
      'from FAT_VENDAS'
      'WHERE CNPJ = :CNPJ AND'
      '               CODIGO = :CODIGO AND ENVIADA_CX <> '#39'S'#39
      'ORDER BY CNPJ, CODIGO')
    ModifySQL.Strings = (
      'update FAT_VENDAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  FECHADA = :FECHADA,'
      '  HISTORICO = :HISTORICO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  USUARIO = :USUARIO,'
      '  VENDEDOR = :VENDEDOR,'
      '  NATUREZA = :NATUREZA,'
      '  ENVIADA_CX = :ENVIADA_CX,'
      '  FORMA_PGTO = :FORMA_PGTO,'
      '  NUM_NF = :NUM_NF,'
      '  NUM_CUPOM = :NUM_CUPOM,'
      '  PROPRIEDADE = :PROPRIEDADE,'
      '  CONVENIADO = :CONVENIADO,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  LOCAL_COBRANCA = :LOCAL_COBRANCA,'
      '  DESC_ACRES = :DESC_ACRES,'
      '  ENTRADA = :ENTRADA,'
      '  DINHEIRO = :DINHEIRO,'
      '  CHEQUE = :CHEQUE,'
      '  CARTAO = :CARTAO,'
      '  TICKET = :TICKET,'
      '  TOTAL = :TOTAL,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  VLR_PARC_LC = :VLR_PARC_LC,'
      '  TERCEIRO = :TERCEIRO,'
      '  CARGA = :CARGA,'
      '  VOLUME = :VOLUME,'
      '  PESO = :PESO,'
      '  REQUISICAO = :REQUISICAO,'
      '  DESCRICAO = :DESCRICAO,'
      '  TIPO_VENDA = :TIPO_VENDA,'
      '  NOME_CONSUMIDOR = :NOME_CONSUMIDOR,'
      '  ORCAMENTO = :ORCAMENTO,'
      '  TROCO = :TROCO,'
      '  LOCAL = :LOCAL,'
      '  NOME = :NOME,'
      '  CANCELADA = :CANCELADA,'
      '  SELECIONADA = :SELECIONADA,'
      '  DUPLICATA = :DUPLICATA,'
      '  RECEBIDAS = :RECEBIDAS,'
      '  CONS_REV = :CONS_REV,'
      '  CENTRO_CUSTO = :CENTRO_CUSTO,'
      '  ES = :ES,'
      '  GERA_FINANCEIRO = :GERA_FINANCEIRO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'FAT_VENDAS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 48
    Top = 8
    object VendasPdvCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object VendasPdvCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object VendasPdvFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDAS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDAS"."HISTORICO"'
      Size = 100
    end
    object VendasPdvPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDAS"."PESSOA_FJ"'
      Required = True
      OnValidate = VendasPdvPESSOA_FJValidate
    end
    object VendasPdvUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDAS"."USUARIO"'
      Required = True
    end
    object VendasPdvVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS"."VENDEDOR"'
      Required = True
      OnValidate = VendasPdvVENDEDORValidate
    end
    object VendasPdvNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDAS"."NATUREZA"'
      Required = True
      OnValidate = VendasPdvNATUREZAValidate
    end
    object VendasPdvENVIADA_CX: TIBStringField
      DisplayLabel = 'Enc. Caixa'
      FieldName = 'ENVIADA_CX'
      Origin = '"FAT_VENDAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvFORMA_PGTO: TIntegerField
      DisplayLabel = 'Forma Pgto'
      FieldName = 'FORMA_PGTO'
      Origin = '"FAT_VENDAS"."FORMA_PGTO"'
    end
    object VendasPdvNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object VendasPdvNUM_CUPOM: TIntegerField
      DisplayLabel = 'Cf'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDAS"."NUM_CUPOM"'
    end
    object VendasPdvPROPRIEDADE: TIntegerField
      DisplayLabel = 'Propriedade'
      FieldName = 'PROPRIEDADE'
      Origin = '"FAT_VENDAS"."PROPRIEDADE"'
    end
    object VendasPdvCONVENIADO: TIntegerField
      DisplayLabel = 'Conveniado'
      FieldName = 'CONVENIADO'
      Origin = '"FAT_VENDAS"."CONVENIADO"'
    end
    object VendasPdvTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"FAT_VENDAS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object VendasPdvLOCAL_COBRANCA: TIntegerField
      DisplayLabel = 'Local Cobran'#231'a'
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"FAT_VENDAS"."LOCAL_COBRANCA"'
    end
    object VendasPdvDESC_ACRES: TFloatField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvENTRADA: TFloatField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"FAT_VENDAS"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvDINHEIRO: TFloatField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"FAT_VENDAS"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvCHEQUE: TFloatField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FAT_VENDAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvCARTAO: TFloatField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"FAT_VENDAS"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvTICKET: TFloatField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"FAT_VENDAS"."TICKET"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvVLR_PARC_LC: TFloatField
      DisplayLabel = 'Vlr Parcelado'
      FieldName = 'VLR_PARC_LC'
      Origin = '"FAT_VENDAS"."VLR_PARC_LC"'
    end
    object VendasPdvTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"FAT_VENDAS"."TIPO_VENDA"'
      OnGetText = VendasPdvTIPO_VENDAGetText
      OnSetText = VendasPdvTIPO_VENDASetText
      FixedChar = True
      Size = 3
    end
    object VendasPdvNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Nome Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object VendasPdvOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"FAT_VENDAS"."OBSERVACAO"'
      Size = 80
    end
    object VendasPdvTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"FAT_VENDAS"."TERCEIRO"'
    end
    object VendasPdvCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"FAT_VENDAS"."CARGA"'
    end
    object VendasPdvVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS"."VOLUME"'
    end
    object VendasPdvPESO: TFloatField
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS"."PESO"'
    end
    object VendasPdvREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"FAT_VENDAS"."REQUISICAO"'
      Size = 6
    end
    object VendasPdvDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Origin = '"FAT_VENDAS"."DESCRICAO"'
      Size = 8
    end
    object VendasPdvORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object VendasPdvTROCO: TFloatField
      FieldName = 'TROCO'
      Origin = '"FAT_VENDAS"."TROCO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvLOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = '"FAT_VENDAS"."LOCAL"'
    end
    object VendasPdvNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS"."NOME"'
      Size = 50
    end
    object VendasPdvCANCELADA: TIBStringField
      FieldName = 'CANCELADA'
      Origin = '"FAT_VENDAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvSELECIONADA: TIBStringField
      FieldName = 'SELECIONADA'
      Origin = '"FAT_VENDAS"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvDUPLICATA: TIntegerField
      FieldName = 'DUPLICATA'
      Origin = '"FAT_VENDAS"."DUPLICATA"'
    end
    object VendasPdvRECEBIDAS: TFloatField
      FieldName = 'RECEBIDAS'
      Origin = '"FAT_VENDAS"."RECEBIDAS"'
    end
    object VendasPdvTotal_Geral: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Geral'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VendasPdvCONS_REV: TIBStringField
      FieldName = 'CONS_REV'
      Origin = '"FAT_VENDAS"."CONS_REV"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvCONTA_CAIXA: TIntegerField
      FieldName = 'CONTA_CAIXA'
      Origin = '"FAT_VENDAS"."CONTA_CAIXA"'
    end
    object VendasPdvTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      Origin = '"FAT_VENDAS"."TOTAL_NOTA"'
    end
    object VendasPdvBASE_ICM: TFloatField
      FieldName = 'BASE_ICM'
      Origin = '"FAT_VENDAS"."BASE_ICM"'
    end
    object VendasPdvICM: TFloatField
      FieldName = 'ICM'
      Origin = '"FAT_VENDAS"."ICM"'
    end
    object VendasPdvBASE_ICM_SUBST: TFloatField
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"FAT_VENDAS"."BASE_ICM_SUBST"'
    end
    object VendasPdvVALOR_ICM_SUBST: TFloatField
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"FAT_VENDAS"."VALOR_ICM_SUBST"'
    end
    object VendasPdvFRETE: TFloatField
      FieldName = 'FRETE'
      Origin = '"FAT_VENDAS"."FRETE"'
    end
    object VendasPdvSEGURO: TFloatField
      FieldName = 'SEGURO'
      Origin = '"FAT_VENDAS"."SEGURO"'
    end
    object VendasPdvDESPESAS: TFloatField
      FieldName = 'DESPESAS'
      Origin = '"FAT_VENDAS"."DESPESAS"'
    end
    object VendasPdvIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"FAT_VENDAS"."IPI"'
    end
    object VendasPdvAPRAZO: TFloatField
      FieldName = 'APRAZO'
      Origin = '"FAT_VENDAS"."APRAZO"'
    end
    object VendasPdvBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"FAT_VENDAS"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object VendasPdvCONTROLA_PLACA: TIBStringField
      FieldName = 'CONTROLA_PLACA'
      Origin = '"FAT_VENDAS"."CONTROLA_PLACA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvCONTROLA_KM: TIBStringField
      FieldName = 'CONTROLA_KM'
      Origin = '"FAT_VENDAS"."CONTROLA_KM"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"FAT_VENDAS"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvKM_ATUAL: TFloatField
      FieldName = 'KM_ATUAL'
      Origin = '"FAT_VENDAS"."KM_ATUAL"'
    end
    object VendasPdvNOME_PROPRIEDADE: TIBStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = '"FAT_VENDAS"."NOME_PROPRIEDADE"'
      Size = 50
    end
    object VendasPdvNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_VENDAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object VendasPdvNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"FAT_VENDAS"."NOME_NATUREZA"'
      Size = 50
    end
    object VendasPdvNOME_TERCEIRO: TIBStringField
      FieldName = 'NOME_TERCEIRO'
      Origin = '"FAT_VENDAS"."NOME_TERCEIRO"'
      Size = 50
    end
    object VendasPdvNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"FAT_VENDAS"."NOME_FORMA"'
      Size = 50
    end
    object VendasPdvUF: TIBStringField
      FieldName = 'UF'
      Origin = '"FAT_VENDAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object VendasPdvVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
      Origin = '"FAT_VENDAS"."VALIDADE"'
    end
    object VendasPdvMEDIA_KM: TFloatField
      FieldName = 'MEDIA_KM'
      Origin = '"FAT_VENDAS"."MEDIA_KM"'
    end
    object VendasPdvDOCUMENTOS_CONSUMIDOR: TIBStringField
      FieldName = 'DOCUMENTOS_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."DOCUMENTOS_CONSUMIDOR"'
    end
    object VendasPdvENDERECO_CONSUMIDOR: TIBStringField
      FieldName = 'ENDERECO_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."ENDERECO_CONSUMIDOR"'
      Size = 30
    end
    object VendasPdvTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FAT_VENDAS"."TURNO"'
    end
    object VendasPdvHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"FAT_VENDAS"."HORA"'
    end
    object VendasPdvNAO_COBR_JUR_ATE: TIntegerField
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"FAT_VENDAS"."NAO_COBR_JUR_ATE"'
    end
    object VendasPdvSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"FAT_VENDAS"."SERIE"'
      FixedChar = True
      Size = 3
    end
    object VendasPdvDESCONTOS_CONCEDIDOS: TFloatField
      FieldName = 'DESCONTOS_CONCEDIDOS'
      Origin = '"FAT_VENDAS"."DESCONTOS_CONCEDIDOS"'
    end
    object VendasPdvNOME_CONVENIO: TIBStringField
      FieldName = 'NOME_CONVENIO'
      Origin = '"FAT_VENDAS"."NOME_CONVENIO"'
      Size = 50
    end
    object VendasPdvDT_EMISSAO_AGRUPADA: TDateTimeField
      FieldName = 'DT_EMISSAO_AGRUPADA'
      Origin = '"FAT_VENDAS"."DT_EMISSAO_AGRUPADA"'
    end
    object VendasPdvTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Origin = '"FAT_VENDAS"."TRANSPORTADORA"'
    end
    object VendasPdvDATA_CANCELAMENTO: TDateTimeField
      FieldName = 'DATA_CANCELAMENTO'
      Origin = '"FAT_VENDAS"."DATA_CANCELAMENTO"'
    end
    object VendasPdvTOTAL_FISCAL: TFloatField
      FieldName = 'TOTAL_FISCAL'
      Origin = '"FAT_VENDAS"."TOTAL_FISCAL"'
    end
    object VendasPdvIRRF: TFloatField
      FieldName = 'IRRF'
      Origin = '"FAT_VENDAS"."IRRF"'
    end
    object VendasPdvINSS: TFloatField
      FieldName = 'INSS'
      Origin = '"FAT_VENDAS"."INSS"'
    end
    object VendasPdvPIS_COFINS_CSLL: TFloatField
      FieldName = 'PIS_COFINS_CSLL'
      Origin = '"FAT_VENDAS"."PIS_COFINS_CSLL"'
    end
    object VendasPdvISS: TFloatField
      FieldName = 'ISS'
      Origin = '"FAT_VENDAS"."ISS"'
    end
    object VendasPdvVALE_TROCO: TIBStringField
      FieldName = 'VALE_TROCO'
      Origin = '"FAT_VENDAS"."VALE_TROCO"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvCIDADE_CONSUMIDOR: TIBStringField
      FieldName = 'CIDADE_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."CIDADE_CONSUMIDOR"'
      Size = 50
    end
    object VendasPdvPGTO_FRETE: TIBStringField
      FieldName = 'PGTO_FRETE'
      Origin = '"FAT_VENDAS"."PGTO_FRETE"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvBAIRRO_CONSUMIDOR: TIBStringField
      FieldName = 'BAIRRO_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."BAIRRO_CONSUMIDOR"'
      Size = 50
    end
    object VendasPdvFONE_CONSUMIDOR: TIBStringField
      FieldName = 'FONE_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."FONE_CONSUMIDOR"'
    end
    object VendasPdvMESA: TIntegerField
      FieldName = 'MESA'
      Origin = '"FAT_VENDAS"."MESA"'
    end
    object VendasPdvDESCTO_RES: TFloatField
      FieldName = 'DESCTO_RES'
      Origin = '"FAT_VENDAS"."DESCTO_RES"'
    end
    object VendasPdvCOMPROMETER_ESTOQUE: TIBStringField
      FieldName = 'COMPROMETER_ESTOQUE'
      Origin = '"FAT_VENDAS"."COMPROMETER_ESTOQUE"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvID_AGRUPADOR: TIntegerField
      FieldName = 'ID_AGRUPADOR'
      Origin = '"FAT_VENDAS"."ID_AGRUPADOR"'
    end
    object VendasPdvDESCTO_ICMS: TFloatField
      FieldName = 'DESCTO_ICMS'
      Origin = '"FAT_VENDAS"."DESCTO_ICMS"'
    end
    object VendasPdvPCT_DESCTO_ICMS: TFloatField
      FieldName = 'PCT_DESCTO_ICMS'
      Origin = '"FAT_VENDAS"."PCT_DESCTO_ICMS"'
    end
    object VendasPdvNF_AGRUPADA: TIBStringField
      FieldName = 'NF_AGRUPADA'
      Origin = '"FAT_VENDAS"."NF_AGRUPADA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvTRP_QTDE: TFloatField
      FieldName = 'TRP_QTDE'
      Origin = '"FAT_VENDAS"."TRP_QTDE"'
    end
    object VendasPdvTRP_ESPECIE: TIBStringField
      FieldName = 'TRP_ESPECIE'
      Origin = '"FAT_VENDAS"."TRP_ESPECIE"'
      Size = 50
    end
    object VendasPdvTRP_PESO_BRUTO: TFloatField
      FieldName = 'TRP_PESO_BRUTO'
      Origin = '"FAT_VENDAS"."TRP_PESO_BRUTO"'
    end
    object VendasPdvTRP_PESO_LIQUIDO: TFloatField
      FieldName = 'TRP_PESO_LIQUIDO'
      Origin = '"FAT_VENDAS"."TRP_PESO_LIQUIDO"'
    end
    object VendasPdvTRP_NUMERO: TIBStringField
      FieldName = 'TRP_NUMERO'
      Origin = '"FAT_VENDAS"."TRP_NUMERO"'
      Size = 50
    end
    object VendasPdvTRP_MARCA: TIntegerField
      FieldName = 'TRP_MARCA'
      Origin = '"FAT_VENDAS"."TRP_MARCA"'
    end
    object VendasPdvTRP_NOME: TIBStringField
      FieldName = 'TRP_NOME'
      Origin = '"FAT_VENDAS"."TRP_NOME"'
      Size = 50
    end
    object VendasPdvSTATUS_CARREGAMENTO: TIntegerField
      FieldName = 'STATUS_CARREGAMENTO'
      Origin = '"FAT_VENDAS"."STATUS_CARREGAMENTO"'
    end
    object VendasPdvORDEM_CARGA: TIntegerField
      FieldName = 'ORDEM_CARGA'
      Origin = '"FAT_VENDAS"."ORDEM_CARGA"'
    end
    object VendasPdvENTREGA_FUTURA: TIBStringField
      FieldName = 'ENTREGA_FUTURA'
      Origin = '"FAT_VENDAS"."ENTREGA_FUTURA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvPCT_COMISSAO: TFloatField
      FieldName = 'PCT_COMISSAO'
      Origin = '"FAT_VENDAS"."PCT_COMISSAO"'
    end
    object VendasPdvCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
      Origin = '"FAT_VENDAS"."CENTRO_CUSTO"'
    end
    object VendasPdvES: TIBStringField
      FieldName = 'ES'
      Origin = '"FAT_VENDAS"."ES"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvGERA_FINANCEIRO: TIBStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = '"FAT_VENDAS"."GERA_FINANCEIRO"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_VENDAS"."DATA"'
    end
    object VendasPdvDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"FAT_VENDAS"."DATA_CAIXA"'
    end
  end
  object DsVendasPdv: TDataSource
    AutoEdit = False
    DataSet = VendasPdv
    Left = 48
    Top = 696
  end
  object VendasPdv_Itens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    AfterInsert = VendasPdv_ItensAfterInsert
    BeforeOpen = FiltrarDataSet
    BeforePost = VendasPdv_ItensBeforePost
    OnCalcFields = VendasPdv_ItensCalcFields
    OnNewRecord = VendasPdv_ItensNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_VENDAS_ITENS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into FAT_VENDAS_ITENS'
      
        '  (ALIQUOTA, CNPJ, CODIGO, COMPLEMENTO, CTE, CTIE, DESCONTO, FRA' +
        'CIONADO, '
      
        '   GRADE, ICM, ICM_SUBS, IPI, NOME_FIS, NOME_PRODUTO, NOME_VENDE' +
        'DOR, NUMERO, '
      
        '   ORIGEM, PESO, PORC_DESC, PRC_CUSTO, PRC_UNIT_ORIGINAL, PRC_UN' +
        'ITARIO, '
      
        '   PRODUTO, PRODUTOFIS, QUANTIDADE, REDUCAO, SEQUENCIA, SERVICO,' +
        ' SPRODUTO, '
      '   SUBUNIDADE, UNIDADE, VENDEDOR, VOLUME)'
      'values'
      
        '  (:ALIQUOTA, :CNPJ, :CODIGO, :COMPLEMENTO, :CTE, :CTIE, :DESCON' +
        'TO, :FRACIONADO, '
      
        '   :GRADE, :ICM, :ICM_SUBS, :IPI, :NOME_FIS, :NOME_PRODUTO, :NOM' +
        'E_VENDEDOR, '
      
        '   :NUMERO, :ORIGEM, :PESO, :PORC_DESC, :PRC_CUSTO, :PRC_UNIT_OR' +
        'IGINAL, '
      
        '   :PRC_UNITARIO, :PRODUTO, :PRODUTOFIS, :QUANTIDADE, :REDUCAO, ' +
        ':SEQUENCIA, '
      
        '   :SERVICO, :SPRODUTO, :SUBUNIDADE, :UNIDADE, :VENDEDOR, :VOLUM' +
        'E)')
    RefreshSQL.Strings = (
      'select '
      '    vdi.CNPJ,'
      '    vdi.CODIGO,'
      '    PRODUTO,'
      '    SEQUENCIA,'
      '    QUANTIDADE,'
      '    PRC_UNITARIO,'
      '    PRC_CUSTO,'
      '    ICM,'
      '    ICM_SUBS,'
      '    vdi.IPI,'
      '    vdi.VOLUME,'
      '    PESO,'
      '    DESCONTO,'
      '    PORC_DESC,'
      '    vdi.UNIDADE,'
      '    PRC_UNIT_ORIGINAL,'
      '    NOME_PRODUTO,'
      '    ALIQUOTA,'
      '    PRODUTOFIS,'
      '    NOME_FIS,'
      '    vdi.SUBUNIDADE,'
      '    vdi.ORIGEM,'
      '    vdi.CTE,'
      '    vdi.CTIE,'
      '    vdi.REDUCAO,'
      '    FRACIONADO,'
      '    VENDEDOR,'
      '    NOME_VENDEDOR,'
      '    GRADE,'
      '    NUMERO,'
      '    vdi.SERVICO,'
      '    vdi.COMPLEMENTO,'
      '    SPRODUTO,'
      '    m.nome nome_marca'
      'from FAT_VENDAS_ITENS vdi'
      
        'inner join est_produtos p on (p.cnpj = vdi.cnpj and p.codigo = v' +
        'di.produto)'
      
        'inner join est_marcas m on (m.cnpj = p.cnpj and m.codigo = p.mar' +
        'ca)'
      'where'
      '  vdi.CNPJ = :CNPJ and'
      '  vdi.CODIGO = :CODIGO and'
      '  vdi.PRODUTO = :PRODUTO and'
      '  vdi.SEQUENCIA = :SEQUENCIA')
    SelectSQL.Strings = (
      'select '
      '    vdi.CNPJ,'
      '    vdi.CODIGO,'
      '    PRODUTO,'
      '    SEQUENCIA,'
      '    QUANTIDADE,'
      '    PRC_UNITARIO,'
      '    PRC_CUSTO,'
      '    ICM,'
      '    ICM_SUBS,'
      '    vdi.IPI,'
      '    vdi.VOLUME,'
      '    PESO,'
      '    DESCONTO,'
      '    PORC_DESC,'
      '    vdi.UNIDADE,'
      '    PRC_UNIT_ORIGINAL,'
      '    NOME_PRODUTO,'
      '    ALIQUOTA,'
      '    PRODUTOFIS,'
      '    NOME_FIS,'
      '    vdi.SUBUNIDADE,'
      '    vdi.ORIGEM,'
      '    vdi.CTE,'
      '    vdi.CTIE,'
      '    vdi.REDUCAO,'
      '    FRACIONADO,'
      '    VENDEDOR,'
      '    NOME_VENDEDOR,'
      '    GRADE,'
      '    NUMERO,'
      '    vdi.SERVICO,'
      '    vdi.COMPLEMENTO,'
      '    SPRODUTO,'
      '    m.nome nome_marca'
      'from FAT_VENDAS_ITENS vdi'
      
        'inner join est_produtos p on (p.cnpj = vdi.cnpj and p.codigo = v' +
        'di.produto)'
      
        'left join est_marcas m on (m.cnpj = p.cnpj and m.codigo = p.marc' +
        'a)'
      'WHERE vdi.CNPJ = :CNPJ AND  vdi.CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_VENDAS_ITENS'
      'set'
      '  ALIQUOTA = :ALIQUOTA,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CTE = :CTE,'
      '  CTIE = :CTIE,'
      '  DESCONTO = :DESCONTO,'
      '  FRACIONADO = :FRACIONADO,'
      '  GRADE = :GRADE,'
      '  ICM = :ICM,'
      '  ICM_SUBS = :ICM_SUBS,'
      '  IPI = :IPI,'
      '  NOME_FIS = :NOME_FIS,'
      '  NOME_PRODUTO = :NOME_PRODUTO,'
      '  NOME_VENDEDOR = :NOME_VENDEDOR,'
      '  NUMERO = :NUMERO,'
      '  ORIGEM = :ORIGEM,'
      '  PESO = :PESO,'
      '  PORC_DESC = :PORC_DESC,'
      '  PRC_CUSTO = :PRC_CUSTO,'
      '  PRC_UNIT_ORIGINAL = :PRC_UNIT_ORIGINAL,'
      '  PRC_UNITARIO = :PRC_UNITARIO,'
      '  PRODUTO = :PRODUTO,'
      '  PRODUTOFIS = :PRODUTOFIS,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  REDUCAO = :REDUCAO,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  SERVICO = :SERVICO,'
      '  SPRODUTO = :SPRODUTO,'
      '  SUBUNIDADE = :SUBUNIDADE,'
      '  UNIDADE = :UNIDADE,'
      '  VENDEDOR = :VENDEDOR,'
      '  VOLUME = :VOLUME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    DataSource = DsVendasPdv
    Left = 136
    Top = 184
    object VendasPdv_ItensCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object VendasPdv_ItensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO"'
      Required = True
    end
    object VendasPdv_ItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 15
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      Required = True
      OnSetText = VendasPdv_ItensPRODUTOSetText
      OnValidate = VendasPdv_ItensPRODUTOValidate
      Size = 15
    end
    object VendasPdv_ItensQUANTIDADE: TFloatField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdv_ItensPRC_UNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdv_ItensPRC_CUSTO: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdv_ItensICM: TFloatField
      DisplayLabel = 'Icm'
      FieldName = 'ICM'
      Origin = '"FAT_VENDAS_ITENS"."ICM"'
    end
    object VendasPdv_ItensICM_SUBS: TFloatField
      DisplayLabel = 'Icm Subst'
      FieldName = 'ICM_SUBS'
      Origin = '"FAT_VENDAS_ITENS"."ICM_SUBS"'
    end
    object VendasPdv_ItensIPI: TFloatField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"FAT_VENDAS_ITENS"."IPI"'
    end
    object VendasPdv_ItensVOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS_ITENS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdv_ItensPESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS_ITENS"."PESO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdv_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VendasPdv_ItensDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"FAT_VENDAS_ITENS"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdv_ItensPORC_DESC: TFloatField
      DisplayLabel = 'Porc. Desc'
      FieldName = 'PORC_DESC'
      Origin = '"FAT_VENDAS_ITENS"."PORC_DESC"'
      DisplayFormat = '% ##0.00'
    end
    object VendasPdv_ItensUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object VendasPdv_ItensSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object VendasPdv_ItensPRC_UNIT_ORIGINAL: TFloatField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNIT_ORIGINAL"'
    end
    object VendasPdv_ItensNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object VendasPdv_ItensALIQUOTA: TIBStringField
      DisplayLabel = 'Aliquota'
      FieldName = 'ALIQUOTA'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object VendasPdv_ItensPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTOFIS"'
      Size = 15
    end
    object VendasPdv_ItensNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"FAT_VENDAS_ITENS"."NOME_FIS"'
      Size = 50
    end
    object VendasPdv_ItensSUBUNIDADE: TIntegerField
      DisplayLabel = 'Sub-Unidade'
      FieldName = 'SUBUNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."SUBUNIDADE"'
    end
    object VendasPdv_ItensORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"FAT_VENDAS_ITENS"."ORIGEM"'
    end
    object VendasPdv_ItensCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"FAT_VENDAS_ITENS"."CTE"'
    end
    object VendasPdv_ItensCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"FAT_VENDAS_ITENS"."CTIE"'
    end
    object VendasPdv_ItensREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"FAT_VENDAS_ITENS"."REDUCAO"'
    end
    object VendasPdv_ItensFRACIONADO: TIBStringField
      FieldName = 'FRACIONADO'
      Origin = '"FAT_VENDAS_ITENS"."FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object VendasPdv_ItensVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS_ITENS"."VENDEDOR"'
      OnValidate = VendasPdv_ItensVENDEDORValidate
    end
    object VendasPdv_ItensNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_VENDAS_ITENS"."NOME_VENDEDOR"'
      Size = 15
    end
    object VendasPdv_ItensSERVICO: TBlobField
      FieldName = 'SERVICO'
      Origin = '"FAT_VENDAS_ITENS"."SERVICO"'
      Size = 8
    end
    object VendasPdv_ItensCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"FAT_VENDAS_ITENS"."COMPLEMENTO"'
      Size = 100
    end
    object VendasPdv_ItensNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"FAT_VENDAS_ITENS"."NUMERO"'
      OnValidate = VendasPdv_ItensNUMEROValidate
      Size = 6
    end
    object VendasPdv_ItensGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"FAT_VENDAS_ITENS"."GRADE"'
      OnValidate = VendasPdv_ItensGRADEValidate
      FixedChar = True
      Size = 4
    end
    object VendasPdv_ItensSPRODUTO: TIBStringField
      FieldName = 'SPRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."SPRODUTO"'
      OnSetText = VendasPdv_ItensSPRODUTOSetText
      Size = 16
    end
    object VendasPdv_ItensNOME_MARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOME_MARCA'
      Origin = '"EST_MARCAS"."NOME"'
      Size = 50
    end
  end
  object SelVendasPdv: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT *'
      'FROM VER_VENDAS ( :CNPJ, :TP )'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 312
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TP'
        ParamType = ptUnknown
      end>
    object SelVendasPdvPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDAS"."PESSOA_FJ"'
      Required = True
    end
    object SelVendasPdvCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object SelVendasPdvFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDAS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object SelVendasPdvHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDAS"."HISTORICO"'
      Size = 100
    end
    object SelVendasPdvVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS"."VENDEDOR"'
      Required = True
    end
    object SelVendasPdvUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDAS"."USUARIO"'
      Required = True
    end
    object SelVendasPdvNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object SelVendasPdvNUM_CUPOM: TIntegerField
      DisplayLabel = 'Cf'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDAS"."NUM_CUPOM"'
    end
    object SelVendasPdvNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDAS"."NATUREZA"'
      Required = True
    end
    object SelVendasPdvNOMEVENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOMEVENDEDOR'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object SelVendasPdvNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS"."NOME"'
      Size = 50
    end
    object SelVendasPdvNOMENATUREZA: TIBStringField
      FieldName = 'NOMENATUREZA'
      Origin = '"VER_VENDAS"."NOMENATUREZA"'
      Size = 50
    end
    object SelVendasPdvTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object SelVendasPdvNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object SelVendasPdvDESC_ACRES: TIBBCDField
      FieldName = 'DESC_ACRES'
      Origin = '"VER_VENDAS"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasPdvORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"VER_VENDAS"."ORCAMENTO"'
    end
    object SelVendasPdvLOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = '"VER_VENDAS"."LOCAL"'
    end
    object SelVendasPdvTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_VENDAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasPdvVLR_TOTAL: TIBBCDField
      DisplayLabel = 'Vlr Total'
      FieldName = 'VLR_TOTAL'
      Origin = '"VER_VENDAS"."VLR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasPdvCONTA_CAIXA: TIntegerField
      DisplayLabel = 'Conta Caixa'
      FieldName = 'CONTA_CAIXA'
      Origin = '"VER_VENDAS"."CONTA_CAIXA"'
    end
    object SelVendasPdvENVIADA_CX: TIBStringField
      DisplayLabel = 'Enviada Caixa'
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_VENDAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object SelVendasPdvBASE_ICM: TIBBCDField
      DisplayLabel = 'Base ICM'
      FieldName = 'BASE_ICM'
      Origin = '"VER_VENDAS"."BASE_ICM"'
      Precision = 18
      Size = 4
    end
    object SelVendasPdvICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_VENDAS"."ICM"'
      Precision = 18
      Size = 4
    end
    object SelVendasPdvBASE_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Base ICM Subst.'
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"VER_VENDAS"."BASE_ICM_SUBST"'
      Precision = 18
      Size = 4
    end
    object SelVendasPdvVALOR_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Vlr. ICM Subst.'
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"VER_VENDAS"."VALOR_ICM_SUBST"'
      Precision = 18
      Size = 4
    end
    object SelVendasPdvFRETE: TIBBCDField
      DisplayLabel = 'Frete'
      FieldName = 'FRETE'
      Origin = '"VER_VENDAS"."FRETE"'
      Precision = 18
      Size = 4
    end
    object SelVendasPdvSEGURO: TIBBCDField
      DisplayLabel = 'seguro'
      FieldName = 'SEGURO'
      Origin = '"VER_VENDAS"."SEGURO"'
      Precision = 18
      Size = 4
    end
    object SelVendasPdvDESPESAS: TIBBCDField
      DisplayLabel = 'Despesas'
      FieldName = 'DESPESAS'
      Origin = '"VER_VENDAS"."DESPESAS"'
      Precision = 18
      Size = 4
    end
    object SelVendasPdvIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_VENDAS"."IPI"'
      Precision = 18
      Size = 4
    end
    object SelVendasPdvTOTAL_NOTA: TIBBCDField
      DisplayLabel = 'Total Nota'
      FieldName = 'TOTAL_NOTA'
      Origin = '"VER_VENDAS"."TOTAL_NOTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasPdvCARGA: TIntegerField
      DisplayLabel = 'Carga'
      FieldName = 'CARGA'
      Origin = '"VER_VENDAS"."CARGA"'
    end
    object SelVendasPdvCANCELADA: TIBStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      Origin = '"VER_VENDAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object SelVendasPdvSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"VER_VENDAS"."SERIE"'
      FixedChar = True
      Size = 3
    end
    object SelVendasPdvSELECIONADA: TIBStringField
      DisplayLabel = '[ x ]'
      FieldName = 'SELECIONADA'
      Origin = '"VER_VENDAS"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
    object SelVendasPdvSTATUS_CARREGAMENTO: TIntegerField
      DisplayLabel = 'Status Carregamento'
      FieldName = 'STATUS_CARREGAMENTO'
      Origin = '"VER_VENDAS"."STATUS_CARREGAMENTO"'
    end
    object SelVendasPdvORDEM_CARGA: TIntegerField
      DisplayLabel = 'Ordem Carga'
      FieldName = 'ORDEM_CARGA'
      Origin = '"VER_VENDAS"."ORDEM_CARGA"'
    end
    object SelVendasPdvPSA_ATIVIDADE: TIntegerField
      DisplayLabel = 'Atividade'
      FieldName = 'PSA_ATIVIDADE'
      Origin = '"VER_VENDAS"."PSA_ATIVIDADE"'
    end
    object SelVendasPdvPSA_BAIRRO: TIntegerField
      DisplayLabel = 'Bairro'
      FieldName = 'PSA_BAIRRO'
      Origin = '"VER_VENDAS"."PSA_BAIRRO"'
    end
    object SelVendasPdvPSA_CELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'PSA_CELULAR'
      Origin = '"VER_VENDAS"."PSA_CELULAR"'
    end
    object SelVendasPdvPSA_CEP: TIBStringField
      DisplayLabel = 'CEP'
      FieldName = 'PSA_CEP'
      Origin = '"VER_VENDAS"."PSA_CEP"'
      Size = 8
    end
    object SelVendasPdvPSA_CIDADE: TIntegerField
      DisplayLabel = 'Cidade'
      FieldName = 'PSA_CIDADE'
      Origin = '"VER_VENDAS"."PSA_CIDADE"'
    end
    object SelVendasPdvPSA_COMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'PSA_COMPLEMENTO'
      Origin = '"VER_VENDAS"."PSA_COMPLEMENTO"'
      Size = 30
    end
    object SelVendasPdvPSA_CONTATO: TIBStringField
      DisplayLabel = 'Contato'
      FieldName = 'PSA_CONTATO'
      Origin = '"VER_VENDAS"."PSA_CONTATO"'
      Size = 30
    end
    object SelVendasPdvPSA_CONVENIO: TIntegerField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'PSA_CONVENIO'
      Origin = '"VER_VENDAS"."PSA_CONVENIO"'
    end
    object SelVendasPdvPSA_CPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CGC'
      FieldName = 'PSA_CPF_CGC'
      Origin = '"VER_VENDAS"."PSA_CPF_CGC"'
      Size = 15
    end
    object SelVendasPdvPSA_DT_CADASTRO: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'PSA_DT_CADASTRO'
      Origin = '"VER_VENDAS"."PSA_DT_CADASTRO"'
    end
    object SelVendasPdvPSA_DT_NASCIMENTO: TDateTimeField
      DisplayLabel = 'Dt. Nascimento'
      FieldName = 'PSA_DT_NASCIMENTO'
      Origin = '"VER_VENDAS"."PSA_DT_NASCIMENTO"'
    end
    object SelVendasPdvPSA_EMISSOR: TIBStringField
      DisplayLabel = 'Emissor'
      FieldName = 'PSA_EMISSOR'
      Origin = '"VER_VENDAS"."PSA_EMISSOR"'
      Size = 6
    end
    object SelVendasPdvPSA_ENDERECO: TIntegerField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'PSA_ENDERECO'
      Origin = '"VER_VENDAS"."PSA_ENDERECO"'
    end
    object SelVendasPdvPSA_FANTASIA: TIBStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'PSA_FANTASIA'
      Origin = '"VER_VENDAS"."PSA_FANTASIA"'
      Size = 50
    end
    object SelVendasPdvPSA_FAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'PSA_FAX'
      Origin = '"VER_VENDAS"."PSA_FAX"'
    end
    object SelVendasPdvPSA_FONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'PSA_FONE'
      Origin = '"VER_VENDAS"."PSA_FONE"'
    end
    object SelVendasPdvPSA_INSC_MUNIC: TIBStringField
      DisplayLabel = 'Insc. Estadual'
      FieldName = 'PSA_INSC_MUNIC'
      Origin = '"VER_VENDAS"."PSA_INSC_MUNIC"'
      Size = 15
    end
    object SelVendasPdvPSA_NOME_RAZAO: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'PSA_NOME_RAZAO'
      Origin = '"VER_VENDAS"."PSA_NOME_RAZAO"'
      Size = 50
    end
    object SelVendasPdvPSA_NUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'PSA_NUMERO'
      Origin = '"VER_VENDAS"."PSA_NUMERO"'
      Size = 15
    end
    object SelVendasPdvPSA_PESSOA: TIBStringField
      DisplayLabel = 'Pessoa'
      FieldName = 'PSA_PESSOA'
      Origin = '"VER_VENDAS"."PSA_PESSOA"'
      FixedChar = True
      Size = 1
    end
    object SelVendasPdvPSA_RG_IE: TIBStringField
      DisplayLabel = 'RG/Insc. Est.'
      FieldName = 'PSA_RG_IE'
      Origin = '"VER_VENDAS"."PSA_RG_IE"'
      Size = 15
    end
    object SelVendasPdvPSA_UF: TIBStringField
      DisplayLabel = 'UF'
      FieldName = 'PSA_UF'
      Origin = '"VER_VENDAS"."PSA_UF"'
      FixedChar = True
      Size = 2
    end
    object SelVendasPdvLGD_NOME: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'LGD_NOME'
      Origin = '"VER_VENDAS"."LGD_NOME"'
      Size = 50
    end
    object SelVendasPdvBAI_NOME: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAI_NOME'
      Origin = '"VER_VENDAS"."BAI_NOME"'
      Size = 50
    end
    object SelVendasPdvCID_NOME: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CID_NOME'
      Origin = '"VER_VENDAS"."CID_NOME"'
      Size = 50
    end
    object SelVendasPdvID_AGRUPADOR: TIntegerField
      DisplayLabel = 'Agrupador'
      FieldName = 'ID_AGRUPADOR'
      Origin = '"VER_VENDAS"."ID_AGRUPADOR"'
    end
    object SelVendasPdvENTREGA_FUTURA: TIBStringField
      DisplayLabel = 'Entrega Futura'
      FieldName = 'ENTREGA_FUTURA'
      Origin = '"VER_VENDAS"."ENTREGA_FUTURA"'
      FixedChar = True
      Size = 1
    end
    object SelVendasPdvATI_NOME: TIBStringField
      DisplayLabel = 'Atividade'
      FieldName = 'ATI_NOME'
      Origin = '"VER_VENDAS"."ATI_NOME"'
      Size = 50
    end
    object SelVendasPdvREG_NOME: TIBStringField
      DisplayLabel = 'Regi'#227'o'
      FieldName = 'REG_NOME'
      Origin = '"VER_VENDAS"."REG_NOME"'
      Size = 50
    end
    object SelVendasPdvPSA_EMAIL: TIBStringField
      DisplayLabel = 'E-mail'
      FieldName = 'PSA_EMAIL'
      Origin = '"VER_VENDAS"."PSA_EMAIL"'
      Size = 80
    end
    object SelVendasPdvPCT_COMISSAO: TIBBCDField
      FieldName = 'PCT_COMISSAO'
      Origin = '"VER_VENDAS"."PCT_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object SelVendasPdvDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_VENDAS"."DATA"'
    end
    object SelVendasPdvDATA_CAIXA: TDateField
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_VENDAS"."DATA_CAIXA"'
    end
    object SelVendasPdvOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_VENDAS"."OBSERVACAO"'
      Size = 200
    end
  end
  object SelUnidade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT CNPJ, '
      '               SIGLA, '
      '               NOME, '
      '               UNIDADES '
      'FROM EST_UNIDADES'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY CNPJ, SIGLA')
    Left = 488
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelUnidadeCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_UNIDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelUnidadeSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"EST_UNIDADES"."SIGLA"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object SelUnidadeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_UNIDADES"."NOME"'
      Required = True
      Size = 50
    end
    object SelUnidadeUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = '"EST_UNIDADES"."UNIDADES"'
    end
  end
  object DsProduto: TDataSource
    AutoEdit = False
    DataSet = SelProduto
    Left = 48
    Top = 544
  end
  object Consulta_Venda: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Consulta_VendaCalcFields
    SQL.Strings = (
      'SELECT *   FROM CONSULTA_VENDA ( :CNPJ,  :COD )'
      ''
      ''
      ''
      '')
    Left = 816
    Top = 14
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    object Consulta_VendaPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDAS"."PESSOA_FJ"'
      Required = True
    end
    object Consulta_VendaCODIGO: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object Consulta_VendaFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDAS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Consulta_VendaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDAS"."HISTORICO"'
      Size = 100
    end
    object Consulta_VendaVENDEDOR: TIntegerField
      DisplayLabel = 'Vendcedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS"."VENDEDOR"'
      Required = True
    end
    object Consulta_VendaUSUARIO: TIntegerField
      DisplayLabel = 'Caixa'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDAS"."USUARIO"'
      Required = True
    end
    object Consulta_VendaNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object Consulta_VendaNUM_CUPOM: TIntegerField
      DisplayLabel = 'Cf'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDAS"."NUM_CUPOM"'
    end
    object Consulta_VendaNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDAS"."NATUREZA"'
      Required = True
    end
    object Consulta_VendaTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"FAT_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object Consulta_VendaNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Consulta_VendaDESCRICAO: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"FAT_VENDAS"."DESCRICAO"'
      Size = 8
    end
    object Consulta_VendaPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"FAT_VENDAS"."PROPRIEDADE"'
    end
    object Consulta_VendaCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"FAT_VENDAS"."CONVENIADO"'
    end
    object Consulta_VendaTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"FAT_VENDAS"."TERCEIRO"'
    end
    object Consulta_VendaTotal_Geral: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Geral'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Consulta_VendaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS"."NOME"'
      Size = 50
    end
    object Consulta_VendaTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"CONSULTA_VENDA"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"CONSULTA_VENDA"."FORMA_PGTO"'
    end
    object Consulta_VendaCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"CONSULTA_VENDA"."CARGA"'
    end
    object Consulta_VendaCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"CONSULTA_VENDA"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"CONSULTA_VENDA"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaDESC_ACRES: TIBBCDField
      FieldName = 'DESC_ACRES'
      Origin = '"CONSULTA_VENDA"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"CONSULTA_VENDA"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"CONSULTA_VENDA"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"CONSULTA_VENDA"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"CONSULTA_VENDA"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"CONSULTA_VENDA"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaLOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = '"CONSULTA_VENDA"."LOCAL"'
    end
    object Consulta_VendaTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"CONSULTA_VENDA"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Consulta_VendaNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"CONSULTA_VENDA"."NOME_VENDEDOR"'
      Size = 50
    end
    object Consulta_VendaVLR_TOTAL: TIBBCDField
      FieldName = 'VLR_TOTAL'
      Origin = '"CONSULTA_VENDA"."VLR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"CONSULTA_VENDA"."NOME_NATUREZA"'
      Size = 50
    end
    object Consulta_VendaPERC_ICMS: TIBBCDField
      FieldName = 'PERC_ICMS'
      Origin = '"CONSULTA_VENDA"."PERC_ICMS"'
      DisplayFormat = '##0.00 %'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaNOME_TERCEIRO: TIBStringField
      FieldName = 'NOME_TERCEIRO'
      Origin = '"CONSULTA_VENDA"."NOME_TERCEIRO"'
      Size = 50
    end
    object Consulta_VendaNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"CONSULTA_VENDA"."NOME_FORMA"'
      Size = 50
    end
    object Consulta_VendaNOME_DOCUMENTO: TIBStringField
      FieldName = 'NOME_DOCUMENTO'
      Origin = '"CONSULTA_VENDA"."NOME_DOCUMENTO"'
      Size = 50
    end
    object Consulta_VendaNOME_LOCAL: TIBStringField
      FieldName = 'NOME_LOCAL'
      Origin = '"CONSULTA_VENDA"."NOME_LOCAL"'
      Size = 50
    end
    object Consulta_VendaLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"CONSULTA_VENDA"."LOCAL_COBRANCA"'
    end
    object Consulta_VendaBASE_ICM: TIBBCDField
      FieldName = 'BASE_ICM'
      Origin = '"CONSULTA_VENDA"."BASE_ICM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"CONSULTA_VENDA"."ICM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaBASE_ICM_SUBST: TIBBCDField
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"CONSULTA_VENDA"."BASE_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaVALOR_ICM_SUBST: TIBBCDField
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"CONSULTA_VENDA"."VALOR_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaFRETE: TIBBCDField
      FieldName = 'FRETE'
      Origin = '"CONSULTA_VENDA"."FRETE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaSEGURO: TIBBCDField
      FieldName = 'SEGURO'
      Origin = '"CONSULTA_VENDA"."SEGURO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaDESPESAS: TIBBCDField
      FieldName = 'DESPESAS'
      Origin = '"CONSULTA_VENDA"."DESPESAS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"CONSULTA_VENDA"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaTOTAL_NOTA: TIBBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = '"CONSULTA_VENDA"."TOTAL_NOTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaKM_ATUAL: TIBBCDField
      FieldName = 'KM_ATUAL'
      Origin = '"CONSULTA_VENDA"."KM_ATUAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaMEDIA_KM: TIBBCDField
      FieldName = 'MEDIA_KM'
      Origin = '"CONSULTA_VENDA"."MEDIA_KM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaMENSAGEM_NAT1: TIBStringField
      FieldName = 'MENSAGEM_NAT1'
      Origin = '"CONSULTA_VENDA"."MENSAGEM_NAT1"'
      Size = 50
    end
    object Consulta_VendaMENSAGEM_NAT2: TIBStringField
      FieldName = 'MENSAGEM_NAT2'
      Origin = '"CONSULTA_VENDA"."MENSAGEM_NAT2"'
      Size = 50
    end
    object Consulta_VendaDOCUMENTOS_CONSUMIDOR: TIBStringField
      FieldName = 'DOCUMENTOS_CONSUMIDOR'
      Origin = '"CONSULTA_VENDA"."DOCUMENTOS_CONSUMIDOR"'
    end
    object Consulta_VendaENDERECO_CONSUMIDOR: TIBStringField
      FieldName = 'ENDERECO_CONSUMIDOR'
      Origin = '"CONSULTA_VENDA"."ENDERECO_CONSUMIDOR"'
      Size = 30
    end
    object Consulta_VendaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"CONSULTA_VENDA"."DATA"'
    end
    object Consulta_VendaAVISTA: TIBStringField
      FieldName = 'AVISTA'
      Origin = '"CONSULTA_VENDA"."AVISTA"'
      FixedChar = True
      Size = 1
    end
    object Consulta_VendaTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Origin = '"CONSULTA_VENDA"."TRANSPORTADORA"'
    end
    object Consulta_VendaDATA_CAIXA: TDateField
      FieldName = 'DATA_CAIXA'
      Origin = '"CONSULTA_VENDA"."DATA_CAIXA"'
    end
    object Consulta_VendaREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"CONSULTA_VENDA"."REQUISICAO"'
      Size = 6
    end
    object Consulta_VendaNOME_CONVENIADO: TIBStringField
      FieldName = 'NOME_CONVENIADO'
      Origin = '"CONSULTA_VENDA"."NOME_CONVENIADO"'
      Size = 50
    end
    object Consulta_VendaTROCO: TIBBCDField
      FieldName = 'TROCO'
      Origin = '"CONSULTA_VENDA"."TROCO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaCIDADE_CONSUMIDOR: TIBStringField
      FieldName = 'CIDADE_CONSUMIDOR'
      Origin = '"CONSULTA_VENDA"."CIDADE_CONSUMIDOR"'
      Size = 50
    end
    object Consulta_VendaEMP_EMPRESA: TIBStringField
      FieldName = 'EMP_EMPRESA'
      Origin = '"CONSULTA_VENDA"."EMP_EMPRESA"'
      Size = 50
    end
    object Consulta_VendaEMP_CIDADE: TIBStringField
      FieldName = 'EMP_CIDADE'
      Origin = '"CONSULTA_VENDA"."EMP_CIDADE"'
      Size = 50
    end
    object Consulta_VendaEMP_FONE: TIBStringField
      FieldName = 'EMP_FONE'
      Origin = '"CONSULTA_VENDA"."EMP_FONE"'
    end
    object Consulta_VendaEMP_CEP: TIBStringField
      FieldName = 'EMP_CEP'
      Origin = '"CONSULTA_VENDA"."EMP_CEP"'
    end
    object Consulta_VendaEMP_BAIRRO: TIBStringField
      FieldName = 'EMP_BAIRRO'
      Origin = '"CONSULTA_VENDA"."EMP_BAIRRO"'
      Size = 50
    end
    object Consulta_VendaEMP_ENDERECO: TIBStringField
      FieldName = 'EMP_ENDERECO'
      Origin = '"CONSULTA_VENDA"."EMP_ENDERECO"'
      Size = 80
    end
    object Consulta_VendaEMP_CNPJ: TIBStringField
      FieldName = 'EMP_CNPJ'
      Origin = '"CONSULTA_VENDA"."EMP_CNPJ"'
    end
    object Consulta_VendaPCT_COMISSAO: TIBBCDField
      FieldName = 'PCT_COMISSAO'
      Origin = '"CONSULTA_VENDA"."PCT_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object Consulta_VendaNOME_PROPRIEDADE: TIBStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = '"CONSULTA_VENDA"."NOME_PROPRIEDADE"'
      Size = 50
    end
    object Consulta_VendaNFE_XML: TBlobField
      FieldName = 'NFE_XML'
      Origin = '"CONSULTA_VENDA"."NFE_XML"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object Consulta_VendaIMP_PEDIDO: TIBStringField
      FieldName = 'IMP_PEDIDO'
      Origin = '"CONSULTA_VENDA"."IMP_PEDIDO"'
      FixedChar = True
      Size = 1
    end
    object Consulta_VendaOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"CONSULTA_VENDA"."OBSERVACAO"'
      Size = 600
    end
    object Consulta_VendaNFE_STATUS: TIBStringField
      FieldName = 'NFE_STATUS'
      Origin = '"CONSULTA_VENDA"."NFE_STATUS"'
      FixedChar = True
      Size = 1
    end
  end
  object DsConsulta_Venda: TDataSource
    AutoEdit = False
    DataSet = Consulta_Venda
    Left = 488
    Top = 576
  end
  object Consulta_Venda_Itens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Consulta_Venda_ItensCalcFields
    SQL.Strings = (
      'SELECT   *'
      'FROM VER_FATURA_ITENS (:CNPJ, :CODIGO)')
    Left = 296
    Top = 355
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Consulta_Venda_ItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object Consulta_Venda_ItensSEQUENCIA: TSmallintField
      DisplayLabel = 'Seq'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object Consulta_Venda_ItensUNIDADE: TIBStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."UNIDADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object Consulta_Venda_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Consulta_Venda_ItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Consulta_Venda_ItensALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object Consulta_Venda_ItensORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"FAT_VENDAS_ITENS"."ORIGEM"'
    end
    object Consulta_Venda_ItensCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"FAT_VENDAS_ITENS"."CTE"'
    end
    object Consulta_Venda_ItensCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"FAT_VENDAS_ITENS"."CTIE"'
    end
    object Consulta_Venda_ItensREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"FAT_VENDAS_ITENS"."REDUCAO"'
    end
    object Consulta_Venda_ItensPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"VER_FATURA_ITENS"."PRODUTOFIS"'
      Size = 15
    end
    object Consulta_Venda_ItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FATURA_ITENS"."SUBUNIDADE"'
    end
    object Consulta_Venda_ItensNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"VER_FATURA_ITENS"."NOME_FIS"'
      Size = 50
    end
    object Consulta_Venda_ItensDESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VER_FATURA_ITENS"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensICM: TIBBCDField
      DisplayLabel = 'Icm'
      FieldName = 'ICM'
      Origin = '"VER_FATURA_ITENS"."ICM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensICM_SUBS: TIBBCDField
      DisplayLabel = 'Icm Sub'
      FieldName = 'ICM_SUBS'
      Origin = '"VER_FATURA_ITENS"."ICM_SUBS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensIPI: TIBBCDField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"VER_FATURA_ITENS"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FATURA_ITENS"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensPORC_DESC: TIBBCDField
      DisplayLabel = 'Porc. Desc'
      FieldName = 'PORC_DESC'
      Origin = '"VER_FATURA_ITENS"."PORC_DESC"'
      DisplayFormat = '###,###,##0.00 %'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensPRC_CUSTO: TIBBCDField
      DisplayLabel = 'Prc. Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_FATURA_ITENS"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensPRC_UNIT_ORIGINAL: TIBBCDField
      DisplayLabel = 'Unit. Orig'
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_FATURA_ITENS"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensPRC_UNITARIO: TIBBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FATURA_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensQUANTIDADE: TIBBCDField
      DisplayLabel = 'Qtde'
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FATURA_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FATURA_ITENS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_FATURA_ITENS"."COMPLEMENTO"'
      Size = 100
    end
    object Consulta_Venda_ItensSERVICO: TBlobField
      FieldName = 'SERVICO'
      Origin = '"VER_FATURA_ITENS"."SERVICO"'
      Size = 8
    end
    object Consulta_Venda_ItensQUANTIDADE_FIS: TIBBCDField
      FieldName = 'QUANTIDADE_FIS'
      Origin = '"VER_FATURA_ITENS"."QUANTIDADE_FIS"'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensPRC_UNITARIO_FIS: TIBBCDField
      FieldName = 'PRC_UNITARIO_FIS'
      Origin = '"VER_FATURA_ITENS"."PRC_UNITARIO_FIS"'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensTOTAL_FIS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_FIS'
      Calculated = True
    end
    object Consulta_Venda_ItensGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"VER_FATURA_ITENS"."GRADE"'
      Size = 4
    end
    object Consulta_Venda_ItensNUMERO: TIBStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = '"VER_FATURA_ITENS"."NUMERO"'
      Size = 6
    end
    object Consulta_Venda_ItensCODIGO_2: TIBStringField
      DisplayLabel = 'C'#243'digo 2'
      FieldName = 'CODIGO_2'
      Origin = '"VER_FATURA_ITENS"."CODIGO_2"'
      Size = 15
    end
    object Consulta_Venda_ItensMENSAGEM_REDUCAO: TIBStringField
      FieldName = 'MENSAGEM_REDUCAO'
      Origin = '"VER_FATURA_ITENS"."MENSAGEM_REDUCAO"'
      Size = 80
    end
    object Consulta_Venda_ItensCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"VER_FATURA_ITENS"."CFOP"'
    end
    object Consulta_Venda_ItensNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"VER_FATURA_ITENS"."NOME_MARCA"'
      Size = 50
    end
    object Consulta_Venda_ItensLOTE: TIBStringField
      FieldName = 'LOTE'
      Origin = '"VER_FATURA_ITENS"."LOTE"'
      Size = 10
    end
    object Consulta_Venda_ItensCODIGO_LOTE: TIntegerField
      FieldName = 'CODIGO_LOTE'
      Origin = '"VER_FATURA_ITENS"."CODIGO_LOTE"'
    end
    object Consulta_Venda_ItensVALIDADE_LOTE: TDateField
      FieldName = 'VALIDADE_LOTE'
      Origin = '"VER_FATURA_ITENS"."VALIDADE_LOTE"'
    end
    object Consulta_Venda_ItensVENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"VER_FATURA_ITENS"."VENDEDOR"'
      Size = 50
    end
    object Consulta_Venda_ItensQTDE_ENTREGUE: TIBBCDField
      DisplayLabel = 'Qtde. Entregue'
      FieldName = 'QTDE_ENTREGUE'
      Origin = '"VER_FATURA_ITENS"."QTDE_ENTREGUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensCUSTO_MEDIO: TIBBCDField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'CUSTO_MEDIO'
      Origin = '"VER_FATURA_ITENS"."CUSTO_MEDIO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensLUCRO_ITEM: TIBBCDField
      DisplayLabel = 'Lucro Item'
      FieldName = 'LUCRO_ITEM'
      Origin = '"VER_FATURA_ITENS"."LUCRO_ITEM"'
      DisplayFormat = '###,###,##0.00%'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensENTREGUE: TFloatField
      FieldName = 'ENTREGUE'
      Origin = '"VER_FATURA_ITENS"."ENTREGUE"'
    end
    object Consulta_Venda_ItensCARREGADO: TFloatField
      FieldName = 'CARREGADO'
      Origin = '"VER_FATURA_ITENS"."CARREGADO"'
    end
    object Consulta_Venda_ItensDEVOLVIDO: TFloatField
      FieldName = 'DEVOLVIDO'
      Origin = '"VER_FATURA_ITENS"."DEVOLVIDO"'
    end
    object Consulta_Venda_ItensCARGA_CREDITO_UND: TFloatField
      FieldName = 'CARGA_CREDITO_UND'
      Origin = '"VER_FATURA_ITENS"."CARGA_CREDITO_UND"'
    end
    object Consulta_Venda_ItensCARGA_CREDITO_REAIS: TFloatField
      FieldName = 'CARGA_CREDITO_REAIS'
      Origin = '"VER_FATURA_ITENS"."CARGA_CREDITO_REAIS"'
    end
    object Consulta_Venda_ItensBCH_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Bemacash'
      FieldName = 'BCH_CODIGO'
      Origin = '"VER_FATURA_ITENS"."BCH_CODIGO"'
    end
  end
  object Consulta_Venda_Parc: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = DsConsulta_Venda
    SQL.Strings = (
      'select '
      '    CNPJ DCNPJ,'
      '    CODIGO,'
      '    VENCTO,'
      '    PARCELA,'
      '    VALOR,'
      '    BOLETO'
      'from FAT_VENDAS_PARCELAMENTO'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO'
      'Order by CNPJ, CODIGO, VENCTO')
    Left = 752
    Top = 72
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Consulta_Venda_ParcVENCTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'VENCTO'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."VENCTO"'
    end
    object Consulta_Venda_ParcPARCELA: TIBStringField
      DisplayLabel = 'Parc'
      FieldName = 'PARCELA'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."PARCELA"'
      Size = 6
    end
    object Consulta_Venda_ParcVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object Consulta_Venda_ParcDCNPJ: TIBStringField
      FieldName = 'DCNPJ'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Consulta_Venda_ParcCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."CODIGO"'
      Required = True
    end
    object Consulta_Venda_ParcBOLETO: TIntegerField
      FieldName = 'BOLETO'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."BOLETO"'
    end
  end
  object SelOrcamentos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      
        'select oc.pessoa_fj, oc.codigo, oc.data, oc.total, oc.STATUS, oc' +
        '.observacao, oc.vendedor,'
      
        '    (oc.total + oc.desc_acresc) vlr_total, oc.desc_acresc, oc.pe' +
        'so, oc.volume, oc.forma_pgto forma, oc.validade,'
      
        '    oc.desc_acresc_2,  oc.cliente, oc.nome_consumidor, oc.compro' +
        'meter_estoque, psa.nome_razao, vdd.nome nome_vendedor,'
      '    pgt.nome nome_forma,'
      
        '(select count(*) from fat_vendas vd where vd.cnpj = oc.cnpj and ' +
        'vd.orcamento = oc.codigo) cod_pedido'
      ''
      'from fat_orcamentos oc'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = oc.cnpj and psa.codi' +
        'go = oc.pessoa_fj)'
      
        'left join fat_vendedor vdd on (vdd.cnpj = oc.cnpj and vdd.codigo' +
        ' = oc.vendedor)'
      
        'left join fin_formas_pagto pgt on (pgt.cnpj = oc.cnpj and pgt.co' +
        'digo = oc.forma_pgto)'
      'where oc.cnpj = :cnpj')
    Left = 480
    Top = 520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelOrcamentosPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_ORCAMENTOS"."PESSOA_FJ"'
      Required = True
    end
    object SelOrcamentosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Orca.'
      FieldName = 'CODIGO'
      Origin = '"FAT_ORCAMENTOS"."CODIGO"'
      Required = True
    end
    object SelOrcamentosDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_ORCAMENTOS"."DATA"'
      Required = True
    end
    object SelOrcamentosTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FAT_ORCAMENTOS"."TOTAL"'
      DisplayFormat = '###,##0.00'
    end
    object SelOrcamentosOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs.'
      FieldName = 'OBSERVACAO'
      Origin = '"FAT_ORCAMENTOS"."OBSERVACAO"'
      Size = 80
    end
    object SelOrcamentosVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_ORCAMENTOS"."VENDEDOR"'
      Required = True
    end
    object SelOrcamentosVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object SelOrcamentosDESC_ACRESC: TFloatField
      DisplayLabel = 'Vlr. Desc/Ac.'
      FieldName = 'DESC_ACRESC'
      Origin = '"FAT_ORCAMENTOS"."DESC_ACRESC"'
      DisplayFormat = '###,##0.00'
    end
    object SelOrcamentosPESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"FAT_ORCAMENTOS"."PESO"'
      DisplayFormat = '###,##0.00'
    end
    object SelOrcamentosVOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"FAT_ORCAMENTOS"."VOLUME"'
    end
    object SelOrcamentosFORMA: TIntegerField
      DisplayLabel = 'F. Pagto'
      FieldName = 'FORMA'
      Origin = '"FAT_ORCAMENTOS"."FORMA_PGTO"'
    end
    object SelOrcamentosVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'VALIDADE'
      Origin = '"FAT_ORCAMENTOS"."VALIDADE"'
    end
    object SelOrcamentosDESC_ACRESC_2: TFloatField
      DisplayLabel = 'Desc. Ac2'
      FieldName = 'DESC_ACRESC_2'
      Origin = '"FAT_ORCAMENTOS"."DESC_ACRESC_2"'
    end
    object SelOrcamentosCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"FAT_ORCAMENTOS"."CLIENTE"'
      Size = 30
    end
    object SelOrcamentosNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_ORCAMENTOS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object SelOrcamentosCOMPROMETER_ESTOQUE: TIBStringField
      DisplayLabel = 'Comp. Estoque'
      FieldName = 'COMPROMETER_ESTOQUE'
      Origin = '"FAT_ORCAMENTOS"."COMPROMETER_ESTOQUE"'
      FixedChar = True
      Size = 1
    end
    object SelOrcamentosNOME_RAZAO: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object SelOrcamentosNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object SelOrcamentosNOME_FORMA: TIBStringField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'NOME_FORMA'
      Origin = '"FIN_FORMAS_PAGTO"."NOME"'
      Size = 50
    end
    object SelOrcamentosSTATUS: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'STATUS'
      Origin = '"FAT_ORCAMENTOS"."STATUS"'
      OnGetText = OrcamentosSTATUSGetText
    end
    object SelOrcamentosCOD_PEDIDO: TIntegerField
      DisplayLabel = 'Cont. Pedido'
      FieldName = 'COD_PEDIDO'
      Origin = '"FAT_VENDAS"."CODIGO"'
    end
  end
  object Ver_Pessoa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'Select * from Ver_Pessoa ( :CNPJ, :COD )')
    Left = 592
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    object Ver_PessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_PESSOA"."CODIGO"'
    end
    object Ver_PessoaNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_PESSOA"."NOME_RAZAO"'
      Size = 50
    end
    object Ver_PessoaFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"VER_PESSOA"."FANTASIA"'
      Size = 50
    end
    object Ver_PessoaCOD_ATIVIDADE: TIntegerField
      FieldName = 'COD_ATIVIDADE'
      Origin = '"VER_PESSOA"."COD_ATIVIDADE"'
    end
    object Ver_PessoaATIVIDADE: TIBStringField
      FieldName = 'ATIVIDADE'
      Origin = '"VER_PESSOA"."ATIVIDADE"'
      Size = 50
    end
    object Ver_PessoaCOD_ENDERECO: TIntegerField
      FieldName = 'COD_ENDERECO'
      Origin = '"VER_PESSOA"."COD_ENDERECO"'
    end
    object Ver_PessoaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_PESSOA"."ENDERECO"'
      Size = 50
    end
    object Ver_PessoaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_PESSOA"."NUMERO"'
      Size = 15
    end
    object Ver_PessoaCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PESSOA"."COMPLEMENTO"'
      Size = 30
    end
    object Ver_PessoaCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = '"VER_PESSOA"."COD_BAIRRO"'
    end
    object Ver_PessoaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_PESSOA"."BAIRRO"'
      Size = 50
    end
    object Ver_PessoaCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"VER_PESSOA"."COD_CIDADE"'
    end
    object Ver_PessoaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_PESSOA"."CIDADE"'
      Size = 50
    end
    object Ver_PessoaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PESSOA"."UF"'
      FixedChar = True
      Size = 2
    end
    object Ver_PessoaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PESSOA"."CEP"'
      Size = 8
    end
    object Ver_PessoaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_PESSOA"."FONE"'
    end
    object Ver_PessoaFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"VER_PESSOA"."FAX"'
    end
    object Ver_PessoaCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"VER_PESSOA"."CELULAR"'
    end
    object Ver_PessoaPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"VER_PESSOA"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object Ver_PessoaCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_PESSOA"."CPF_CGC"'
      Size = 15
    end
    object Ver_PessoaRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"VER_PESSOA"."RG_IE"'
      Size = 15
    end
    object Ver_PessoaCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"VER_PESSOA"."CONTATO"'
      Size = 30
    end
    object Ver_PessoaDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"VER_PESSOA"."DT_NASCIMENTO"'
    end
    object Ver_PessoaDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"VER_PESSOA"."DT_CADASTRO"'
    end
    object Ver_PessoaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"VER_PESSOA"."EMAIL"'
      Size = 80
    end
    object Ver_PessoaOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VER_PESSOA"."OBS"'
      Size = 8
    end
    object Ver_PessoaINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"VER_PESSOA"."INSC_MUNIC"'
      Size = 15
    end
  end
  object Consulta_Orcamento_Itens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Consulta_Orcamento_ItensCalcFields
    SQL.Strings = (
      'select '
      'CODIGO,'
      'DESCONTO,'
      'ICM,'
      'ICM_SUBS,'
      'IPI,'
      'PESO,'
      'PORC_DESC,'
      'PRC_CUSTO,'
      'PRC_UNIT_ORIGINAL,'
      'PRC_UNITARIO,'
      'PRODUTO,'
      'QUANTIDADE,'
      'SEQUENCIA,'
      'UNIDADE,'
      'VOLUME,'
      'NOME,'
      'PRC_UNITARIO_2,'
      'MARCA,'
      'MARCA_2,'
      'COMPLEMENTO'
      'from VER_FAT_ORCAMENTOS_ITENS ( :CNPJ, :ORCAMENTO )')
    Left = 592
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ORCAMENTO'
        ParamType = ptUnknown
      end>
    object Consulta_Orcamento_ItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_ORCAMENTOS_ITENS"."CODIGO"'
      Required = True
    end
    object Consulta_Orcamento_ItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"FAT_ORCAMENTOS_ITENS"."DESCONTO"'
    end
    object Consulta_Orcamento_ItensICM: TFloatField
      FieldName = 'ICM'
      Origin = '"FAT_ORCAMENTOS_ITENS"."ICM"'
    end
    object Consulta_Orcamento_ItensICM_SUBS: TFloatField
      FieldName = 'ICM_SUBS'
      Origin = '"FAT_ORCAMENTOS_ITENS"."ICM_SUBS"'
    end
    object Consulta_Orcamento_ItensIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"FAT_ORCAMENTOS_ITENS"."IPI"'
    end
    object Consulta_Orcamento_ItensPESO: TFloatField
      FieldName = 'PESO'
      Origin = '"FAT_ORCAMENTOS_ITENS"."PESO"'
    end
    object Consulta_Orcamento_ItensPORC_DESC: TFloatField
      FieldName = 'PORC_DESC'
      Origin = '"FAT_ORCAMENTOS_ITENS"."PORC_DESC"'
    end
    object Consulta_Orcamento_ItensPRC_CUSTO: TFloatField
      FieldName = 'PRC_CUSTO'
      Origin = '"FAT_ORCAMENTOS_ITENS"."PRC_CUSTO"'
    end
    object Consulta_Orcamento_ItensPRC_UNIT_ORIGINAL: TFloatField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"FAT_ORCAMENTOS_ITENS"."PRC_UNIT_ORIGINAL"'
    end
    object Consulta_Orcamento_ItensPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_ORCAMENTOS_ITENS"."PRC_UNITARIO"'
    end
    object Consulta_Orcamento_ItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"FAT_ORCAMENTOS_ITENS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object Consulta_Orcamento_ItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_ORCAMENTOS_ITENS"."QUANTIDADE"'
    end
    object Consulta_Orcamento_ItensSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_ORCAMENTOS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object Consulta_Orcamento_ItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"FAT_ORCAMENTOS_ITENS"."UNIDADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object Consulta_Orcamento_ItensVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"FAT_ORCAMENTOS_ITENS"."VOLUME"'
    end
    object Consulta_Orcamento_ItensNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object Consulta_Orcamento_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object Consulta_Orcamento_ItensPRC_UNITARIO_2: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNITARIO_2'
      Origin = '"VER_FAT_ORCAMENTOS_ITENS"."PRC_UNITARIO_2"'
      DisplayFormat = '###,##0.00'
    end
    object Consulta_Orcamento_ItensMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VER_FAT_ORCAMENTOS_ITENS"."MARCA"'
      Size = 30
    end
    object Consulta_Orcamento_ItensMARCA_2: TIBStringField
      FieldName = 'MARCA_2'
      Origin = '"VER_FAT_ORCAMENTOS_ITENS"."MARCA_2"'
      Size = 30
    end
    object Consulta_Orcamento_ItensTotal_2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_2'
      Calculated = True
    end
    object Consulta_Orcamento_ItensCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_FAT_ORCAMENTOS_ITENS"."COMPLEMENTO"'
      Size = 100
    end
  end
  object Serie: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    DeleteSQL.Strings = (
      'delete from Sis_SerieNf'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SERIE = :OLD_SERIE')
    InsertSQL.Strings = (
      'insert into Sis_SerieNf'
      
        '  (CNPJ, SERIE, ULTIMO_NUMERO, TIPO, NOTA_NUM_DST, NOTA_NUM_ALT,' +
        ' '
      'NOTA_NUMRECIBO_DST, '
      '   NOTA_NUMRECIBO_ALT, NOTA_ENT_SAI_DST, NOTA_ENT_SAI_ALT, '
      'NOTA_NATUREZA_DST, '
      '   NOTA_NATUREZA_ALT, NOTA_CFOP_DST, NOTA_CFOP_ALT, '
      'NOTA_SUBS_TRIB_DST, '
      '   NOTA_SUBS_TRIB_ALT, NOTA_CNDPG_DST, NOTA_CNDPG_ALT, '
      'CLI_NOME_DST, CLI_NOME_ALT, '
      '   CLI_CGCCPF_DST, CLI_CGCCPF_ALT, CLI_END_DST, CLI_END_ALT, '
      'CLI_BAIRRO_DST, '
      
        '   CLI_BAIRRO_ALT, CLI_CEP_DST, CLI_CEP_ALT, CLI_CID_DST, CLI_CI' +
        'D_ALT, '
      
        '   CLI_FONE_DST, CLI_FONE_ALT, CLI_FAX_DST, CLI_FAX_ALT, CLI_UF_' +
        'DST, '
      'CLI_UF_ALT, '
      '   CLI_INSCEST_DST, CLI_INSCEST_ALT, CLI_DATEMIS_DST, '
      'CLI_DATEMIS_ALT, '
      '   CLI_DATENTSAI_DST, CLI_DATENTSAI_ALT, CLI_HORASAI_DST, '
      'CLI_HORASAI_ALT, '
      '   CLI_PEDNUM_DST, CLI_PEDNUM_ALT, CLI_INSCMUN_DST, '
      'CLI_INSCMUN_ALT, CLI_DUPLNUM_DST, '
      '   CLI_DUPLNUM_ALT, CLI_DUPLVENC_DST, CLI_DUPLVENC_ALT, '
      'CLI_DUPLVALOR_DST, '
      '   CLI_DUPLVALOR_ALT, PROD_COD_DST, PROD_COD_ALT, '
      'PROD_PROD_DST, PROD_PROD_ALT, '
      
        '   PROD_CF_DST, PROD_CF_ALT, PROD_SITTRIB_DST, PROD_SITTRIB_ALT,' +
        ' '
      'PROD_UNIDADE_DST, '
      '   PROD_UNIDADE_ALT, PROD_QUANT_DST, PROD_QUANT_ALT, '
      'PROD_VALORUNIT_DST, '
      '   PROD_VALORUNIT_ALT, PROD_VALORTOT_DST, PROD_VALORTOT_ALT, '
      'PROD_ICMS_DST, '
      
        '   PROD_ICMS_ALT, PROD_IPI_DST, PROD_IPI_ALT, PROD_VALORIPI_DST,' +
        ' '
      'PROD_VALORIPI_ALT, '
      '   FEC_BASEICMS_DST, FEC_BASEICMS_ALT, FEC_VALORFRETE_DST, '
      'FEC_VALORFRETE_ALT, '
      '   FEC_VALORICMS_DST, FEC_VALORICMS_ALT, FEC_VALORSEGURO_DST, '
      'FEC_VALORSEGURO_ALT, '
      
        '   FEC_BASECALCICMS_DST, FEC_BASECALCICMS_ALT, FEC_DESPESAS_DST,' +
        ' '
      'FEC_DESPESAS_ALT, '
      '   FEC_VALORICMSSUB_DST, FEC_VALORICMSSUB_ALT, FEC_IPI_DST, '
      'FEC_IPI_ALT, '
      '   FEC_VALORTOTAL_DST, FEC_ISS_DST, FEC_VALORTOTAL_ALT, '
      'FEC_ISS_ALT, FEC_VALORNOTA_DST, '
      '   FEC_VALORNOTA_ALT, TRANS_NOME_DST, TRANS_NOME_ALT, '
      'TRANS_END_DST, TRANS_END_ALT, '
      '   TRANS_QUANTIDADE_DST, TRANS_QUANTIDADE_ALT, '
      'TRANS_ESPECIE_DST, TRANS_ESPECIE_ALT, '
      '   TRANS_MARCA_DST, TRANS_MARCA_ALT, TRANS_FRETECONTA_DST, '
      'TRANS_FRETECONTA_ALT, '
      '   TRANS_CID_DST, TRANS_CID_ALT, TRANS_NUMERO_DST, '
      'TRANS_NUMERO_ALT, TRANS_PLACA_DST, '
      '   TRANS_PLACA_ALT, TRANS_UFVEI_DST, TRANS_UFVEIALT, '
      'TRANS_UF_DST, TRANS_UF_ALT, '
      '   TRANS_CGCCPF_DST, TRANS_CGCCPF_ALT, TRANS_INSCEST_DST, '
      'TRANS_INSCEST_ALT, '
      '   TRANS_PESBRT_DST, TRANS_PESOBRT_ALT, TRANS_PESOLIQ_DST, '
      'TRANS_PESOLIQ_ALT, '
      '   TRANS_OBS_DST, TRANS_OBS_ALT, IMPRESSORA_PULO, '
      'IMPRESSORA_LPP, PRODUTOSNOTA, '
      '   LOCALDUPLICATAS, NUMERODELINHASDANOTA, PROD_DESC_DST, '
      'PROD_DESC_ALT, '
      '   DATA_ANO_ALT, DATA_ANO_DST, DATA_DIA_ALT, DATA_DIA_DST, '
      'DATA_MES_ALT, '
      '   DATA_MES_DST, OBS_ALT, OBS_DST, NOTA_VENDEDOR_DST, '
      'NOTA_VENDEDOR_ALT, '
      '   NOTA_ECF_DST, NOTA_ECF_ALT, NOTA_DESCONTO_DST, '
      'NOTA_DESCONTO_ALT, NOTA_INDCOMPL_DST, '
      '   NOTA_INFCOMPL_ALT, CLI_DUPLLARGURA_COLUNA, '
      'CLI_DUPLNUM_COLUNA, NOTA_MSGNAT_DST, '
      '   NOTA_MSGNAT_ALT, NOTA_NUMRDP_DST, NOTA_NUMRDP_ALT, '
      'PORTA_IMPRESSAO, '
      '   NOTA_DESCONTO_ALT2, NOTA_DESCONTO_DST2, PROD_QNTD_UNID_ALT, '
      'PROD_QNTD_UNID_DST, '
      
        '   PROD_TIPO_UNID_ALT, PROD_TIPO_UNID_DST, MODELO, NOTA_IRRF_DST' +
        ', '
      'NOTA_IRRF_ALT, '
      '   NOTA_INSS_DST, NOTA_INSS_ALT, NOTA_PIS_DST, NOTA_PIS_ALT, '
      'NOTA_ISS_SUBST_DST, '
      '   NOTA_ISS_SUBST_ALT, PROD_TAM_NOME, CLI_NOME_RODAPE_DST, '
      'CLI_NOME_RODAPE_ALT, '
      '   CLI_DATENTSAI_RODAPE_DST, CLI_DATENTSAI_RODAPE_ALT, '
      'FEC_VALORNOTA_RODAPE_ALT, '
      '   FEC_VALORNOTA_RODAPE_DST, NOTA_DUPLICA_NUMERO, NF_GRAFICA, '
      'NOTA_EMPRESA_ALT, '
      '   NOTA_EMPRESA_DST, PROD_MARCA_ALT, PROD_MARCA_DST, '
      'PROD_LOTE_ALT, PROD_LOTE_DST, '
      '   NOTA_EMPRESA_UF_ALT, NOTA_EMPRESA_UF_DST, CLI_CID_PROP_DST, '
      'CLI_CID_PROP_ALT, '
      '   CLI_UF_PROP_DST, CLI_UF_PROP_ALT, PROD_LOTE_VALIDADE_ALT, '
      'PROD_LOTE_VALIDADE_DST, '
      '   CLI_END_PROP_ALT, CLI_END_PROP_DST, CLI_NOME_PROP_ALT, '
      'CLI_NOME_PROP_DST)'
      'values'
      '  (:CNPJ, :SERIE, :ULTIMO_NUMERO, :TIPO, :NOTA_NUM_DST, '
      ':NOTA_NUM_ALT, '
      '   :NOTA_NUMRECIBO_DST, :NOTA_NUMRECIBO_ALT, :NOTA_ENT_SAI_DST, '
      ':NOTA_ENT_SAI_ALT, '
      '   :NOTA_NATUREZA_DST, :NOTA_NATUREZA_ALT, :NOTA_CFOP_DST, '
      ':NOTA_CFOP_ALT, '
      '   :NOTA_SUBS_TRIB_DST, :NOTA_SUBS_TRIB_ALT, :NOTA_CNDPG_DST, '
      ':NOTA_CNDPG_ALT, '
      
        '   :CLI_NOME_DST, :CLI_NOME_ALT, :CLI_CGCCPF_DST, :CLI_CGCCPF_AL' +
        'T, '
      ':CLI_END_DST, '
      
        '   :CLI_END_ALT, :CLI_BAIRRO_DST, :CLI_BAIRRO_ALT, :CLI_CEP_DST,' +
        ' '
      ':CLI_CEP_ALT, '
      
        '   :CLI_CID_DST, :CLI_CID_ALT, :CLI_FONE_DST, :CLI_FONE_ALT, :CL' +
        'I_FAX_DST, '
      '   :CLI_FAX_ALT, :CLI_UF_DST, :CLI_UF_ALT, :CLI_INSCEST_DST, '
      ':CLI_INSCEST_ALT, '
      '   :CLI_DATEMIS_DST, :CLI_DATEMIS_ALT, :CLI_DATENTSAI_DST, '
      ':CLI_DATENTSAI_ALT, '
      '   :CLI_HORASAI_DST, :CLI_HORASAI_ALT, :CLI_PEDNUM_DST, '
      ':CLI_PEDNUM_ALT, '
      '   :CLI_INSCMUN_DST, :CLI_INSCMUN_ALT, :CLI_DUPLNUM_DST, '
      ':CLI_DUPLNUM_ALT, '
      '   :CLI_DUPLVENC_DST, :CLI_DUPLVENC_ALT, :CLI_DUPLVALOR_DST, '
      ':CLI_DUPLVALOR_ALT, '
      
        '   :PROD_COD_DST, :PROD_COD_ALT, :PROD_PROD_DST, :PROD_PROD_ALT,' +
        ' '
      ':PROD_CF_DST, '
      '   :PROD_CF_ALT, :PROD_SITTRIB_DST, :PROD_SITTRIB_ALT, '
      ':PROD_UNIDADE_DST, '
      '   :PROD_UNIDADE_ALT, :PROD_QUANT_DST, :PROD_QUANT_ALT, '
      ':PROD_VALORUNIT_DST, '
      '   :PROD_VALORUNIT_ALT, :PROD_VALORTOT_DST, :PROD_VALORTOT_ALT, '
      ':PROD_ICMS_DST, '
      
        '   :PROD_ICMS_ALT, :PROD_IPI_DST, :PROD_IPI_ALT, :PROD_VALORIPI_' +
        'DST, '
      ':PROD_VALORIPI_ALT, '
      '   :FEC_BASEICMS_DST, :FEC_BASEICMS_ALT, :FEC_VALORFRETE_DST, '
      ':FEC_VALORFRETE_ALT, '
      
        '   :FEC_VALORICMS_DST, :FEC_VALORICMS_ALT, :FEC_VALORSEGURO_DST,' +
        ' '
      ':FEC_VALORSEGURO_ALT, '
      '   :FEC_BASECALCICMS_DST, :FEC_BASECALCICMS_ALT, '
      ':FEC_DESPESAS_DST, :FEC_DESPESAS_ALT, '
      '   :FEC_VALORICMSSUB_DST, :FEC_VALORICMSSUB_ALT, :FEC_IPI_DST, '
      ':FEC_IPI_ALT, '
      '   :FEC_VALORTOTAL_DST, :FEC_ISS_DST, :FEC_VALORTOTAL_ALT, '
      ':FEC_ISS_ALT, '
      '   :FEC_VALORNOTA_DST, :FEC_VALORNOTA_ALT, :TRANS_NOME_DST, '
      ':TRANS_NOME_ALT, '
      '   :TRANS_END_DST, :TRANS_END_ALT, :TRANS_QUANTIDADE_DST, '
      ':TRANS_QUANTIDADE_ALT, '
      '   :TRANS_ESPECIE_DST, :TRANS_ESPECIE_ALT, :TRANS_MARCA_DST, '
      ':TRANS_MARCA_ALT, '
      
        '   :TRANS_FRETECONTA_DST, :TRANS_FRETECONTA_ALT, :TRANS_CID_DST,' +
        ' '
      ':TRANS_CID_ALT, '
      '   :TRANS_NUMERO_DST, :TRANS_NUMERO_ALT, :TRANS_PLACA_DST, '
      ':TRANS_PLACA_ALT, '
      
        '   :TRANS_UFVEI_DST, :TRANS_UFVEIALT, :TRANS_UF_DST, :TRANS_UF_A' +
        'LT, '
      ':TRANS_CGCCPF_DST, '
      '   :TRANS_CGCCPF_ALT, :TRANS_INSCEST_DST, :TRANS_INSCEST_ALT, '
      ':TRANS_PESBRT_DST, '
      '   :TRANS_PESOBRT_ALT, :TRANS_PESOLIQ_DST, :TRANS_PESOLIQ_ALT, '
      ':TRANS_OBS_DST, '
      '   :TRANS_OBS_ALT, :IMPRESSORA_PULO, :IMPRESSORA_LPP, '
      ':PRODUTOSNOTA, :LOCALDUPLICATAS, '
      '   :NUMERODELINHASDANOTA, :PROD_DESC_DST, :PROD_DESC_ALT, '
      ':DATA_ANO_ALT, '
      '   :DATA_ANO_DST, :DATA_DIA_ALT, :DATA_DIA_DST, :DATA_MES_ALT, '
      ':DATA_MES_DST, '
      '   :OBS_ALT, :OBS_DST, :NOTA_VENDEDOR_DST, :NOTA_VENDEDOR_ALT, '
      ':NOTA_ECF_DST, '
      '   :NOTA_ECF_ALT, :NOTA_DESCONTO_DST, :NOTA_DESCONTO_ALT, '
      ':NOTA_INDCOMPL_DST, '
      '   :NOTA_INFCOMPL_ALT, :CLI_DUPLLARGURA_COLUNA, '
      ':CLI_DUPLNUM_COLUNA, :NOTA_MSGNAT_DST, '
      '   :NOTA_MSGNAT_ALT, :NOTA_NUMRDP_DST, :NOTA_NUMRDP_ALT, '
      ':PORTA_IMPRESSAO, '
      '   :NOTA_DESCONTO_ALT2, :NOTA_DESCONTO_DST2, '
      ':PROD_QNTD_UNID_ALT, :PROD_QNTD_UNID_DST, '
      '   :PROD_TIPO_UNID_ALT, :PROD_TIPO_UNID_DST, :MODELO, '
      ':NOTA_IRRF_DST, :NOTA_IRRF_ALT, '
      
        '   :NOTA_INSS_DST, :NOTA_INSS_ALT, :NOTA_PIS_DST, :NOTA_PIS_ALT,' +
        ' '
      ':NOTA_ISS_SUBST_DST, '
      '   :NOTA_ISS_SUBST_ALT, :PROD_TAM_NOME, :CLI_NOME_RODAPE_DST, '
      ':CLI_NOME_RODAPE_ALT, '
      '   :CLI_DATENTSAI_RODAPE_DST, :CLI_DATENTSAI_RODAPE_ALT, '
      ':FEC_VALORNOTA_RODAPE_ALT, '
      
        '   :FEC_VALORNOTA_RODAPE_DST, :NOTA_DUPLICA_NUMERO, :NF_GRAFICA,' +
        ' '
      ':NOTA_EMPRESA_ALT, '
      '   :NOTA_EMPRESA_DST, :PROD_MARCA_ALT, :PROD_MARCA_DST, '
      ':PROD_LOTE_ALT, '
      '   :PROD_LOTE_DST, :NOTA_EMPRESA_UF_ALT, :NOTA_EMPRESA_UF_DST, '
      ':CLI_CID_PROP_DST, '
      '   :CLI_CID_PROP_ALT, :CLI_UF_PROP_DST, :CLI_UF_PROP_ALT, '
      ':PROD_LOTE_VALIDADE_ALT, '
      
        '   :PROD_LOTE_VALIDADE_DST, :CLI_END_PROP_ALT, :CLI_END_PROP_DST' +
        ', '
      ':CLI_NOME_PROP_ALT, '
      '   :CLI_NOME_PROP_DST)')
    RefreshSQL.Strings = (
      'Select *'
      'from Sis_SerieNf '
      'where'
      '  CNPJ = :CNPJ and'
      '  SERIE = :SERIE')
    SelectSQL.Strings = (
      'select   *  From Sis_SerieNf'
      ''
      'Where Cnpj = :CNPJ AND TIPO <> '#39'O'#39
      ''
      'Order By Serie')
    ModifySQL.Strings = (
      'update Sis_SerieNf'
      'set'
      '  CNPJ = :CNPJ,'
      '  SERIE = :SERIE,'
      '  ULTIMO_NUMERO = :ULTIMO_NUMERO,'
      '  TIPO = :TIPO,'
      '  NOTA_NUM_DST = :NOTA_NUM_DST,'
      '  NOTA_NUM_ALT = :NOTA_NUM_ALT,'
      '  NOTA_NUMRECIBO_DST = :NOTA_NUMRECIBO_DST,'
      '  NOTA_NUMRECIBO_ALT = :NOTA_NUMRECIBO_ALT,'
      '  NOTA_ENT_SAI_DST = :NOTA_ENT_SAI_DST,'
      '  NOTA_ENT_SAI_ALT = :NOTA_ENT_SAI_ALT,'
      '  NOTA_NATUREZA_DST = :NOTA_NATUREZA_DST,'
      '  NOTA_NATUREZA_ALT = :NOTA_NATUREZA_ALT,'
      '  NOTA_CFOP_DST = :NOTA_CFOP_DST,'
      '  NOTA_CFOP_ALT = :NOTA_CFOP_ALT,'
      '  NOTA_SUBS_TRIB_DST = :NOTA_SUBS_TRIB_DST,'
      '  NOTA_SUBS_TRIB_ALT = :NOTA_SUBS_TRIB_ALT,'
      '  NOTA_CNDPG_DST = :NOTA_CNDPG_DST,'
      '  NOTA_CNDPG_ALT = :NOTA_CNDPG_ALT,'
      '  CLI_NOME_DST = :CLI_NOME_DST,'
      '  CLI_NOME_ALT = :CLI_NOME_ALT,'
      '  CLI_CGCCPF_DST = :CLI_CGCCPF_DST,'
      '  CLI_CGCCPF_ALT = :CLI_CGCCPF_ALT,'
      '  CLI_END_DST = :CLI_END_DST,'
      '  CLI_END_ALT = :CLI_END_ALT,'
      '  CLI_BAIRRO_DST = :CLI_BAIRRO_DST,'
      '  CLI_BAIRRO_ALT = :CLI_BAIRRO_ALT,'
      '  CLI_CEP_DST = :CLI_CEP_DST,'
      '  CLI_CEP_ALT = :CLI_CEP_ALT,'
      '  CLI_CID_DST = :CLI_CID_DST,'
      '  CLI_CID_ALT = :CLI_CID_ALT,'
      '  CLI_FONE_DST = :CLI_FONE_DST,'
      '  CLI_FONE_ALT = :CLI_FONE_ALT,'
      '  CLI_FAX_DST = :CLI_FAX_DST,'
      '  CLI_FAX_ALT = :CLI_FAX_ALT,'
      '  CLI_UF_DST = :CLI_UF_DST,'
      '  CLI_UF_ALT = :CLI_UF_ALT,'
      '  CLI_INSCEST_DST = :CLI_INSCEST_DST,'
      '  CLI_INSCEST_ALT = :CLI_INSCEST_ALT,'
      '  CLI_DATEMIS_DST = :CLI_DATEMIS_DST,'
      '  CLI_DATEMIS_ALT = :CLI_DATEMIS_ALT,'
      '  CLI_DATENTSAI_DST = :CLI_DATENTSAI_DST,'
      '  CLI_DATENTSAI_ALT = :CLI_DATENTSAI_ALT,'
      '  CLI_HORASAI_DST = :CLI_HORASAI_DST,'
      '  CLI_HORASAI_ALT = :CLI_HORASAI_ALT,'
      '  CLI_PEDNUM_DST = :CLI_PEDNUM_DST,'
      '  CLI_PEDNUM_ALT = :CLI_PEDNUM_ALT,'
      '  CLI_INSCMUN_DST = :CLI_INSCMUN_DST,'
      '  CLI_INSCMUN_ALT = :CLI_INSCMUN_ALT,'
      '  CLI_DUPLNUM_DST = :CLI_DUPLNUM_DST,'
      '  CLI_DUPLNUM_ALT = :CLI_DUPLNUM_ALT,'
      '  CLI_DUPLVENC_DST = :CLI_DUPLVENC_DST,'
      '  CLI_DUPLVENC_ALT = :CLI_DUPLVENC_ALT,'
      '  CLI_DUPLVALOR_DST = :CLI_DUPLVALOR_DST,'
      '  CLI_DUPLVALOR_ALT = :CLI_DUPLVALOR_ALT,'
      '  PROD_COD_DST = :PROD_COD_DST,'
      '  PROD_COD_ALT = :PROD_COD_ALT,'
      '  PROD_PROD_DST = :PROD_PROD_DST,'
      '  PROD_PROD_ALT = :PROD_PROD_ALT,'
      '  PROD_CF_DST = :PROD_CF_DST,'
      '  PROD_CF_ALT = :PROD_CF_ALT,'
      '  PROD_SITTRIB_DST = :PROD_SITTRIB_DST,'
      '  PROD_SITTRIB_ALT = :PROD_SITTRIB_ALT,'
      '  PROD_UNIDADE_DST = :PROD_UNIDADE_DST,'
      '  PROD_UNIDADE_ALT = :PROD_UNIDADE_ALT,'
      '  PROD_QUANT_DST = :PROD_QUANT_DST,'
      '  PROD_QUANT_ALT = :PROD_QUANT_ALT,'
      '  PROD_VALORUNIT_DST = :PROD_VALORUNIT_DST,'
      '  PROD_VALORUNIT_ALT = :PROD_VALORUNIT_ALT,'
      '  PROD_VALORTOT_DST = :PROD_VALORTOT_DST,'
      '  PROD_VALORTOT_ALT = :PROD_VALORTOT_ALT,'
      '  PROD_ICMS_DST = :PROD_ICMS_DST,'
      '  PROD_ICMS_ALT = :PROD_ICMS_ALT,'
      '  PROD_IPI_DST = :PROD_IPI_DST,'
      '  PROD_IPI_ALT = :PROD_IPI_ALT,'
      '  PROD_VALORIPI_DST = :PROD_VALORIPI_DST,'
      '  PROD_VALORIPI_ALT = :PROD_VALORIPI_ALT,'
      '  FEC_BASEICMS_DST = :FEC_BASEICMS_DST,'
      '  FEC_BASEICMS_ALT = :FEC_BASEICMS_ALT,'
      '  FEC_VALORFRETE_DST = :FEC_VALORFRETE_DST,'
      '  FEC_VALORFRETE_ALT = :FEC_VALORFRETE_ALT,'
      '  FEC_VALORICMS_DST = :FEC_VALORICMS_DST,'
      '  FEC_VALORICMS_ALT = :FEC_VALORICMS_ALT,'
      '  FEC_VALORSEGURO_DST = :FEC_VALORSEGURO_DST,'
      '  FEC_VALORSEGURO_ALT = :FEC_VALORSEGURO_ALT,'
      '  FEC_BASECALCICMS_DST = :FEC_BASECALCICMS_DST,'
      '  FEC_BASECALCICMS_ALT = :FEC_BASECALCICMS_ALT,'
      '  FEC_DESPESAS_DST = :FEC_DESPESAS_DST,'
      '  FEC_DESPESAS_ALT = :FEC_DESPESAS_ALT,'
      '  FEC_VALORICMSSUB_DST = :FEC_VALORICMSSUB_DST,'
      '  FEC_VALORICMSSUB_ALT = :FEC_VALORICMSSUB_ALT,'
      '  FEC_IPI_DST = :FEC_IPI_DST,'
      '  FEC_IPI_ALT = :FEC_IPI_ALT,'
      '  FEC_VALORTOTAL_DST = :FEC_VALORTOTAL_DST,'
      '  FEC_ISS_DST = :FEC_ISS_DST,'
      '  FEC_VALORTOTAL_ALT = :FEC_VALORTOTAL_ALT,'
      '  FEC_ISS_ALT = :FEC_ISS_ALT,'
      '  FEC_VALORNOTA_DST = :FEC_VALORNOTA_DST,'
      '  FEC_VALORNOTA_ALT = :FEC_VALORNOTA_ALT,'
      '  TRANS_NOME_DST = :TRANS_NOME_DST,'
      '  TRANS_NOME_ALT = :TRANS_NOME_ALT,'
      '  TRANS_END_DST = :TRANS_END_DST,'
      '  TRANS_END_ALT = :TRANS_END_ALT,'
      '  TRANS_QUANTIDADE_DST = :TRANS_QUANTIDADE_DST,'
      '  TRANS_QUANTIDADE_ALT = :TRANS_QUANTIDADE_ALT,'
      '  TRANS_ESPECIE_DST = :TRANS_ESPECIE_DST,'
      '  TRANS_ESPECIE_ALT = :TRANS_ESPECIE_ALT,'
      '  TRANS_MARCA_DST = :TRANS_MARCA_DST,'
      '  TRANS_MARCA_ALT = :TRANS_MARCA_ALT,'
      '  TRANS_FRETECONTA_DST = :TRANS_FRETECONTA_DST,'
      '  TRANS_FRETECONTA_ALT = :TRANS_FRETECONTA_ALT,'
      '  TRANS_CID_DST = :TRANS_CID_DST,'
      '  TRANS_CID_ALT = :TRANS_CID_ALT,'
      '  TRANS_NUMERO_DST = :TRANS_NUMERO_DST,'
      '  TRANS_NUMERO_ALT = :TRANS_NUMERO_ALT,'
      '  TRANS_PLACA_DST = :TRANS_PLACA_DST,'
      '  TRANS_PLACA_ALT = :TRANS_PLACA_ALT,'
      '  TRANS_UFVEI_DST = :TRANS_UFVEI_DST,'
      '  TRANS_UFVEIALT = :TRANS_UFVEIALT,'
      '  TRANS_UF_DST = :TRANS_UF_DST,'
      '  TRANS_UF_ALT = :TRANS_UF_ALT,'
      '  TRANS_CGCCPF_DST = :TRANS_CGCCPF_DST,'
      '  TRANS_CGCCPF_ALT = :TRANS_CGCCPF_ALT,'
      '  TRANS_INSCEST_DST = :TRANS_INSCEST_DST,'
      '  TRANS_INSCEST_ALT = :TRANS_INSCEST_ALT,'
      '  TRANS_PESBRT_DST = :TRANS_PESBRT_DST,'
      '  TRANS_PESOBRT_ALT = :TRANS_PESOBRT_ALT,'
      '  TRANS_PESOLIQ_DST = :TRANS_PESOLIQ_DST,'
      '  TRANS_PESOLIQ_ALT = :TRANS_PESOLIQ_ALT,'
      '  TRANS_OBS_DST = :TRANS_OBS_DST,'
      '  TRANS_OBS_ALT = :TRANS_OBS_ALT,'
      '  IMPRESSORA_PULO = :IMPRESSORA_PULO,'
      '  IMPRESSORA_LPP = :IMPRESSORA_LPP,'
      '  PRODUTOSNOTA = :PRODUTOSNOTA,'
      '  LOCALDUPLICATAS = :LOCALDUPLICATAS,'
      '  NUMERODELINHASDANOTA = :NUMERODELINHASDANOTA,'
      '  PROD_DESC_DST = :PROD_DESC_DST,'
      '  PROD_DESC_ALT = :PROD_DESC_ALT,'
      '  DATA_ANO_ALT = :DATA_ANO_ALT,'
      '  DATA_ANO_DST = :DATA_ANO_DST,'
      '  DATA_DIA_ALT = :DATA_DIA_ALT,'
      '  DATA_DIA_DST = :DATA_DIA_DST,'
      '  DATA_MES_ALT = :DATA_MES_ALT,'
      '  DATA_MES_DST = :DATA_MES_DST,'
      '  OBS_ALT = :OBS_ALT,'
      '  OBS_DST = :OBS_DST,'
      '  NOTA_VENDEDOR_DST = :NOTA_VENDEDOR_DST,'
      '  NOTA_VENDEDOR_ALT = :NOTA_VENDEDOR_ALT,'
      '  NOTA_ECF_DST = :NOTA_ECF_DST,'
      '  NOTA_ECF_ALT = :NOTA_ECF_ALT,'
      '  NOTA_DESCONTO_DST = :NOTA_DESCONTO_DST,'
      '  NOTA_DESCONTO_ALT = :NOTA_DESCONTO_ALT,'
      '  NOTA_INDCOMPL_DST = :NOTA_INDCOMPL_DST,'
      '  NOTA_INFCOMPL_ALT = :NOTA_INFCOMPL_ALT,'
      '  CLI_DUPLLARGURA_COLUNA = :CLI_DUPLLARGURA_COLUNA,'
      '  CLI_DUPLNUM_COLUNA = :CLI_DUPLNUM_COLUNA,'
      '  NOTA_MSGNAT_DST = :NOTA_MSGNAT_DST,'
      '  NOTA_MSGNAT_ALT = :NOTA_MSGNAT_ALT,'
      '  NOTA_NUMRDP_DST = :NOTA_NUMRDP_DST,'
      '  NOTA_NUMRDP_ALT = :NOTA_NUMRDP_ALT,'
      '  PORTA_IMPRESSAO = :PORTA_IMPRESSAO,'
      '  NOTA_DESCONTO_ALT2 = :NOTA_DESCONTO_ALT2,'
      '  NOTA_DESCONTO_DST2 = :NOTA_DESCONTO_DST2,'
      '  PROD_QNTD_UNID_ALT = :PROD_QNTD_UNID_ALT,'
      '  PROD_QNTD_UNID_DST = :PROD_QNTD_UNID_DST,'
      '  PROD_TIPO_UNID_ALT = :PROD_TIPO_UNID_ALT,'
      '  PROD_TIPO_UNID_DST = :PROD_TIPO_UNID_DST,'
      '  MODELO = :MODELO,'
      '  NOTA_IRRF_DST = :NOTA_IRRF_DST,'
      '  NOTA_IRRF_ALT = :NOTA_IRRF_ALT,'
      '  NOTA_INSS_DST = :NOTA_INSS_DST,'
      '  NOTA_INSS_ALT = :NOTA_INSS_ALT,'
      '  NOTA_PIS_DST = :NOTA_PIS_DST,'
      '  NOTA_PIS_ALT = :NOTA_PIS_ALT,'
      '  NOTA_ISS_SUBST_DST = :NOTA_ISS_SUBST_DST,'
      '  NOTA_ISS_SUBST_ALT = :NOTA_ISS_SUBST_ALT,'
      '  PROD_TAM_NOME = :PROD_TAM_NOME,'
      '  CLI_NOME_RODAPE_DST = :CLI_NOME_RODAPE_DST,'
      '  CLI_NOME_RODAPE_ALT = :CLI_NOME_RODAPE_ALT,'
      '  CLI_DATENTSAI_RODAPE_DST = :CLI_DATENTSAI_RODAPE_DST,'
      '  CLI_DATENTSAI_RODAPE_ALT = :CLI_DATENTSAI_RODAPE_ALT,'
      '  FEC_VALORNOTA_RODAPE_ALT = :FEC_VALORNOTA_RODAPE_ALT,'
      '  FEC_VALORNOTA_RODAPE_DST = :FEC_VALORNOTA_RODAPE_DST,'
      '  NOTA_DUPLICA_NUMERO = :NOTA_DUPLICA_NUMERO,'
      '  NF_GRAFICA = :NF_GRAFICA,'
      '  NOTA_EMPRESA_ALT = :NOTA_EMPRESA_ALT,'
      '  NOTA_EMPRESA_DST = :NOTA_EMPRESA_DST,'
      '  PROD_MARCA_ALT = :PROD_MARCA_ALT,'
      '  PROD_MARCA_DST = :PROD_MARCA_DST,'
      '  PROD_LOTE_ALT = :PROD_LOTE_ALT,'
      '  PROD_LOTE_DST = :PROD_LOTE_DST,'
      '  NOTA_EMPRESA_UF_ALT = :NOTA_EMPRESA_UF_ALT,'
      '  NOTA_EMPRESA_UF_DST = :NOTA_EMPRESA_UF_DST,'
      '  CLI_CID_PROP_DST = :CLI_CID_PROP_DST,'
      '  CLI_CID_PROP_ALT = :CLI_CID_PROP_ALT,'
      '  CLI_UF_PROP_DST = :CLI_UF_PROP_DST,'
      '  CLI_UF_PROP_ALT = :CLI_UF_PROP_ALT,'
      '  PROD_LOTE_VALIDADE_ALT = :PROD_LOTE_VALIDADE_ALT,'
      '  PROD_LOTE_VALIDADE_DST = :PROD_LOTE_VALIDADE_DST,'
      '  CLI_END_PROP_ALT = :CLI_END_PROP_ALT,'
      '  CLI_END_PROP_DST = :CLI_END_PROP_DST,'
      '  CLI_NOME_PROP_ALT = :CLI_NOME_PROP_ALT,'
      '  CLI_NOME_PROP_DST = :CLI_NOME_PROP_DST'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SERIE = :OLD_SERIE')
    Left = 144
    Top = 408
    object SerieCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_SERIENF"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SerieSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"SIS_SERIENF"."SERIE"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SerieULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Origin = '"SIS_SERIENF"."ULTIMO_NUMERO"'
    end
    object SerieTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"SIS_SERIENF"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object SerieNOTA_NUM_DST: TIntegerField
      FieldName = 'NOTA_NUM_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUM_DST"'
    end
    object SerieNOTA_NUM_ALT: TIntegerField
      FieldName = 'NOTA_NUM_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUM_ALT"'
    end
    object SerieNOTA_NUMRECIBO_DST: TIntegerField
      FieldName = 'NOTA_NUMRECIBO_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUMRECIBO_DST"'
    end
    object SerieNOTA_NUMRECIBO_ALT: TIntegerField
      FieldName = 'NOTA_NUMRECIBO_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUMRECIBO_ALT"'
    end
    object SerieNOTA_ENT_SAI_DST: TIntegerField
      FieldName = 'NOTA_ENT_SAI_DST'
      Origin = '"SIS_SERIENF"."NOTA_ENT_SAI_DST"'
    end
    object SerieNOTA_ENT_SAI_ALT: TIntegerField
      FieldName = 'NOTA_ENT_SAI_ALT'
      Origin = '"SIS_SERIENF"."NOTA_ENT_SAI_ALT"'
    end
    object SerieNOTA_NATUREZA_DST: TIntegerField
      FieldName = 'NOTA_NATUREZA_DST'
      Origin = '"SIS_SERIENF"."NOTA_NATUREZA_DST"'
    end
    object SerieNOTA_NATUREZA_ALT: TIntegerField
      FieldName = 'NOTA_NATUREZA_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NATUREZA_ALT"'
    end
    object SerieNOTA_CFOP_DST: TIntegerField
      FieldName = 'NOTA_CFOP_DST'
      Origin = '"SIS_SERIENF"."NOTA_CFOP_DST"'
    end
    object SerieNOTA_CFOP_ALT: TIntegerField
      FieldName = 'NOTA_CFOP_ALT'
      Origin = '"SIS_SERIENF"."NOTA_CFOP_ALT"'
    end
    object SerieNOTA_SUBS_TRIB_DST: TIntegerField
      FieldName = 'NOTA_SUBS_TRIB_DST'
      Origin = '"SIS_SERIENF"."NOTA_SUBS_TRIB_DST"'
    end
    object SerieNOTA_SUBS_TRIB_ALT: TIntegerField
      FieldName = 'NOTA_SUBS_TRIB_ALT'
      Origin = '"SIS_SERIENF"."NOTA_SUBS_TRIB_ALT"'
    end
    object SerieNOTA_CNDPG_DST: TIntegerField
      FieldName = 'NOTA_CNDPG_DST'
      Origin = '"SIS_SERIENF"."NOTA_CNDPG_DST"'
    end
    object SerieNOTA_CNDPG_ALT: TIntegerField
      FieldName = 'NOTA_CNDPG_ALT'
      Origin = '"SIS_SERIENF"."NOTA_CNDPG_ALT"'
    end
    object SerieCLI_NOME_DST: TIntegerField
      FieldName = 'CLI_NOME_DST'
      Origin = '"SIS_SERIENF"."CLI_NOME_DST"'
    end
    object SerieCLI_NOME_ALT: TIntegerField
      FieldName = 'CLI_NOME_ALT'
      Origin = '"SIS_SERIENF"."CLI_NOME_ALT"'
    end
    object SerieCLI_CGCCPF_DST: TIntegerField
      FieldName = 'CLI_CGCCPF_DST'
      Origin = '"SIS_SERIENF"."CLI_CGCCPF_DST"'
    end
    object SerieCLI_CGCCPF_ALT: TIntegerField
      FieldName = 'CLI_CGCCPF_ALT'
      Origin = '"SIS_SERIENF"."CLI_CGCCPF_ALT"'
    end
    object SerieCLI_END_DST: TIntegerField
      FieldName = 'CLI_END_DST'
      Origin = '"SIS_SERIENF"."CLI_END_DST"'
    end
    object SerieCLI_END_ALT: TIntegerField
      FieldName = 'CLI_END_ALT'
      Origin = '"SIS_SERIENF"."CLI_END_ALT"'
    end
    object SerieCLI_BAIRRO_DST: TIntegerField
      FieldName = 'CLI_BAIRRO_DST'
      Origin = '"SIS_SERIENF"."CLI_BAIRRO_DST"'
    end
    object SerieCLI_BAIRRO_ALT: TIntegerField
      FieldName = 'CLI_BAIRRO_ALT'
      Origin = '"SIS_SERIENF"."CLI_BAIRRO_ALT"'
    end
    object SerieCLI_CEP_DST: TIntegerField
      FieldName = 'CLI_CEP_DST'
      Origin = '"SIS_SERIENF"."CLI_CEP_DST"'
    end
    object SerieCLI_CEP_ALT: TIntegerField
      FieldName = 'CLI_CEP_ALT'
      Origin = '"SIS_SERIENF"."CLI_CEP_ALT"'
    end
    object SerieCLI_CID_DST: TIntegerField
      FieldName = 'CLI_CID_DST'
      Origin = '"SIS_SERIENF"."CLI_CID_DST"'
    end
    object SerieCLI_CID_ALT: TIntegerField
      FieldName = 'CLI_CID_ALT'
      Origin = '"SIS_SERIENF"."CLI_CID_ALT"'
    end
    object SerieCLI_FONE_DST: TIntegerField
      FieldName = 'CLI_FONE_DST'
      Origin = '"SIS_SERIENF"."CLI_FONE_DST"'
    end
    object SerieCLI_FONE_ALT: TIntegerField
      FieldName = 'CLI_FONE_ALT'
      Origin = '"SIS_SERIENF"."CLI_FONE_ALT"'
    end
    object SerieCLI_FAX_DST: TIntegerField
      FieldName = 'CLI_FAX_DST'
      Origin = '"SIS_SERIENF"."CLI_FAX_DST"'
    end
    object SerieCLI_FAX_ALT: TIntegerField
      FieldName = 'CLI_FAX_ALT'
      Origin = '"SIS_SERIENF"."CLI_FAX_ALT"'
    end
    object SerieCLI_UF_DST: TIntegerField
      FieldName = 'CLI_UF_DST'
      Origin = '"SIS_SERIENF"."CLI_UF_DST"'
    end
    object SerieCLI_UF_ALT: TIntegerField
      FieldName = 'CLI_UF_ALT'
      Origin = '"SIS_SERIENF"."CLI_UF_ALT"'
    end
    object SerieCLI_INSCEST_DST: TIntegerField
      FieldName = 'CLI_INSCEST_DST'
      Origin = '"SIS_SERIENF"."CLI_INSCEST_DST"'
    end
    object SerieCLI_INSCEST_ALT: TIntegerField
      FieldName = 'CLI_INSCEST_ALT'
      Origin = '"SIS_SERIENF"."CLI_INSCEST_ALT"'
    end
    object SerieCLI_DATEMIS_DST: TIntegerField
      FieldName = 'CLI_DATEMIS_DST'
      Origin = '"SIS_SERIENF"."CLI_DATEMIS_DST"'
    end
    object SerieCLI_DATEMIS_ALT: TIntegerField
      FieldName = 'CLI_DATEMIS_ALT'
      Origin = '"SIS_SERIENF"."CLI_DATEMIS_ALT"'
    end
    object SerieCLI_DATENTSAI_DST: TIntegerField
      FieldName = 'CLI_DATENTSAI_DST'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_DST"'
    end
    object SerieCLI_DATENTSAI_ALT: TIntegerField
      FieldName = 'CLI_DATENTSAI_ALT'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_ALT"'
    end
    object SerieCLI_HORASAI_DST: TIntegerField
      FieldName = 'CLI_HORASAI_DST'
      Origin = '"SIS_SERIENF"."CLI_HORASAI_DST"'
    end
    object SerieCLI_HORASAI_ALT: TIntegerField
      FieldName = 'CLI_HORASAI_ALT'
      Origin = '"SIS_SERIENF"."CLI_HORASAI_ALT"'
    end
    object SerieCLI_PEDNUM_DST: TIntegerField
      FieldName = 'CLI_PEDNUM_DST'
      Origin = '"SIS_SERIENF"."CLI_PEDNUM_DST"'
    end
    object SerieCLI_PEDNUM_ALT: TIntegerField
      FieldName = 'CLI_PEDNUM_ALT'
      Origin = '"SIS_SERIENF"."CLI_PEDNUM_ALT"'
    end
    object SerieCLI_INSCMUN_DST: TIntegerField
      FieldName = 'CLI_INSCMUN_DST'
      Origin = '"SIS_SERIENF"."CLI_INSCMUN_DST"'
    end
    object SerieCLI_INSCMUN_ALT: TIntegerField
      FieldName = 'CLI_INSCMUN_ALT'
      Origin = '"SIS_SERIENF"."CLI_INSCMUN_ALT"'
    end
    object SerieCLI_DUPLNUM_DST: TIntegerField
      FieldName = 'CLI_DUPLNUM_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_DST"'
    end
    object SerieCLI_DUPLVENC_DST: TIntegerField
      FieldName = 'CLI_DUPLVENC_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLVENC_DST"'
    end
    object SerieCLI_DUPLVENC_ALT: TIntegerField
      FieldName = 'CLI_DUPLVENC_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLVENC_ALT"'
    end
    object SerieCLI_DUPLVALOR_DST: TIntegerField
      FieldName = 'CLI_DUPLVALOR_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLVALOR_DST"'
    end
    object SerieCLI_DUPLVALOR_ALT: TIntegerField
      FieldName = 'CLI_DUPLVALOR_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLVALOR_ALT"'
    end
    object SeriePROD_COD_DST: TIntegerField
      FieldName = 'PROD_COD_DST'
      Origin = '"SIS_SERIENF"."PROD_COD_DST"'
    end
    object SeriePROD_COD_ALT: TIntegerField
      FieldName = 'PROD_COD_ALT'
      Origin = '"SIS_SERIENF"."PROD_COD_ALT"'
    end
    object SeriePROD_PROD_DST: TIntegerField
      FieldName = 'PROD_PROD_DST'
      Origin = '"SIS_SERIENF"."PROD_PROD_DST"'
    end
    object SeriePROD_PROD_ALT: TIntegerField
      FieldName = 'PROD_PROD_ALT'
      Origin = '"SIS_SERIENF"."PROD_PROD_ALT"'
    end
    object SeriePROD_CF_DST: TIntegerField
      FieldName = 'PROD_CF_DST'
      Origin = '"SIS_SERIENF"."PROD_CF_DST"'
    end
    object SeriePROD_CF_ALT: TIntegerField
      FieldName = 'PROD_CF_ALT'
      Origin = '"SIS_SERIENF"."PROD_CF_ALT"'
    end
    object SeriePROD_SITTRIB_DST: TIntegerField
      FieldName = 'PROD_SITTRIB_DST'
      Origin = '"SIS_SERIENF"."PROD_SITTRIB_DST"'
    end
    object SeriePROD_SITTRIB_ALT: TIntegerField
      FieldName = 'PROD_SITTRIB_ALT'
      Origin = '"SIS_SERIENF"."PROD_SITTRIB_ALT"'
    end
    object SeriePROD_UNIDADE_DST: TIntegerField
      FieldName = 'PROD_UNIDADE_DST'
      Origin = '"SIS_SERIENF"."PROD_UNIDADE_DST"'
    end
    object SeriePROD_UNIDADE_ALT: TIntegerField
      FieldName = 'PROD_UNIDADE_ALT'
      Origin = '"SIS_SERIENF"."PROD_UNIDADE_ALT"'
    end
    object SeriePROD_QUANT_DST: TIntegerField
      FieldName = 'PROD_QUANT_DST'
      Origin = '"SIS_SERIENF"."PROD_QUANT_DST"'
    end
    object SeriePROD_QUANT_ALT: TIntegerField
      FieldName = 'PROD_QUANT_ALT'
      Origin = '"SIS_SERIENF"."PROD_QUANT_ALT"'
    end
    object SeriePROD_VALORUNIT_DST: TIntegerField
      FieldName = 'PROD_VALORUNIT_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORUNIT_DST"'
    end
    object SeriePROD_VALORUNIT_ALT: TIntegerField
      FieldName = 'PROD_VALORUNIT_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORUNIT_ALT"'
    end
    object SeriePROD_VALORTOT_DST: TIntegerField
      FieldName = 'PROD_VALORTOT_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORTOT_DST"'
    end
    object SeriePROD_VALORTOT_ALT: TIntegerField
      FieldName = 'PROD_VALORTOT_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORTOT_ALT"'
    end
    object SeriePROD_ICMS_DST: TIntegerField
      FieldName = 'PROD_ICMS_DST'
      Origin = '"SIS_SERIENF"."PROD_ICMS_DST"'
    end
    object SeriePROD_ICMS_ALT: TIntegerField
      FieldName = 'PROD_ICMS_ALT'
      Origin = '"SIS_SERIENF"."PROD_ICMS_ALT"'
    end
    object SeriePROD_IPI_DST: TIntegerField
      FieldName = 'PROD_IPI_DST'
      Origin = '"SIS_SERIENF"."PROD_IPI_DST"'
    end
    object SeriePROD_IPI_ALT: TIntegerField
      FieldName = 'PROD_IPI_ALT'
      Origin = '"SIS_SERIENF"."PROD_IPI_ALT"'
    end
    object SeriePROD_VALORIPI_DST: TIntegerField
      FieldName = 'PROD_VALORIPI_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORIPI_DST"'
    end
    object SeriePROD_VALORIPI_ALT: TIntegerField
      FieldName = 'PROD_VALORIPI_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORIPI_ALT"'
    end
    object SerieFEC_BASEICMS_DST: TIntegerField
      FieldName = 'FEC_BASEICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_BASEICMS_DST"'
    end
    object SerieFEC_BASEICMS_ALT: TIntegerField
      FieldName = 'FEC_BASEICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_BASEICMS_ALT"'
    end
    object SerieFEC_VALORFRETE_DST: TIntegerField
      FieldName = 'FEC_VALORFRETE_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORFRETE_DST"'
    end
    object SerieFEC_VALORFRETE_ALT: TIntegerField
      FieldName = 'FEC_VALORFRETE_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORFRETE_ALT"'
    end
    object SerieFEC_VALORICMS_DST: TIntegerField
      FieldName = 'FEC_VALORICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORICMS_DST"'
    end
    object SerieFEC_VALORICMS_ALT: TIntegerField
      FieldName = 'FEC_VALORICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORICMS_ALT"'
    end
    object SerieFEC_VALORSEGURO_DST: TIntegerField
      FieldName = 'FEC_VALORSEGURO_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORSEGURO_DST"'
    end
    object SerieFEC_VALORSEGURO_ALT: TIntegerField
      FieldName = 'FEC_VALORSEGURO_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORSEGURO_ALT"'
    end
    object SerieFEC_BASECALCICMS_DST: TIntegerField
      FieldName = 'FEC_BASECALCICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_BASECALCICMS_DST"'
    end
    object SerieFEC_BASECALCICMS_ALT: TIntegerField
      FieldName = 'FEC_BASECALCICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_BASECALCICMS_ALT"'
    end
    object SerieFEC_DESPESAS_DST: TIntegerField
      FieldName = 'FEC_DESPESAS_DST'
      Origin = '"SIS_SERIENF"."FEC_DESPESAS_DST"'
    end
    object SerieFEC_DESPESAS_ALT: TIntegerField
      FieldName = 'FEC_DESPESAS_ALT'
      Origin = '"SIS_SERIENF"."FEC_DESPESAS_ALT"'
    end
    object SerieFEC_VALORICMSSUB_DST: TIntegerField
      FieldName = 'FEC_VALORICMSSUB_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORICMSSUB_DST"'
    end
    object SerieFEC_VALORICMSSUB_ALT: TIntegerField
      FieldName = 'FEC_VALORICMSSUB_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORICMSSUB_ALT"'
    end
    object SerieFEC_IPI_DST: TIntegerField
      FieldName = 'FEC_IPI_DST'
      Origin = '"SIS_SERIENF"."FEC_IPI_DST"'
    end
    object SerieFEC_IPI_ALT: TIntegerField
      FieldName = 'FEC_IPI_ALT'
      Origin = '"SIS_SERIENF"."FEC_IPI_ALT"'
    end
    object SerieFEC_VALORTOTAL_DST: TIntegerField
      FieldName = 'FEC_VALORTOTAL_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORTOTAL_DST"'
    end
    object SerieFEC_ISS_DST: TIntegerField
      FieldName = 'FEC_ISS_DST'
      Origin = '"SIS_SERIENF"."FEC_ISS_DST"'
    end
    object SerieFEC_VALORTOTAL_ALT: TIntegerField
      FieldName = 'FEC_VALORTOTAL_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORTOTAL_ALT"'
    end
    object SerieFEC_ISS_ALT: TIntegerField
      FieldName = 'FEC_ISS_ALT'
      Origin = '"SIS_SERIENF"."FEC_ISS_ALT"'
    end
    object SerieFEC_VALORNOTA_DST: TIntegerField
      FieldName = 'FEC_VALORNOTA_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_DST"'
    end
    object SerieFEC_VALORNOTA_ALT: TIntegerField
      FieldName = 'FEC_VALORNOTA_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_ALT"'
    end
    object SerieTRANS_NOME_DST: TIntegerField
      FieldName = 'TRANS_NOME_DST'
      Origin = '"SIS_SERIENF"."TRANS_NOME_DST"'
    end
    object SerieTRANS_NOME_ALT: TIntegerField
      FieldName = 'TRANS_NOME_ALT'
      Origin = '"SIS_SERIENF"."TRANS_NOME_ALT"'
    end
    object SerieTRANS_END_DST: TIntegerField
      FieldName = 'TRANS_END_DST'
      Origin = '"SIS_SERIENF"."TRANS_END_DST"'
    end
    object SerieTRANS_END_ALT: TIntegerField
      FieldName = 'TRANS_END_ALT'
      Origin = '"SIS_SERIENF"."TRANS_END_ALT"'
    end
    object SerieTRANS_QUANTIDADE_DST: TIntegerField
      FieldName = 'TRANS_QUANTIDADE_DST'
      Origin = '"SIS_SERIENF"."TRANS_QUANTIDADE_DST"'
    end
    object SerieTRANS_QUANTIDADE_ALT: TIntegerField
      FieldName = 'TRANS_QUANTIDADE_ALT'
      Origin = '"SIS_SERIENF"."TRANS_QUANTIDADE_ALT"'
    end
    object SerieTRANS_ESPECIE_DST: TIntegerField
      FieldName = 'TRANS_ESPECIE_DST'
      Origin = '"SIS_SERIENF"."TRANS_ESPECIE_DST"'
    end
    object SerieTRANS_ESPECIE_ALT: TIntegerField
      FieldName = 'TRANS_ESPECIE_ALT'
      Origin = '"SIS_SERIENF"."TRANS_ESPECIE_ALT"'
    end
    object SerieTRANS_MARCA_DST: TIntegerField
      FieldName = 'TRANS_MARCA_DST'
      Origin = '"SIS_SERIENF"."TRANS_MARCA_DST"'
    end
    object SerieTRANS_MARCA_ALT: TIntegerField
      FieldName = 'TRANS_MARCA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_MARCA_ALT"'
    end
    object SerieTRANS_FRETECONTA_DST: TIntegerField
      FieldName = 'TRANS_FRETECONTA_DST'
      Origin = '"SIS_SERIENF"."TRANS_FRETECONTA_DST"'
    end
    object SerieTRANS_FRETECONTA_ALT: TIntegerField
      FieldName = 'TRANS_FRETECONTA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_FRETECONTA_ALT"'
    end
    object SerieTRANS_CID_DST: TIntegerField
      FieldName = 'TRANS_CID_DST'
      Origin = '"SIS_SERIENF"."TRANS_CID_DST"'
    end
    object SerieTRANS_CID_ALT: TIntegerField
      FieldName = 'TRANS_CID_ALT'
      Origin = '"SIS_SERIENF"."TRANS_CID_ALT"'
    end
    object SerieTRANS_NUMERO_DST: TIntegerField
      FieldName = 'TRANS_NUMERO_DST'
      Origin = '"SIS_SERIENF"."TRANS_NUMERO_DST"'
    end
    object SerieTRANS_NUMERO_ALT: TIntegerField
      FieldName = 'TRANS_NUMERO_ALT'
      Origin = '"SIS_SERIENF"."TRANS_NUMERO_ALT"'
    end
    object SerieTRANS_PLACA_DST: TIntegerField
      FieldName = 'TRANS_PLACA_DST'
      Origin = '"SIS_SERIENF"."TRANS_PLACA_DST"'
    end
    object SerieTRANS_PLACA_ALT: TIntegerField
      FieldName = 'TRANS_PLACA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PLACA_ALT"'
    end
    object SerieTRANS_UFVEI_DST: TIntegerField
      FieldName = 'TRANS_UFVEI_DST'
      Origin = '"SIS_SERIENF"."TRANS_UFVEI_DST"'
    end
    object SerieTRANS_UFVEIALT: TIntegerField
      FieldName = 'TRANS_UFVEIALT'
      Origin = '"SIS_SERIENF"."TRANS_UFVEIALT"'
    end
    object SerieTRANS_UF_DST: TIntegerField
      FieldName = 'TRANS_UF_DST'
      Origin = '"SIS_SERIENF"."TRANS_UF_DST"'
    end
    object SerieTRANS_UF_ALT: TIntegerField
      FieldName = 'TRANS_UF_ALT'
      Origin = '"SIS_SERIENF"."TRANS_UF_ALT"'
    end
    object SerieTRANS_CGCCPF_DST: TIntegerField
      FieldName = 'TRANS_CGCCPF_DST'
      Origin = '"SIS_SERIENF"."TRANS_CGCCPF_DST"'
    end
    object SerieTRANS_CGCCPF_ALT: TIntegerField
      FieldName = 'TRANS_CGCCPF_ALT'
      Origin = '"SIS_SERIENF"."TRANS_CGCCPF_ALT"'
    end
    object SerieTRANS_INSCEST_DST: TIntegerField
      FieldName = 'TRANS_INSCEST_DST'
      Origin = '"SIS_SERIENF"."TRANS_INSCEST_DST"'
    end
    object SerieTRANS_INSCEST_ALT: TIntegerField
      FieldName = 'TRANS_INSCEST_ALT'
      Origin = '"SIS_SERIENF"."TRANS_INSCEST_ALT"'
    end
    object SerieTRANS_PESBRT_DST: TIntegerField
      FieldName = 'TRANS_PESBRT_DST'
      Origin = '"SIS_SERIENF"."TRANS_PESBRT_DST"'
    end
    object SerieTRANS_PESOBRT_ALT: TIntegerField
      FieldName = 'TRANS_PESOBRT_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PESOBRT_ALT"'
    end
    object SerieTRANS_PESOLIQ_DST: TIntegerField
      FieldName = 'TRANS_PESOLIQ_DST'
      Origin = '"SIS_SERIENF"."TRANS_PESOLIQ_DST"'
    end
    object SerieTRANS_PESOLIQ_ALT: TIntegerField
      FieldName = 'TRANS_PESOLIQ_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PESOLIQ_ALT"'
    end
    object SerieTRANS_OBS_DST: TIntegerField
      FieldName = 'TRANS_OBS_DST'
      Origin = '"SIS_SERIENF"."TRANS_OBS_DST"'
    end
    object SerieTRANS_OBS_ALT: TIntegerField
      FieldName = 'TRANS_OBS_ALT'
      Origin = '"SIS_SERIENF"."TRANS_OBS_ALT"'
    end
    object SerieIMPRESSORA_PULO: TIntegerField
      FieldName = 'IMPRESSORA_PULO'
      Origin = '"SIS_SERIENF"."IMPRESSORA_PULO"'
    end
    object SerieIMPRESSORA_LPP: TIBStringField
      FieldName = 'IMPRESSORA_LPP'
      Origin = '"SIS_SERIENF"."IMPRESSORA_LPP"'
      Size = 10
    end
    object SeriePRODUTOSNOTA: TIntegerField
      FieldName = 'PRODUTOSNOTA'
      Origin = '"SIS_SERIENF"."PRODUTOSNOTA"'
    end
    object SerieLOCALDUPLICATAS: TStringField
      FieldName = 'LOCALDUPLICATAS'
      Size = 1
    end
    object SerieNUMERODELINHASDANOTA: TIntegerField
      FieldName = 'NUMERODELINHASDANOTA'
    end
    object SerieCLI_DUPLNUM_ALT: TIntegerField
      FieldName = 'CLI_DUPLNUM_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_ALT"'
    end
    object SeriePROD_DESC_DST: TIntegerField
      FieldName = 'PROD_DESC_DST'
      Origin = '"SIS_SERIENF"."PROD_DESC_DST"'
    end
    object SeriePROD_DESC_ALT: TIntegerField
      FieldName = 'PROD_DESC_ALT'
      Origin = '"SIS_SERIENF"."PROD_DESC_ALT"'
    end
    object SerieDATA_ANO_ALT: TIntegerField
      FieldName = 'DATA_ANO_ALT'
      Origin = '"SIS_SERIENF"."DATA_ANO_ALT"'
    end
    object SerieDATA_ANO_DST: TIntegerField
      FieldName = 'DATA_ANO_DST'
      Origin = '"SIS_SERIENF"."DATA_ANO_DST"'
    end
    object SerieDATA_DIA_ALT: TIntegerField
      FieldName = 'DATA_DIA_ALT'
      Origin = '"SIS_SERIENF"."DATA_DIA_ALT"'
    end
    object SerieDATA_DIA_DST: TIntegerField
      FieldName = 'DATA_DIA_DST'
      Origin = '"SIS_SERIENF"."DATA_DIA_DST"'
    end
    object SerieDATA_MES_ALT: TIntegerField
      FieldName = 'DATA_MES_ALT'
      Origin = '"SIS_SERIENF"."DATA_MES_ALT"'
    end
    object SerieDATA_MES_DST: TIntegerField
      FieldName = 'DATA_MES_DST'
      Origin = '"SIS_SERIENF"."DATA_MES_DST"'
    end
    object SerieOBS_ALT: TIntegerField
      FieldName = 'OBS_ALT'
      Origin = '"SIS_SERIENF"."OBS_ALT"'
    end
    object SerieOBS_DST: TIntegerField
      FieldName = 'OBS_DST'
      Origin = '"SIS_SERIENF"."OBS_DST"'
    end
    object SerieNOTA_VENDEDOR_DST: TIntegerField
      FieldName = 'NOTA_VENDEDOR_DST'
      Origin = '"SIS_SERIENF"."NOTA_VENDEDOR_DST"'
    end
    object SerieNOTA_VENDEDOR_ALT: TIntegerField
      FieldName = 'NOTA_VENDEDOR_ALT'
      Origin = '"SIS_SERIENF"."NOTA_VENDEDOR_ALT"'
    end
    object SerieNOTA_ECF_DST: TIntegerField
      FieldName = 'NOTA_ECF_DST'
      Origin = '"SIS_SERIENF"."NOTA_ECF_DST"'
    end
    object SerieNOTA_ECF_ALT: TIntegerField
      FieldName = 'NOTA_ECF_ALT'
      Origin = '"SIS_SERIENF"."NOTA_ECF_ALT"'
    end
    object SerieNOTA_DESCONTO_DST: TIntegerField
      FieldName = 'NOTA_DESCONTO_DST'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_DST"'
    end
    object SerieNOTA_DESCONTO_ALT: TIntegerField
      FieldName = 'NOTA_DESCONTO_ALT'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_ALT"'
    end
    object SerieNOTA_INDCOMPL_DST: TIntegerField
      FieldName = 'NOTA_INDCOMPL_DST'
      Origin = '"SIS_SERIENF"."NOTA_INDCOMPL_DST"'
    end
    object SerieNOTA_INFCOMPL_ALT: TIntegerField
      FieldName = 'NOTA_INFCOMPL_ALT'
      Origin = '"SIS_SERIENF"."NOTA_INFCOMPL_ALT"'
    end
    object SerieCLI_DUPLLARGURA_COLUNA: TIntegerField
      FieldName = 'CLI_DUPLLARGURA_COLUNA'
      Origin = '"SIS_SERIENF"."CLI_DUPLLARGURA_COLUNA"'
    end
    object SerieCLI_DUPLNUM_COLUNA: TIntegerField
      FieldName = 'CLI_DUPLNUM_COLUNA'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_COLUNA"'
    end
    object SerieNOTA_MSGNAT_DST: TIntegerField
      FieldName = 'NOTA_MSGNAT_DST'
      Origin = '"SIS_SERIENF"."NOTA_MSGNAT_DST"'
    end
    object SerieNOTA_MSGNAT_ALT: TIntegerField
      FieldName = 'NOTA_MSGNAT_ALT'
      Origin = '"SIS_SERIENF"."NOTA_MSGNAT_ALT"'
    end
    object SerieNOTA_NUMRDP_DST: TIntegerField
      FieldName = 'NOTA_NUMRDP_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUMRDP_DST"'
    end
    object SerieNOTA_NUMRDP_ALT: TIntegerField
      FieldName = 'NOTA_NUMRDP_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUMRDP_ALT"'
    end
    object SeriePORTA_IMPRESSAO: TIBStringField
      FieldName = 'PORTA_IMPRESSAO'
      Origin = '"SIS_SERIENF"."PORTA_IMPRESSAO"'
      Size = 30
    end
    object SerieNOTA_DESCONTO_ALT2: TIntegerField
      FieldName = 'NOTA_DESCONTO_ALT2'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_ALT2"'
    end
    object SerieNOTA_DESCONTO_DST2: TIntegerField
      FieldName = 'NOTA_DESCONTO_DST2'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_DST2"'
    end
    object SeriePROD_QNTD_UNID_ALT: TIntegerField
      FieldName = 'PROD_QNTD_UNID_ALT'
      Origin = '"SIS_SERIENF"."PROD_QNTD_UNID_ALT"'
    end
    object SeriePROD_QNTD_UNID_DST: TIntegerField
      FieldName = 'PROD_QNTD_UNID_DST'
      Origin = '"SIS_SERIENF"."PROD_QNTD_UNID_DST"'
    end
    object SeriePROD_TIPO_UNID_ALT: TIntegerField
      FieldName = 'PROD_TIPO_UNID_ALT'
      Origin = '"SIS_SERIENF"."PROD_TIPO_UNID_ALT"'
    end
    object SeriePROD_TIPO_UNID_DST: TIntegerField
      FieldName = 'PROD_TIPO_UNID_DST'
      Origin = '"SIS_SERIENF"."PROD_TIPO_UNID_DST"'
    end
    object SerieMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"SIS_SERIENF"."MODELO"'
      FixedChar = True
      Size = 3
    end
    object SerieNOTA_IRRF_DST: TIntegerField
      FieldName = 'NOTA_IRRF_DST'
      Origin = '"SIS_SERIENF"."NOTA_IRRF_DST"'
    end
    object SerieNOTA_IRRF_ALT: TIntegerField
      FieldName = 'NOTA_IRRF_ALT'
      Origin = '"SIS_SERIENF"."NOTA_IRRF_ALT"'
    end
    object SerieNOTA_INSS_DST: TIntegerField
      FieldName = 'NOTA_INSS_DST'
      Origin = '"SIS_SERIENF"."NOTA_INSS_DST"'
    end
    object SerieNOTA_INSS_ALT: TIntegerField
      FieldName = 'NOTA_INSS_ALT'
      Origin = '"SIS_SERIENF"."NOTA_INSS_ALT"'
    end
    object SerieNOTA_PIS_DST: TIntegerField
      FieldName = 'NOTA_PIS_DST'
      Origin = '"SIS_SERIENF"."NOTA_PIS_DST"'
    end
    object SerieNOTA_PIS_ALT: TIntegerField
      FieldName = 'NOTA_PIS_ALT'
      Origin = '"SIS_SERIENF"."NOTA_PIS_ALT"'
    end
    object SerieNOTA_ISS_SUBST_DST: TIntegerField
      FieldName = 'NOTA_ISS_SUBST_DST'
      Origin = '"SIS_SERIENF"."NOTA_ISS_SUBST_DST"'
    end
    object SerieNOTA_ISS_SUBST_ALT: TIntegerField
      FieldName = 'NOTA_ISS_SUBST_ALT'
      Origin = '"SIS_SERIENF"."NOTA_ISS_SUBST_ALT"'
    end
    object SeriePROD_TAM_NOME: TIntegerField
      FieldName = 'PROD_TAM_NOME'
      Origin = '"SIS_SERIENF"."PROD_TAM_NOME"'
    end
    object SerieCLI_NOME_RODAPE_DST: TIntegerField
      FieldName = 'CLI_NOME_RODAPE_DST'
      Origin = '"SIS_SERIENF"."CLI_NOME_RODAPE_DST"'
    end
    object SerieCLI_NOME_RODAPE_ALT: TIntegerField
      FieldName = 'CLI_NOME_RODAPE_ALT'
      Origin = '"SIS_SERIENF"."CLI_NOME_RODAPE_ALT"'
    end
    object SerieCLI_DATENTSAI_RODAPE_DST: TIntegerField
      FieldName = 'CLI_DATENTSAI_RODAPE_DST'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_RODAPE_DST"'
    end
    object SerieCLI_DATENTSAI_RODAPE_ALT: TIntegerField
      FieldName = 'CLI_DATENTSAI_RODAPE_ALT'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_RODAPE_ALT"'
    end
    object SerieFEC_VALORNOTA_RODAPE_ALT: TIntegerField
      FieldName = 'FEC_VALORNOTA_RODAPE_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_RODAPE_ALT"'
    end
    object SerieFEC_VALORNOTA_RODAPE_DST: TIntegerField
      FieldName = 'FEC_VALORNOTA_RODAPE_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_RODAPE_DST"'
    end
    object SerieNOTA_DUPLICA_NUMERO: TIBStringField
      FieldName = 'NOTA_DUPLICA_NUMERO'
      Origin = '"SIS_SERIENF"."NOTA_DUPLICA_NUMERO"'
      FixedChar = True
      Size = 1
    end
    object SerieNF_GRAFICA: TIBStringField
      FieldName = 'NF_GRAFICA'
      Origin = '"SIS_SERIENF"."NF_GRAFICA"'
      FixedChar = True
      Size = 1
    end
    object SerieNOTA_EMPRESA_ALT: TIntegerField
      FieldName = 'NOTA_EMPRESA_ALT'
      Origin = '"SIS_SERIENF"."NOTA_EMPRESA_ALT"'
    end
    object SerieNOTA_EMPRESA_DST: TIntegerField
      FieldName = 'NOTA_EMPRESA_DST'
      Origin = '"SIS_SERIENF"."NOTA_EMPRESA_DST"'
    end
    object SeriePROD_MARCA_ALT: TIntegerField
      FieldName = 'PROD_MARCA_ALT'
      Origin = '"SIS_SERIENF"."PROD_MARCA_ALT"'
    end
    object SeriePROD_MARCA_DST: TIntegerField
      FieldName = 'PROD_MARCA_DST'
      Origin = '"SIS_SERIENF"."PROD_MARCA_DST"'
    end
    object SeriePROD_LOTE_ALT: TIntegerField
      FieldName = 'PROD_LOTE_ALT'
      Origin = '"SIS_SERIENF"."PROD_LOTE_ALT"'
    end
    object SeriePROD_LOTE_DST: TIntegerField
      FieldName = 'PROD_LOTE_DST'
      Origin = '"SIS_SERIENF"."PROD_LOTE_DST"'
    end
    object SerieNOTA_EMPRESA_UF_ALT: TIntegerField
      FieldName = 'NOTA_EMPRESA_UF_ALT'
      Origin = '"SIS_SERIENF"."NOTA_EMPRESA_UF_ALT"'
    end
    object SerieNOTA_EMPRESA_UF_DST: TIntegerField
      FieldName = 'NOTA_EMPRESA_UF_DST'
      Origin = '"SIS_SERIENF"."NOTA_EMPRESA_UF_DST"'
    end
    object SerieCLI_CID_PROP_DST: TIntegerField
      FieldName = 'CLI_CID_PROP_DST'
      Origin = '"SIS_SERIENF"."CLI_CID_PROP_DST"'
    end
    object SerieCLI_CID_PROP_ALT: TIntegerField
      FieldName = 'CLI_CID_PROP_ALT'
      Origin = '"SIS_SERIENF"."CLI_CID_PROP_ALT"'
    end
    object SerieCLI_UF_PROP_DST: TIntegerField
      FieldName = 'CLI_UF_PROP_DST'
      Origin = '"SIS_SERIENF"."CLI_UF_PROP_DST"'
    end
    object SerieCLI_UF_PROP_ALT: TIntegerField
      FieldName = 'CLI_UF_PROP_ALT'
      Origin = '"SIS_SERIENF"."CLI_UF_PROP_ALT"'
    end
    object SeriePROD_LOTE_VALIDADE_ALT: TIntegerField
      FieldName = 'PROD_LOTE_VALIDADE_ALT'
      Origin = '"SIS_SERIENF"."PROD_LOTE_VALIDADE_ALT"'
    end
    object SeriePROD_LOTE_VALIDADE_DST: TIntegerField
      FieldName = 'PROD_LOTE_VALIDADE_DST'
      Origin = '"SIS_SERIENF"."PROD_LOTE_VALIDADE_DST"'
    end
    object SerieCLI_END_PROP_ALT: TIntegerField
      FieldName = 'CLI_END_PROP_ALT'
      Origin = '"SIS_SERIENF"."CLI_END_PROP_ALT"'
    end
    object SerieCLI_END_PROP_DST: TIntegerField
      FieldName = 'CLI_END_PROP_DST'
      Origin = '"SIS_SERIENF"."CLI_END_PROP_DST"'
    end
    object SerieCLI_NOME_PROP_ALT: TIntegerField
      FieldName = 'CLI_NOME_PROP_ALT'
      Origin = '"SIS_SERIENF"."CLI_NOME_PROP_ALT"'
    end
    object SerieCLI_NOME_PROP_DST: TIntegerField
      FieldName = 'CLI_NOME_PROP_DST'
      Origin = '"SIS_SERIENF"."CLI_NOME_PROP_DST"'
    end
    object SerieNFSERV_GRAFICA: TIBStringField
      FieldName = 'NFSERV_GRAFICA'
      Origin = '"SIS_SERIENF"."NFSERV_GRAFICA"'
      FixedChar = True
      Size = 1
    end
    object SerieNF_GRAFICA2: TIBStringField
      FieldName = 'NF_GRAFICA2'
      Origin = '"SIS_SERIENF"."NF_GRAFICA2"'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object SerieOrc: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'select * from SIS_SERIENF'
      'WHERE CNPJ = :CNPJ AND TIPO = '#39'O'#39
      'OR TIPO = '#39'C'#39)
    Left = 224
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SerieOrcCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_SERIENF"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SerieOrcSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"SIS_SERIENF"."SERIE"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SerieOrcULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Origin = '"SIS_SERIENF"."ULTIMO_NUMERO"'
    end
    object SerieOrcTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"SIS_SERIENF"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object SerieOrcNOTA_NUM_DST: TIntegerField
      FieldName = 'NOTA_NUM_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUM_DST"'
    end
    object SerieOrcNOTA_NUM_ALT: TIntegerField
      FieldName = 'NOTA_NUM_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUM_ALT"'
    end
    object SerieOrcNOTA_NUMRECIBO_DST: TIntegerField
      FieldName = 'NOTA_NUMRECIBO_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUMRECIBO_DST"'
    end
    object SerieOrcNOTA_NUMRECIBO_ALT: TIntegerField
      FieldName = 'NOTA_NUMRECIBO_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUMRECIBO_ALT"'
    end
    object SerieOrcNOTA_ENT_SAI_DST: TIntegerField
      FieldName = 'NOTA_ENT_SAI_DST'
      Origin = '"SIS_SERIENF"."NOTA_ENT_SAI_DST"'
    end
    object SerieOrcNOTA_ENT_SAI_ALT: TIntegerField
      FieldName = 'NOTA_ENT_SAI_ALT'
      Origin = '"SIS_SERIENF"."NOTA_ENT_SAI_ALT"'
    end
    object SerieOrcNOTA_NATUREZA_DST: TIntegerField
      FieldName = 'NOTA_NATUREZA_DST'
      Origin = '"SIS_SERIENF"."NOTA_NATUREZA_DST"'
    end
    object SerieOrcNOTA_NATUREZA_ALT: TIntegerField
      FieldName = 'NOTA_NATUREZA_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NATUREZA_ALT"'
    end
    object SerieOrcNOTA_CFOP_DST: TIntegerField
      FieldName = 'NOTA_CFOP_DST'
      Origin = '"SIS_SERIENF"."NOTA_CFOP_DST"'
    end
    object SerieOrcNOTA_CFOP_ALT: TIntegerField
      FieldName = 'NOTA_CFOP_ALT'
      Origin = '"SIS_SERIENF"."NOTA_CFOP_ALT"'
    end
    object SerieOrcNOTA_SUBS_TRIB_DST: TIntegerField
      FieldName = 'NOTA_SUBS_TRIB_DST'
      Origin = '"SIS_SERIENF"."NOTA_SUBS_TRIB_DST"'
    end
    object SerieOrcNOTA_SUBS_TRIB_ALT: TIntegerField
      FieldName = 'NOTA_SUBS_TRIB_ALT'
      Origin = '"SIS_SERIENF"."NOTA_SUBS_TRIB_ALT"'
    end
    object SerieOrcNOTA_CNDPG_DST: TIntegerField
      FieldName = 'NOTA_CNDPG_DST'
      Origin = '"SIS_SERIENF"."NOTA_CNDPG_DST"'
    end
    object SerieOrcNOTA_CNDPG_ALT: TIntegerField
      FieldName = 'NOTA_CNDPG_ALT'
      Origin = '"SIS_SERIENF"."NOTA_CNDPG_ALT"'
    end
    object SerieOrcCLI_NOME_DST: TIntegerField
      FieldName = 'CLI_NOME_DST'
      Origin = '"SIS_SERIENF"."CLI_NOME_DST"'
    end
    object SerieOrcCLI_NOME_ALT: TIntegerField
      FieldName = 'CLI_NOME_ALT'
      Origin = '"SIS_SERIENF"."CLI_NOME_ALT"'
    end
    object SerieOrcCLI_CGCCPF_DST: TIntegerField
      FieldName = 'CLI_CGCCPF_DST'
      Origin = '"SIS_SERIENF"."CLI_CGCCPF_DST"'
    end
    object SerieOrcCLI_CGCCPF_ALT: TIntegerField
      FieldName = 'CLI_CGCCPF_ALT'
      Origin = '"SIS_SERIENF"."CLI_CGCCPF_ALT"'
    end
    object SerieOrcCLI_END_DST: TIntegerField
      FieldName = 'CLI_END_DST'
      Origin = '"SIS_SERIENF"."CLI_END_DST"'
    end
    object SerieOrcCLI_END_ALT: TIntegerField
      FieldName = 'CLI_END_ALT'
      Origin = '"SIS_SERIENF"."CLI_END_ALT"'
    end
    object SerieOrcCLI_BAIRRO_DST: TIntegerField
      FieldName = 'CLI_BAIRRO_DST'
      Origin = '"SIS_SERIENF"."CLI_BAIRRO_DST"'
    end
    object SerieOrcCLI_BAIRRO_ALT: TIntegerField
      FieldName = 'CLI_BAIRRO_ALT'
      Origin = '"SIS_SERIENF"."CLI_BAIRRO_ALT"'
    end
    object SerieOrcCLI_CEP_DST: TIntegerField
      FieldName = 'CLI_CEP_DST'
      Origin = '"SIS_SERIENF"."CLI_CEP_DST"'
    end
    object SerieOrcCLI_CEP_ALT: TIntegerField
      FieldName = 'CLI_CEP_ALT'
      Origin = '"SIS_SERIENF"."CLI_CEP_ALT"'
    end
    object SerieOrcCLI_CID_DST: TIntegerField
      FieldName = 'CLI_CID_DST'
      Origin = '"SIS_SERIENF"."CLI_CID_DST"'
    end
    object SerieOrcCLI_CID_ALT: TIntegerField
      FieldName = 'CLI_CID_ALT'
      Origin = '"SIS_SERIENF"."CLI_CID_ALT"'
    end
    object SerieOrcCLI_FONE_DST: TIntegerField
      FieldName = 'CLI_FONE_DST'
      Origin = '"SIS_SERIENF"."CLI_FONE_DST"'
    end
    object SerieOrcCLI_FONE_ALT: TIntegerField
      FieldName = 'CLI_FONE_ALT'
      Origin = '"SIS_SERIENF"."CLI_FONE_ALT"'
    end
    object SerieOrcCLI_FAX_DST: TIntegerField
      FieldName = 'CLI_FAX_DST'
      Origin = '"SIS_SERIENF"."CLI_FAX_DST"'
    end
    object SerieOrcCLI_FAX_ALT: TIntegerField
      FieldName = 'CLI_FAX_ALT'
      Origin = '"SIS_SERIENF"."CLI_FAX_ALT"'
    end
    object SerieOrcCLI_UF_DST: TIntegerField
      FieldName = 'CLI_UF_DST'
      Origin = '"SIS_SERIENF"."CLI_UF_DST"'
    end
    object SerieOrcCLI_UF_ALT: TIntegerField
      FieldName = 'CLI_UF_ALT'
      Origin = '"SIS_SERIENF"."CLI_UF_ALT"'
    end
    object SerieOrcCLI_INSCEST_DST: TIntegerField
      FieldName = 'CLI_INSCEST_DST'
      Origin = '"SIS_SERIENF"."CLI_INSCEST_DST"'
    end
    object SerieOrcCLI_INSCEST_ALT: TIntegerField
      FieldName = 'CLI_INSCEST_ALT'
      Origin = '"SIS_SERIENF"."CLI_INSCEST_ALT"'
    end
    object SerieOrcCLI_DATEMIS_DST: TIntegerField
      FieldName = 'CLI_DATEMIS_DST'
      Origin = '"SIS_SERIENF"."CLI_DATEMIS_DST"'
    end
    object SerieOrcCLI_DATEMIS_ALT: TIntegerField
      FieldName = 'CLI_DATEMIS_ALT'
      Origin = '"SIS_SERIENF"."CLI_DATEMIS_ALT"'
    end
    object SerieOrcCLI_DATENTSAI_DST: TIntegerField
      FieldName = 'CLI_DATENTSAI_DST'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_DST"'
    end
    object SerieOrcCLI_DATENTSAI_ALT: TIntegerField
      FieldName = 'CLI_DATENTSAI_ALT'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_ALT"'
    end
    object SerieOrcCLI_HORASAI_DST: TIntegerField
      FieldName = 'CLI_HORASAI_DST'
      Origin = '"SIS_SERIENF"."CLI_HORASAI_DST"'
    end
    object SerieOrcCLI_HORASAI_ALT: TIntegerField
      FieldName = 'CLI_HORASAI_ALT'
      Origin = '"SIS_SERIENF"."CLI_HORASAI_ALT"'
    end
    object SerieOrcCLI_PEDNUM_DST: TIntegerField
      FieldName = 'CLI_PEDNUM_DST'
      Origin = '"SIS_SERIENF"."CLI_PEDNUM_DST"'
    end
    object SerieOrcCLI_PEDNUM_ALT: TIntegerField
      FieldName = 'CLI_PEDNUM_ALT'
      Origin = '"SIS_SERIENF"."CLI_PEDNUM_ALT"'
    end
    object SerieOrcCLI_INSCMUN_DST: TIntegerField
      FieldName = 'CLI_INSCMUN_DST'
      Origin = '"SIS_SERIENF"."CLI_INSCMUN_DST"'
    end
    object SerieOrcCLI_INSCMUN_ALT: TIntegerField
      FieldName = 'CLI_INSCMUN_ALT'
      Origin = '"SIS_SERIENF"."CLI_INSCMUN_ALT"'
    end
    object SerieOrcCLI_DUPLNUM_DST: TIntegerField
      FieldName = 'CLI_DUPLNUM_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_DST"'
    end
    object SerieOrcCLI_DUPLNUM_ALT: TIntegerField
      FieldName = 'CLI_DUPLNUM_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_ALT"'
    end
    object SerieOrcCLI_DUPLVENC_DST: TIntegerField
      FieldName = 'CLI_DUPLVENC_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLVENC_DST"'
    end
    object SerieOrcCLI_DUPLVENC_ALT: TIntegerField
      FieldName = 'CLI_DUPLVENC_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLVENC_ALT"'
    end
    object SerieOrcCLI_DUPLVALOR_DST: TIntegerField
      FieldName = 'CLI_DUPLVALOR_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLVALOR_DST"'
    end
    object SerieOrcCLI_DUPLVALOR_ALT: TIntegerField
      FieldName = 'CLI_DUPLVALOR_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLVALOR_ALT"'
    end
    object SerieOrcPROD_COD_DST: TIntegerField
      FieldName = 'PROD_COD_DST'
      Origin = '"SIS_SERIENF"."PROD_COD_DST"'
    end
    object SerieOrcPROD_COD_ALT: TIntegerField
      FieldName = 'PROD_COD_ALT'
      Origin = '"SIS_SERIENF"."PROD_COD_ALT"'
    end
    object SerieOrcPROD_PROD_DST: TIntegerField
      FieldName = 'PROD_PROD_DST'
      Origin = '"SIS_SERIENF"."PROD_PROD_DST"'
    end
    object SerieOrcPROD_PROD_ALT: TIntegerField
      FieldName = 'PROD_PROD_ALT'
      Origin = '"SIS_SERIENF"."PROD_PROD_ALT"'
    end
    object SerieOrcPROD_CF_DST: TIntegerField
      FieldName = 'PROD_CF_DST'
      Origin = '"SIS_SERIENF"."PROD_CF_DST"'
    end
    object SerieOrcPROD_CF_ALT: TIntegerField
      FieldName = 'PROD_CF_ALT'
      Origin = '"SIS_SERIENF"."PROD_CF_ALT"'
    end
    object SerieOrcPROD_SITTRIB_DST: TIntegerField
      FieldName = 'PROD_SITTRIB_DST'
      Origin = '"SIS_SERIENF"."PROD_SITTRIB_DST"'
    end
    object SerieOrcPROD_SITTRIB_ALT: TIntegerField
      FieldName = 'PROD_SITTRIB_ALT'
      Origin = '"SIS_SERIENF"."PROD_SITTRIB_ALT"'
    end
    object SerieOrcPROD_UNIDADE_DST: TIntegerField
      FieldName = 'PROD_UNIDADE_DST'
      Origin = '"SIS_SERIENF"."PROD_UNIDADE_DST"'
    end
    object SerieOrcPROD_UNIDADE_ALT: TIntegerField
      FieldName = 'PROD_UNIDADE_ALT'
      Origin = '"SIS_SERIENF"."PROD_UNIDADE_ALT"'
    end
    object SerieOrcPROD_QUANT_DST: TIntegerField
      FieldName = 'PROD_QUANT_DST'
      Origin = '"SIS_SERIENF"."PROD_QUANT_DST"'
    end
    object SerieOrcPROD_QUANT_ALT: TIntegerField
      FieldName = 'PROD_QUANT_ALT'
      Origin = '"SIS_SERIENF"."PROD_QUANT_ALT"'
    end
    object SerieOrcPROD_VALORUNIT_DST: TIntegerField
      FieldName = 'PROD_VALORUNIT_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORUNIT_DST"'
    end
    object SerieOrcPROD_VALORUNIT_ALT: TIntegerField
      FieldName = 'PROD_VALORUNIT_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORUNIT_ALT"'
    end
    object SerieOrcPROD_VALORTOT_DST: TIntegerField
      FieldName = 'PROD_VALORTOT_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORTOT_DST"'
    end
    object SerieOrcPROD_VALORTOT_ALT: TIntegerField
      FieldName = 'PROD_VALORTOT_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORTOT_ALT"'
    end
    object SerieOrcPROD_ICMS_DST: TIntegerField
      FieldName = 'PROD_ICMS_DST'
      Origin = '"SIS_SERIENF"."PROD_ICMS_DST"'
    end
    object SerieOrcPROD_ICMS_ALT: TIntegerField
      FieldName = 'PROD_ICMS_ALT'
      Origin = '"SIS_SERIENF"."PROD_ICMS_ALT"'
    end
    object SerieOrcPROD_IPI_DST: TIntegerField
      FieldName = 'PROD_IPI_DST'
      Origin = '"SIS_SERIENF"."PROD_IPI_DST"'
    end
    object SerieOrcPROD_IPI_ALT: TIntegerField
      FieldName = 'PROD_IPI_ALT'
      Origin = '"SIS_SERIENF"."PROD_IPI_ALT"'
    end
    object SerieOrcPROD_VALORIPI_DST: TIntegerField
      FieldName = 'PROD_VALORIPI_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORIPI_DST"'
    end
    object SerieOrcPROD_VALORIPI_ALT: TIntegerField
      FieldName = 'PROD_VALORIPI_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORIPI_ALT"'
    end
    object SerieOrcFEC_BASEICMS_DST: TIntegerField
      FieldName = 'FEC_BASEICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_BASEICMS_DST"'
    end
    object SerieOrcFEC_BASEICMS_ALT: TIntegerField
      FieldName = 'FEC_BASEICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_BASEICMS_ALT"'
    end
    object SerieOrcFEC_VALORFRETE_DST: TIntegerField
      FieldName = 'FEC_VALORFRETE_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORFRETE_DST"'
    end
    object SerieOrcFEC_VALORFRETE_ALT: TIntegerField
      FieldName = 'FEC_VALORFRETE_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORFRETE_ALT"'
    end
    object SerieOrcFEC_VALORICMS_DST: TIntegerField
      FieldName = 'FEC_VALORICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORICMS_DST"'
    end
    object SerieOrcFEC_VALORICMS_ALT: TIntegerField
      FieldName = 'FEC_VALORICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORICMS_ALT"'
    end
    object SerieOrcFEC_VALORSEGURO_DST: TIntegerField
      FieldName = 'FEC_VALORSEGURO_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORSEGURO_DST"'
    end
    object SerieOrcFEC_VALORSEGURO_ALT: TIntegerField
      FieldName = 'FEC_VALORSEGURO_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORSEGURO_ALT"'
    end
    object SerieOrcFEC_BASECALCICMS_DST: TIntegerField
      FieldName = 'FEC_BASECALCICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_BASECALCICMS_DST"'
    end
    object SerieOrcFEC_BASECALCICMS_ALT: TIntegerField
      FieldName = 'FEC_BASECALCICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_BASECALCICMS_ALT"'
    end
    object SerieOrcFEC_DESPESAS_DST: TIntegerField
      FieldName = 'FEC_DESPESAS_DST'
      Origin = '"SIS_SERIENF"."FEC_DESPESAS_DST"'
    end
    object SerieOrcFEC_DESPESAS_ALT: TIntegerField
      FieldName = 'FEC_DESPESAS_ALT'
      Origin = '"SIS_SERIENF"."FEC_DESPESAS_ALT"'
    end
    object SerieOrcFEC_VALORICMSSUB_DST: TIntegerField
      FieldName = 'FEC_VALORICMSSUB_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORICMSSUB_DST"'
    end
    object SerieOrcFEC_VALORICMSSUB_ALT: TIntegerField
      FieldName = 'FEC_VALORICMSSUB_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORICMSSUB_ALT"'
    end
    object SerieOrcFEC_IPI_DST: TIntegerField
      FieldName = 'FEC_IPI_DST'
      Origin = '"SIS_SERIENF"."FEC_IPI_DST"'
    end
    object SerieOrcFEC_IPI_ALT: TIntegerField
      FieldName = 'FEC_IPI_ALT'
      Origin = '"SIS_SERIENF"."FEC_IPI_ALT"'
    end
    object SerieOrcFEC_VALORTOTAL_DST: TIntegerField
      FieldName = 'FEC_VALORTOTAL_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORTOTAL_DST"'
    end
    object SerieOrcFEC_ISS_DST: TIntegerField
      FieldName = 'FEC_ISS_DST'
      Origin = '"SIS_SERIENF"."FEC_ISS_DST"'
    end
    object SerieOrcFEC_VALORTOTAL_ALT: TIntegerField
      FieldName = 'FEC_VALORTOTAL_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORTOTAL_ALT"'
    end
    object SerieOrcFEC_ISS_ALT: TIntegerField
      FieldName = 'FEC_ISS_ALT'
      Origin = '"SIS_SERIENF"."FEC_ISS_ALT"'
    end
    object SerieOrcFEC_VALORNOTA_DST: TIntegerField
      FieldName = 'FEC_VALORNOTA_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_DST"'
    end
    object SerieOrcFEC_VALORNOTA_ALT: TIntegerField
      FieldName = 'FEC_VALORNOTA_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_ALT"'
    end
    object SerieOrcTRANS_NOME_DST: TIntegerField
      FieldName = 'TRANS_NOME_DST'
      Origin = '"SIS_SERIENF"."TRANS_NOME_DST"'
    end
    object SerieOrcTRANS_NOME_ALT: TIntegerField
      FieldName = 'TRANS_NOME_ALT'
      Origin = '"SIS_SERIENF"."TRANS_NOME_ALT"'
    end
    object SerieOrcTRANS_END_DST: TIntegerField
      FieldName = 'TRANS_END_DST'
      Origin = '"SIS_SERIENF"."TRANS_END_DST"'
    end
    object SerieOrcTRANS_END_ALT: TIntegerField
      FieldName = 'TRANS_END_ALT'
      Origin = '"SIS_SERIENF"."TRANS_END_ALT"'
    end
    object SerieOrcTRANS_QUANTIDADE_DST: TIntegerField
      FieldName = 'TRANS_QUANTIDADE_DST'
      Origin = '"SIS_SERIENF"."TRANS_QUANTIDADE_DST"'
    end
    object SerieOrcTRANS_QUANTIDADE_ALT: TIntegerField
      FieldName = 'TRANS_QUANTIDADE_ALT'
      Origin = '"SIS_SERIENF"."TRANS_QUANTIDADE_ALT"'
    end
    object SerieOrcTRANS_ESPECIE_DST: TIntegerField
      FieldName = 'TRANS_ESPECIE_DST'
      Origin = '"SIS_SERIENF"."TRANS_ESPECIE_DST"'
    end
    object SerieOrcTRANS_ESPECIE_ALT: TIntegerField
      FieldName = 'TRANS_ESPECIE_ALT'
      Origin = '"SIS_SERIENF"."TRANS_ESPECIE_ALT"'
    end
    object SerieOrcTRANS_MARCA_DST: TIntegerField
      FieldName = 'TRANS_MARCA_DST'
      Origin = '"SIS_SERIENF"."TRANS_MARCA_DST"'
    end
    object SerieOrcTRANS_MARCA_ALT: TIntegerField
      FieldName = 'TRANS_MARCA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_MARCA_ALT"'
    end
    object SerieOrcTRANS_FRETECONTA_DST: TIntegerField
      FieldName = 'TRANS_FRETECONTA_DST'
      Origin = '"SIS_SERIENF"."TRANS_FRETECONTA_DST"'
    end
    object SerieOrcTRANS_FRETECONTA_ALT: TIntegerField
      FieldName = 'TRANS_FRETECONTA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_FRETECONTA_ALT"'
    end
    object SerieOrcTRANS_CID_DST: TIntegerField
      FieldName = 'TRANS_CID_DST'
      Origin = '"SIS_SERIENF"."TRANS_CID_DST"'
    end
    object SerieOrcTRANS_CID_ALT: TIntegerField
      FieldName = 'TRANS_CID_ALT'
      Origin = '"SIS_SERIENF"."TRANS_CID_ALT"'
    end
    object SerieOrcTRANS_NUMERO_DST: TIntegerField
      FieldName = 'TRANS_NUMERO_DST'
      Origin = '"SIS_SERIENF"."TRANS_NUMERO_DST"'
    end
    object SerieOrcTRANS_NUMERO_ALT: TIntegerField
      FieldName = 'TRANS_NUMERO_ALT'
      Origin = '"SIS_SERIENF"."TRANS_NUMERO_ALT"'
    end
    object SerieOrcTRANS_PLACA_DST: TIntegerField
      FieldName = 'TRANS_PLACA_DST'
      Origin = '"SIS_SERIENF"."TRANS_PLACA_DST"'
    end
    object SerieOrcTRANS_PLACA_ALT: TIntegerField
      FieldName = 'TRANS_PLACA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PLACA_ALT"'
    end
    object SerieOrcTRANS_UFVEI_DST: TIntegerField
      FieldName = 'TRANS_UFVEI_DST'
      Origin = '"SIS_SERIENF"."TRANS_UFVEI_DST"'
    end
    object SerieOrcTRANS_UFVEIALT: TIntegerField
      FieldName = 'TRANS_UFVEIALT'
      Origin = '"SIS_SERIENF"."TRANS_UFVEIALT"'
    end
    object SerieOrcTRANS_UF_DST: TIntegerField
      FieldName = 'TRANS_UF_DST'
      Origin = '"SIS_SERIENF"."TRANS_UF_DST"'
    end
    object SerieOrcTRANS_UF_ALT: TIntegerField
      FieldName = 'TRANS_UF_ALT'
      Origin = '"SIS_SERIENF"."TRANS_UF_ALT"'
    end
    object SerieOrcTRANS_CGCCPF_DST: TIntegerField
      FieldName = 'TRANS_CGCCPF_DST'
      Origin = '"SIS_SERIENF"."TRANS_CGCCPF_DST"'
    end
    object SerieOrcTRANS_CGCCPF_ALT: TIntegerField
      FieldName = 'TRANS_CGCCPF_ALT'
      Origin = '"SIS_SERIENF"."TRANS_CGCCPF_ALT"'
    end
    object SerieOrcTRANS_INSCEST_DST: TIntegerField
      FieldName = 'TRANS_INSCEST_DST'
      Origin = '"SIS_SERIENF"."TRANS_INSCEST_DST"'
    end
    object SerieOrcTRANS_INSCEST_ALT: TIntegerField
      FieldName = 'TRANS_INSCEST_ALT'
      Origin = '"SIS_SERIENF"."TRANS_INSCEST_ALT"'
    end
    object SerieOrcTRANS_PESBRT_DST: TIntegerField
      FieldName = 'TRANS_PESBRT_DST'
      Origin = '"SIS_SERIENF"."TRANS_PESBRT_DST"'
    end
    object SerieOrcTRANS_PESOBRT_ALT: TIntegerField
      FieldName = 'TRANS_PESOBRT_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PESOBRT_ALT"'
    end
    object SerieOrcTRANS_PESOLIQ_DST: TIntegerField
      FieldName = 'TRANS_PESOLIQ_DST'
      Origin = '"SIS_SERIENF"."TRANS_PESOLIQ_DST"'
    end
    object SerieOrcTRANS_PESOLIQ_ALT: TIntegerField
      FieldName = 'TRANS_PESOLIQ_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PESOLIQ_ALT"'
    end
    object SerieOrcTRANS_OBS_DST: TIntegerField
      FieldName = 'TRANS_OBS_DST'
      Origin = '"SIS_SERIENF"."TRANS_OBS_DST"'
    end
    object SerieOrcTRANS_OBS_ALT: TIntegerField
      FieldName = 'TRANS_OBS_ALT'
      Origin = '"SIS_SERIENF"."TRANS_OBS_ALT"'
    end
    object SerieOrcIMPRESSORA_PULO: TIntegerField
      FieldName = 'IMPRESSORA_PULO'
      Origin = '"SIS_SERIENF"."IMPRESSORA_PULO"'
    end
    object SerieOrcIMPRESSORA_LPP: TIBStringField
      FieldName = 'IMPRESSORA_LPP'
      Origin = '"SIS_SERIENF"."IMPRESSORA_LPP"'
      Size = 10
    end
    object SerieOrcPRODUTOSNOTA: TIntegerField
      FieldName = 'PRODUTOSNOTA'
      Origin = '"SIS_SERIENF"."PRODUTOSNOTA"'
    end
    object SerieOrcLOCALDUPLICATAS: TIBStringField
      FieldName = 'LOCALDUPLICATAS'
      Origin = '"SIS_SERIENF"."LOCALDUPLICATAS"'
      FixedChar = True
      Size = 1
    end
    object SerieOrcNUMERODELINHASDANOTA: TIntegerField
      FieldName = 'NUMERODELINHASDANOTA'
      Origin = '"SIS_SERIENF"."NUMERODELINHASDANOTA"'
    end
    object SerieOrcPROD_DESC_DST: TIntegerField
      FieldName = 'PROD_DESC_DST'
      Origin = '"SIS_SERIENF"."PROD_DESC_DST"'
    end
    object SerieOrcPROD_DESC_ALT: TIntegerField
      FieldName = 'PROD_DESC_ALT'
      Origin = '"SIS_SERIENF"."PROD_DESC_ALT"'
    end
    object SerieOrcDATA_ANO_ALT: TIntegerField
      FieldName = 'DATA_ANO_ALT'
      Origin = '"SIS_SERIENF"."DATA_ANO_ALT"'
    end
    object SerieOrcDATA_ANO_DST: TIntegerField
      FieldName = 'DATA_ANO_DST'
      Origin = '"SIS_SERIENF"."DATA_ANO_DST"'
    end
    object SerieOrcDATA_DIA_ALT: TIntegerField
      FieldName = 'DATA_DIA_ALT'
      Origin = '"SIS_SERIENF"."DATA_DIA_ALT"'
    end
    object SerieOrcDATA_DIA_DST: TIntegerField
      FieldName = 'DATA_DIA_DST'
      Origin = '"SIS_SERIENF"."DATA_DIA_DST"'
    end
    object SerieOrcDATA_MES_ALT: TIntegerField
      FieldName = 'DATA_MES_ALT'
      Origin = '"SIS_SERIENF"."DATA_MES_ALT"'
    end
    object SerieOrcDATA_MES_DST: TIntegerField
      FieldName = 'DATA_MES_DST'
      Origin = '"SIS_SERIENF"."DATA_MES_DST"'
    end
    object SerieOrcOBS_DST: TIntegerField
      FieldName = 'OBS_DST'
    end
    object SerieOrcOBS_ALT: TIntegerField
      FieldName = 'OBS_ALT'
    end
    object SerieOrcNOTA_VENDEDOR_DST: TIntegerField
      FieldName = 'NOTA_VENDEDOR_DST'
      Origin = '"SIS_SERIENF"."NOTA_VENDEDOR_DST"'
    end
    object SerieOrcNOTA_VENDEDOR_ALT: TIntegerField
      FieldName = 'NOTA_VENDEDOR_ALT'
      Origin = '"SIS_SERIENF"."NOTA_VENDEDOR_ALT"'
    end
    object SerieOrcNOTA_ECF_DST: TIntegerField
      FieldName = 'NOTA_ECF_DST'
      Origin = '"SIS_SERIENF"."NOTA_ECF_DST"'
    end
    object SerieOrcNOTA_ECF_ALT: TIntegerField
      FieldName = 'NOTA_ECF_ALT'
      Origin = '"SIS_SERIENF"."NOTA_ECF_ALT"'
    end
    object SerieOrcNOTA_DESCONTO_DST: TIntegerField
      FieldName = 'NOTA_DESCONTO_DST'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_DST"'
    end
    object SerieOrcNOTA_DESCONTO_ALT: TIntegerField
      FieldName = 'NOTA_DESCONTO_ALT'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_ALT"'
    end
    object SerieOrcNOTA_INDCOMPL_DST: TIntegerField
      FieldName = 'NOTA_INDCOMPL_DST'
      Origin = '"SIS_SERIENF"."NOTA_INDCOMPL_DST"'
    end
    object SerieOrcNOTA_INFCOMPL_ALT: TIntegerField
      FieldName = 'NOTA_INFCOMPL_ALT'
      Origin = '"SIS_SERIENF"."NOTA_INFCOMPL_ALT"'
    end
    object SerieOrcCLI_DUPLLARGURA_COLUNA: TIntegerField
      FieldName = 'CLI_DUPLLARGURA_COLUNA'
      Origin = '"SIS_SERIENF"."CLI_DUPLLARGURA_COLUNA"'
    end
    object SerieOrcCLI_DUPLNUM_COLUNA: TIntegerField
      FieldName = 'CLI_DUPLNUM_COLUNA'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_COLUNA"'
    end
    object SerieOrcNOTA_MSGNAT_DST: TIntegerField
      FieldName = 'NOTA_MSGNAT_DST'
      Origin = '"SIS_SERIENF"."NOTA_MSGNAT_DST"'
    end
    object SerieOrcNOTA_MSGNAT_ALT: TIntegerField
      FieldName = 'NOTA_MSGNAT_ALT'
      Origin = '"SIS_SERIENF"."NOTA_MSGNAT_ALT"'
    end
    object SerieOrcNOTA_NUMRDP_DST: TIntegerField
      FieldName = 'NOTA_NUMRDP_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUMRDP_DST"'
    end
    object SerieOrcNOTA_NUMRDP_ALT: TIntegerField
      FieldName = 'NOTA_NUMRDP_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUMRDP_ALT"'
    end
    object SerieOrcPORTA_IMPRESSAO: TIBStringField
      FieldName = 'PORTA_IMPRESSAO'
      Origin = '"SIS_SERIENF"."PORTA_IMPRESSAO"'
      Size = 30
    end
    object SerieOrcNOTA_DESCONTO_ALT2: TIntegerField
      FieldName = 'NOTA_DESCONTO_ALT2'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_ALT2"'
    end
    object SerieOrcNOTA_DESCONTO_DST2: TIntegerField
      FieldName = 'NOTA_DESCONTO_DST2'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_DST2"'
    end
    object SerieOrcPROD_QNTD_UNID_ALT: TIntegerField
      FieldName = 'PROD_QNTD_UNID_ALT'
      Origin = '"SIS_SERIENF"."PROD_QNTD_UNID_ALT"'
    end
    object SerieOrcPROD_QNTD_UNID_DST: TIntegerField
      FieldName = 'PROD_QNTD_UNID_DST'
      Origin = '"SIS_SERIENF"."PROD_QNTD_UNID_DST"'
    end
    object SerieOrcPROD_TIPO_UNID_ALT: TIntegerField
      FieldName = 'PROD_TIPO_UNID_ALT'
      Origin = '"SIS_SERIENF"."PROD_TIPO_UNID_ALT"'
    end
    object SerieOrcPROD_TIPO_UNID_DST: TIntegerField
      FieldName = 'PROD_TIPO_UNID_DST'
      Origin = '"SIS_SERIENF"."PROD_TIPO_UNID_DST"'
    end
    object SerieOrcMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"SIS_SERIENF"."MODELO"'
      FixedChar = True
      Size = 3
    end
  end
  object Valida_Cliente: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'Select'
      '         Pessoa_Fj, '
      '         Nome,'
      '         Cod_Vend, '
      '         Cod_FPagto, '
      '         Requisicao,'
      '         Dia_Pref_Fat, '
      '         Limite_Tempo, '
      '         Limite_Credito,'
      '         Classif, '
      '         Bloqueado, '
      '         Obs, '
      '         Classificacao,'
      '         Obs2,'
      '         CPF_CNPJ,'
      '         Controla_Placa,'
      '         Controla_Km,'
      '         Assina_Nota,'
      '         Nao_Cobr_Jur_Ate,'
      '         Taxa_Juros,'
      '         Uf ,'
      '         VALOR_MAXIMO_RETIRADA,'
      '         LIMITE_DIARIO_RETIRADA,'
      '         ALIQUOTA_DESCONTO,'
      '         cons_rev'
      'from Valida_Cliente ( :CNPJ, :CODIGO )')
    Left = 592
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Valida_ClientePESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VALIDA_CLIENTE"."PESSOA_FJ"'
    end
    object Valida_ClienteCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
      Origin = '"VALIDA_CLIENTE"."COD_VEND"'
    end
    object Valida_ClienteCOD_FPAGTO: TIntegerField
      FieldName = 'COD_FPAGTO'
      Origin = '"VALIDA_CLIENTE"."COD_FPAGTO"'
    end
    object Valida_ClienteREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"VALIDA_CLIENTE"."REQUISICAO"'
      FixedChar = True
      Size = 1
    end
    object Valida_ClienteDIA_PREF_FAT: TIntegerField
      FieldName = 'DIA_PREF_FAT'
      Origin = '"VALIDA_CLIENTE"."DIA_PREF_FAT"'
    end
    object Valida_ClienteLIMITE_TEMPO: TIntegerField
      FieldName = 'LIMITE_TEMPO'
      Origin = '"VALIDA_CLIENTE"."LIMITE_TEMPO"'
    end
    object Valida_ClienteLIMITE_CREDITO: TIBBCDField
      FieldName = 'LIMITE_CREDITO'
      Origin = '"VALIDA_CLIENTE"."LIMITE_CREDITO"'
      Precision = 18
      Size = 4
    end
    object Valida_ClienteCLASSIF: TIBStringField
      FieldName = 'CLASSIF'
      Origin = '"VALIDA_CLIENTE"."CLASSIF"'
      FixedChar = True
      Size = 1
    end
    object Valida_ClienteBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"VALIDA_CLIENTE"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object Valida_ClienteOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VALIDA_CLIENTE"."OBS"'
      Size = 8
    end
    object Valida_ClienteCLASSIFICACAO: TIntegerField
      FieldName = 'CLASSIFICACAO'
      Origin = '"VALIDA_CLIENTE"."CLASSIFICACAO"'
    end
    object Valida_ClienteNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VALIDA_CLIENTE"."NOME"'
      Size = 50
    end
    object Valida_ClienteOBS2: TBlobField
      FieldName = 'OBS2'
      Origin = '"VALIDA_CLIENTE"."OBS2"'
      Size = 8
    end
    object Valida_ClienteCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"VALIDA_CLIENTE"."CPF_CNPJ"'
      Size = 15
    end
    object Valida_ClienteCONTROLA_PLACA: TIBStringField
      FieldName = 'CONTROLA_PLACA'
      Origin = '"VALIDA_CLIENTE"."CONTROLA_PLACA"'
      FixedChar = True
      Size = 1
    end
    object Valida_ClienteCONTROLA_KM: TIBStringField
      FieldName = 'CONTROLA_KM'
      Origin = '"VALIDA_CLIENTE"."CONTROLA_KM"'
      FixedChar = True
      Size = 1
    end
    object Valida_ClienteASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"VALIDA_CLIENTE"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
    object Valida_ClienteNAO_COBR_JUR_ATE: TFloatField
      DisplayLabel = 'N'#227'o Cobr. Juros At'#233
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"VALIDA_CLIENTE"."NAO_COBR_JUR_ATE"'
    end
    object Valida_ClienteTAXA_JUROS: TFloatField
      DisplayLabel = 'Taxa Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"VALIDA_CLIENTE"."TAXA_JUROS"'
    end
    object Valida_ClienteUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VALIDA_CLIENTE"."UF"'
      FixedChar = True
      Size = 2
    end
    object Valida_ClienteVALOR_MAXIMO_RETIRADA: TFloatField
      FieldName = 'VALOR_MAXIMO_RETIRADA'
      Origin = '"VALIDA_CLIENTE"."VALOR_MAXIMO_RETIRADA"'
    end
    object Valida_ClienteLIMITE_DIARIO_RETIRADA: TFloatField
      FieldName = 'LIMITE_DIARIO_RETIRADA'
      Origin = '"VALIDA_CLIENTE"."LIMITE_DIARIO_RETIRADA"'
    end
    object Valida_ClienteALIQUOTA_DESCONTO: TFloatField
      FieldName = 'ALIQUOTA_DESCONTO'
      Origin = '"VALIDA_CLIENTE"."ALIQUOTA_DESCONTO"'
    end
    object Valida_ClienteCONS_REV: TIBStringField
      FieldName = 'CONS_REV'
      Origin = '"VALIDA_CLIENTE"."CONS_REV"'
      FixedChar = True
      Size = 1
    end
  end
  object SelSubUnidade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = FiltrarDataSet
    DataSource = DsUnidade
    SQL.Strings = (
      'select CNPJ, SIGLA, UNIDADES '
      'from EST_SUBUNIDADES'
      'Where CNPJ = :CNPJ AND SIGLA = :SIGLA')
    Left = 392
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SIGLA'
        ParamType = ptUnknown
      end>
    object SelSubUnidadeCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_SUBUNIDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelSubUnidadeSIGLA: TIBStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Origin = '"EST_SUBUNIDADES"."SIGLA"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object SelSubUnidadeUNIDADES: TIntegerField
      DisplayLabel = 'Unidades'
      FieldName = 'UNIDADES'
      Origin = '"EST_SUBUNIDADES"."UNIDADES"'
      Required = True
    end
  end
  object DsUnidade: TDataSource
    AutoEdit = False
    DataSet = SelUnidade
    Left = 752
    Top = 384
  end
  object Valida_Produto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT   '
      '             PRC_REPOS, '
      '             PRC_VENDA, '
      '             Volume, '
      '             Peso_Liq,'
      '             Unidade, '
      '             NOME, '
      '             ATIVO, '
      '             ALIQUOTA_ECF, '
      '             QTDADE_1,'
      '             QTDADE_2,'
      '             NEG_QTDADE_2,'
      '             SUBUNIDADE,'
      '             COMPLEMENTO_NF,'
      '             ORIGEM,'
      '             CTE,'
      '             CTIE, '
      '             REDUCAO,'
      '             IPI,'
      '             VENDE_FRACIONADO,'
      '             POSSUI_LOTE,'
      '             MARCA,'
      '             MARGEM_BRUTA,'
      '             SERVICO,'
      '             COMPLEMENTO'
      '             , qntde_minima_venda, '
      '             VALIDA_MULT_QTDE_MIN '
      'FROM VALIDA_PRODUTO (:CNPJ, :PRODUTO,:VENDEDOR)')
    Left = 672
    Top = 576
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENDEDOR'
        ParamType = ptUnknown
      end>
    object Valida_ProdutoPRC_REPOS: TIBBCDField
      FieldName = 'PRC_REPOS'
      Origin = '"VALIDA_PRODUTO"."PRC_REPOS"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"VALIDA_PRODUTO"."PRC_VENDA"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VALIDA_PRODUTO"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoPESO_LIQ: TIBBCDField
      FieldName = 'PESO_LIQ'
      Origin = '"VALIDA_PRODUTO"."PESO_LIQ"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VALIDA_PRODUTO"."UNIDADE"'
      Size = 4
    end
    object Valida_ProdutoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VALIDA_PRODUTO"."NOME"'
      Size = 50
    end
    object Valida_ProdutoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"VALIDA_PRODUTO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object Valida_ProdutoALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"VALIDA_PRODUTO"."ALIQUOTA_ECF"'
      FixedChar = True
      Size = 5
    end
    object Valida_ProdutoQTDADE_1: TIBBCDField
      FieldName = 'QTDADE_1'
      Origin = '"VALIDA_PRODUTO"."QTDADE_1"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoQTDADE_2: TIBBCDField
      FieldName = 'QTDADE_2'
      Origin = '"VALIDA_PRODUTO"."QTDADE_2"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoNEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"VALIDA_PRODUTO"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object Valida_ProdutoSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VALIDA_PRODUTO"."SUBUNIDADE"'
    end
    object Valida_ProdutoCOMPLEMENTO_NF: TIBStringField
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"VALIDA_PRODUTO"."COMPLEMENTO_NF"'
      FixedChar = True
      Size = 1
    end
    object Valida_ProdutoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"VALIDA_PRODUTO"."ORIGEM"'
    end
    object Valida_ProdutoCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VALIDA_PRODUTO"."CTE"'
    end
    object Valida_ProdutoCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VALIDA_PRODUTO"."CTIE"'
    end
    object Valida_ProdutoREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VALIDA_PRODUTO"."REDUCAO"'
    end
    object Valida_ProdutoVENDE_FRACIONADO: TIBStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"VALIDA_PRODUTO"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object Valida_ProdutoPOSSUI_LOTE: TIBStringField
      FieldName = 'POSSUI_LOTE'
      Origin = '"VALIDA_PRODUTO"."POSSUI_LOTE"'
      FixedChar = True
      Size = 1
    end
    object Valida_ProdutoMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VALIDA_PRODUTO"."MARCA"'
      Size = 50
    end
    object Valida_ProdutoMARGEM_BRUTA: TIBBCDField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"VALIDA_PRODUTO"."MARGEM_BRUTA"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoSERVICO: TIBStringField
      FieldName = 'SERVICO'
      Origin = '"VALIDA_PRODUTO"."SERVICO"'
      FixedChar = True
      Size = 1
    end
    object Valida_ProdutoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VALIDA_PRODUTO"."COMPLEMENTO"'
      Size = 100
    end
    object Valida_ProdutoIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VALIDA_PRODUTO"."IPI"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoQNTDE_MINIMA_VENDA: TIBBCDField
      FieldName = 'QNTDE_MINIMA_VENDA'
      Origin = '"VALIDA_PRODUTO"."QNTDE_MINIMA_VENDA"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoVALIDA_MULT_QTDE_MIN: TIBStringField
      FieldName = 'VALIDA_MULT_QTDE_MIN'
      Origin = '"VALIDA_PRODUTO"."VALIDA_MULT_QTDE_MIN"'
      FixedChar = True
      Size = 1
    end
  end
  object SelReducao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'Select'
      '           PERC_ESTADUAL,'
      '           PERC_INTERESTADUAL,'
      '           MENSAGEM_NF,'
      '           MENSAGEM_NF_IE,'
      '           PERC_CONTRIBUINTE'
      'from VER_REDUCOES'
      '( :CNPJ, :CODIGO )')
    Left = 672
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object SelReducaoPERC_ESTADUAL: TIBBCDField
      FieldName = 'PERC_ESTADUAL'
      Origin = '"VER_REDUCOES"."PERC_ESTADUAL"'
      Precision = 18
      Size = 4
    end
    object SelReducaoPERC_INTERESTADUAL: TIBBCDField
      FieldName = 'PERC_INTERESTADUAL'
      Origin = '"VER_REDUCOES"."PERC_INTERESTADUAL"'
      Precision = 18
      Size = 4
    end
    object SelReducaoMENSAGEM_NF: TIBStringField
      FieldName = 'MENSAGEM_NF'
      Origin = '"VER_REDUCOES"."MENSAGEM_NF"'
      Size = 80
    end
    object SelReducaoMENSAGEM_NF_IE: TIBStringField
      FieldName = 'MENSAGEM_NF_IE'
      Origin = '"VER_REDUCOES"."MENSAGEM_NF_IE"'
      Size = 80
    end
    object SelReducaoPERC_CONTRIBUINTE: TIBBCDField
      FieldName = 'PERC_CONTRIBUINTE'
      Origin = '"VER_REDUCOES"."PERC_CONTRIBUINTE"'
      Precision = 18
      Size = 4
    end
  end
  object SelBoleto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'select'
      '      ACEITE_ALT, '
      '      ACEITE_DST, '
      '      BANCO, '
      '      DATA_ALT, '
      '      DATA_DST,'
      '      DOCUMENTO_ALT, '
      '      DOCUMENTO_DST, '
      '      DTPROCESSAMENTO_ALT, '
      '      DTPROCESSAMENTO_DST, '
      '      ESPECIE_ALT, '
      '      ESPECIE_DST, '
      '      INSTRUCOES_ALT, '
      '      INSTRUCOES_DST, '
      '      SACADO_ALT, '
      '      SACADO_DST, '
      '      TAMANHOPAGINA, '
      '      VALOR_ALT, '
      '      VALOR_DST, '
      '      VENCIMENTO_ALT, '
      '      VENCIMENTO_DST ,'
      '      CIDADE_ALT,'
      '      CIDADE_DST,'
      '      PORTA_IMPRESSORA,'
      '      LPP'
      'from VER_SIS_BOLETOBANCARIO ( :CNPJ, :LOCAL )')
    Left = 224
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOCAL'
        ParamType = ptUnknown
      end>
    object SelBoletoACEITE_ALT: TIntegerField
      FieldName = 'ACEITE_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."ACEITE_ALT"'
    end
    object SelBoletoACEITE_DST: TIntegerField
      FieldName = 'ACEITE_DST'
      Origin = '"SIS_BOLETOBANCARIO"."ACEITE_DST"'
    end
    object SelBoletoBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"SIS_BOLETOBANCARIO"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SelBoletoDATA_ALT: TIntegerField
      FieldName = 'DATA_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."DATA_ALT"'
    end
    object SelBoletoDATA_DST: TIntegerField
      FieldName = 'DATA_DST'
      Origin = '"SIS_BOLETOBANCARIO"."DATA_DST"'
    end
    object SelBoletoDOCUMENTO_ALT: TIntegerField
      FieldName = 'DOCUMENTO_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."DOCUMENTO_ALT"'
    end
    object SelBoletoDOCUMENTO_DST: TIntegerField
      FieldName = 'DOCUMENTO_DST'
      Origin = '"SIS_BOLETOBANCARIO"."DOCUMENTO_DST"'
    end
    object SelBoletoDTPROCESSAMENTO_ALT: TIntegerField
      FieldName = 'DTPROCESSAMENTO_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."DTPROCESSAMENTO_ALT"'
    end
    object SelBoletoDTPROCESSAMENTO_DST: TIntegerField
      FieldName = 'DTPROCESSAMENTO_DST'
      Origin = '"SIS_BOLETOBANCARIO"."DTPROCESSAMENTO_DST"'
    end
    object SelBoletoESPECIE_ALT: TIntegerField
      FieldName = 'ESPECIE_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."ESPECIE_ALT"'
    end
    object SelBoletoESPECIE_DST: TIntegerField
      FieldName = 'ESPECIE_DST'
      Origin = '"SIS_BOLETOBANCARIO"."ESPECIE_DST"'
    end
    object SelBoletoINSTRUCOES_ALT: TIntegerField
      FieldName = 'INSTRUCOES_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."INSTRUCOES_ALT"'
    end
    object SelBoletoINSTRUCOES_DST: TIntegerField
      FieldName = 'INSTRUCOES_DST'
      Origin = '"SIS_BOLETOBANCARIO"."INSTRUCOES_DST"'
    end
    object SelBoletoSACADO_ALT: TIntegerField
      FieldName = 'SACADO_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."SACADO_ALT"'
    end
    object SelBoletoSACADO_DST: TIntegerField
      FieldName = 'SACADO_DST'
      Origin = '"SIS_BOLETOBANCARIO"."SACADO_DST"'
    end
    object SelBoletoTAMANHOPAGINA: TIntegerField
      FieldName = 'TAMANHOPAGINA'
      Origin = '"SIS_BOLETOBANCARIO"."TAMANHOPAGINA"'
    end
    object SelBoletoVALOR_ALT: TIntegerField
      FieldName = 'VALOR_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."VALOR_ALT"'
    end
    object SelBoletoVALOR_DST: TIntegerField
      FieldName = 'VALOR_DST'
      Origin = '"SIS_BOLETOBANCARIO"."VALOR_DST"'
    end
    object SelBoletoVENCIMENTO_ALT: TIntegerField
      FieldName = 'VENCIMENTO_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."VENCIMENTO_ALT"'
    end
    object SelBoletoVENCIMENTO_DST: TIntegerField
      FieldName = 'VENCIMENTO_DST'
      Origin = '"SIS_BOLETOBANCARIO"."VENCIMENTO_DST"'
    end
    object SelBoletoCIDADE_ALT: TIntegerField
      FieldName = 'CIDADE_ALT'
      Origin = '"VER_SIS_BOLETOBANCARIO"."CIDADE_ALT"'
    end
    object SelBoletoCIDADE_DST: TIntegerField
      FieldName = 'CIDADE_DST'
      Origin = '"VER_SIS_BOLETOBANCARIO"."CIDADE_DST"'
    end
    object SelBoletoPORTA_IMPRESSORA: TIBStringField
      FieldName = 'PORTA_IMPRESSORA'
      Origin = '"VER_SIS_BOLETOBANCARIO"."PORTA_IMPRESSORA"'
      Size = 50
    end
    object SelBoletoLPP: TIntegerField
      FieldName = 'LPP'
      Origin = '"VER_SIS_BOLETOBANCARIO"."LPP"'
    end
  end
  object Localizar_Vendas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT '
      '    PESSOA_FJ ,'
      '    NOME ,'
      '    CODIGO ,'
      '    DATA ,'
      '    TOTAL ,'
      '    FECHADA ,'
      '    HISTORICO ,'
      '    VENDEDOR ,'
      '    NOMEVENDEDOR ,'
      '    USUARIO ,'
      '    NUM_NF ,'
      '    NUM_CUPOM ,'
      '    NATUREZA ,'
      '    NOMENATUREZA ,'
      '    TIPO_VENDA ,'
      '    NOME_CONSUMIDOR ,'
      '    VLR_TOTAL ,'
      '    DESC_ACRES ,'
      '    OBSERVACAO ,'
      '    ORCAMENTO ,'
      '    LOCAL '
      'FROM VER_VENDAS ( :CNPJ, :TP )')
    Left = 296
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TP'
        ParamType = ptUnknown
      end>
    object Localizar_VendasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_VENDAS"."PESSOA_FJ"'
    end
    object Localizar_VendasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_VENDAS"."NOME"'
      Size = 50
    end
    object Localizar_VendasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_VENDAS"."CODIGO"'
    end
    object Localizar_VendasTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_VENDAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Localizar_VendasFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"VER_VENDAS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Localizar_VendasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_VENDAS"."HISTORICO"'
      Size = 100
    end
    object Localizar_VendasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"VER_VENDAS"."VENDEDOR"'
    end
    object Localizar_VendasNOMEVENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOMEVENDEDOR'
      Origin = '"VER_VENDAS"."NOMEVENDEDOR"'
      Size = 50
    end
    object Localizar_VendasUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"VER_VENDAS"."USUARIO"'
    end
    object Localizar_VendasNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"VER_VENDAS"."NUM_NF"'
    end
    object Localizar_VendasNUM_CUPOM: TIntegerField
      DisplayLabel = 'Cupom'
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_VENDAS"."NUM_CUPOM"'
    end
    object Localizar_VendasNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"VER_VENDAS"."NATUREZA"'
    end
    object Localizar_VendasNOMENATUREZA: TIBStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NOMENATUREZA'
      Origin = '"VER_VENDAS"."NOMENATUREZA"'
      Size = 50
    end
    object Localizar_VendasTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object Localizar_VendasNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Localizar_VendasVLR_TOTAL: TIBBCDField
      DisplayLabel = 'Liquido'
      FieldName = 'VLR_TOTAL'
      Origin = '"VER_VENDAS"."VLR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Localizar_VendasDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233's'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_VENDAS"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Localizar_VendasORCAMENTO: TIntegerField
      DisplayLabel = 'Orc'
      FieldName = 'ORCAMENTO'
      Origin = '"VER_VENDAS"."ORCAMENTO"'
    end
    object Localizar_VendasLOCAL: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"VER_VENDAS"."LOCAL"'
    end
    object Localizar_VendasOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"VER_VENDAS"."OBSERVACAO"'
      Size = 200
    end
    object Localizar_VendasDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_VENDAS"."DATA"'
    end
  end
  object SelPropriedades: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    NOME,'
      '    PROPRIEDADE,'
      '    PROPRIETARIO,'
      '    IE,'
      '    TECNICO,'
      '    ENDERECO,'
      '    COMPLEMENTO,'
      '    CIDADE,'
      '    UF,'
      '    CEP,'
      '    AREA_TOTAL ,'
      '    NUMERO,'
      '    BAIRRO,'
      '    CPF'
      'from VER_PROPRIEDADES ( :CNPJ, :PESSOA_FJ )'
      '')
    Left = 48
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptUnknown
      end>
    object SelPropriedadesNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_PROPRIEDADES"."NOME"'
      Size = 50
    end
    object SelPropriedadesPROPRIETARIO: TIBStringField
      DisplayLabel = 'Propriet'#225'rio'
      FieldName = 'PROPRIETARIO'
      Origin = '"VER_PROPRIEDADES"."PROPRIETARIO"'
      Size = 50
    end
    object SelPropriedadesIE: TIBStringField
      DisplayLabel = 'Ie'
      FieldName = 'IE'
      Origin = '"VER_PROPRIEDADES"."IE"'
      Size = 15
    end
    object SelPropriedadesENDERECO: TIBStringField
      DisplayLabel = 'End'
      FieldName = 'ENDERECO'
      Origin = '"VER_PROPRIEDADES"."ENDERECO"'
      Size = 50
    end
    object SelPropriedadesCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Compl'
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PROPRIEDADES"."COMPLEMENTO"'
      Size = 30
    end
    object SelPropriedadesCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_PROPRIEDADES"."CIDADE"'
      Size = 50
    end
    object SelPropriedadesUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_PROPRIEDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPropriedadesCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_PROPRIEDADES"."CEP"'
      Size = 8
    end
    object SelPropriedadesAREA_TOTAL: TIBStringField
      DisplayLabel = #193'rea'
      FieldName = 'AREA_TOTAL'
      Origin = '"VER_PROPRIEDADES"."AREA_TOTAL"'
      Size = 30
    end
    object SelPropriedadesPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_PROPRIEDADES"."PROPRIEDADE"'
    end
    object SelPropriedadesNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_PROPRIEDADES"."NUMERO"'
      Size = 15
    end
    object SelPropriedadesBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_PROPRIEDADES"."BAIRRO"'
      Size = 50
    end
    object SelPropriedadesCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"VER_PROPRIEDADES"."CPF"'
    end
    object SelPropriedadesTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"VER_PROPRIEDADES"."TECNICO"'
    end
  end
  object SelPropriedade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    NOME ,'
      '    PROPRIETARIO ,'
      '    IE ,'
      '    ENDERECO ,'
      '    COMPLEMENTO ,'
      '    CIDADE ,'
      '    UF ,'
      '    CEP ,'
      '    AREA_TOTAL,'
      '    OBS,'
      '    NUMERO, '
      '    BAIRRO,'
      '    CPF,'
      '    TECNICO'
      'from VER_PROPRIEDADE ( :CNPJ, :PESSOA_FJ, :PROPRIEDADE )'
      ''
      '')
    Left = 224
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA_FJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROPRIEDADE'
        ParamType = ptUnknown
      end>
    object SelPropriedadeNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object SelPropriedadePROPRIETARIO: TIBStringField
      DisplayLabel = 'Propriet'#225'rio'
      FieldName = 'PROPRIETARIO'
      Origin = '"VER_PROPRIEDADE"."PROPRIETARIO"'
      Size = 50
    end
    object SelPropriedadeIE: TIBStringField
      FieldName = 'IE'
      Origin = '"VER_PROPRIEDADE"."IE"'
      Size = 15
    end
    object SelPropriedadeENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_PROPRIEDADE"."ENDERECO"'
      Size = 50
    end
    object SelPropriedadeCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PROPRIEDADE"."COMPLEMENTO"'
      Size = 30
    end
    object SelPropriedadeCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_PROPRIEDADE"."CIDADE"'
      Size = 50
    end
    object SelPropriedadeUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PROPRIEDADE"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPropriedadeCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PROPRIEDADE"."CEP"'
      Size = 8
    end
    object SelPropriedadeAREA_TOTAL: TIBStringField
      DisplayLabel = #193'rea Total'
      FieldName = 'AREA_TOTAL'
      Origin = '"VER_PROPRIEDADE"."AREA_TOTAL"'
      Size = 30
    end
    object SelPropriedadeOBS: TBlobField
      DisplayLabel = 'Obs.'
      FieldName = 'OBS'
      Origin = '"VER_PROPRIEDADE"."OBS"'
      Size = 8
    end
    object SelPropriedadeNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"VER_PROPRIEDADE"."NUMERO"'
      Size = 15
    end
    object SelPropriedadeBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_PROPRIEDADE"."BAIRRO"'
      Size = 50
    end
    object SelPropriedadeCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"VER_PROPRIEDADE"."CPF"'
    end
    object SelPropriedadeTECNICO: TIntegerField
      DisplayLabel = 'T'#233'cnico'
      FieldName = 'TECNICO'
      Origin = '"VER_PROPRIEDADE"."TECNICO"'
    end
  end
  object Cotacoes: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    AfterInsert = CotacoesAfterInsert
    BeforeOpen = VendasBeforeOpen
    BeforePost = CotacoesBeforePost
    OnCalcFields = CotacoesCalcFields
    OnNewRecord = CotacoesNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_COTACOES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_COTACOES'
      
        '  (CNPJ, CODIGO, DATA, DESC_ACRESC, FECHADO, FORMA_PGTO, NOME, O' +
        'BSERVACAO, '
      
        '   PESSOA_FJ, TOTAL, USUARIO, FORMA_COMBINADA, TRANSPORTADORA, N' +
        'OME_TRANSPORTADORA)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :DESC_ACRESC, :FECHADO, :FORMA_PGTO, :' +
        'NOME, :OBSERVACAO, '
      
        '   :PESSOA_FJ, :TOTAL, :USUARIO, :FORMA_COMBINADA, :TRANSPORTADO' +
        'RA, :NOME_TRANSPORTADORA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  PESSOA_FJ,'
      '  USUARIO,'
      '  FORMA_PGTO,'
      '  OBSERVACAO,'
      '  TOTAL,'
      '  FECHADO,'
      '  DESC_ACRESC,'
      '  NOME,'
      '  FORMA_COMBINADA,'
      '  TRANSPORTADORA,'
      '  NOME_TRANSPORTADORA'
      'from FAT_COTACOES '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select  '
      '         CNPJ, '
      '         CODIGO, '
      '         DATA, '
      '         DESC_ACRESC, '
      '         FECHADO, '
      '         FORMA_PGTO, '
      '         NOME, '
      '         OBSERVACAO, '
      '         PESSOA_FJ, '
      '         TOTAL, '
      '         USUARIO,'
      '         FORMA_COMBINADA,'
      '         TRANSPORTADORA,'
      '         NOME_TRANSPORTADORA'
      'from FAT_COTACOES'
      'where CNPJ = :CNPJ  AND CODIGO = :CODIGO'
      '')
    ModifySQL.Strings = (
      'update FAT_COTACOES'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DESC_ACRESC = :DESC_ACRESC,'
      '  FECHADO = :FECHADO,'
      '  FORMA_PGTO = :FORMA_PGTO,'
      '  NOME = :NOME,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  TOTAL = :TOTAL,'
      '  USUARIO = :USUARIO,'
      '  FORMA_COMBINADA = :FORMA_COMBINADA,'
      '  TRANSPORTADORA = :TRANSPORTADORA,'
      '  NOME_TRANSPORTADORA = :NOME_TRANSPORTADORA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 296
    Top = 280
    object CotacoesCNPJ: TIBStringField
      Tag = 1
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_COTACOES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CotacoesCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_COTACOES"."CODIGO"'
      Required = True
    end
    object CotacoesDATA: TDateTimeField
      Tag = 1
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_COTACOES"."DATA"'
    end
    object CotacoesDESC_ACRESC: TFloatField
      DisplayLabel = 'Desc/Acresc'
      FieldName = 'DESC_ACRESC'
      Origin = '"FAT_COTACOES"."DESC_ACRESC"'
      DisplayFormat = '###,###,##0.00'
    end
    object CotacoesFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"FAT_COTACOES"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object CotacoesFORMA_PGTO: TIntegerField
      DisplayLabel = 'Forma Pgto'
      FieldName = 'FORMA_PGTO'
      Origin = '"FAT_COTACOES"."FORMA_PGTO"'
    end
    object CotacoesNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_COTACOES"."NOME"'
      Size = 50
    end
    object CotacoesOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"FAT_COTACOES"."OBSERVACAO"'
      Size = 80
    end
    object CotacoesPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Pessoa_Fj'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_COTACOES"."PESSOA_FJ"'
      Required = True
      OnValidate = CotacoesPESSOA_FJValidate
    end
    object CotacoesTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FAT_COTACOES"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object CotacoesUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"FAT_COTACOES"."USUARIO"'
      Required = True
    end
    object CotacoesGeral: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Geral'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object CotacoesFORMA_COMBINADA: TIBStringField
      DisplayLabel = 'Combinado'
      FieldName = 'FORMA_COMBINADA'
      Origin = '"FAT_COTACOES"."FORMA_COMBINADA"'
      Size = 50
    end
    object CotacoesTRANSPORTADORA: TIntegerField
      DisplayLabel = 'Transportadoras'
      FieldName = 'TRANSPORTADORA'
      Origin = '"FAT_COTACOES"."TRANSPORTADORA"'
      OnValidate = CotacoesTRANSPORTADORAValidate
    end
    object CotacoesNOME_TRANSPORTADORA: TIBStringField
      FieldName = 'NOME_TRANSPORTADORA'
      Origin = '"FAT_COTACOES"."NOME_TRANSPORTADORA"'
      Size = 50
    end
  end
  object Cotacoes_Itens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    OnCalcFields = Cotacoes_ItensCalcFields
    OnNewRecord = Cotacoes_ItensNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_COTACOES_ITENS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into FAT_COTACOES_ITENS'
      
        '  (CNPJ, CODIGO, DESCONTO, NOME_PRODUTO, PORC_DESC, PRC_CUSTO, P' +
        'RC_UNIT_ORIGINAL, '
      
        '   PRC_UNITARIO, PRODUTO, QUANTIDADE, SEQUENCIA, SUBUNIDADE, UNI' +
        'DADE)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DESCONTO, :NOME_PRODUTO, :PORC_DESC, :PRC_CU' +
        'STO, :PRC_UNIT_ORIGINAL, '
      
        '   :PRC_UNITARIO, :PRODUTO, :QUANTIDADE, :SEQUENCIA, :SUBUNIDADE' +
        ', :UNIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  PRODUTO,'
      '  SEQUENCIA,'
      '  QUANTIDADE,'
      '  PRC_UNITARIO,'
      '  PRC_CUSTO,'
      '  DESCONTO,'
      '  PORC_DESC,'
      '  UNIDADE,'
      '  PRC_UNIT_ORIGINAL,'
      '  NOME_PRODUTO,'
      '  SUBUNIDADE'
      'from FAT_COTACOES_ITENS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  PRODUTO = :PRODUTO and'
      '  SEQUENCIA = :SEQUENCIA')
    SelectSQL.Strings = (
      'select  '
      '         CNPJ, '
      '         CODIGO, '
      '         DESCONTO, '
      '         NOME_PRODUTO, '
      '         PORC_DESC, '
      '         PRC_CUSTO, '
      '         PRC_UNIT_ORIGINAL, '
      '         PRC_UNITARIO, '
      '         PRODUTO, '
      '         QUANTIDADE, '
      '         SEQUENCIA, '
      '         SUBUNIDADE, '
      '         UNIDADE'
      'from FAT_COTACOES_ITENS'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_COTACOES_ITENS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DESCONTO = :DESCONTO,'
      '  NOME_PRODUTO = :NOME_PRODUTO,'
      '  PORC_DESC = :PORC_DESC,'
      '  PRC_CUSTO = :PRC_CUSTO,'
      '  PRC_UNIT_ORIGINAL = :PRC_UNIT_ORIGINAL,'
      '  PRC_UNITARIO = :PRC_UNITARIO,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  SUBUNIDADE = :SUBUNIDADE,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    DataSource = DsCotacoes
    Left = 592
    Top = 296
    object Cotacoes_ItensCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_COTACOES_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Cotacoes_ItensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_COTACOES_ITENS"."CODIGO"'
      Required = True
    end
    object Cotacoes_ItensDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"FAT_COTACOES_ITENS"."DESCONTO"'
      OnValidate = Cotacoes_ItensDESCONTOValidate
      DisplayFormat = '###,###,##0.00'
    end
    object Cotacoes_ItensNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_COTACOES_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Cotacoes_ItensPORC_DESC: TFloatField
      DisplayLabel = 'Porcent'
      FieldName = 'PORC_DESC'
      Origin = '"FAT_COTACOES_ITENS"."PORC_DESC"'
      OnValidate = Cotacoes_ItensPORC_DESCValidate
      DisplayFormat = '% #,##0.00'
    end
    object Cotacoes_ItensPRC_CUSTO: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"FAT_COTACOES_ITENS"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Cotacoes_ItensPRC_UNIT_ORIGINAL: TFloatField
      DisplayLabel = 'Vlr Original'
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"FAT_COTACOES_ITENS"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object Cotacoes_ItensPRC_UNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_COTACOES_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Cotacoes_ItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_COTACOES_ITENS"."PRODUTO"'
      Required = True
      OnValidate = Cotacoes_ItensPRODUTOValidate
      Size = 15
    end
    object Cotacoes_ItensQUANTIDADE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_COTACOES_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
    end
    object Cotacoes_ItensSEQUENCIA: TSmallintField
      DisplayLabel = 'Sequencia'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_COTACOES_ITENS"."SEQUENCIA"'
      Required = True
    end
    object Cotacoes_ItensSUBUNIDADE: TIntegerField
      DisplayLabel = 'SubUnidade'
      FieldName = 'SUBUNIDADE'
      Origin = '"FAT_COTACOES_ITENS"."SUBUNIDADE"'
    end
    object Cotacoes_ItensUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"FAT_COTACOES_ITENS"."UNIDADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object Cotacoes_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object DsCotacoes: TDataSource
    AutoEdit = False
    DataSet = Cotacoes
    Left = 752
    Top = 464
  end
  object SelCotacoes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT CO.CNPJ,'
      '               CO.PESSOA_FJ,'
      '               P.NOME_RAZAO,'
      '               CO.CODIGO,'
      '               CO.DATA,'
      '               CO.USUARIO,'
      '               CO.TOTAL, '
      '               CO.DESC_ACRESC,'
      '               CO.FECHADO,'
      '               OBSERVACAO'
      'FROM FAT_COTACOES CO'
      
        '            INNER JOIN GLO_PESSOAS_FJ P ON (P.CODIGO = CO.PESSOA' +
        '_FJ AND P.CNPJ = CO.CNPJ)'
      'WHERE CO.CNPJ = :CNPJ'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 144
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelCotacoesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_COTACOES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelCotacoesPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cod'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_COTACOES"."PESSOA_FJ"'
      Required = True
    end
    object SelCotacoesNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object SelCotacoesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_COTACOES"."CODIGO"'
      Required = True
    end
    object SelCotacoesDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_COTACOES"."DATA"'
    end
    object SelCotacoesUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"FAT_COTACOES"."USUARIO"'
      Required = True
    end
    object SelCotacoesTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FAT_COTACOES"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelCotacoesDESC_ACRESC: TFloatField
      DisplayLabel = 'Desc/Acresc'
      FieldName = 'DESC_ACRESC'
      Origin = '"FAT_COTACOES"."DESC_ACRESC"'
      DisplayFormat = '% ##,##0.00'
    end
    object SelCotacoesFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"FAT_COTACOES"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object SelCotacoesOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"FAT_COTACOES"."OBSERVACAO"'
      Size = 80
    end
  end
  object Consulta_Cotacao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    DATA ,'
      '    PESSOA_FJ ,'
      '    USUARIO ,'
      '    FORMA_PGTO ,'
      '    NOME_FORMA ,'
      '    OBSERVACAO ,'
      '    TOTAL ,'
      '    FECHADO ,'
      '    DESC_ACRESC ,'
      '    NOME,'
      '    TRANSPORTADORA '
      'from CONSULTA_COTACOES ( :CNPJ, :COD )')
    Left = 296
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    object Consulta_CotacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CONSULTA_COTACOES"."CODIGO"'
    end
    object Consulta_CotacaoDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"CONSULTA_COTACOES"."DATA"'
    end
    object Consulta_CotacaoPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"CONSULTA_COTACOES"."PESSOA_FJ"'
    end
    object Consulta_CotacaoUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"CONSULTA_COTACOES"."USUARIO"'
    end
    object Consulta_CotacaoFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"CONSULTA_COTACOES"."FORMA_PGTO"'
    end
    object Consulta_CotacaoNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"CONSULTA_COTACOES"."NOME_FORMA"'
      Size = 50
    end
    object Consulta_CotacaoOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"CONSULTA_COTACOES"."OBSERVACAO"'
      Size = 80
    end
    object Consulta_CotacaoTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"CONSULTA_COTACOES"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object Consulta_CotacaoFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"CONSULTA_COTACOES"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object Consulta_CotacaoDESC_ACRESC: TIBBCDField
      FieldName = 'DESC_ACRESC'
      Origin = '"CONSULTA_COTACOES"."DESC_ACRESC"'
      Precision = 18
      Size = 4
    end
    object Consulta_CotacaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CONSULTA_COTACOES"."NOME"'
      Size = 50
    end
    object Consulta_CotacaoTRANSPORTADORA: TIBStringField
      FieldName = 'TRANSPORTADORA'
      Origin = '"CONSULTA_COTACOES"."TRANSPORTADORA"'
      Size = 50
    end
  end
  object Consulta_Cotacao_Itens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Consulta_Cotacao_ItensCalcFields
    SQL.Strings = (
      'select'
      '    PRODUTO,'
      '    SEQUENCIA,'
      '    QUANTIDADE,'
      '    PRC_UNITARIO,'
      '    PRC_CUSTO,'
      '    DESCONTO,'
      '    PORC_DESC,'
      '    UNIDADE,'
      '    PRC_UNIT_ORIGINAL,'
      '    NOME_PRODUTO,'
      '    SUBUNIDADE'
      'from consulta_cotacoes_itens ( :CNPJ, :CODIGO )')
    Left = 48
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Consulta_Cotacao_ItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"CONSULTA_COTACOES_ITENS"."PRODUTO"'
      Size = 15
    end
    object Consulta_Cotacao_ItensSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"CONSULTA_COTACOES_ITENS"."SEQUENCIA"'
    end
    object Consulta_Cotacao_ItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"CONSULTA_COTACOES_ITENS"."QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object Consulta_Cotacao_ItensPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"CONSULTA_COTACOES_ITENS"."PRC_UNITARIO"'
      Precision = 18
      Size = 4
    end
    object Consulta_Cotacao_ItensPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"CONSULTA_COTACOES_ITENS"."PRC_CUSTO"'
      Precision = 18
      Size = 4
    end
    object Consulta_Cotacao_ItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"CONSULTA_COTACOES_ITENS"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object Consulta_Cotacao_ItensPORC_DESC: TIBBCDField
      FieldName = 'PORC_DESC'
      Origin = '"CONSULTA_COTACOES_ITENS"."PORC_DESC"'
      Precision = 18
      Size = 4
    end
    object Consulta_Cotacao_ItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"CONSULTA_COTACOES_ITENS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Consulta_Cotacao_ItensPRC_UNIT_ORIGINAL: TIBBCDField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"CONSULTA_COTACOES_ITENS"."PRC_UNIT_ORIGINAL"'
      Precision = 18
      Size = 4
    end
    object Consulta_Cotacao_ItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"CONSULTA_COTACOES_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Consulta_Cotacao_ItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"CONSULTA_COTACOES_ITENS"."SUBUNIDADE"'
    end
    object Consulta_Cotacao_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object SelVendasTotais: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT '
      '    PESSOA_FJ ,'
      '    NOME ,'
      '    CODIGO ,'
      '    DATA ,'
      '    TOTAL ,'
      '    FECHADA ,'
      '    HISTORICO ,'
      '    VENDEDOR ,'
      '    NOMEVENDEDOR ,'
      '    USUARIO ,'
      '    DATA_CAIXA,'
      '    CONTA_CAIXA,'
      '    NUM_NF ,'
      '    NUM_CUPOM ,'
      '    NATUREZA ,'
      '    NOMENATUREZA ,'
      '    TIPO_VENDA ,'
      '    NOME_CONSUMIDOR ,'
      '    VLR_TOTAL ,'
      '    DESC_ACRES ,'
      '    OBSERVACAO ,'
      '    ORCAMENTO ,'
      '    LOCAL,'
      '    CANCELADA ,'
      '    BASE_ICM ,'
      '    ICM ,'
      '    BASE_ICM_SUBST ,'
      '    VALOR_ICM_SUBST ,'
      '    FRETE ,'
      '    SEGURO ,'
      '    DESPESAS ,'
      '    IPI ,'
      '    TOTAL_NOTA'
      'FROM VER_VENDAS_TOTAIS ( :CNPJ )'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 144
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelVendasTotaisCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDA"."CODIGO"'
      Required = True
    end
    object SelVendasTotaisFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object SelVendasTotaisHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDA"."HISTORICO"'
      Size = 100
    end
    object SelVendasTotaisPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDA"."PESSOA_FJ"'
      Required = True
    end
    object SelVendasTotaisUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDA"."USUARIO"'
      Required = True
    end
    object SelVendasTotaisVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDA"."VENDEDOR"'
      Required = True
    end
    object SelVendasTotaisNUM_NF: TIntegerField
      Tag = 1
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDA"."NUM_NF"'
    end
    object SelVendasTotaisNUM_CUPOM: TIntegerField
      Tag = 1
      DisplayLabel = 'Cupom'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDA"."NUM_CUPOM"'
    end
    object SelVendasTotaisNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDA"."NATUREZA"'
      Required = True
    end
    object SelVendasTotaisTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"FAT_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object SelVendasTotaisNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object SelVendasTotaisORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object SelVendasTotaisLOCAL: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"FAT_VENDAS"."LOCAL"'
    end
    object SelVendasTotaisNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS"."NOME"'
      Size = 50
    end
    object SelVendasTotaisTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_VENDAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasTotaisVLR_TOTAL: TIBBCDField
      DisplayLabel = 'Vlr Total'
      FieldName = 'VLR_TOTAL'
      Origin = '"VER_VENDAS"."VLR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasTotaisDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acres'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_VENDAS"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasTotaisNOMENATUREZA: TIBStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NOMENATUREZA'
      Origin = '"VER_VENDAS"."NOMENATUREZA"'
      Size = 50
    end
    object SelVendasTotaisNOMEVENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOMEVENDEDOR'
      Origin = '"VER_VENDAS"."NOMEVENDEDOR"'
      Size = 50
    end
    object SelVendasTotaisCONTA_CAIXA: TIntegerField
      FieldName = 'CONTA_CAIXA'
      Origin = '"VER_VENDAS"."CONTA_CAIXA"'
    end
    object SelVendasTotaisCANCELADA: TIBStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      Origin = '"VER_VENDAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object SelVendasTotaisBASE_ICM: TIBBCDField
      FieldName = 'BASE_ICM'
      Origin = '"VER_VENDAS_TOTAIS"."BASE_ICM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasTotaisICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_VENDAS_TOTAIS"."ICM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasTotaisBASE_ICM_SUBST: TIBBCDField
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"VER_VENDAS_TOTAIS"."BASE_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasTotaisVALOR_ICM_SUBST: TIBBCDField
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"VER_VENDAS_TOTAIS"."VALOR_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasTotaisFRETE: TIBBCDField
      FieldName = 'FRETE'
      Origin = '"VER_VENDAS_TOTAIS"."FRETE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasTotaisSEGURO: TIBBCDField
      FieldName = 'SEGURO'
      Origin = '"VER_VENDAS_TOTAIS"."SEGURO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasTotaisDESPESAS: TIBBCDField
      FieldName = 'DESPESAS'
      Origin = '"VER_VENDAS_TOTAIS"."DESPESAS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasTotaisIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_VENDAS_TOTAIS"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasTotaisTOTAL_NOTA: TIBBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = '"VER_VENDAS_TOTAIS"."TOTAL_NOTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVendasTotaisDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_VENDAS_TOTAIS"."DATA"'
    end
    object SelVendasTotaisDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_VENDAS_TOTAIS"."DATA_CAIXA"'
    end
    object SelVendasTotaisOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"VER_VENDAS_TOTAIS"."OBSERVACAO"'
      Size = 200
    end
  end
  object SelFatura_Futura: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT '
      '    CODIGO ,'
      '    DATA ,'
      '    FECHADA ,'
      '    HISTORICO ,'
      '    PESSOA_FJ ,'
      '    PESSOA_RAZAO ,'
      '    USUARIO ,'
      '    NATUREZA ,'
      '    NOME_NATUREZA ,'
      '    ENVIADA_CX ,'
      '    DATA_CAIXA,'
      '    FORMA_PGTO ,'
      '    NUM_NF ,'
      '    NUM_CUPOM ,'
      '    PROPRIEDADE ,'
      '    CONVENIADO ,'
      '    TIPO_DOCTO ,'
      '    LOCAL_COBRANCA ,'
      '    DESC_ACRES ,'
      '    ENTRADA ,'
      '    DINHEIRO ,'
      '    CHEQUE ,'
      '    CARTAO ,'
      '    TICKET ,'
      '    TOTAL ,'
      '    VLRLIQUIDO ,'
      '    OBSERVACAO ,'
      '    VLR_PARC_LC,'
      '    TERCEIRO ,'
      '    CARGA ,'
      '    VOLUME,'
      '    PESO,'
      '    REQUISICAO,'
      '    DESCRICAO ,'
      '    TIPO_VENDA ,'
      '    NOME_CONSUMIDOR ,'
      '    NOME_FORMA ,'
      '    FATURA_FUTURA ,'
      '    ORCAMENTO ,'
      '    VENDEDOR ,'
      '    NOME_VENDEDOR,'
      '    LOCAL,'
      '    CONTA_CAIXA, '
      '    CANCELADA, '
      '    BASE_ICM_SUBST , '
      '    VALOR_ICM_SUBST ,'
      '    FRETE ,  '
      '    SEGURO ,  '
      '    DESPESAS ,  '
      '    IPI , '
      '    TOTAL_NOTA,'
      '    SELECIONADA,'
      '    BASE_ICM,'
      '    ICM,'
      '    PERC_ICMS,'
      '    MENSAGEM_NAT1,'
      '    MENSAGEM_NAT2'
      
        'FROM VER_FAT_VENDAS_FATURA_FUTURAS ( :CNPJ, :DINI, :DFIM, :PESSO' +
        'A )'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 48
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA'
        ParamType = ptUnknown
      end>
    object SelFatura_FuturaCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDA"."CODIGO"'
      Required = True
    end
    object SelFatura_FuturaFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_FuturaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDA"."HISTORICO"'
      Size = 100
    end
    object SelFatura_FuturaPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDA"."PESSOA_FJ"'
      Required = True
    end
    object SelFatura_FuturaUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDA"."USUARIO"'
      Required = True
    end
    object SelFatura_FuturaVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDA"."VENDEDOR"'
      Required = True
    end
    object SelFatura_FuturaNUM_NF: TIntegerField
      Tag = 1
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDA"."NUM_NF"'
    end
    object SelFatura_FuturaNUM_CUPOM: TIntegerField
      Tag = 1
      DisplayLabel = 'Cupom'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDA"."NUM_CUPOM"'
    end
    object SelFatura_FuturaNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDA"."NATUREZA"'
      Required = True
    end
    object SelFatura_FuturaTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"FAT_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object SelFatura_FuturaNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object SelFatura_FuturaORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object SelFatura_FuturaLOCAL: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"FAT_VENDAS"."LOCAL"'
    end
    object SelFatura_FuturaTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_VENDAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acres'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_VENDAS"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaPESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PESSOA_RAZAO"'
      Size = 50
    end
    object SelFatura_FuturaNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_NATUREZA"'
      Size = 50
    end
    object SelFatura_FuturaENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_FuturaFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FORMA_PGTO"'
    end
    object SelFatura_FuturaPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PROPRIEDADE"'
    end
    object SelFatura_FuturaCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CONVENIADO"'
    end
    object SelFatura_FuturaTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object SelFatura_FuturaLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."LOCAL_COBRANCA"'
    end
    object SelFatura_FuturaENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaVLRLIQUIDO: TIBBCDField
      DisplayLabel = 'Liqu'#237'do'
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VLR_PARC_LC"'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TERCEIRO"'
    end
    object SelFatura_FuturaCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CARGA"'
    end
    object SelFatura_FuturaVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PESO"'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaREQUISICAO: TIBStringField
      DisplayLabel = 'Requisi'#231#227'o'
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."REQUISICAO"'
      Size = 6
    end
    object SelFatura_FuturaDESCRICAO: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DESCRICAO"'
      Size = 8
    end
    object SelFatura_FuturaNOME_FORMA: TIBStringField
      DisplayLabel = 'Frm Pagto'
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_FORMA"'
      Size = 50
    end
    object SelFatura_FuturaFATURA_FUTURA: TIBStringField
      DisplayLabel = 'Fat. Fut'
      FieldName = 'FATURA_FUTURA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FATURA_FUTURA"'
      Size = 1
    end
    object SelFatura_FuturaNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object SelFatura_FuturaCONTA_CAIXA: TIntegerField
      DisplayLabel = 'Conta Caixa'
      FieldName = 'CONTA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CONTA_CAIXA"'
    end
    object SelFatura_FuturaCANCELADA: TIBStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_FuturaBASE_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Base Icms Subst'
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."BASE_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaVALOR_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Icms'
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VALOR_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaFRETE: TIBBCDField
      DisplayLabel = 'Frete'
      FieldName = 'FRETE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FRETE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaSEGURO: TIBBCDField
      DisplayLabel = 'Seguro'
      FieldName = 'SEGURO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."SEGURO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaDESPESAS: TIBBCDField
      DisplayLabel = 'Despesas'
      FieldName = 'DESPESAS'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DESPESAS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaIPI: TIBBCDField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaTOTAL_NOTA: TIBBCDField
      DisplayLabel = 'Total Nota'
      FieldName = 'TOTAL_NOTA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TOTAL_NOTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaSELECIONADA: TIBStringField
      DisplayLabel = 'Sel'
      FieldName = 'SELECIONADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_FuturaDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DATA"'
    end
    object SelFatura_FuturaDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DATA_CAIXA"'
    end
    object SelFatura_FuturaBASE_ICM: TIBBCDField
      FieldName = 'BASE_ICM'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."BASE_ICM"'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ICM"'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaPERC_ICMS: TIBBCDField
      FieldName = 'PERC_ICMS'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PERC_ICMS"'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaMENSAGEM_NAT1: TIBStringField
      FieldName = 'MENSAGEM_NAT1'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."MENSAGEM_NAT1"'
      Size = 50
    end
    object SelFatura_FuturaMENSAGEM_NAT2: TIBStringField
      FieldName = 'MENSAGEM_NAT2'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."MENSAGEM_NAT2"'
      Size = 50
    end
    object SelFatura_FuturaOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."OBSERVACAO"'
      Size = 200
    end
  end
  object SelBanco: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select '
      '         BOLETO, '
      '         CODIGO, '
      '         NOME '
      'from FIN_BANCO'
      'order by NOME')
    Left = 592
    Top = 344
    object SelBancoBOLETO: TIntegerField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_BANCO"."BOLETO"'
    end
    object SelBancoCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BANCO"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SelBancoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_BANCO"."NOME"'
      Required = True
      Size = 50
    end
  end
  object SelListaFatura_Futura: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT '
      '    CODIGO ,'
      '    DATA ,'
      '    FECHADA ,'
      '    HISTORICO ,'
      '    PESSOA_FJ ,'
      '    PESSOA_RAZAO ,'
      '    USUARIO ,'
      '    NATUREZA ,'
      '    NOME_NATUREZA ,'
      '    ENVIADA_CX ,'
      '    DATA_CAIXA,'
      '    FORMA_PGTO ,'
      '    NUM_NF ,'
      '    NUM_CUPOM ,'
      '    PROPRIEDADE ,'
      '    CONVENIADO ,'
      '    TIPO_DOCTO ,'
      '    LOCAL_COBRANCA ,'
      '    DESC_ACRES ,'
      '    ENTRADA ,'
      '    DINHEIRO ,'
      '    CHEQUE ,'
      '    CARTAO ,'
      '    TICKET ,'
      '    TOTAL ,'
      '    VLRLIQUIDO ,'
      '    OBSERVACAO ,'
      '    VLR_PARC_LC,'
      '    TERCEIRO ,'
      '    CARGA ,'
      '    VOLUME,'
      '    PESO,'
      '    REQUISICAO,'
      '    DESCRICAO ,'
      '    TIPO_VENDA ,'
      '    NOME_CONSUMIDOR ,'
      '    NOME_FORMA ,'
      '    FATURA_FUTURA ,'
      '    ORCAMENTO ,'
      '    VENDEDOR ,'
      '    NOME_VENDEDOR,'
      '    LOCAL,'
      '    CONTA_CAIXA, '
      '    CANCELADA, '
      '    BASE_ICM_SUBST , '
      '    VALOR_ICM_SUBST ,'
      '    FRETE ,  '
      '    SEGURO ,  '
      '    DESPESAS ,  '
      '    IPI , '
      '    TOTAL_NOTA,'
      '    SELECIONADA'
      
        'FROM VER_FAT_VENDAS_FATURA_FUTURAS ( :CNPJ, :DINI, :DFIM, :PESSO' +
        'A )'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 672
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA'
        ParamType = ptUnknown
      end>
    object SelListaFatura_FuturaCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDA"."CODIGO"'
      Required = True
    end
    object SelListaFatura_FuturaDATA: TDateTimeField
      Tag = 1
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_VENDA"."DATA"'
    end
    object SelListaFatura_FuturaFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object SelListaFatura_FuturaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDA"."HISTORICO"'
      Size = 100
    end
    object SelListaFatura_FuturaPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDA"."PESSOA_FJ"'
      Required = True
    end
    object SelListaFatura_FuturaUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDA"."USUARIO"'
      Required = True
    end
    object SelListaFatura_FuturaVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDA"."VENDEDOR"'
      Required = True
    end
    object SelListaFatura_FuturaNUM_NF: TIntegerField
      Tag = 1
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDA"."NUM_NF"'
    end
    object SelListaFatura_FuturaNUM_CUPOM: TIntegerField
      Tag = 1
      DisplayLabel = 'Cupom'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDA"."NUM_CUPOM"'
    end
    object SelListaFatura_FuturaNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDA"."NATUREZA"'
      Required = True
    end
    object SelListaFatura_FuturaTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"FAT_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object SelListaFatura_FuturaNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object SelListaFatura_FuturaORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object SelListaFatura_FuturaLOCAL: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"FAT_VENDAS"."LOCAL"'
    end
    object SelListaFatura_FuturaTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_VENDAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acres'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_VENDAS"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_VENDAS"."OBSERVACAO"'
      Size = 80
    end
    object SelListaFatura_FuturaPESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PESSOA_RAZAO"'
      Size = 50
    end
    object SelListaFatura_FuturaNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_NATUREZA"'
      Size = 50
    end
    object SelListaFatura_FuturaENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object SelListaFatura_FuturaFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FORMA_PGTO"'
    end
    object SelListaFatura_FuturaPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PROPRIEDADE"'
    end
    object SelListaFatura_FuturaCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CONVENIADO"'
    end
    object SelListaFatura_FuturaTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object SelListaFatura_FuturaLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."LOCAL_COBRANCA"'
    end
    object SelListaFatura_FuturaENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaVLRLIQUIDO: TIBBCDField
      DisplayLabel = 'Liqu'#237'do'
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VLR_PARC_LC"'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TERCEIRO"'
    end
    object SelListaFatura_FuturaCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CARGA"'
    end
    object SelListaFatura_FuturaVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PESO"'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaREQUISICAO: TIBStringField
      DisplayLabel = 'Requisi'#231#227'o'
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."REQUISICAO"'
      Size = 6
    end
    object SelListaFatura_FuturaDESCRICAO: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DESCRICAO"'
      Size = 8
    end
    object SelListaFatura_FuturaNOME_FORMA: TIBStringField
      DisplayLabel = 'Frm Pagto'
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_FORMA"'
      Size = 50
    end
    object SelListaFatura_FuturaFATURA_FUTURA: TIBStringField
      DisplayLabel = 'Fat. Fut'
      FieldName = 'FATURA_FUTURA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FATURA_FUTURA"'
      Size = 1
    end
    object SelListaFatura_FuturaNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object SelListaFatura_FuturaCONTA_CAIXA: TIntegerField
      DisplayLabel = 'Conta Caixa'
      FieldName = 'CONTA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CONTA_CAIXA"'
    end
    object SelListaFatura_FuturaCANCELADA: TIBStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object SelListaFatura_FuturaBASE_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Base Icms Subst'
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."BASE_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaVALOR_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Icms'
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VALOR_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaFRETE: TIBBCDField
      DisplayLabel = 'Frete'
      FieldName = 'FRETE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FRETE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaSEGURO: TIBBCDField
      DisplayLabel = 'Seguro'
      FieldName = 'SEGURO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."SEGURO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaDESPESAS: TIBBCDField
      DisplayLabel = 'Despesas'
      FieldName = 'DESPESAS'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DESPESAS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaIPI: TIBBCDField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaTOTAL_NOTA: TIBBCDField
      DisplayLabel = 'Total Nota'
      FieldName = 'TOTAL_NOTA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TOTAL_NOTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaDATA_CAIXA: TDateField
      DisplayLabel = 'Data Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DATA_CAIXA"'
    end
    object SelListaFatura_FuturaSELECIONADA: TIBStringField
      DisplayLabel = 'Sel'
      FieldName = 'SELECIONADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
  end
  object Consulta_Orcamento: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    PESSOA_FJ ,'
      '    CODIGO ,'
      '    DATA ,'
      '    TOTAL ,'
      '    OBSERVACAO ,'
      '    NOME_RAZAO ,'
      '    NOME_FORMA ,'
      '    NOME_VENDEDOR ,'
      '    VENDEDOR ,'
      '    VLR_TOTAL ,'
      '    DESC_ACRESC ,'
      '    DESC_ACRESC_2 ,'
      '    PESO ,'
      '    CLIENTE,'
      '    VOLUME ,'
      '    FORMA,'
      '    VALIDADE '
      'FROM VER_FAT_ORCAMENTOS ( :CNPJ,  :ORCAMENTO)')
    Left = 672
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ORCAMENTO'
        ParamType = ptUnknown
      end>
    object Consulta_OrcamentoPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_ORCAMENTOS"."PESSOA_FJ"'
    end
    object Consulta_OrcamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_ORCAMENTOS"."CODIGO"'
    end
    object Consulta_OrcamentoTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_ORCAMENTOS"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object Consulta_OrcamentoOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_ORCAMENTOS"."OBSERVACAO"'
      Size = 80
    end
    object Consulta_OrcamentoNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_FAT_ORCAMENTOS"."NOME_RAZAO"'
      Size = 50
    end
    object Consulta_OrcamentoNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_ORCAMENTOS"."NOME_FORMA"'
      Size = 50
    end
    object Consulta_OrcamentoNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_ORCAMENTOS"."NOME_VENDEDOR"'
      Size = 50
    end
    object Consulta_OrcamentoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_ORCAMENTOS"."VENDEDOR"'
    end
    object Consulta_OrcamentoVLR_TOTAL: TIBBCDField
      FieldName = 'VLR_TOTAL'
      Origin = '"VER_FAT_ORCAMENTOS"."VLR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_OrcamentoDESC_ACRESC: TIBBCDField
      FieldName = 'DESC_ACRESC'
      Origin = '"VER_FAT_ORCAMENTOS"."DESC_ACRESC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_OrcamentoPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_ORCAMENTOS"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_OrcamentoVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_ORCAMENTOS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_OrcamentoFORMA: TIntegerField
      FieldName = 'FORMA'
      Origin = '"VER_FAT_ORCAMENTOS"."FORMA"'
    end
    object Consulta_OrcamentoDESC_ACRESC_2: TIBBCDField
      FieldName = 'DESC_ACRESC_2'
      Origin = '"VER_FAT_ORCAMENTOS"."DESC_ACRESC_2"'
      Precision = 18
      Size = 4
    end
    object Consulta_OrcamentoCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"VER_FAT_ORCAMENTOS"."CLIENTE"'
      Size = 30
    end
    object Consulta_OrcamentoDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FAT_ORCAMENTOS"."DATA"'
    end
    object Consulta_OrcamentoVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
      Origin = '"VER_FAT_ORCAMENTOS"."VALIDADE"'
    end
  end
  object SelVeiculos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    *'
      'from VER_GLO_VEICULOS ( :CNPJ, :PESSOA_FJ )'
      'Where Ativo <> '#39'N'#39)
    Left = 672
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA_FJ'
        ParamType = ptUnknown
      end>
    object SelVeiculosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"VER_GLO_VEICULOS"."CODIGO"'
    end
    object SelVeiculosTIPO_VEICULO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VEICULO'
      Origin = '"VER_GLO_VEICULOS"."TIPO_VEICULO"'
    end
    object SelVeiculosMARCA_VEICULO: TIntegerField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA_VEICULO'
      Origin = '"VER_GLO_VEICULOS"."MARCA_VEICULO"'
    end
    object SelVeiculosMODELO: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Origin = '"VER_GLO_VEICULOS"."MODELO"'
      Size = 50
    end
    object SelVeiculosPLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"VER_GLO_VEICULOS"."PLACA"'
      EditMask = 'LLL-9999;1; '
      FixedChar = True
      Size = 8
    end
    object SelVeiculosKM_ATUAL: TIBBCDField
      DisplayLabel = 'Km Atual'
      FieldName = 'KM_ATUAL'
      Origin = '"VER_GLO_VEICULOS"."KM_ATUAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelVeiculosNOME_TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'NOME_TIPO'
      Origin = '"VER_GLO_VEICULOS"."NOME_TIPO"'
      Size = 50
    end
    object SelVeiculosNOME_MARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOME_MARCA'
      Origin = '"VER_GLO_VEICULOS"."NOME_MARCA"'
      Size = 50
    end
    object SelVeiculosMOTORISTA: TIBStringField
      DisplayLabel = 'Motorista'
      FieldName = 'MOTORISTA'
      Origin = '"VER_GLO_VEICULOS"."MOTORISTA"'
      Size = 50
    end
    object SelVeiculosATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"VER_GLO_VEICULOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object SelVeiculosCOD_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'COD_CLIENTE'
      Origin = '"VER_GLO_VEICULOS"."COD_CLIENTE"'
    end
    object SelVeiculosNOME_RAZAO: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_GLO_VEICULOS"."NOME_RAZAO"'
      Size = 50
    end
    object SelVeiculosCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CGC'
      Origin = '"VER_GLO_VEICULOS"."CPF_CGC"'
      Size = 14
    end
  end
  object Empresa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'select CNPJ, '
      '          PDV_MSG1, '
      '          PDV_MSG2, '
      '          PDV_MSG3, '
      '          PDV_MSG4, '
      '          PDV_MSG5, '
      '          MENS_ECF, '
      '          FONE, '
      '          FAX '
      'from SIS_EMPRESAS'
      'WHERE CNPJ = :CNPJ')
    Left = 144
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object EmpresaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object EmpresaPDV_MSG1: TIBStringField
      FieldName = 'PDV_MSG1'
      Origin = '"SIS_EMPRESAS"."PDV_MSG1"'
      Size = 80
    end
    object EmpresaPDV_MSG2: TIBStringField
      FieldName = 'PDV_MSG2'
      Origin = '"SIS_EMPRESAS"."PDV_MSG2"'
      Size = 80
    end
    object EmpresaPDV_MSG3: TIBStringField
      FieldName = 'PDV_MSG3'
      Origin = '"SIS_EMPRESAS"."PDV_MSG3"'
      Size = 80
    end
    object EmpresaPDV_MSG4: TIBStringField
      FieldName = 'PDV_MSG4'
      Origin = '"SIS_EMPRESAS"."PDV_MSG4"'
      Size = 80
    end
    object EmpresaPDV_MSG5: TIBStringField
      FieldName = 'PDV_MSG5'
      Origin = '"SIS_EMPRESAS"."PDV_MSG5"'
      Size = 80
    end
    object EmpresaMENS_ECF: TIBStringField
      FieldName = 'MENS_ECF'
      Origin = '"SIS_EMPRESAS"."MENS_ECF"'
      Size = 80
    end
    object EmpresaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"SIS_EMPRESAS"."FONE"'
    end
    object EmpresaFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"SIS_EMPRESAS"."FAX"'
    end
  end
  object SelConta: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select '
      '          AGENCIA, '
      '          BANCO, '
      '          CONTA,'
      '          NOME_BANCO,'
      '          DV_AGENCIA,'
      '          DV_CONTA '
      'from VER_CONTAS_PESSOAS( :CNPJ, :PESSOA_FJ )')
    Left = 672
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA_FJ'
        ParamType = ptUnknown
      end>
    object SelContaAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"GLO_CONTAS_PESSOAS"."AGENCIA"'
      Required = True
      Size = 15
    end
    object SelContaBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"GLO_CONTAS_PESSOAS"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SelContaCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"GLO_CONTAS_PESSOAS"."CONTA"'
      Required = True
      Size = 15
    end
    object SelContaNOME_BANCO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_BANCO'
      Origin = '"VER_CONTAS_PESSOAS"."NOME_BANCO"'
      Size = 50
    end
    object SelContaDV_AGENCIA: TIBStringField
      DisplayLabel = 'Dv'
      FieldName = 'DV_AGENCIA'
      Origin = '"VER_CONTAS_PESSOAS"."DV_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object SelContaDV_CONTA: TIBStringField
      DisplayLabel = 'Dv'
      FieldName = 'DV_CONTA'
      Origin = '"VER_CONTAS_PESSOAS"."DV_CONTA"'
      FixedChar = True
      Size = 1
    end
  end
  object Contas_Pessoas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = Contas_PessoasBeforeOpen
    DeleteSQL.Strings = (
      'delete from GLO_CONTAS_PESSOAS'
      'where'
      '  AGENCIA = :OLD_AGENCIA and'
      '  BANCO = :OLD_BANCO and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into GLO_CONTAS_PESSOAS'
      '  (AGENCIA, BANCO, CNPJ, CONTA, PESSOA_FJ, DV_AGENCIA, DV_CONTA)'
      'values'
      
        '  (:AGENCIA, :BANCO, :CNPJ, :CONTA, :PESSOA_FJ, :DV_AGENCIA, :DV' +
        '_CONTA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  BANCO,'
      '  AGENCIA,'
      '  CONTA,'
      '  DV_AGENCIA,'
      '  DV_CONTA'
      'from GLO_CONTAS_PESSOAS '
      'where'
      '  AGENCIA = :AGENCIA and'
      '  BANCO = :BANCO and'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'select '
      '          AGENCIA, '
      '          BANCO, '
      '          CNPJ, '
      '          CONTA, '
      '          PESSOA_FJ,'
      '          DV_AGENCIA,'
      '          DV_CONTA '
      'from GLO_CONTAS_PESSOAS'
      'where CNPJ = :CNPJ AND Pessoa_Fj = :CODIGO')
    ModifySQL.Strings = (
      'update GLO_CONTAS_PESSOAS'
      'set'
      '  AGENCIA = :AGENCIA,'
      '  BANCO = :BANCO,'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  DV_AGENCIA = :DV_AGENCIA,'
      '  DV_CONTA = :DV_CONTA'
      'where'
      '  AGENCIA = :OLD_AGENCIA and'
      '  BANCO = :OLD_BANCO and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    Left = 488
    Top = 296
    object Contas_PessoasAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"GLO_CONTAS_PESSOAS"."AGENCIA"'
      Required = True
      EditMask = '####-#;1; '
      Size = 15
    end
    object Contas_PessoasBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"GLO_CONTAS_PESSOAS"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Contas_PessoasCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_CONTAS_PESSOAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Contas_PessoasCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"GLO_CONTAS_PESSOAS"."CONTA"'
      Required = True
      Size = 15
    end
    object Contas_PessoasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CONTAS_PESSOAS"."PESSOA_FJ"'
      Required = True
    end
    object Contas_PessoasDV_AGENCIA: TIBStringField
      DisplayLabel = 'Dv'
      FieldName = 'DV_AGENCIA'
      Origin = '"GLO_CONTAS_PESSOAS"."DV_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object Contas_PessoasDV_CONTA: TIBStringField
      DisplayLabel = 'Dv'
      FieldName = 'DV_CONTA'
      Origin = '"GLO_CONTAS_PESSOAS"."DV_CONTA"'
      FixedChar = True
      Size = 1
    end
  end
  object Vendas_Formas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    OnCalcFields = Vendas_FormasCalcFields
    SQL.Strings = (
      'SELECT'
      '    FORMA_PGTO ,'
      '    SEQUENCIA ,'
      '    VALOR_ORIGINAL ,'
      '    JUROS ,'
      '    TIPO_PAGTO ,'
      '    NOME_FORMA ,'
      '    BANCO, '
      '    CONTA, '
      '    DV_CONTA,'
      '    AGENCIA, '
      '    DV_AGENCIA, '
      '    CHEQUE, '
      '    DV_CHEQUE,'
      '    AVISTA'
      'FROM VER_FAT_VENDAS_FRMPAGTO ( :CNPJ, :CODIGO )')
    Left = 144
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Vendas_FormasFORMA_PGTO: TIntegerField
      DisplayLabel = 'Forma'
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."FORMA_PGTO"'
    end
    object Vendas_FormasSEQUENCIA: TIntegerField
      DisplayLabel = 'Sequencia'
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."SEQUENCIA"'
    end
    object Vendas_FormasVALOR_ORIGINAL: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."VALOR_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_FormasJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_FormasTIPO_PAGTO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_PAGTO'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."TIPO_PAGTO"'
      Size = 30
    end
    object Vendas_FormasNOME_FORMA: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."NOME_FORMA"'
      Size = 30
    end
    object Vendas_FormasTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_FormasBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object Vendas_FormasCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."CONTA"'
    end
    object Vendas_FormasDV_CONTA: TIBStringField
      DisplayLabel = 'Dv Conta'
      FieldName = 'DV_CONTA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."DV_CONTA"'
      FixedChar = True
      Size = 1
    end
    object Vendas_FormasAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."AGENCIA"'
      Size = 6
    end
    object Vendas_FormasDV_AGENCIA: TIBStringField
      DisplayLabel = 'Dv Ag'#234'ncia'
      FieldName = 'DV_AGENCIA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."DV_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object Vendas_FormasCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."CHEQUE"'
      Size = 6
    end
    object Vendas_FormasDV_CHEQUE: TIBStringField
      DisplayLabel = 'Dv Cheque'
      FieldName = 'DV_CHEQUE'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."DV_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object Vendas_FormasAVISTA: TIBStringField
      DisplayLabel = #193' Vista'
      FieldName = 'AVISTA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO"."AVISTA"'
      FixedChar = True
      Size = 1
    end
  end
  object Valida_Forma: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select '
      '          ACRESCIMO, '
      '          AVISTA, '
      '          CNPJ, '
      '          CODIGO, '
      '          COMENTRADA, '
      '          DESCONTO, '
      '          FATURA_FUTURA, '
      '          FORMA_ECF, '
      '          INTERVALO, '
      '          NOME, '
      '          NPARCELAS, '
      '          TIPO_PAGAMENTO '
      'from FIN_FORMAS_PAGTO'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO'
      'AND ATIVO = '#39'S'#39)
    Left = 672
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Valida_FormaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Origin = '"FIN_FORMAS_PAGTO"."ACRESCIMO"'
      Required = True
    end
    object Valida_FormaAVISTA: TIBStringField
      FieldName = 'AVISTA'
      Origin = '"FIN_FORMAS_PAGTO"."AVISTA"'
      FixedChar = True
      Size = 1
    end
    object Valida_FormaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_FORMAS_PAGTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Valida_FormaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_FORMAS_PAGTO"."CODIGO"'
      Required = True
    end
    object Valida_FormaCOMENTRADA: TIBStringField
      FieldName = 'COMENTRADA'
      Origin = '"FIN_FORMAS_PAGTO"."COMENTRADA"'
      FixedChar = True
      Size = 1
    end
    object Valida_FormaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"FIN_FORMAS_PAGTO"."DESCONTO"'
      Required = True
    end
    object Valida_FormaFATURA_FUTURA: TIBStringField
      FieldName = 'FATURA_FUTURA'
      Origin = '"FIN_FORMAS_PAGTO"."FATURA_FUTURA"'
      FixedChar = True
      Size = 1
    end
    object Valida_FormaFORMA_ECF: TIBStringField
      FieldName = 'FORMA_ECF'
      Origin = '"FIN_FORMAS_PAGTO"."FORMA_ECF"'
      Size = 30
    end
    object Valida_FormaINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = '"FIN_FORMAS_PAGTO"."INTERVALO"'
    end
    object Valida_FormaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_FORMAS_PAGTO"."NOME"'
      Required = True
      Size = 50
    end
    object Valida_FormaNPARCELAS: TIntegerField
      FieldName = 'NPARCELAS'
      Origin = '"FIN_FORMAS_PAGTO"."NPARCELAS"'
      Required = True
    end
    object Valida_FormaTIPO_PAGAMENTO: TIBStringField
      FieldName = 'TIPO_PAGAMENTO'
      Origin = '"FIN_FORMAS_PAGTO"."TIPO_PAGAMENTO"'
      Size = 30
    end
  end
  object Vendas_FrmPagto_Agrupadas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    VALOR_ORIGINAL ,'
      '    JUROS ,'
      '    TIPO_PAGTO '
      'FROM VENDAS_FRMPAGTO_AGRUPADAS ( :CNPJ, :CODIGO )')
    Left = 592
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Vendas_FrmPagto_AgrupadasVALOR_ORIGINAL: TIBBCDField
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"VENDAS_FRMPAGTO_AGRUPADAS"."VALOR_ORIGINAL"'
      Precision = 18
      Size = 4
    end
    object Vendas_FrmPagto_AgrupadasJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"VENDAS_FRMPAGTO_AGRUPADAS"."JUROS"'
      Precision = 18
      Size = 4
    end
    object Vendas_FrmPagto_AgrupadasTIPO_PAGTO: TIBStringField
      FieldName = 'TIPO_PAGTO'
      Origin = '"VENDAS_FRMPAGTO_AGRUPADAS"."TIPO_PAGTO"'
      Size = 30
    end
  end
  object Valida_Pessoa_Fj: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    NOME,'
      '    UF,'
      '    CPF_CNPJ,'
      '    OBS,'
      '    OBS2,'
      '    CLASSIFICACAO'
      'from VALIDA_PESSOA_FJ'
      '( :CNPJ, :CODIGO )')
    Left = 488
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Valida_Pessoa_FjNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VALIDA_PESSOA_FJ"."NOME"'
      Size = 50
    end
    object Valida_Pessoa_FjUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VALIDA_PESSOA_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object Valida_Pessoa_FjCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"VALIDA_PESSOA_FJ"."CPF_CNPJ"'
      Size = 15
    end
    object Valida_Pessoa_FjOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VALIDA_PESSOA_FJ"."OBS"'
      Size = 8
    end
    object Valida_Pessoa_FjOBS2: TBlobField
      FieldName = 'OBS2'
      Origin = '"VALIDA_PESSOA_FJ"."OBS2"'
      Size = 8
    end
    object Valida_Pessoa_FjCLASSIFICACAO: TIntegerField
      FieldName = 'CLASSIFICACAO'
      Origin = '"VALIDA_PESSOA_FJ"."CLASSIFICACAO"'
    end
  end
  object SelTransportadora: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME ,'
      '          PLACA, '
      '          UF, '
      '          CPF_CNPJ, '
      '          ENDERECO, '
      '          CIDADE, '
      '          IE'
      'from GLO_TRANSPORTADORAS'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    Left = 392
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelTransportadoraCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_TRANSPORTADORAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelTransportadoraCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_TRANSPORTADORAS"."CODIGO"'
      Required = True
    end
    object SelTransportadoraNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_TRANSPORTADORAS"."NOME"'
      Required = True
      Size = 50
    end
    object SelTransportadoraPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"GLO_TRANSPORTADORAS"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object SelTransportadoraUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_TRANSPORTADORAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelTransportadoraCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"GLO_TRANSPORTADORAS"."CPF_CNPJ"'
      Size = 15
    end
    object SelTransportadoraENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"GLO_TRANSPORTADORAS"."ENDERECO"'
      Size = 50
    end
    object SelTransportadoraCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"GLO_TRANSPORTADORAS"."CIDADE"'
      Size = 50
    end
    object SelTransportadoraIE: TIBStringField
      FieldName = 'IE'
      Origin = '"GLO_TRANSPORTADORAS"."IE"'
      Size = 15
    end
  end
  object Trocas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    AfterInsert = TrocasAfterInsert
    BeforeOpen = VendasBeforeOpen
    BeforePost = TrocasBeforePost
    OnCalcFields = TrocasCalcFields
    OnNewRecord = TrocasNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_TROCAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_TROCAS'
      
        '  (CNPJ, CODIGO, DATA, DESC_ACRESC, DESC_ACRESC_2, FECHADO, FORM' +
        'A_PGTO, '
      
        '   NOME_CONSUMIDOR, OBSERVACAO, PESSOA_FJ, TOTAL, USUARIO, DATA_' +
        'CAIXA, '
      
        '   VENDEDOR, NOME, VALIDADE, TOTAL_2, CLIENTE, NOME_VENDEDOR, EN' +
        'VIADA_CX, '
      
        '   NOME_FORMA, ENTRADA, TIPO_DOCTO, LOCAL_COBRANCA, VLR_PARC_LC,' +
        ' PGTO_AVISTA, '
      '   CANCELADA, DINHEIRO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :DESC_ACRESC, :DESC_ACRESC_2, :FECHADO' +
        ', :FORMA_PGTO, '
      
        '   :NOME_CONSUMIDOR, :OBSERVACAO, :PESSOA_FJ, :TOTAL, :USUARIO, ' +
        ':DATA_CAIXA, '
      
        '   :VENDEDOR, :NOME, :VALIDADE, :TOTAL_2, :CLIENTE, :NOME_VENDED' +
        'OR, :ENVIADA_CX, '
      
        '   :NOME_FORMA, :ENTRADA, :TIPO_DOCTO, :LOCAL_COBRANCA, :VLR_PAR' +
        'C_LC, :PGTO_AVISTA, '
      '   :CANCELADA, :DINHEIRO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  PESSOA_FJ,'
      '  USUARIO,'
      '  VENDEDOR,'
      '  FORMA_PGTO,'
      '  OBSERVACAO,'
      '  NOME_CONSUMIDOR,'
      '  TOTAL,'
      '  FECHADO,'
      '  DESC_ACRESC,'
      '  PESO,'
      '  VOLUME,'
      '  NOME,'
      '  VALIDADE,'
      '  TOTAL_2,'
      '  DESC_ACRESC_2,'
      '  CLIENTE,'
      '  ENVIADA_CX,'
      '  DATA_CAIXA,'
      '  NOME_VENDEDOR,'
      '  NOME_FORMA,'
      '  ENTRADA,'
      '  TIPO_DOCTO,'
      '  LOCAL_COBRANCA,'
      '  VLR_PARC_LC,'
      '  PGTO_AVISTA,'
      '  CONTA_CAIXA,'
      '  DINHEIRO,'
      '  CARTAO,'
      '  CHEQUE,'
      '  TICKET,'
      '  CANCELADA,'
      '  DATA_CANCELAMENTO,'
      '  TURNO'
      'from FAT_TROCAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select'
      '      CNPJ, '
      '      CODIGO, '
      '      DATA, '
      '      DESC_ACRESC, '
      '      DESC_ACRESC_2, '
      '      FECHADO, '
      '      FORMA_PGTO, '
      '      NOME_CONSUMIDOR, '
      '      OBSERVACAO,       '
      '      PESSOA_FJ, '
      '      TOTAL, '
      '      USUARIO,       '
      '      DATA_CAIXA,'
      '      VENDEDOR,'
      '      NOME,'
      '      VALIDADE,'
      '      TOTAL_2,'
      '      CLIENTE,'
      '      NOME_VENDEDOR,'
      '      ENVIADA_CX,'
      '      NOME_FORMA,'
      '      ENTRADA,'
      '      TIPO_DOCTO,'
      '      LOCAL_COBRANCA,'
      '      VLR_PARC_LC,'
      '      PGTO_AVISTA,'
      '      CANCELADA,'
      '      DINHEIRO'
      'from FAT_TROCAS'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    ModifySQL.Strings = (
      'update FAT_TROCAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DESC_ACRESC = :DESC_ACRESC,'
      '  DESC_ACRESC_2 = :DESC_ACRESC_2,'
      '  FECHADO = :FECHADO,'
      '  FORMA_PGTO = :FORMA_PGTO,'
      '  NOME_CONSUMIDOR = :NOME_CONSUMIDOR,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  TOTAL = :TOTAL,'
      '  USUARIO = :USUARIO,'
      '  DATA_CAIXA = :DATA_CAIXA,'
      '  VENDEDOR = :VENDEDOR,'
      '  NOME = :NOME,'
      '  VALIDADE = :VALIDADE,'
      '  TOTAL_2 = :TOTAL_2,'
      '  CLIENTE = :CLIENTE,'
      '  NOME_VENDEDOR = :NOME_VENDEDOR,'
      '  ENVIADA_CX = :ENVIADA_CX,'
      '  NOME_FORMA = :NOME_FORMA,'
      '  ENTRADA = :ENTRADA,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  LOCAL_COBRANCA = :LOCAL_COBRANCA,'
      '  VLR_PARC_LC = :VLR_PARC_LC,'
      '  PGTO_AVISTA = :PGTO_AVISTA,'
      '  CANCELADA = :CANCELADA,'
      '  DINHEIRO = :DINHEIRO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 48
    Top = 384
    object TrocasCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_ORCAMENTOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object TrocasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_ORCAMENTOS"."CODIGO"'
      Required = True
    end
    object TrocasFORMA_PGTO: TIntegerField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'FORMA_PGTO'
      Origin = '"FAT_ORCAMENTOS"."FORMA_PGTO"'
      OnValidate = TrocasFORMA_PGTOValidate
    end
    object TrocasOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"FAT_ORCAMENTOS"."OBSERVACAO"'
      Size = 80
    end
    object TrocasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_ORCAMENTOS"."PESSOA_FJ"'
      Required = True
      OnValidate = TrocasPESSOA_FJValidate
    end
    object TrocasNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_ORCAMENTOS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object TrocasUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_ORCAMENTOS"."USUARIO"'
      Required = True
    end
    object TrocasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_ORCAMENTOS"."VENDEDOR"'
      Required = True
      OnValidate = TrocasVENDEDORValidate
    end
    object TrocasDESC_ACRESC: TFloatField
      DisplayLabel = 'Desc/Acresc Ent'
      FieldName = 'DESC_ACRESC'
      Origin = '"FAT_ORCAMENTOS"."DESC_ACRESC"'
      DisplayFormat = '###,###,##0.00'
    end
    object TrocasTOTAL: TFloatField
      DisplayLabel = 'Total Ent'
      FieldName = 'TOTAL'
      Origin = '"FAT_ORCAMENTOS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object TrocasFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"FAT_ORCAMENTOS"."FECHADO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object TrocasGERAL: TFloatField
      DisplayLabel = 'Geral Ent'
      FieldKind = fkCalculated
      FieldName = 'GERAL'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object TrocasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_ORCAMENTOS"."NOME"'
      Size = 50
    end
    object TrocasVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'VALIDADE'
      Origin = '"FAT_ORCAMENTOS"."VALIDADE"'
    end
    object TrocasTOTAL_2: TFloatField
      DisplayLabel = 'Total Sai'
      FieldName = 'TOTAL_2'
      Origin = '"FAT_ORCAMENTOS"."TOTAL_2"'
      DisplayFormat = '###,###,##0.00'
    end
    object TrocasGeral2: TFloatField
      DisplayLabel = 'Geral Sai'
      FieldKind = fkCalculated
      FieldName = 'Geral2'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object TrocasCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"FAT_ORCAMENTOS"."CLIENTE"'
      Size = 30
    end
    object TrocasDESC_ACRESC_2: TFloatField
      DisplayLabel = 'Desc/Acresc Sai'
      FieldName = 'DESC_ACRESC_2'
      Origin = '"FAT_ORCAMENTOS"."DESC_ACRESC_2"'
      DisplayFormat = '###,###,##0.00'
    end
    object TrocasDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Data Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"FAT_TROCAS"."DATA_CAIXA"'
    end
    object TrocasLiquido: TFloatField
      DisplayLabel = 'L'#237'quido'
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object TrocasNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_TROCAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object TrocasENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"FAT_TROCAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object TrocasNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"FAT_TROCAS"."NOME_FORMA"'
      Size = 50
    end
    object TrocasENTRADA: TFloatField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"FAT_TROCAS"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
    end
    object TrocasTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"FAT_TROCAS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object TrocasLOCAL_COBRANCA: TIntegerField
      DisplayLabel = 'Local Cobran'#231'a'
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"FAT_TROCAS"."LOCAL_COBRANCA"'
    end
    object TrocasVLR_PARC_LC: TFloatField
      DisplayLabel = 'Vlr Parcelas'
      FieldName = 'VLR_PARC_LC'
      Origin = '"FAT_TROCAS"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
    end
    object TrocasTotal_Parcelar: TFloatField
      DisplayLabel = 'Total Parcelar'
      FieldKind = fkCalculated
      FieldName = 'Total_Parcelar'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object TrocasDiferenca: TFloatField
      DisplayLabel = 'Diferen'#231'a'
      FieldKind = fkCalculated
      FieldName = 'Diferenca'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object TrocasAVista: TFloatField
      DisplayLabel = #193' Vista'
      FieldKind = fkCalculated
      FieldName = 'AVista'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object TrocasPGTO_AVISTA: TIBStringField
      FieldName = 'PGTO_AVISTA'
      Origin = '"FAT_TROCAS"."PGTO_AVISTA"'
      FixedChar = True
      Size = 1
    end
    object TrocasCANCELADA: TIBStringField
      FieldName = 'CANCELADA'
      Origin = '"FAT_TROCAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object TrocasDINHEIRO: TFloatField
      FieldName = 'DINHEIRO'
      Origin = '"FAT_TROCAS"."DINHEIRO"'
    end
    object TrocasDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_TROCAS"."DATA"'
    end
  end
  object Trocas_Itens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    OnCalcFields = Trocas_ItensCalcFields
    OnNewRecord = Trocas_ItensNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_TROCAS_ITENS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into FAT_TROCAS_ITENS'
      
        '  (CNPJ, CODIGO, DESCONTO, GRADE, ICM, ICM_SUBS, IPI, MARCA, NOM' +
        'E_PRODUTO, '
      
        '   NUMERO, PESO, PORC_DESC, PRC_CUSTO, PRC_UNIT_ORIGINAL, PRC_UN' +
        'ITARIO, '
      
        '   PRODUTO, QUANTIDADE, SEQUENCIA, SPRODUTO, SUBUNIDADE, TIPO, U' +
        'NIDADE, '
      '   VOLUME)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DESCONTO, :GRADE, :ICM, :ICM_SUBS, :IPI, :MA' +
        'RCA, :NOME_PRODUTO, '
      
        '   :NUMERO, :PESO, :PORC_DESC, :PRC_CUSTO, :PRC_UNIT_ORIGINAL, :' +
        'PRC_UNITARIO, '
      
        '   :PRODUTO, :QUANTIDADE, :SEQUENCIA, :SPRODUTO, :SUBUNIDADE, :T' +
        'IPO, :UNIDADE, '
      '   :VOLUME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  PRODUTO,'
      '  SEQUENCIA,'
      '  QUANTIDADE,'
      '  PRC_UNITARIO,'
      '  PRC_CUSTO,'
      '  ICM,'
      '  ICM_SUBS,'
      '  IPI,'
      '  VOLUME,'
      '  PESO,'
      '  DESCONTO,'
      '  PORC_DESC,'
      '  UNIDADE,'
      '  PRC_UNIT_ORIGINAL,'
      '  NOME_PRODUTO,'
      '  SUBUNIDADE,'
      '  MARCA,'
      '  TIPO,'
      '  NUMERO,'
      '  GRADE,'
      '  COM_GERADA,'
      '  CUSTO_MEDIO,'
      '  LUCRO_ITEM,'
      '  SPRODUTO'
      'from FAT_TROCAS_ITENS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  PRODUTO = :PRODUTO and'
      '  SEQUENCIA = :SEQUENCIA')
    SelectSQL.Strings = (
      'select  CNPJ, '
      '           CODIGO, '
      '           DESCONTO, '
      '           ICM, '
      '           ICM_SUBS, '
      '           IPI, '
      '           NOME_PRODUTO, '
      '           PESO, '
      '           PORC_DESC, '
      '           PRC_CUSTO, '
      '           PRC_UNIT_ORIGINAL, '
      '           PRC_UNITARIO, '
      '           PRODUTO, '
      '           QUANTIDADE, '
      '           SEQUENCIA, '
      '           UNIDADE, '
      '           VOLUME,'
      '           SUBUNIDADE,'
      '           MARCA,'
      '           TIPO,'
      '            NUMERO,'
      '            GRADE,'
      '            SPRODUTO'
      'from FAT_TROCAS_ITENS'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_TROCAS_ITENS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DESCONTO = :DESCONTO,'
      '  GRADE = :GRADE,'
      '  ICM = :ICM,'
      '  ICM_SUBS = :ICM_SUBS,'
      '  IPI = :IPI,'
      '  MARCA = :MARCA,'
      '  NOME_PRODUTO = :NOME_PRODUTO,'
      '  NUMERO = :NUMERO,'
      '  PESO = :PESO,'
      '  PORC_DESC = :PORC_DESC,'
      '  PRC_CUSTO = :PRC_CUSTO,'
      '  PRC_UNIT_ORIGINAL = :PRC_UNIT_ORIGINAL,'
      '  PRC_UNITARIO = :PRC_UNITARIO,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  SPRODUTO = :SPRODUTO,'
      '  SUBUNIDADE = :SUBUNIDADE,'
      '  TIPO = :TIPO,'
      '  UNIDADE = :UNIDADE,'
      '  VOLUME = :VOLUME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    DataSource = DsTrocas
    Left = 48
    Top = 432
    object Trocas_ItensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Trocas_ItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO"'
      Required = True
    end
    object Trocas_ItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      Required = True
      OnValidate = Trocas_ItensPRODUTOValidate
      Size = 15
    end
    object Trocas_ItensSEQUENCIA: TSmallintField
      DisplayLabel = 'Seq'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object Trocas_ItensPRC_UNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Trocas_ItensPRC_CUSTO: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Trocas_ItensQUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
    end
    object Trocas_ItensICM: TFloatField
      DisplayLabel = 'Icm'
      FieldName = 'ICM'
      Origin = '"FAT_VENDAS_ITENS"."ICM"'
      DisplayFormat = '###,###,##0.00'
    end
    object Trocas_ItensICM_SUBS: TFloatField
      DisplayLabel = 'Subst'
      FieldName = 'ICM_SUBS'
      Origin = '"FAT_VENDAS_ITENS"."ICM_SUBS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Trocas_ItensIPI: TFloatField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"FAT_VENDAS_ITENS"."IPI"'
      DisplayFormat = '###,###,##0.00'
    end
    object Trocas_ItensVOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS_ITENS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
    end
    object Trocas_ItensPESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS_ITENS"."PESO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Trocas_ItensDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"FAT_VENDAS_ITENS"."DESCONTO"'
      OnValidate = Trocas_ItensDESCONTOValidate
      DisplayFormat = '###,###,##0.00'
    end
    object Trocas_ItensPORC_DESC: TFloatField
      DisplayLabel = 'Porc. Desc'
      FieldName = 'PORC_DESC'
      Origin = '"FAT_VENDAS_ITENS"."PORC_DESC"'
      OnValidate = Trocas_ItensDESCONTOValidate
      DisplayFormat = '% ##0.00'
    end
    object Trocas_ItensUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."UNIDADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object Trocas_ItensPRC_UNIT_ORIGINAL: TFloatField
      DisplayLabel = 'Unit. Orig'
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object Trocas_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Trocas_ItensPeso_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Peso_Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Trocas_ItensVolume_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Volume_Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Trocas_ItensNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_ORCAMENTOS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Trocas_ItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"FAT_ORCAMENTOS_ITENS"."SUBUNIDADE"'
    end
    object Trocas_ItensMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = '"FAT_ORCAMENTOS_ITENS"."MARCA"'
      Size = 30
    end
    object Trocas_ItensTIPO: TIBStringField
      DisplayLabel = 'E/S'
      FieldName = 'TIPO'
      Origin = '"FAT_TROCAS_ITENS"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object Trocas_ItensNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"FAT_TROCAS_ITENS"."NUMERO"'
      OnValidate = Trocas_ItensNUMEROValidate
      Size = 6
    end
    object Trocas_ItensGRADE: TIBStringField
      FieldName = 'GRADE'
      Origin = '"FAT_TROCAS_ITENS"."GRADE"'
      OnValidate = Trocas_ItensGRADEValidate
      FixedChar = True
      Size = 4
    end
    object Trocas_ItensSPRODUTO: TIBStringField
      FieldName = 'SPRODUTO'
      Origin = '"FAT_TROCAS_ITENS"."SPRODUTO"'
      OnSetText = Trocas_ItensSPRODUTOSetText
      Size = 16
    end
  end
  object DsTrocas: TDataSource
    AutoEdit = False
    DataSet = Trocas
    Left = 48
    Top = 648
  end
  object Trocas_Parc: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    AfterPost = Trocas_ParcAfterPost
    BeforeOpen = FiltrarDataSet
    BeforePost = Trocas_ParcBeforePost
    OnNewRecord = Trocas_ParcNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_TROCAS_PARCELAMENTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  VENCTO = :OLD_VENCTO')
    InsertSQL.Strings = (
      'insert into FAT_TROCAS_PARCELAMENTO'
      '  (CNPJ, BOLETO, CODIGO, PARCELA, VALOR, VENCTO)'
      'values'
      '  (:CNPJ, :BOLETO, :CODIGO, :PARCELA, :VALOR, :VENCTO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  VENCTO,'
      '  PARCELA,'
      '  VALOR,'
      '  BOLETO'
      'from FAT_TROCAS_PARCELAMENTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  VENCTO = :VENCTO')
    SelectSQL.Strings = (
      'select CNPJ,'
      '          BOLETO,  '
      '          CODIGO, '
      '          PARCELA, '
      '          VALOR, '
      '          VENCTO '
      'from FAT_TROCAS_PARCELAMENTO'
      'WHERE CNPJ = :CNPJ AND'
      '               CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_TROCAS_PARCELAMENTO'
      'set'
      '  CNPJ = :CNPJ,'
      '  BOLETO = :BOLETO,'
      '  CODIGO = :CODIGO,'
      '  PARCELA = :PARCELA,'
      '  VALOR = :VALOR,'
      '  VENCTO = :VENCTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  VENCTO = :OLD_VENCTO')
    DataSource = DsTrocas
    Left = 216
    Top = 576
    object Trocas_ParcCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Trocas_ParcCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."CODIGO"'
      Required = True
    end
    object Trocas_ParcVENCTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'VENCTO'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."VENCTO"'
      EditMask = '!99/99/9999;1; '
    end
    object Trocas_ParcPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."PARCELA"'
      Size = 6
    end
    object Trocas_ParcVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object Trocas_ParcBOLETO: TIntegerField
      FieldName = 'BOLETO'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."BOLETO"'
    end
  end
  object Consulta_Troca: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Consulta_TrocaCalcFields
    SQL.Strings = (
      'SELECT'
      '    PESSOA_FJ,'
      '    NOME,'
      '    CODIGO,'
      '    DATA,'
      '    TOTAL,'
      '    FECHADO,'
      '    VENDEDOR,'
      '    USUARIO,'
      '    NOME_CONSUMIDOR,'
      '    OBSERVACAO,'
      '    FORMA_PGTO,'
      '    CARTAO,'
      '    CHEQUE,'
      '    DESC_ACRESC,'
      '    DESC_ACRESC_2,'
      '    DINHEIRO,'
      '    ENTRADA,'
      '    TICKET,'
      '    LOCAL_COBRANCA,'
      '    TIPO_DOCTO,'
      '    NOME_VENDEDOR,'
      '    VLR_TOTAL,'
      '    NOME_FORMA ,'
      '    NOME_DOCUMENTO,'
      '    NOME_LOCAL ,'
      '    TOTAL_2'
      'FROM CONSULTA_TROCA ( :CNPJ, :CODIGO )')
    Left = 752
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Consulta_TrocaPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"CONSULTA_TROCA"."PESSOA_FJ"'
    end
    object Consulta_TrocaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CONSULTA_TROCA"."NOME"'
      Size = 50
    end
    object Consulta_TrocaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CONSULTA_TROCA"."CODIGO"'
    end
    object Consulta_TrocaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"CONSULTA_TROCA"."DATA"'
    end
    object Consulta_TrocaTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"CONSULTA_TROCA"."TOTAL"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_TrocaFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"CONSULTA_TROCA"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object Consulta_TrocaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"CONSULTA_TROCA"."VENDEDOR"'
    end
    object Consulta_TrocaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"CONSULTA_TROCA"."USUARIO"'
    end
    object Consulta_TrocaNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"CONSULTA_TROCA"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Consulta_TrocaOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"CONSULTA_TROCA"."OBSERVACAO"'
      Size = 80
    end
    object Consulta_TrocaFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"CONSULTA_TROCA"."FORMA_PGTO"'
    end
    object Consulta_TrocaCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"CONSULTA_TROCA"."CARTAO"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_TrocaCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"CONSULTA_TROCA"."CHEQUE"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_TrocaDESC_ACRESC: TIBBCDField
      FieldName = 'DESC_ACRESC'
      Origin = '"CONSULTA_TROCA"."DESC_ACRESC"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_TrocaDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"CONSULTA_TROCA"."DINHEIRO"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_TrocaENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"CONSULTA_TROCA"."ENTRADA"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_TrocaTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"CONSULTA_TROCA"."TICKET"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_TrocaLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"CONSULTA_TROCA"."LOCAL_COBRANCA"'
    end
    object Consulta_TrocaTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"CONSULTA_TROCA"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Consulta_TrocaNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"CONSULTA_TROCA"."NOME_VENDEDOR"'
      Size = 50
    end
    object Consulta_TrocaVLR_TOTAL: TIBBCDField
      FieldName = 'VLR_TOTAL'
      Origin = '"CONSULTA_TROCA"."VLR_TOTAL"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_TrocaNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"CONSULTA_TROCA"."NOME_FORMA"'
      Size = 50
    end
    object Consulta_TrocaNOME_DOCUMENTO: TIBStringField
      FieldName = 'NOME_DOCUMENTO'
      Origin = '"CONSULTA_TROCA"."NOME_DOCUMENTO"'
      Size = 50
    end
    object Consulta_TrocaNOME_LOCAL: TIBStringField
      FieldName = 'NOME_LOCAL'
      Origin = '"CONSULTA_TROCA"."NOME_LOCAL"'
      Size = 50
    end
    object Consulta_TrocaGeral: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Geral'
      DisplayFormat = '###,#0.00'
      Calculated = True
    end
    object Consulta_TrocaGeral2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Geral2'
      DisplayFormat = '###,#0.00'
      Calculated = True
    end
    object Consulta_TrocaLiquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      DisplayFormat = '###,#0.00'
      Calculated = True
    end
    object Consulta_TrocaTOTAL_2: TIBBCDField
      FieldName = 'TOTAL_2'
      Origin = '"CONSULTA_TROCA"."TOTAL_2"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_TrocaDESC_ACRESC_2: TIBBCDField
      FieldName = 'DESC_ACRESC_2'
      Origin = '"CONSULTA_TROCA"."DESC_ACRESC_2"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
  end
  object Consulta_Troca_Parc: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select BOLETO, '
      '          CNPJ, '
      '          CODIGO, '
      '          PARCELA, '
      '          VALOR, '
      '          VENCTO '
      'from FAT_TROCAS_PARCELAMENTO'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO')
    Left = 296
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Consulta_Troca_ParcBOLETO: TIntegerField
      FieldName = 'BOLETO'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."BOLETO"'
    end
    object Consulta_Troca_ParcCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Consulta_Troca_ParcCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."CODIGO"'
      Required = True
    end
    object Consulta_Troca_ParcPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."PARCELA"'
      Size = 6
    end
    object Consulta_Troca_ParcVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."VALOR"'
      DisplayFormat = '###,#0.00'
    end
    object Consulta_Troca_ParcVENCTO: TDateTimeField
      FieldName = 'VENCTO'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."VENCTO"'
    end
  end
  object Consulta_Troca_Itens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Consulta_Troca_ItensCalcFields
    SQL.Strings = (
      'SELECT'
      '    DESCONTO ,'
      '    ICM ,'
      '    ICM_SUBS ,'
      '    IPI ,'
      '    PESO ,'
      '    PORC_DESC ,'
      '    PRC_CUSTO ,'
      '    PRC_UNIT_ORIGINAL ,'
      '    PRC_UNITARIO ,'
      '    PRODUTO ,'
      '    QUANTIDADE ,'
      '    SEQUENCIA ,'
      '    UNIDADE ,'
      '    SUBUNIDADE ,'
      '    VOLUME ,'
      '    NOME_PRODUTO ,'
      '    TIPO '
      'FROM VER_TROCA_ITENS'
      '( :CNPJ, :CODIGO )')
    Left = 296
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Consulta_Troca_ItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_TROCA_ITENS"."DESCONTO"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Troca_ItensICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_TROCA_ITENS"."ICM"'
      Precision = 18
      Size = 4
    end
    object Consulta_Troca_ItensICM_SUBS: TIBBCDField
      FieldName = 'ICM_SUBS'
      Origin = '"VER_TROCA_ITENS"."ICM_SUBS"'
      Precision = 18
      Size = 4
    end
    object Consulta_Troca_ItensIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_TROCA_ITENS"."IPI"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Troca_ItensPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_TROCA_ITENS"."PESO"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Troca_ItensPORC_DESC: TIBBCDField
      FieldName = 'PORC_DESC'
      Origin = '"VER_TROCA_ITENS"."PORC_DESC"'
      DisplayFormat = '###,#0.00 %'
      Precision = 18
      Size = 4
    end
    object Consulta_Troca_ItensPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_TROCA_ITENS"."PRC_CUSTO"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Troca_ItensPRC_UNIT_ORIGINAL: TIBBCDField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_TROCA_ITENS"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Troca_ItensPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_TROCA_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Troca_ItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_TROCA_ITENS"."PRODUTO"'
      Size = 15
    end
    object Consulta_Troca_ItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_TROCA_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Troca_ItensSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_TROCA_ITENS"."SEQUENCIA"'
    end
    object Consulta_Troca_ItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_TROCA_ITENS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Consulta_Troca_ItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_TROCA_ITENS"."SUBUNIDADE"'
    end
    object Consulta_Troca_ItensVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_TROCA_ITENS"."VOLUME"'
      DisplayFormat = '###,#0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Troca_ItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_TROCA_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Consulta_Troca_ItensTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VER_TROCA_ITENS"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object Consulta_Troca_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,#0.00'
      Calculated = True
    end
  end
  object SelFaturaTrocas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    OnCalcFields = SelFaturaTrocasCalcFields
    SQL.Strings = (
      'SELECT'
      '    PESSOA_FJ ,'
      '    NOME ,'
      '    CODIGO ,'
      '    DATA ,'
      '    TOTAL ,'
      '    TOTAL_2 ,'
      '    FECHADO ,'
      '    VENDEDOR ,'
      '    NOMEVENDEDOR ,'
      '    USUARIO ,'
      '    DATA_CAIXA ,'
      '    CONTA_CAIXA ,'
      '    NOME_CONSUMIDOR ,'
      '    VLR_TOTAL ,'
      '    VLR_TOTAL_2 ,'
      '    DESC_ACRESC ,'
      '    DESC_ACRESC_2 ,'
      '    LIQUIDO,'
      '    OBSERVACAO ,'
      '    ENVIADA_CX,'
      '    CANCELADA '
      'FROM VER_TROCAS ( :CNPJ, :TP)'
      '')
    Left = 488
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TP'
        ParamType = ptUnknown
      end>
    object SelFaturaTrocasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_TROCAS"."PESSOA_FJ"'
    end
    object SelFaturaTrocasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_TROCAS"."NOME"'
      Size = 50
    end
    object SelFaturaTrocasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_TROCAS"."CODIGO"'
    end
    object SelFaturaTrocasNOMEVENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOMEVENDEDOR'
      Origin = '"VER_TROCAS"."NOMEVENDEDOR"'
      Size = 50
    end
    object SelFaturaTrocasTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_TROCAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFaturaTrocasFECHADO: TIBStringField
      DefaultExpression = '###,###,##0.00'
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"VER_TROCAS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaTrocasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"VER_TROCAS"."VENDEDOR"'
    end
    object SelFaturaTrocasUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"VER_TROCAS"."USUARIO"'
    end
    object SelFaturaTrocasCONTA_CAIXA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA_CAIXA'
      Origin = '"VER_TROCAS"."CONTA_CAIXA"'
    end
    object SelFaturaTrocasVLR_TOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'VLR_TOTAL'
      Origin = '"VER_TROCAS"."VLR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFaturaTrocasDESC_ACRESC: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRESC'
      Origin = '"VER_TROCAS"."DESC_ACRESC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFaturaTrocasOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs.'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_TROCAS"."OBSERVACAO"'
      Size = 80
    end
    object SelFaturaTrocasENVIADA_CX: TIBStringField
      DisplayLabel = 'Enviada Cx.'
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_TROCAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaTrocasCANCELADA: TIBStringField
      DisplayLabel = 'Canc.'
      FieldName = 'CANCELADA'
      Origin = '"VER_TROCAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaTrocasTOTAL_2: TIBBCDField
      DisplayLabel = 'Total 2'
      FieldName = 'TOTAL_2'
      Origin = '"VER_TROCAS"."TOTAL_2"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFaturaTrocasDESC_ACRESC_2: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233'sc 2'
      FieldName = 'DESC_ACRESC_2'
      Origin = '"VER_TROCAS"."DESC_ACRESC_2"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFaturaTrocasVLR_TOTAL_2: TIBBCDField
      DisplayLabel = 'Total 2'
      FieldName = 'VLR_TOTAL_2'
      Origin = '"VER_TROCAS"."VLR_TOTAL_2"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFaturaTrocasLIQUIDO: TIBBCDField
      DisplayLabel = 'Liquido'
      FieldName = 'LIQUIDO'
      Origin = '"VER_TROCAS"."LIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFaturaTrocasttl_liquido: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldKind = fkCalculated
      FieldName = 'ttl_liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object SelFaturaTrocasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"VER_TROCAS"."DATA"'
    end
    object SelFaturaTrocasDATA_CAIXA: TDateField
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_TROCAS"."DATA_CAIXA"'
    end
    object SelFaturaTrocasNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_TROCAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
  end
  object FaturaTrocas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    AfterInsert = TrocasAfterInsert
    BeforeOpen = VendasBeforeOpen
    BeforePost = TrocasBeforePost
    OnCalcFields = FaturaTrocasCalcFields
    DeleteSQL.Strings = (
      'delete from FAT_TROCAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_TROCAS'
      
        '  (CARTAO, CHEQUE, CLIENTE, CNPJ, CODIGO, CONTA_CAIXA, DATA, DAT' +
        'A_CAIXA, '
      
        '   DESC_ACRESC, DESC_ACRESC_2, DINHEIRO, ENTRADA, ENVIADA_CX, FE' +
        'CHADO, '
      
        '   FORMA_PGTO, LOCAL_COBRANCA, NOME, NOME_CONSUMIDOR, NOME_FORMA' +
        ', NOME_VENDEDOR, '
      
        '   OBSERVACAO, PESO, PESSOA_FJ, PGTO_AVISTA, TICKET, TIPO_DOCTO,' +
        ' TOTAL, '
      '   TOTAL_2, USUARIO, VALIDADE, VENDEDOR, VLR_PARC_LC, VOLUME)'
      'values'
      
        '  (:CARTAO, :CHEQUE, :CLIENTE, :CNPJ, :CODIGO, :CONTA_CAIXA, :DA' +
        'TA, :DATA_CAIXA, '
      
        '   :DESC_ACRESC, :DESC_ACRESC_2, :DINHEIRO, :ENTRADA, :ENVIADA_C' +
        'X, :FECHADO, '
      
        '   :FORMA_PGTO, :LOCAL_COBRANCA, :NOME, :NOME_CONSUMIDOR, :NOME_' +
        'FORMA, '
      
        '   :NOME_VENDEDOR, :OBSERVACAO, :PESO, :PESSOA_FJ, :PGTO_AVISTA,' +
        ' :TICKET, '
      
        '   :TIPO_DOCTO, :TOTAL, :TOTAL_2, :USUARIO, :VALIDADE, :VENDEDOR' +
        ', :VLR_PARC_LC, '
      '   :VOLUME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  PESSOA_FJ,'
      '  USUARIO,'
      '  VENDEDOR,'
      '  FORMA_PGTO,'
      '  OBSERVACAO,'
      '  NOME_CONSUMIDOR,'
      '  TOTAL,'
      '  FECHADO,'
      '  DESC_ACRESC,'
      '  PESO,'
      '  VOLUME,'
      '  NOME,'
      '  VALIDADE,'
      '  TOTAL_2,'
      '  DESC_ACRESC_2,'
      '  CLIENTE,'
      '  ENVIADA_CX,'
      '  DATA_CAIXA,'
      '  NOME_VENDEDOR,'
      '  NOME_FORMA,'
      '  ENTRADA,'
      '  TIPO_DOCTO,'
      '  LOCAL_COBRANCA,'
      '  VLR_PARC_LC,'
      '  PGTO_AVISTA,'
      '  CONTA_CAIXA,'
      '  DINHEIRO,'
      '  CARTAO,'
      '  CHEQUE,'
      '  TICKET'
      'from FAT_TROCAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select'
      '          CARTAO, '
      '          CHEQUE, '
      '          CLIENTE, '
      '          CNPJ, '
      '          CODIGO, '
      '          CONTA_CAIXA, '
      '          DATA, '
      '          DATA_CAIXA, '
      '          DESC_ACRESC, '
      '          DESC_ACRESC_2, '
      '          DINHEIRO, '
      '          ENTRADA, '
      '          ENVIADA_CX, '
      '          FECHADO, '
      '          FORMA_PGTO, '
      '          LOCAL_COBRANCA, '
      '          NOME, '
      '          NOME_CONSUMIDOR, '
      '          NOME_FORMA, '
      '          NOME_VENDEDOR, '
      '          OBSERVACAO, '
      '          PESO, '
      '          PESSOA_FJ, '
      '          PGTO_AVISTA, '
      '          TICKET, '
      '          TIPO_DOCTO, '
      '          TOTAL, '
      '          TOTAL_2, '
      '          USUARIO, '
      '          VALIDADE, '
      '          VENDEDOR, '
      '          VLR_PARC_LC, '
      '          VOLUME'
      'from FAT_TROCAS'
      'WHERE CNPJ = :CNPJ AND'
      '               CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_TROCAS'
      'set'
      '  CARTAO = :CARTAO,'
      '  CHEQUE = :CHEQUE,'
      '  CLIENTE = :CLIENTE,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CONTA_CAIXA = :CONTA_CAIXA,'
      '  DATA = :DATA,'
      '  DATA_CAIXA = :DATA_CAIXA,'
      '  DESC_ACRESC = :DESC_ACRESC,'
      '  DESC_ACRESC_2 = :DESC_ACRESC_2,'
      '  DINHEIRO = :DINHEIRO,'
      '  ENTRADA = :ENTRADA,'
      '  ENVIADA_CX = :ENVIADA_CX,'
      '  FECHADO = :FECHADO,'
      '  FORMA_PGTO = :FORMA_PGTO,'
      '  LOCAL_COBRANCA = :LOCAL_COBRANCA,'
      '  NOME = :NOME,'
      '  NOME_CONSUMIDOR = :NOME_CONSUMIDOR,'
      '  NOME_FORMA = :NOME_FORMA,'
      '  NOME_VENDEDOR = :NOME_VENDEDOR,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  PESO = :PESO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PGTO_AVISTA = :PGTO_AVISTA,'
      '  TICKET = :TICKET,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  TOTAL = :TOTAL,'
      '  TOTAL_2 = :TOTAL_2,'
      '  USUARIO = :USUARIO,'
      '  VALIDADE = :VALIDADE,'
      '  VENDEDOR = :VENDEDOR,'
      '  VLR_PARC_LC = :VLR_PARC_LC,'
      '  VOLUME = :VOLUME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 488
    Top = 240
    object FaturaTrocasCARTAO: TFloatField
      FieldName = 'CARTAO'
      Origin = '"FAT_TROCAS"."CARTAO"'
      OnValidate = FaturaTrocasCARTAOValidate
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaTrocasCHEQUE: TFloatField
      FieldName = 'CHEQUE'
      Origin = '"FAT_TROCAS"."CHEQUE"'
      OnValidate = FaturaTrocasCHEQUEValidate
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaTrocasCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"FAT_TROCAS"."CLIENTE"'
      Size = 30
    end
    object FaturaTrocasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_TROCAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object FaturaTrocasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_TROCAS"."CODIGO"'
      Required = True
    end
    object FaturaTrocasCONTA_CAIXA: TIntegerField
      FieldName = 'CONTA_CAIXA'
      Origin = '"FAT_TROCAS"."CONTA_CAIXA"'
    end
    object FaturaTrocasDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"FAT_TROCAS"."DATA_CAIXA"'
    end
    object FaturaTrocasDESC_ACRESC: TFloatField
      FieldName = 'DESC_ACRESC'
      Origin = '"FAT_TROCAS"."DESC_ACRESC"'
      OnValidate = FaturaTrocasDESC_ACRESCValidate
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaTrocasDESC_ACRESC_2: TFloatField
      FieldName = 'DESC_ACRESC_2'
      Origin = '"FAT_TROCAS"."DESC_ACRESC_2"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaTrocasDINHEIRO: TFloatField
      FieldName = 'DINHEIRO'
      Origin = '"FAT_TROCAS"."DINHEIRO"'
      OnValidate = FaturaTrocasDINHEIROValidate
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaTrocasENTRADA: TFloatField
      FieldName = 'ENTRADA'
      Origin = '"FAT_TROCAS"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaTrocasENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"FAT_TROCAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object FaturaTrocasFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"FAT_TROCAS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object FaturaTrocasFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"FAT_TROCAS"."FORMA_PGTO"'
      OnValidate = FaturaTrocasFORMA_PGTOValidate
    end
    object FaturaTrocasLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"FAT_TROCAS"."LOCAL_COBRANCA"'
    end
    object FaturaTrocasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_TROCAS"."NOME"'
      Size = 50
    end
    object FaturaTrocasNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_TROCAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object FaturaTrocasNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"FAT_TROCAS"."NOME_FORMA"'
      Size = 50
    end
    object FaturaTrocasNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_TROCAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object FaturaTrocasOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"FAT_TROCAS"."OBSERVACAO"'
      Size = 80
    end
    object FaturaTrocasPESO: TFloatField
      FieldName = 'PESO'
      Origin = '"FAT_TROCAS"."PESO"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaTrocasPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_TROCAS"."PESSOA_FJ"'
      Required = True
    end
    object FaturaTrocasPGTO_AVISTA: TIBStringField
      FieldName = 'PGTO_AVISTA'
      Origin = '"FAT_TROCAS"."PGTO_AVISTA"'
      FixedChar = True
      Size = 1
    end
    object FaturaTrocasTICKET: TFloatField
      FieldName = 'TICKET'
      Origin = '"FAT_TROCAS"."TICKET"'
      OnValidate = FaturaTrocasTICKETValidate
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaTrocasTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"FAT_TROCAS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object FaturaTrocasTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"FAT_TROCAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaTrocasTOTAL_2: TFloatField
      FieldName = 'TOTAL_2'
      Origin = '"FAT_TROCAS"."TOTAL_2"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaTrocasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"FAT_TROCAS"."USUARIO"'
      Required = True
    end
    object FaturaTrocasVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
      Origin = '"FAT_TROCAS"."VALIDADE"'
    end
    object FaturaTrocasVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"FAT_TROCAS"."VENDEDOR"'
      Required = True
    end
    object FaturaTrocasVLR_PARC_LC: TFloatField
      FieldName = 'VLR_PARC_LC'
      Origin = '"FAT_TROCAS"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaTrocasVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"FAT_TROCAS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaTrocasDiferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Diferenca'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object FaturaTrocastotal_parcelar: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_parcelar'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object FaturaTrocasAVISTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object FaturaTrocasTOTAL_GERAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_GERAL'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object FaturaTrocasTOTAL_GERAL2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_GERAL2'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object FaturaTrocasLiquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object FaturaTrocasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"FAT_TROCAS"."DATA"'
    end
  end
  object Retiradas_Clientes: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = Retiradas_ClientesBeforeOpen
    OnNewRecord = Retiradas_ClientesNewRecord
    DeleteSQL.Strings = (
      'delete from PST_RETIRADAS_CLIENTES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  USUARIO = :OLD_USUARIO and'
      '  VENDA = :OLD_VENDA')
    InsertSQL.Strings = (
      'insert into PST_RETIRADAS_CLIENTES'
      
        '  (CNPJ, CONTA, DATA, DOCUMENTO, HISTORICO, USUARIO, VALOR, PESS' +
        'OA_FJ, '
      '   VENDA)'
      'values'
      
        '  (:CNPJ, :CONTA, :DATA, :DOCUMENTO, :HISTORICO, :USUARIO, :VALO' +
        'R, :PESSOA_FJ, '
      '   :VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  USUARIO,'
      '  CONTA,'
      '  DATA,'
      '  DOCUMENTO,'
      '  HISTORICO,'
      '  VALOR,'
      '  PESSOA_FJ,'
      '  VENDA'
      'from PST_RETIRADAS_CLIENTES '
      'where'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA and'
      '  DATA = :DATA and'
      '  USUARIO = :USUARIO and'
      '  VENDA = :VENDA')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CONTA, '
      '          DATA, '
      '          DOCUMENTO, '
      '          HISTORICO, '
      '          USUARIO, '
      '          VALOR,'
      '          PESSOA_FJ,'
      '          VENDA'
      'from PST_RETIRADAS_CLIENTES'
      'Where CNPJ = :CNPJ AND CONTA = :CONTA AND'
      'DATA = :DATA AND VENDA = :VENDA AND USUARIO = :USUARIO')
    ModifySQL.Strings = (
      'update PST_RETIRADAS_CLIENTES'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  DATA = :DATA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  HISTORICO = :HISTORICO,'
      '  USUARIO = :USUARIO,'
      '  VALOR = :VALOR,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  VENDA = :VENDA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  USUARIO = :OLD_USUARIO and'
      '  VENDA = :OLD_VENDA')
    Left = 392
    Top = 392
    object Retiradas_ClientesCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"PST_RETIRADAS_CLIENTES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Retiradas_ClientesCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"PST_RETIRADAS_CLIENTES"."CONTA"'
      Required = True
    end
    object Retiradas_ClientesDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"PST_RETIRADAS_CLIENTES"."DATA"'
    end
    object Retiradas_ClientesDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = '"PST_RETIRADAS_CLIENTES"."DOCUMENTO"'
      Required = True
    end
    object Retiradas_ClientesHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"PST_RETIRADAS_CLIENTES"."HISTORICO"'
      Size = 100
    end
    object Retiradas_ClientesUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"PST_RETIRADAS_CLIENTES"."USUARIO"'
      Required = True
    end
    object Retiradas_ClientesVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"PST_RETIRADAS_CLIENTES"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object Retiradas_ClientesPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"PST_RETIRADAS_CLIENTES"."PESSOA_FJ"'
    end
    object Retiradas_ClientesVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"PST_RETIRADAS_CLIENTES"."VENDA"'
      Required = True
    end
  end
  object SelVendedorPdv: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'Select * From FAT_VENDEDOR'
      'Where Cnpj = :CNPJ  AND ATIVO = '#39'S'#39
      'Order By Nome')
    Left = 224
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelVendedorPdvCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelVendedorPdvCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      Required = True
    end
    object SelVendedorPdvNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object SelVendedorPdvCOM_VISTA: TFloatField
      DisplayLabel = 'Vista'
      FieldName = 'COM_VISTA'
      Origin = '"FAT_VENDEDOR"."COM_VISTA"'
      DisplayFormat = '% ##0.00'
    end
    object SelVendedorPdvCOM_PRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
      DisplayFormat = '% ##0.00'
    end
    object SelVendedorPdvPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
      Required = True
    end
    object SelVendedorPdvSENHA: TIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
  end
  object VERIFICA_ESTADO_VENDA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      'FECHADA ,'
      'NF ,'
      'CF ,'
      'DATA_CAIXA ,'
      'ENVIADA_CX,'
      'USUARIO,'
      'CONTA_CAIXA '
      'from VERIFICA_ESTADO_VENDA'
      '( :CNPJ, :CODIGO )')
    Left = 752
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object VERIFICA_ESTADO_VENDAFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VERIFICA_ESTADO_VENDA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object VERIFICA_ESTADO_VENDANF: TIntegerField
      FieldName = 'NF'
      Origin = '"VERIFICA_ESTADO_VENDA"."NF"'
    end
    object VERIFICA_ESTADO_VENDACF: TIntegerField
      FieldName = 'CF'
      Origin = '"VERIFICA_ESTADO_VENDA"."CF"'
    end
    object VERIFICA_ESTADO_VENDADATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"VERIFICA_ESTADO_VENDA"."DATA_CAIXA"'
    end
    object VERIFICA_ESTADO_VENDAENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VERIFICA_ESTADO_VENDA"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object VERIFICA_ESTADO_VENDAUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"VERIFICA_ESTADO_VENDA"."USUARIO"'
    end
    object VERIFICA_ESTADO_VENDACONTA_CAIXA: TIntegerField
      FieldName = 'CONTA_CAIXA'
      Origin = '"VERIFICA_ESTADO_VENDA"."CONTA_CAIXA"'
    end
  end
  object VER_ANALISE_CUSTOS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    OnCalcFields = VER_ANALISE_CUSTOSCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO,'
      '    PESSOA,'
      '    TOTAL,'
      '    DATA,'
      '    PRODUTO,'
      '    QUANTIDADE,'
      '    PRC_UNITARIO,'
      '    PRC_UNITARIO_2,'
      '    PRC_CUSTO,'
      '    NOME,'
      '    NOME_PRODUTO,'
      '    MARGEM,'
      '    MARGEM_2'
      'from VER_ANALISE_CUSTOS'
      '( :CNPJ, :VENDA, :NOVO )')
    Left = 752
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOVO'
        ParamType = ptUnknown
      end>
    object VER_ANALISE_CUSTOSCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_ANALISE_CUSTOS"."CODIGO"'
    end
    object VER_ANALISE_CUSTOSPESSOA: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA'
      Origin = '"VER_ANALISE_CUSTOS"."PESSOA"'
    end
    object VER_ANALISE_CUSTOSTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_ANALISE_CUSTOS"."TOTAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_ANALISE_CUSTOSDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_ANALISE_CUSTOS"."DATA"'
    end
    object VER_ANALISE_CUSTOSPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"VER_ANALISE_CUSTOS"."PRODUTO"'
      Size = 15
    end
    object VER_ANALISE_CUSTOSQUANTIDADE: TIBBCDField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"VER_ANALISE_CUSTOS"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_ANALISE_CUSTOSPRC_UNITARIO: TIBBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_ANALISE_CUSTOS"."PRC_UNITARIO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_ANALISE_CUSTOSPRC_CUSTO: TIBBCDField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_ANALISE_CUSTOS"."PRC_CUSTO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_ANALISE_CUSTOSNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_ANALISE_CUSTOS"."NOME"'
      Size = 50
    end
    object VER_ANALISE_CUSTOSNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_ANALISE_CUSTOS"."NOME_PRODUTO"'
      Size = 50
    end
    object VER_ANALISE_CUSTOSMARGEM: TIBBCDField
      DisplayLabel = 'Margem'
      FieldName = 'MARGEM'
      Origin = '"VER_ANALISE_CUSTOS"."MARGEM"'
      DisplayFormat = '% #,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_ANALISE_CUSTOSVlr_Total: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'Vlr_Total'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object VER_ANALISE_CUSTOSMARGEM_2: TIBBCDField
      DisplayLabel = 'Margem 2'
      FieldName = 'MARGEM_2'
      Origin = '"VER_ANALISE_CUSTOS"."MARGEM_2"'
      DisplayFormat = '% #,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_ANALISE_CUSTOSPRC_UNITARIO_2: TIBBCDField
      DisplayLabel = 'Unit'
      FieldName = 'PRC_UNITARIO_2'
      Origin = '"VER_ANALISE_CUSTOS"."PRC_UNITARIO_2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Lista_Grades: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'select'
      '    GRADE,'
      '    MATERIAL,'
      '    COR,'
      '    ESTOQUE,'
      '    NOME_MATERIAL,'
      '    NOME_COR,'
      '    PERFIL,'
      '    NOME_PERFIL,'
      '    NUMERO'
      'FROM LISTA_PRODUTOS_GRADES'
      '( :CNPJ, :PRODUTO )'
      'Order by GRADE, ORDEM, NUMERO')
    Left = 752
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end>
    object Lista_GradesGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"LISTA_PRODUTOS_GRADES"."GRADE"'
      FixedChar = True
      Size = 4
    end
    object Lista_GradesMATERIAL: TIntegerField
      DisplayLabel = 'Material'
      FieldName = 'MATERIAL'
      Origin = '"LISTA_PRODUTOS_GRADES"."MATERIAL"'
    end
    object Lista_GradesCOR: TIntegerField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      Origin = '"LISTA_PRODUTOS_GRADES"."COR"'
    end
    object Lista_GradesESTOQUE: TIBBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = '"LISTA_PRODUTOS_GRADES"."ESTOQUE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_GradesNOME_MATERIAL: TIBStringField
      DisplayLabel = 'Material'
      FieldName = 'NOME_MATERIAL'
      Origin = '"LISTA_PRODUTOS_GRADES"."NOME_MATERIAL"'
      Size = 50
    end
    object Lista_GradesNOME_COR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'NOME_COR'
      Origin = '"LISTA_PRODUTOS_GRADES"."NOME_COR"'
      Size = 50
    end
    object Lista_GradesPERFIL: TIntegerField
      DisplayLabel = 'Perfil'
      FieldName = 'PERFIL'
      Origin = '"LISTA_PRODUTOS_GRADES"."PERFIL"'
    end
    object Lista_GradesNOME_PERFIL: TIBStringField
      DisplayLabel = 'Nome Perfil'
      FieldName = 'NOME_PERFIL'
      Origin = '"LISTA_PRODUTOS_GRADES"."NOME_PERFIL"'
      Size = 50
    end
    object Lista_GradesNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"LISTA_PRODUTOS_GRADES"."NUMERO"'
      Size = 6
    end
  end
  object Fat_Vendas_Garantias: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from FAT_VENDAS_GARANTIA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  GARANTIA = :OLD_GARANTIA')
    InsertSQL.Strings = (
      'insert into FAT_VENDAS_GARANTIA'
      '  (CNPJ, CODIGO, GARANTIA)'
      'values'
      '  (:CNPJ, :CODIGO, :GARANTIA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  GARANTIA'
      'from FAT_VENDAS_GARANTIA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  GARANTIA = :GARANTIA')
    SelectSQL.Strings = (
      'select CNPJ, CODIGO, GARANTIA '
      'from FAT_VENDAS_GARANTIA'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_VENDAS_GARANTIA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  GARANTIA = :GARANTIA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  GARANTIA = :OLD_GARANTIA')
    Left = 144
    Top = 528
    object Fat_Vendas_GarantiasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_GARANTIA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Fat_Vendas_GarantiasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_GARANTIA"."CODIGO"'
      Required = True
    end
    object Fat_Vendas_GarantiasGARANTIA: TIntegerField
      FieldName = 'GARANTIA'
      Origin = '"FAT_VENDAS_GARANTIA"."GARANTIA"'
      Required = True
    end
  end
  object SelGarantias: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'select CODIGO, NOME '
      'from FAT_CARTA_GARANTIAS'
      'where CNPJ = :CNPJ'
      'order by NOME')
    Left = 224
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelGarantiasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_CARTA_GARANTIAS"."CODIGO"'
      Required = True
    end
    object SelGarantiasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_CARTA_GARANTIAS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Ver_Fat_Vendas_Garantia: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      ' TEXTO,'
      ' PRODUTO,'
      ' NOME,'
      ' COMPLEMENTO'
      'FROM VER_FAT_VENDAS_GARANTIA'
      '( :CNPJ, :CODIGO, :GARANTIA )')
    Left = 592
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GARANTIA'
        ParamType = ptUnknown
      end>
    object Ver_Fat_Vendas_GarantiaTEXTO: TBlobField
      FieldName = 'TEXTO'
      Origin = '"VER_FAT_VENDAS_GARANTIA"."TEXTO"'
      Size = 8
    end
    object Ver_Fat_Vendas_GarantiaPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_GARANTIA"."PRODUTO"'
      Size = 15
    end
    object Ver_Fat_Vendas_GarantiaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_FAT_VENDAS_GARANTIA"."NOME"'
      Size = 50
    end
    object Ver_Fat_Vendas_GarantiaCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_FAT_VENDAS_GARANTIA"."COMPLEMENTO"'
      Size = 100
    end
  end
  object SelPessoas_Conv: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT '
      '    CODIGO ,'
      '    PESSOA_FJ ,'
      '    NOME_RAZAO ,'
      '    FONE ,'
      '    FANTASIA ,'
      '    CPF_CGC,'
      '    BLOQUEADO,'
      '    CLASSIFICACAO,'
      '    UF,'
      '    EMPRESA,'
      '    ORDEM'
      'FROM VER_CONVENIO ( :CNPJ, :CONVENIO )'
      'ORDER BY NOME_RAZAO')
    Left = 144
    Top = 304
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CONVENIO'
        ParamType = ptUnknown
      end>
    object SelPessoas_ConvCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_CLIENTE"."CODIGO"'
    end
    object SelPessoas_ConvPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_CLIENTE"."PESSOA_FJ"'
    end
    object SelPessoas_ConvNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_CLIENTE"."NOME_RAZAO"'
      Size = 50
    end
    object SelPessoas_ConvFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_CLIENTE"."FONE"'
    end
    object SelPessoas_ConvFANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"VER_CLIENTE"."FANTASIA"'
      Size = 50
    end
    object SelPessoas_ConvCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_CLIENTE"."CPF_CGC"'
      Size = 15
    end
    object SelPessoas_ConvBLOQUEADO: TIBStringField
      DisplayLabel = 'Blq'
      FieldName = 'BLOQUEADO'
      Origin = '"VER_CLIENTE"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object SelPessoas_ConvCLASSIFICACAO: TIBStringField
      DisplayLabel = 'Class'
      FieldName = 'CLASSIFICACAO'
      Origin = '"VER_CLIENTE"."CLASSIFICACAO"'
      Size = 50
    end
    object SelPessoas_ConvUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_CLIENTE"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPessoas_ConvEMPRESA: TIBStringField
      DisplayLabel = 'Empresa'
      FieldName = 'EMPRESA'
      Origin = '"VER_CLIENTE"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
  end
  object SelFatura_Futura_Itens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = SelFatura_Futura_ItensCalcFields
    SQL.Strings = (
      'SELECT'
      '    DESCONTO ,'
      '    ICM ,'
      '    ICM_SUBS ,'
      '    IPI ,'
      '    PESO ,'
      '    PORC_DESC ,'
      '    PRC_CUSTO ,'
      '    PRC_UNIT_ORIGINAL ,'
      '    PRC_UNITARIO ,'
      '    PRODUTO ,'
      '    PRODUTOFIS ,'
      '    QUANTIDADE ,'
      '    SEQUENCIA ,'
      '    UNIDADE ,'
      '    SUBUNIDADE ,'
      '    VOLUME ,'
      '    NOME_PRODUTO ,'
      '    NOME_FIS ,'
      '    ALIQUOTA ,'
      '    ORIGEM ,'
      '    CTE ,'
      '    CTIE ,'
      '    REDUCAO ,'
      '    COMPLEMENTO,'
      '    SERVICO'
      'FROM VER_FATURA_ITENS_AGRUPADA (:CNPJ, :DINI, :DFIM, :PESSOA)')
    Left = 392
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA'
        ParamType = ptUnknown
      end>
    object SelFatura_Futura_ItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object SelFatura_Futura_ItensSEQUENCIA: TSmallintField
      DisplayLabel = 'Seq'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object SelFatura_Futura_ItensUNIDADE: TIBStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."UNIDADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object SelFatura_Futura_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object SelFatura_Futura_ItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object SelFatura_Futura_ItensALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object SelFatura_Futura_ItensORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"FAT_VENDAS_ITENS"."ORIGEM"'
    end
    object SelFatura_Futura_ItensCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"FAT_VENDAS_ITENS"."CTE"'
    end
    object SelFatura_Futura_ItensCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"FAT_VENDAS_ITENS"."CTIE"'
    end
    object SelFatura_Futura_ItensREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"FAT_VENDAS_ITENS"."REDUCAO"'
    end
    object SelFatura_Futura_ItensPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"VER_FATURA_ITENS"."PRODUTOFIS"'
      Size = 15
    end
    object SelFatura_Futura_ItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FATURA_ITENS"."SUBUNIDADE"'
    end
    object SelFatura_Futura_ItensNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"VER_FATURA_ITENS"."NOME_FIS"'
      Size = 50
    end
    object SelFatura_Futura_ItensDESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VER_FATURA_ITENS"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ItensICM: TIBBCDField
      DisplayLabel = 'Icm'
      FieldName = 'ICM'
      Origin = '"VER_FATURA_ITENS"."ICM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ItensICM_SUBS: TIBBCDField
      DisplayLabel = 'Icm Sub'
      FieldName = 'ICM_SUBS'
      Origin = '"VER_FATURA_ITENS"."ICM_SUBS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ItensIPI: TIBBCDField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"VER_FATURA_ITENS"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ItensPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FATURA_ITENS"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ItensPORC_DESC: TIBBCDField
      DisplayLabel = 'Porc. Desc'
      FieldName = 'PORC_DESC'
      Origin = '"VER_FATURA_ITENS"."PORC_DESC"'
      DisplayFormat = '###,###,##0.00 %'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ItensPRC_CUSTO: TIBBCDField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_FATURA_ITENS"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ItensPRC_UNIT_ORIGINAL: TIBBCDField
      DisplayLabel = 'Unit. Orig'
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_FATURA_ITENS"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ItensPRC_UNITARIO: TIBBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FATURA_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ItensQUANTIDADE: TIBBCDField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FATURA_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ItensVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FATURA_ITENS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ItensCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_FATURA_ITENS"."COMPLEMENTO"'
      Size = 100
    end
    object SelFatura_Futura_ItensSERVICO: TBlobField
      FieldName = 'SERVICO'
      Origin = '"VER_FATURA_ITENS"."SERVICO"'
      Size = 8
    end
  end
  object SelFatura_Futura_Prod: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT '
      '    CODIGO ,'
      '    DATA ,'
      '    FECHADA ,'
      '    HISTORICO ,'
      '    PESSOA_FJ ,'
      '    PESSOA_RAZAO ,'
      '    USUARIO ,'
      '    NATUREZA ,'
      '    NOME_NATUREZA ,'
      '    ENVIADA_CX ,'
      '    DATA_CAIXA,'
      '    FORMA_PGTO ,'
      '    NUM_NF ,'
      '    NUM_CUPOM ,'
      '    PROPRIEDADE ,'
      '    CONVENIADO ,'
      '    TIPO_DOCTO ,'
      '    LOCAL_COBRANCA ,'
      '    DESC_ACRES ,'
      '    ENTRADA ,'
      '    DINHEIRO ,'
      '    CHEQUE ,'
      '    CARTAO ,'
      '    TICKET ,'
      '    TOTAL ,'
      '    VLRLIQUIDO ,'
      '    OBSERVACAO ,'
      '    VLR_PARC_LC,'
      '    TERCEIRO ,'
      '    CARGA ,'
      '    VOLUME,'
      '    PESO,'
      '    REQUISICAO,'
      '    DESCRICAO ,'
      '    TIPO_VENDA ,'
      '    NOME_CONSUMIDOR ,'
      '    NOME_FORMA ,'
      '    FATURA_FUTURA ,'
      '    ORCAMENTO ,'
      '    VENDEDOR ,'
      '    NOME_VENDEDOR,'
      '    LOCAL,'
      '    CONTA_CAIXA, '
      '    CANCELADA, '
      '    BASE_ICM_SUBST , '
      '    VALOR_ICM_SUBST ,'
      '    FRETE ,  '
      '    SEGURO ,  '
      '    DESPESAS ,  '
      '    IPI , '
      '    TOTAL_NOTA,'
      '    SELECIONADA,'
      '    BASE_ICM,'
      '    ICM,'
      '    PERC_ICMS,'
      '    MENSAGEM_NAT1,'
      '    MENSAGEM_NAT2'
      
        'FROM VER_FAT_VENDAS_AGRUPADAS ( :CNPJ, :DINI, :DFIM, :PESSOA, :C' +
        'ODIGO_PRODUTO )'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 488
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_PRODUTO'
        ParamType = ptUnknown
      end>
    object SelFatura_Futura_ProdCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDA"."CODIGO"'
      Required = True
    end
    object SelFatura_Futura_ProdFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_Futura_ProdHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDA"."HISTORICO"'
      Size = 100
    end
    object SelFatura_Futura_ProdPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDA"."PESSOA_FJ"'
      Required = True
    end
    object SelFatura_Futura_ProdUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDA"."USUARIO"'
      Required = True
    end
    object SelFatura_Futura_ProdVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDA"."VENDEDOR"'
      Required = True
    end
    object SelFatura_Futura_ProdNUM_NF: TIntegerField
      Tag = 1
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDA"."NUM_NF"'
    end
    object SelFatura_Futura_ProdNUM_CUPOM: TIntegerField
      Tag = 1
      DisplayLabel = 'Cupom'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDA"."NUM_CUPOM"'
    end
    object SelFatura_Futura_ProdNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDA"."NATUREZA"'
      Required = True
    end
    object SelFatura_Futura_ProdTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"FAT_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object SelFatura_Futura_ProdNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object SelFatura_Futura_ProdORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object SelFatura_Futura_ProdLOCAL: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"FAT_VENDAS"."LOCAL"'
    end
    object SelFatura_Futura_ProdTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_VENDAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acres'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_VENDAS"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_VENDAS"."OBSERVACAO"'
      Size = 80
    end
    object SelFatura_Futura_ProdPESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PESSOA_RAZAO"'
      Size = 50
    end
    object SelFatura_Futura_ProdNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_NATUREZA"'
      Size = 50
    end
    object SelFatura_Futura_ProdENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_Futura_ProdFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FORMA_PGTO"'
    end
    object SelFatura_Futura_ProdPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PROPRIEDADE"'
    end
    object SelFatura_Futura_ProdCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CONVENIADO"'
    end
    object SelFatura_Futura_ProdTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object SelFatura_Futura_ProdLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."LOCAL_COBRANCA"'
    end
    object SelFatura_Futura_ProdENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdVLRLIQUIDO: TIBBCDField
      DisplayLabel = 'Liqu'#237'do'
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VLR_PARC_LC"'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TERCEIRO"'
    end
    object SelFatura_Futura_ProdCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CARGA"'
    end
    object SelFatura_Futura_ProdVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PESO"'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdREQUISICAO: TIBStringField
      DisplayLabel = 'Requisi'#231#227'o'
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."REQUISICAO"'
      Size = 6
    end
    object SelFatura_Futura_ProdDESCRICAO: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DESCRICAO"'
      Size = 8
    end
    object SelFatura_Futura_ProdNOME_FORMA: TIBStringField
      DisplayLabel = 'Frm Pagto'
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_FORMA"'
      Size = 50
    end
    object SelFatura_Futura_ProdFATURA_FUTURA: TIBStringField
      DisplayLabel = 'Fat. Fut'
      FieldName = 'FATURA_FUTURA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FATURA_FUTURA"'
      Size = 1
    end
    object SelFatura_Futura_ProdNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object SelFatura_Futura_ProdCONTA_CAIXA: TIntegerField
      DisplayLabel = 'Conta Caixa'
      FieldName = 'CONTA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CONTA_CAIXA"'
    end
    object SelFatura_Futura_ProdCANCELADA: TIBStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_Futura_ProdBASE_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Base Icms Subst'
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."BASE_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdVALOR_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Icms'
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VALOR_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdFRETE: TIBBCDField
      DisplayLabel = 'Frete'
      FieldName = 'FRETE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FRETE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdSEGURO: TIBBCDField
      DisplayLabel = 'Seguro'
      FieldName = 'SEGURO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."SEGURO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdDESPESAS: TIBBCDField
      DisplayLabel = 'Despesas'
      FieldName = 'DESPESAS'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DESPESAS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdIPI: TIBBCDField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdTOTAL_NOTA: TIBBCDField
      DisplayLabel = 'Total Nota'
      FieldName = 'TOTAL_NOTA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TOTAL_NOTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdSELECIONADA: TIBStringField
      DisplayLabel = 'Sel'
      FieldName = 'SELECIONADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_Futura_ProdDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DATA"'
    end
    object SelFatura_Futura_ProdDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DATA_CAIXA"'
    end
    object SelFatura_Futura_ProdBASE_ICM: TIBBCDField
      FieldName = 'BASE_ICM'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."BASE_ICM"'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ICM"'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdPERC_ICMS: TIBBCDField
      FieldName = 'PERC_ICMS'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PERC_ICMS"'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_ProdMENSAGEM_NAT1: TIBStringField
      FieldName = 'MENSAGEM_NAT1'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."MENSAGEM_NAT1"'
      Size = 50
    end
    object SelFatura_Futura_ProdMENSAGEM_NAT2: TIBStringField
      FieldName = 'MENSAGEM_NAT2'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."MENSAGEM_NAT2"'
      Size = 50
    end
  end
  object Imp_Vendas_Cor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          PRODUTO,'
      '          NOME, '
      '          QUANTIDADE '
      'from FAT_VENDAS_COR'
      
        'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO AND PRODUTO = :PRODUTO a' +
        'nd SEQUENCIA = :SEQUENCIA'
      'ORDER BY NOME')
    Left = 752
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SEQUENCIA'
        ParamType = ptUnknown
      end>
    object Imp_Vendas_CorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_COR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Imp_Vendas_CorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_COR"."CODIGO"'
      Required = True
    end
    object Imp_Vendas_CorPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_COR"."PRODUTO"'
      Required = True
      Size = 15
    end
    object Imp_Vendas_CorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS_COR"."NOME"'
      Size = 50
    end
    object Imp_Vendas_CorQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_COR"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
    end
  end
  object Vendas_Cor: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from FAT_VENDAS_COR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  COR = :OLD_COR and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into FAT_VENDAS_COR'
      '  (CNPJ, CODIGO, COR, QUANTIDADE, NOME, PRODUTO, SEQUENCIA)'
      'values'
      
        '  (:CNPJ, :CODIGO, :COR, :QUANTIDADE, :NOME, :PRODUTO, :SEQUENCI' +
        'A)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  COR,'
      '  QUANTIDADE,'
      '  NOME,'
      '  PRODUTO,'
      '  SEQUENCIA'
      'from FAT_VENDAS_COR '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  COR = :COR and'
      '  PRODUTO = :PRODUTO and'
      '  SEQUENCIA = :SEQUENCIA')
    SelectSQL.Strings = (
      'select'
      '    CNPJ,'
      '    CODIGO,'
      '    COR,'
      '    QUANTIDADE,'
      '    NOME,'
      '    PRODUTO,'
      '    SEQUENCIA'
      'from FAT_VENDAS_COR'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO'
      'AND PRODUTO = :PRODUTO AND SEQUENCIA = :SEQUENCIA')
    ModifySQL.Strings = (
      'update FAT_VENDAS_COR'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COR = :COR,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  NOME = :NOME,'
      '  PRODUTO = :PRODUTO,'
      '  SEQUENCIA = :SEQUENCIA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  COR = :OLD_COR and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    Left = 672
    Top = 128
    object Vendas_CorCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_COR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Vendas_CorCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_COR"."CODIGO"'
      Required = True
    end
    object Vendas_CorCOR: TIntegerField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      Origin = '"FAT_VENDAS_COR"."COR"'
      Required = True
    end
    object Vendas_CorQUANTIDADE: TFloatField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_COR"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
    end
    object Vendas_CorNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS_COR"."NOME"'
      Size = 50
    end
    object Vendas_CorPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_COR"."PRODUTO"'
      Required = True
      Size = 15
    end
    object Vendas_CorSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_COR"."SEQUENCIA"'
      Required = True
    end
  end
  object Extintor: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    AfterInsert = ExtintorAfterInsert
    DeleteSQL.Strings = (
      'delete from PST_EXTINTOR_CLIENTE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PLACA = :OLD_PLACA')
    InsertSQL.Strings = (
      'insert into PST_EXTINTOR_CLIENTE'
      '  (CNPJ, PESSOA_FJ, PLACA, MODELO, VENCIMENTO, TROCA)'
      'values'
      '  (:CNPJ, :PESSOA_FJ, :PLACA, :MODELO, :VENCIMENTO, :TROCA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  PLACA,'
      '  MODELO,'
      '  VENCIMENTO,'
      '  TROCA'
      'from PST_EXTINTOR_CLIENTE '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ and'
      '  PLACA = :PLACA')
    SelectSQL.Strings = (
      'SELECT'
      '    CNPJ ,'
      '    PESSOA_FJ,'
      '    PLACA,'
      '    MODELO,'
      '    VENCIMENTO,'
      '    TROCA '
      'FROM PST_EXTINTOR_CLIENTE'
      'WHERE CNPJ = :CNPJ AND PESSOA_FJ = :PESSOA_FJ'
      '')
    ModifySQL.Strings = (
      'update PST_EXTINTOR_CLIENTE'
      'set'
      '  CNPJ = :CNPJ,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PLACA = :PLACA,'
      '  MODELO = :MODELO,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  TROCA = :TROCA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PLACA = :OLD_PLACA')
    Left = 296
    Top = 336
    object ExtintorCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"PST_EXTINTOR_CLIENTE"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ExtintorPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"PST_EXTINTOR_CLIENTE"."PESSOA_FJ"'
      Required = True
    end
    object ExtintorPLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"PST_EXTINTOR_CLIENTE"."PLACA"'
      Required = True
      FixedChar = True
      Size = 8
    end
    object ExtintorMODELO: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Origin = '"PST_EXTINTOR_CLIENTE"."MODELO"'
      Required = True
    end
    object ExtintorVENCIMENTO: TDateTimeField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
      Origin = '"PST_EXTINTOR_CLIENTE"."VENCIMENTO"'
      Required = True
    end
    object ExtintorTROCA: TDateTimeField
      DisplayLabel = 'Troca'
      FieldName = 'TROCA'
      Origin = '"PST_EXTINTOR_CLIENTE"."TROCA"'
      Required = True
    end
  end
  object CUPOM: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 87 49'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Visualizar Impress'#227'o'
    OpcoesPreview.PreviewZoom = 115
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Configurar Impress'#227'o'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 672
    Top = 72
  end
  object ABASTECIMENTOS_ABERTOS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT'
      'BICO ,'
      'ABERTOS '
      'from ABASTECIMENTOS_ABERTOS ( :CNPJ )')
    Left = 144
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object ABASTECIMENTOS_ABERTOSBICO: TIBStringField
      FieldName = 'BICO'
      Origin = '"ABASTECIMENTOS_ABERTOS"."BICO"'
      FixedChar = True
      Size = 3
    end
    object ABASTECIMENTOS_ABERTOSABERTOS: TIntegerField
      FieldName = 'ABERTOS'
      Origin = '"ABASTECIMENTOS_ABERTOS"."ABERTOS"'
    end
  end
  object SelMascara: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          GRUPO, '
      '          NOME, '
      '          NOME_GRUPO, '
      '          NOME_SUB_GRUPO, '
      '          SUB_GRUPO '
      'from FAT_ORCAMENTOS_MASCARA'
      'Where CNPJ = :CNPJ and AGRUPADOR = :AGRUPADOR')
    Left = 48
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AGRUPADOR'
        ParamType = ptUnknown
      end>
    object SelMascaraCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_ORCAMENTOS_MASCARA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelMascaraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_ORCAMENTOS_MASCARA"."CODIGO"'
      Required = True
    end
    object SelMascaraGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"FAT_ORCAMENTOS_MASCARA"."GRUPO"'
      Required = True
    end
    object SelMascaraNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_ORCAMENTOS_MASCARA"."NOME"'
      Required = True
      Size = 50
    end
    object SelMascaraNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"FAT_ORCAMENTOS_MASCARA"."NOME_GRUPO"'
      Size = 50
    end
    object SelMascaraNOME_SUB_GRUPO: TIBStringField
      FieldName = 'NOME_SUB_GRUPO'
      Origin = '"FAT_ORCAMENTOS_MASCARA"."NOME_SUB_GRUPO"'
      Size = 50
    end
    object SelMascaraSUB_GRUPO: TIntegerField
      FieldName = 'SUB_GRUPO'
      Origin = '"FAT_ORCAMENTOS_MASCARA"."SUB_GRUPO"'
    end
  end
  object TRIBUTACAO_REVENDA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    CTE ,'
      '    CTIE'
      'FROM VER_EST_PRODUTOS_TRIBUT_REVENDA'
      '( :CNPJ, :PRODUTO )')
    Left = 48
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end>
    object TRIBUTACAO_REVENDACTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VER_EST_PRODUTOS_TRIBUT_REVENDA"."CTE"'
    end
    object TRIBUTACAO_REVENDACTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VER_EST_PRODUTOS_TRIBUT_REVENDA"."CTIE"'
    end
  end
  object ExcluirCartao: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      'delete from FIN_MOVIMENTO_CARTAO'
      'Where CNPJ = :CNPJ and VENDA = :CODIGO')
    Transaction = DmApp.Transaction
    Left = 592
    Top = 72
  end
  object SelMascara_Nome: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME '
      'from FAT_ORCAMENTOS_MASCARA_NOME'
      'where CNPJ = :CNPJ'
      'order by NOME')
    Left = 216
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelMascara_NomeCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_ORCAMENTOS_MASCARA_NOME"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelMascara_NomeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_ORCAMENTOS_MASCARA_NOME"."CODIGO"'
      Required = True
    end
    object SelMascara_NomeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_ORCAMENTOS_MASCARA_NOME"."NOME"'
      Required = True
      Size = 50
    end
  end
  object qryAux: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      '')
    Left = 216
    Top = 528
  end
  object qryAux2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      '')
    Left = 296
    Top = 528
  end
  object SelLote: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          ESTOQUE, '
      '          LOTE, '
      '          PRODUTO,'
      '          PENEIRA,'
      '          ATESTADO,'
      '          GERMINACAO,'
      '          PUREZA,'
      '          VALIDADE,'
      '          DT_ULTIMA_COMPRA,'
      '          DT_ULTIMA_VENDA'
      'from EST_LOTE_PRODUTO'
      'where CNPJ = :CNPJ and PRODUTO = :CODIGO')
    Left = 488
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object SelLoteCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_LOTE_PRODUTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelLoteCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_LOTE_PRODUTO"."CODIGO"'
      Required = True
    end
    object SelLoteESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = '"EST_LOTE_PRODUTO"."ESTOQUE"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelLoteLOTE: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = '"EST_LOTE_PRODUTO"."LOTE"'
      Required = True
      Size = 10
    end
    object SelLotePRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_LOTE_PRODUTO"."PRODUTO"'
      Required = True
      Size = 15
    end
    object SelLotePENEIRA: TIBStringField
      DisplayLabel = 'Peneira'
      FieldName = 'PENEIRA'
      Origin = '"EST_LOTE_PRODUTO"."PENEIRA"'
      Size = 10
    end
    object SelLoteATESTADO: TIBStringField
      DisplayLabel = 'Atestado'
      FieldName = 'ATESTADO'
      Origin = '"EST_LOTE_PRODUTO"."ATESTADO"'
      Size = 6
    end
    object SelLoteGERMINACAO: TFloatField
      DisplayLabel = 'Germina'#231#227'o'
      FieldName = 'GERMINACAO'
      Origin = '"EST_LOTE_PRODUTO"."GERMINACAO"'
      DisplayFormat = '% ###,###,##0.00'
    end
    object SelLotePUREZA: TFloatField
      DisplayLabel = 'Pureza'
      FieldName = 'PUREZA'
      Origin = '"EST_LOTE_PRODUTO"."PUREZA"'
      DisplayFormat = '% ###,###,##0.00'
    end
    object SelLoteVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'VALIDADE'
      Origin = '"EST_LOTE_PRODUTO"."VALIDADE"'
    end
    object SelLoteDT_ULTIMA_COMPRA: TDateTimeField
      DisplayLabel = #218'lt. Compra'
      FieldName = 'DT_ULTIMA_COMPRA'
      Origin = '"EST_LOTE_PRODUTO"."DT_ULTIMA_COMPRA"'
    end
    object SelLoteDT_ULTIMA_VENDA: TDateTimeField
      DisplayLabel = #218'lt. Venda'
      FieldName = 'DT_ULTIMA_VENDA'
      Origin = '"EST_LOTE_PRODUTO"."DT_ULTIMA_VENDA"'
    end
  end
  object AtualizaVDServ: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      
        'update fat_vendas vd set vd.pis_cofins_csll = :pis, vd.iss = :is' +
        's,'
      
        '                         vd.irrf = :irrf, vd.inss = :inss, vd.pg' +
        'to_frete = :frete'
      
        'where vd.cnpj = :cnpj and vd.codigo = :venda and vd.pessoa_fj = ' +
        ':pessoa'
      '')
    Transaction = DmApp.Transaction
    Left = 48
    Top = 488
  end
  object SelFornecedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'SELECT '
      '    EMPRESA ,'
      '    CODIGO ,'
      '    PESSOA_FJ,'
      '    NOME_RAZAO,'
      '    FONE,'
      '    FANTASIA,'
      '    CPF_CGC,'
      '    UF'
      'FROM VER_FORNECEDOR (:CNPJ)'
      'ORDER BY NOME_RAZAO')
    Left = 216
    Top = 464
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelFornecedorPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_FORNECEDORES"."PESSOA_FJ"'
      Required = True
    end
    object SelFornecedorNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object SelFornecedorFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object SelFornecedorFANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object SelFornecedorCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object SelFornecedorEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"VER_FORNECEDOR"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
    object SelFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FORNECEDOR"."CODIGO"'
    end
    object SelFornecedorUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_FORNECEDOR"."UF"'
      FixedChar = True
      Size = 2
    end
  end
  object Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 488
    Top = 8
  end
  object NotaPromissoria: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VendasAfterClose
    BeforeOpen = FiltrarDataSet
    SQL.Strings = (
      'select * '
      'from SIS_NOTAPROMISSORIA'
      'where CNPJ = :CNPJ')
    Left = 592
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object NotaPromissoriaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_NOTAPROMISSORIA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object NotaPromissoriaDATA_ALT: TIntegerField
      FieldName = 'DATA_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."DATA_ALT"'
    end
    object NotaPromissoriaDATA_DST: TIntegerField
      FieldName = 'DATA_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."DATA_DST"'
    end
    object NotaPromissoriaDOCUMENTO_ALT: TIntegerField
      FieldName = 'DOCUMENTO_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."DOCUMENTO_ALT"'
    end
    object NotaPromissoriaDOCUMENTO_DST: TIntegerField
      FieldName = 'DOCUMENTO_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."DOCUMENTO_DST"'
    end
    object NotaPromissoriaEXTENSO_ALT: TIntegerField
      FieldName = 'EXTENSO_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."EXTENSO_ALT"'
    end
    object NotaPromissoriaEXTENSO_DST: TIntegerField
      FieldName = 'EXTENSO_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."EXTENSO_DST"'
    end
    object NotaPromissoriaINSTRUCOES_ALT: TIntegerField
      FieldName = 'INSTRUCOES_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."INSTRUCOES_ALT"'
    end
    object NotaPromissoriaINSTRUCOES_DST: TIntegerField
      FieldName = 'INSTRUCOES_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."INSTRUCOES_DST"'
    end
    object NotaPromissoriaLPP: TIntegerField
      FieldName = 'LPP'
      Origin = '"SIS_NOTAPROMISSORIA"."LPP"'
    end
    object NotaPromissoriaPARCELA1_ALT: TIntegerField
      FieldName = 'PARCELA1_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."PARCELA1_ALT"'
    end
    object NotaPromissoriaPARCELA1_DST: TIntegerField
      FieldName = 'PARCELA1_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."PARCELA1_DST"'
    end
    object NotaPromissoriaPARCELA2_ALT: TIntegerField
      FieldName = 'PARCELA2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."PARCELA2_ALT"'
    end
    object NotaPromissoriaPARCELA2_DST: TIntegerField
      FieldName = 'PARCELA2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."PARCELA2_DST"'
    end
    object NotaPromissoriaSACADO1_ALT: TIntegerField
      FieldName = 'SACADO1_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."SACADO1_ALT"'
    end
    object NotaPromissoriaSACADO1_DST: TIntegerField
      FieldName = 'SACADO1_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."SACADO1_DST"'
    end
    object NotaPromissoriaSACADO2_ALT: TIntegerField
      FieldName = 'SACADO2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."SACADO2_ALT"'
    end
    object NotaPromissoriaSACADO2_DST: TIntegerField
      FieldName = 'SACADO2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."SACADO2_DST"'
    end
    object NotaPromissoriaTAMANHOPAGINA: TIntegerField
      FieldName = 'TAMANHOPAGINA'
      Origin = '"SIS_NOTAPROMISSORIA"."TAMANHOPAGINA"'
    end
    object NotaPromissoriaVALOR1_ALT: TIntegerField
      FieldName = 'VALOR1_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VALOR1_ALT"'
    end
    object NotaPromissoriaVALOR1_DST: TIntegerField
      FieldName = 'VALOR1_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VALOR1_DST"'
    end
    object NotaPromissoriaVALOR2_ALT: TIntegerField
      FieldName = 'VALOR2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VALOR2_ALT"'
    end
    object NotaPromissoriaVALOR2_DST: TIntegerField
      FieldName = 'VALOR2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VALOR2_DST"'
    end
    object NotaPromissoriaVENCIMENTO1_ALT: TIntegerField
      FieldName = 'VENCIMENTO1_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VENCIMENTO1_ALT"'
    end
    object NotaPromissoriaVENCIMENTO1_DST: TIntegerField
      FieldName = 'VENCIMENTO1_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENCIMENTO1_DST"'
    end
    object NotaPromissoriaVENCIMENTO2_ALT: TIntegerField
      FieldName = 'VENCIMENTO2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VENCIMENTO2_ALT"'
    end
    object NotaPromissoriaVENCIMENTO2_DST: TIntegerField
      FieldName = 'VENCIMENTO2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENCIMENTO2_DST"'
    end
    object NotaPromissoriaVENDA1_ALT: TIntegerField
      FieldName = 'VENDA1_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDA1_ALT"'
    end
    object NotaPromissoriaVENDA1_DST: TIntegerField
      FieldName = 'VENDA1_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDA1_DST"'
    end
    object NotaPromissoriaVENDA2_ALT: TIntegerField
      FieldName = 'VENDA2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDA2_ALT"'
    end
    object NotaPromissoriaVENDA2_DST: TIntegerField
      FieldName = 'VENDA2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDA2_DST"'
    end
    object NotaPromissoriaVECTO_EXT_DST: TIntegerField
      FieldName = 'VECTO_EXT_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDA2_DST"'
    end
    object NotaPromissoriaVECTO_EXT_ALT: TIntegerField
      FieldName = 'VECTO_EXT_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VECTO_EXT_ALT"'
    end
    object NotaPromissoriaEMPRESA_DST: TIntegerField
      FieldName = 'EMPRESA_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."EMPRESA_DST"'
    end
    object NotaPromissoriaEMPRESA_ALT: TIntegerField
      FieldName = 'EMPRESA_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."EMPRESA_ALT"'
    end
    object NotaPromissoriaEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"SIS_NOTAPROMISSORIA"."EMPRESA"'
      Size = 50
    end
    object NotaPromissoriaPORTA: TIBStringField
      FieldName = 'PORTA'
      Origin = '"SIS_NOTAPROMISSORIA"."PORTA"'
      Size = 50
    end
    object NotaPromissoriaCODIGO_DST: TIntegerField
      FieldName = 'CODIGO_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CODIGO_DST"'
    end
    object NotaPromissoriaCODIGO_ALT: TIntegerField
      FieldName = 'CODIGO_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CODIGO_ALT"'
    end
    object NotaPromissoriaCODIGO2_DST: TIntegerField
      FieldName = 'CODIGO2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CODIGO2_DST"'
    end
    object NotaPromissoriaCODIGO2_ALT: TIntegerField
      FieldName = 'CODIGO2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CODIGO2_ALT"'
    end
    object NotaPromissoriaDATA2_DST: TIntegerField
      FieldName = 'DATA2_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."DATA2_DST"'
    end
    object NotaPromissoriaDATA2_ALT: TIntegerField
      FieldName = 'DATA2_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."DATA2_ALT"'
    end
    object NotaPromissoriaTAMANHO_NOME: TIntegerField
      FieldName = 'TAMANHO_NOME'
      Origin = '"SIS_NOTAPROMISSORIA"."TAMANHO_NOME"'
    end
    object NotaPromissoriaDATA3_DST: TIntegerField
      FieldName = 'DATA3_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."DATA3_DST"'
    end
    object NotaPromissoriaDATA3_ALT: TIntegerField
      FieldName = 'DATA3_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."DATA3_ALT"'
    end
    object NotaPromissoriaIMPRIME_TOTALIZADOR: TIBStringField
      FieldName = 'IMPRIME_TOTALIZADOR'
      Origin = '"SIS_NOTAPROMISSORIA"."IMPRIME_TOTALIZADOR"'
      FixedChar = True
      Size = 1
    end
    object NotaPromissoriaDESCRICAO_CANHOTO: TIBStringField
      FieldName = 'DESCRICAO_CANHOTO'
      Origin = '"SIS_NOTAPROMISSORIA"."DESCRICAO_CANHOTO"'
      FixedChar = True
      Size = 1
    end
    object NotaPromissoriaVENDEDOR_ALT: TIntegerField
      FieldName = 'VENDEDOR_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDEDOR_ALT"'
    end
    object NotaPromissoriaVENDEDOR1_DST: TIntegerField
      FieldName = 'VENDEDOR1_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDEDOR1_DST"'
    end
    object NotaPromissoriaVENDEDOR1_ALT: TIntegerField
      FieldName = 'VENDEDOR1_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDEDOR1_ALT"'
    end
    object NotaPromissoriaVENDEDOR_DST: TIntegerField
      FieldName = 'VENDEDOR_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."VENDEDOR_DST"'
    end
    object NotaPromissoriaMENSAGEM_NP: TIBStringField
      FieldName = 'MENSAGEM_NP'
      Origin = '"SIS_NOTAPROMISSORIA"."MENSAGEM_NP"'
      Size = 200
    end
    object NotaPromissoriaMENSAGEM_DST: TIntegerField
      FieldName = 'MENSAGEM_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."MENSAGEM_DST"'
    end
    object NotaPromissoriaMENSAGEM_ALT: TIntegerField
      FieldName = 'MENSAGEM_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."MENSAGEM_ALT"'
    end
    object NotaPromissoriaPR_GRAF: TIBStringField
      FieldName = 'PR_GRAF'
      Origin = '"SIS_NOTAPROMISSORIA"."PR_GRAF"'
      FixedChar = True
      Size = 1
    end
    object NotaPromissoriaPR_GRAF_LEIAUTE: TMemoField
      FieldName = 'PR_GRAF_LEIAUTE'
      Origin = '"SIS_NOTAPROMISSORIA"."PR_GRAF_LEIAUTE"'
      BlobType = ftMemo
      Size = 8
    end
    object NotaPromissoriaCAN_PARC_DST: TIntegerField
      FieldName = 'CAN_PARC_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_PARC_DST"'
    end
    object NotaPromissoriaCAN_PARC_ALT: TIntegerField
      FieldName = 'CAN_PARC_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_PARC_ALT"'
    end
    object NotaPromissoriaCAN_VALOR_DST: TIntegerField
      FieldName = 'CAN_VALOR_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_VALOR_DST"'
    end
    object NotaPromissoriaCAN_VALOR_ALT: TIntegerField
      FieldName = 'CAN_VALOR_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_VALOR_ALT"'
    end
    object NotaPromissoriaCAN_COD_CLI_DST: TIntegerField
      FieldName = 'CAN_COD_CLI_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_COD_CLI_DST"'
    end
    object NotaPromissoriaCAN_COD_CLI_ALT: TIntegerField
      FieldName = 'CAN_COD_CLI_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_COD_CLI_ALT"'
    end
    object NotaPromissoriaCAN_COD_VENDA_DST: TIntegerField
      FieldName = 'CAN_COD_VENDA_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_COD_VENDA_DST"'
    end
    object NotaPromissoriaCAN_COD_VENDA_ALT: TIntegerField
      FieldName = 'CAN_COD_VENDA_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_COD_VENDA_ALT"'
    end
    object NotaPromissoriaCAN_VENCTO_DST: TIntegerField
      FieldName = 'CAN_VENCTO_DST'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_VENCTO_DST"'
    end
    object NotaPromissoriaCAN_VENCTO_ALT: TIntegerField
      FieldName = 'CAN_VENCTO_ALT'
      Origin = '"SIS_NOTAPROMISSORIA"."CAN_VENCTO_ALT"'
    end
  end
  object qProdFracionado: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select prd.vende_fracionado'
      'from est_produtos prd'
      'where prd.CNPJ = :CNPJ and prd.codigo = :produto')
    Left = 392
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end>
    object qProdFracionadoVENDE_FRACIONADO: TIBStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"EST_PRODUTOS"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
  end
  object SelTrocas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = SelTrocasCalcFields
    SQL.Strings = (
      'SELECT * FROM VER_FAT_TROCAS( :CNPJ, :ORCAMENTO )'
      ''
      '')
    Left = 392
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ORCAMENTO'
        ParamType = ptUnknown
      end>
    object SelTrocasttl_liquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ttl_liquido'
      Calculated = True
    end
    object SelTrocasPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_TROCAS"."PESSOA_FJ"'
    end
    object SelTrocasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_TROCAS"."CODIGO"'
    end
    object SelTrocasDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FAT_TROCAS"."DATA"'
    end
    object SelTrocasVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'VALIDADE'
      Origin = '"VER_FAT_TROCAS"."VALIDADE"'
    end
    object SelTrocasTOTAL: TIBBCDField
      DisplayLabel = 'Total Entrada'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_TROCAS"."TOTAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelTrocasTOTAL_2: TIBBCDField
      DisplayLabel = 'Total Sa'#237'da'
      FieldName = 'TOTAL_2'
      Origin = '"VER_FAT_TROCAS"."TOTAL_2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelTrocasENVIADA_CX: TIBStringField
      DisplayLabel = 'Enviada CX.'
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_TROCAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object SelTrocasFECHADO: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADO'
      Origin = '"VER_FAT_TROCAS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object SelTrocasOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_TROCAS"."OBSERVACAO"'
      Size = 80
    end
    object SelTrocasNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome Cliente'
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_FAT_TROCAS"."NOME_RAZAO"'
      Size = 50
    end
    object SelTrocasNOME_FORMA: TIBStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_TROCAS"."NOME_FORMA"'
      Size = 50
    end
    object SelTrocasNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_TROCAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object SelTrocasVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_TROCAS"."VENDEDOR"'
    end
    object SelTrocasVLR_TOTAL: TIBBCDField
      DisplayLabel = 'Vlr. Total Entradas'
      FieldName = 'VLR_TOTAL'
      Origin = '"VER_FAT_TROCAS"."VLR_TOTAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelTrocasVLR_TOTAL_2: TIBBCDField
      DisplayLabel = 'Vlr. Total Sa'#237'das'
      FieldName = 'VLR_TOTAL_2'
      Origin = '"VER_FAT_TROCAS"."VLR_TOTAL_2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelTrocasDESC_ACRESC: TIBBCDField
      DisplayLabel = 'Desc/Acresc Entrada'
      FieldName = 'DESC_ACRESC'
      Origin = '"VER_FAT_TROCAS"."DESC_ACRESC"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelTrocasDESC_ACRESC_2: TIBBCDField
      DisplayLabel = 'Desc/Acresc Sa'#237'da'
      FieldName = 'DESC_ACRESC_2'
      Origin = '"VER_FAT_TROCAS"."DESC_ACRESC_2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelTrocasCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"VER_FAT_TROCAS"."CLIENTE"'
      Size = 30
    end
    object SelTrocasPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FAT_TROCAS"."PESO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelTrocasVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_TROCAS"."VOLUME"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelTrocasFORMA: TIntegerField
      DisplayLabel = 'C'#243'd. Forma Pagto'
      FieldName = 'FORMA'
      Origin = '"VER_FAT_TROCAS"."FORMA"'
    end
    object SelTrocasENTRADA: TIBBCDField
      DisplayLabel = 'Vlr. Entrada'
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_TROCAS"."ENTRADA"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelTrocasDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_TROCAS"."DINHEIRO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelTrocasCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_TROCAS"."CHEQUE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelTrocasCARTAO: TIBBCDField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_TROCAS"."CARTAO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelTrocasTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_FAT_TROCAS"."TICKET"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelTrocasDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Dt. Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FAT_TROCAS"."DATA_CAIXA"'
    end
    object SelTrocasUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"VER_FAT_TROCAS"."USUARIO"'
    end
    object SelTrocasTURNO: TIntegerField
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"VER_FAT_TROCAS"."TURNO"'
    end
  end
  object PCD_REUTILIZAR_N_NF: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_REUTILIZAR_N_NF'
    Left = 304
    Top = 599
  end
  object Extenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 720
    Top = 288
  end
end
