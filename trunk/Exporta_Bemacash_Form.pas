unit Exporta_Bemacash_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar,   StdCtrls, ExtCtrls, dxCntner, dxEditor, dxEdLib,
  ComCtrls,  ActnList, dbtables, db, IBCustomDataSet, IBQuery,
    IBStoredProc, cxPropertiesStore, dxExEdtr, dxDBELib,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmExportaBemacash = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
    DIR: TOpenDialog;
    Actions: TActionList;
    ActFechar: TAction;
    ActAbre: TAction;
    ActExporta: TAction;
    BtnCriar: TcxButton;
    qryBanco: TIBQuery;
    qryBancoCODIGO: TIBStringField;
    qryBancoNOME: TIBStringField;
    qryBancoBOLETO: TIntegerField;
    qryBancoGERA_ARQUIVO_MAGNETICO: TIBStringField;
    qryBancoPADRAO_BOLETO: TIBStringField;
    qryBancoCONFIG_CH: TBlobField;
    qryBancoCONFIG_CHEQUE: TMemoField;
    qryClientes: TIBQuery;
    qryEmpresa: TIBQuery;
    qryPreco: TIBQuery;
    qryEmpresaCNPJ: TIBStringField;
    qryEmpresaNOME: TIBStringField;
    qryEmpresaENDERECO: TIBStringField;
    qryEmpresaBAIRRO: TIBStringField;
    qryEmpresaCIDADE: TIBStringField;
    qryEmpresaUF: TIBStringField;
    qryEmpresaCEP: TIBStringField;
    qryEmpresaFONE: TIBStringField;
    qryEmpresaFAX: TIBStringField;
    qryEmpresaMENS_ECF: TIBStringField;
    qryEmpresaALT_PRC_VND: TIBStringField;
    qryEmpresaTX_JUROS_ATE: TFloatField;
    qryEmpresaTX_JUROS_APOS: TFloatField;
    qryEmpresaTIPO_TAXA: TIBStringField;
    qryEmpresaMENSAGEM_BOL: TIBStringField;
    qryEmpresaMENSAGEM_BOL2: TIBStringField;
    qryEmpresaCLI_VND_VISTA: TIntegerField;
    qryEmpresaDT_ULT_VENDA: TDateTimeField;
    qryEmpresaCUSTO_VARIAVEL: TFloatField;
    qryEmpresaVENDEDOR: TFloatField;
    qryEmpresaPROPAGANDA: TFloatField;
    qryEmpresaDESCONTOS: TFloatField;
    qryEmpresaPG_COM_TERC: TIBStringField;
    qryEmpresaPDV_NATUREZA: TIntegerField;
    qryEmpresaPDV_TIPODOCTO: TIBStringField;
    qryEmpresaPDV_LOCALCOBRANCA: TIntegerField;
    qryEmpresaDIG_DESC_VENDA: TIBStringField;
    qryEmpresaDIG_CHEQUE_VENDA: TIBStringField;
    qryEmpresaPDV_MSG1: TIBStringField;
    qryEmpresaPDV_MSG2: TIBStringField;
    qryEmpresaPDV_MSG3: TIBStringField;
    qryEmpresaPDV_MSG4: TIBStringField;
    qryEmpresaPDV_MSG5: TIBStringField;
    qryEmpresaPDV_ECF: TIBStringField;
    qryEmpresaPDV_MAIORVALORUNIT: TFloatField;
    qryEmpresaPDV_SENHA: TIBStringField;
    qryEmpresaLOCAL_FATURA: TIBStringField;
    qryEmpresaECF_ULTNUMERO: TIntegerField;
    qryEmpresaDIG_UNIDADE_VENDA: TIBStringField;
    qryEmpresaPDV_PARCELA_VENDA: TIBStringField;
    qryEmpresaSELAGRUPADOR: TIBStringField;
    qryEmpresaPDV_ELIMINA_ZEROS: TIBStringField;
    qryEmpresaTIPO_CONSULTA_PROD: TIBStringField;
    qryEmpresaPDV_ACRESCENTA_ZEROS: TIBStringField;
    qryEmpresaCARREGAR_ARQUIVOS: TIBStringField;
    qryEmpresaVER_VENDAS_ENVIADAS: TIBStringField;
    qryEmpresaCHM_LOCPROD_INEXISTENTE: TIBStringField;
    qryEmpresaPDV_F4_ALTERACLIENTE: TIBStringField;
    qryEmpresaDIG_SENHA_VENDEDOR: TIBStringField;
    qryEmpresaCOR_FUNDO_SELECIONADO: TIBStringField;
    qryEmpresaNUM_REG_LOAD: TIntegerField;
    qryEmpresaPDV_DIGITA_QUANTIDADE: TIBStringField;
    qryEmpresaCOR_FUNDO_DESELECIONADO: TIBStringField;
    qryEmpresaCX_PAGAR_CAIXA: TIBStringField;
    qryEmpresaCX_RECEBER_CAIXA: TIBStringField;
    qryEmpresaEXT_LANC_CAIXA_FECHADO: TIBStringField;
    qryEmpresaNUM_MAX_ITENS: TIntegerField;
    qryEmpresaIMP_UNIT_ORC: TIBStringField;
    qryEmpresaDUPLICATA: TIntegerField;
    qryEmpresaBLQQTDEFISCAL: TIBStringField;
    qryEmpresaNUM_MAX_ITENS_ORC: TIntegerField;
    qryEmpresaALTERA_PRECO_VENDA_ENT: TIBStringField;
    qryEmpresaTIPO_EMPRESA: TIBStringField;
    qryEmpresaDIG_CARTAO_VENDA: TIBStringField;
    qryEmpresaPIS: TFloatField;
    qryEmpresaCOFINS: TFloatField;
    qryEmpresaDIGITA_NUM_NOTA: TIBStringField;
    qryEmpresaDIGITA_COTACOES: TIBStringField;
    qryEmpresaFOTO: TIBStringField;
    qryEmpresaLOJA_DESC_AVISTA: TFloatField;
    qryEmpresaITENS_ORCAMENTO: TIntegerField;
    qryEmpresaIMPRIME_CABEC_2FOL: TIBStringField;
    qryEmpresaIMPRIME_DESCONTO_AGRUPADO: TIBStringField;
    qryEmpresaIMPRIME_RODAPE_ORCAMENTO: TIBStringField;
    qryEmpresaTIPO_CUSTO: TIBStringField;
    qryEmpresaTIPO_ORCAMENTO: TIBStringField;
    qryEmpresaSELECIONA_IMPRESSORA: TIBStringField;
    qryEmpresaCX_COMP_SLD_ANT: TIBStringField;
    qryEmpresaCX_IMP_VND_AGRUPADA: TIBStringField;
    qryEmpresaCX_TRANSP_SLD_ANT: TIBStringField;
    qryEmpresaMENS2_ECF: TIBStringField;
    qryEmpresaMENS3_ECF: TIBStringField;
    qryEmpresaTIPO_CAB_FATURA: TIBStringField;
    qryEmpresaTIPO_CONTAGEM: TIBStringField;
    qryEmpresaIMP_CASAS_QNTDE_FATURA: TIBStringField;
    qryEmpresaVALIDA_DOCUMENTOS: TIBStringField;
    qryEmpresaNUMERO_ZEROS: TIntegerField;
    qryEmpresaPST_MOSTRA_ENTRADAS: TIBStringField;
    qryEmpresaTROCO_MAXIMO: TFloatField;
    qryEmpresaMASCARA_FONE: TIBStringField;
    qryEmpresaCTB_JUROS_RECEBIDOS_REC: TIntegerField;
    qryEmpresaPDV_REPETE_PRODUTOS: TIBStringField;
    qryEmpresaIMPRIME_SUBTOTAL_ORCAMENTO: TIBStringField;
    qryEmpresaEMBUTIR_JUROS_IMPRESSOES: TIBStringField;
    qryEmpresaMASCARA_PRODUTOS_ENT: TIBStringField;
    qryEmpresaPDV_IMP_VINC_VALOR: TIBStringField;
    qryEmpresaPDV_PROPRIEDADE: TIBStringField;
    qryEmpresaPST_SENHA_CAIXA: TIBStringField;
    qryEmpresaIMPRIMIR_POSICOES: TIBStringField;
    qryEmpresaSINCRONIZAR_BOL_DPL: TIBStringField;
    qryEmpresaCOMISSAO_POR_FAIXA: TIBStringField;
    qryEmpresaCONTA_CARTAO_CAIXA: TIntegerField;
    qryEmpresaDIGITA_VENDEDOR_PDV: TIBStringField;
    qryEmpresaCOMISSAO_NORMAL: TIBStringField;
    qryEmpresaULTIMO_TURNO: TIntegerField;
    qryEmpresaIP_EXTERNO: TIBStringField;
    qryEmpresaCAMINHO_EXTERNO: TIBStringField;
    qryEmpresaSENHA_EMPRESA_EXTERNA: TIBStringField;
    qryEmpresaUTILIZA_DOCTOS_INT_ENTR: TIBStringField;
    qryEmpresaCONF_DUPLIC_REC_LANCTO: TIBStringField;
    qryEmpresaSIS_MENSAGEM_INTERNA: TIBStringField;
    qryEmpresaMENSAGEM_CONDICIONAL: TIBStringField;
    qryEmpresaFAT_TIPO_PARCELAMENTO: TIBStringField;
    qryEmpresaFAZ_FECHAMENTO_DIARIO: TIBStringField;
    qryEmpresaATUALIZA_ARQ_EXTERNO: TIBStringField;
    qryEmpresaCAIXA_SINCRONIZADO: TIBStringField;
    qryEmpresaICM_PRESUMIDO_IPI: TFloatField;
    qryEmpresaICM_PRESUMIDO_SEM_IPI: TFloatField;
    qryEmpresaALT_PRCVEND_MARGEM: TIBStringField;
    qryEmpresaBLQ_VENDA_SEM_IERG: TIBStringField;
    qryEmpresaPDV_UNITARIO_ZERADO: TIBStringField;
    qryEmpresaDIRETORIO_TEF: TIBStringField;
    qryEmpresaIMPRIME_NF_BALCAO: TIBStringField;
    qryEmpresaTRANSF_VLRS_CAIXA: TIBStringField;
    qryEmpresaLOCAL_FATURA_TROCA: TIBStringField;
    qryEmpresaEST_ET_PROD_GRD1: TMemoField;
    qryEmpresaEST_ET_PROD_GRD2: TMemoField;
    qryEmpresaEST_ET_PROD_GRD3: TMemoField;
    qryEmpresaEST_ET_PROD_GRD3_PARC: TMemoField;
    qryEmpresaEST_ET_PROD_GRD3_DESCTO: TMemoField;
    qryEmpresaEST_ET_PROD_GRD4: TMemoField;
    qryEmpresaCH_INFLUENCIA_VENDA: TIBStringField;
    qryEmpresaCRT_INFLUENCIA_VENDA: TIBStringField;
    qryEmpresaIMP_SERIE_NF: TIBStringField;
    qryEmpresaCONFIG_SERIE_NF: TMemoField;
    qryEmpresaCONFIG_CT13: TMemoField;
    qryEmpresaCONFIG_MALADIRETA: TMemoField;
    qryEmpresaGERA_BOLETOS: TIBStringField;
    qryEmpresaBLT_INSTRUCAO: TMemoField;
    qryEmpresaBLT_LOCAL_PAGTO: TIBStringField;
    qryEmpresaBLT_COD_CEDENTE: TIntegerField;
    qryEmpresaBLT_DIG_COD_CEDENTE: TIBStringField;
    qryEmpresaBLT_AGENCIA: TIBStringField;
    qryEmpresaBLT_DIG_AGENCIA: TIBStringField;
    qryEmpresaBLT_CONVENIO: TIntegerField;
    qryEmpresaBLT_CONTA: TIBStringField;
    qryEmpresaBLT_DIG_CONTA: TIBStringField;
    qryEmpresaBLT_CARTEIRA: TIBStringField;
    qryEmpresaBLT_LAYOUT: TSmallintField;
    qryEmpresaBLT_ACEITE_DOCTO: TIBStringField;
    qryEmpresaBLT_DIAS_ABATIMENTO: TIBStringField;
    qryEmpresaBLT_DIAS_DESCONTO: TIntegerField;
    qryEmpresaBLT_DIAS_MORA_JUROS: TIntegerField;
    qryEmpresaBLT_DIAS_PROTESTO: TIntegerField;
    qryEmpresaBLT_PCT_ABATIMENTO: TFloatField;
    qryEmpresaBLT_PCT_DESCONTO: TFloatField;
    qryEmpresaDESP_BANCARIA: TFloatField;
    qryEmpresaMORA_DIARIA: TFloatField;
    qryEmpresaBLT_VLR_IOF: TFloatField;
    qryEmpresaBLT_VLR_OUTRAS_DESP: TFloatField;
    qryEmpresaBLT_DIR_REMESSA: TIBStringField;
    qryEmpresaBLT_DIR_RETORNO: TIBStringField;
    qryEmpresaDESCONTO_MAXIMO: TFloatField;
    qryEmpresaCONFIG_NF_SERV: TMemoField;
    qryEmpresaDIG_ITENS_NF: TSmallintField;
    qryEmpresaVALIDA_ABERTURA_CX: TIBStringField;
    qryEmpresaCONTROLE_PEDIDO_RESTAURANTE: TIBStringField;
    qryEmpresaDB_VERSAO: TIntegerField;
    qryEmpresaTAXA_ACRESC_PDV: TFloatField;
    qryEmpresaMSG_PDVTELA: TIBStringField;
    qryEmpresaCONTAGEM_INCREMENTAL: TIBStringField;
    qryEmpresaEXIBE_MOD: TIBStringField;
    qryEmpresaEXIBE_PENDENCIA: TIBStringField;
    qryEmpresaKEY_RELEASE: TIBStringField;
    qryEmpresaEXIBE_MESAS: TIBStringField;
    qryEmpresaEXIBE_CTB: TIBStringField;
    qryEmpresaEXIBE_CB: TIBStringField;
    qryEmpresaEXIBE_SRV: TIBStringField;
    qryEmpresaCARREGAMENTO_PARCIAL: TIBStringField;
    qryEmpresaCONFIG_NF_GRAF: TMemoField;
    qryEmpresaBLT_EMAIL_SERVIDOR: TIBStringField;
    qryEmpresaBLT_EMAIL_PORTA: TSmallintField;
    qryEmpresaBLT_EMAIL_USER: TIBStringField;
    qryEmpresaBLT_EMAIL_SENHA: TIBStringField;
    qryEmpresaBLT_NOSSO_NUM_INI: TIntegerField;
    qryEmpresaBLT_NOSSO_NUM_FIM: TIntegerField;
    qryEmpresaBLT_NOSSO_NUM_PROX: TIntegerField;
    qryEmpresaEMAIL: TIBStringField;
    qryEmpresaBLT_MULTA: TFloatField;
    qryEmpresaCONFIG_COPIA_CHEQUE: TMemoField;
    qryEmpresaCONFIG_SERIE_ORC_NF: TMemoField;
    qryEmpresaCONFIG_REQUISICAO: TMemoField;
    qryEmpresaCONFIG_CARTA_SCPC: TMemoField;
    qryEmpresaATIVA_AGENTE: TIBStringField;
    qryEmpresaNF_CONTINUO_COM_MESMO_NUM_NF: TIBStringField;
    qryEmpresaNF_CONTINUO_NOME_CAMPO_TRUE: TIBStringField;
    qryEmpresaCONFIG_CONVENIO_PDV: TMemoField;
    qryEmpresaIMP_CONVENIO_GRAF: TIBStringField;
    qryEmpresaCONFIG_RECIBO: TMemoField;
    qryEmpresaNUM_ITENS_NF: TSmallintField;
    qryEmpresaNUM_ITENS_PDD: TSmallintField;
    qryEmpresaCONFIG_OS: TMemoField;
    qryEmpresaOFC_LT_PRODUTO_COPIAS: TIBStringField;
    qryEmpresaEXIBE_AGR: TIBStringField;
    qryEmpresaIE: TIBStringField;
    qryEmpresaCOD_CIDADE: TIntegerField;
    qryEmpresaCOD_LOGRADOURO: TIntegerField;
    qryEmpresaCOD_BAIRRO: TIntegerField;
    qryEmpresaEND_NUMERO: TIntegerField;
    qryEmpresaEXIBE_CARGA: TIBStringField;
    qryEmpresaEXIBE_NFE: TIBStringField;
    qryEmpresaEXIBE_SINTEGRA: TIBStringField;
    qryEmpresaNFE_AMBIENTE: TIBStringField;
    qryEmpresaNFE_VERSAO_APP: TIBStringField;
    qryEmpresaNFE_DIR_EXPORTACAO: TIBStringField;
    qryEmpresaNFE_LEIAUTE_DANFE: TIBStringField;
    qryEmpresaLOCAL_PADRAO: TIBStringField;
    qryEmpresaCONFIG_AGR_RECEITA: TMemoField;
    qryEmpresaCONFIG_ACERTO_1: TMemoField;
    qryEmpresaDESC_BX_PARCIAL: TIBStringField;
    qryEmpresaCM_AGR: TIBStringField;
    qryEmpresaCM_VDT: TIBStringField;
    qryEmpresaCMD_VDT_PCT: TFloatField;
    qryEmpresaPDV_FORMA_PAGTO: TIntegerField;
    qryEmpresaEXIBE_TBL: TIBStringField;
    qryEmpresaEXIBE_ACERTO_CONTAS: TIBStringField;
    qryEmpresaEMAIL_PADRAO: TIBStringField;
    qryEmpresaSMTP: TIBStringField;
    qryEmpresaLOGIN: TIBStringField;
    qryEmpresaSENHA: TIBStringField;
    qryEmpresaNOME_USUARIO: TIBStringField;
    qryEmpresaEMAIL_CONTROLE: TIBStringField;
    qryEmpresaEXIBE_MESALIDADES: TIBStringField;
    qryEmpresaFORMA_PAGTO_MENSALIDADE: TIntegerField;
    qryEmpresaNFE_CERT_CAMINHO: TIBStringField;
    qryEmpresaNFE_CERT_SENHA: TIBStringField;
    qryEmpresaNFE_CERT_NUM_SERIE: TIBStringField;
    qryEmpresaNFE_GER_TP_DANFE: TIBStringField;
    qryEmpresaNFE_GER_FORMA_EMISSAO: TIBStringField;
    qryEmpresaNFE_GER_PATH_LOGS: TIBStringField;
    qryEmpresaNFE_GER_IMG_DANFE: TIBStringField;
    qryEmpresaNFE_WS_UF: TIBStringField;
    qryEmpresaNFE_WS_AMBIENTE: TIBStringField;
    qryEmpresaNFE_WS_PROXY_HOST: TIBStringField;
    qryEmpresaNFE_WS_PROXY_PORTA: TIBStringField;
    qryEmpresaNFE_WS_PROXY_USUARIO: TIBStringField;
    qryEmpresaNFE_WS_PROXY_SENHA: TIBStringField;
    qryEmpresaNFE_EMIT_CNPJ: TIBStringField;
    qryEmpresaNFE_EMIT_INSC_ESTADUAL: TIBStringField;
    qryEmpresaNFE_EMIT_FANTASIA: TIBStringField;
    qryEmpresaNFE_EMIT_FONE: TIBStringField;
    qryEmpresaNFE_EMIT_CEP: TIBStringField;
    qryEmpresaNFE_EMIT_LOGRADOURO: TIBStringField;
    qryEmpresaNFE_EMIT_BAIRRO: TIBStringField;
    qryEmpresaNFE_EMIT_COMPLEMENTO: TIBStringField;
    qryEmpresaNFE_EMIT_NUMERO: TIntegerField;
    qryEmpresaNFE_EMIT_COD_CIDADE: TIntegerField;
    qryEmpresaNFE_EMIT_CIDADE: TIBStringField;
    qryEmpresaNFE_EMIT_UF: TIBStringField;
    qryEmpresaNFE_EMIT_EMAIL: TIBStringField;
    qryEmpresaNFE_EMAIL_PORTA: TIntegerField;
    qryEmpresaNFE_EMAIL_USUARIO: TIBStringField;
    qryEmpresaNFE_EMAIL_SENHA: TIBStringField;
    qryEmpresaNFE_EMAIL_SMTP_SEGURA: TIBStringField;
    qryEmpresaNFE_EMAIL_SMTP: TIBStringField;
    qryEmpresaNFE_EMIT_RAZAO_SOCIAL: TIBStringField;
    qryEmpresaEXIBE_INDICE_PDV: TIBStringField;
    qryEmpresaNFE_PATH_LEIAUTE_DANFE: TIBStringField;
    qryEmpresaBCH_FILIAL: TIntegerField;
    qryEmpresaRESUMO_MOEDAS: TIntegerField;
    qryEmpresaVENCTO_FIXO_PRESTACOES: TIBStringField;
    qryEmpresaTOLERANCIA_JUROS: TIntegerField;
    qryEmpresaMULTA_FINANCEIRA: TFloatField;
    qryEmpresaINCLUI_VENDA_LIMITE: TIBStringField;
    qryEmpresaEXCLUI_VENDAS_BX_PARC_PDV: TIBStringField;
    qryEmpresaUTLIZA_INDEXADOR_CUSTO: TIBStringField;
    qryEmpresaIMPRIME_ITENS_CUPOM_PDV: TIBStringField;
    qryEmpresaITENSORCAMENTO_ORC: TIntegerField;
    qryEmpresaCODIGO_SCPC: TIBStringField;
    qryEmpresaPDV_TROCO_MAXIMO: TFloatField;
    qryEmpresaALIQUOTA_ISS: TFloatField;
    qryEmpresaPEDE_SENHAGER_CAIXA: TIBStringField;
    qryEmpresaIMP_VND_FATURAMENTO: TIBStringField;
    qryEmpresaCTB_CAIXA_FRENTISTA_GERAL: TIBStringField;
    qryEmpresaEST_ENTRADAS_DOLAR: TIBStringField;
    qryEmpresaOFC_ORDEM_VENDEDOR: TIntegerField;
    qryEmpresaOFC_ORDEM_NATUREZA: TIntegerField;
    qryEmpresaOFC_ORDEM_FRM_PAGTO: TIntegerField;
    qryEmpresaOFC_ORDEM_PRODUTO: TIBStringField;
    qryEmpresaEST_UTILIZA_GRADES: TIBStringField;
    qryEmpresaITENSORDEM_SERVICO: TIntegerField;
    qryEmpresaBLOQ_CAD_SEM_CPF: TIBStringField;
    qryEmpresaPDV_IMP_END_PRAZO: TIBStringField;
    qryEmpresaOFC_NOME_RAZAO: TIBStringField;
    qryEmpresaOFC_ENDERECO: TIBStringField;
    qryEmpresaOFC_FONE: TIBStringField;
    qryEmpresaOFC_FAX: TIBStringField;
    qryEmpresaOFC_COR_TELA: TIBStringField;
    qryEmpresaCTB_DIFERENCA_CAIXA: TIntegerField;
    qryEmpresaENT_FRETE_MANUAL: TIBStringField;
    qryEmpresaCONVENIO_CHEQUE: TIBStringField;
    qryEmpresaCODIGO_CONVENIO_BANCO: TIBStringField;
    qryEmpresaPATH_ARQUIVO_BANCO: TIBStringField;
    qryEmpresaNOME_ARQUIVO_BANCO: TIBStringField;
    qryEmpresaGLO_PROPRIEDADE_EQUIPAMENTOS: TIBStringField;
    qryEmpresaCSLL: TFloatField;
    qryEmpresaUTILIZA_MASCARA_ORCAMENTO: TIBStringField;
    qryEmpresaVALOR_MINIMO_PARCELAMENTO: TFloatField;
    qryEmpresaPDV_OBRIGA_QNTDE: TIBStringField;
    qryEmpresaPDV_COR_FUNDO: TIntegerField;
    qryEmpresaPDV_COR_FONTE: TIntegerField;
    qryEmpresaDIFERENCIA_FIS_FISC: TIBStringField;
    qryEmpresaPDV_FATURAMENTO_FIM_MES: TIBStringField;
    qryEmpresaPDV_FOTO_FUNDO: TIBStringField;
    qryEmpresaBLOQUEIA_VENDA_SEM_CPF: TIBStringField;
    qryEmpresaDESPESAS_OPERACIONAIS: TFloatField;
    qryEmpresaIMPOSTO_RENDA: TFloatField;
    qryEmpresaEST_REPETE_COD_SEC: TIBStringField;
    qryEmpresaOFC_USA_CONTADORES: TIBStringField;
    qryEmpresaIMPRIME_CUPOM_NOMINAL: TIBStringField;
    qryEmpresaIMP_NOME_PROPRIEDADE: TIBStringField;
    qryEmpresaPDV_VER_ULTIMAS_VENDAS: TIBStringField;
    qryEmpresaCNPJ1: TIBStringField;
    qryEmpresaCODIFICA_PRODUTOS: TIBStringField;
    qryEmpresaBCH_INS_MUN: TSmallintField;
    qryEmpresaBCH_NOMECONTATO: TIBStringField;
    qryPrecoBCH_CODIGO: TIntegerField;
    qryPrecoPRC_VENDA: TFloatField;
    qryPrecoBCH_FILIAL: TIntegerField;
    qryClientesCNPJ: TIBStringField;
    qryClientesPESSOA_FJ: TIntegerField;
    qryClientesCOMPRADOR: TIBStringField;
    qryClientesFONE: TIBStringField;
    qryClientesCNPJ_VEND: TIBStringField;
    qryClientesCOD_VEND: TIntegerField;
    qryClientesCNPJ_FPAGTO: TIBStringField;
    qryClientesCOD_FPAGTO: TIntegerField;
    qryClientesREQUISICAO: TIBStringField;
    qryClientesDIA_PREF_FAT: TIntegerField;
    qryClientesCLASSIF: TIBStringField;
    qryClientesLIMITE_TEMPO: TIntegerField;
    qryClientesLIMITE_CREDITO: TFloatField;
    qryClientesREFERENCIAS: TBlobField;
    qryClientesOBS: TBlobField;
    qryClientesBLOQUEADO: TIBStringField;
    qryClientesULT_VENDEDOR: TIntegerField;
    qryClientesFREQUENCIA: TIBStringField;
    qryClientesATIVIDADE: TIntegerField;
    qryClientesCEP_TRABALHO: TIBStringField;
    qryClientesCIDADE_PAIS: TIntegerField;
    qryClientesCONJUGE: TIBStringField;
    qryClientesDT_NASC_CONJUGE: TDateTimeField;
    qryClientesENDERECO_PAIS: TIntegerField;
    qryClientesENDERECO_TRABALHO: TIntegerField;
    qryClientesFONE_LOCAL_CONJUGE: TIBStringField;
    qryClientesFONE_TRABALHO: TIBStringField;
    qryClientesLOCAL_TRAB_CONJUGE: TIBStringField;
    qryClientesLOCAL_TRABALHO: TIBStringField;
    qryClientesMAE: TIBStringField;
    qryClientesPAI: TIBStringField;
    qryClientesRAMAL_FONE_TRAB: TIBStringField;
    qryClientesRAMAL_LOCAL_CONJUGE: TIBStringField;
    qryClientesRENDA_MENSAL: TFloatField;
    qryClientesTEMPO_SERV_CONJUGE: TIBStringField;
    qryClientesTEMPO_SERVICO: TIBStringField;
    qryClientesCNPJ_CLASSIF: TIBStringField;
    qryClientesCOD_CLASSIF: TIntegerField;
    qryClientesPRAZO: TIntegerField;
    qryClientesPERIODO_FATURAMENTO: TIBStringField;
    qryClientesTOLERANCIA_FATURAMENTO: TIntegerField;
    qryClientesAJUSTE_AUT_FATURAS: TIBStringField;
    qryClientesTAXA_JUROS: TFloatField;
    qryClientesMEDIA_COMPRAS_MES: TIntegerField;
    qryClientesNAO_COBR_JUR_ATE: TIntegerField;
    qryClientesASSINA_NOTA: TIBStringField;
    qryClientesCONTROLA_PLACA: TIBStringField;
    qryClientesCONTROLA_KM: TIBStringField;
    qryClientesADMISSAO: TDateTimeField;
    qryClientesADMISSAO_CONJUGE: TDateTimeField;
    qryClientesNUMERO_TRABALHO: TIBStringField;
    qryClientesLIMITE_RETIRADAS_DIARIA: TFloatField;
    qryClientesVALOR_MAXIMO_RETIRADA: TFloatField;
    qryClientesNUMERO_PAIS: TIBStringField;
    qryClientesCHEQUE: TIBStringField;
    qryClientesALIQUOTA_DESCONTO: TFloatField;
    qryClientesOPTANTE_SIMPLES: TIBStringField;
    qryClientesCONS_REV: TIBStringField;
    qryClientesSENHA_PDV: TIBStringField;
    qryClientesSUB_TRIBUTARIO: TIBStringField;
    qryClientesRET_PIS: TIBStringField;
    qryClientesRET_INSS: TIBStringField;
    qryClientesRET_IRRF: TIBStringField;
    qryClientesBAIRRO: TIntegerField;
    qryClientesNEG_N_VEZES: TSmallintField;
    qryClientesCNPJ1: TIBStringField;
    qryClientesCODIGO: TIntegerField;
    qryClientesNOME_RAZAO: TIBStringField;
    qryClientesFANTASIA: TIBStringField;
    qryClientesATIVIDADE1: TIntegerField;
    qryClientesENDERECO: TIntegerField;
    qryClientesNUMERO: TIBStringField;
    qryClientesCOMPLEMENTO: TIBStringField;
    qryClientesBAIRRO1: TIntegerField;
    qryClientesCIDADE: TIntegerField;
    qryClientesUF: TIBStringField;
    qryClientesCEP: TIBStringField;
    qryClientesFONE1: TIBStringField;
    qryClientesFAX: TIBStringField;
    qryClientesCELULAR: TIBStringField;
    qryClientesPESSOA: TIBStringField;
    qryClientesCPF_CGC: TIBStringField;
    qryClientesRG_IE: TIBStringField;
    qryClientesCONTATO: TIBStringField;
    qryClientesDT_NASCIMENTO: TDateTimeField;
    qryClientesDT_CADASTRO: TDateTimeField;
    qryClientesEMAIL: TIBStringField;
    qryClientesOBS1: TBlobField;
    qryClientesINSC_MUNIC: TIBStringField;
    qryClientesCONVENIO: TIntegerField;
    qryClientesEMISSOR: TIBStringField;
    qryClientesCONTATO1: TIBStringField;
    qryClientesCONTATO2: TIBStringField;
    qryClientesCONTATO3: TIBStringField;
    qryClientesORDEM: TIntegerField;
    qryClientesREGIAO: TIntegerField;
    qryClientesNFE_EXP: TIBStringField;
    qryClientesSELECIONADO: TIBStringField;
    qryClientesCODIGO_2: TIntegerField;
    qryClientesENDERECO_NOME: TIBStringField;
    qryClientesBAIRRO_NOME: TIBStringField;
    qryClientesCIDADES_NOME: TIBStringField;
    qryCaixa: TIBQuery;
    qryCaixaUSUARIO: TIntegerField;
    qryProdutos: TIBQuery;
    qryProdutosCNPJ: TIBStringField;
    qryProdutosCODIGO: TIBStringField;
    qryProdutosCODIGO_2: TIBStringField;
    qryProdutosCNPJ_AGRUP: TIBStringField;
    qryProdutosCOD_AGRUP: TIBStringField;
    qryProdutosNOME: TIBStringField;
    qryProdutosMARCA: TIntegerField;
    qryProdutosNOME_MARCA: TIBStringField;
    qryProdutosGRUPO: TIntegerField;
    qryProdutosSUBGRUPO: TIntegerField;
    qryProdutosREDUCAO: TIntegerField;
    qryProdutosUNIDADE: TIBStringField;
    qryProdutosUND_PRIMARIA: TIBStringField;
    qryProdutosCTE: TSmallintField;
    qryProdutosCTIE: TSmallintField;
    qryProdutosQTDADE_1: TFloatField;
    qryProdutosQTDADE_2: TFloatField;
    qryProdutosLOCALIZACAO_1: TIBStringField;
    qryProdutosLOCALIZACAO_2: TIBStringField;
    qryProdutosLOCALIZACAO_3: TIBStringField;
    qryProdutosNEG_QTDADE_2: TIBStringField;
    qryProdutosQTDADE_MIN: TIntegerField;
    qryProdutosQTDADE_MAX: TIntegerField;
    qryProdutosCOMPLEMENTO_NF: TIBStringField;
    qryProdutosDT_ULT_COMPRA: TDateTimeField;
    qryProdutosQT_ULT_COMPRA: TIntegerField;
    qryProdutosDT_ULT_VENDA: TDateTimeField;
    qryProdutosMARGEM_BRUTA: TFloatField;
    qryProdutosPRC_REPOS: TFloatField;
    qryProdutosPRC_CUSTO_ANT: TFloatField;
    qryProdutosPRC_CUSTO_MED: TFloatField;
    qryProdutosPRC_VENDA: TFloatField;
    qryProdutosPRC_VENDA_ANT: TFloatField;
    qryProdutosPRC_VENDA_MED: TFloatField;
    qryProdutosALIQUOTA_ECF: TIBStringField;
    qryProdutosORIGEM: TSmallintField;
    qryProdutosPESO_LIQ: TFloatField;
    qryProdutosPERC_FRETE: TFloatField;
    qryProdutosIPI: TFloatField;
    qryProdutosVOLUME: TFloatField;
    qryProdutosPROD_PESAVEL: TIBStringField;
    qryProdutosETIQUETA_ENT: TIBStringField;
    qryProdutosATIVO: TIBStringField;
    qryProdutosULTIMO_FORNECEDOR: TIntegerField;
    qryProdutosFORNECEDOR: TIntegerField;
    qryProdutosSUBUNIDADE: TIntegerField;
    qryProdutosPRC_CUSTO_CODIF: TIBStringField;
    qryProdutosCODIGO_INTERNO: TIntegerField;
    qryProdutosDT_ULT_ATU_PRECO: TDateTimeField;
    qryProdutosCUSTO_AQUISICAO: TFloatField;
    qryProdutosVENDE_FRACIONADO: TIBStringField;
    qryProdutosQNTDE_EXPOSTA: TFloatField;
    qryProdutosPOSSUI_LOTE: TIBStringField;
    qryProdutosQNTDE_MAXIMA_VENDA: TFloatField;
    qryProdutosPIS: TIBStringField;
    qryProdutosCOFINS: TIBStringField;
    qryProdutosCOM_VENDA_VLR: TFloatField;
    qryProdutosCOM_VENDA_PCT: TFloatField;
    qryProdutosPARTICIP_LUCRO: TFloatField;
    qryProdutosNAO_COBR_JUR_ATE: TIntegerField;
    qryProdutosPREVISAO_ENTREGA: TDateTimeField;
    qryProdutosQNTDE_PEDIDA: TFloatField;
    qryProdutosATUALIZA_ARQ_EXTERNO: TIBStringField;
    qryProdutosSERVICO: TIBStringField;
    qryProdutosVALIDADE: TIntegerField;
    qryProdutosCUSTO_INDEXADO: TFloatField;
    qryProdutosCOMPLEMENTO: TIBStringField;
    qryProdutosATUALIZAR: TIBStringField;
    qryProdutosEST_MIN: TFloatField;
    qryProdutosEST_MAX: TFloatField;
    qryProdutosMODELO: TIntegerField;
    qryProdutosNOME_MODELO: TIBStringField;
    qryProdutosSERIE: TIBStringField;
    qryProdutosDEBITA_ICMS: TIBStringField;
    qryProdutosSECAO: TIntegerField;
    qryProdutosNFE_EXP: TIBStringField;
    qryProdutosSELECIONADO: TIBStringField;
    qryProdutosQNTDE_MINIMA_VENDA: TFloatField;
    qryProdutosVALIDA_MULT_QTDE_MIN: TIBStringField;
    qryProdutosFATOR_CONVERSAO: TFloatField;
    qryProdutosSINCRONIZA_FILIAIS: TIBStringField;
    qryProdutosQNTDE_PDR_CARGA: TFloatField;
    qryProdutosUND_CARREGAMENTO: TIBStringField;
    qryProdutosTRIB_ALIQ_EST: TFloatField;
    qryProdutosTRIB_ALIQ_INT: TFloatField;
    qryProdutosTRIB_MODALIDADE: TIBStringField;
    qryProdutosBCH_CODIGO: TIntegerField;
    qryVendedor: TIBQuery;
    qryVendedorCNPJ: TIBStringField;
    qryVendedorCODIGO: TIntegerField;
    qryVendedorNOME: TIBStringField;
    qryVendedorCOM_VISTA: TFloatField;
    qryVendedorCOM_PRAZO: TFloatField;
    qryVendedorPESSOA_FJ: TIntegerField;
    qryVendedorSENHA: TIBStringField;
    qryVendedorATIVO: TIBStringField;
    qryVendedorCOD_PERFIL: TIntegerField;
    qryVendedorCOD_PERFIL_PAGTO: TIntegerField;
    qryVendedorBCH_FILIAL: TIntegerField;
    edtDiretorio: TdxEdit;
    Label142: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActExportaExecute(Sender: TObject);
    procedure PRODUTOSBeforeOpen(DataSet: TDataSet);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCriarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzBitBtn2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmExportaBemacash: TFrmExportaBemacash;

implementation

uses Usuarios_DM, Application_DM, Funcoes, Cadastros_DM;

{$R *.DFM}

procedure TFrmExportaBemacash.FormCreate(Sender: TObject);
begin


  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmExportaBemacash.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmExportaBemacash.ActExportaExecute(Sender: TObject);
var
  I,codbarracont, sequencia,COunt: Integer;
  qtdex: real;
  f: TextFile;
  qtde, volume, Aux,Aux2, IE_PROP, IE_REV,  TipoArquivo, cpf_cnpj, fone, auxtxt, auxtxt2: String;
begin

  try
      AssignFile( f, 'C:\Arquivos de programas\Bematech\Configurador BemaCash\PDV_IMPORTA\Bin\Arquivos\OFF_BANCOS.PDV');

      //Criando o txt
      if FileExists( DmApp.BCH_PATH+'\OFF_BANCOS.PDV') then
         DeleteFile( DmApp.BCH_PATH+'\OFF_BANCOS.PDV');


      Rewrite(F, DmApp.BCH_PATH+'\OFF_BANCOS.PDV');
      Append(f);

      qryBanco.Close;
      qryBanco.Open;
      qryBanco.First;

      Aux := 'NUMBCO;INT	NOMBCO;STR(30)	STATUS;STR(1)	RESBCO;STR(10)';

      Writeln(f, aux);
      while not qryBanco.Eof do
      begin
        Aux := qryBancoCODIGO.AsString +#9 +qryBancoNOME.AsString + #9+ #9;
        Writeln(f, aux) ;
        qryBanco.Next;
      end;

      CloseFile(f);

  except
      Application.MessageBox('Problema ao gerar o arquivo!!','Aviso',mb_ok+mb_iconerror);
  end;

  try
      AssignFile( f, DmApp.BCH_PATH+'\OFF_PRECOS.PDV');

      //Criando o txt
      if FileExists( DmApp.BCH_PATH+'\OFF_PRECOS.PDV') then
         DeleteFile( DmApp.BCH_PATH+'\OFF_PRECOS.PDV');


      Rewrite(F, DmApp.BCH_PATH+'\OFF_PRECOS.PDV');

      Append(f);

      qryPreco.Close;
      qryPreco.Open;
      qryPreco.First;
      while not qryPreco.Eof do
      begin
          Aux2  := FormatFloat(',#0.0000',Arredonda(qryPrecoPRC_VENDA.AsFloat,2));
          Aux   := qryPrecoBCH_CODIGO.AsString+#9+Aux2+#9+qryPrecoBCH_FILIAL.AsString;
          Writeln(f, aux) ;
          qryPreco.Next;
      end;

      CloseFile(f);

  except
      Application.MessageBox('Problema ao gerar o arquivo!','Aviso',mb_ok+mb_iconerror);
  end;

  try
      AssignFile( f, DmApp.BCH_PATH+'\OFF_CLIENTES.pdv');

      //Criando o txt
      if FileExists( DmApp.BCH_PATH+'\OFF_CLIENTES.pdv') then
         DeleteFile( DmApp.BCH_PATH+'\OFF_CLIENTES.pdv');


      Rewrite(F, DmApp.BCH_PATH+'\OFF_CLIENTES.pdv');

      Append(f);

      qryClientes.Close;
      qryClientes.Open;
      qryClientes.First;
      Aux :=  'CODCLI;INT	DIGCLI;INT	NOMCLI;STR(40)	CODSITCRED;STR(2)	CODCONVENIO;INT	VLLIMITECONVENIO;DBL	VLSALDOCONVENIO;DBL	FLEFETUACOMPRALIMITE;STR(1)	CGCCPF;INT	ENDERECO;STR(40)	BAIRRO;STR(30)	CIDADE;STR(60)	ESTADO;STR(2)	CEP;INT	';
      Aux :=  Aux +' DDD;STR(4)	FONE;STR(8)	CODFUNCIONARIO;INT	NUMERO;INT	COMPLEMENTO;STR(20)	STATUS;INT	NATJUR;STR(1)	SENHA;STR(8)	VLLIMCRE;DBL	FLREVENDEDOR;STR(1)	CODTABDESC;STR(6)	CONDPGTO;STR(3)	NRDIASCARENCIA;STR(2)	';
      Aux :=  Aux +'FLCOBRJURCARENCIA;STR(1)	FLNAONEGATIVA;STR(1)	NUMDOC;STR(15)	FLSIMPLES;STR(1)	FLMICROEMP;STR(1)	TPINSC;STR(1)	TPCREDITSCORE;STR(1)	CODGRPECON;STR(6)	PLIMCRE;DBL';

      Writeln(f, aux);

      AUX := '0'+#9+	'0'+#9+	'CONSUMIDOR'+#9+	'0'+#9+	'0'+#9+	'0'+#9+	'0'+#9+	'N'+#9+#9+	 	'0'+#9+	'0'+#9+	'0'+#9+	'SP'+#9+	'0'+#9+	'0'+#9+	'0'+#9+ '0'+#9+	'0'+#9+	'0'+#9+	'9'+#9+	'0'+#9+ '0'+#9+	'0'+#9+	'0'	+#9+'0'+#9+	'0'+#9+	'0'+#9+	'0'+#9+	'0'+#9+	'0'+#9+	'N'+#9+	'N'+#9+	'0'+#9+	'0'+#9+	'0'+#9+	'0';
      Writeln(f, aux) ;

      while not qryClientes.Eof do
      begin
          Auxtxt  := StringReplace(qryClientesCPF_CGC.AsString,'-','',[rfReplaceAll]);
          Auxtxt  := StringReplace(qryClientesCPF_CGC.AsString,'.','',[rfReplaceAll]);
          if Auxtxt = '' then
              Auxtxt  := '00000000000';
          Auxtxt2  := StringReplace(qryClientesCEP.AsString,'-','',[rfReplaceAll]);

          Aux   := qryClientesPESSOA_FJ.AsString  +#9+ '0' +#9+copy(qryClientesNOME_RAZAO.AsString,1,40)+#9+#9+#9+#9+#9+#9+ auxtxt +#9+ copy(qryClientesENDERECO_NOME.AsString,1,40) +#9+ copy(qryClientesBAIRRO_NOME.AsString,1,30) +#9;
          Aux2  := Copy(qryClientesFONE.AsString,2,2);
          Aux   := Aux  + copy(qryClientesCIDADES_NOME.AsString,1,60) +#9+ qryClientesUF.AsString +#9+ Auxtxt2 +#9+ Aux2 +#9;
          Aux2  := StringReplace(Copy(qryClientesFONE.AsString,5,9),'-','',[rfReplaceAll]);
          Aux   := Aux + Aux2 +#9+#9;
          COunt :=  1;
          auxtxt  := pchar(qryClientesNUMERO.AsString);
          Aux2     := qryClientesNUMERO.AsString;
          //-----------Procedimento escrito para pegar somente numeros do endereco
          while COunt <= StrLen(PChar(auxtxt)) do
          begin
              if (auxtxt[count] > '9')then
                  Aux2 := '1';
              COunt := count +1;
          end;
          Aux   := Aux + Aux2 +#9+#9 +'1'+#9+#9+'123456'+#9+ qryClientesLIMITE_CREDITO.AsString +#9+#9+'0'+#9+#9+ qryClientesLIMITE_TEMPO.AsString +#9+#9+#9+#9+#9+#9+#9+#9+'0'+#9;
          Writeln(f, aux) ;
          qryClientes.Next;
      end;

      CloseFile(f);
  except
      Application.MessageBox('Problema ao gerar o arquivo!','Aviso',mb_ok+mb_iconerror);
  end;

  try
      AssignFile( f, DmApp.BCH_PATH+'\OFF_CAD_FILIAL.pdv');

      //Criando o txt
      if FileExists( DmApp.BCH_PATH+'\OFF_CAD_FILIAL.pdv') then
         DeleteFile( DmApp.BCH_PATH+'\OFF_CAD_FILIAL.pdv');


      Rewrite(F, DmApp.BCH_PATH+'\OFF_CAD_FILIAL.pdv');

      Append(f);

      qryEmpresa.Close;
      qryEmpresa.Open;
      qryEmpresa.First;
      Aux   := 'CODFIL;INT	CONDPGTOCARNE;STR(3)	CODFILDIST;INT	CODFILRET;INT	Estado;STR(2)	FANTASIA;STR(20)	FLVERIFICACRED;STR(1)	ISS;DBL	TPNFVDDEFECF;INT	FLENDERALEATORIO;STR(1)	CONDPGDEF;STR(3)	RAZSOC;STR(60)	ENDERECO;STR(40)	';
      Aux   := Aux  + 'COMPLEMENTO;STR(20)	NUMERO;INT	CIDADE;STR(60)	INSCRICAO;STR(15)	CGCCPF;STR(14)	DDD;STR(4)	FONE;STR(8)	FAX;STR(8)	CEP;INT	INSCRESTSUB;STR(15)	SERIE;STR(3)	INSCMUNIC;INT	BAIRRO;STR(50)	NOMECONTATO;STR(50)';
      Writeln(f, aux);
      while not qryEmpresa.Eof do
      begin
          Aux2  := StringReplace(qryEmpresaALIQUOTA_ISS.AsString,'.','',[rfreplaceall]);
          Aux2  := StringReplace(Aux2,',','',[rfreplaceall]);
          Aux   := qryEmpresaBCH_FILIAL.AsString +#9+#9+#9+#9+ qryEmpresaUF.AsString +#9+ Copy(qryEmpresaNFE_EMIT_FANTASIA.AsString,1,10) +#9+#9+ Aux2 +#9+#9+#9+#9+ qryEmpresaNFE_EMIT_RAZAO_SOCIAL.AsString +#9+ qryEmpresaENDERECO.AsString +#9+#9;
          Aux   := Aux + qryEmpresaEND_NUMERO.AsString +#9+ qryEmpresaCIDADE.AsString +#9;
          Aux2  := Copy(qryEmpresaFONE.AsString,2,3);
          Aux   := Aux + qryEmpresaIE.AsString +#9+ qryEmpresaCNPJ.AsString +#9+ Aux2 +#9;
          Aux2  := StringReplace(Copy(qryEmpresaFONE.AsString,6,9),'-','',[rfReplaceAll]);
          Aux   :=  Aux + Aux2 +#9;
          Aux2  := StringReplace(Copy(qryEmpresaFAX.AsString,6,9),'-','',[rfReplaceAll]);
          Aux   :=  Aux + Aux2 +#9+ qryEmpresaCEP.AsString +#9+ #9+ 'A1'+#9+ qryEmpresaBCH_INS_MUN.AsString +#9+ qryEmpresaBAIRRO.AsString +#9+ qryEmpresaBCH_NOMECONTATO.AsString;
          Writeln(f, aux) ;
          qryEmpresa.Next;
      end;

      CloseFile(f);

  except
      Application.MessageBox('Problema ao gerar o arquivo!','Aviso',mb_ok+mb_iconerror);
  end;  try
      AssignFile( f, DmApp.BCH_PATH+'\OFF_CAD_FILIAL_COMPL.PDV');

      //Criando o txt
      if FileExists( DmApp.BCH_PATH+'\OFF_CAD_FILIAL_COMPL.PDV') then
         DeleteFile( DmApp.BCH_PATH+'\OFF_CAD_FILIAL_COMPL.PDV');


      Rewrite(F, DmApp.BCH_PATH+'\OFF_CAD_FILIAL_COMPL.PDV');

      Append(f);

      qryEmpresa.Close;
      qryEmpresa.Open;
      qryEmpresa.First;
      Aux := 'ALIQICMSFRETE;DBL	CODFIL;INT	FLAUTENTICESTACIONAMENTO;STR(1)	FlDescAutoItem;STR(1)	FLALTCONDPGPED;STR(1)	FLCONFITEMPED;STR(1)	FLEMITEISSSEPARADO;STR(1)	FLCARTAODESC;STR(1)	FLMULTIREC;STR(1)	FLORCAMENTO;STR(1)	FLREDUDIFER;STR(1)	';
      Aux := Aux + 'FLPRODPESPDV;STR(1)	FLCONSISTEDESC;STR(1)	PDESCTOTALPDV;DBL	VLMINAUTENTICESTACIONAMENTO;DBL	VLMINDESCTOTALPDV;DBL	TPVERIFICAAVALLIMCRED;STR(1)	VLMINPROM;DBL	FLCAMPPROMOCAO;STR(1)	FLUTILCITERCEIROS;STR(1)	FLLIBTODOSCHQ;STR(1)';
      Aux := Aux + '	FLPOSCXANALITICA;STR(1)	FLSOLICITACPFCNPJPDV;STR(1)	FLSOLICITASEXO;STR(1)	FLSOLICITACEP;STR(1)';
      Writeln(f, aux);
      while not qryEmpresa.Eof do
      begin
          Aux   := #9+ qryEmpresaBCH_FILIAL.AsString +#9+#9+#9+#9+#9+#9+#9+#9+#9+#9+#9+#9+#9+#9+#9+#9+#9+#9+#9+#9+#9+#9+#9;
          Writeln(f, aux) ;
          qryEmpresa.Next;
      end;

      CloseFile(f);

  except
      Application.MessageBox('Problema ao gerar o arquivo!','Aviso',mb_ok+mb_iconerror);
  end;

  try
      AssignFile( f, DmApp.BCH_PATH+'\OFF_CAIXAS.PDV');

      //Criando o txt
      if FileExists( DmApp.BCH_PATH+'\OFF_CAIXAS.PDV') then
         DeleteFile( DmApp.BCH_PATH+'\OFF_CAIXAS.PDV');


      Rewrite(F, DmApp.BCH_PATH+'\OFF_CAIXAS.PDV');

      Append(f);

      qryCaixa.Close;
      qryCaixa.Open;
      qryCaixa.First;
      Aux   := 'NUMCXA;INT	DESCXA;STR(15)	STATUS;INT';
      Writeln(f, aux) ;
      while not qryCaixa.Eof do
      begin
          Aux  := qryCaixaUSUARIO.AsString +#9 + 'PDV' + qryCaixaUSUARIO.AsString+#9 + '1';
          Writeln(f, aux) ;
          qryCaixa.Next;
      end;

      CloseFile(f);

  except
      Application.MessageBox('Problema ao gerar o arquivo!','Aviso',mb_ok+mb_iconerror);
  end;

  try
      AssignFile( f, DmApp.BCH_PATH+'\OFF_PRODUTOS.PDV');

      //Criando o txt
      if FileExists( DmApp.BCH_PATH+'\OFF_PRODUTOS.PDV') then
         DeleteFile( DmApp.BCH_PATH+'\OFF_PRODUTOS.PDV');


      Rewrite(F, DmApp.BCH_PATH+'\OFF_PRODUTOS.PDV');

      Append(f);

      qryProdutos.Close;
      qryProdutos.Open;
      qryProdutos.First;
      count := 1;
      while not qryProdutos.Eof do
      begin
          if count > 9 then
              count := 1;
          if qryProdutosCTE.AsInteger = 1 then
            Aux2  := '00'
          else if qryProdutosCTE.AsInteger = 2 then
            Aux2  := '20'
          else if qryProdutosCTE.AsInteger = 3 then
            Aux2  := '40'
          else if qryProdutosCTE.AsInteger = 4 then
            Aux2  := '40'
          else if qryProdutosCTE.AsInteger = 5 then
            Aux2  := '51'
          else if qryProdutosCTE.AsInteger = 6 then
            Aux2  := '60'
          else if qryProdutosCTE.AsInteger = 7 then
            Aux2  := '70';

          //Concatenando código do produto
          if (dmApp.BCH_CONC_CODIGO_PRODUTO = 'S') then
            Auxtxt  := Copy(qryProdutosCODIGO.AsString,1,15)+'-'+Copy(qryProdutosNOME.AsString,1,26)
          else
            Auxtxt  := Copy(qryProdutosNOME.AsString,1,40);
            
          {Aux   := qryProdutosBCH_CODIGO.AsString +#9 + qryProdutosPRC_VENDA.AsString +#9 +'1'+#9 + qryProdutosNOME.AsString +#9 +Auxtxt +#9 +Aux2+#9 + '17'+#9 +'0'+#9 +'0'+#9 +'0'+#9 +'S'+#9 +'0'+#9 +'0'+#9 +'0'+#9 +'0'+#9 +'N'+#9 +'S'+#9 +'0'+#9 +'0'+#9 +'N'+#9 +'1' ;//20
          Aux   := Aux +#9 +'0'+#9 +'0'+#9 +'0'+#9 +'0'+#9 +'0'+#9 +'0'+#9 +'N'+#9 +'0'+#9 +'UN'+#9 +qryProdutosFORNECEDOR.AsString+#9 +'S'+#9 +'N'+#9 +'1'+#9 +'S'+#9 +'1'+#9 +'0'+#9 +'0'+#9 +'N'+#9 +'1'+#9 +'0'+#9 +'0'+#9 +'N'+#9 +'0'+#9 +'N'+#9 +'S'+#9 +'S'+#9 +'S'+#9 +'0'+#9; //29
          Aux   := Aux +#9 +'0'+#9 +'0'+#9;//3 ,53 }
          Aux :=   qryProdutosBCH_CODIGO.AsString +#9 + qryProdutosPRC_VENDA.AsString +#9 + '0' +#9 +Auxtxt +#9; //4
          Aux := Aux + Auxtxt +#9
           +'00' +#9 +  //CTF
           '17'+#9 +   //Alíquota de ICMS
           'S'+#9 +    // ALIQICMRED
           'S'+#9 +    //ALIQICMSUB
           'S'+#9 +    //TIPOPROD
           'S'+#9 +    // FLNRSERIE
           '0'+#9 +    // NIVELPROD1
           'N'+#9 +    // FLCORINGA
           'N'+#9 +    // FLCONTROLADO
           '0'+#9 +    //TIPOPROCESSO
           'N'+#9;//12 FLSERVICO
          Aux := AUx  + 'S'+#9 //  FLPROMOCAO
          +'0'+#9 +            // CMUP
          'N'+#9 +             // FOTO
          '0'+#9 +             // QTEMBMOVIM
          'N'+#9 +             //  FLTERCEIRO
          'S'+#9 +             //   FLCOMISSAO
          '0'+#9 +             //  COMISSAO
          '0'+#9 +             //  PMARGINF
          '0'+#9 +             //  CODEMBAL
          'N'+#9 +             //  FLSELFCOLOR
          '0'+#9;//  PDESCPROM
          Aux := Aux  + '0'+#9 // 12 DESCAUTOITEM
            + '0'+#9          //   CODFORNE
            + 'S'+#9 +          //  COR
           'N'+#9+             //    ESPECIFICACAO
           'S'+#9+             //  UNIDMAIOR
           'S'+#9+             //  UNIDMENOR
           '1'+#9+             //  QTEMB
           '0'+#9+             //  CODPRODDF
           '0'+#9+             //  CODFAM
           'N'+#9+             //  FLMONTAGEM
           '1'+#9+             // QTEMBMOVIMVENDA
           '0'+#9+             //  CODPRODVASILHAME
           'N'+#9+             //  FLREDUDIFER
           'N'+#9;//CODOCORRPRECO  13  CODOCORRPRECO
          Aux := AUx  + '0'+#9+//  CONVERSAO
          'N'+#9+              //  FLLOTEVENCTO
          'S'+#9+              //  FLREPI
          'S'+#9+              //  FLESTDIR
          'S'+#9+              //  FLNRSIMCARD
          '0'+#9+              // PRECOREF
          '0'+#9+              //  FLCARTAOESPECIAL
          '0'+#9+              //   FLCUPOMEXTRA
          '0'+#9+              //  FLVALEPRESENTE
          '0'+#9+              //  FLPRODDEFRESALIQIPIECF
          '0'+#9+              //  DTVALINIC
          '0';{//12 53              //   DTVALFIM
          '0'+#9+              //  FLMARCAPROPRIA
          '0'+#9+              //   LOGICO
          '0';      //15           RESERVA}
          Writeln(f, aux) ;
          COunt := Count +1;
          qryProdutos.Next;
      end;

      CloseFile(f);

  except
      Application.MessageBox('Problema ao gerar o arquivo!','Aviso',mb_ok+mb_iconerror);
  end;

  try
        AssignFile( f, DmApp.BCH_PATH+'\OFF_CODIGOS_BARRA.pdv');

        //Criando o txt
        if FileExists( DmApp.BCH_PATH+'\OFF_CODIGOS_BARRA.pdv') then
           DeleteFile( DmApp.BCH_PATH+'\OFF_CODIGOS_BARRA.pdv');


        Rewrite(F, DmApp.BCH_PATH+'\OFF_CODIGOS_BARRA.pdv');

        Append(f);

        qryProdutos.Close;
        qryProdutos.Open;
        qryProdutos.First;
        while not qryProdutos.Eof do
        begin
            Aux   := qryProdutosCODIGO.AsString +#9 + '1' +#9+ qryProdutosBCH_CODIGO.AsString +#9 + '1' +#9 + '1' +#9 + '1'+#9 +'1';
            Writeln(f, aux) ;
            qryProdutos.Next;
        end;

        CloseFile(f);

    except
        Application.MessageBox('Problema ao gerar o arquivo!','Aviso',mb_ok+mb_iconerror);
    end;

  try
      AssignFile( f, DmApp.BCH_PATH+'\OFF_VENDEDORES.PDV');

      //Criando o txt
      if FileExists( DmApp.BCH_PATH+'\OFF_VENDEDORES.PDV') then
         DeleteFile( DmApp.BCH_PATH+'\OFF_VENDEDORES.PDV');


      Rewrite(F, DmApp.BCH_PATH+'\OFF_VENDEDORES.PDV');

      Append(f);

      qryVendedor.Close;
      qryVendedor.Open;
      qryVendedor.First;
      Aux  := 'CODFIL;INT	CODVENDR;INT	NOME;STR(30)';
      Writeln(f, aux);
      while not qryVendedor.Eof do
      begin

          Aux   := qryVendedorBCH_FILIAL.AsString+#9+qryVendedorCODIGO.AsString+#9+qryVendedorNOME.AsString;
          Writeln(f, aux) ;
          qryVendedor.Next;
      end;

      CloseFile(f);

  except
      Application.MessageBox('Problema ao gerar o arquivo!','Aviso',mb_ok+mb_iconerror);
  end;

  Application.MessageBox('Arquivo gerado com sucesso!','Aviso',mb_ok+mb_iconinformation);

end;

procedure TFrmExportaBemacash.PRODUTOSBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
     (DataSet as TIBQuery).Prepare;
end;

procedure TFrmExportaBemacash.RzBitBtn2Click(Sender: TObject);
begin
     Close ;
end;

procedure TFrmExportaBemacash.IniKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmExportaBemacash.FimKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;



procedure TFrmExportaBemacash.BtnCriarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmExportaBemacash.RzBitBtn2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmExportaBemacash.FormShow(Sender: TObject);
begin
   edtDiretorio.Text := DmApp.BCH_PATH;
end;

end.
