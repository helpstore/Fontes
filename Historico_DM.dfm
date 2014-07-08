object DMHistorico: TDMHistorico
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 273
  Top = 150
  Height = 375
  Width = 544
  object Vendas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelPessoasBeforeOpen
    SQL.Strings = (
      'SELECT'
      '    CODIGO,'
      '    DATA,'
      '    FECHADA,'
      '    HISTORICO,'
      '    PESSOA_FJ,'
      '    PESSOA_RAZAO,'
      '    CPF_CGC,'
      '    USUARIO,'
      '    NATUREZA,'
      '    NOME_NATUREZA,'
      '    ENVIADA_CX,'
      '    FORMA_PGTO,'
      '    NUM_NF,'
      '    NUM_CUPOM,'
      '    PROPRIEDADE,'
      '    CONVENIADO,'
      '    TIPO_DOCTO,'
      '    LOCAL_COBRANCA,'
      '    DESC_ACRES,'
      '    ENTRADA,'
      '    DINHEIRO,'
      '    CHEQUE,'
      '    CARTAO,'
      '    TICKET,'
      '    TOTAL,'
      '    VLRLIQUIDO,'
      '    OBSERVACAO,'
      '    VLR_PARC_LC,'
      '    TERCEIRO,'
      '    CARGA,'
      '    VOLUME,'
      '    PESO,'
      '    REQUISICAO,'
      '    DESCRICAO,'
      '    TIPO_VENDA,'
      '    NOME_CONSUMIDOR,'
      '    ORCAMENTO,'
      '    VENDEDO,'
      '    NOME_VENDEDOR ,'
      '    DATA_CAIXA'
      'FROM VER_FAT_VENDAS_HISTORICO'
      '( :CNPJ, :PESSOA )'
      'ORDER BY DATA, CODIGO')
    Left = 32
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA'
        ParamType = ptUnknown
      end>
    object VendasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."CODIGO"'
    end
    object VendasDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."DATA"'
    end
    object VendasFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object VendasHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."HISTORICO"'
      Size = 100
    end
    object VendasPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."PESSOA_FJ"'
    end
    object VendasPESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."PESSOA_RAZAO"'
      Size = 50
    end
    object VendasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."USUARIO"'
    end
    object VendasNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."NATUREZA"'
    end
    object VendasNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."NOME_NATUREZA"'
      Size = 50
    end
    object VendasENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object VendasFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."FORMA_PGTO"'
    end
    object VendasNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."NUM_NF"'
    end
    object VendasNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."NUM_CUPOM"'
    end
    object VendasPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."PROPRIEDADE"'
    end
    object VendasCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."CONVENIADO"'
    end
    object VendasTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object VendasLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."LOCAL_COBRANCA"'
    end
    object VendasDESC_ACRES: TIBBCDField
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."DESC_ACRES"'
      Precision = 18
      Size = 4
    end
    object VendasENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."ENTRADA"'
      Precision = 18
      Size = 4
    end
    object VendasDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."DINHEIRO"'
      Precision = 18
      Size = 4
    end
    object VendasCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."CHEQUE"'
      Precision = 18
      Size = 4
    end
    object VendasCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."CARTAO"'
      Precision = 18
      Size = 4
    end
    object VendasTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."TICKET"'
      Precision = 18
      Size = 4
    end
    object VendasTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object VendasVLRLIQUIDO: TIBBCDField
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."VLRLIQUIDO"'
      Precision = 18
      Size = 4
    end
    object VendasVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."VLR_PARC_LC"'
      Precision = 18
      Size = 4
    end
    object VendasTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."TERCEIRO"'
    end
    object VendasCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."CARGA"'
    end
    object VendasVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object VendasPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."PESO"'
      Precision = 18
      Size = 4
    end
    object VendasREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."REQUISICAO"'
      Size = 6
    end
    object VendasDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."DESCRICAO"'
      Size = 8
    end
    object VendasTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object VendasNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object VendasORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."ORCAMENTO"'
    end
    object VendasVENDEDO: TIntegerField
      FieldName = 'VENDEDO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."VENDEDO"'
    end
    object VendasNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."NOME_VENDEDOR"'
      Size = 50
    end
    object VendasCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."CPF_CGC"'
    end
    object VendasDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."DATA_CAIXA"'
    end
    object VendasOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_VENDAS_HISTORICO"."OBSERVACAO"'
      Size = 200
    end
  end
  object print: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = True
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
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
    CaptionSetup = ' Configurar Impress'#227'o'
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
    Left = 112
    Top = 16
  end
  object SelPessoas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelPessoasBeforeOpen
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
      '    EMPRESA'
      'FROM VER_PESSOA_FJ ( :CNPJ )'
      'ORDER BY NOME_RAZAO')
    Left = 193
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelPessoasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object SelPessoasNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object SelPessoasFONE: TIBStringField
      DisplayLabel = 'Fone'
      DisplayWidth = 20
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object SelPessoasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CLIENTES"."PESSOA_FJ"'
      Required = True
    end
    object SelPessoasFANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object SelPessoasCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object SelPessoasBLOQUEADO: TIBStringField
      DisplayLabel = 'Blq'
      FieldName = 'BLOQUEADO'
      Origin = '"VER_CLIENTE"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object SelPessoasCLASSIFICACAO: TIBStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'CLASSIFICACAO'
      Origin = '"VER_CLIENTE"."CLASSIFICACAO"'
      Size = 50
    end
    object SelPessoasUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_CLIENTE"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPessoasEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"VER_CLIENTE"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
  end
  object Fat_VendasItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'Select *'
      'from VER_FAT_VENDAS_ITENS( :CNPJ, :CODIGO) ')
    Left = 191
    Top = 66
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
    object Fat_VendasItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRODUTO"'
      Size = 15
    end
    object Fat_VendasItensSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FAT_VENDAS_ITENS"."SEQUENCIA"'
    end
    object Fat_VendasItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FAT_VENDAS_ITENS"."QUANTIDADE"'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_FAT_VENDAS_ITENS"."NOME"'
      Size = 50
    end
    object Fat_VendasItensPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRC_UNITARIO"'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRC_CUSTO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_FAT_VENDAS_ITENS"."ICM"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensICM_SUBS: TIBBCDField
      FieldName = 'ICM_SUBS'
      Origin = '"VER_FAT_VENDAS_ITENS"."ICM_SUBS"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_ITENS"."IPI"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_ITENS"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_ITENS"."PESO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_FAT_VENDAS_ITENS"."DESCONTO"'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensPORC_DESC: TIBBCDField
      FieldName = 'PORC_DESC'
      Origin = '"VER_FAT_VENDAS_ITENS"."PORC_DESC"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_FAT_VENDAS_ITENS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Fat_VendasItensPRC_UNIT_ORIGINAL: TIBBCDField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRC_UNIT_ORIGINAL"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Fat_VendasItensALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"VER_FAT_VENDAS_ITENS"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasItensPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRODUTOFIS"'
      Size = 15
    end
    object Fat_VendasItensNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"VER_FAT_VENDAS_ITENS"."NOME_FIS"'
      Size = 50
    end
    object Fat_VendasItensCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VER_FAT_VENDAS_ITENS"."CTE"'
    end
    object Fat_VendasItensCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VER_FAT_VENDAS_ITENS"."CTIE"'
    end
    object Fat_VendasItensORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"VER_FAT_VENDAS_ITENS"."ORIGEM"'
    end
    object Fat_VendasItensREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VER_FAT_VENDAS_ITENS"."REDUCAO"'
    end
    object Fat_VendasItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FAT_VENDAS_ITENS"."SUBUNIDADE"'
    end
  end
end
