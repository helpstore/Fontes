unit Empresas_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery;                                           

type
  TDMEmpresas = class(TDataModule)
    Empresas: TIBDataSet;
    SelPessoaFJ: TIBQuery;
    dsEmpresas: TDataSource;
    SelEmpresa: TIBQuery;
    SelTipoDocto: TIBQuery;
    SelTipoDoctoSIGLA: TIBStringField;
    SelTipoDoctoNOME: TIBStringField;
    SelNatureza: TIBQuery;
    SelNaturezaCODIGO: TIntegerField;
    SelNaturezaNOME: TIBStringField;
    SelLocalCobranca: TIBQuery;
    SelLocalCobrancaCNPJ: TIBStringField;
    SelLocalCobrancaCONTA: TIntegerField;
    SelLocalCobrancaCODIGO: TIBStringField;
    SelLocalCobrancaCONTAPAI: TIBStringField;
    SelLocalCobrancaNOME: TIBStringField;
    SelLocalCobrancaBANCO: TIBStringField;
    SelCaixa: TIBQuery;
    SelUsuario: TIBQuery;
    SelUsuarioCODIGO: TIntegerField;
    SelUsuarioLOGIN: TIBStringField;
    SelUsuarioNOME: TIBStringField;
    SelUsuarioPERFIL: TIntegerField;
    SelUsuarioSENHA: TIBStringField;
    SelCaixaCNPJ: TIBStringField;
    SelCaixaCONTA: TIntegerField;
    SelCaixaUSUARIO: TIntegerField;
    SelCaixaNome: TStringField;
    SelCaixaLogin: TStringField;
    Configuracoes: TIBDataSet;
    SelPessoaFJCODIGO: TIntegerField;
    SelPessoaFJNOME_RAZAO: TIBStringField;
    SelLocalCobrancaULTIMO_CHEQUE: TIntegerField;
    SelLocalCobrancaTIPO: TIBStringField;
    SelLocalCobrancaAGENCIA: TIBStringField;
    SelLocalCobrancaDV_AGENCIA: TIBStringField;
    SelLocalCobrancaCONTA_CORRENTE: TIBStringField;
    SelLocalCobrancaDV_CONTA_CORRENTE: TIBStringField;
    SelLocalCobrancaDV_AGENCIA_CONTA: TIBStringField;
    EmpresasCNPJ: TIBStringField;
    EmpresasNOME: TIBStringField;
    EmpresasENDERECO: TIBStringField;
    EmpresasBAIRRO: TIBStringField;
    EmpresasCIDADE: TIBStringField;
    EmpresasUF: TIBStringField;
    EmpresasCEP: TIBStringField;
    EmpresasFONE: TIBStringField;
    EmpresasFAX: TIBStringField;
    EmpresasMENS_ECF: TIBStringField;
    EmpresasALT_PRC_VND: TIBStringField;
    EmpresasTX_JUROS_ATE: TFloatField;
    EmpresasTX_JUROS_APOS: TFloatField;
    EmpresasTIPO_TAXA: TIBStringField;
    EmpresasMORA_DIARIA: TFloatField;
    EmpresasDESP_BANCARIA: TFloatField;
    EmpresasMENSAGEM_BOL: TIBStringField;
    EmpresasMENSAGEM_BOL2: TIBStringField;
    EmpresasCLI_VND_VISTA: TIntegerField;
    EmpresasDT_ULT_VENDA: TDateTimeField;
    EmpresasCUSTO_VARIAVEL: TFloatField;
    EmpresasVENDEDOR: TFloatField;
    EmpresasPROPAGANDA: TFloatField;
    EmpresasDESCONTOS: TFloatField;
    EmpresasPG_COM_TERC: TIBStringField;
    EmpresasPDV_NATUREZA: TIntegerField;
    EmpresasPDV_TIPODOCTO: TIBStringField;
    EmpresasPDV_LOCALCOBRANCA: TIntegerField;
    EmpresasDIG_DESC_VENDA: TIBStringField;
    EmpresasDIG_CHEQUE_VENDA: TIBStringField;
    EmpresasPDV_MSG1: TIBStringField;
    EmpresasPDV_MSG2: TIBStringField;
    EmpresasPDV_MSG3: TIBStringField;
    EmpresasPDV_MSG4: TIBStringField;
    EmpresasPDV_MSG5: TIBStringField;
    EmpresasPDV_ECF: TIBStringField;
    EmpresasPDV_MAIORVALORUNIT: TFloatField;
    EmpresasPDV_SENHA: TIBStringField;
    EmpresasLOCAL_FATURA: TIBStringField;
    EmpresasECF_ULTNUMERO: TIntegerField;
    EmpresasDIG_UNIDADE_VENDA: TIBStringField;
    EmpresasPDV_PARCELA_VENDA: TIBStringField;
    EmpresasSELAGRUPADOR: TIBStringField;
    EmpresasPDV_ELIMINA_ZEROS: TIBStringField;
    EmpresasTIPO_CONSULTA_PROD: TIBStringField;
    EmpresasPDV_ACRESCENTA_ZEROS: TIBStringField;
    EmpresasCARREGAR_ARQUIVOS: TIBStringField;
    EmpresasVER_VENDAS_ENVIADAS: TIBStringField;
    EmpresasCHM_LOCPROD_INEXISTENTE: TIBStringField;
    EmpresasPDV_F4_ALTERACLIENTE: TIBStringField;
    EmpresasDIG_SENHA_VENDEDOR: TIBStringField;
    EmpresasCOR_FUNDO_SELECIONADO: TIBStringField;
    EmpresasNUM_REG_LOAD: TIntegerField;
    EmpresasPDV_DIGITA_QUANTIDADE: TIBStringField;
    EmpresasCOR_FUNDO_DESELECIONADO: TIBStringField;
    EmpresasCX_PAGAR_CAIXA: TIBStringField;
    EmpresasCX_RECEBER_CAIXA: TIBStringField;
    EmpresasEXT_LANC_CAIXA_FECHADO: TIBStringField;
    EmpresasNUM_MAX_ITENS: TIntegerField;
    EmpresasIMP_UNIT_ORC: TIBStringField;
    EmpresasDUPLICATA: TIntegerField;
    EmpresasBLQQTDEFISCAL: TIBStringField;
    EmpresasNUM_MAX_ITENS_ORC: TIntegerField;
    EmpresasALTERA_PRECO_VENDA_ENT: TIBStringField;
    EmpresasTIPO_EMPRESA: TIBStringField;
    EmpresasDIG_CARTAO_VENDA: TIBStringField;
    EmpresasPIS: TFloatField;
    EmpresasCOFINS: TFloatField;
    EmpresasDIGITA_NUM_NOTA: TIBStringField;
    EmpresasDIGITA_COTACOES: TIBStringField;
    EmpresasFOTO: TIBStringField;
    EmpresasLOJA_DESC_AVISTA: TFloatField;
    EmpresasITENS_ORCAMENTO: TIntegerField;
    EmpresasIMPRIME_CABEC_2FOL: TIBStringField;
    EmpresasIMPRIME_DESCONTO_AGRUPADO: TIBStringField;
    EmpresasIMPRIME_RODAPE_ORCAMENTO: TIBStringField;
    EmpresasTIPO_CUSTO: TIBStringField;
    EmpresasTIPO_ORCAMENTO: TIBStringField;
    EmpresasSELECIONA_IMPRESSORA: TIBStringField;
    EmpresasCX_COMP_SLD_ANT: TIBStringField;
    EmpresasCX_IMP_VND_AGRUPADA: TIBStringField;
    EmpresasCX_TRANSP_SLD_ANT: TIBStringField;
    EmpresasMENS2_ECF: TIBStringField;
    EmpresasMENS3_ECF: TIBStringField;
    EmpresasTIPO_CAB_FATURA: TIBStringField;
    EmpresasTIPO_CONTAGEM: TIBStringField;
    EmpresasIMP_CASAS_QNTDE_FATURA: TIBStringField;
    EmpresasVALIDA_DOCUMENTOS: TIBStringField;
    EmpresasNUMERO_ZEROS: TIntegerField;
    EmpresasPST_MOSTRA_ENTRADAS: TIBStringField;
    EmpresasTROCO_MAXIMO: TFloatField;
    EmpresasMASCARA_FONE: TIBStringField;
    EmpresasPDV_REPETE_PRODUTOS: TIBStringField;
    EmpresasIMPRIME_SUBTOTAL_ORCAMENTO: TIBStringField;
    EmpresasEMBUTIR_JUROS_IMPRESSOES: TIBStringField;
    EmpresasMASCARA_PRODUTOS_ENT: TIBStringField;
    EmpresasPDV_IMP_VINC_VALOR: TIBStringField;
    EmpresasPDV_PROPRIEDADE: TIBStringField;
    EmpresasPST_SENHA_CAIXA: TIBStringField;
    EmpresasIMPRIMIR_POSICOES: TIBStringField;
    EmpresasSINCRONIZAR_BOL_DPL: TIBStringField;
    EmpresasCOMISSAO_POR_FAIXA: TIBStringField;
    EmpresasDIGITA_VENDEDOR_PDV: TIBStringField;
    EmpresasCOMISSAO_NORMAL: TIBStringField;
    EmpresasULTIMO_TURNO: TIntegerField;
    EmpresasIP_EXTERNO: TIBStringField;
    EmpresasCAMINHO_EXTERNO: TIBStringField;
    EmpresasSENHA_EMPRESA_EXTERNA: TIBStringField;
    EmpresasUTILIZA_DOCTOS_INT_ENTR: TIBStringField;
    EmpresasCONF_DUPLIC_REC_LANCTO: TIBStringField;
    EmpresasSIS_MENSAGEM_INTERNA: TIBStringField;
    EmpresasMENSAGEM_CONDICIONAL: TIBStringField;
    EmpresasFAT_TIPO_PARCELAMENTO: TIBStringField;
    EmpresasFAZ_FECHAMENTO_DIARIO: TIBStringField;
    EmpresasATUALIZA_ARQ_EXTERNO: TIBStringField;
    EmpresasCAIXA_SINCRONIZADO: TIBStringField;
    EmpresasICM_PRESUMIDO_IPI: TFloatField;
    EmpresasICM_PRESUMIDO_SEM_IPI: TFloatField;
    EmpresasALT_PRCVEND_MARGEM: TIBStringField;
    EmpresasBLQ_VENDA_SEM_IERG: TIBStringField;
    EmpresasPDV_UNITARIO_ZERADO: TIBStringField;
    EmpresasDIRETORIO_TEF: TIBStringField;
    EmpresasIMPRIME_NF_BALCAO: TIBStringField;
    EmpresasTRANSF_VLRS_CAIXA: TIBStringField;
    EmpresasLOCAL_FATURA_TROCA: TIBStringField;
    EmpresasEST_ET_PROD_GRD1: TMemoField;
    EmpresasEST_ET_PROD_GRD2: TMemoField;
    EmpresasEST_ET_PROD_GRD3: TMemoField;
    EmpresasEST_ET_PROD_GRD4: TMemoField;
    EmpresasCH_INFLUENCIA_VENDA: TIBStringField;
    EmpresasCRT_INFLUENCIA_VENDA: TIBStringField;
    EmpresasIMP_SERIE_NF: TIBStringField;
    EmpresasCONFIG_SERIE_NF: TMemoField;
    EmpresasBLT_INSTRUCAO: TMemoField;
    EmpresasBLT_LOCAL_PAGTO: TIBStringField;
    EmpresasBLT_COD_CEDENTE: TIntegerField;
    EmpresasBLT_AGENCIA: TIBStringField;
    EmpresasBLT_CARTEIRA: TIBStringField;
    EmpresasBLT_LAYOUT: TSmallintField;
    G: TIBStringField;
    EmpresasBLT_DIG_CONTA: TIBStringField;
    EmpresasBLT_CONTA: TIBStringField;
    EmpresasBLT_DIG_COD_CEDENTE: TIBStringField;
    EmpresasBLT_ACEITE_DOCTO: TIBStringField;
    EmpresasBLT_DIAS_ABATIMENTO: TIBStringField;
    EmpresasBLT_DIAS_DESCONTO: TIntegerField;
    EmpresasBLT_DIAS_PROTESTO: TIntegerField;
    EmpresasBLT_PCT_ABATIMENTO: TFloatField;
    EmpresasBLT_PCT_DESCONTO: TFloatField;
    EmpresasBLT_VLR_IOF: TFloatField;
    EmpresasGERA_BOLETOS: TIBStringField;
    EmpresasBLT_DIR_REMESSA: TIBStringField;
    EmpresasBLT_DIR_RETORNO: TIBStringField;
    EmpresasCTB_JUROS_RECEBIDOS_REC: TIntegerField;
    EmpresasCONTA_CARTAO_CAIXA: TIntegerField;
    EmpresasDESCONTO_MAXIMO: TFloatField;
    EmpresasBLT_VLR_OUTRAS_DESP: TFloatField;
    EmpresasBLT_DIAS_MORA_JUROS: TIntegerField;
    EmpresasEST_ET_PROD_GRD3_PARC: TMemoField;
    EmpresasEST_ET_PROD_GRD3_DESCTO: TMemoField;
    EmpresasCONFIG_CT13: TMemoField;
    EmpresasCONFIG_NF_SERV: TMemoField;
    EmpresasDIG_ITENS_NF: TSmallintField;
    EmpresasVALIDA_ABERTURA_CX: TIBStringField;
    EmpresasBLT_CONVENIO: TIntegerField;
    EmpresasCONTROLE_PEDIDO_RESTAURANTE: TIBStringField;
    EmpresasDB_VERSAO: TIntegerField;
    EmpresasCONFIG_MALADIRETA: TMemoField;
    EmpresasTAXA_ACRESC_PDV: TFloatField;
    EmpresasMSG_PDVTELA: TIBStringField;
    EmpresasCONTAGEM_INCREMENTAL: TIBStringField;
    EmpresasEXIBE_MOD: TIBStringField;
    EmpresasEXIBE_PENDENCIA: TIBStringField;
    EmpresasKEY_RELEASE: TIBStringField;
    EmpresasEXIBE_MESAS: TIBStringField;
    EmpresasEXIBE_CTB: TIBStringField;
    EmpresasEXIBE_CB: TIBStringField;
    EmpresasEXIBE_SRV: TIBStringField;
    EmpresasCARREGAMENTO_PARCIAL: TIBStringField;
    EmpresasCONFIG_NF_GRAF: TMemoField;
    EmpresasBLT_EMAIL_SERVIDOR: TIBStringField;
    EmpresasBLT_EMAIL_PORTA: TSmallintField;
    EmpresasBLT_EMAIL_USER: TIBStringField;
    EmpresasBLT_EMAIL_SENHA: TIBStringField;
    EmpresasBLT_NOSSO_NUM_INI: TIntegerField;
    EmpresasBLT_NOSSO_NUM_FIM: TIntegerField;
    EmpresasBLT_NOSSO_NUM_PROX: TIntegerField;
    EmpresasEMAIL: TIBStringField;
    EmpresasBLT_MULTA: TFloatField;
    EmpresasCONFIG_COPIA_CHEQUE: TMemoField;
    EmpresasCONFIG_SERIE_ORC_NF: TMemoField;
    EmpresasCONFIG_REQUISICAO: TMemoField;
    EmpresasCONFIG_CARTA_SCPC: TMemoField;
    EmpresasATIVA_AGENTE: TIBStringField;
    EmpresasNF_CONTINUO_COM_MESMO_NUM_NF: TIBStringField;
    EmpresasNF_CONTINUO_NOME_CAMPO_TRUE: TIBStringField;
    EmpresasCONFIG_CONVENIO_PDV: TMemoField;
    EmpresasIMP_CONVENIO_GRAF: TIBStringField;
    EmpresasCONFIG_RECIBO: TMemoField;
    EmpresasNUM_ITENS_NF: TSmallintField;
    EmpresasNUM_ITENS_PDD: TSmallintField;
    EmpresasCONFIG_OS: TMemoField;
    EmpresasOFC_LT_PRODUTO_COPIAS: TIBStringField;
    SelProdutos: TIBQuery;
    SelProdutosCODIGO: TIBStringField;
    SelProdutosNOME: TIBStringField;
    SelProdutosSERIE: TIBStringField;
    SelProdutosCOD_NOME: TIBStringField;
    EmpresasEXIBE_AGR: TIBStringField;
    EmpresasIE: TIBStringField;
    EmpresasCOD_CIDADE: TIntegerField;
    EmpresasCOD_LOGRADOURO: TIntegerField;
    EmpresasCOD_BAIRRO: TIntegerField;
    EmpresasEND_NUMERO: TIntegerField;
    EmpresasEXIBE_CARGA: TIBStringField;
    EmpresasEXIBE_NFE: TIBStringField;
    EmpresasEXIBE_SINTEGRA: TIBStringField;
    EmpresasNFE_AMBIENTE: TIBStringField;
    EmpresasNFE_VERSAO_APP: TIBStringField;
    EmpresasNFE_DIR_EXPORTACAO: TIBStringField;
    EmpresasNFE_LEIAUTE_DANFE: TIBStringField;
    EmpresasLOCAL_PADRAO: TIBStringField;
    EmpresasCONFIG_AGR_RECEITA: TMemoField;
    EmpresasCONFIG_ACERTO_1: TMemoField;
    EmpresasDESC_BX_PARCIAL: TIBStringField;
    EmpresasCM_AGR: TIBStringField;
    EmpresasCM_VDT: TIBStringField;
    EmpresasCMD_VDT_PCT: TFloatField;
    EmpresasPDV_FORMA_PAGTO: TIntegerField;
    EmpresasEXIBE_TBL: TIBStringField;
    EmpresasEXIBE_ACERTO_CONTAS: TIBStringField;
    EmpresasEMAIL_PADRAO: TIBStringField;
    EmpresasSMTP: TIBStringField;
    EmpresasLOGIN: TIBStringField;
    EmpresasNOME_USUARIO: TIBStringField;
    EmpresasSENHA: TIBStringField;
    EmpresasEMAIL_CONTROLE: TIBStringField;
    EmpresasEXIBE_MESALIDADES: TIBStringField;
    EmpresasFORMA_PAGTO_MENSALIDADE: TIntegerField;
    EmpresasNFE_CERT_CAMINHO: TIBStringField;
    EmpresasNFE_CERT_SENHA: TIBStringField;
    EmpresasNFE_CERT_NUM_SERIE: TIBStringField;
    EmpresasNFE_GER_TP_DANFE: TIBStringField;
    EmpresasNFE_GER_FORMA_EMISSAO: TIBStringField;
    EmpresasNFE_GER_PATH_LOGS: TIBStringField;
    EmpresasNFE_GER_IMG_DANFE: TIBStringField;
    EmpresasNFE_WS_UF: TIBStringField;
    EmpresasNFE_WS_AMBIENTE: TIBStringField;
    EmpresasNFE_WS_PROXY_HOST: TIBStringField;
    EmpresasNFE_WS_PROXY_PORTA: TIBStringField;
    EmpresasNFE_WS_PROXY_USUARIO: TIBStringField;
    EmpresasNFE_WS_PROXY_SENHA: TIBStringField;
    EmpresasNFE_EMIT_CNPJ: TIBStringField;
    EmpresasNFE_EMIT_INSC_ESTADUAL: TIBStringField;
    EmpresasNFE_EMIT_FANTASIA: TIBStringField;
    EmpresasNFE_EMIT_FONE: TIBStringField;
    EmpresasNFE_EMIT_CEP: TIBStringField;
    EmpresasNFE_EMIT_LOGRADOURO: TIBStringField;
    EmpresasNFE_EMIT_BAIRRO: TIBStringField;
    EmpresasNFE_EMIT_COMPLEMENTO: TIBStringField;
    EmpresasNFE_EMIT_NUMERO: TIntegerField;
    EmpresasNFE_EMIT_COD_CIDADE: TIntegerField;
    EmpresasNFE_EMIT_CIDADE: TIBStringField;
    EmpresasNFE_EMIT_UF: TIBStringField;
    EmpresasNFE_EMIT_EMAIL: TIBStringField;
    EmpresasNFE_EMAIL_PORTA: TIntegerField;
    EmpresasNFE_EMAIL_USUARIO: TIBStringField;
    EmpresasNFE_EMAIL_SENHA: TIBStringField;
    EmpresasNFE_EMAIL_SMTP_SEGURA: TIBStringField;
    EmpresasNFE_EMAIL_SMTP: TIBStringField;
    EmpresasNFE_EMIT_RAZAO_SOCIAL: TIBStringField;
    EmpresasEXIBE_INDICE_PDV: TIBStringField;
    EmpresasNFE_PATH_LEIAUTE_DANFE: TIBStringField;
    EmpresasBCH_FILIAL: TIntegerField;
    EmpresasBCH_INS_MUN: TSmallintField;
    EmpresasBCH_NOMECONTATO: TIBStringField;
    SelEmpresaCNPJ: TIBStringField;
    SelEmpresaNOME: TIBStringField;
    SelEmpresaENDERECO: TIBStringField;
    SelEmpresaBAIRRO: TIBStringField;
    SelEmpresaCIDADE: TIBStringField;
    SelEmpresaUF: TIBStringField;
    SelEmpresaCEP: TIBStringField;
    SelEmpresaFONE: TIBStringField;
    SelEmpresaFAX: TIBStringField;
    SelEmpresaMENS_ECF: TIBStringField;
    SelEmpresaALT_PRC_VND: TIBStringField;
    SelEmpresaTX_JUROS_ATE: TFloatField;
    SelEmpresaTX_JUROS_APOS: TFloatField;
    SelEmpresaTIPO_TAXA: TIBStringField;
    SelEmpresaMENSAGEM_BOL: TIBStringField;
    SelEmpresaMENSAGEM_BOL2: TIBStringField;
    SelEmpresaCLI_VND_VISTA: TIntegerField;
    SelEmpresaDT_ULT_VENDA: TDateTimeField;
    SelEmpresaCUSTO_VARIAVEL: TFloatField;
    SelEmpresaVENDEDOR: TFloatField;
    SelEmpresaPROPAGANDA: TFloatField;
    SelEmpresaDESCONTOS: TFloatField;
    SelEmpresaPG_COM_TERC: TIBStringField;
    SelEmpresaPDV_NATUREZA: TIntegerField;
    SelEmpresaPDV_TIPODOCTO: TIBStringField;
    SelEmpresaPDV_LOCALCOBRANCA: TIntegerField;
    SelEmpresaDIG_DESC_VENDA: TIBStringField;
    SelEmpresaDIG_CHEQUE_VENDA: TIBStringField;
    SelEmpresaPDV_MSG1: TIBStringField;
    SelEmpresaPDV_MSG2: TIBStringField;
    SelEmpresaPDV_MSG3: TIBStringField;
    SelEmpresaPDV_MSG4: TIBStringField;
    SelEmpresaPDV_MSG5: TIBStringField;
    SelEmpresaPDV_ECF: TIBStringField;
    SelEmpresaPDV_MAIORVALORUNIT: TFloatField;
    SelEmpresaPDV_SENHA: TIBStringField;
    SelEmpresaLOCAL_FATURA: TIBStringField;
    SelEmpresaECF_ULTNUMERO: TIntegerField;
    SelEmpresaDIG_UNIDADE_VENDA: TIBStringField;
    SelEmpresaPDV_PARCELA_VENDA: TIBStringField;
    SelEmpresaSELAGRUPADOR: TIBStringField;
    SelEmpresaPDV_ELIMINA_ZEROS: TIBStringField;
    SelEmpresaTIPO_CONSULTA_PROD: TIBStringField;
    SelEmpresaPDV_ACRESCENTA_ZEROS: TIBStringField;
    SelEmpresaCARREGAR_ARQUIVOS: TIBStringField;
    SelEmpresaVER_VENDAS_ENVIADAS: TIBStringField;
    SelEmpresaCHM_LOCPROD_INEXISTENTE: TIBStringField;
    SelEmpresaPDV_F4_ALTERACLIENTE: TIBStringField;
    SelEmpresaDIG_SENHA_VENDEDOR: TIBStringField;
    SelEmpresaCOR_FUNDO_SELECIONADO: TIBStringField;
    SelEmpresaNUM_REG_LOAD: TIntegerField;
    SelEmpresaPDV_DIGITA_QUANTIDADE: TIBStringField;
    SelEmpresaCOR_FUNDO_DESELECIONADO: TIBStringField;
    SelEmpresaCX_PAGAR_CAIXA: TIBStringField;
    SelEmpresaCX_RECEBER_CAIXA: TIBStringField;
    SelEmpresaEXT_LANC_CAIXA_FECHADO: TIBStringField;
    SelEmpresaNUM_MAX_ITENS: TIntegerField;
    SelEmpresaIMP_UNIT_ORC: TIBStringField;
    SelEmpresaDUPLICATA: TIntegerField;
    SelEmpresaBLQQTDEFISCAL: TIBStringField;
    SelEmpresaNUM_MAX_ITENS_ORC: TIntegerField;
    SelEmpresaALTERA_PRECO_VENDA_ENT: TIBStringField;
    SelEmpresaTIPO_EMPRESA: TIBStringField;
    SelEmpresaDIG_CARTAO_VENDA: TIBStringField;
    SelEmpresaPIS: TFloatField;
    SelEmpresaCOFINS: TFloatField;
    SelEmpresaDIGITA_NUM_NOTA: TIBStringField;
    SelEmpresaDIGITA_COTACOES: TIBStringField;
    SelEmpresaFOTO: TIBStringField;
    SelEmpresaLOJA_DESC_AVISTA: TFloatField;
    SelEmpresaITENS_ORCAMENTO: TIntegerField;
    SelEmpresaIMPRIME_CABEC_2FOL: TIBStringField;
    SelEmpresaIMPRIME_DESCONTO_AGRUPADO: TIBStringField;
    SelEmpresaIMPRIME_RODAPE_ORCAMENTO: TIBStringField;
    SelEmpresaTIPO_CUSTO: TIBStringField;
    SelEmpresaTIPO_ORCAMENTO: TIBStringField;
    SelEmpresaSELECIONA_IMPRESSORA: TIBStringField;
    SelEmpresaCX_COMP_SLD_ANT: TIBStringField;
    SelEmpresaCX_IMP_VND_AGRUPADA: TIBStringField;
    SelEmpresaCX_TRANSP_SLD_ANT: TIBStringField;
    SelEmpresaMENS2_ECF: TIBStringField;
    SelEmpresaMENS3_ECF: TIBStringField;
    SelEmpresaTIPO_CAB_FATURA: TIBStringField;
    SelEmpresaTIPO_CONTAGEM: TIBStringField;
    SelEmpresaIMP_CASAS_QNTDE_FATURA: TIBStringField;
    SelEmpresaVALIDA_DOCUMENTOS: TIBStringField;
    SelEmpresaNUMERO_ZEROS: TIntegerField;
    SelEmpresaPST_MOSTRA_ENTRADAS: TIBStringField;
    SelEmpresaTROCO_MAXIMO: TFloatField;
    SelEmpresaMASCARA_FONE: TIBStringField;
    SelEmpresaCTB_JUROS_RECEBIDOS_REC: TIntegerField;
    SelEmpresaPDV_REPETE_PRODUTOS: TIBStringField;
    SelEmpresaIMPRIME_SUBTOTAL_ORCAMENTO: TIBStringField;
    SelEmpresaEMBUTIR_JUROS_IMPRESSOES: TIBStringField;
    SelEmpresaMASCARA_PRODUTOS_ENT: TIBStringField;
    SelEmpresaPDV_IMP_VINC_VALOR: TIBStringField;
    SelEmpresaPDV_PROPRIEDADE: TIBStringField;
    SelEmpresaPST_SENHA_CAIXA: TIBStringField;
    SelEmpresaIMPRIMIR_POSICOES: TIBStringField;
    SelEmpresaSINCRONIZAR_BOL_DPL: TIBStringField;
    SelEmpresaCOMISSAO_POR_FAIXA: TIBStringField;
    SelEmpresaCONTA_CARTAO_CAIXA: TIntegerField;
    SelEmpresaDIGITA_VENDEDOR_PDV: TIBStringField;
    SelEmpresaCOMISSAO_NORMAL: TIBStringField;
    SelEmpresaULTIMO_TURNO: TIntegerField;
    SelEmpresaIP_EXTERNO: TIBStringField;
    SelEmpresaCAMINHO_EXTERNO: TIBStringField;
    SelEmpresaSENHA_EMPRESA_EXTERNA: TIBStringField;
    SelEmpresaUTILIZA_DOCTOS_INT_ENTR: TIBStringField;
    SelEmpresaCONF_DUPLIC_REC_LANCTO: TIBStringField;
    SelEmpresaSIS_MENSAGEM_INTERNA: TIBStringField;
    SelEmpresaMENSAGEM_CONDICIONAL: TIBStringField;
    SelEmpresaFAT_TIPO_PARCELAMENTO: TIBStringField;
    SelEmpresaFAZ_FECHAMENTO_DIARIO: TIBStringField;
    SelEmpresaATUALIZA_ARQ_EXTERNO: TIBStringField;
    SelEmpresaCAIXA_SINCRONIZADO: TIBStringField;
    SelEmpresaICM_PRESUMIDO_IPI: TFloatField;
    SelEmpresaICM_PRESUMIDO_SEM_IPI: TFloatField;
    SelEmpresaALT_PRCVEND_MARGEM: TIBStringField;
    SelEmpresaBLQ_VENDA_SEM_IERG: TIBStringField;
    SelEmpresaPDV_UNITARIO_ZERADO: TIBStringField;
    SelEmpresaDIRETORIO_TEF: TIBStringField;
    SelEmpresaIMPRIME_NF_BALCAO: TIBStringField;
    SelEmpresaTRANSF_VLRS_CAIXA: TIBStringField;
    SelEmpresaLOCAL_FATURA_TROCA: TIBStringField;
    SelEmpresaEST_ET_PROD_GRD1: TMemoField;
    SelEmpresaEST_ET_PROD_GRD2: TMemoField;
    SelEmpresaEST_ET_PROD_GRD3: TMemoField;
    SelEmpresaEST_ET_PROD_GRD3_PARC: TMemoField;
    SelEmpresaEST_ET_PROD_GRD3_DESCTO: TMemoField;
    SelEmpresaEST_ET_PROD_GRD4: TMemoField;
    SelEmpresaCH_INFLUENCIA_VENDA: TIBStringField;
    SelEmpresaCRT_INFLUENCIA_VENDA: TIBStringField;
    SelEmpresaIMP_SERIE_NF: TIBStringField;
    SelEmpresaCONFIG_SERIE_NF: TMemoField;
    SelEmpresaCONFIG_CT13: TMemoField;
    SelEmpresaCONFIG_MALADIRETA: TMemoField;
    SelEmpresaGERA_BOLETOS: TIBStringField;
    SelEmpresaBLT_INSTRUCAO: TMemoField;
    SelEmpresaBLT_LOCAL_PAGTO: TIBStringField;
    SelEmpresaBLT_COD_CEDENTE: TIntegerField;
    SelEmpresaBLT_DIG_COD_CEDENTE: TIBStringField;
    SelEmpresaBLT_AGENCIA: TIBStringField;
    SelEmpresaBLT_DIG_AGENCIA: TIBStringField;
    SelEmpresaBLT_CONVENIO: TIntegerField;
    SelEmpresaBLT_CONTA: TIBStringField;
    SelEmpresaBLT_DIG_CONTA: TIBStringField;
    SelEmpresaBLT_CARTEIRA: TIBStringField;
    SelEmpresaBLT_LAYOUT: TSmallintField;
    SelEmpresaBLT_ACEITE_DOCTO: TIBStringField;
    SelEmpresaBLT_DIAS_ABATIMENTO: TIBStringField;
    SelEmpresaBLT_DIAS_DESCONTO: TIntegerField;
    SelEmpresaBLT_DIAS_MORA_JUROS: TIntegerField;
    SelEmpresaBLT_DIAS_PROTESTO: TIntegerField;
    SelEmpresaBLT_PCT_ABATIMENTO: TFloatField;
    SelEmpresaBLT_PCT_DESCONTO: TFloatField;
    SelEmpresaDESP_BANCARIA: TFloatField;
    SelEmpresaMORA_DIARIA: TFloatField;
    SelEmpresaBLT_VLR_IOF: TFloatField;
    SelEmpresaBLT_VLR_OUTRAS_DESP: TFloatField;
    SelEmpresaBLT_DIR_REMESSA: TIBStringField;
    SelEmpresaBLT_DIR_RETORNO: TIBStringField;
    SelEmpresaDESCONTO_MAXIMO: TFloatField;
    SelEmpresaCONFIG_NF_SERV: TMemoField;
    SelEmpresaDIG_ITENS_NF: TSmallintField;
    SelEmpresaVALIDA_ABERTURA_CX: TIBStringField;
    SelEmpresaCONTROLE_PEDIDO_RESTAURANTE: TIBStringField;
    SelEmpresaDB_VERSAO: TIntegerField;
    SelEmpresaTAXA_ACRESC_PDV: TFloatField;
    SelEmpresaMSG_PDVTELA: TIBStringField;
    SelEmpresaCONTAGEM_INCREMENTAL: TIBStringField;
    SelEmpresaEXIBE_MOD: TIBStringField;
    SelEmpresaEXIBE_PENDENCIA: TIBStringField;
    SelEmpresaKEY_RELEASE: TIBStringField;
    SelEmpresaEXIBE_MESAS: TIBStringField;
    SelEmpresaEXIBE_CTB: TIBStringField;
    SelEmpresaEXIBE_CB: TIBStringField;
    SelEmpresaEXIBE_SRV: TIBStringField;
    SelEmpresaCARREGAMENTO_PARCIAL: TIBStringField;
    SelEmpresaCONFIG_NF_GRAF: TMemoField;
    SelEmpresaBLT_EMAIL_SERVIDOR: TIBStringField;
    SelEmpresaBLT_EMAIL_PORTA: TSmallintField;
    SelEmpresaBLT_EMAIL_USER: TIBStringField;
    SelEmpresaBLT_EMAIL_SENHA: TIBStringField;
    SelEmpresaBLT_NOSSO_NUM_INI: TIntegerField;
    SelEmpresaBLT_NOSSO_NUM_FIM: TIntegerField;
    SelEmpresaBLT_NOSSO_NUM_PROX: TIntegerField;
    SelEmpresaEMAIL: TIBStringField;
    SelEmpresaBLT_MULTA: TFloatField;
    SelEmpresaCONFIG_COPIA_CHEQUE: TMemoField;
    SelEmpresaCONFIG_SERIE_ORC_NF: TMemoField;
    SelEmpresaCONFIG_REQUISICAO: TMemoField;
    SelEmpresaCONFIG_CARTA_SCPC: TMemoField;
    SelEmpresaATIVA_AGENTE: TIBStringField;
    SelEmpresaNF_CONTINUO_COM_MESMO_NUM_NF: TIBStringField;
    SelEmpresaNF_CONTINUO_NOME_CAMPO_TRUE: TIBStringField;
    SelEmpresaCONFIG_CONVENIO_PDV: TMemoField;
    SelEmpresaIMP_CONVENIO_GRAF: TIBStringField;
    SelEmpresaCONFIG_RECIBO: TMemoField;
    SelEmpresaNUM_ITENS_NF: TSmallintField;
    SelEmpresaNUM_ITENS_PDD: TSmallintField;
    SelEmpresaCONFIG_OS: TMemoField;
    SelEmpresaOFC_LT_PRODUTO_COPIAS: TIBStringField;
    SelEmpresaEXIBE_AGR: TIBStringField;
    SelEmpresaIE: TIBStringField;
    SelEmpresaCOD_CIDADE: TIntegerField;
    SelEmpresaCOD_LOGRADOURO: TIntegerField;
    SelEmpresaCOD_BAIRRO: TIntegerField;
    SelEmpresaEND_NUMERO: TIntegerField;
    SelEmpresaEXIBE_CARGA: TIBStringField;
    SelEmpresaEXIBE_NFE: TIBStringField;
    SelEmpresaEXIBE_SINTEGRA: TIBStringField;
    SelEmpresaNFE_AMBIENTE: TIBStringField;
    SelEmpresaNFE_VERSAO_APP: TIBStringField;
    SelEmpresaNFE_DIR_EXPORTACAO: TIBStringField;
    SelEmpresaNFE_LEIAUTE_DANFE: TIBStringField;
    SelEmpresaLOCAL_PADRAO: TIBStringField;
    SelEmpresaCONFIG_AGR_RECEITA: TMemoField;
    SelEmpresaCONFIG_ACERTO_1: TMemoField;
    SelEmpresaDESC_BX_PARCIAL: TIBStringField;
    SelEmpresaCM_AGR: TIBStringField;
    SelEmpresaCM_VDT: TIBStringField;
    SelEmpresaCMD_VDT_PCT: TFloatField;
    SelEmpresaPDV_FORMA_PAGTO: TIntegerField;
    SelEmpresaEXIBE_TBL: TIBStringField;
    SelEmpresaEXIBE_ACERTO_CONTAS: TIBStringField;
    SelEmpresaEMAIL_PADRAO: TIBStringField;
    SelEmpresaSMTP: TIBStringField;
    SelEmpresaLOGIN: TIBStringField;
    SelEmpresaSENHA: TIBStringField;
    SelEmpresaNOME_USUARIO: TIBStringField;
    SelEmpresaEMAIL_CONTROLE: TIBStringField;
    SelEmpresaEXIBE_MESALIDADES: TIBStringField;
    SelEmpresaFORMA_PAGTO_MENSALIDADE: TIntegerField;
    SelEmpresaNFE_CERT_CAMINHO: TIBStringField;
    SelEmpresaNFE_CERT_SENHA: TIBStringField;
    SelEmpresaNFE_CERT_NUM_SERIE: TIBStringField;
    SelEmpresaNFE_GER_TP_DANFE: TIBStringField;
    SelEmpresaNFE_GER_FORMA_EMISSAO: TIBStringField;
    SelEmpresaNFE_GER_PATH_LOGS: TIBStringField;
    SelEmpresaNFE_GER_IMG_DANFE: TIBStringField;
    SelEmpresaNFE_WS_UF: TIBStringField;
    SelEmpresaNFE_WS_AMBIENTE: TIBStringField;
    SelEmpresaNFE_WS_PROXY_HOST: TIBStringField;
    SelEmpresaNFE_WS_PROXY_PORTA: TIBStringField;
    SelEmpresaNFE_WS_PROXY_USUARIO: TIBStringField;
    SelEmpresaNFE_WS_PROXY_SENHA: TIBStringField;
    SelEmpresaNFE_EMIT_CNPJ: TIBStringField;
    SelEmpresaNFE_EMIT_INSC_ESTADUAL: TIBStringField;
    SelEmpresaNFE_EMIT_FANTASIA: TIBStringField;
    SelEmpresaNFE_EMIT_FONE: TIBStringField;
    SelEmpresaNFE_EMIT_CEP: TIBStringField;
    SelEmpresaNFE_EMIT_LOGRADOURO: TIBStringField;
    SelEmpresaNFE_EMIT_BAIRRO: TIBStringField;
    SelEmpresaNFE_EMIT_COMPLEMENTO: TIBStringField;
    SelEmpresaNFE_EMIT_NUMERO: TIntegerField;
    SelEmpresaNFE_EMIT_COD_CIDADE: TIntegerField;
    SelEmpresaNFE_EMIT_CIDADE: TIBStringField;
    SelEmpresaNFE_EMIT_UF: TIBStringField;
    SelEmpresaNFE_EMIT_EMAIL: TIBStringField;
    SelEmpresaNFE_EMAIL_PORTA: TIntegerField;
    SelEmpresaNFE_EMAIL_USUARIO: TIBStringField;
    SelEmpresaNFE_EMAIL_SENHA: TIBStringField;
    SelEmpresaNFE_EMAIL_SMTP_SEGURA: TIBStringField;
    SelEmpresaNFE_EMAIL_SMTP: TIBStringField;
    SelEmpresaNFE_EMIT_RAZAO_SOCIAL: TIBStringField;
    SelEmpresaEXIBE_INDICE_PDV: TIBStringField;
    SelEmpresaNFE_PATH_LEIAUTE_DANFE: TIBStringField;
    SelEmpresaBCH_FILIAL: TIntegerField;
    SelEmpresaBCH_INS_MUN: TSmallintField;
    SelEmpresaBCH_NOMECONTATO: TIBStringField;
    SelEmpresaNOME_CIDADE: TIBStringField;
    SelEmpresaNOME_LOGRADOURO: TIBStringField;
    SelEmpresaNOME_BAIRRO: TIBStringField;
    ConfiguracoesCNPJ: TIBStringField;
    ConfiguracoesRESUMO_MOEDAS: TIntegerField;
    ConfiguracoesVENCTO_FIXO_PRESTACOES: TIBStringField;
    ConfiguracoesTOLERANCIA_JUROS: TIntegerField;
    ConfiguracoesMULTA_FINANCEIRA: TFloatField;
    ConfiguracoesINCLUI_VENDA_LIMITE: TIBStringField;
    ConfiguracoesEXCLUI_VENDAS_BX_PARC_PDV: TIBStringField;
    ConfiguracoesUTLIZA_INDEXADOR_CUSTO: TIBStringField;
    ConfiguracoesIMPRIME_ITENS_CUPOM_PDV: TIBStringField;
    ConfiguracoesITENSORCAMENTO_ORC: TIntegerField;
    ConfiguracoesCODIGO_SCPC: TIBStringField;
    ConfiguracoesPDV_TROCO_MAXIMO: TFloatField;
    ConfiguracoesALIQUOTA_ISS: TFloatField;
    ConfiguracoesPEDE_SENHAGER_CAIXA: TIBStringField;
    ConfiguracoesIMP_VND_FATURAMENTO: TIBStringField;
    ConfiguracoesCTB_CAIXA_FRENTISTA_GERAL: TIBStringField;
    ConfiguracoesEST_ENTRADAS_DOLAR: TIBStringField;
    ConfiguracoesOFC_ORDEM_VENDEDOR: TIntegerField;
    ConfiguracoesOFC_ORDEM_NATUREZA: TIntegerField;
    ConfiguracoesOFC_ORDEM_FRM_PAGTO: TIntegerField;
    ConfiguracoesOFC_ORDEM_PRODUTO: TIBStringField;
    ConfiguracoesEST_UTILIZA_GRADES: TIBStringField;
    ConfiguracoesITENSORDEM_SERVICO: TIntegerField;
    ConfiguracoesBLOQ_CAD_SEM_CPF: TIBStringField;
    ConfiguracoesPDV_IMP_END_PRAZO: TIBStringField;
    ConfiguracoesOFC_NOME_RAZAO: TIBStringField;
    ConfiguracoesOFC_ENDERECO: TIBStringField;
    ConfiguracoesOFC_FONE: TIBStringField;
    ConfiguracoesOFC_FAX: TIBStringField;
    ConfiguracoesOFC_COR_TELA: TIBStringField;
    ConfiguracoesCTB_DIFERENCA_CAIXA: TIntegerField;
    ConfiguracoesENT_FRETE_MANUAL: TIBStringField;
    ConfiguracoesCONVENIO_CHEQUE: TIBStringField;
    ConfiguracoesCODIGO_CONVENIO_BANCO: TIBStringField;
    ConfiguracoesPATH_ARQUIVO_BANCO: TIBStringField;
    ConfiguracoesNOME_ARQUIVO_BANCO: TIBStringField;
    ConfiguracoesGLO_PROPRIEDADE_EQUIPAMENTOS: TIBStringField;
    ConfiguracoesCSLL: TFloatField;
    ConfiguracoesUTILIZA_MASCARA_ORCAMENTO: TIBStringField;
    ConfiguracoesVALOR_MINIMO_PARCELAMENTO: TFloatField;
    ConfiguracoesPDV_OBRIGA_QNTDE: TIBStringField;
    ConfiguracoesPDV_COR_FUNDO: TIntegerField;
    ConfiguracoesPDV_COR_FONTE: TIntegerField;
    ConfiguracoesDIFERENCIA_FIS_FISC: TIBStringField;
    ConfiguracoesPDV_FATURAMENTO_FIM_MES: TIBStringField;
    ConfiguracoesPDV_FOTO_FUNDO: TIBStringField;
    ConfiguracoesBLOQUEIA_VENDA_SEM_CPF: TIBStringField;
    ConfiguracoesDESPESAS_OPERACIONAIS: TFloatField;
    ConfiguracoesIMPOSTO_RENDA: TFloatField;
    ConfiguracoesEST_REPETE_COD_SEC: TIBStringField;
    ConfiguracoesOFC_USA_CONTADORES: TIBStringField;
    ConfiguracoesCODIFICA_PRODUTOS: TIBStringField;
    ConfiguracoesIMPRIME_CUPOM_NOMINAL: TIBStringField;
    ConfiguracoesIMP_NOME_PROPRIEDADE: TIBStringField;
    ConfiguracoesPDV_VER_ULTIMAS_VENDAS: TIBStringField;
    SelEmpresaBCH_PATH: TIBStringField;
    SelEmpresaOFC_EXIBE_COPIAS: TIBStringField;
    SelEmpresaOFC_EXIBE_MOVTO_AVULSO: TIBStringField;
    SelEmpresaOFC_EXIBE_VISUALIZACAO: TIBStringField;
    EmpresasBCH_PATH: TIBStringField;
    EmpresasOFC_EXIBE_COPIAS: TIBStringField;
    EmpresasOFC_EXIBE_MOVTO_AVULSO: TIBStringField;
    EmpresasOFC_EXIBE_VISUALIZACAO: TIBStringField;
    EmpresasOFC_EXIBE_VISITA_PREVENTIVA: TIBStringField;
    EmpresasOFC_EXIBE_MOVIMENTOS_OS: TIBStringField;
    EmpresasOFC_ENVIO_EMAIL_AUTOMATICO: TIBStringField;
    SelEmpresaOFC_EXIBE_VISITA_PREVENTIVA: TIBStringField;
    SelEmpresaOFC_EXIBE_MOVIMENTOS_OS: TIBStringField;
    SelEmpresaOFC_ENVIO_EMAIL_AUTOMATICO: TIBStringField;
    EmpresasOFC_CONTROLA_TEMPO_RESPOSTA: TIBStringField;
    SelEmpresaOFC_CONTROLA_TEMPO_RESPOSTA: TIBStringField;
    EmpresasCM_LIB_PCT_VD_VISTA: TFloatField;
    EmpresasCM_LIB_PCT_VD_PRAZO: TFloatField;
    SelEmpresaCM_LIB_PCT_VD_VISTA: TFloatField;
    SelEmpresaCM_LIB_PCT_VD_PRAZO: TFloatField;
    EmpresasPDV_QTDE_COD_BARRAS: TIBStringField;
    SelEmpresaPDV_QTDE_COD_BARRAS: TIBStringField;
    EmpresasOFC_EXIBE_DADOS_COMPLEMENTARES: TIBStringField;
    SelEmpresaOFC_EXIBE_DADOS_COMPLEMENTARES: TIBStringField;
    EmpresasOFC_EXIBE_NOTIFICACAO: TIBStringField;
    ConfiguracoesOS_CONFIG_CAMPOS: TIBStringField;
    SelEmpresaOFC_EXIBE_NOTIFICACAO: TIBStringField;
    ConfiguracoesOFC_CONTATO_POR_CLIENTE: TIBStringField;
    EmpresasPDV_IMP_CONVENIO: TIBStringField;
    SelEmpresaPDV_IMP_CONVENIO: TIBStringField;
    EmpresasBLOQUEIA_MVB: TIBStringField;
    EmpresasCM_TX_ADMISTRACAO: TFloatField;
    EmpresasIMP_PROD_DUPLICATA: TIBStringField;
    EmpresasBCH_AUTO_IMPORTA: TIBStringField;
    EmpresasACT_MULTI_SELETOR: TIBStringField;
    SelEmpresaBLOQUEIA_MVB: TIBStringField;
    SelEmpresaCM_TX_ADMISTRACAO: TFloatField;
    SelEmpresaIMP_PROD_DUPLICATA: TIBStringField;
    SelEmpresaBCH_AUTO_IMPORTA: TIBStringField;
    SelEmpresaACT_MULTI_SELETOR: TIBStringField;
    EmpresasEDITA_NUM_NF: TIBStringField;
    SelEmpresaEDITA_NUM_NF: TIBStringField;
    EmpresasELIMINA_ZERO_PRD_SEM_GRADE: TIBStringField;
    SelEmpresaELIMINA_ZERO_PRD_SEM_GRADE: TIBStringField;
    EmpresasBCH_PATH_PEDIDOS: TIBStringField;
    SelEmpresaBCH_PATH_PEDIDOS: TIBStringField;
    EmpresasBCH_ATIVO: TIBStringField;
    SelEmpresaBCH_ATIVO: TIBStringField;
    EmpresasBCH_CONC_CODIGO_PRODUTO: TIBStringField;
    SelEmpresaBCH_CONC_CODIGO_PRODUTO: TIBStringField;
    EmpresasBCH_HABILITA_SINC_AUT: TIBStringField;
    SelEmpresaBCH_HABILITA_SINC_AUT: TIBStringField;
    EmpresasALTERA_VLR_CNT_PAGAR: TIBStringField;
    EmpresasCTB_DT_AVISO_BANCARIO: TIBStringField;
    SelEmpresaALTERA_VLR_CNT_PAGAR: TIBStringField;
    SelEmpresaCTB_DT_AVISO_BANCARIO: TIBStringField;
    EmpresasDT_CX_MOVTO_ANTERIOR: TIBStringField;
    SelEmpresaDT_CX_MOVTO_ANTERIOR: TIBStringField;
    EmpresasBCH_EXIBE_DESCONTO: TIBStringField;
    SelEmpresaBCH_EXIBE_DESCONTO: TIBStringField;
    EmpresasNFE_DESTACA_ICMS_SUB: TIBStringField;
    SelEmpresaNFE_DESTACA_ICMS_SUB: TIBStringField;
    EmpresasNFE_CNAE: TIBStringField;
    SelEmpresaNFE_CNAE: TIBStringField;
    EmpresasREGIME_TRIBUTARIO: TIBStringField;
    SelEmpresaREGIME_TRIBUTARIO: TIBStringField;
    EmpresasFONES_SUPORTE: TIBStringField;
    SelEmpresaFONES_SUPORTE: TIBStringField;
    EmpresasEST_MIN_CONTA_EMAIL_ENVIO: TIBStringField;
    EmpresasEST_MIN_SMTP_EMAIL_ENVIO: TIBStringField;
    EmpresasEST_MIN_LOGIN_EMAIL_ENVIO: TIBStringField;
    EmpresasEST_MIN_PASSWORD_EMAIL_ENVIO: TIBStringField;
    EmpresasEST_MIN_DESTINOS_EMAIL_ENVIO: TIBStringField;
    SelEmpresaEST_MIN_CONTA_EMAIL_ENVIO: TIBStringField;
    SelEmpresaEST_MIN_SMTP_EMAIL_ENVIO: TIBStringField;
    SelEmpresaEST_MIN_LOGIN_EMAIL_ENVIO: TIBStringField;
    SelEmpresaEST_MIN_PASSWORD_EMAIL_ENVIO: TIBStringField;
    SelEmpresaEST_MIN_DESTINOS_EMAIL_ENVIO: TIBStringField;
    SelEmpresaMAP_HTML_VIEW: TMemoField;
    EmpresasMAP_HTML_VIEW: TMemoField;
    EmpresasOFC_GERA_FAT_AUTOMATICO: TIBStringField;
    SelEmpresaOFC_GERA_FAT_AUTOMATICO: TIBStringField;
    EmpresasNFE_ENT_PATH_IMPORTACAO: TIBStringField;
    EmpresasNFE_ENT_CFOP_IMPORTACAO: TIntegerField;
    SelEmpresaNFE_ENT_PATH_IMPORTACAO: TIBStringField;
    SelEmpresaNFE_ENT_CFOP_IMPORTACAO: TIntegerField;
    EmpresasNFE_ENT_CFOP_IMPORTACAO_INT: TIntegerField;
    SelEmpresaNFE_ENT_CFOP_IMPORTACAO_INT: TIntegerField;
    EmpresasFIN_EXIBE_GRAFICOS: TIBStringField;
    SelEmpresaFIN_EXIBE_GRAFICOS: TIBStringField;
    EmpresasEXIBE_CTR_OBRAS: TIBStringField;
    SelEmpresaEXIBE_CTR_OBRAS: TIBStringField;
    SelEmpresaCTR_INSS: TFloatField;
    SelEmpresaCTR_IRPJ: TFloatField;
    SelEmpresaCTR_ISS: TFloatField;
    SelEmpresaCTR_PIS: TFloatField;
    SelEmpresaCTR_COFINS: TFloatField;
    SelEmpresaCTR_CSLL: TFloatField;
    SelEmpresaCC_INSS: TIntegerField;
    SelEmpresaCC_IRPJ: TIntegerField;
    SelEmpresaCC_ISS: TIntegerField;
    SelEmpresaCC_PIS: TIntegerField;
    SelEmpresaCC_COFINS: TIntegerField;
    SelEmpresaCC_CSLL: TIntegerField;
    SelEmpresaCTR_BASE_INSS_MUN: TFloatField;
    SelEmpresaCTR_BASE_INSS_NAC: TFloatField;
    SelEmpresaCTR_BASE_ISS_MUN: TFloatField;
    SelEmpresaCTR_BASE_ISS_NAC: TFloatField;
    EmpresasCTR_INSS: TFloatField;
    EmpresasCTR_IRPJ: TFloatField;
    EmpresasCTR_ISS: TFloatField;
    EmpresasCTR_PIS: TFloatField;
    EmpresasCTR_COFINS: TFloatField;
    EmpresasCTR_CSLL: TFloatField;
    EmpresasCC_INSS: TIntegerField;
    EmpresasCC_IRPJ: TIntegerField;
    EmpresasCC_ISS: TIntegerField;
    EmpresasCC_PIS: TIntegerField;
    EmpresasCC_COFINS: TIntegerField;
    EmpresasCC_CSLL: TIntegerField;
    EmpresasCTR_BASE_INSS_MUN: TFloatField;
    EmpresasCTR_BASE_INSS_NAC: TFloatField;
    EmpresasCTR_BASE_ISS_MUN: TFloatField;
    EmpresasCTR_BASE_ISS_NAC: TFloatField;
    EmpresasCTR_EXIBE_REL_PROVISIONADO: TIBStringField;
    EmpresasCTR_EXIBE_REL_CONSOLIDADO: TIBStringField;
    EmpresasMARGEM_BRUTA: TFloatField;
    SelEmpresaCTR_EXIBE_REL_PROVISIONADO: TIBStringField;
    SelEmpresaCTR_EXIBE_REL_CONSOLIDADO: TIBStringField;
    SelEmpresaMARGEM_BRUTA: TFloatField;
    procedure EmpresasBeforeOpen(DataSet: TDataSet);
    procedure EmpresasAfterClose(DataSet: TDataSet);
    procedure EmpresasTIPO_TAXAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure EmpresasTIPO_TAXASetText(Sender: TField; const Text: String);
    procedure SelPessoaFJBeforeOpen(DataSet: TDataSet);
    procedure EmpresasNewRecord(DataSet: TDataSet);
    procedure EmpresasUSUARIO_CAIXAValidate(Sender: TField);
    procedure EmpresasTIPO_CUSTOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure EmpresasTIPO_CUSTOSetText(Sender: TField;
      const Text: String);
    procedure EmpresasFAT_TIPO_PARCELAMENTOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure EmpresasFAT_TIPO_PARCELAMENTOSetText(Sender: TField;
      const Text: String);
    procedure ConfiguracoesAfterInsert(DataSet: TDataSet);
    procedure ConfiguracoesBeforePost(DataSet: TDataSet);
    procedure SelProdutosBeforeOpen(DataSet: TDataSet);
    procedure EmpresasNFE_AMBIENTESetText(Sender: TField;
      const Text: String);
    procedure EmpresasNFE_AMBIENTEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure EmpresasNFE_LEIAUTE_DANFEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure EmpresasNFE_LEIAUTE_DANFESetText(Sender: TField;
      const Text: String);
    procedure ConfiguracoesBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMEmpresas: TDMEmpresas;

implementation

uses Application_DM;

{$R *.DFM}

procedure TDMEmpresas.EmpresasBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (DataSet as TIBQuery).Prepare;
  If (DataSet is TIBDataSet) Then
     (DataSet as TIBDataSet).Prepare;
end;

procedure TDMEmpresas.EmpresasAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (DataSet as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (DataSet as TIBDataSet).UnPrepare;
end;

procedure TDMEmpresas.EmpresasTIPO_TAXAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'C' Then
     Text := 'Composto';
  If Sender.Value = 'S' Then
     Text := 'Simples';
  If Sender.Value = 'P' Then
     Text := 'Precificado';
end;

procedure TDMEmpresas.EmpresasTIPO_TAXASetText(Sender: TField;
  const Text: String);
begin
  If Text = 'Precificado' Then
     Sender.Value := 'P';
  If Text = 'Composto' Then
     Sender.Value := 'C';
  If Text = 'Simples' Then
     Sender.Value := 'S';
end;

procedure TDMEmpresas.SelPessoaFJBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
  Begin
   (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
   (Dataset as TIBQuery).Prepare;
  End;

  If (DataSet is TIBDataset) Then
  Begin
   (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
   (Dataset as TIBDataSet).Prepare;
  End;
end;

procedure TDMEmpresas.EmpresasNewRecord(DataSet: TDataSet);
begin
     EmpresasPDV_ECF.Value              := 'N' ;
     EmpresasLOCAL_FATURA.Value         := 'C' ;
     EmpresasPDV_PARCELA_VENDA.Value    := 'S' ;
     EmpresasDIG_UNIDADE_VENDA.Value    := 'S' ;
     EmpresasSELAGRUPADOR.Value         := 'S' ;
     EmpresasPDV_ELIMINA_ZEROS.Value    := 'N' ;
     EmpresasPDV_ACRESCENTA_ZEROS.Value := 'N' ;
     EmpresasTIPO_CONSULTA_PROD.Value   := 'A' ;
     EmpresasCARREGAR_ARQUIVOS.vALUE    := 'N' ;
     EmpresasVER_VENDAS_ENVIADAS.Value  := 'N' ;
end;

procedure TDMEmpresas.EmpresasUSUARIO_CAIXAValidate(Sender: TField);
begin
//     EmpresasCONTA_CAIXA.Value := SelCaixaCONTA.Value ;
end;

procedure TDMEmpresas.EmpresasTIPO_CUSTOGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'S' Then
    Text := 'Simples';
  If Sender.Value = 'C' Then
    Text := 'Composto';

  If Sender.Value = 'M' Then
    Text := 'Manual';

  If Sender.Value = 'P' Then
    Text := 'Precificado';
end;

procedure TDMEmpresas.EmpresasTIPO_CUSTOSetText(Sender: TField; const Text: String);
begin
  If Text = 'Composto' Then
     Sender.Value := 'C';
  If Text = 'Simples' Then
     Sender.Value := 'S';
  If Text = 'Manual' Then
     Sender.Value := 'M';
  If Text = 'Precificado' Then
     Sender.Value := 'P';
end;

procedure TDMEmpresas.EmpresasFAT_TIPO_PARCELAMENTOGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'Dec' Then
     Text := 'Decimal';
  If Sender.Value = 'Int' Then
     Text := 'Inteiro';
  If Sender.Value = 'Arr' Then
     Text := 'Arredondar';
  If Sender.Value = 'Tru' Then
     Text := 'Truncado';
end;

procedure TDMEmpresas.EmpresasFAT_TIPO_PARCELAMENTOSetText(Sender: TField; const Text: String);
begin
  If Text = 'Decimal' Then
     Sender.Value := 'Dec';
  If Text = 'Inteiro' Then
     Sender.Value := 'Int';
  If Text = 'Arredondar' Then
     Sender.Value := 'Arr';
  If Text = 'Truncado' Then
     Sender.Value := 'Tru';
end;

procedure TDMEmpresas.ConfiguracoesAfterInsert(DataSet: TDataSet);
begin
  ConfiguracoesCNPJ.value := EmpresasCNPJ.value ;
end;

procedure TDMEmpresas.ConfiguracoesBeforePost(DataSet: TDataSet);
begin
  If Configuracoes.State in [ dsinsert ]  then
      ConfiguracoesCNPJ.value := EmpresasCNPJ.value ;
end;

procedure TDMEmpresas.SelProdutosBeforeOpen(DataSet: TDataSet);
begin
  SelProdutos.parambyname('cnpj').value := EmpresasCNPJ.value;
end;

procedure TDMEmpresas.EmpresasNFE_AMBIENTESetText(Sender: TField;
  const Text: String);
begin
 if Text = '1 - Produção' then
   Sender.Value := '1'
 else if Text = '2 - Homologação' then
   Sender.Value := '2';
end;

procedure TDMEmpresas.EmpresasNFE_AMBIENTEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.Value = '1' then
    Text := '1 - Produção'
  else if Sender.Value = '2' then
    Text := '2 - Homologação';
end;

procedure TDMEmpresas.EmpresasNFE_LEIAUTE_DANFEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.Value = '1' then
    Text := '1 - Retrato'
  else if Sender.Value = '2' then
    Text := '2 - Paisagem';
end;

procedure TDMEmpresas.EmpresasNFE_LEIAUTE_DANFESetText(Sender: TField;
  const Text: String);
begin
  if Text = '1 - Retrato' then
    Sender.Value := '1' 
  else if Text = '2 - Paisagem' then
    Sender.Value := '2';
end;

procedure TDMEmpresas.ConfiguracoesBeforeOpen(DataSet: TDataSet);
begin
    Configuracoes.ParamByName('CNPJ').Value := DMApp.Cnpj;
end;

end.


