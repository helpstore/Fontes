unit Application_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Db, IBQuery, IBCustomDataSet, IBEvents, IBDatabase, Dialogs,
  IniFiles, dxBar, IBStoredProc,IBSQL, Registry, OnGuard,OgUtil,
  ComObj,   FileCtrl, dxmdaset, IBDatabaseInfo, Variants,
  IdMessage,  ACBrNFe, ACBrNFeDANFEClass, ACBrNFeDANFERave,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdBaseComponent,
  IdComponent, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, pcnconversao,
  RpDefine, RpRave,  ppReport, ppEndUsr, ACBrBase, ACBrExtenso, ExtCtrls
  ,ppSMTPIndy9 ,ppSMTPIndy, ppParameter, ppSMTPCustom, cxFilterControl, cxDBFilterControl,cxGridExportLink, cxGridDBBandedTableView,cxGrid,
  madExceptVcl, ACBrBoleto, ACBrBoletoFCQuickFr, ACBrBoletoFCFortesFr,  untCadPadrao;

type
  TDmApp = class(TDataModule)
    Database: TIBDatabase;
    Transaction: TIBTransaction;
    TransactionProc: TIBTransaction;
    Eventos: TIBEvents;
    Tabelas_Sistema: TIBDataSet;
    Tabelas_SistemaNOME: TIBStringField;
    Tabelas_SistemaTABELA: TIBStringField;
    Tabelas_Campos: TIBDataSet;
    DsTabela: TDataSource;
    Perfil_Computador: TIBDataSet;
    Perfil_ComputadorCNPJ: TIBStringField;
    Perfil_ComputadorCOMPUTADOR: TIBStringField;
    Perfil_ComputadorFOLHA_VISTA_CONDICIONAL: TIBStringField;
    Perfil_ComputadorFOLHA_PRAZO_CONDICIONAL: TIBStringField;
    Perfil_ComputadorFOLHA_VISTA_PEDIDO: TIBStringField;
    Perfil_ComputadorFOLHA_PRAZO_PEDIDO: TIBStringField;
    Perfil_ComputadorTIPO_IMP_CONDICIONAL: TIBStringField;
    Perfil_ComputadorTIPO_IMP_PEDIDO: TIBStringField;
    Perfil_ComputadorPORTA_IMP_CONDICIONAL_VISTA: TIBStringField;
    Perfil_ComputadorPORTA_IMP_PEDIDO_VISTA: TIBStringField;
    Perfil_ComputadorPORTA_IMP_CONDICIONAL_PRAZO: TIBStringField;
    Perfil_ComputadorPORTA_IMP_PEDIDO_PRAZO: TIBStringField;
    Perfil_ComputadorVIAS_CONDICIONAL_VISTA: TIntegerField;
    Perfil_ComputadorVIAS_CONDICIONAL_PRAZO: TIntegerField;
    Perfil_ComputadorVIAS_PEDIDO_VISTA: TIntegerField;
    Perfil_ComputadorVIAS_PEDIDO_PRAZO: TIntegerField;
    Perfil_ComputadorIMPRIME_PROMISSORIA: TIBStringField;
    Perfil_ComputadorIMP_FORCADO_PROD_PED: TIBStringField;
    Perfil_ComputadorVIAS_RECIBO: TIntegerField;
    Perfil_ComputadorPORTA_RECIBO: TIBStringField;
    Perfil_ComputadorFOLHA_PENDENCIAS: TIBStringField;
    Perfil_ComputadorPORTA_PENDENCIAS: TIBStringField;
    Sis_Menu: TIBDataSet;
    Sis_MenuCNPJ: TIBStringField;
    Sis_MenuCATEGORIA: TIBStringField;
    Sis_MenuNOME: TIBStringField;
    Sis_MenuCODIGO: TIntegerField;
    Sis_MenuCOMPUTADOR: TIBStringField;
    Sis_Menu_Itens: TIBDataSet;
    DsMenu: TDataSource;
    Sis_Menu_ItensCATEGORIA: TIBStringField;
    Sis_Menu_ItensCNPJ: TIBStringField;
    Sis_Menu_ItensCODIGO: TIntegerField;
    Sis_Menu_ItensCOMPUTADOR: TIBStringField;
    Sis_Menu_ItensNOME: TIBStringField;
    Sis_Menu_ItensCAPTION: TIBStringField;
    Sis_Menu_ItensVISIVEL: TIBStringField;
    Perfil_ComputadorIMP_NEGRITO_EMPRESA_36: TIBStringField;
    Perfil_ComputadorPDV_T01: TIBStringField;
    Perfil_ComputadorPDV_T02: TIBStringField;
    Perfil_ComputadorPDV_T03: TIBStringField;
    Perfil_ComputadorPDV_T04: TIBStringField;
    Perfil_ComputadorPDV_T05: TIBStringField;
    Perfil_ComputadorPDV_FF: TIBStringField;
    Perfil_ComputadorPDV_II: TIBStringField;
    Configuracoes: TIBDataSet;
    Perfil_ComputadorTIPO_IMP_PDV: TIBStringField;
    Perfil_ComputadorPORTA_PDV: TIBStringField;
    Perfil_ComputadorEMITE_COMPROVANTE_PDV: TIBStringField;
    Perfil_ComputadorPDV_T06: TIBStringField;
    Perfil_ComputadorTIPO_FOLHA_CADASTROS: TIBStringField;
    Perfil_ComputadorPORTALEITORCHEQUE: TIBStringField;
    Perfil_ComputadorLEITOR_BITSPORSEGUNDO: TIBStringField;
    Perfil_ComputadorLEITOR_BITSDADOS: TIBStringField;
    Perfil_ComputadorLEITOR_PARIDADE: TIBStringField;
    Perfil_ComputadorLEITOR_BITSPARADA: TIBStringField;
    Perfil_ComputadorLEITOR_FLUXO: TIBStringField;
    Perfil_ComputadorFOLHA_VISTA_TROCA: TIBStringField;
    txnCritica: TIBTransaction;
    qCaixaFechado: TIBQuery;
    qCaixaFechadoFECHADO: TIBStringField;
    Perfil_ComputadorPDV_EMITE_COMPROVANTE_NF: TIBStringField;
    Perfil_ComputadorPDV_CONFIRMA_IMPRESSAO: TIBStringField;
    Perfil_ComputadorPDV_AGENTE: TIBStringField;

    Perfil_ComputadorPDV_CONTRA_VALE: TIBStringField;
    Fechamento_Diario: TIBStoredProc;
    ConfiguracoesCNPJ: TIBStringField;
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
    qryGerarTitulos: TIBQuery;
    dsTitulos: TDataSource;
    updTitulos: TIBSQL;
    Perfil_ComputadorAUTENTICAR: TIBStringField;
    Perfil_ComputadorPDV_LINHA_RECIBO: TIBStringField;
    BaixarBoletos: TIBStoredProc;
    ConfiguracoesRESUMO_MOEDAS: TIntegerField;
    ConfiguracoesIMPRIME_CUPOM_NOMINAL: TIBStringField;
    ConfiguracoesIMP_NOME_PROPRIEDADE: TIBStringField;
    Perfil_ComputadorPDV_CONFIRMA_IMPRESSAO_VISTA: TIBStringField;
    ConfiguracoesPDV_VER_ULTIMAS_VENDAS: TIBStringField;
    TransactionAux: TIBTransaction;
    Perfil_ComputadorBAL_BITSPORSEGUNDO: TIBStringField;
    Perfil_ComputadorBAL_BITSDADOS: TIBStringField;
    Perfil_ComputadorBAL_PARIDADE: TIBStringField;
    Perfil_ComputadorBAL_BITSPARADA: TIBStringField;
    Perfil_ComputadorBAL_FLUXO: TIBStringField;
    Perfil_ComputadorPORTABALANCA: TIBStringField;
    Perfil_ComputadorLET_BITSPORSEGUNDO: TIBStringField;
    Perfil_ComputadorLET_BITSDADOS: TIBStringField;
    Perfil_ComputadorLET_PARIDADE: TIBStringField;
    Perfil_ComputadorLET_BITSPARADA: TIBStringField;
    Perfil_ComputadorLET_FLUXO: TIBStringField;
    Perfil_ComputadorPORTALEITOR: TIBStringField;
    OgDaysCode: TOgDaysCode;
    qryGerarTitulosTotal: TFloatField;
    qryGerarTitulosJuros_Calculadors: TFloatField;
    qryGerarTitulosSAC_NOME: TIBStringField;
    qryGerarTitulosSAC_RUA: TIBStringField;
    qryGerarTitulosBLT_CONVENIO: TIBStringField;
    qryGerarTitulosSAC_COMPLEMENTO: TIBStringField;
    qryGerarTitulosSAC_NUM: TIBStringField;
    qryGerarTitulosSAC_EMAIL: TIBStringField;
    qryGerarTitulosSAC_CEP: TIBStringField;
    qryGerarTitulosSAC_CIDADE: TIBStringField;
    qryGerarTitulosSAC_UF: TIBStringField;
    qryGerarTitulosSAC_BAIRRO: TIBStringField;
    qryGerarTitulosSAC_PESSOA: TIBStringField;
    qryGerarTitulosSAC_CPF_CGC: TIBStringField;
    qryGerarTitulosBLT_AGENCIA: TIBStringField;
    qryGerarTitulosCED_CODIGOCED: TIntegerField;
    qryGerarTitulosCED_DIG_CODIGOCED: TIBStringField;
    qryGerarTitulosBLT_CARTEIRA: TIBStringField;
    qryGerarTitulosBLT_INSTRUCAO: TMemoField;
    qryGerarTitulosBLT_LAYOUT: TIntegerField;
    qryGerarTitulosBLT_DIG_CONTA: TIBStringField;
    qryGerarTitulosBLT_DIG_AGENCIA: TIBStringField;
    qryGerarTitulosBLT_CONTA: TIBStringField;
    qryGerarTitulosBLT_LOCAL_PAGTO: TIBStringField;
    qryGerarTitulosBLT_BANCO: TIntegerField;
    qryGerarTitulosBLT_ACEITE_DOCTO: TIBStringField;
    qryGerarTitulosBLT_DIAS_ABATIMENTO: TIntegerField;
    qryGerarTitulosBLT_DIAS_DESCONTO: TIntegerField;
    qryGerarTitulosBLT_DIAS_MORA_JUROS: TIntegerField;
    qryGerarTitulosBLT_DIAS_PROTESTO: TIntegerField;
    qryGerarTitulosBLT_PCT_ABATIMENTO: TIBBCDField;
    qryGerarTitulosBLT_PCT_DESCONTO: TIBBCDField;
    qryGerarTitulosBLT_VLR_DESPESA: TIBBCDField;
    qryGerarTitulosBLT_VLR_IOF: TIBBCDField;
    qryGerarTitulosBLT_VLR_MORA_JUROS: TIBBCDField;
    qryGerarTitulosBLT_VLR_OUTRAS_DESP: TIBBCDField;
    qryGerarTitulosBLT_VALOR: TIBBCDField;
    qryGerarTitulosBLT_DT_LANCTO: TDateField;
    qryGerarTitulosBLT_DT_VENCTO: TDateField;
    qryGerarTitulosBLT_NOME_BANCO: TIBStringField;
    qryGerarTitulosNOSSO_NUMERO: TLargeintField;
    qryGerarTitulosREC_DESCONTO: TIBBCDField;
    qryGerarTitulosREC_VLR_PARCIAL: TIBBCDField;
    qryGerarTitulosREC_DATA_ULT_BAIXA: TDateField;
    qryGerarTitulosREC_DESCONTOS: TFloatField;
    AtGradesNum: TIBDataSet;
    updAtGradesNum: TIBSQL;
    AtGradesNumGRADE: TIBStringField;
    AtGradesNumCNPJ: TIBStringField;
    AtGradesNumPRODUTO: TIBStringField;
    AtGradesNumNUMERO: TIBStringField;
    qryGerarTitulosBLT_MULTA: TIBBCDField;
    mtbTitulos: TdxMemData;
    mtbTitulosSAC_NOME : TStringField;
    mtbTitulosSAC_RUA : TStringField;
    mtbTitulosBLT_CONVENIO: TStringField;
    mtbTitulosSAC_COMPLEMENTO: TStringField;
    mtbTitulosSAC_NUM: TStringField;
    mtbTitulosSAC_EMAIL: TStringField;
    mtbTitulosSAC_CEP: TStringField;
    mtbTitulosSAC_UF: TStringField;
    mtbTitulosSAC_BAIRRO: TStringField;
    mtbTitulosSAC_PESSOA: TStringField;
    mtbTitulosCED_CODIGOCED: TIntegerField;
    mtbTitulosCED_DIG_CODIGOCED: TStringField;
    mtbTitulosBLT_CARTEIRA: TStringField;
    mtbTitulosBLT_INSTRUCAO: TMemoField;
    mtbTitulosBLT_DIG_CONTA: TStringField;
    mtbTitulosBLT_DIG_AGENCIA: TStringField;
    mtbTitulosBLT_CONTA: TStringField;
    mtbTitulosBLT_LOCAL_PAGTO: TStringField;
    mtbTitulosBLT_DIAS_ABATIMENTO: TIntegerField;
    mtbTitulosBLT_DIAS_DESCONTO: TIntegerField;
    mtbTitulosBLT_DIAS_MORA_JUROS: TIntegerField;
    mtbTitulosBLT_MULTA: TBCDField;
    mtbTitulosBLT_PCT_DESCONTO: TBCDField;
    mtbTitulosBLT_VLR_DESPESA: TBCDField;
    mtbTitulosBLT_VALOR: TBCDField;
    mtbTitulosBLT_DT_VENCTO: TDateField;
    mtbTitulosBLT_NOME_BANCO: TStringField;
    mtbTitulosREC_DESCONTO: TBCDField;
    mtbTitulosREC_DATA_ULT_BAIXA: TDateField;
    Geral: TIBQuery;
    Sis_Releases2: TIBQuery;
    Sis_Releases2CODIGO: TIntegerField;
    Sis_Releases2TICKET: TIntegerField;
    Sis_Releases2CLIENTE: TIBStringField;
    Sis_Releases2RELEASE: TIBStringField;
    Sis_Releases2TIPO: TSmallintField;
    Sis_Releases2COD_PAI: TSmallintField;
    Sis_Releases: TIBDataSet;
    Sis_ReleasesCODIGO: TIntegerField;
    Sis_ReleasesTICKET: TIntegerField;
    Sis_ReleasesCLIENTE: TIBStringField;
    Sis_ReleasesRELEASE: TIBStringField;
    Sis_ReleasesTIPO: TSmallintField;
    Sis_ReleasesCOD_PAI: TSmallintField;
    Sis_ReleasesRESUMO: TIBStringField;
    Sis_ReleasesCNPJ: TIBStringField;
    Sis_Releases2RESUMO: TIBStringField;
    Sis_Releases2CNPJ: TIBStringField;
    Sis_ReleasesCONT: TIntegerField;
    Sis_ReleasesDESCRICAO: TIBStringField;
    Sis_Releases2DESCRICAO: TIBStringField;
    LOG_FAT_VENDAS: TIBStoredProc;
    SSLSocket: TIdSSLIOHandlerSocket;
    IdSMTP: TIdSMTP;
    IdMessage: TIdMessage;
    RvProject1: TRvProject;
    ConfiguracoesOS_CONFIG_CAMPOS: TIBStringField;
    ConfiguracoesOFC_CONTATO_POR_CLIENTE: TIBStringField;
    VerificaLimite: TIBQuery;
    VerificaLimiteVALIDO: TIBStringField;
    VerificaLimiteLIMITE: TIBBCDField;
    VerificaLimiteTOTAL_CHEQUES: TIBBCDField;
    VerificaLimiteTOTAL_CHEQUES_N_CONCILIADO: TIBBCDField;
    VerificaLimiteTOTAL_CHEQUES_N_REAP: TIBBCDField;
    VerificaLimiteTOTAL_RECEBER: TIBBCDField;
    VerificaLimiteTOTAL_FATURAS: TIBBCDField;
    VerificaLimiteMOTIVO: TIntegerField;
    BCH_PRODUTO: TIBQuery;
    BCH_PRODUTOCNPJ: TIBStringField;
    BCH_PRODUTOCODIGO: TIBStringField;
    BCH_PRODUTOCODIGO_2: TIBStringField;
    BCH_PRODUTOCNPJ_AGRUP: TIBStringField;
    BCH_PRODUTOCOD_AGRUP: TIBStringField;
    BCH_PRODUTONOME: TIBStringField;
    BCH_PRODUTOMARCA: TIntegerField;
    BCH_PRODUTONOME_MARCA: TIBStringField;
    BCH_PRODUTOGRUPO: TIntegerField;
    BCH_PRODUTOSUBGRUPO: TIntegerField;
    BCH_PRODUTOREDUCAO: TIntegerField;
    BCH_PRODUTOUNIDADE: TIBStringField;
    BCH_PRODUTOUND_PRIMARIA: TIBStringField;
    BCH_PRODUTOCTE: TSmallintField;
    BCH_PRODUTOCTIE: TSmallintField;
    BCH_PRODUTOQTDADE_1: TFloatField;
    BCH_PRODUTOQTDADE_2: TFloatField;
    BCH_PRODUTOLOCALIZACAO_1: TIBStringField;
    BCH_PRODUTOLOCALIZACAO_2: TIBStringField;
    BCH_PRODUTOLOCALIZACAO_3: TIBStringField;
    BCH_PRODUTONEG_QTDADE_2: TIBStringField;
    BCH_PRODUTOQTDADE_MIN: TIntegerField;
    BCH_PRODUTOQTDADE_MAX: TIntegerField;
    BCH_PRODUTOCOMPLEMENTO_NF: TIBStringField;
    BCH_PRODUTODT_ULT_COMPRA: TDateTimeField;
    BCH_PRODUTOQT_ULT_COMPRA: TIntegerField;
    BCH_PRODUTODT_ULT_VENDA: TDateTimeField;
    BCH_PRODUTOMARGEM_BRUTA: TFloatField;
    BCH_PRODUTOPRC_REPOS: TFloatField;
    BCH_PRODUTOPRC_CUSTO_ANT: TFloatField;
    BCH_PRODUTOPRC_CUSTO_MED: TFloatField;
    BCH_PRODUTOPRC_VENDA: TFloatField;
    BCH_PRODUTOPRC_VENDA_ANT: TFloatField;
    BCH_PRODUTOPRC_VENDA_MED: TFloatField;
    BCH_PRODUTOALIQUOTA_ECF: TIBStringField;
    BCH_PRODUTOORIGEM: TSmallintField;
    BCH_PRODUTOPESO_LIQ: TFloatField;
    BCH_PRODUTOPERC_FRETE: TFloatField;
    BCH_PRODUTOIPI: TFloatField;
    BCH_PRODUTOVOLUME: TFloatField;
    BCH_PRODUTOPROD_PESAVEL: TIBStringField;
    BCH_PRODUTOETIQUETA_ENT: TIBStringField;
    BCH_PRODUTOATIVO: TIBStringField;
    BCH_PRODUTOULTIMO_FORNECEDOR: TIntegerField;
    BCH_PRODUTOFORNECEDOR: TIntegerField;
    BCH_PRODUTOSUBUNIDADE: TIntegerField;
    BCH_PRODUTOPRC_CUSTO_CODIF: TIBStringField;
    BCH_PRODUTOCODIGO_INTERNO: TIntegerField;
    BCH_PRODUTODT_ULT_ATU_PRECO: TDateTimeField;
    BCH_PRODUTOCUSTO_AQUISICAO: TFloatField;
    BCH_PRODUTOVENDE_FRACIONADO: TIBStringField;
    BCH_PRODUTOQNTDE_EXPOSTA: TFloatField;
    BCH_PRODUTOPOSSUI_LOTE: TIBStringField;
    BCH_PRODUTOQNTDE_MAXIMA_VENDA: TFloatField;
    BCH_PRODUTOPIS: TIBStringField;
    BCH_PRODUTOCOFINS: TIBStringField;
    BCH_PRODUTOCOM_VENDA_VLR: TFloatField;
    BCH_PRODUTOCOM_VENDA_PCT: TFloatField;
    BCH_PRODUTOPARTICIP_LUCRO: TFloatField;
    BCH_PRODUTONAO_COBR_JUR_ATE: TIntegerField;
    BCH_PRODUTOPREVISAO_ENTREGA: TDateTimeField;
    BCH_PRODUTOQNTDE_PEDIDA: TFloatField;
    BCH_PRODUTOATUALIZA_ARQ_EXTERNO: TIBStringField;
    BCH_PRODUTOSERVICO: TIBStringField;
    BCH_PRODUTOVALIDADE: TIntegerField;
    BCH_PRODUTOCUSTO_INDEXADO: TFloatField;
    BCH_PRODUTOCOMPLEMENTO: TIBStringField;
    BCH_PRODUTOATUALIZAR: TIBStringField;
    BCH_PRODUTOEST_MIN: TFloatField;
    BCH_PRODUTOEST_MAX: TFloatField;
    BCH_PRODUTOMODELO: TIntegerField;
    BCH_PRODUTONOME_MODELO: TIBStringField;
    BCH_PRODUTOSERIE: TIBStringField;
    BCH_PRODUTODEBITA_ICMS: TIBStringField;
    BCH_PRODUTOSECAO: TIntegerField;
    BCH_PRODUTONFE_EXP: TIBStringField;
    BCH_PRODUTOSELECIONADO: TIBStringField;
    BCH_PRODUTOQNTDE_MINIMA_VENDA: TFloatField;
    BCH_PRODUTOVALIDA_MULT_QTDE_MIN: TIBStringField;
    BCH_PRODUTOFATOR_CONVERSAO: TFloatField;
    BCH_PRODUTOSINCRONIZA_FILIAIS: TIBStringField;
    BCH_PRODUTOQNTDE_PDR_CARGA: TFloatField;
    BCH_PRODUTOUND_CARREGAMENTO: TIBStringField;
    BCH_PRODUTOTRIB_ALIQ_EST: TFloatField;
    BCH_PRODUTOTRIB_ALIQ_INT: TFloatField;
    BCH_PRODUTOTRIB_MODALIDADE: TIBStringField;
    BCH_PRODUTOBCH_CODIGO: TIntegerField;
    BCH_PRODUTOCODIGO_NCM: TIBStringField;
    BCH_PRODUTOAPLICACAO: TMemoField;
    BCH_PRODUTOIMG_2: TBlobField;
    BCH_PRODUTOIMG_1: TBlobField;
    BCH_PRODUTOIMG_3: TBlobField;
    BCH_PRODUTOIMG_4: TBlobField;
    BCH_PRODUTOCODIGO_FABRICANTE: TIBStringField;
    BCH_PRODUTOCOR: TIntegerField;
    BCH_PRODUTOMATERIAL: TIntegerField;
    BCH_PRODUTOTRIB_PIS: TIBStringField;
    BCH_PRODUTOTRIB_COFINS: TIBStringField;
    BCH_PRODUTOTRIB_IPI: TIBStringField;
    ACBrNFe: TACBrNFe;
    ACBrNFeDANFERave: TACBrNFeDANFERave;
    Extenso: TACBrExtenso;
    TimerConsultaEstoque: TTimer;
    EST_EMAIL_POSICAO_ESTOQUE: TIBDataSet;
    QryContCotacoes: TIBQuery;
    Perfil_ComputadorEST_MIN_ENVIA_AUTOMATICO: TIBStringField;
    QryContCotacoesCOUNT: TIntegerField;
    EST_EMAIL_POSICAO_ESTOQUECNPJ: TIBStringField;
    EST_EMAIL_POSICAO_ESTOQUECODIGO: TIntegerField;
    EST_EMAIL_POSICAO_ESTOQUEPRODUTO: TIBStringField;
    EST_EMAIL_POSICAO_ESTOQUEQTDE: TIBBCDField;
    EST_EMAIL_POSICAO_ESTOQUEMINIMO: TIBBCDField;
    EST_EMAIL_POSICAO_ESTOQUEMAXIMO: TFloatField;
    EST_EMAIL_POSICAO_ESTOQUESUJESTAO: TIBBCDField;
    EST_EMAIL_POSICAO_ESTOQUEDATA: TDateField;
    EST_EMAIL_POSICAO_ESTOQUESTATUS: TIBStringField;
    SaveDialog: TSaveDialog;
    MadExceptionHandler1: TMadExceptionHandler;
    ACBrBoleto: TACBrBoleto;
    qryGerarTitulosREC_CODIGO: TIntegerField;
    qryGerarTitulosCED_EMAIL: TIBStringField;
    qryGerarTitulosCED_NOME: TIBStringField;
    qryGerarTitulosCED_RUA: TIBStringField;
    qryGerarTitulosCED_NUM: TIBStringField;
    qryGerarTitulosCED_CEP: TIBStringField;
    qryGerarTitulosCED_CIDADE: TIBStringField;
    qryGerarTitulosCED_UF: TIBStringField;
    qryGerarTitulosCED_BAIRRO: TIBStringField;
    qryGerarTitulosCED_CPF_CGC: TIBStringField;
    qryGerarTitulosBLT_MODALIDADE: TIBStringField;
    ACBrBoletoFCFortes: TACBrBoletoFCFortes;
    qryGerarTitulosBLT_LAYOUT_IMPRESSAO: TIBStringField;
    qryGerarTitulosBLT_NUM_COPIAS: TIntegerField;
    Perfil_ComputadorEXIBE_MAPA: TIBStringField;
    edtPessoas: TIBDataSet;
    edtPessoasCNPJ: TIBStringField;
    edtPessoasCODIGO: TIntegerField;
    edtPessoasNOME_RAZAO: TIBStringField;
    edtPessoasFANTASIA: TIBStringField;
    edtPessoasATIVIDADE: TIntegerField;
    edtPessoasENDERECO: TIntegerField;
    edtPessoasNUMERO: TIBStringField;
    edtPessoasCOMPLEMENTO: TIBStringField;
    edtPessoasBAIRRO: TIntegerField;
    edtPessoasCIDADE: TIntegerField;
    edtPessoasUF: TIBStringField;
    edtPessoasCEP: TIBStringField;
    edtPessoasFONE: TIBStringField;
    edtPessoasFAX: TIBStringField;
    edtPessoasCELULAR: TIBStringField;
    edtPessoasPESSOA: TIBStringField;
    edtPessoasCPF_CGC: TIBStringField;
    edtPessoasRG_IE: TIBStringField;
    edtPessoasCONTATO: TIBStringField;
    edtPessoasDT_NASCIMENTO: TDateTimeField;
    edtPessoasDT_CADASTRO: TDateTimeField;
    edtPessoasEMAIL: TIBStringField;
    edtPessoasOBS: TBlobField;
    edtPessoasINSC_MUNIC: TIBStringField;
    edtPessoasCONVENIO: TIntegerField;
    edtPessoasEMISSOR: TIBStringField;
    edtPessoasCONTATO1: TIBStringField;
    edtPessoasCONTATO2: TIBStringField;
    edtPessoasCONTATO3: TIBStringField;
    edtPessoasORDEM: TIntegerField;
    edtPessoasREGIAO: TIntegerField;
    edtPessoasNFE_EXP: TIBStringField;
    edtPessoasSELECIONADO: TIBStringField;
    edtPessoasCODIGO_2: TIntegerField;
    edtPessoasFJ: TIBStringField;
    edtPessoasMAP_LAT: TIBStringField;
    edtPessoasMAP_LONG: TIBStringField;
    edtUF: TIBDataSet;
    edtUFCNPJ: TIBStringField;
    edtUFSIGLA: TIBStringField;
    edtUFNOME: TIBStringField;
    edtUFMASCARA_IE: TIBStringField;
    edtUFCOD_IBGE: TIBStringField;
    edtCidade: TIBDataSet;
    edtCidadeCNPJ: TIBStringField;
    edtCidadeCODIGO: TIntegerField;
    edtCidadeNOME: TIBStringField;
    edtCidadeUF: TIBStringField;
    edtCidadeCOD_IBGE: TIBStringField;
    edtCidadeCOD_IAGRO: TIntegerField;
    edtBairro: TIBDataSet;
    edtBairroCNPJ: TIBStringField;
    edtBairroCODIGO: TIntegerField;
    edtBairroNOME: TIBStringField;
    edtLogradouro: TIBDataSet;
    edtLogradouroCNPJ: TIBStringField;
    edtLogradouroCODIGO: TIntegerField;
    edtLogradouroNOME: TIBStringField;
    edtFornecedor: TIBDataSet;
    edtCliente: TIBDataSet;
    edtFornecedorCNPJ: TIBStringField;
    edtFornecedorPESSOA_FJ: TIntegerField;
    edtFornecedorVENDEDOR: TIBStringField;
    edtFornecedorFONE_VEN: TIBStringField;
    edtFornecedorFINANCEIRO: TIBStringField;
    edtFornecedorFONE_FIN: TIBStringField;
    edtFornecedorREPRESENTANTE: TIBStringField;
    edtFornecedorFONE_REP: TIBStringField;
    edtFornecedorBANCO_C1: TIBStringField;
    edtFornecedorAGENCIA_C1: TIBStringField;
    edtFornecedorCC_C1: TIBStringField;
    edtFornecedorBANCO_C2: TIBStringField;
    edtFornecedorAGENCIA_C2: TIBStringField;
    edtFornecedorCC_C2: TIBStringField;
    edtFornecedorFORMA_PAGTO: TIntegerField;
    edtFornecedorCONTABILIDADE: TIntegerField;
    edtFornecedorSINCRONIZA_FILIAIS: TIBStringField;
    edtProdutos: TIBDataSet;
    edtProdutosCNPJ: TIBStringField;
    edtProdutosCODIGO: TIBStringField;
    edtProdutosCODIGO_2: TIBStringField;
    edtProdutosCNPJ_AGRUP: TIBStringField;
    edtProdutosCOD_AGRUP: TIBStringField;
    edtProdutosNOME: TIBStringField;
    edtProdutosMARCA: TIntegerField;
    edtProdutosNOME_MARCA: TIBStringField;
    edtProdutosGRUPO: TIntegerField;
    edtProdutosSUBGRUPO: TIntegerField;
    edtProdutosREDUCAO: TIntegerField;
    edtProdutosUNIDADE: TIBStringField;
    edtProdutosUND_PRIMARIA: TIBStringField;
    edtProdutosCTE: TSmallintField;
    edtProdutosCTIE: TSmallintField;
    edtProdutosQTDADE_1: TFloatField;
    edtProdutosQTDADE_2: TFloatField;
    edtProdutosLOCALIZACAO_1: TIBStringField;
    edtProdutosLOCALIZACAO_2: TIBStringField;
    edtProdutosLOCALIZACAO_3: TIBStringField;
    edtProdutosNEG_QTDADE_2: TIBStringField;
    edtProdutosQTDADE_MIN: TIntegerField;
    edtProdutosQTDADE_MAX: TIntegerField;
    edtProdutosCOMPLEMENTO_NF: TIBStringField;
    edtProdutosDT_ULT_COMPRA: TDateTimeField;
    edtProdutosQT_ULT_COMPRA: TIntegerField;
    edtProdutosDT_ULT_VENDA: TDateTimeField;
    edtProdutosMARGEM_BRUTA: TFloatField;
    edtProdutosPRC_REPOS: TFloatField;
    edtProdutosPRC_CUSTO_ANT: TFloatField;
    edtProdutosPRC_CUSTO_MED: TFloatField;
    edtProdutosPRC_VENDA: TFloatField;
    edtProdutosPRC_VENDA_ANT: TFloatField;
    edtProdutosPRC_VENDA_MED: TFloatField;
    edtProdutosALIQUOTA_ECF: TIBStringField;
    edtProdutosORIGEM: TSmallintField;
    edtProdutosPESO_LIQ: TFloatField;
    edtProdutosPERC_FRETE: TFloatField;
    edtProdutosIPI: TFloatField;
    edtProdutosVOLUME: TFloatField;
    edtProdutosPROD_PESAVEL: TIBStringField;
    edtProdutosETIQUETA_ENT: TIBStringField;
    edtProdutosATIVO: TIBStringField;
    edtProdutosULTIMO_FORNECEDOR: TIntegerField;
    edtProdutosFORNECEDOR: TIntegerField;
    edtProdutosSUBUNIDADE: TIntegerField;
    edtProdutosPRC_CUSTO_CODIF: TIBStringField;
    edtProdutosCODIGO_INTERNO: TIntegerField;
    edtProdutosDT_ULT_ATU_PRECO: TDateTimeField;
    edtProdutosCUSTO_AQUISICAO: TFloatField;
    edtProdutosVENDE_FRACIONADO: TIBStringField;
    edtProdutosQNTDE_EXPOSTA: TFloatField;
    edtProdutosPOSSUI_LOTE: TIBStringField;
    edtProdutosQNTDE_MAXIMA_VENDA: TFloatField;
    edtProdutosPIS: TIBStringField;
    edtProdutosCOFINS: TIBStringField;
    edtProdutosCOM_VENDA_VLR: TFloatField;
    edtProdutosCOM_VENDA_PCT: TFloatField;
    edtProdutosPARTICIP_LUCRO: TFloatField;
    edtProdutosNAO_COBR_JUR_ATE: TIntegerField;
    edtProdutosPREVISAO_ENTREGA: TDateTimeField;
    edtProdutosQNTDE_PEDIDA: TFloatField;
    edtProdutosATUALIZA_ARQ_EXTERNO: TIBStringField;
    edtProdutosSERVICO: TIBStringField;
    edtProdutosVALIDADE: TIntegerField;
    edtProdutosCUSTO_INDEXADO: TFloatField;
    edtProdutosCOMPLEMENTO: TIBStringField;
    edtProdutosATUALIZAR: TIBStringField;
    edtProdutosEST_MIN: TFloatField;
    edtProdutosEST_MAX: TFloatField;
    edtProdutosMODELO: TIntegerField;
    edtProdutosNOME_MODELO: TIBStringField;
    edtProdutosSERIE: TIBStringField;
    edtProdutosDEBITA_ICMS: TIBStringField;
    edtProdutosSECAO: TIntegerField;
    edtProdutosNFE_EXP: TIBStringField;
    edtProdutosSELECIONADO: TIBStringField;
    edtProdutosQNTDE_MINIMA_VENDA: TFloatField;
    edtProdutosVALIDA_MULT_QTDE_MIN: TIBStringField;
    edtProdutosFATOR_CONVERSAO: TFloatField;
    edtProdutosSINCRONIZA_FILIAIS: TIBStringField;
    edtProdutosQNTDE_PDR_CARGA: TFloatField;
    edtProdutosUND_CARREGAMENTO: TIBStringField;
    edtProdutosTRIB_ALIQ_EST: TFloatField;
    edtProdutosTRIB_ALIQ_INT: TFloatField;
    edtProdutosTRIB_MODALIDADE: TIBStringField;
    edtProdutosBCH_CODIGO: TIntegerField;
    edtProdutosCODIGO_NCM: TIBStringField;
    edtProdutosAPLICACAO: TMemoField;
    edtProdutosIMG_2: TBlobField;
    edtProdutosIMG_1: TBlobField;
    edtProdutosIMG_3: TBlobField;
    edtProdutosIMG_4: TBlobField;
    edtProdutosCODIGO_FABRICANTE: TIBStringField;
    edtProdutosCOR: TIntegerField;
    edtProdutosMATERIAL: TIntegerField;
    edtProdutosTRIB_PIS: TIBStringField;
    edtProdutosTRIB_COFINS: TIBStringField;
    edtProdutosTRIB_IPI: TIBStringField;
    edtProdutosVENCTO_PRC_VENDA: TDateField;
    edtProdutosCSOSN: TIntegerField;
    edtProdutosCOD_GETIN: TIBStringField;
    edtProdutosCOD_LOCALIZACAO_1: TIntegerField;
    edtProdutosCOD_LOCALIZACAO_2: TIntegerField;
    edtProdutosCOD_LOCALIZACAO_3: TIntegerField;
    Produto_Fornecedor: TIBDataSet;
    QryRetProduto: TIBQuery;
    QryRetProdutoRET_PRODUTO: TIBStringField;
    QryRetProdutoRET_DESC_PRODUTO: TIBStringField;
    QryRetProdutoFATOR: TIBBCDField;
    Produto_FornecedorCNPJ: TIBStringField;
    Produto_FornecedorCODIGO: TIntegerField;
    Produto_FornecedorPRODUTO: TIBStringField;
    Produto_FornecedorFORNECEDOR: TIntegerField;
    Produto_FornecedorFATOR: TFloatField;
    Produto_FornecedorUNIDADE: TIBStringField;
    Produto_FornecedorCOD_PRD_FORNECEDOR: TIBStringField;
    edtClienteCNPJ: TIBStringField;
    edtClientePESSOA_FJ: TIntegerField;
    edtClienteCOMPRADOR: TIBStringField;
    edtClienteFONE: TIBStringField;
    edtClienteCNPJ_VEND: TIBStringField;
    edtClienteCOD_VEND: TIntegerField;
    edtClienteCNPJ_FPAGTO: TIBStringField;
    edtClienteCOD_FPAGTO: TIntegerField;
    edtClienteREQUISICAO: TIBStringField;
    edtClienteDIA_PREF_FAT: TIntegerField;
    edtClienteCLASSIF: TIBStringField;
    edtClienteLIMITE_TEMPO: TIntegerField;
    edtClienteLIMITE_CREDITO: TFloatField;
    edtClienteREFERENCIAS: TBlobField;
    edtClienteOBS: TBlobField;
    edtClienteBLOQUEADO: TIBStringField;
    edtClienteULT_VENDEDOR: TIntegerField;
    edtClienteFREQUENCIA: TIBStringField;
    edtClienteATIVIDADE: TIntegerField;
    edtClienteCEP_TRABALHO: TIBStringField;
    edtClienteCIDADE_PAIS: TIntegerField;
    edtClienteCONJUGE: TIBStringField;
    edtClienteDT_NASC_CONJUGE: TDateTimeField;
    edtClienteENDERECO_PAIS: TIntegerField;
    edtClienteENDERECO_TRABALHO: TIntegerField;
    edtClienteFONE_LOCAL_CONJUGE: TIBStringField;
    edtClienteFONE_TRABALHO: TIBStringField;
    edtClienteLOCAL_TRAB_CONJUGE: TIBStringField;
    edtClienteLOCAL_TRABALHO: TIBStringField;
    edtClienteMAE: TIBStringField;
    edtClientePAI: TIBStringField;
    edtClienteRAMAL_FONE_TRAB: TIBStringField;
    edtClienteRAMAL_LOCAL_CONJUGE: TIBStringField;
    edtClienteRENDA_MENSAL: TFloatField;
    edtClienteTEMPO_SERV_CONJUGE: TIBStringField;
    edtClienteTEMPO_SERVICO: TIBStringField;
    edtClienteCNPJ_CLASSIF: TIBStringField;
    edtClienteCOD_CLASSIF: TIntegerField;
    edtClientePRAZO: TIntegerField;
    edtClientePERIODO_FATURAMENTO: TIBStringField;
    edtClienteTOLERANCIA_FATURAMENTO: TIntegerField;
    edtClienteAJUSTE_AUT_FATURAS: TIBStringField;
    edtClienteTAXA_JUROS: TFloatField;
    edtClienteMEDIA_COMPRAS_MES: TIntegerField;
    edtClienteNAO_COBR_JUR_ATE: TIntegerField;
    edtClienteASSINA_NOTA: TIBStringField;
    edtClienteCONTROLA_PLACA: TIBStringField;
    edtClienteCONTROLA_KM: TIBStringField;
    edtClienteADMISSAO: TDateTimeField;
    edtClienteADMISSAO_CONJUGE: TDateTimeField;
    edtClienteNUMERO_TRABALHO: TIBStringField;
    edtClienteLIMITE_RETIRADAS_DIARIA: TFloatField;
    edtClienteVALOR_MAXIMO_RETIRADA: TFloatField;
    edtClienteNUMERO_PAIS: TIBStringField;
    edtClienteCHEQUE: TIBStringField;
    edtClienteALIQUOTA_DESCONTO: TFloatField;
    edtClienteOPTANTE_SIMPLES: TIBStringField;
    edtClienteCONS_REV: TIBStringField;
    edtClienteSENHA_PDV: TIBStringField;
    edtClienteSUB_TRIBUTARIO: TIBStringField;
    edtClienteRET_PIS: TIBStringField;
    edtClienteRET_INSS: TIBStringField;
    edtClienteRET_IRRF: TIBStringField;
    edtClienteBAIRRO: TIntegerField;
    edtClienteNEG_N_VEZES: TSmallintField;
    edtClienteCOMPLEMENTO: TIBStringField;
    edtClienteCATEGORIA: TIntegerField;
    IBDataSet1: TIBDataSet;
    IBStringField1: TIBStringField;
    IntegerField1: TIntegerField;
    IBStringField2: TIBStringField;
    Unidades: TIBDataSet;
    UnidadesCNPJ: TIBStringField;
    UnidadesSIGLA: TIBStringField;
    UnidadesNOME: TIBStringField;
    UnidadesUNIDADES: TFloatField;
    QryParceiro: TIBDataSet;
    QryParceiroPARC_RAZAO_SOCIAL: TIBStringField;
    QryParceiroPARC_NOME_FANTASIA: TIBStringField;
    QryParceiroPARC_CNPJ: TIBStringField;
    QryParceiroPARC_FONE: TIBStringField;
    QryParceiroPARC_SITE: TIBStringField;
    QryParceiroPARC_EMAIL: TIBStringField;
    QryParceiroPARC_SLOGAN: TIBStringField;
    QryParceiroPARC_SUPORTE_EMAIL: TIBStringField;
    QryParceiroPARC_SUPORTE_FONE: TIBStringField;
    QryParceiroPARC_SUPORTE_SITE: TIBStringField;
    QryParceiroPARC_LOGO: TBlobField;
    QryParceiroPARC_TEXTO_RELATORIO: TIBStringField;
    QryParceiroPARC_PATH_ICONE: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure EventosEventAlert(Sender: TObject; EventName: String;
      EventCount: Integer; var CancelAlerts: Boolean);
    procedure Sis_MenuBeforeOpen(DataSet: TDataSet);
    procedure ConfiguracoesBeforeOpen(DataSet: TDataSet);
    procedure ConfiguracoesNewRecord(DataSet: TDataSet);
    procedure Perfil_ComputadorBeforeOpen(DataSet: TDataSet);
    procedure qryGerarTitulosCalcFields(DataSet: TDataSet);
    procedure OgDaysCodeChangeCode(Sender: TObject; Code: TCode);
    procedure OgDaysCodeChecked(Sender: TObject; Status: TCodeStatus);
    procedure OgDaysCodeGetKey(Sender: TObject; var Key: TKey);
    procedure OgDaysCodeGetCode(Sender: TObject; var Code: TCode);
    procedure Sis_Menu_ItensBeforePost(DataSet: TDataSet);
    procedure Sis_MenuBeforePost(DataSet: TDataSet);
    procedure Sis_ReleasesAfterPost(DataSet: TDataSet);
    procedure pcd_log_fat_vendas(LOG_CNPJ: STRING; LOG_CODIGO, LOG_USUARIO:INTEGER; LOG_OPERACAO:STRING);
    procedure ZeraCaixaUsuario(owner: TObject);
    procedure ACBrNFeStatusChange(Sender: TObject);
    procedure ImprimeNFE(cnpj: string;venda,num_nf:integer;DataNF: TDate;Serie:string='1';PathXML:String='');
    procedure BCH_SYNC_PRODUTO(produto:string);
    procedure BCH_SYNC_CLIENTE(cliente:integer);
    procedure ConsultaNFe(cnpj: string;venda:integer);
    procedure UpdateFAT_NFE(cnpj: string;venda,status:integer);
    procedure UpdateFAT_NFE_CONSULTA(cnpj: string;venda,status:integer);
    procedure TimerConsultaEstoqueTimer(Sender: TObject);
  private

  public
    { Public declarations  }
    Cnpj             : String[14];
    skinname: string;
    OwnerForm        : TComponent;
    ChildForm        : TComponent;
    Commitar         : boolean; //controle de transação cheque/cartão
    Data_Servidor    : TDateTime ;
    USR_CONECTADO    : Integer   ;
    DB_VERSAO        : Integer   ;
    REG_VERSAO       : Integer   ;
    FONE_SUPORTE : String;
    MAP_HTML_VIEW : String;
    Caminho_Externo  : String[50];
    NFE_DIR_EXP    : String;

    NFE_ENT_PATH_IMPORTACAO : String;
    NFE_ENT_CFOP_IMPORTACAO : integer;
    NFE_ENT_CFOP_IMPORTACAO_INT : integer;

    NFE_DESTACA_ICMS_SUB : String;
    BCH_PATH_PEDIDOS : String;
    BCH_PATH : String;
    BCH_ATIVO : String;
    FIN_EXIBE_GRAFICOS : String;
    EXIBE_CTR_OBRAS : String;
    BCH_CONC_CODIGO_PRODUTO : String;

    BCH_HABILITA_SINC_AUT : String;
    BCH_EXIBE_DESCONTO : String;
    BCH_FILIAL : String;
    EXIBE_NFE    : VARIANT;
    EST_MIN_CONTA_EMAIL_ENVIO : string;
    EST_MIN_SMTP_EMAIL_ENVIO : string;
    EST_MIN_LOGIN_EMAIL_ENVIO: string;
    EST_MIN_PASSWORD_EMAIL_ENVIO: string;
    EST_MIN_DESTINOS_EMAIL_ENVIO: string;
    //nfe nativa
    NFE_PATH_LEIAUTE_DANFE : STRING;
    NFE_CERT_CAMINHO : string;
    NFE_CERT_SENHA   : string;
    NFE_CERT_NUM_SERIE : string;
    NFE_GER_TP_DANFE  : string;
    NFE_GER_FORMA_EMISSAO : string;
    NFE_GER_PATH_LOGS : string;
    NFE_GER_IMG_DANFE : string;
    NFE_WS_UF    : string;
    NFE_WS_AMBIENTE : string;
    NFE_WS_PROXY_HOST : string;
    NFE_WS_PROXY_PORTA : string;
    NFE_WS_PROXY_USUARIO : string;
    NFE_WS_PROXY_SENHA  : string;
    NFE_EMIT_CNPJ  : string;
    NFE_EMIT_RAZAO_SOCIAL : string;
    NFE_EMIT_INSC_ESTADUAL : string;
    NFE_EMIT_FANTASIA : string;
    NFE_EMIT_FONE : string;
    NFE_EMIT_CEP  : string;
    NFE_EMIT_LOGRADOURO : string;
    NFE_EMIT_BAIRRO : string;
    NFE_EMIT_COMPLEMENTO : string;
    NFE_EMIT_NUMERO  : string;
    NFE_EMIT_COD_CIDADE : string;
    NFE_EMIT_CIDADE  : string;
    NFE_REGIME  : string;
    NFE_CNAE  : string;
    NFE_EMIT_UF  : string;
    NFE_EMIT_EMAIL : string;
    NFE_EMAIL_PORTA  : string;
    NFE_EMAIL_USUARIO : string;
    NFE_EMAIL_SENHA  : string;
    NFE_EMAIL_SMTP_SEGURA : string;
    NFE_EMAIL_SMTP : string;
    Config_Ordem_Servico  : string;

    PassWord         : String[15];

    Senha_Emp_Externa: String[10];
    Foto             : String    ;
    Foto1            : String    ;
    Faz_Fec_Diario   : String[1] ;
    Nome             : String[50];
    IE               : String;
    Ofc_Nome         : String[50];
    CIDADE           : String[50];
    CEP              : String[10];
    UF               : String[02];
    ENDER            : String[50];
    OFC_ENDERECO     : String[50];
    BAIRRO           : String[50];
    FONE             : String[14];
    OFC_FONE         : String[14];
    FAX              : String[14];
    EMAIL            : String;
    OFC_FAX          : String[14];
    PG_COM_TERC      : String[1] ;
    ENT_FRETE_MANUAL : String[1] ;
    DESC_BX_PARCIAL  : String[1] ;
    ELIMINA_ZERO_PRD_SEM_GRADE : String[1] ;
    CONVENIO_CHEQUE  : String[15];
    CONVENIO_BANCO   : String[15];
    PATH_ARQUIVO_MAG : String[50];
    NOME_ARQUIVO_MAG : String[30];
    PDV_MSG1         : String[50];
    PDV_MSG2         : String[50];
    PDV_MSG3         : String[50];
    PDV_MSG4         : String[50];
    PDV_MSG5         : String[50];
    MSG_PDVTELA      : String;
    Cheque_Prazo     : Boolean   ;
    IMP_VENDA_NOMINAL: String[1] ;

    //Restaurante
    TAXA_ACRESC_PDV : Real;




    //------------------Boletos-----------------------//
    BLT_GERA_BOLETOS   : STRING;
    BLT_EMAIL_SERVIDOR : STRING;
    BLT_EMAIL_PORTA    : INTEGER;
    BLT_EMAIL_USER     : STRING;
    BLT_EMAIL_SENHA    : STRING;
    BLT_DIR_RETORNO    : STRING;
    BLT_NOSSO_NUM_INI  : INTEGER;
    BLT_NOSSO_NUM_FIM  : INTEGER;

    BLT_LAYOUT       : integer;

    BLT_DIR_REMESSA  : string;
    TAXA             : Real      ;
    TAXA_DESC_AVISTA : Real      ; //TAXA DE DESCONTO PARA VENDAS A VISTA
    MARGEM_BRUTA : Real      ; //MARGEM PADRAO DO PRODUTO
    TAXA_DESC_APRAZO : Real      ; //TAXA DE DESCONTO PARA VENDAS A PRAZO
    APARTIR_PREST    : Integer   ; //A PARTIR DE N PRESTACOES COBRAMOS JUROS
    PDV_LINHA_RECIBO : Integer   ; //NUMERO DE COLUNAS NA LINHA DE RECIBO DA DS300
    TIPO             : String[1] ;
    CLIAVISTA        : Integer   ;
    ITENSORCAMENTO   : Integer   ; //NUMERO DE LINHAS NA FATURA
    ITENSORCAMENTOORC: Integer   ; //NUMERO DE LINHAS NO ORCAMENTO
    MENU             : String[1] ;
    ORCAMENTO        : String[2] ; //QUEM DEVERA SER IMPRESSO
    CAMINHOBASE      : String    ; //CAMINHO DA BASE
    CARREGAR_ARQ     : String[1] ; //CARREGAR TODOS OS ARQUIVOS DE CLIENTES E PRODUTOS
    VER_ENVIADAS     : String[1] ; //VISUALIZAR AS VENDAS ENVIADAS PARA O CAIXA
    CHM_PROD_INEXIST : String[1] ; //CHAMA O LOCALIZAR PRODUTO SE CODIGO INEXISTENTE
    DIG_SEN_VEND     : String[1] ; //DIGITA SENHA NO VENDEDOR
    COR_FUNDO_SEL    : String[15]; //COR DE FUNDO DO ITEM SELECIONADO
    OFC_COR_TELA     : String[15]; //COR de oficina
    SAI_COR_FUNDO_SEL: String[15]; //COR DE FUNDO DO ITEM DESSELECIONADO
    OFC_COR_FUNDO    : String[15]; //COR DE FUNDO DA TELA
    MENSAGEM_BOL     : String[50]; //MENSAGEM DE BOLETO
    MENSAGEM_BOL2    : String[50]; //MENSAGEM DE BOLETO
    MORA_DIARIA      : Real      ; //MORA DIARIA PARA BOLETOS BANCARIOS
    DESP_BANCARIA    : Real      ; //DESPESA BANCARIA PARA EMISSAO DO BOLETO
    PIS              : Real      ; //PIS
    COFINS           : Real      ; //COFINS
    CSLL             : Real      ; //COFINS
    PROPAGANDA       : Real      ; //DESPESAS COM PROPAGANDA
    VENDEDOR         : Real      ; //DESPESAS COM VENDEDOR
    DESCONTOS        : Real      ; //CUSTOS COM DESCONTOS
    CUSTO_VARIAVEL   : Real      ; //CUSTO VARIAVEL
    IMPOSTO_RENDA    : Real      ; //IMPOSTO RENDA
    DESP_OPER        : Real      ; //DESPESAS OPERACIONAIS
    NUM_REG_LOAD     : Integer   ; //NUMERO DE REGISTROS PARA O LOAD NA VENDA
    NUM_REG_SEL      : Integer   ; //NUMERO DE REGISTROS SELECIONADOS PARA A FATURA FUTURA
    TIPO_EMPRESA     : String[20]; //TIPO DE EMPRESA USUARIA
    DIGITA_COTACOES  : String[1] ; //DIGITA COTACOES
    IMP_DESC_AGRUPADO: String[1] ; //IMPRIME O DESCONTO AGRUPADO NO ORCAMENTO
    IMP_RODAPE_ORC   : String[1] ; //IMPRIME O RODAPE DO ORCAMENTO NO FINAL OU NO RODAPE DA FOLHA
    TIPO_CUSTO       : String[1] ; //FORMA DE CALCULO DO CUSTO DO PRODUTO ( SIMPLES OU COMPOSTO )
    TIPO_CAB_FATURA  : String[3] ; //TIPO DE CABECALHO DA FATURA EXT = EXTENDIDA | RED = REDUZIDA
    CASAS_QNTDE      : String[1] ; //IMPRIME CASAS DECIMAIS NA QUANTIDADE DA FATURA
    VALIDA_DOCS      : String[1] ; //VALIDA DOCUMENTOS CPF/CNPJ
    NUMERO_ZEROS     : Integer   ; //NUMERO DE ZEROS
    DIG_ITENS_NF     : Integer   ; //QTDE DE DIGÍTOS EXIBIDOS NA IMPRESSÃO DOS ITENS DA NF.
    PST_DIG_NUMERO   : String[1] ; //DIGITA NUMERO DA VENDA MANUALMENTE
    MASCARA_FONE     : String[30]; //MASCARA PARA FONES
    CTB_CONTAS_PAGAR : Integer   ; //CONTA PADRAO PARA CONTAS A PAGAR
    CHEQUE_CONTA     : String    ; //CONTA CHEQUE CINCO
    CHEQUE_SENHA     : String    ; //SENHA CHEQUE CINCO
    CONF_DUPLIC_REC  : String[1] ; //CONFERE O RECEBER NO LANCAMENTO
    ALTERA_VLR_CNT_PAGAR  : String[1] ;
    CTB_DT_AVISO_BANCARIO  : String[1] ;
    DT_CX_MOVTO_ANTERIOR  : String[1] ;
    IMP_RECIBO       : String[10]; //SE IMPRIME OU NAO O RECIBO
    FOLHA_RECIBO     : String[10]; //TIPO DE FOLHA PARA A IMPRESSAO DO RECIBO
    MSG_CONDICIONAL  : String[50]; //MENSAGEM CONDICIONAL
    FAT_TIPO_PARCEL  : String[3] ; //TIPO PARCELAMENTO NA VENDA
    MENSAGEM_CONDIC  : String[50]; //MENSAGEM NO CONDICONAL
    BLQ_VND_SEM_IERG : String[1] ; //BLOQUEIA VENDA SEM IE E RG
    PDV_VALOR_ZERADO : String[1] ; //PERMITE FAZER VENDA COM VALOR ZERADO
    DIRETORIO_TEF    : String[50]; //DIRETORIO ONDE DEVERÁ SER CRIADO O ARQUIVO TEF
    IMPRIME_NF_BALCAO: String[1] ; //IMPRIME NF NO BALCAO
    TOLERANCIA_JUROS : Integer   ; //TOLERANCIA PARA JUROS
    MULTA_FINANCEIRA : Real      ; //MULTA FINANCEIRA PARA O CONTAS A RECEBER
    CODIFICA_PRODUTOS: String[1] ; //CODIFICA O PRODUTO
    INCLUI_VENDA_LIM : String[1] ; //INCLUI A VENDA ATUAL NO LIMITE DE CREDITO
    EXCL_BX_PARC_PDV : String[1] ; //EXCLUI AS VENDAS NAS BAIXAS PARCIAS DE PDV
    INDEXA_PRODUTOS  : String[1] ; //INDEXA CUSTO DOS PRODUTOS
    CODIGO_SCPC      : String    ; //CODIGO SCPC
    TROCO_MAX_PDV    : Real      ; //TROCO MAXIMO NO PDV
    ALIQUOTA_ISS     : Real      ; //ALIQUOTA DO ISS
    COMP_EXTERNO     : String[1] ; //COMPUTADOR EXTERNO S OU N
    PEDE_SEN_GER_CX  : String[1] ; //PEDE SENHA GERENCIAL NO CAIXA
    IMP_VND_FAT      : String[1] ; //IMPRIME VENDA NO FATURAMENTO
    EST_USA_GRADE    : String[1] ; //UTILIZA GRADES NO ESTOQUE
    CONTAGEM_INCREMENTAL : String[1] ; //UTILIZA CONTAGEM INCREMENTAL NO ESTOQUE
    BLOQ_CAD_SEM_CPF : String[1] ; //BLOQUEIA CADASTROS SEM CPF
    PDV_IMP_END_PRAZO: String[1] ; //IMPRIME ENDERECO NAS VENDAS A PRAZO
    PDV_FAT_FIM_MES  : String[1] ; //FATURA SEMPRE NO ULTIMO DIA DO MES
    ITENS_ORDENS_SERV: Integer   ; //NUMERO DE ITENS NO ORCAMENTO
    PROPRIED_EQUIP   : String[1] ; //TROCAR PROPRIEDADES POR EQUIPAMENTOS NO CADASTRO
    MASCARA_ORCAMENTO: String[1] ; //UTILIZA MASCARA NO ORCAMENTO
    VALOR_MINIMO_PARC: Real      ; //VALOR MINIMO PARA PARCELAMENTO
    OFC_USA_CONTADOR : String[1] ; //UTILIZA CONTADORES NAS OS
    IMP_NOME_PROPR   : String[1] ; //NOME DA PROPRIEDADE NO ENDEREÇO


    //CAIXA
    DataCaixa        : TDateTime ;
    UsuarioCaixa     : Integer   ;
    TurnoCaixa       : Integer   ;
    ContaCaixa       : Integer   ;
    ContaCaixaGeral  : Integer   ;
    NomeCaixa        : String    ;
    NomeCaixaCompleto: String    ;
    Vendedor_Caixa   : Integer   ;
    Conta_Dif_Caixa  : Integer   ;
    Conta_Desc_Caixa : Integer   ;

    //DRE DA CONTABILIDADE
    CTB_RESUMO_ATIVO    : Integer;
    CTB_RESUMO_PASSIVO  : Integer;
    CTB_RESUMO_CMV      : Integer;
    CTB_RESUMO_RECEITAS : Integer;
    CTB_RESUMO_DESPESAS : Integer;
    CTB_FRENT_GERAL     : String[1] ; //CONTABILIDADE NO CAIXA FRENTISTA OU GERAL ( F OU G )

    Troco_Maximo     : Real      ; //TROCO MAXIMO
    CaixaAtivo       : Boolean   ; //CAIXA ATIVO
    IMPRIMIR_POSICOES: String[1] ; //IMPRIME POSICOES NA TELA INICIAL
    ALT_PRCVEND_MARG : String[1] ; //CORRIGE O PRECO DO PRODUTO AO ALTERAR A MARGEM
    TRANSF_VLRS_CAIXA: String[1] ; //TRANSFERE OS VALORES AUTOMATICAMENTE NO CAIXA

    LOCAL_FATURA     : String[1] ; //LOCAL PARA FATURAMENTO B = BALCAO E C = CAIXA
    LOCAL_PADRAO_ESTOQUE  : String[1] ; //LOCAL Padrão de estoque a ser sugerido no ato do faturamento
    LOCAL_FATURA_TROCA : String[1]; //LOCAL PARA FATURAMENTO B = BALCAO E C = CAIXA
    TIPO_IMPRESSORA  : String[20]; //MODELO DE IMPRESSORA
    Pagar_Caixa      : String[1] ; //SE CONSIDERA CONTAS A PAGAR NO CAIXA
    Receber_Caixa    : String[1] ; //SE CONSIDERA CONTAS A RECEBER NO CAIXA
    Ext_Lanc_Fechado : String[1] ; //SE EXTORNA LANCAMENTO COM CAIXA FECHADO
    Sel_Impressora   : String[1] ; //SELECIONA A IMPRESSORA
    Cx_Comp_Sld_Ant  : String[1] ; //COMPUTA O SALDO ANTERIOR NO CAIXA
    Cx_Imp_Vnd_Agrup : String[1] ; //IMPRIME VENDAS AGRUPADAS NO CAIXA
    Cx_Transp_Sld    : String[1] ; //TRANSPORTA SALDO ANTERIOR
    Cx_Dif_Maxima    : REAL      ; //DIFERENCA MAXIMA NO CAIXA
    Cx_Mostra_Ent    : String[1] ; //MOSTRA ENTRADAS NO CAIXA
    IMP_CONVENIO_GRAF : String[1] ; //MOSTRA ENTRADAS NO CAIXA
    PDV_IMP_CONVENIO : String[1] ; //MOSTRA ENTRADAS NO CAIXA
    SINC_BOL_DPL     : String[1] ; //SINCRONIZA OS NUMEROS DE BOLETO E DUPLICATAS

    //PDV
    Usrpdv           : String[1] ; //SE É USUARIO DE PDV
    UsrBlc           : String[1] ; //SE É USUARIO DE BALCAO
    Elimina_Zeros    : String[1] ; //ELIMINA ZEROS A ESQUERDA NA VENDA

    Acrescenta_Zeros : String[1] ; //ELIMINA ZEROS A ESQUERDA NA VENDA
    PDV_DIGITA_QNTDE : String[1] ; //DIGITA QUANTIDADE NA VENDA
    PDVNATUREZA      : INTEGER   ;
    PDV_FORMA_PAGTO  : INTEGER   ;
    PDVTIPODOCTO     : String[3] ;
    PDVLOCAL         : INTEGER   ;
    MODODIGPROD      : String[10]; //QUANTIDADE AUTOMATICA OU DIGITADA
    PDV_ECF          : String[1] ; //POSSUI ECF ACOPLADA
    PDV_PORTA        : String[4] ; //PORTA DA ECF
    PDV_MODELO       : String[10]; //MODELO ECF
    PDV_T01          : String[5] ; //T01
    PDV_T02          : String[5] ; //T02
    PDV_T03          : String[5] ; //T03
    PDV_T04          : String[5] ; //T04
    PDV_T05          : String[5] ; //T05
    PDV_T06          : String[5] ; //T06
    PDV_FF           : String[5] ; //FF
    PDV_II           : String[5] ; //II
    PDV_MENSAGEM     : String[48]; //MENSAGEM DO PDV
    PDV_MENSAGEM1    : String[48]; //MENSAGEM DO PDV
    PDV_MENSAGEM2    : String[48]; //MENSAGEM DO PDV
    PDV_UNITARIO     : EXTENDED  ; //MAIOR VALOR UNITARIO
    PDV_SENHA        : String[6] ; //SENHA GERENCIAL
    CONTROLE_PEDIDO_RESTAURANTE  : String[1] ;
    PDV_PARC_VENDA   : String[1] ; //PARCELA VENDA NO PDV
    TIPO_FOLHA       : String[2] ; //TIPO DE FOLHA NA IMPRESSAO
    F4_ALTERA        : String[1] ; //ALTERA CLIENTES NO F4
    LEITORPORTA      : String[4] ; //PORTA DO LEITOR
    BALANCAPORTA     : String[4] ; //PORTA DA BALANCA
    Ecf_Casas_Dec    : Integer   ; //CASAS DECIMAIS PARA A ECF
    REPETE_PRODUTO   : String[1] ; //REPETE PRODUTO NA VENDA
    ACT_MULTI_SELETOR : String[1] ; //EXIBIR MULTI SELETOR
    EDITA_NUM_NF : String[1] ; //SE PERMITE EDITAR NUMERAÇÃO DE NF NA IMPRESSÃO
    MASCARA_PROD_ENT : String[15]; //MASCARA PARA PRODUTOS NA ENTRADA
    IMPRIME_VINC_VLR : String[1] ; //IMPRIME CUPOM VINCULADO COM VALOR
    PORTA_IMPRESSORA : String[30]; //PORTA DA IMPRESSORA NO CAIXA
    PORTA_PRAZO      : String[30]; //PORTA DA IMPRESSORA VENDAS A PRAZO

    VIASVISTA        : String[1] ; //VIAS PARA IMPRESSAO A VISTA
    VIASPRAZO        : String[1] ; //VIAS PARA IMPRESSAO PRAZO
    DIGITA_VEND_PDV  : String[1] ; //DIGITA VENDEDOR NO PDV ( ITENS DA VENDA )
    IMP_ITENS_PDV    : String[1] ; //IMPRIME OS ITENS DO CUPOM NO PDV COM EPSON
    PWPDV            : String[1] ; //PREVIEW NA BAIXA DE CONTAS A RECEBER NO PDV
    PDV_OBRIGA_QTDE  : String[1] ; //OBRIGA DIGITAR QTDE NO PDV
    PDV_COR_FUNDO    : String[15]; //COR DE FUNDO DA TELA
    PDV_COR_FONTE    : String[15]; //COR DE FUNDO DA FONTE






    //POSTO
    DIGITA_DESC_NOTAS: String[1] ; //DIGITA DESCONTO NAS NOTAS A PRAZO
    PST_DIG_CLI_FEC  : String[1] ; //DIGITA CLIENTE NO FECHAMENTO
    ULTIMO_TURNO     : Integer   ; //ULTIMO TURNO CADASTRADO

    MENS_RODAPE      : String[50]; //MENSAGEM PARA O RODAPE DA FATURA
    MENS_RODAPE1     : String[50]; //MENSAGEM PARA O RODAPE DA FATURA
    MENS_RODAPE2     : String[50]; //MENSAGEM PARA O RODAPE DA FATURA
    MENS_RODAPE3     : String[50]; //MENSAGEM PARA O RODAPE DA FATURA
    SIS_MSG_INTERNA  : String[1] ; //MENSAGENS INTERNAS
    ATIVA_AGENTE  : String[1] ; //MENSAGENS INTERNAS
    SINCRONIZA_CAIXA : String[1] ; //SOMENTE ABRE CAIXA NA DATA ATUAL

    //dados para o envio de email
    EMAIL_PADRAO : String;
    SMTP  : String;
    LOGIN : String;
    SENHA : String;
    NOME_USUARIO : String;
    EMAIL_CONTROLE : String;

    //CONFIGURAÇÕES DE VENDA
    TIPOVENDA        : String[10]; //VENDA OU PDV
    DIG_DESC_VENDA   : String[1] ; //DIGITA DESCONTO NA TELA DE ENTRADA DE PRODUTOS
    EXIBE_PENDENCIA  : String[1] ; //DIGITA DESCONTO NA TELA DE ENTRADA DE PRODUTOS
    EXIBE_INDICE_PDV : String[1] ;
    EXIBE_ACERTO  : String[1] ; //DIGITA DESCONTO NA TELA DE ENTRADA DE PRODUTOS
    EXIBE_OFC_COPIAS  : String[1] ;
    OFC_DATA_BASE_MAN_OS  : Tdate;
    EXIBE_OFC_MOVTO_AVULSO : String[1] ;
    EXIBE_OFC_VISUALIZACAO  : String[1] ;
    EXIBE_SRV : String[1] ;

    OFC_EXIBE_NOTIFICACAO  : String[1] ;

    Contato_por_Cliente : String[1];
    EXIBE_MESALIDADES : String[1] ;
    EXIBE_OFC_PREVENTIVA : String[1] ;
    EXIBE_OFC_MOVIMENTOS_OS  : String[1] ;
    EXIBE_EMAIL_AUTOMATICO : String[1];
    OFC_GERA_FAT_AUTOMATICO : String[1];
    OFC_EXIBE_DADOS_COMPLEMENTARES : String[1];
    PDV_QTDE_COD_BARRAS  : String[1];
    EXIBE_OFC_CONTROLA_TEMPO_RESPOSTA : String[1] ;
    CARREGAMENTO_PARCIAL : String[1] ; //Carregamento parcial de estoque
    DIG_PREC_VENDA   : String[1] ; //DIGITA PRECO DE VENDA NA TELA DE ENTRADA DE PRODUTOS
    DIG_UNIDADE_VENDA: String[1] ; //DIGITA UNIDADE DE VENDA NA TELA DE VENDAS DE PRODUTOS
    TEMPOOBSERV      : Integer   ; //TEMPO QUE A TELA DE OBSERVAÇÃO DEVERÁ FICAR ABERTA
    DIG_CHEQUE_VENDA : String[1] ; //SE DESDOBRA OS CHEQUES NA VENDA
    DIG_CARTAO_VENDA : String[1] ; //SE DESDOBRA OS CARTOES NA VENDA
    ORDENA_VENDA     : String[10]; //ORDENA A VENDA
    Local            : Integer   ; //LOCAL FISICO E FISCAL 1 = FISCAL, 2 = FISICO
    Sel_Agrupado     : String[1] ; //SE SELECIONA POR AGRUPADO
    Tipo_Cons_Prod   : String[1] ; //TIPO LOCALIZACAO DE PRODUTOS
    NUM_MAX_ITENS    : Integer   ; //NUMERO MAXIMO DE REGISTROS NA VENDA
    NUM_ITENS_NF     : Integer   ; //NUMERO itens por folha de nf
    NUM_MAX_ITENS_ORC: Integer   ; //NUMERO MAXIMO DE REGISTROS NO ORCAMENTO
    Imp_Unit_Orc     : String[1] ; //IMPRIME O PRECO UNITARIO NO ORCAMENTO
    BlqQtdeFiscal    : String[1] ; //BLOQUEIA OU NAO SEM QUANTIDADE FISCAL
    DIGITA_NUM_NOTA  : String[1] ; //DIGITA O NUMERO DA NOTA NA HORA DA IMPRESSAO
    IMPRIME_CABEC_2FOL: String[1]; //IMPRIME O CABECALHO NA SEGUNDA FOLHA DO ORCAMENTO
    TIPO_ORCAMENTO   : String[10]; //TIPO DE ORCAMENTO
    DATA_NF          : TDate    ; //DATA QUE SERA IMPRESSA NA NF DE DISTRIBUIDORAS
    IMPRIME_SUBTOTORC: String[1] ; //IMPRIME SUBTOTAL NOS ORCAMENTOS
    EMBUTIR_JUROS    : String[1] ; //IMPRIME JUROS EMBUTIDOS NOS PRODUTOS
    UTIL_PROPRIEDADE : String[1] ; //UTILIZA PROPRIEDADE NA VENDA
    PST_SENHA_CAIXA  : String[1] ; //PEDE SENHA SE CAIXA ATRASADO
    COMISSAO_FAIXA   : String[1] ; //COMISSAO POR FAIXA DE VALORES
    COMISSAO_NORMAL  : String[1] ; //COMISSAO NORMAL DE VENDAS
    DESCONTO_MAXIMO  : REAL      ; //DESCONTO MAXIMO NA VENDA
    ICM_PRESUMIDO_SEM: REAL      ; //ICM PRESUMIDO SEM IPI
    ICM_PRESUMIDO_IPI: REAL      ; //ICM PRESUMIDO COM IPI
    PARC_MESMO_DIA   : String[1] ; //PARCELAMENTO SEMPRE NO MESMO DIA
    INDEXA_ENTRADAS  : String[1] ; //INDEXA ENTRADAS COM DOLAR
    DIF_FIS_FISC     : String[1] ; //DIFERENCIA FISCAL/FISICO
    BLQ_VND_SEM_CPF  : String[1] ; //BLOQUEIA VENDA SEM CPF

    NF_CONTINUO_COM_MESMO_NUM_NF : String[1]  ; //NOTA FISCAL EM FORMULÁRIO CONTINUO
    NF_CONTINUO_NOME_CAMPO_TRUE  : String[50] ; //NOME DO CAMPO QUE MOSTRARA ASTERISCO NOS CAMPOS DE VALORES DA NF.
                                                //VALORES SOMENTE APARECERÁ NA ÚLTIMA VIA DA NF.

    // Filtragem
    s_Texto_Where    : String;

    //Email
    procedure Conecta();
    procedure Desconecta();

    //FormCadPadrao
    procedure CriaFormulario(Form : TfrmCadPadrao;Name :String);
    //CxGrid
    Function ManFilterGrid(GridTV: TcxGridDBBandedTableView; sFile:String;Save:Boolean=true):boolean;
    procedure Save(ADefaultExt, AFilter, AFileName: String;Grid :TcxGrid);

    //Sincronia de NF de Entrada
    Function SincronizaProduto(Trans:TIBTransaction;
                               Fornecedor:Integer;
                               cProd: string;
                               xProd: string;
                               cEAN: string;
                               NCM: string;
                               uCom: string;
                               DicProd : string;
                               Fator:Real;
                               Cadastra:Boolean):string;

    Function SincronizaUF(Trans:TIBTransaction;
                          FUF: string):string;

    Function SincronizaCidade(Trans:TIBTransaction;
                              FcMun: integer;
                              FxMun: string;
                              FUF: string):integer;

    Function SincronizaBairro(Trans:TIBTransaction;
                              FxBairro: string):integer;


    Function SincronizaLogradouro(Trans:TIBTransaction;
                                  FxLgr: string):integer;

    Function SincronizaPessoa(Trans:TIBTransaction;
                              FCNPJCPF: string;
                              FxNome: string;
                              FxFant: string;
                              FIE: string;
                              FIEST: string;
                              FIM: string;
                              FCNAE: string;
                              FxLgr: string;
                              Fnro: string;
                              fxCpl: string;
                              FxBairro: string;
                              FcMun: integer;
                              FxMun: string;
                              FUF: string;
                              FCEP: integer;
                              FcPais: integer;
                              FxPais: string;
                              Ffone: string):integer;

    Function RetornaVersao:Integer;
    Function DataHora(Tp: String): TDateTime;
    Function Verificar_Similares(ProdutoA, ProdutoB: String): Integer;
    Function Verificar_Login(Executavel: String; Objeto: String; NegarAcesso: Boolean): Boolean;
    Function Autenticar(Login: String; Senha: String): Boolean;
    Function AutenticarCaixa(Login: String; Senha: String): Boolean;
    Function GerarCodigo(Tabela: String; Tag: Integer): Integer;

    Function GerarCodigoGrade(Tag: Integer): String;

    Function GerarCodigoDpl: Integer;
    Function GerarCodigoSubGrupo(Cnpj: String; Grupo: Integer):Integer;
    Function GerarCodigoPropriedade(Pessoa: Integer): Integer;
    Function NomeSimilar(ProdutoA, ProdutoB, Produto: String): String;
    Function SelecionarEmpresa: String;
    function GerarCodigoVeiculo(Pessoa: Integer): Integer;
    function MascaraIe( Uf: String ): String;
    function VerificarCaixa: String ;
    function VerificarCaixaFechado: String ;
    Procedure Excluir_Mensagem( CODIGO: Integer; ANO: Integer );
    Function  Valida_Cpf_Cnpj( Campo:String ): String;
    Function  VerificaIeRg( Venda: Integer ): String;
    Function  VerificaCpf( Pessoa: Integer ): String;
    Function  VerificaIeRg_Agrupada( Pessoa: Integer ): String;
    function  Valida_Convenio (Pessoa, Conveniado: Integer): String ;
    function  Cotacao_Dolar ( Data: TDateTime ): Real ;
    function  VerificaDesconto(Venda: Integer;DescontoPos:Currency=0;Trans: TIBTransaction=nil):boolean;
    function  VerificaLote(Venda: Integer):boolean;
    function  VerificaDescontoReceber(Valor,Desconto:Currency): boolean;
    function  VerificaLimite2(Cliente,Forma_pagto: Integer; Valor: Currency; Trans: TIBTransaction): integer;
    function  VerificaDescontoItem(Produto: String;Cliente: Integer;VlrProduto: Currency;Vendedor:Integer=0):boolean;
    function  DescontoRestante(Venda: integer; Descto: Currency; Trans: TIBTransaction=nil): Currency;
    function  TributosRetidos(Venda: integer;Trans: TIBTransaction=nil): Currency;
    function  Caixas_Frentista_Abertos ( Data: TDateTime ): Integer ;

    Function LocalizarProduto: String;
    Procedure LogOff;
    Procedure Localizar(Datasource: TDataSource);
    Procedure Filtrar(Datasource: TDataSource);
    Procedure Verifica_Modulo(Executavel: String; Objeto: String; Descricao: String; Actions: String);
    Procedure ConfiguraTabela ( DataSource: TDataSource );
    procedure SetForm;
    // Contabilidade
    Function  SaldoAntContabilidade ( Conta: String; Data: TDateTime ):Real;
    Function  SaldoAntContabilidade_DRE ( Conta: String; Data: TDateTime ):Real;
    Procedure Concilia_Banco ( Codigo: Integer; Data: TDateTime );
    Procedure DesConcilia_Banco ( Codigo: Integer );
    Procedure Exclui_Movto_Contabil ( Cnpj: String );
    Procedure Marca_Movto_Contabil  ( Cnpj: String; Codigo: Integer; Tipo: String );
    Function  Ultima_Conta(Conta:String): String;
    Function  ArredondaIb( Valor: Double; Casas: Integer ): Double;
    Function  ConferePlanilha ( Planilha: Integer ):String;
    Function  SaldoPlanilha ( Planilha: Integer ):Real;
    Procedure ProcessaPlanilha( Planilha: Integer );
    Function  SaldoRestantePlanilha ( Planilha: Integer; Total: Real ):Real;
    Function  Saldo_Vendas_Prazo ( Data: TDateTime ):Real;
    Function  Saldo_Vendas_Vista ( Data: TDateTime ):Real;
    Procedure Lanca_Contabilidade_Estoque( Data: TDateTime; Conta: Integer; Planilha: Integer );

    //Financeiro
    Procedure Devolve_Cheque  ( Banco: String; Conta: String; Cheque: String; Data: TDateTime; Motivo: Integer );
    Procedure Acerta_Cheque   ( Banco: String; Conta: String; Cheque: String; Data: TDateTime; Juros: Real  );
    Procedure Concilia_Cheque ( Banco: String; Conta: String; Cheque: String; Data: TDateTime; Tipo: String );
    Procedure Concilia_Cartao ( Codigo: Integer; Data: TDateTime; Tipo: String );
    Procedure Digita_Cotacao;
    function  RetornaJuroCli(cliente:integer):real;
    function  Cheques_Aberto: Real;
    function  Pagar_Aberto: Real;
    function  Cheques_Conciliados_Data( Data: TDateTime ): Real;
    function  Receber_Aberto: Real;
    function  Cheque_Aberto: Real;
    function  Fatura_Aberto: Real;
    Function  Ultimo_Cheque(Conta: Integer): Integer;
    Procedure Atualiza_Ultimo_Cheque( Conta: Integer; Cheque: Integer );
    Procedure Exclui_Cheque_Planilha(Planilha: Integer);
    Procedure Extorna_Planilha( Planilha: Integer );
    Function  Ultima_Duplicata :Integer;
    Function  Ultima_Etiqueta :Integer;
    Function  Ultima_Etiqueta_Imp :Integer;
    Function  Ultimo_Caixa_Fechado :TDateTime;
    Function  Extorna_Caixa( Usuario: Integer; Conta: Integer; Data: TDateTime ): Integer;
    Function  Pessoa_Conta( Banco, Agencia, Conta: String ): Integer;
    Function  Confere_Docto_Receber( Tipo, Docto: String ): Integer;
    Function  Confere_Docto_Pagar( Docto: String; Fornecedor, Codigo, Ano: Integer ): Integer;
    function  Verifica_Cheque ( Banco, Conta, Cheque: String ): String ;

    Procedure Agenda_Cobrancas_Pessoa ( Inicial, Final, Data_Servidor, Cobrar: TDateTime; Pessoa, Motivo, Cobrador, Receber: Integer; Historico: String; Origem: String ) ;

    Function  Saldo_Anterior_Caixa( USUARIO, CONTA, TURNO: INTEGER; DATA: TDatetime ): Real;

    // Estoque
    Function  At_NF_Ent_Qtd(CNPJ, NDOCTO: String; PESSOA_FJ: Integer): Integer;
    Function  At_NF_Ent_Cus(CNPJ, NDOCTO: String; PESSOA_FJ: Integer): Integer;
    Function  At_NF_Ent_Fin(CNPJ, NDOCTO: String; PESSOA_FJ: Integer; Dt_Caixa: TDateTime): Integer;
    Function  Ext_NF_Ent_Qtd(CNPJ, NDOCTO: String; PESSOA_FJ: Integer): Integer;
    Function  Ext_NF_Ent_Fin(CNPJ, NDOCTO: String; PESSOA_FJ: Integer): Integer;
    Function  Ext_NF_Ent_Custo(CNPJ, NDOCTO: String; PESSOA_FJ: Integer): Integer;
    Procedure Fechar_Contagem (Codigo: Integer );
    Procedure Fechar_Alteracao (Codigo: Integer );
    Procedure Fechar_Alteracao_Grupo (Codigo: Integer );
    Procedure Fechar_Alteracao_Marca (Codigo: Integer );
    Function  Nome_Produto(Cnpj: String; Produto:String): String;
    Function  Quantidade_Fiscal(Cnpj: String; Produto:String): Real;
    Procedure Agrupador ( Codigo, Agrupador: String );
    Procedure Exclui_Entrada( Pessoa: Integer; Documento: String );
    Function  Verifica_Quantidade (Codigo,tipo :Integer): String;
    Function  Verifica_Quantidade_Fiscal_Agrupada (DIni, DFim: TDateTime; Pessoa:Integer): String;
    Procedure Indexa_Custos ( Indexador: Real );
    Procedure Apaga_Etiquetas_Impressas ;
    Procedure Apaga_Etiquetas_Matriz    ;
    Function  Possui_Grade ( Produto: String ): Boolean;
    Procedure Fecha_Entrada_Manual ( Codigo: Integer );
    Procedure Fechamento_Diario_Cupom( Inicial, Final: TDateTime );
    Procedure Fechamento_Mes( Data, DataInicial, DataFinal: TDateTime; Mes, Ano: Integer );
    Procedure Inserir_Num_Grade( Produto: String; Grade: String; Numero: String );
    Function  Verifica_Promocao ( Produto: String; Data: TDateTime ): Real;
    Function  Corrige_Preco_Promocao ( Venda: Integer ): Real;
    procedure Atualiza_Orcamentos_Externos ;

    //Faturamento
    function Buscar_Pagamento_Venda ( Codigo: Integer ):TDateTime;
    function  Verifica_Limite ( Cnpj: String; Cliente: Integer; Nome: String; Tempo: Integer; Credito: Real; Data: TDateTime; Compra_Atual: Real; Forma_Pagto: Integer=2): Boolean;
    function  Verifica_Limite_Pdv ( Cnpj: String; Cliente: Integer; Nome: String; Tempo: Integer; Credito: Real; Data: TDateTime; Compra_Atual: Real ): Boolean;
    function  Envia_Caixa(CNPJ: String; CODIGO: Integer): String;
    function  Envia_Caixa_Pdv(CNPJ: String; CODIGO: Integer): String;
    function  Envia_Ordem_Caixa(CNPJ: String; CODIGO: Integer): Integer;
    function  Gerar_Venda_OS(CNPJ: String; CODIGO: Integer; ID_CLIENTE: integer): Integer;
    function  Envia_Troca_Caixa(CNPJ: String; CODIGO: Integer): String;
    function  Envia_Garantia_Caixa(CNPJ: String; CODIGO: Integer): String;
    Procedure Devolve_Balcao(CNPJ: String; CODIGO: Integer);
    Procedure Devolve_Troca_Balcao(CNPJ: String; CODIGO: Integer);
    Procedure Encerra_Venda(CNPJ: String; CODIGO: Integer; Data_Caixa: TDateTime; Usuario: Integer; Conta: Integer; Turno: Integer;Tipo_Vale: string = '');
    Procedure Encerra_Troca(CNPJ: String; CODIGO: Integer; Data_Caixa: TDateTime; Usuario: Integer; Conta: Integer; Turno: Integer);
    Procedure Encerra_Garantia(CNPJ: String; CODIGO: Integer; Data_Caixa: TDateTime; Usuario: Integer; Conta: Integer; Turno: Integer);
    Procedure Extorna_Venda(CNPJ: String; CODIGO: Integer);
    Procedure Extorna_Troca(CNPJ: String; CODIGO: Integer);
    Procedure Cancela_Troca(CNPJ: String; CODIGO: Integer; DATA: TDATETIME);
    Procedure Apaga_Parcelas_Venda(CNPJ: String; CODIGO: Integer);
    Procedure Apaga_Parcelas_Troca(CNPJ: String; CODIGO: Integer);
    Procedure Apaga_Parcelas_Garantias(CNPJ: String; CODIGO: Integer);
    Procedure Apaga_Parcelas_Ordem(CNPJ: String; CODIGO: Integer);
    Procedure Exclui_Venda(CNPJ: String; CODIGO: Integer);
    Procedure Exclui_Troca(CNPJ: String; CODIGO: Integer);
    Procedure Exclui_Ordem(CNPJ: String; CODIGO: Integer);
    Procedure Exclui_Ordem_Orc(CNPJ: String; CODIGO: Integer);
    Function  Cheque_Venda (Codigo: Integer ): Real;
    Function  Cheque_Vista_Venda (Codigo: Integer ): Real;
    Function  Cartao_Vista_Venda (Codigo: Integer ): Real;
    Function  Cheque_Planilha (Codigo: Integer ): Real;
    Function  Cartao_Venda (Codigo: Integer ): Real;
    Procedure Exclui_Orcamento(CNPJ: String; CODIGO: Integer);
    Procedure Exclui_Cotacao(CNPJ: String; CODIGO: Integer);
    Procedure Exclui_Nota(CNPJ: String; CODIGO: Integer);
    Procedure Exclui_Nota_Aberto(CNPJ: String);
    Function  Importa_Orcamento(Codigo: Integer;CFOP:Integer=5102): Integer;
    Function  Importa_Ordem(Codigo: Integer): Integer;
    Function  Importa_Ordem_Existente(Codigo, Venda: Integer): Integer;
    Procedure Marca_NumNota(CNPJ: String; CODIGO: Integer; UltNum:Integer; Serie: String);
    Procedure Marca_NumNotaAgrupada(CNPJ: String; PESSOA: INTEGER; Numero:Integer; Serie:String);
    Procedure Marca_NumNota_Os(CNPJ: String; CODIGO: Integer; UltNum:Integer; Serie: String);
    Procedure Marca_NumNota_Agrupada(CNPJ: String; DtInicial, DtFinal: TDateTime; Pessoa: Integer ; UltNum:Integer; Serie: String; Emissao: TdateTime);
    Procedure Marca_NumCupom(CNPJ: String; CODIGO: Integer);
    Procedure Carrega(CNPJ: String; CARGA: Integer; FATURA: INTEGER; PESO: REAL; VOLUME: REAL);
    Procedure DesCarrega(CNPJ: String; CARGA: Integer; FATURA: INTEGER; PESO: REAL; VOLUME: REAL);
    Function  Atualiza_Boleto( Banco: String ): Integer;
    Function  Seleciona_Venda(CODIGO: Integer; Opcao: String; Pessoa: Integer): Real;
    Procedure Seleciona_Cobranca(Indice : String; Selecionado: Char );

    Procedure Agendar_Cobranca_Agrupada( DATA_SERVIDOR, INI, FIM, COBRAR_EM: TDateTime;
                                         COBRADOR, MOTIVO: Integer; HISTORICO : String );

    Function  Seleciona_Venda_Agrupada(CODIGO: Integer; Opcao: String; Pessoa: Integer): Real;
    Function  Verifica_Preco_Especial ( Produto: String; Cliente: Integer ):Real;
    Procedure Analise_Custos( Venda: Integer );
    Function  Quantidade_Produto_Venda ( Venda: Integer; Produto: String ): Real;
    Procedure Troca_Produto_Fiscal_Venda ( Venda: Integer; Produto, Fiscal: String );
    Procedure Seta_Impostos_Servicos ( Venda: Integer; IRRF, ISS, PIS_COFINS_CSLL, INSS: Real );

    Procedure Insere_Cheque ( BANCO: String; CONTA: String; CHEQUE: String; VENDA: INTEGER ; EMISSAO: TDateTime ;
    PRE_DATE: TDateTime; VALOR: Real; CONCILIADO: String; PESSOA_FJ: INTEGER ; HISTORICO: String ; AGENCIA: string
    ;NOME: String;  TIPO: String; DVCHEQUE: String; DVAGENCIA: String; Turno: Integer; Usuario: Integer; Data_Caixa: TDateTime );

    Procedure Insere_Mov_Contabil ( Data: TDateTime; Tipo: String; Documento: String; Historico: String; Valor: Real;
                                    Conta: Integer; Origem: String; Contra_Partida: Integer;
                                    Banco: String; Tipo_Lancamento: String;
                                    Cod_Doc: String; Fornecedor: Integer );

    Procedure Insere_Mov_Contabil_Caixa ( Data: TDateTime; Tipo: String; Documento: String; Historico: String; Valor: Real;
                                    Conta: Integer; Origem: String; Contra_Partida: Integer;
                                    Banco: String; Tipo_Lancamento: String;
                                    Cod_Doc: String; Fornecedor: Integer; Planilha: Integer );

    Procedure Insere_Forma_Venda(Codigo: Integer; Forma_Pagto: Integer; Sequencia: Integer; Valor_Original: Real; Juros: Real; Tipo_Pagto: String; Nome_Forma: String;
                                 Banco: String; Agencia: String; Conta: String; Cheque: String;
                                 DVCONTA: STRING; DVAGENCIA: STRING; DVCHEQUE: STRING; AVISTA: STRING;
                                 DATA_CAIXA : TDateTime; CONTA_CAIXA: Integer; USUARIO_CAIXA: Integer; TURNO: Integer );

    Procedure Insere_Produto_Pdv ( Codigo, Nome, Secundario, Ecf, Est_Negativo, Pesavel: String; Valor: Real; Validade: Integer );

    Procedure Apaga_Formas_Venda( Codigo: Integer );
    function  Saldo_Haver( Codigo: Integer ): Real;
    function  Saldo_Retiradas_Venda( Codigo: Integer ): Real;
    function  Soma_Retiradas( Codigo: Integer ): Real;
    Function  Cupom_Venda ( Venda: Integer; Serie: String ):Integer;
    Function  VER_VENDA_CF ( Cupom: Integer ):Integer;
    procedure Vendas_Cor ( Venda: Integer; Produto: String; Sequencia: Integer );
    procedure Orcamentos_Itens ( Orcamento: Integer; Produto: String; Sequencia: Integer );
    Function  Soma_Conciliados_Data: Real;
    Function  Soma_Cheques_Conciliados_Data ( Data: TDateTime ): Real;
    Function  Soma_Cheques_Devolvidos( Pessoa: Integer ): Real;
    Function  Soma_Entrada_Pag_Rec_Caixa ( Data: TDateTime; Tipo: String ): Real;

    //FINANCEIRO
    Procedure Trocar_Centro( Codigo, Ano, Centro: Integer );

    //PDV
    Procedure Lanca_Convenio_Pdv( Cupom: Integer; Cliente: Integer; Valor: Real; Vencimento: TDateTime; Data: TDateTime; Historico: String );
    Procedure Lanca_Pagar_Pdv (Cupom: Integer; Cliente: Integer; Valor: Real; Vencimento: TDateTime; Data: TDateTime; Historico: String);
    Function  Dia_Pref_Faturamento( Cliente: Integer ): Integer;

    Function  Vendas_Abertas_Vendedor( Vendedor: Integer ): Integer;
    Function  Vendas_Abertas_Mesas( Mesa: Integer ): Integer;


    //Caixa
    Function  Verifica_Caixa( UsuarioVer: Integer; ContaVer: Integer; DataVer: TDateTime ): String;
    Function  Fechar_Caixa_Geral( UsuarioVer: Integer; ContaVer: Integer; DataVer: TDateTime; TurnoVer: Integer; Saldo: Real ): Integer;
    Procedure Cancela_Nota( CNPJ: String; CODIGO: Integer; Caixa: TDateTime );
    Procedure Cancela_Pedido( CNPJ: String; CODIGO: Integer; Caixa: TDateTime );
    Procedure Extorna_Cancelamento_Venda ( CODIGO: Integer );
    Function  NomeUsuario( Usuario: Integer): String;

    Procedure Lanca_Contabilidade_Movimentos( Data: TDateTime; Usuario: Integer; Conta: Integer; Planilha: Integer;  Turno: Integer );
    Procedure Lanca_Contabilidade_Movimentos_Geral( Data: TDateTime; Conta: Integer; Planilha: Integer );
    Procedure Lanca_Diferenca_Caixa_Geral( Data: TDateTime; Conta: Integer; Planilha: Integer );

    Procedure Lanca_Contabilidade_Prod_Caixa( Data: TDateTime; Usuario: Integer; Planilha: Integer; Turno: Integer );
    Procedure Lanca_Contabilidade_Prod_Caixa_Geral( Data: TDateTime; Planilha: Integer );

    Procedure Lanca_Receber_Caixa( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer;  Turno: Integer );
    Procedure Lanca_Receber_Caixa_Geral( Data: TDateTime; Planilha: Integer; Conta: Integer );
    Procedure Lanca_DescJur_Caixa_Geral( Data: TDateTime; Planilha: Integer; Conta: Integer );

    Procedure Lanca_Notas_Caixa( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer; Turno: Integer );
    Procedure Lanca_Notas_Caixa_Geral( Data: TDateTime; Planilha: Integer; Conta: Integer );

    Procedure Lanca_Dinheiro_Caixa  ( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer  ; Turno: Integer );
    Procedure Lanca_Dinheiro_Caixa_Geral  ( Data: TDateTime; Planilha: Integer; Conta: Integer  );

    Procedure Lanca_Moedas_Caixa       ( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer  ; Turno: Integer);
    Procedure Lanca_Moedas_Caixa_Geral ( Data: TDateTime; Planilha: Integer; Conta: Integer );

    Procedure Lanca_Chq_Prazo_Caixa ( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer  ; Turno: Integer);
    Procedure Lanca_Chq_Prazo_Caixa_Geral ( Data: TDateTime; Planilha: Integer; Conta: Integer );

    Procedure Lanca_Cartao_Caixa       ( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer  ; Turno: Integer);
    Procedure Lanca_Cartao_Caixa_Geral ( Data: TDateTime; Planilha: Integer; Conta: Integer );

    Procedure Lanca_Haver_Caixa ( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer; Turno: Integer );
    Procedure Lanca_Haver_Caixa_Geral ( Data: TDateTime; Planilha: Integer; Conta: Integer );

    Procedure Lanca_Baixa_Haver_Caixa ( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer; Turno: Integer );
    Procedure Lanca_Baixa_Haver_Caixa_Geral ( Data: TDateTime; Planilha: Integer; Conta: Integer );

    Procedure Lanca_Movto_Caixa ( Usuario, Conta, Turno: Integer; Data: TDateTime; Valor: Real; Tipo, Documento, Historico: String );

    //FLUXO DE CAIXA
    Function  SOMAS_FLUXO( Data: TDateTime; Procedimento: String ): Real;

    //Cadastros
    Procedure Insere_Indicacao ( Pessoa_Fj: Integer; Indicado: Integer; Porcentagem: Real; Nome: String; Inicio: TDateTime );
    Procedure Apaga_Indicacao ( Pessoa_Fj: Integer; Indicado: Integer );
    Function  Ver_Cpf_Cnpj( Pessoa_Fj: Integer ): String;
    Procedure Responder_Mensagem ( Remetente, Destinatario, Reservado, Assunto, Mensagem: StRING; Dt_Envio: TDateTime );

    procedure Insere_Etiquetas ( CODIGO, NOME: String;  VALOR: Real;  QUANTIDADE: Integer;
    SEQUENCIA: Integer;  NUMERO: String;  GRADE: String );


    Procedure Transfere_Notas_Cliente ( Venda, Cliente: Integer );
    Procedure Transfere_Cadastros ( Origem, Destino: Integer; Tabela: String );
    Procedure Transfere_Cadastros_Propriedade ( Origem, Destino, POrigem, PDestino: Integer; Tabela: String );
    Procedure Transfere_Produtos ( Origem, Destino: String; Tabela: String );
    procedure PROCESSA_CONCILIACAO_CARTAO ( Data: TDateTime; Banco: Integer );
    procedure PROCESSA_CONCILIACAO_CHEQUE ( Data: TDateTime; Codigo: Integer; Tipo: Char);
    function VerificaTipoDoctoBoleto(Sigla:String):boolean;
    procedure LOG_TRANSACOES ( DOCUMENTO, ORIGEM: STRING );

    //Consulta Cheques
    


    //CONFIGURACOES
    Procedure Cria_Menu ( Categoria, Nome, Computador: String; Codigo: Integer );
    function SetKEY_RELEASE(chave: string):boolean;
    function GetDBVersao:Integer;
    function GetKEY_RELEASE:String;
    Procedure Cria_Menu_Item ( Categoria, Nome, Caption, Computador: String; Codigo: Integer );
    Function  DataServidor: TDateTime;

    function CaixaFechado(Data :TDate; Usuario, Turno :Integer; Cnpj :String):Boolean;

    //Boletos - Impressos pelo sistema (GBCobrança/CobreBem)
    procedure ImprimeTitulo(Codigo,ContaCorrente: integer; Origem: char;Trans:TIBTransaction=nil);
    procedure GeraRemessa(UPDTit:Boolean = False; Data1: TDate = 0;Data2: TDate = 0);
    procedure InsereTitulosCbx(ContaCorrente:Integer;DataSet: TIBQuery;DtVencto : TDate = 0);
    procedure InsereTitulos(ContaCorrente:Integer;DtVencto : TDate = 0;Trans:TIBTransaction=nil);
    procedure RetornoBolestos;
    procedure ConfigurarRelatorio(Report:TppReport;Designer:TppDesigner;Relatorio:String);
  end;

var
  DmApp: TDmApp;
  CobreBemX: Variant;
  

const
     feeSMTPBoletoHTML = $00000000;
     feeSMTPMensagemBoletoHTMLAnexo = $00000001;
     feeSMTPMensagemBoletoPDFAnexo = $00000002;
     feeSMTPMensagemLinhaDigitavelURLCobreBemECommerce = $00000003;
     feeSMTPMensagemURLCobreBemECommerce = $00000004;
     feeSMTPMensagemLinhaDigitavel = $00000005;
     feeOutlookBoletoHTML = $00000006;
     feeOutlookMensagemBoletoHTMLAnexo = $00000007;
     feeOutlookMensagemBoletoPDFAnexo = $00000008;
     feeOutlookMensagemLinhaDigitavelURLCobreBemECommerce = $00000009;
     feeOutlookMensagemURLCobreBemECommerce = $0000000A;
     feeOutlookMensagemLinhaDigitavel = $0000000B;
     scpExecutar = $00000000;
     scpOK = $00000001;
     scpInvalido = $00000002;
     scpErro = $00000003;

implementation

uses
    Procedures_DM,
    Localizar_Form,
    Usuarios_DM,
    Main,
    Identificacao_Form,
    OpUsuario_Form,
    Funcoes,
    Filtrar_Form,
    Empresas_DM,
    SelEmpresa_Form,
    LocalizarProd_DM,
    LocalizarProd_Form,
    Financeiro_Dm,
    VerificaLimiteCredito_Form,
    Seleciona_Caixas_Form,
    Vendas_Dm,
    Procedures2_DM,
    Procedures5_DM,
    MensagemDisPlay_Form,
    DigitaCotacoes_Form,
    Plano_DM,
    Procedures3_DM,
    EntraSenha_Form,
    Ctb_Altera_Movimentos_Form,
    Procedures4_DM, Pdv_Frm, ListagemMod_Form, Empresas_Form,
  NFeStatus_Form, Cadastros_Dm2, ACBrNFeWebServices, pcnNFe, Vendas_DM2,
  Financeiro_Dm2, EstoqueMaxMin_FRel2, ACBrNFeNotasFiscais,
  TipoFaturaVenda_Form;

{$R *.DFM}


Procedure TDmApp.Fecha_Entrada_Manual ( Codigo: Integer );
Begin
  TRY
     If DMProcs5 = Nil Then
        DMProcs5 := TDMProcs5.Create(Self);

     If Not DmaPP.TransactionProc.InTransaction
     then
         DmaPP.TransactionProc.StartTransaction ;

     DMProcs5.FECHA_ENTRADA_MANUAL.ParamByName('CNPJ'  ).asString  := DmApp.Cnpj ;
     DMProcs5.FECHA_ENTRADA_MANUAL.ParamByName('CODIGO').asInteger := CODIGO     ;

     DMProcs5.FECHA_ENTRADA_MANUAL.ExecProc ;

     DMProcs5.Free   ;
     DMProcs5 := Nil ;

     DmApp.TransactionProc.Commit ;
   except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
   end;
end;


Procedure TDmApp.ConfiguraTabela ( DataSource: TDataSource );
Var
   i: Integer;
begin
     For i := 0 To Datasource.Dataset.FieldCount - 1
     Do begin
//        If Datasource.Dataset.Fields.Fields[i].DisplayLabel = DisplayLabel
//        Then
//            Result := Datasource.Dataset.Fields.Fields[i].FieldName;
     end;
end;

Procedure TDmApp.Digita_Cotacao;
begin
//
end;

procedure TDmApp.LOG_TRANSACOES ( DOCUMENTO, ORIGEM: STRING );
Var
   USUARIO: Integer;
   COMPUTADOR: String;
   HORA, DATA: TDATETIME;
Begin
     try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        USUARIO    := DMAPP.USR_CONECTADO ;
        COMPUTADOR := NOMECOMPUTADOR      ;
        HORA       := NOW                 ;
        DATA       := DMAPP.Data_Servidor ;

        DMProcs4.CRIA_LOG_TRANSACOES.ParamByName ('CNPJ'      ).asString  := DmaPP.Cnpj  ;
        DMProcs4.CRIA_LOG_TRANSACOES.ParamByName ('CODIGO'    ).asInteger := 0           ;
        DMProcs4.CRIA_LOG_TRANSACOES.ParamByName ('DOCUMENTO' ).asString  := DOCUMENTO   ;
        DMProcs4.CRIA_LOG_TRANSACOES.ParamByName ('ORIGEM'    ).asString  := ORIGEM      ;
        DMProcs4.CRIA_LOG_TRANSACOES.ParamByName ('USUARIO'   ).asInteger := USUARIO     ;
        DMProcs4.CRIA_LOG_TRANSACOES.ParamByName ('DATA'      ).asDate    := DATA        ;
        DMProcs4.CRIA_LOG_TRANSACOES.ParamByName ('HORA'      ).asTime    := HORA        ;
        DMProcs4.CRIA_LOG_TRANSACOES.ParamByName ('COMPUTADOR').asString  := COMPUTADOR  ;

        DMProcs4.CRIA_LOG_TRANSACOES.ExecProc;

        DMProcs4.CRIA_LOG_TRANSACOES.CLOSE ;

        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

procedure TDmApp.Insere_Etiquetas ( CODIGO, NOME: String;  VALOR: Real;  QUANTIDADE: Integer;
    SEQUENCIA: Integer;  NUMERO: String;  GRADE: String );
Begin
     try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs4.INSERE_ETIQUETA_PRODUTO.ParamByName ('CNPJ'      ).asString  := DmaPP.Cnpj  ;
        DMProcs4.INSERE_ETIQUETA_PRODUTO.ParamByName ('CODIGO'    ).asString  := CODIGO      ;
        DMProcs4.INSERE_ETIQUETA_PRODUTO.ParamByName ('NOME'      ).asString  := NOME        ;
        DMProcs4.INSERE_ETIQUETA_PRODUTO.ParamByName ('VALOR'     ).asFloat   := VALOR       ;
        DMProcs4.INSERE_ETIQUETA_PRODUTO.ParamByName ('QUANTIDADE').asInteger := QUANTIDADE  ;
        DMProcs4.INSERE_ETIQUETA_PRODUTO.ParamByName ('SEQUENCIA' ).asInteger := SEQUENCIA   ;
        DMProcs4.INSERE_ETIQUETA_PRODUTO.ParamByName ('NUMERO'    ).asString  := NUMERO      ;
        DMProcs4.INSERE_ETIQUETA_PRODUTO.ParamByName ('GRADE'     ).asString  := GRADE       ;


        DMProcs4.INSERE_ETIQUETA_PRODUTO.ExecProc;

        DMProcs4.INSERE_ETIQUETA_PRODUTO.CLOSE ;

        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

procedure TDmApp.Atualiza_Orcamentos_Externos ;
Begin
     try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs4.ATUALIZA_ORCAMENTOS.ExecProc;

        DMProcs4.ATUALIZA_ORCAMENTOS.CLOSE ;

        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Transfere_Notas_Cliente ( Venda, Cliente: Integer );
Begin
     try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs4.TRANSFERE_NOTA_ENTRE_CLIENTE.ParamByName ('CNPJ'   ).asString  := DmaPP.Cnpj    ;
        DMProcs4.TRANSFERE_NOTA_ENTRE_CLIENTE.ParamByName ('VENDA'  ).asInteger := Venda         ;
        DMProcs4.TRANSFERE_NOTA_ENTRE_CLIENTE.ParamByName ('DESTINO').asInteger := Cliente       ;

        DMProcs4.TRANSFERE_NOTA_ENTRE_CLIENTE.ExecProc;

        DMProcs4.TRANSFERE_NOTA_ENTRE_CLIENTE.CLOSE ;

        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Transfere_Cadastros ( Origem, Destino: Integer; Tabela: String );
Begin
     try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.TRANSFERE_CADASTROS.StoredProcName := TABELA ;

        DMProcs3.TRANSFERE_CADASTROS.ParamByName ('CNPJ'   ).asString  := DmaPP.Cnpj    ;
        DMProcs3.TRANSFERE_CADASTROS.ParamByName ('ORIGEM' ).asInteger := Origem        ;
        DMProcs3.TRANSFERE_CADASTROS.ParamByName ('DESTINO').asInteger := Destino       ;

        DMProcs3.TRANSFERE_CADASTROS.ExecProc;
        DMProcs3.TRANSFERE_CADASTROS.close;


        DmApp.TransactionProc.Commit;
        Application.MessageBox('Cadastro transferido com sucesso!','Aviso',mb_ok+mb_iconinformation);
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Transfere_Cadastros_Propriedade ( Origem, Destino, pOrigem, pDestino: Integer; Tabela: String );
Begin
     try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.TRANSFERE_PROPRIEDADE.StoredProcName := TABELA ;

        DMProcs3.TRANSFERE_PROPRIEDADE.ParamByName ('CNPJ'   ).asString  := DmaPP.Cnpj    ;
        DMProcs3.TRANSFERE_PROPRIEDADE.ParamByName ('ORIGEM' ).asInteger := Origem        ;
        DMProcs3.TRANSFERE_PROPRIEDADE.ParamByName ('DESTINO').asInteger := Destino       ;
        DMProcs3.TRANSFERE_PROPRIEDADE.ParamByName ('PORIGEM').asInteger := POrigem ;
        DMProcs3.TRANSFERE_PROPRIEDADE.ParamByName ('PDESTINO').asInteger := PDestino ;

        DMProcs3.TRANSFERE_PROPRIEDADE.ExecProc;
        DMProcs3.TRANSFERE_PROPRIEDADE.close;


        DmApp.TransactionProc.Commit;
        Application.MessageBox('Cadastro transferido com sucesso!','Aviso',mb_ok+mb_iconinformation);
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Transfere_Produtos ( Origem, Destino: String; Tabela: String );
Begin
     try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs5 = Nil Then
           DMProcs5 := TDMProcs5.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs5.TRANSFERE_PRODUTOS.StoredProcName := TABELA ;

        DMProcs5.TRANSFERE_PRODUTOS.ParamByName ('CNPJ'   ).asString  := DmaPP.Cnpj    ;
        DMProcs5.TRANSFERE_PRODUTOS.ParamByName ('ORIGEM' ).asString  := Origem        ;
        DMProcs5.TRANSFERE_PRODUTOS.ParamByName ('DESTINO').asString  := Destino       ;

        DMProcs5.TRANSFERE_PRODUTOS.ExecProc;

        DMProcs5.TRANSFERE_PRODUTOS.CLOSE ;

        DMProcs5.Free;
        DMProcs5 := Nil;

        DmApp.TransactionProc.Commit ;
        Application.MessageBox('Cadastro transferido com sucesso!','Aviso',mb_ok+mb_iconinformation);
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Inserir_Num_Grade( Produto: String; Grade: String; Numero: String );
Begin
     try
        DmaPP.Transaction.CommitRetaining ;


        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.INSERIR_NUMERO_GRADE.ParamByName ('CNPJ' ).asString     := DmaPP.Cnpj       ;
        DMProcs3.INSERIR_NUMERO_GRADE.ParamByName ('PRODUTO').asString   := Produto          ;
        DMProcs3.INSERIR_NUMERO_GRADE.ParamByName ('GRADE').asString     := Grade            ;
        DMProcs3.INSERIR_NUMERO_GRADE.ParamByName ('NUMERO').asString    := COPY(Numero,1,6) ;

        DMProcs3.INSERIR_NUMERO_GRADE.ExecProc;

        DMProcs3.INSERIR_NUMERO_GRADE.CLOSE ;


        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Movto_Caixa ( Usuario, Conta, Turno: Integer; Data: TDateTime; Valor: Real; Tipo, Documento, Historico: String );
Begin
     try
        DmaPP.Transaction.CommitRetaining ;


        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.LANCA_MOVIMENTO_CAIXA.ParamByName ('CNPJ'     ).asString   := DmaPP.Cnpj    ;
        DMProcs3.LANCA_MOVIMENTO_CAIXA.ParamByName ('USUARIO'  ).asInteger  := Usuario       ;
        DMProcs3.LANCA_MOVIMENTO_CAIXA.ParamByName ('CONTA'    ).asInteger  := Conta         ;
        DMProcs3.LANCA_MOVIMENTO_CAIXA.ParamByName ('DATA'     ).asDate     := Data          ;
        DMProcs3.LANCA_MOVIMENTO_CAIXA.ParamByName ('VALOR'    ).asFloat    := Valor         ;
        DMProcs3.LANCA_MOVIMENTO_CAIXA.ParamByName ('TIPO'     ).asString   := Tipo          ;
        DMProcs3.LANCA_MOVIMENTO_CAIXA.ParamByName ('DOCUMENTO').asString   := copy(Documento,1,20)  ;
        DMProcs3.LANCA_MOVIMENTO_CAIXA.ParamByName ('HISTORICO').asString   := copy(Historico,1,100) ;
        DMProcs3.LANCA_MOVIMENTO_CAIXA.ParamByName ('TURNO'    ).asInteger  := Turno         ;

        DMProcs3.LANCA_MOVIMENTO_CAIXA.ExecProc;

        DMProcs3.LANCA_MOVIMENTO_CAIXA.CLOSE ;



        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Agenda_Cobrancas_Pessoa ( Inicial, Final, Data_Servidor, Cobrar: TDateTime; Pessoa, Motivo, Cobrador, Receber: Integer; Historico: String; Origem: String ) ;
Begin
     try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.AGENDAR_COBRANCAS_PESSOA.ParamByName ('CNPJ' ).asString        := DmaPP.Cnpj    ;
        DMProcs3.AGENDAR_COBRANCAS_PESSOA.ParamByName ('INI'  ).asDate          := Inicial       ;
        DMProcs3.AGENDAR_COBRANCAS_PESSOA.ParamByName ('FIM'  ).asDate          := Final         ;
        DMProcs3.AGENDAR_COBRANCAS_PESSOA.ParamByName ('PESSOA').asInteger      := Pessoa        ;
        DMProcs3.AGENDAR_COBRANCAS_PESSOA.ParamByName ('HISTORICO').asString    := Historico     ;
        DMProcs3.AGENDAR_COBRANCAS_PESSOA.ParamByName ('MOTIVO').asInteger      := Motivo        ;
        DMProcs3.AGENDAR_COBRANCAS_PESSOA.ParamByName ('DATA_SERVIDOR').asDate  := Data_Servidor ;
        DMProcs3.AGENDAR_COBRANCAS_PESSOA.ParamByName ('COBRAR').asDate         := Cobrar        ;
        DMProcs3.AGENDAR_COBRANCAS_PESSOA.ParamByName ('COBRADOR').asInteger    := Cobrador      ;
        DMProcs3.AGENDAR_COBRANCAS_PESSOA.ParamByName ('RECEBER').asInteger     := Receber       ;
        DMProcs3.AGENDAR_COBRANCAS_PESSOA.ParamByName ('ORIGEM').asString       := Origem        ;

        DMProcs3.AGENDAR_COBRANCAS_PESSOA.ExecProc;

        DMProcs3.AGENDAR_COBRANCAS_PESSOA.CLOSE ;


        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Analise_Custos( Venda: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.ANALISE_CUSTOS.ParamByName ('CNPJ' ).asString  := DmaPP.Cnpj ;
        DMProcs3.ANALISE_CUSTOS.ParamByName ('VENDA').asInteger := Venda      ;

        DMProcs3.ANALISE_CUSTOS.ExecProc;

        DMProcs3.ANALISE_CUSTOS.CLOSE ;



        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Apaga_Etiquetas_Impressas ;
BEGIN
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs4.APAGA_ETIQUETAS_IMPRESSAS.ParamByName ('CNPJ').asString  := DmaPP.Cnpj ;

        DMProcs4.APAGA_ETIQUETAS_IMPRESSAS.ExecProc;

        DMProcs4.APAGA_ETIQUETAS_IMPRESSAS.CLOSE ;

        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Apaga_Etiquetas_Matriz ;
BEGIN
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs4.APAGA_ETIQUETAS_MATRIZ.ParamByName ('CNPJ').asString  := DmaPP.Cnpj ;

        DMProcs4.APAGA_ETIQUETAS_MATRIZ.ExecProc;

        DMProcs4.APAGA_ETIQUETAS_MATRIZ.CLOSE ;

        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ; 

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Possui_Grade ( Produto: String ): Boolean;
BEGIN
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs4.POSSUI_GRADE.ParamByName ('CNPJ'   ).asString  := DmaPP.Cnpj ;
        DMProcs4.POSSUI_GRADE.ParamByName ('PRODUTO').asString  := Produto    ;

        DMProcs4.POSSUI_GRADE.ExecProc;

        If DMProcs4.POSSUI_GRADE.ParamByName('QUANTIDADE').ISnULL
        Then begin
            Result := False ;
        end
        else begin
             IF DMProcs4.POSSUI_GRADE.ParamByName('QUANTIDADE').Value > 0
             THEN
                 Result := True
             ELSE
                 Result := False ;
        end;

        DMProcs4.POSSUI_GRADE.CLOSE ;

        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Indexa_Custos ( Indexador: Real );
BEGIN
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs4.INDEXA_CUSTOS.ParamByName ('CNPJ'      ).asString  := DmaPP.Cnpj ;
        DMProcs4.INDEXA_CUSTOS.ParamByName ('INDEXADOR' ).asFloat   := Indexador  ;

        DMProcs4.INDEXA_CUSTOS.ExecProc;

        DMProcs4.INDEXA_CUSTOS.CLOSE ;

        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.Soma_Entrada_Pag_Rec_Caixa ( Data: TDateTime; Tipo: String ): Real;
BEGIN
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        IF TIPO = 'PGR'
        THEN BEGIN
             DMProcs4.SOMA_ENTRADA_PAG_REC_CAIXA.STOREDPROCNAME := 'SOMA_ENTRADA_PAGAR_CAIXA';
        END
        ELSE BEGIN
             DMProcs4.SOMA_ENTRADA_PAG_REC_CAIXA.STOREDPROCNAME := 'SOMA_ENTRADA_RECEBER_CAIXA';
        END;

        DMProcs4.SOMA_ENTRADA_PAG_REC_CAIXA.ParamByName ('CNPJ').asString  := DmaPP.Cnpj ;
        DMProcs4.SOMA_ENTRADA_PAG_REC_CAIXA.ParamByName ('DATA').asDate    := Data ;

        DMProcs4.SOMA_ENTRADA_PAG_REC_CAIXA.ExecProc;

        If DMProcs4.SOMA_ENTRADA_PAG_REC_CAIXA.ParamByName('SOMA').ISnULL
        Then begin
            Result := 0 ;
        end
        else begin
             Result := DMProcs4.SOMA_ENTRADA_PAG_REC_CAIXA.ParamByName('SOMA').Value ;
        end;

        DMProcs4.SOMA_ENTRADA_PAG_REC_CAIXA.CLOSE ;

        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Caixas_Frentista_Abertos ( Data: TDateTime ): Integer ;
BEGIN
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs5 = Nil Then
           DMProcs5 := TDMProcs5.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs5.VERIFICA_CAIXA_ABERTO.ParamByName ('CNPJ'  ).asString  := Dmapp.Cnpj ;
        DMProcs5.VERIFICA_CAIXA_ABERTO.ParamByName ('DATA'  ).asDate    := Data       ;

        DMProcs5.VERIFICA_CAIXA_ABERTO.ExecProc;

        If DMProcs5.VERIFICA_CAIXA_ABERTO.ParamByName('QUANTIDADE').ISnULL
        Then begin
            Result := 0 ;
        end                                                                          
        else begin
             Result := DMProcs5.VERIFICA_CAIXA_ABERTO.ParamByName('QUANTIDADE').Value;
        end;

        DMProcs5.VERIFICA_CAIXA_ABERTO.CLOSE ;

        DMProcs5.Free;
        DMProcs5 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Cotacao_Dolar ( Data: TDateTime ): Real ;
BEGIN
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs4.COTACAO_DOLAR.ParamByName ('DATA').asDate  := Data ;

        DMProcs4.COTACAO_DOLAR.ExecProc;

        If DMProcs4.COTACAO_DOLAR.ParamByName('VALOR').ISnULL
        Then begin
            Result := 0 ;
        end
        else begin
             Result := DMProcs4.COTACAO_DOLAR.ParamByName('VALOR').Value ;
        end;

        DMProcs4.COTACAO_DOLAR.CLOSE ;

        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function  TDmApp.Verifica_Cheque ( Banco, Conta, Cheque: String ): String ;
BEGIN
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs4.VERIFICA_FIN_CHEQUES.ParamByName ('CNPJ'     ).asString  := DmaPP.Cnpj ;
        DMProcs4.VERIFICA_FIN_CHEQUES.ParamByName ('BANCO'    ).asString  := Banco      ;
        DMProcs4.VERIFICA_FIN_CHEQUES.ParamByName ('CONTA'    ).asString  := Conta      ;
        DMProcs4.VERIFICA_FIN_CHEQUES.ParamByName ('CHEQUE'   ).asString  := Cheque     ;

        DMProcs4.VERIFICA_FIN_CHEQUES.ExecProc;

        If DMProcs4.VERIFICA_FIN_CHEQUES.ParamByName('NUMERO').ISnULL
        Then begin
            Result := 'N' ;
        end
        else begin
             If DMProcs4.VERIFICA_FIN_CHEQUES.ParamByName('NUMERO').value > 0
             then
                 Result := 'S'
             else
                 Result := 'N';
        end;

        DMProcs4.VERIFICA_FIN_CHEQUES.CLOSE ;

        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function  TDmApp.Valida_Convenio (Pessoa, Conveniado: Integer): String ;
BEGIN
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs4.VALIDA_CONVENIO.ParamByName ('CNPJ'     ).asString  := DmaPP.Cnpj ;
        DMProcs4.VALIDA_CONVENIO.ParamByName ('PESSOA_FJ').asInteger := Pessoa     ;
        DMProcs4.VALIDA_CONVENIO.ParamByName ('CODIGO'   ).asInteger := Conveniado ;

        DMProcs4.VALIDA_CONVENIO.ExecProc;

        If DMProcs4.VALIDA_CONVENIO.ParamByName('NOME').ISnULL
        Then
            Result := ''
        else
            Result := DMProcs4.VALIDA_CONVENIO.ParamByName('NOME').Value ;

        DMProcs4.VALIDA_CONVENIO.CLOSE ;

        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Cupom_Venda ( Venda: Integer; Serie: String ):Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;


        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.VER_NFCF_VENDA.ParamByName ('CNPJ'  ).asString  := DmaPP.Cnpj ;
        DMProcs3.VER_NFCF_VENDA.ParamByName ('CODIGO').asInteger := Venda      ;
        DMProcs3.VER_NFCF_VENDA.ParamByName ('SERIE' ).asString  := Serie      ;

        DMProcs3.VER_NFCF_VENDA.ExecProc;

        If DMProcs3.VER_NFCF_VENDA.ParamByName('CF').ISnULL
        Then
            Result := 0
        else
            Result := DMProcs3.VER_NFCF_VENDA.ParamByName('CF').Value ;

        DMProcs3.VER_NFCF_VENDA.CLOSE ;



        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.VER_VENDA_CF ( Cupom: Integer ):Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.VER_VENDA_CF.ParamByName ('CNPJ'       ).asString  := DmaPP.Cnpj ;
        DMProcs3.VER_VENDA_CF.ParamByName ('CODIGO'     ).asInteger := Cupom      ;

        DMProcs3.VER_VENDA_CF.ExecProc;

        If DMProcs3.VER_VENDA_CF.ParamByName('VENDA').ISnULL
        Then
            Result := 0
        else
            Result := DMProcs3.VER_VENDA_CF.ParamByName('VENDA').Value ;

        DMProcs3.VER_VENDA_CF.CLOSE ;


        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Confere_Docto_Pagar( Docto: String; Fornecedor, Codigo, Ano: Integer ): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs5 = Nil Then
           DMProcs5 := TDMProcs5.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs5.CONFERE_DOCTO_PAGAR.ParamByName ('CNPJ'       ).asString  := DmaPP.Cnpj ;
        DMProcs5.CONFERE_DOCTO_PAGAR.ParamByName ('PESSOA_FJ'  ).asInteger := Fornecedor ;
        DMProcs5.CONFERE_DOCTO_PAGAR.ParamByName ('DOCTO'      ).asString  := Docto      ;
        DMProcs5.CONFERE_DOCTO_PAGAR.ParamByName ('CODIGO'     ).asInteger := Codigo     ;
        DMProcs5.CONFERE_DOCTO_PAGAR.ParamByName ('ANO'        ).asInteger := Ano        ;

        DMProcs5.CONFERE_DOCTO_PAGAR.ExecProc;

        If DMProcs5.CONFERE_DOCTO_PAGAR.ParamByName('NUMERO').ISnULL
        Then
            Result := 0
        else
            Result := DMProcs5.CONFERE_DOCTO_PAGAR.ParamByName('NUMERO').Value ;

        DMProcs5.CONFERE_DOCTO_PAGAR.CLOSE ;

        DMProcs5.Free;
        DMProcs5 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Confere_Docto_Receber( Tipo, Docto: String ): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.CONFERE_DOCTO_RECEBER.ParamByName ('CNPJ'       ).asString  := DmaPP.Cnpj ;
        DMProcs3.CONFERE_DOCTO_RECEBER.ParamByName ('TIPO_DOCTO' ).asString  := Tipo       ;
        DMProcs3.CONFERE_DOCTO_RECEBER.ParamByName ('DOCTO'      ).asString  := Docto      ;

        DMProcs3.CONFERE_DOCTO_RECEBER.ExecProc;

        If DMProcs3.CONFERE_DOCTO_RECEBER.ParamByName('NUMERO').ISnULL
        Then
            Result := 0
        else
            Result := DMProcs3.CONFERE_DOCTO_RECEBER.ParamByName('NUMERO').Value ;

        DMProcs3.CONFERE_DOCTO_RECEBER.CLOSE ;


        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.SOMAS_FLUXO( Data: TDateTime; Procedimento: String ): Real;
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs4.SOMAS_FLUXO.StoredProcName := Procedimento ;

        DMProcs4.SOMAS_FLUXO.ParamByName ('CNPJ'  ).asString  := DmaPP.Cnpj ;
        DMProcs4.SOMAS_FLUXO.ParamByName ('DATA'  ).asDate    := Data       ;

        DMProcs4.SOMAS_FLUXO.ExecProc;

        If DMProcs4.SOMAS_FLUXO.ParamByName('SOMA').ISnULL
        Then
            Result := 0
        else
            Result := DMProcs4.SOMAS_FLUXO.ParamByName('SOMA').Value ;

        DMProcs4.SOMAS_FLUXO.CLOSE ;

        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Ver_Cpf_Cnpj(Pessoa_Fj: Integer): String;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.VER_CPF_CNPJ.ParamByName ('CNPJ'      ).asString  := DmaPP.Cnpj ;
        DMProcs3.VER_CPF_CNPJ.ParamByName ('PESSOA_FJ' ).asInteger := Pessoa_Fj  ;

        DMProcs3.VER_CPF_CNPJ.ExecProc;

        If DMProcs3.VER_CPF_CNPJ.ParamByName('CPF_CNPJ').ISnULL
        Then
            Result := ''
        else
            Result := DMProcs3.VER_CPF_CNPJ.ParamByName('CPF_CNPJ').Value ;

        If Result <> ''
        then begin
             If Length(Result) <= 11
             then
                 Result := MascaraCpf( Result )
             Else
                 Result := MascaraCNPJ( Result ) ;
        end;

        DMProcs3.VER_CPF_CNPJ.CLOSE ;
        //


        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.DataServidor: TDateTime;
Var
   ativa : boolean;
   Hora, Minutos, Segundos, Mili: Word;
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        ativa := DmaPP.TransactionProc.InTransaction;
        If Not ativa  then
          DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.DATA_SERVIDOR.ExecProc;

        If DMProcs3.DATA_SERVIDOR.ParamByName('DATA').ISnULL then
            Result := date
        else
            Result := DMProcs3.DATA_SERVIDOR.ParamByName('DATA').asDateTime ;

        //Armazena a Variavel
        Data_Servidor := Result  ;

        //Armazena a Variavel no formulario principal
        //frmMain.edtData.Date := Data_Servidor ;

        DecodeTime(Now, Hora, Minutos, Segundos, Mili );

        //Seta a Data e Hora Local
        SetarDataSistema(Data_Servidor, Hora, Minutos );

        DMProcs3.DATA_SERVIDOR.CLOSE ;

        If Not ativa  then
          DmApp.TransactionProc.Commit
        else
          DmApp.TransactionProc.CommitRetaining;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           If Not ativa  then
             DmApp.TransactionProc.Rollback
           else
             DmApp.TransactionProc.RollbackRetaining;

     end;
end;

Function  TDmApp.Extorna_Caixa( Usuario: Integer; Conta: Integer; Data: TDateTime ): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;
        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.EXTORNA_CAIXA.ParamByName ('CNPJ'     ).asString  := DmaPP.Cnpj ;
        DMProcs3.EXTORNA_CAIXA.ParamByName ('USUARIO'  ).asInteger := Usuario    ;
        DMProcs3.EXTORNA_CAIXA.ParamByName ('CONTA'    ).asInteger := Conta      ;
        DMProcs3.EXTORNA_CAIXA.ParamByName ('DATA'     ).asDate    := Data       ;

        DMProcs3.EXTORNA_CAIXA.ExecProc;

        If DMProcs3.EXTORNA_CAIXA.ParamByName('ACEITE').ISnULL
        Then
            Result := 0
        else
            Result := DMProcs3.EXTORNA_CAIXA.ParamByName('ACEITE').Value ;

        DMProcs3.EXTORNA_CAIXA.CLOSE ;


        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Pessoa_Conta( Banco, Agencia, Conta: String ): Integer;
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.VER_PESSOA_CONTA.ParamByName ('CNPJ'     ).asString  := DmaPP.Cnpj ;
        DMProcs3.VER_PESSOA_CONTA.ParamByName ('BANCO'    ).asString  := Banco      ;
        DMProcs3.VER_PESSOA_CONTA.ParamByName ('AGENCIA'  ).asString  := Agencia    ;
        DMProcs3.VER_PESSOA_CONTA.ParamByName ('CONTA'    ).asString  := Conta      ;

        DMProcs3.VER_PESSOA_CONTA.ExecProc;

        If DMProcs3.VER_PESSOA_CONTA.ParamByName('PESSOA_FJ').ISnULL
        Then
            Result := 0
        else
            Result := DMProcs3.VER_PESSOA_CONTA.ParamByName('PESSOA_FJ').Value ;

        DMProcs3.VER_PESSOA_CONTA.CLOSE ;


        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.VerificarCaixa: String;
begin
     If (( DmApp.UsuarioCaixa <= 0 ) and ( DmApp.ContaCaixa <= 0 ))
     then begin
          FrmSelecionaCaixas := TFrmSelecionaCaixas.Create(Self);

          FrmSelecionaCaixas.OpcaoCaixa := 'N' ;

          If FrmSelecionaCaixas.Showmodal <> MrOk
          then Begin
               Result := 'N';
               CaixaAtivo := False ;
          end
          Else
              CaixaAtivo := TRUE ;
     end
     Else
         Result := 'S' ;
end;

Function  TDmApp.Ultima_Duplicata: Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.ULTIMA_DUPLICATA.ParamByName ('CNPJ'     ).asString  := DmaPP.Cnpj ;

        DMProcs3.ULTIMA_DUPLICATA.ExecProc;

        If DMProcs3.ULTIMA_DUPLICATA.ParamByName('CODIGO').ISnULL
        Then
            Result := 0
        else
            Result := DMProcs3.ULTIMA_DUPLICATA.ParamByName('CODIGO').Value ;


        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Responder_Mensagem ( Remetente, Destinatario, Reservado, Assunto, Mensagem: StRING; Dt_Envio: TDateTime );
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.RESPONDER_MENSAGEM.ParamByName ('REMETENTE').asString     := Copy( Remetente   , 1, 10) ;
        DMProcs3.RESPONDER_MENSAGEM.ParamByName ('DESTINATARIO').asString  := Copy( Destinatario, 1, 10) ;
        DMProcs3.RESPONDER_MENSAGEM.ParamByName ('RESERVADO').asString     := Copy( reservado   , 1, 1 ) ;
        DMProcs3.RESPONDER_MENSAGEM.ParamByName ('ASSUNTO').asString       := Copy( Assunto     , 1, 50) ;
        DMProcs3.RESPONDER_MENSAGEM.ParamByName ('MENSAGEM').asString      := Copy( Mensagem    , 1, 120);
        DMProcs3.RESPONDER_MENSAGEM.ParamByName ('DT_ENVIO').asDate        := Dt_Envio                   ;

        DMProcs3.RESPONDER_MENSAGEM.ExecProc;


        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Cria_Menu ( Categoria, Nome, Computador: String; Codigo: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;


        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.CRIA_SIS_MENU.ParamByName ('CNPJ').asString       := DmaPP.Cnpj ;
        DMProcs3.CRIA_SIS_MENU.ParamByName ('CATEGORIA').asString  := Categoria  ;
        DMProcs3.CRIA_SIS_MENU.ParamByName ('NOME').asString       := Nome       ;

        DMProcs3.CRIA_SIS_MENU.ParamByName ('CODIGO').asInteger    := Codigo     ;

        DMProcs3.CRIA_SIS_MENU.ParamByName ('COMPUTADOR').asString := Computador ;

        DMProcs3.CRIA_SIS_MENU.ExecProc;


        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Cria_Menu_Item ( Categoria, Nome, Caption,  Computador: String; Codigo: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.CRIA_SIS_MENU_ITEM.ParamByName ('CNPJ').asString       := DmaPP.Cnpj ;
        DMProcs3.CRIA_SIS_MENU_ITEM.ParamByName ('CATEGORIA').asString  := Categoria  ;
        DMProcs3.CRIA_SIS_MENU_ITEM.ParamByName ('NOME').asString       := Nome       ;

        DMProcs3.CRIA_SIS_MENU_ITEM.ParamByName ('CODIGO').asInteger    := Codigo     ;

        DMProcs3.CRIA_SIS_MENU_ITEM.ParamByName ('COMPUTADOR').asString := Computador ;
        DMProcs3.CRIA_SIS_MENU_ITEM.ParamByName ('CAPTION').asString    := Caption    ;

        DMProcs3.CRIA_SIS_MENU_ITEM.ExecProc;
        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Trocar_Centro( Codigo, Ano, Centro: Integer );
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction  then
          DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.TROCA_CENTRO_PAGAR.ParamByName ('CNPJ').asString    := DmaPP.Cnpj ;
        DMProcs3.TROCA_CENTRO_PAGAR.ParamByName ('CODIGO').asInteger := Codigo     ;
        DMProcs3.TROCA_CENTRO_PAGAR.ParamByName ('ANO').asInteger    := Ano        ;
        DMProcs3.TROCA_CENTRO_PAGAR.ParamByName ('CENTRO').asInteger := Centro     ;

        DMProcs3.TROCA_CENTRO_PAGAR.ExecProc;

        DMProcs3.TROCA_CENTRO_PAGAR.Close   ;


        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Ultimo_Caixa_Fechado: TDateTime;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.ULTIMO_CAIXA_FECHADO.ParamByName ('CNPJ').asString     := DmaPP.Cnpj         ;
        DMProcs3.ULTIMO_CAIXA_FECHADO.ParamByName ('USUARIO').asInteger := DmaPP.UsuarioCaixa ;
        DMProcs3.ULTIMO_CAIXA_FECHADO.ParamByName ('CONTA').asInteger   := DmaPP.ContaCaixa   ;

        DMProcs3.ULTIMO_CAIXA_FECHADO.ExecProc;

        If DMProcs3.ULTIMO_CAIXA_FECHADO.ParamByName('DATA').ISnULL
        Then
            Result := STRTODATE('01/01/1900')
        else
            Result := DMProcs3.ULTIMO_CAIXA_FECHADO.ParamByName('DATA').Value ;

        DMProcs3.ULTIMO_CAIXA_FECHADO.close ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Ultima_Etiqueta: Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.SEQUENCIA_ETIQUETA.ParamByName ('CNPJ').asString  := DmaPP.Cnpj ;

        DMProcs3.SEQUENCIA_ETIQUETA.ExecProc;

        If DMProcs3.SEQUENCIA_ETIQUETA.ParamByName('CODIGO').ISnULL
        Then
            Result := 1
        else
            Result := DMProcs3.SEQUENCIA_ETIQUETA.ParamByName('CODIGO').Value ;

        DMProcs3.SEQUENCIA_ETIQUETA.close ;


        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Ultima_Etiqueta_Imp: Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
          DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.SEQUENCIA_ETIQUETA_IMP.ParamByName ('CNPJ').asString  := DmaPP.Cnpj ;

        DMProcs3.SEQUENCIA_ETIQUETA_IMP.ExecProc;

        If DMProcs3.SEQUENCIA_ETIQUETA_IMP.ParamByName('CODIGO').ISnULL
        Then
            Result := 1
        else
            Result := DMProcs3.SEQUENCIA_ETIQUETA_IMP.ParamByName('CODIGO').Value ;

        DMProcs3.SEQUENCIA_ETIQUETA_IMP.close ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.VerificarCaixaFechado: String;
begin
     If (( DmApp.UsuarioCaixa <= 0 ) and ( DmApp.ContaCaixa <= 0 ))
     then begin
          FrmSelecionaCaixas := TFrmSelecionaCaixas.Create(Self);

          FrmSelecionaCaixas.OpcaoCaixa := 'S' ;

          If FrmSelecionaCaixas.Showmodal <> MrOk
          then
              Result := 'N' ;
     end
     Else
         Result := 'S' ;
end;



Function TDmApp.Saldo_Anterior_Caixa( USUARIO, CONTA, TURNO: INTEGER; DATA: TDatetime ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs4.SALDO_ANTERIOR_CAIXA.ParamByName('CNPJ'    ).asString   := DmaPP.Cnpj ;
        DMProcs4.SALDO_ANTERIOR_CAIXA.ParamByName('USUARIO' ).asInteger  := Usuario    ;
        DMProcs4.SALDO_ANTERIOR_CAIXA.ParamByName('CONTA'   ).asInteger  := Conta      ;
        DMProcs4.SALDO_ANTERIOR_CAIXA.ParamByName('DATA'    ).asDate     := Data       ;
        DMProcs4.SALDO_ANTERIOR_CAIXA.ParamByName('TURNO'   ).asInteger  := Turno      ;

        DMProcs4.SALDO_ANTERIOR_CAIXA.ExecProc;

        IF DMProcs4.SALDO_ANTERIOR_CAIXA.ParamByName('SALDO').ISNULL
        THEN
            Result := 0 
        ELSE
            Result := DMProcs4.SALDO_ANTERIOR_CAIXA.ParamByName('SALDO').Value ;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.Saldo_Vendas_Prazo ( Data: TDateTime ):Real;
Var
   Credito, Debito: Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.SALDO_VENDAS_PRAZO.ParamByName('CNPJ' ).asString  := DmaPP.Cnpj ;
        DMProcs3.SALDO_VENDAS_PRAZO.ParamByName('DATA' ).asDate    := Data       ;

        DMProcs3.SALDO_VENDAS_PRAZO.ExecProc;

        If DMProcs3.SALDO_VENDAS_PRAZO.ParamByName('SOMAC').ISnULL
        Then
            Credito := 0
        else
            Credito := DMProcs3.SALDO_VENDAS_PRAZO.ParamByName('SOMAC').Value ;

        If DMProcs3.SALDO_VENDAS_PRAZO.ParamByName('SOMAD').ISnULL
        Then
            Debito := 0
        else
            Debito := DMProcs3.SALDO_VENDAS_PRAZO.ParamByName('SOMAD').Value ;

        Result := Credito - Debito ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.Saldo_Vendas_Vista ( Data: TDateTime ):Real;
Var
   Credito, Debito: Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.SALDO_VENDAS_VISTA.ParamByName('CNPJ' ).asString  := DmaPP.Cnpj ;
        DMProcs3.SALDO_VENDAS_VISTA.ParamByName('DATA' ).asDate    := Data       ;

        DMProcs3.SALDO_VENDAS_VISTA.ExecProc;

        If DMProcs3.SALDO_VENDAS_VISTA.ParamByName('SOMAC').ISnULL
        Then
            Credito := 0
        else
            Credito := DMProcs3.SALDO_VENDAS_VISTA.ParamByName('SOMAC').Value ;

        If DMProcs3.SALDO_VENDAS_VISTA.ParamByName('SOMAD').ISnULL
        Then
            Debito := 0
        else
            Debito := DMProcs3.SALDO_VENDAS_VISTA.ParamByName('SOMAD').Value ;

        Result := Credito - Debito ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.SaldoPlanilha ( Planilha: Integer ):Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs2.SALDO_PLANILHA.ParamByName('CNPJ'     ).asString  := DmaPP.Cnpj ;
        DMProcs2.SALDO_PLANILHA.ParamByName        ('PLANILHA' ).asInteger := Planilha;

        DMProcs2.SALDO_PLANILHA.ExecProc;

        If DMProcs2.SALDO_PLANILHA.ParamByName('SOMA').ISnULL
        Then
            Result := 0
        else
            Result := DMProcs2.SALDO_PLANILHA.ParamByName('SOMA').Value ;
        //
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.ProcessaPlanilha ( Planilha: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs2.PROCESSA_DESDOBRAMENTO_CONTABIL.ParamByName ('CNPJ'     ).asString  := DmaPP.Cnpj ;
        DMProcs2.PROCESSA_DESDOBRAMENTO_CONTABIL.ParamByName ('PLANILHA' ).asInteger := Planilha   ;

        DMProcs2.PROCESSA_DESDOBRAMENTO_CONTABIL.ExecProc;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;


Procedure TDmApp.Exclui_Movto_Contabil ( Cnpj: String );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs2.EXCLUIR_MOVIMENTO_CONTABIL.ParamByName ('EMPRESA' ).asString  := DmaPP.Cnpj ;

        DMProcs2.EXCLUIR_MOVIMENTO_CONTABIL.ExecProc;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback ;
     end;
end;

Procedure TDmApp.Marca_Movto_Contabil ( Cnpj: String; Codigo: Integer; Tipo: String );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs2.MARCA_MOVIMENTO_CONTABIL.ParamByName ('EMPRESA' ).asString  := DmaPP.Cnpj ;
        DMProcs2.MARCA_MOVIMENTO_CONTABIL.ParamByName ('CODIGO'  ).asInteger := Codigo     ;
        DMProcs2.MARCA_MOVIMENTO_CONTABIL.ParamByName ('TIPO'    ).asString  := Tipo       ;

        DMProcs2.MARCA_MOVIMENTO_CONTABIL.ExecProc;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.SaldoRestantePlanilha ( Planilha: Integer; Total: Real ):Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        DMProcs2.Saldo_RestantePlanilha.ParamByName('CNPJ'     ).asString  := DmaPP.Cnpj ;
        DMProcs2.Saldo_RestantePlanilha.ParamByName('PLANILHA' ).asInteger := Planilha   ;
        DMProcs2.Saldo_RestantePlanilha.ParamByName('TOTAL'    ).asFloat   := Total      ;

        DMProcs2.Saldo_RestantePlanilha.ExecProc;

        If DMProcs2.Saldo_RestantePlanilha.ParamByName('SOMA').ISnULL
        Then
            Result := 0
        else
            Result := DMProcs2.Saldo_RestantePlanilha.ParamByName('SOMA').Value ;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;

end;


Function TDmApp.ConferePlanilha ( Planilha: Integer ):String;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        DMProcs2.Confere_Planilha.Params.Clear ;

        DMProcs2.Confere_Planilha.ParamByName('CNPJ'     ).asString  := DmaPP.Cnpj ;
        DMProcs2.Confere_Planilha.ParamByName('PLANILHA' ).asInteger := Planilha   ;

        DMProcs2.Confere_Planilha.ExecProc;

        If DMProcs2.Confere_Planilha.ParamByName('CONFERE').IsNull
        Then
            Result := 'N'
        else
            Result := DMProcs2.Confere_Planilha.ParamByName('CONFERE').Value ;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Insere_Mov_Contabil ( Data: TDateTime; Tipo: String; Documento: String; Historico: String; Valor: Real;
                                    Conta: Integer; Origem: String; Contra_Partida: Integer;
                                    Banco: String; Tipo_Lancamento: String;
                                    Cod_Doc: String; Fornecedor: Integer );
Var
   Planilha: Integer ;
Begin
     Try
        if (DmApp.EXIBE_ACERTO = 'S') then
          Planilha :=  DMApp.GerarCodigo('ACERTO',0 ) + 1
        else
          Planilha := DMApp.GerarCodigo('PLANILHA', 1);

        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Insere_Mov_Contabil.ParamByName('CNPJ').asString            := DmaPP.Cnpj     ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('DATA').asDate              := DATA           ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('TIPO').asString            := TIPO           ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('DOCUMENTO').asString       := DOCUMENTO      ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('HISTORICO').asString       := HISTORICO      ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('VALOR').asFloat            := VALOR          ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('CONTA').asInteger          := CONTA          ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('ORIGEM').asString          := ORIGEM         ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('PLANILHA').asInteger       := PLANILHA       ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('CONTRA_PARTIDA').asInteger := CONTRA_PARTIDA ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('BANCO').asString           := BANCO          ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('TIPO_LANCAMENTO').asString := TIPO_LANCAMENTO;
        DMProcs2.Insere_Mov_Contabil.ParamByName('COD_DOC').asString         := COD_DOC        ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('FORNECEDOR').asInteger     := FORNECEDOR     ;


        DMProcs2.Insere_Mov_Contabil.ExecProc;
        //
        DMProcs2.Insere_Mov_Contabil.Close ;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Insere_Mov_Contabil_Caixa ( Data: TDateTime; Tipo: String; Documento: String; Historico: String; Valor: Real;
                                    Conta: Integer; Origem: String; Contra_Partida: Integer;
                                    Banco: String; Tipo_Lancamento: String;
                                    Cod_Doc: String; Fornecedor: Integer; Planilha: Integer );
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Insere_Mov_Contabil.ParamByName('CNPJ').asString            := DmaPP.Cnpj     ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('DATA').asDate              := DATA           ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('TIPO').asString            := TIPO           ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('DOCUMENTO').asString       := DOCUMENTO      ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('HISTORICO').asString       := HISTORICO      ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('VALOR').asFloat            := VALOR          ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('CONTA').asInteger          := CONTA          ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('ORIGEM').asString          := ORIGEM         ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('PLANILHA').asInteger       := PLANILHA       ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('CONTRA_PARTIDA').asInteger := CONTRA_PARTIDA ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('BANCO').asString           := BANCO          ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('TIPO_LANCAMENTO').asString := TIPO_LANCAMENTO;
        DMProcs2.Insere_Mov_Contabil.ParamByName('COD_DOC').asString         := COD_DOC        ;
        DMProcs2.Insere_Mov_Contabil.ParamByName('FORNECEDOR').asInteger     := FORNECEDOR     ;


        DMProcs2.Insere_Mov_Contabil.ExecProc;
        //
        DMProcs2.Insere_Mov_Contabil.Close ;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;
        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Insere_Cheque ( BANCO: String; CONTA: String; CHEQUE: String; VENDA: INTEGER ; EMISSAO: TDateTime ;
    PRE_DATE: TDateTime; VALOR: Real; CONCILIADO: String; PESSOA_FJ: INTEGER ; HISTORICO: String ; AGENCIA: string;
    NOME: String;  TIPO: String ; DVCHEQUE: String; DVAGENCIA: String; Turno: Integer; Usuario: Integer; Data_Caixa: TDateTime );
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Insere_Cheques.ParamByName('CNPJ').asString           := DmaPP.Cnpj ;
        DMProcs2.Insere_Cheques.ParamByName('BANCO').asString          := BANCO ;
        DMProcs2.Insere_Cheques.ParamByName('CONTA').asString          := CONTA ;
        DMProcs2.Insere_Cheques.ParamByName('CHEQUE').asString         := CHEQUE ;
        DMProcs2.Insere_Cheques.ParamByName('VENDA').asInteger         := VENDA ;
        DMProcs2.Insere_Cheques.ParamByName('EMISSAO').asDate          := EMISSAO ;
        DMProcs2.Insere_Cheques.ParamByName('PRE_DATE').asDate         := PRE_DATE ;
        DMProcs2.Insere_Cheques.ParamByName('VALOR').asFloat           := VALOR ;
        DMProcs2.Insere_Cheques.ParamByName('CONCILIADO').asString     := CONCILIADO ;
        DMProcs2.Insere_Cheques.ParamByName('PESSOA_FJ').asInteger     := PESSOA_FJ ;
        DMProcs2.Insere_Cheques.ParamByName('HISTORICO').asString      := HISTORICO ;
        DMProcs2.Insere_Cheques.ParamByName('AGENCIA').asString        := AGENCIA ;
        DMProcs2.Insere_Cheques.ParamByName('NOME').asString           := NOME ;
        DMProcs2.Insere_Cheques.ParamByName('TIPO').asString           := TIPO ;
        DMProcs2.Insere_Cheques.ParamByName('DIGITO_AGENCIA').asString := DVAGENCIA  ;
        DMProcs2.Insere_Cheques.ParamByName('DIGITO_CHEQUE').asString  := DVCHEQUE   ;
        DMProcs2.Insere_Cheques.ParamByName('TURNO'    ).asInteger     := TURNO      ;
        DMProcs2.Insere_Cheques.ParamByName('USUARIO'    ).asInteger   := USUARIO    ;
        DMProcs2.Insere_Cheques.ParamByName('DATA_CAIXA'    ).asDate   := DATA_CAIXA ;

        DMProcs2.Insere_Cheques.ExecProc;
        //
        DMProcs2.Insere_Cheques.Close ;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;
        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;



Procedure TDmApp.Lanca_Contabilidade_Prod_Caixa( Data: TDateTime; Usuario: Integer; Planilha: Integer; Turno: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Lanca_Contabilidade_Prod_Caixa.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs2.Lanca_Contabilidade_Prod_Caixa.ParamByName('DATA_CAIXA').asDate  := Data     ;
        DMProcs2.Lanca_Contabilidade_Prod_Caixa.ParamByName('USUARIO').asInteger  := Usuario  ;
        DMProcs2.Lanca_Contabilidade_Prod_Caixa.ParamByName('PLANILHA').asInteger := Planilha ;
        DMProcs2.Lanca_Contabilidade_Prod_Caixa.ParamByName('TURNO').asInteger    := Turno  ;

        DMProcs2.Lanca_Contabilidade_Prod_Caixa.ExecProc;
        //
        DMProcs2.Lanca_Contabilidade_Prod_Caixa.Close ;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Contabilidade_Prod_Caixa_Geral ( Data: TDateTime; Planilha: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.Lanca_Contabilidade_Prod_Caixa_Geral.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs4.Lanca_Contabilidade_Prod_Caixa_Geral.ParamByName('DATA_CAIXA').asDate  := Data     ;
        DMProcs4.Lanca_Contabilidade_Prod_Caixa_Geral.ParamByName('PLANILHA').asInteger := Planilha ;

        DMProcs4.Lanca_Contabilidade_Prod_Caixa_Geral.ExecProc;
        //
        DMProcs4.Lanca_Contabilidade_Prod_Caixa_Geral.Close ;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Receber_Caixa( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer; Turno: Integer  );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then                                                            
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.LANCA_RECEBER_CAIXA.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs2.LANCA_RECEBER_CAIXA.ParamByName('DATA').asDate        := Data     ;
        DMProcs2.LANCA_RECEBER_CAIXA.ParamByName('USUARIO').asInteger  := Usuario  ;
        DMProcs2.LANCA_RECEBER_CAIXA.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs2.LANCA_RECEBER_CAIXA.ParamByName('PLANILHA').asInteger := Planilha ;
        DMProcs2.LANCA_RECEBER_CAIXA.ParamByName('TURNO').asInteger    := Turno    ;

        DMProcs2.LANCA_RECEBER_CAIXA.ExecProc;
        //
        DMProcs2.LANCA_RECEBER_CAIXA.Close ;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_DescJur_Caixa_Geral( Data: TDateTime; Planilha: Integer; Conta: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs5 = Nil Then
        DMProcs5 := TDMProcs5.Create(Self);
        //
        DMProcs5.LANCA_DESC_JUR_VND_CAIXA_GERAL.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs5.LANCA_DESC_JUR_VND_CAIXA_GERAL.ParamByName('DATA').asDate        := Data     ;
        DMProcs5.LANCA_DESC_JUR_VND_CAIXA_GERAL.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs5.LANCA_DESC_JUR_VND_CAIXA_GERAL.ParamByName('PLANILHA').asInteger := Planilha ;

        DMProcs5.LANCA_DESC_JUR_VND_CAIXA_GERAL.ExecProc;
        //
        DMProcs5.LANCA_DESC_JUR_VND_CAIXA_GERAL.Close ;

        //
        DMProcs5.Free;
        DMProcs5 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Receber_Caixa_Geral( Data: TDateTime; Planilha: Integer; Conta: Integer  );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.LANCA_CONTA_RECEBER_CAIXA_GERAL.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs4.LANCA_CONTA_RECEBER_CAIXA_GERAL.ParamByName('DATA').asDate        := Data     ;
        DMProcs4.LANCA_CONTA_RECEBER_CAIXA_GERAL.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs4.LANCA_CONTA_RECEBER_CAIXA_GERAL.ParamByName('PLANILHA').asInteger := Planilha ;

        DMProcs4.LANCA_CONTA_RECEBER_CAIXA_GERAL.ExecProc;
        //
        DMProcs4.LANCA_CONTA_RECEBER_CAIXA_GERAL.Close ;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Notas_Caixa( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer; Turno: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.LANCA_NOTAS_CAIXA.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs3.LANCA_NOTAS_CAIXA.ParamByName('DATA').asDate        := Data     ;
        DMProcs3.LANCA_NOTAS_CAIXA.ParamByName('USUARIO').asInteger  := Usuario  ;
        DMProcs3.LANCA_NOTAS_CAIXA.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs3.LANCA_NOTAS_CAIXA.ParamByName('PLANILHA').asInteger := Planilha ;
        DMProcs3.LANCA_NOTAS_CAIXA.ParamByName('TURNO').asInteger    := Turno  ;

        DMProcs3.LANCA_NOTAS_CAIXA.ExecProc;
        //
        DMProcs3.LANCA_NOTAS_CAIXA.Close ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Notas_Caixa_Geral( Data: TDateTime; Planilha: Integer; Conta: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.LANCA_NOTAS_CAIXA_GERAL.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs4.LANCA_NOTAS_CAIXA_GERAL.ParamByName('DATA').asDate        := Data     ;
        DMProcs4.LANCA_NOTAS_CAIXA_GERAL.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs4.LANCA_NOTAS_CAIXA_GERAL.ParamByName('PLANILHA').asInteger := Planilha ;

        DMProcs4.LANCA_NOTAS_CAIXA_GERAL.ExecProc;
        //
        DMProcs4.LANCA_NOTAS_CAIXA_GERAL.Close ;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Dinheiro_Caixa( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer ; Turno: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.LANCA_DINHEIRO_CAIXA.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs3.LANCA_DINHEIRO_CAIXA.ParamByName('DATA').asDate        := Data     ;
        DMProcs3.LANCA_DINHEIRO_CAIXA.ParamByName('USUARIO').asInteger  := Usuario  ;
        DMProcs3.LANCA_DINHEIRO_CAIXA.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs3.LANCA_DINHEIRO_CAIXA.ParamByName('PLANILHA').asInteger := Planilha ;
        DMProcs3.LANCA_DINHEIRO_CAIXA.ParamByName('TURNO').asInteger    := Turno  ;

        DMProcs3.LANCA_DINHEIRO_CAIXA.ExecProc;
        //
        DMProcs3.LANCA_DINHEIRO_CAIXA.Close ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Dinheiro_Caixa_Geral ( Data: TDateTime; Planilha: Integer; Conta: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.LANCA_DINHEIRO_CAIXA_GERAL.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs4.LANCA_DINHEIRO_CAIXA_GERAL.ParamByName('DATA').asDate        := Data     ;
        DMProcs4.LANCA_DINHEIRO_CAIXA_GERAL.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs4.LANCA_DINHEIRO_CAIXA_GERAL.ParamByName('PLANILHA').asInteger := Planilha ;

        DMProcs4.LANCA_DINHEIRO_CAIXA_GERAL.ExecProc;
        //
        DMProcs4.LANCA_DINHEIRO_CAIXA_GERAL.Close ;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Moedas_Caixa( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer ; Turno: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.LANCA_MOEDAS_CAIXA.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs3.LANCA_MOEDAS_CAIXA.ParamByName('DATA').asDate        := Data     ;
        DMProcs3.LANCA_MOEDAS_CAIXA.ParamByName('USUARIO').asInteger  := Usuario  ;
        DMProcs3.LANCA_MOEDAS_CAIXA.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs3.LANCA_MOEDAS_CAIXA.ParamByName('PLANILHA').asInteger := Planilha ;
        DMProcs3.LANCA_MOEDAS_CAIXA.ParamByName('TURNO').asInteger    := Turno  ;

        DMProcs3.LANCA_MOEDAS_CAIXA.ExecProc;
        //
        DMProcs3.LANCA_MOEDAS_CAIXA.Close ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Moedas_Caixa_Geral( Data: TDateTime; Planilha: Integer; Conta: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.LANCA_MOEDAS_CAIXA_GERAL.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs4.LANCA_MOEDAS_CAIXA_GERAL.ParamByName('DATA').asDate        := Data     ;
        DMProcs4.LANCA_MOEDAS_CAIXA_GERAL.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs4.LANCA_MOEDAS_CAIXA_GERAL.ParamByName('PLANILHA').asInteger := Planilha ;

        DMProcs4.LANCA_MOEDAS_CAIXA_GERAL.ExecProc;
        //
        DMProcs4.LANCA_MOEDAS_CAIXA_GERAL.Close ;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Chq_Prazo_Caixa( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer; Turno: Integer  );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;


        DMProcs3.LANCA_CHQ_PRAZO_CAIXA.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs3.LANCA_CHQ_PRAZO_CAIXA.ParamByName('DATA').asDate        := Data     ;
        DMProcs3.LANCA_CHQ_PRAZO_CAIXA.ParamByName('USUARIO').asInteger  := Usuario  ;
        DMProcs3.LANCA_CHQ_PRAZO_CAIXA.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs3.LANCA_CHQ_PRAZO_CAIXA.ParamByName('PLANILHA').asInteger := Planilha ;
        DMProcs3.LANCA_CHQ_PRAZO_CAIXA.ParamByName('TURNO').asInteger    := Turno  ;

        DMProcs3.LANCA_CHQ_PRAZO_CAIXA.ExecProc;
        //
        DMProcs3.LANCA_CHQ_PRAZO_CAIXA.Close ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Chq_Prazo_Caixa_Geral( Data: TDateTime; Planilha: Integer; Conta: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.LANCA_CHQ_PRAZO_CAIXA_GERAL.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs4.LANCA_CHQ_PRAZO_CAIXA_GERAL.ParamByName('DATA').asDate        := Data     ;
        DMProcs4.LANCA_CHQ_PRAZO_CAIXA_GERAL.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs4.LANCA_CHQ_PRAZO_CAIXA_GERAL.ParamByName('PLANILHA').asInteger := Planilha ;

        DMProcs4.LANCA_CHQ_PRAZO_CAIXA_GERAL.ExecProc;
        //
        DMProcs4.LANCA_CHQ_PRAZO_CAIXA_GERAL.Close ;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Cartao_Caixa( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer ; Turno: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;


        DMProcs3.LANCA_CARTAO_CAIXA.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs3.LANCA_CARTAO_CAIXA.ParamByName('DATA').asDate        := Data     ;
        DMProcs3.LANCA_CARTAO_CAIXA.ParamByName('USUARIO').asInteger  := Usuario  ;
        DMProcs3.LANCA_CARTAO_CAIXA.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs3.LANCA_CARTAO_CAIXA.ParamByName('PLANILHA').asInteger := Planilha ;
        DMProcs3.LANCA_CARTAO_CAIXA.ParamByName('TURNO').asInteger    := Turno  ;

        DMProcs3.LANCA_CARTAO_CAIXA.ExecProc;
        //
        DMProcs3.LANCA_CARTAO_CAIXA.Close ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Cartao_Caixa_Geral( Data: TDateTime; Planilha: Integer; Conta: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.LANCA_CARTAO_CAIXA_GERAL.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs4.LANCA_CARTAO_CAIXA_GERAL.ParamByName('DATA').asDate        := Data     ;
        DMProcs4.LANCA_CARTAO_CAIXA_GERAL.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs4.LANCA_CARTAO_CAIXA_GERAL.ParamByName('PLANILHA').asInteger := Planilha ;

        DMProcs4.LANCA_CARTAO_CAIXA_GERAL.ExecProc;
        //
        DMProcs4.LANCA_CARTAO_CAIXA_GERAL.Close ;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Haver_Caixa( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer; Turno: Integer  );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.LANCA_HAVER_CAIXA.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs3.LANCA_HAVER_CAIXA.ParamByName('DATA').asDate        := Data     ;
        DMProcs3.LANCA_HAVER_CAIXA.ParamByName('USUARIO').asInteger  := Usuario  ;
        DMProcs3.LANCA_HAVER_CAIXA.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs3.LANCA_HAVER_CAIXA.ParamByName('PLANILHA').asInteger := Planilha ;
        DMProcs3.LANCA_HAVER_CAIXA.ParamByName('TURNO').asInteger    := Turno  ;

        DMProcs3.LANCA_HAVER_CAIXA.ExecProc;
        //
        DMProcs3.LANCA_HAVER_CAIXA.Close ;


        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Haver_Caixa_Geral( Data: TDateTime; Planilha: Integer; Conta: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.LANCA_HAVER_CAIXA_GERAL.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs4.LANCA_HAVER_CAIXA_GERAL.ParamByName('DATA').asDate        := Data     ;
        DMProcs4.LANCA_HAVER_CAIXA_GERAL.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs4.LANCA_HAVER_CAIXA_GERAL.ParamByName('PLANILHA').asInteger := Planilha ;

        DMProcs4.LANCA_HAVER_CAIXA_GERAL.ExecProc;
        //
        DMProcs4.LANCA_HAVER_CAIXA_GERAL.Close ;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Baixa_Haver_Caixa( Data: TDateTime; Usuario: Integer; Planilha: Integer; Conta: Integer ; Turno: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;



        DMProcs3.LANCA_BAIXA_HAVER_CAIXA.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs3.LANCA_BAIXA_HAVER_CAIXA.ParamByName('DATA').asDate        := Data     ;
        DMProcs3.LANCA_BAIXA_HAVER_CAIXA.ParamByName('USUARIO').asInteger  := Usuario  ;
        DMProcs3.LANCA_BAIXA_HAVER_CAIXA.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs3.LANCA_BAIXA_HAVER_CAIXA.ParamByName('PLANILHA').asInteger := Planilha ;
        DMProcs3.LANCA_BAIXA_HAVER_CAIXA.ParamByName('TURNO').asInteger    := Turno  ;

        DMProcs3.LANCA_BAIXA_HAVER_CAIXA.ExecProc;
        //
        DMProcs3.LANCA_BAIXA_HAVER_CAIXA.Close ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Baixa_Haver_Caixa_Geral ( Data: TDateTime; Planilha: Integer; Conta: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.LANCA_BAIXA_HAVER_CAIXA_GERAL.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs4.LANCA_BAIXA_HAVER_CAIXA_GERAL.ParamByName('DATA').asDate        := Data     ;
        DMProcs4.LANCA_BAIXA_HAVER_CAIXA_GERAL.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs4.LANCA_BAIXA_HAVER_CAIXA_GERAL.ParamByName('PLANILHA').asInteger := Planilha ;

        DMProcs4.LANCA_BAIXA_HAVER_CAIXA_GERAL.ExecProc;
        //
        DMProcs4.LANCA_BAIXA_HAVER_CAIXA_GERAL.Close ;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Contabilidade_Estoque( Data: TDateTime; Conta: Integer; Planilha: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.LANCA_CONTABILIDADE_ESTOQUE.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs3.LANCA_CONTABILIDADE_ESTOQUE.ParamByName('DATA').asDate        := Data     ;
        DMProcs3.LANCA_CONTABILIDADE_ESTOQUE.ParamByName('PLANILHA').asInteger := Planilha ;

        DMProcs3.LANCA_CONTABILIDADE_ESTOQUE.ExecProc;
        //
        DMProcs3.LANCA_CONTABILIDADE_ESTOQUE.Close ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Contabilidade_Movimentos( Data: TDateTime; Usuario: Integer; Conta: Integer; Planilha: Integer; Turno: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Lanca_Contabilidade_Movtos.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs2.Lanca_Contabilidade_Movtos.ParamByName('DATA').asDate        := Data     ;
        DMProcs2.Lanca_Contabilidade_Movtos.ParamByName('USUARIO').asInteger  := Usuario  ;
        DMProcs2.Lanca_Contabilidade_Movtos.ParamByName('CONTA').asInteger    := Conta    ;
        DMProcs2.Lanca_Contabilidade_Movtos.ParamByName('PLANILHA').asInteger := Planilha ;
        DMProcs2.Lanca_Contabilidade_Movtos.ParamByName('TURNO').asInteger    := Turno  ;

        DMProcs2.Lanca_Contabilidade_Movtos.ExecProc;
        //
        DMProcs2.Lanca_Contabilidade_Movtos.Close ;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Diferenca_Caixa_Geral ( Data: TDateTime; Conta: Integer; Planilha: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs5 = Nil Then
        DMProcs5 := TDMProcs5.Create(Self);
        //
        DMProcs5.LANCA_DIFERENCA_CAIXA_GERAL.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs5.LANCA_DIFERENCA_CAIXA_GERAL.ParamByName('PLANILHA').asInteger := Planilha ;
        DMProcs5.LANCA_DIFERENCA_CAIXA_GERAL.ParamByName('DATA').asDate        := Data     ;
        DMProcs5.LANCA_DIFERENCA_CAIXA_GERAL.ParamByName('CONTA').asInteger    := Conta    ;

        DMProcs5.LANCA_DIFERENCA_CAIXA_GERAL.ExecProc;
        //
        DMProcs5.LANCA_DIFERENCA_CAIXA_GERAL.Close ;

        //
        DMProcs5.Free;
        DMProcs5 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Contabilidade_Movimentos_Geral ( Data: TDateTime; Conta: Integer; Planilha: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.Lanca_Contabilidade_Movtos_Geral.ParamByName('CNPJ').asString      := Cnpj     ;
        DMProcs4.Lanca_Contabilidade_Movtos_Geral.ParamByName('PLANILHA').asInteger := Planilha ;
        DMProcs4.Lanca_Contabilidade_Movtos_Geral.ParamByName('DATA').asDate        := Data     ;
        DMProcs4.Lanca_Contabilidade_Movtos_Geral.ParamByName('CONTA').asInteger    := Conta    ;

        DMProcs4.Lanca_Contabilidade_Movtos_Geral.ExecProc;
        //
        DMProcs4.Lanca_Contabilidade_Movtos_Geral.Close   ;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Fechamento_Mes( Data, DataInicial, DataFinal: TDateTime; Mes, Ano: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.FECHAMENTO_MES.ParamByName ('CNPJ'       ).asString  := DmaPP.Cnpj  ;
        DMProcs3.FECHAMENTO_MES.ParamByName ('DATA'       ).asDate    := Data        ;
        DMProcs3.FECHAMENTO_MES.ParamByName ('DATAINICIAL').asDate    := DataInicial ;
        DMProcs3.FECHAMENTO_MES.ParamByName ('DATAFINAL'  ).asDate    := DataFinal   ;
        DMProcs3.FECHAMENTO_MES.ParamByName ('MES'        ).asInteger := Mes         ;
        DMProcs3.FECHAMENTO_MES.ParamByName ('ANO'        ).asInteger := Ano         ;

        DMProcs3.FECHAMENTO_MES.ExecProc;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Fechamento_Diario_Cupom ( Inicial, Final: TDateTime );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction   then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.MIGRAR_FAT_CUPOM.ParamByName ('CNPJ'    ).asString  := DmaPP.Cnpj ;
        DMProcs3.MIGRAR_FAT_CUPOM.ParamByName ('DINI'    ).asDate    := Inicial    ;
        DMProcs3.MIGRAR_FAT_CUPOM.ParamByName ('DFIM'    ).asDate    := Final      ;

        DMProcs3.MIGRAR_FAT_CUPOM.ExecProc;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.MascaraIe( Uf: String): String;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.MascaraIe.ParamByName('UF').asString  := Uf ;

        DMProcs2.MascaraIe.ExecProc;
        //
        Result := DMProcs2.MascaraIe.ParamByName('MASCARA').AsString;

        DMProcs2.MascaraIe.Close ;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;
        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.Corrige_Preco_Promocao ( Venda: Integer ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.CORRIGE_VENDAS_ITENS_PROMOCAO.ParamByName('CNPJ').asString    := Cnpj  ;
        DMProcs3.CORRIGE_VENDAS_ITENS_PROMOCAO.ParamByName('CODIGO').asInteger := Venda ;

        DMProcs3.CORRIGE_VENDAS_ITENS_PROMOCAO.ExecProc;
        //
        Result := DMProcs3.CORRIGE_VENDAS_ITENS_PROMOCAO.ParamByName('SOMA').AsFloat;

        DMProcs3.CORRIGE_VENDAS_ITENS_PROMOCAO.Close ;

        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Verifica_Preco_Especial( Produto: String; Cliente: Integer ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.VERIFICA_PRECO_ESPECIAL.ParamByName('CNPJ').asString       := Cnpj    ;
        DMProcs2.VERIFICA_PRECO_ESPECIAL.ParamByName('PESSOA_FJ').asInteger := Cliente ;
        DMProcs2.VERIFICA_PRECO_ESPECIAL.ParamByName('PRODUTO').asString    := Produto ;

        DMProcs2.VERIFICA_PRECO_ESPECIAL.ExecProc;
        //
        Result := DMProcs2.VERIFICA_PRECO_ESPECIAL.ParamByName('PORCENTAGEM').AsFloat;

        DMProcs2.VERIFICA_PRECO_ESPECIAL.Close ;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;
        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Ultimo_Cheque( Conta: Integer): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Ultimo_Cheque.ParamByName('CNPJ' ).asString   := Cnpj  ;
        DMProcs2.Ultimo_Cheque.ParamByName('CONTA').asInteger  := Conta ;

        DMProcs2.Ultimo_Cheque.ExecProc;
        //
        Result := DMProcs2.Ultimo_Cheque.ParamByName('CHEQUE').AsInteger;

        DMProcs2.Ultimo_Cheque.Close ;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;
        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Atualiza_Ultimo_Cheque( Conta: Integer; Cheque: Integer );
var
  ativa : boolean;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;
        If Not DmaPP.TransactionAux.InTransaction then
          DmaPP.TransactionAux.StartTransaction ;

        If DMProcs2 = Nil Then
          DMProcs2 := TDMProcs2.Create(Self);

        DMProcs2.Seta_Ultimo_Cheque.Transaction := DmaPP.TransactionAux;

        DMProcs2.Seta_Ultimo_Cheque.ParamByName('CNPJ'   ).asString   := Cnpj   ;
        DMProcs2.Seta_Ultimo_Cheque.ParamByName('CONTA'  ).asInteger  := Conta  ;
        DMProcs2.Seta_Ultimo_Cheque.ParamByName('CHEQUE' ).asInteger  := Cheque ;
        DMProcs2.Seta_Ultimo_Cheque.ExecProc;
        //
        DMProcs2.Seta_Ultimo_Cheque.Close ;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionAux.Commit;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionAux.Rollback;
     end;
end;

Function  TDmApp.VerificaIeRg( Venda: Integer ): String;
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.VERIFICA_IE_RG.ParamByName('CNPJ' ).asString  := Cnpj  ;
        DMProcs3.VERIFICA_IE_RG.ParamByName('VENDA').asInteger := Venda ;

        DMProcs3.VERIFICA_IE_RG.ExecProc;
        //
        Result := DMProcs3.VERIFICA_IE_RG.ParamByName('VERIFICA').AsString;

        DMProcs3.VERIFICA_IE_RG.Close ;

        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.VerificaCpf( Pessoa: Integer ): String;
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs5 = Nil Then
        DMProcs5 := TDMProcs5.Create(Self);
        //
        DMProcs5.VERIFICA_CPF.ParamByName('CNPJ'  ).asString  := Cnpj  ;
        DMProcs5.VERIFICA_CPF.ParamByName('PESSOA').asInteger := Pessoa ;

        DMProcs5.VERIFICA_CPF.ExecProc;
        //
        Result := DMProcs5.VERIFICA_CPF.ParamByName('VERIFICA').AsString;

        DMProcs5.VERIFICA_CPF.Close ;

        //
        DMProcs5.Free;
        DMProcs5 := Nil;
        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.VerificaIeRg_Agrupada ( Pessoa: Integer ): String;
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.VERIFICA_IE_RG_AGRUPADA.ParamByName('CNPJ'  ).asString  := Cnpj   ;
        DMProcs4.VERIFICA_IE_RG_AGRUPADA.ParamByName('PESSOA').asInteger := Pessoa ;

        DMProcs4.VERIFICA_IE_RG_AGRUPADA.ExecProc;
        //
        Result := DMProcs4.VERIFICA_IE_RG_AGRUPADA.ParamByName('VERIFICA').AsString;

        DMProcs4.VERIFICA_IE_RG_AGRUPADA.Close ;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;
        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Valida_Cpf_Cnpj( Campo: String ): String;
var
  doc : string;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
           DmaPP.TransactionProc.StartTransaction;

        If DMProcs2 = Nil Then
          DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.VALIDA_CPF_CNPJ.ParamByName('CNPJ' ).asString  := Cnpj  ;
        DMProcs2.VALIDA_CPF_CNPJ.ParamByName('CAMPO').asString  := Campo ;

        DMProcs2.VALIDA_CPF_CNPJ.ExecProc;
        //
        Result := DMProcs2.VALIDA_CPF_CNPJ.ParamByName('VALIDO').AsString;

        DMProcs2.VALIDA_CPF_CNPJ.Close ;


        DMProcs2.Free;
        DMProcs2 := Nil;
        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Insere_Forma_Venda(Codigo: Integer; Forma_Pagto: Integer; Sequencia: Integer; Valor_Original: Real; Juros: Real; Tipo_Pagto: String; Nome_Forma: String;
                                    Banco: String; Agencia: String; Conta: String; Cheque: String;
                                    DVCONTA: STRING; DVAGENCIA: STRING; DVCHEQUE: STRING; AVISTA: STRING;
                                    DATA_CAIXA : TDateTime; CONTA_CAIXA: Integer; USUARIO_CAIXA: Integer; TURNO: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);

        //
        DMProcs2.Insere_Formas_Venda.ParamByName('CNPJ').asString           := DmApp.Cnpj     ;
        DMProcs2.Insere_Formas_Venda.ParamByName('CODIGO').asInteger        := Codigo         ;
        DMProcs2.Insere_Formas_Venda.ParamByName('FORMA_PGTO').asInteger    := FORMA_PAGTO    ;
        DMProcs2.Insere_Formas_Venda.ParamByName('SEQUENCIA').asInteger     := SEQUENCIA      ;
        DMProcs2.Insere_Formas_Venda.ParamByName('VALOR_ORIGINAL').asFloat  := VALOR_ORIGINAL ;
        DMProcs2.Insere_Formas_Venda.ParamByName('JUROS').asFloat           := JUROS          ;
        DMProcs2.Insere_Formas_Venda.ParamByName('TIPO_PAGTO').asString     := TIPO_PAGTO     ;
        DMProcs2.Insere_Formas_Venda.ParamByName('NOME_FORMA').asString     := NOME_FORMA     ;
        DMProcs2.Insere_Formas_Venda.ParamByName('BANCO').asString          := BANCO          ;
        DMProcs2.Insere_Formas_Venda.ParamByName('AGENCIA').asString        := AGENCIA        ;
        DMProcs2.Insere_Formas_Venda.ParamByName('CONTA').asString          := CONTA          ;
        DMProcs2.Insere_Formas_Venda.ParamByName('CHEQUE').asString         := CHEQUE         ;
        DMProcs2.Insere_Formas_Venda.ParamByName('DVCONTA').asString        := DVCONTA        ;
        DMProcs2.Insere_Formas_Venda.ParamByName('DVAGENCIA').asString      := DVAGENCIA      ;
        DMProcs2.Insere_Formas_Venda.ParamByName('DVCHEQUE').asString       := DVCHEQUE       ;
        DMProcs2.Insere_Formas_Venda.ParamByName('AVISTA').asString         := AVISTA         ;
        DMProcs2.Insere_Formas_Venda.ParamByName('DATA_CAIXA').asDate       := DATA_CAIXA     ;
        DMProcs2.Insere_Formas_Venda.ParamByName('CONTA_CAIXA').asInteger   := CONTA_CAIXA    ;
        DMProcs2.Insere_Formas_Venda.ParamByName('USUARIO_CAIXA').asInteger := USUARIO_CAIXA  ;
        DMProcs2.Insere_Formas_Venda.ParamByName('TURNO').asInteger         := TURNO          ;

        DMProcs2.Insere_Formas_Venda.ExecProc;
        //
        DMProcs2.Insere_Formas_Venda.Close ;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;


Procedure TDmApp.Insere_Indicacao ( Pessoa_Fj: Integer; Indicado: Integer; Porcentagem: Real; Nome: String; Inicio: TDateTime );
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Insere_Indicacoes.ParamByName('CNPJ'        ).asString  := Cnpj        ;
        DMProcs2.Insere_Indicacoes.ParamByName('PESSOA_FJ'   ).asInteger := Pessoa_Fj   ;
        DMProcs2.Insere_Indicacoes.ParamByName('INDICADO'    ).asInteger := Indicado    ;
        DMProcs2.Insere_Indicacoes.ParamByName('PORCENTAGEM' ).asFloat   := Porcentagem ;
        DMProcs2.Insere_Indicacoes.ParamByName('NOME'        ).asString  := Nome        ;
        DMProcs2.Insere_Indicacoes.ParamByName('INICIO'      ).asDate    := Inicio      ;

        DMProcs2.Insere_Indicacoes.ExecProc;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;



Procedure TDmApp.Apaga_Indicacao ( Pessoa_Fj: Integer; Indicado: Integer );
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Apaga_Indicacoes.ParamByName('CNPJ'        ).asString  := Cnpj        ;
        DMProcs2.Apaga_Indicacoes.ParamByName('PESSOA_FJ'   ).asInteger := Pessoa_Fj   ;
        DMProcs2.Apaga_Indicacoes.ParamByName('INDICADO'    ).asInteger := Indicado    ;

        DMProcs2.Apaga_Indicacoes.ExecProc;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Exclui_Entrada( Pessoa: Integer; Documento: String );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Exclui_Entrada.ParamByName('CNPJ'      ).asString  := DmaPP.Cnpj ;
        DMProcs.Exclui_Entrada.ParamByName('NDOCTO'    ).asString  := Documento  ;
        DMProcs.Exclui_Entrada.ParamByName('PESSOA_FJ' ).asInteger := Pessoa     ;

        DMProcs.Exclui_Entrada.ExecProc;
        DmApp.TransactionProc.Commit ;

        LOG_TRANSACOES ( DOCUMENTO, 'ENT' );

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

procedure TDmApp.Orcamentos_Itens ( Orcamento: Integer; Produto: String; Sequencia: Integer );
begin
     Try


     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Vendas_Cor( Venda: Integer; Produto: String; Sequencia: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.VER_FAT_VENDAS_COR.ParamByName('CNPJ'      ).asString  := DmaPP.Cnpj ;
        DMProcs3.VER_FAT_VENDAS_COR.ParamByName('CODIGO'    ).asInteger := Venda      ;
        DMProcs3.VER_FAT_VENDAS_COR.ParamByName('PRODUTO'   ).asString  := Produto    ;
        DMProcs3.VER_FAT_VENDAS_COR.ParamByName('SEQUENCIA' ).asInteger := Sequencia  ;

        DMProcs3.VER_FAT_VENDAS_COR.ExecProc;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Apaga_Formas_Venda( Codigo: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Apaga_Formas.ParamByName('CNPJ'      ).asString  := DmaPP.Cnpj ;
        DMProcs2.Apaga_Formas.ParamByName('CODIGO'    ).asInteger := Codigo     ;

        DMProcs2.Apaga_Formas.ExecProc;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Exclui_Cheque_Planilha( Planilha: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Exclui_Cheque_Planilha.ParamByName('CNPJ'      ).asString  := DmaPP.Cnpj ;
        DMProcs2.Exclui_Cheque_Planilha.ParamByName('PLANILHA'  ).asInteger := Planilha   ;

        DMProcs2.Exclui_Cheque_Planilha.ExecProc;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Extorna_Planilha( Planilha: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.EXTORNA_PLANILHA.ParamByName('CNPJ'      ).asString  := DmaPP.Cnpj ;
        DMProcs2.EXTORNA_PLANILHA.ParamByName('PLANILHA'  ).asInteger := Planilha   ;

        DMProcs2.EXTORNA_PLANILHA.ExecProc;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Excluir_Mensagem( CODIGO: Integer; ANO: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

  {      If DMProcs = Nil Then
           DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.Excluir_Mensagem.ParamByName('CODIGO'   ).asInteger := Codigo ;
        DMProcs.Excluir_Mensagem.ParamByName('ANO'      ).asInteger := Ano    ;

        DMProcs.Excluir_Mensagem.ExecProc;
        //
     {   DMProcs.Free;
        DMProcs := Nil;}

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.NomeUsuario( Usuario: Integer): String;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

{        If DMProcs = Nil Then
        DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.NomeUsuario.ParamByName('USUARIO').asInteger  := Usuario ;

        DMProcs.NomeUsuario.ExecProc;
        //
        Result := DMProcs.NomeUsuario.ParamByName('NOME').AsString;

        DMProcs.NomeUsuario.Close ;

        //
 {       DMProcs.Free;
        DMProcs := Nil;}
        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Verifica_Caixa( UsuarioVer: Integer; ContaVer: Integer; DataVer: TDateTime ): String;
Var
   Resultado: String;
begin
 {    If DMProcs = Nil Then
        DMProcs := TDMProcs.Create(Self);}
     //
     DMProcs.Verifica_Caixa.ParamByName('CNPJ').asString      := Cnpj       ;
     DMProcs.Verifica_Caixa.ParamByName('USUARIO').asInteger  := UsuarioVer ;
     DMProcs.Verifica_Caixa.ParamByName('CONTA').asInteger    := ContaVer   ;
     DMProcs.Verifica_Caixa.ParamByName('DATA').asDate        := DataVer    ;
     DMProcs.Verifica_Caixa.ParamByName('TURNO').value        := TurnoCaixa ;

     DMProcs.Verifica_Caixa.ExecProc;
     //
     Resultado := DMProcs.Verifica_Caixa.ParamByName('ESTADO').AsString;

     Result := Resultado;

     DMProcs.Verifica_Caixa.Close ;

     //
 {    DMProcs.Free;
     DMProcs := Nil;}
end;

Function  TDmApp.Fechar_Caixa_Geral( UsuarioVer: Integer; ContaVer: Integer; DataVer: TDateTime; TurnoVer: Integer; Saldo: Real ): Integer;
begin

     DMProcs3.FECHAR_CAIXA_GERAL.ParamByName('CNPJ').asString      := Cnpj       ;
     DMProcs3.FECHAR_CAIXA_GERAL.ParamByName('USUARIO').asInteger  := UsuarioVer ;
     DMProcs3.FECHAR_CAIXA_GERAL.ParamByName('CONTA').asInteger    := ContaVer   ;
     DMProcs3.FECHAR_CAIXA_GERAL.ParamByName('DATA').asDate        := DataVer    ;
     DMProcs3.FECHAR_CAIXA_GERAL.ParamByName('TURNO').asInteger    := TurnoVer   ;
     DMProcs3.FECHAR_CAIXA_GERAL.ParamByName('SALDO').asFloat      := Saldo      ;

     DMProcs3.FECHAR_CAIXA_GERAL.ExecProc;
     //
     Result := DMProcs3.FECHAR_CAIXA_GERAL.ParamByName('ACEITE').Asinteger;

     DMProcs3.FECHAR_CAIXA_GERAL.Close ;

end;

Procedure TDmApp.Lanca_Convenio_Pdv (Cupom: Integer; Cliente: Integer; Valor: Real; Vencimento: TDateTime; Data: TDateTime; Historico: String);
VAR
   CodigoRec: Integer;
   Ano, Mes, Dia :Word;
begin
     Try
        Decodedate ( Now, Ano, Mes, Dia );

        DmaPP.Transaction.CommitRetaining ;

        CodigoRec := 0;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

{        If DMProcs = Nil Then
           DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.Lanca_Convenio_Pdv.ParamByName('CNPJ'     ).asString  := DmaPP.Cnpj;
        DMProcs.Lanca_Convenio_Pdv.ParamByName('CODIGO'   ).asInteger := Cupom     ;
        DMProcs.Lanca_Convenio_Pdv.ParamByName('PESSOA_FJ').asInteger := Cliente   ;
        DMProcs.Lanca_Convenio_Pdv.ParamByName('VALOR'    ).asFloat   := Valor     ;
        DMProcs.Lanca_Convenio_Pdv.ParamByName('VENCTO'   ).asDate    := Vencimento;
        DMProcs.Lanca_Convenio_Pdv.ParamByName('DATA'     ).asDate    := Data      ;
        DMProcs.Lanca_Convenio_Pdv.ParamByName('HISTORICO').asString  := Historico ;
        DMProcs.Lanca_Convenio_Pdv.ParamByName('CODREC'   ).asInteger := CodigoRec ;
        DMProcs.Lanca_Convenio_Pdv.ParamByName('ANO'      ).asInteger := Ano       ;

        DMProcs.Lanca_Convenio_Pdv.ExecProc;
        //
{        DMProcs.Free;
        DMProcs := Nil;}

        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MensagemPdv('Erro ao Lançar Conv ' + IntToStr(Cupom) + ' Cli ' + inttostr(Cliente) + ' Vecto ' + datetostr(Vencimento) + ' Lancto ' + datetostr(data) );
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MensagemPdv('Erro ao Lançar Conv ' + IntToStr(Cupom) + ' Cli ' + inttostr(Cliente) + ' Vecto ' + datetostr(Vencimento) + ' Lancto ' + datetostr(data) );
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Lanca_Pagar_Pdv (Cupom: Integer; Cliente: Integer; Valor: Real; Vencimento: TDateTime; Data: TDateTime; Historico: String);
VAR
   CodigoPgr: Integer;
   Ano, Mes, Dia :Word;
begin
     Try
        Decodedate ( Now, Ano, Mes, Dia );

        DmaPP.Transaction.CommitRetaining ;

        CodigoPgr := 0;

        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;

        //
        DMProcs3.Lanca_Pagar_Pdv.ParamByName('CNPJ'     ).asString  := DmaPP.Cnpj;
        DMProcs3.Lanca_Pagar_Pdv.ParamByName('CODIGO'   ).asInteger := Cupom     ;
        DMProcs3.Lanca_Pagar_Pdv.ParamByName('PESSOA_FJ').asInteger := Cliente   ;
        DMProcs3.Lanca_Pagar_Pdv.ParamByName('VALOR'    ).asFloat   := Valor     ;
        DMProcs3.Lanca_Pagar_Pdv.ParamByName('VENCTO'   ).asDate    := Vencimento;
        DMProcs3.Lanca_Pagar_Pdv.ParamByName('DATA'     ).asDate    := Data      ;
        DMProcs3.Lanca_Pagar_Pdv.ParamByName('HISTORICO').asString  := Historico ;
        DMProcs3.Lanca_Pagar_Pdv.ParamByName('CODPGR'   ).asInteger := CodigoPgr ;
        DMProcs3.Lanca_Pagar_Pdv.ParamByName('ANO'      ).asInteger := Ano       ;

        DMProcs3.Lanca_Pagar_Pdv.ExecProc;

        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MensagemPdv('Erro ao Lançar Pagar ' + IntToStr(Cupom) + ' Cli ' + inttostr(Cliente) + ' Vecto ' + datetostr(Vencimento) + ' Lancto ' + datetostr(data) );
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MensagemPdv('Erro ao Lançar Pagar ' + IntToStr(Cupom) + ' Cli ' + inttostr(Cliente) + ' Vecto ' + datetostr(Vencimento) + ' Lancto ' + datetostr(data) );
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Atualiza_Boleto( Banco: String ): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

{        If DMProcs = Nil Then
        DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.Atualiza_Boleto.Params.Clear ;

        DMProcs.Atualiza_Boleto.Params.CreateParam ( FtString , 'CODIGO' , PtInput  );
        DMProcs.Atualiza_Boleto.Params.CreateParam ( FtInteger, 'NUMERO' , PtOutput );

        DMProcs.Atualiza_Boleto.ParamByName('CODIGO').asString  := Banco;

        DMProcs.Atualiza_Boleto.ExecProc;
        //
        Result := DMProcs.Atualiza_Boleto.ParamByName('NUMERO').asInteger;
        //
        {DMProcs.Free;
        DMProcs := Nil;}

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Verifica_Promocao ( Produto: String; Data: TDateTime): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.PROMOCAO.ParamByName('CNPJ'       ).asString  := Cnpj       ;
        DMProcs3.PROMOCAO.ParamByName('PRODUTO'    ).asString  := Produto    ;
        DMProcs3.PROMOCAO.ParamByName('DATA'       ).asDate    := Data       ;

        DMProcs3.PROMOCAO.ExecProc;
        //
        Result := DMProcs3.PROMOCAO.ParamByName('VALOR').asFloat;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Verifica_Quantidade ( Codigo,Tipo: Integer ): String;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Verifica_Estoque.ParamByName('CNPJ'  ).asString  := Cnpj  ;
        DMProcs2.Verifica_Estoque.ParamByName('CODIGO').asInteger := Codigo;
        DMProcs2.Verifica_Estoque.ParamByName('TIPO').asInteger := Tipo;
        DMProcs2.Verifica_Estoque.ExecProc;
        //
        Result := DMProcs2.Verifica_Estoque.ParamByName('PROD').asString;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Verifica_Quantidade_Fiscal_Agrupada ( DIni, DFim: TDateTime; Pessoa:Integer ): String;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.VERIFICA_EST_FISCAL_AGRUPADA.ParamByName('CNPJ'  ).asString  := Cnpj   ;
        DMProcs4.VERIFICA_EST_FISCAL_AGRUPADA.ParamByName('DINI'  ).asDate    := DIni   ;
        DMProcs4.VERIFICA_EST_FISCAL_AGRUPADA.ParamByName('DFIM'  ).asDate    := DFim   ;
        DMProcs4.VERIFICA_EST_FISCAL_AGRUPADA.ParamByName('PESSOA').asInteger := Pessoa ;

        DMProcs4.VERIFICA_EST_FISCAL_AGRUPADA.ExecProc;
        //
        Result := DMProcs4.VERIFICA_EST_FISCAL_AGRUPADA.ParamByName('PROD').asString;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Troca_Produto_Fiscal_Venda ( Venda: Integer; Produto, Fiscal: String );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.TROCA_PRODUTO_FISCAL.ParamByName('CNPJ'   ).asString  := Cnpj   ;
        DMProcs4.TROCA_PRODUTO_FISCAL.ParamByName('VENDA'  ).asInteger := Venda  ;
        DMProcs4.TROCA_PRODUTO_FISCAL.ParamByName('PRODUTO').asString  := Produto;
        DMProcs4.TROCA_PRODUTO_FISCAL.ParamByName('FISCAL' ).asString  := Fiscal ;

        DMProcs4.TROCA_PRODUTO_FISCAL.ExecProc;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Quantidade_Produto_Venda ( Venda: Integer; Produto: String ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.QUANTIDADE_PRODUTO.ParamByName('CNPJ'   ).asString  := Cnpj   ;
        DMProcs4.QUANTIDADE_PRODUTO.ParamByName('VENDA'  ).asInteger := Venda  ;
        DMProcs4.QUANTIDADE_PRODUTO.ParamByName('PRODUTO').asString  := Produto;

        DMProcs4.QUANTIDADE_PRODUTO.ExecProc;
        //
        Result := DMProcs4.QUANTIDADE_PRODUTO.ParamByName('QUANTIDADE').asFloat;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Vendas_Abertas_Vendedor( Vendedor: Integer ): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs5 = Nil Then
        DMProcs5 := TDMProcs5.Create(Self);
        //
        DMProcs5.VER_VENDAS_VENDEDOR_ABERTAS.ParamByName('CNPJ'     ).asString  := Cnpj     ;
        DMProcs5.VER_VENDAS_VENDEDOR_ABERTAS.ParamByName('VENDEDOR').asInteger  := Vendedor ;

        DMProcs5.VER_VENDAS_VENDEDOR_ABERTAS.ExecProc;
        //
        Result := DMProcs5.VER_VENDAS_VENDEDOR_ABERTAS.ParamByName('CODIGO').asInteger;
        //
        DMProcs5.Free;
        DMProcs5 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Vendas_Abertas_Mesas( Mesa: Integer ): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs5 = Nil Then
        DMProcs5 := TDMProcs5.Create(Self);
        //
        DMProcs5.VER_VENDAS_MESAS_ABERTAS.ParamByName('CNPJ'     ).asString  := Cnpj     ;
        DMProcs5.VER_VENDAS_MESAS_ABERTAS.ParamByName('MESA').asInteger  := Mesa ;

        DMProcs5.VER_VENDAS_MESAS_ABERTAS.ExecProc;
        //
        Result := DMProcs5.VER_VENDAS_MESAS_ABERTAS.ParamByName('CODIGO').asInteger;
        //
        DMProcs5.Free;
        DMProcs5 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Dia_Pref_Faturamento( Cliente: Integer ): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

{        If DMProcs = Nil Then
        DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.Dia_Pref_Faturamento.ParamByName('CNPJ'     ).asString  := Cnpj    ;
        DMProcs.Dia_Pref_Faturamento.ParamByName('PESSOA_FJ').asInteger := Cliente ;

        DMProcs.Dia_Pref_Faturamento.ExecProc;
        //
        Result := DMProcs.Dia_Pref_Faturamento.ParamByName('DIA_PREF_FAT').asInteger;
        //
     {   DMProcs.Free;
        DMProcs := Nil;}

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.Importa_Orcamento(Codigo: Integer;CFOP:Integer=5102): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Importa_Orcamento.Params.Clear ;
        DMProcs.Importa_Orcamento.ParamByName('CNPJ'  ).asString  := DmApp.Cnpj;
        DMProcs.Importa_Orcamento.ParamByName('CODIGO').asInteger := Codigo;
        DMProcs.Importa_Orcamento.ParamByName('CFOP').asInteger := CFOP;
        DMProcs.Importa_Orcamento.ExecProc;
        Result := DMProcs.Importa_Orcamento.ParamByName('VENDA').asInteger;
        DmaPP.TransactionProc.Commit;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;

end;

Function TDmApp.Importa_Ordem (Codigo: Integer): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.IMPORTA_ORDEM_SERVICO.ParamByName('CNPJ'  ).asString  := DmApp.Cnpj;
        DMProcs4.IMPORTA_ORDEM_SERVICO.ParamByName('CODIGO').asInteger := Codigo;

        DMProcs4.IMPORTA_ORDEM_SERVICO.ExecProc;

        Result := DMProcs4.IMPORTA_ORDEM_SERVICO.ParamByName('ORDEM').asInteger;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.Importa_Ordem_Existente (Codigo, Venda: Integer): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.IMPORTA_ORDEM_SERVICO_EXISTENTE.ParamByName('CNPJ'    ).asString  := DmApp.Cnpj;
        DMProcs4.IMPORTA_ORDEM_SERVICO_EXISTENTE.ParamByName('CODIGO'  ).asInteger := Codigo    ;
        DMProcs4.IMPORTA_ORDEM_SERVICO_EXISTENTE.ParamByName('CODIGO_2').asInteger := Venda     ;

        DMProcs4.IMPORTA_ORDEM_SERVICO_EXISTENTE.ExecProc;

        Result := DMProcs4.IMPORTA_ORDEM_SERVICO_EXISTENTE.ParamByName('ORDEM').asInteger;

        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Agrupador ( Codigo, Agrupador: String );
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
{        If DMProcs = Nil Then
        DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.Agrupador.ParamByName('CNPJ'     ).asString  := Cnpj      ;
        DMProcs.Agrupador.ParamByName('PRODUTO'  ).asString  := Codigo    ;
        DMProcs.Agrupador.ParamByName('AGRUPADOR').asString  := Agrupador ;

        DMProcs.Agrupador.ExecProc;
        //
        //
      {  DMProcs.Free;
        DMProcs := Nil;}
        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.ArredondaIb ( Valor: Double; Casas: Integer ): Double;
begin
  //
{  If DMProcs = Nil Then
     DMProcs := TDMProcs.Create(Self);}
  //
  DMProcs.Arredonda.ParamByName('VALOR').asFloat   := Valor ;
  DMProcs.Arredonda.ParamByName('CASAS').asInteger := Casas ;

  DMProcs.Arredonda.ExecProc;
  //
  Result := DMProcs.Arredonda.ParamByName('RESULT').asFloat;
  //
  {DMProcs.Free;
  DMProcs := Nil;}
end;

Function TDmApp.Cheque_Vista_Venda (Codigo: Integer ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs5 = Nil Then
           DMProcs5 := TDMProcs5.Create(Self);
        //
        DMProcs5.SOMA_CHEQUE_VISTA_VENDA.Params.Clear ;

        DMProcs5.SOMA_CHEQUE_VISTA_VENDA.Params.CreateParam ( FtString , 'CNPJ'  , PtInput  );
        DMProcs5.SOMA_CHEQUE_VISTA_VENDA.Params.CreateParam ( FtInteger, 'CODIGO', PtInput  );
        DMProcs5.SOMA_CHEQUE_VISTA_VENDA.Params.CreateParam ( FtFloat  , 'SOMA'  , PtOutput );

        DMProcs5.SOMA_CHEQUE_VISTA_VENDA.ParamByName('CNPJ'  ).asString  := DmApp.Cnpj;
        DMProcs5.SOMA_CHEQUE_VISTA_VENDA.ParamByName('CODIGO').asInteger := Codigo;

        DMProcs5.SOMA_CHEQUE_VISTA_VENDA.ExecProc;
        //
        Result := DMProcs5.SOMA_CHEQUE_VISTA_VENDA.ParamByName('SOMA').asFloat;
        //
        DMProcs5.Free;
        DMProcs5 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.Cartao_Vista_Venda (Codigo: Integer ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs5 = Nil Then
           DMProcs5 := TDMProcs5.Create(Self);
        //
        DMProcs5.SOMA_CARTAO_VISTA_VENDA.Params.Clear ;

        DMProcs5.SOMA_CARTAO_VISTA_VENDA.Params.CreateParam ( FtString , 'CNPJ'  , PtInput  );
        DMProcs5.SOMA_CARTAO_VISTA_VENDA.Params.CreateParam ( FtInteger, 'CODIGO', PtInput  );
        DMProcs5.SOMA_CARTAO_VISTA_VENDA.Params.CreateParam ( FtFloat  , 'SOMA'  , PtOutput );

        DMProcs5.SOMA_CARTAO_VISTA_VENDA.ParamByName('CNPJ'  ).asString  := DmApp.Cnpj;
        DMProcs5.SOMA_CARTAO_VISTA_VENDA.ParamByName('CODIGO').asInteger := Codigo;

        DMProcs5.SOMA_CARTAO_VISTA_VENDA.ExecProc;
        //
        Result := DMProcs5.SOMA_CARTAO_VISTA_VENDA.ParamByName('SOMA').asFloat;
        //
        DMProcs5.Free;
        DMProcs5 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.Cheque_Venda (Codigo: Integer ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
{       If DMProcs = Nil Then
           DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.Cheque_Venda.Params.Clear ;

        DMProcs.Cheque_Venda.Params.CreateParam ( FtString , 'CNPJ'  , PtInput  );
        DMProcs.Cheque_Venda.Params.CreateParam ( FtInteger, 'CODIGO', PtInput  );
        DMProcs.Cheque_Venda.Params.CreateParam ( FtFloat  , 'SOMA'  , PtOutput );

        DMProcs.Cheque_Venda.ParamByName('CNPJ'  ).asString  := DmApp.Cnpj;
        DMProcs.Cheque_Venda.ParamByName('CODIGO').asInteger := Codigo;

        DMProcs.Cheque_Venda.ExecProc;
        //
        Result := DMProcs.Cheque_Venda.ParamByName('SOMA').asFloat;
        //
     {  DMProcs.Free;
        DMProcs := Nil;}

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.Cheque_Planilha (Codigo: Integer ): Real;
begin
     Try
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);

        DMProcs2.Cheque_Planilha.ParamByName('CNPJ'  ).asString  := DmApp.Cnpj;
        DMProcs2.Cheque_Planilha.ParamByName('CODIGO').asInteger := Codigo;

        DMProcs2.Cheque_Planilha.ExecProc;
        //
        Result := DMProcs2.Cheque_Planilha.ParamByName('SOMA').asFloat;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
     end;
end;

Function TDmApp.Cartao_Venda (Codigo: Integer ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Cartao_Venda.Params.Clear ;

        DMProcs2.Cartao_Venda.Params.CreateParam ( FtString , 'CNPJ'  , PtInput  );
        DMProcs2.Cartao_Venda.Params.CreateParam ( FtInteger, 'CODIGO', PtInput  );
        DMProcs2.Cartao_Venda.Params.CreateParam ( FtFloat  , 'SOMA'  , PtOutput );

        DMProcs2.Cartao_Venda.ParamByName('CNPJ'  ).asString  := DmApp.Cnpj;
        DMProcs2.Cartao_Venda.ParamByName('CODIGO').asInteger := Codigo;

        DMProcs2.Cartao_Venda.ExecProc;
        //
        Result := DMProcs2.Cartao_Venda.ParamByName('SOMA').asFloat;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Envia_Caixa_Pdv(CNPJ: String; CODIGO: Integer): String;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction;

        DMProcs.Envia_Caixa.StoredProcName := 'ENVIA_CAIXA_PDV';
        DMProcs.Envia_Caixa.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs.Envia_Caixa.ParamByName('CODIGO').asInteger := CODIGO ;

        DMProcs.Envia_Caixa.ExecProc;

        Result := DMProcs.Envia_Caixa.ParamByName('PROD').asString;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Envia_Caixa(CNPJ: String; CODIGO: Integer): String;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Envia_Caixa.StoredProcName := 'ENVIA_CAIXA';

        DMProcs.Envia_Caixa.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs.Envia_Caixa.ParamByName('CODIGO').asInteger := CODIGO ;
        //
        DMProcs.Envia_Caixa.ExecProc;
        //
        Result := DMProcs.Envia_Caixa.ParamByName('PROD').asString;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
             Result := '-1';
             DmApp.TransactionProc.Rollback;
             MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
             Result := '-1';
             DmApp.TransactionProc.Rollback;
             MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
     end;
end;

function TDmApp.Envia_Ordem_Caixa(CNPJ: String; CODIGO: Integer): Integer;
begin
  try
      DmaPP.Transaction.CommitRetaining ;

      If Not DmaPP.TransactionProc.InTransaction then
          DmaPP.TransactionProc.StartTransaction ;
      //
      If DMProcs4 = Nil Then
         DMProcs4 := TDMProcs4.Create(Self);
      //
      DMProcs4.FATURA_OFC_ORDEM.ParamByName('CNPJ').asString       := CNPJ   ;
      DMProcs4.FATURA_OFC_ORDEM.ParamByName('CODIGO').asInteger    := CODIGO ;
      DMProcs4.FATURA_OFC_ORDEM.ExecProc;
      Result := DMProcs4.FATURA_OFC_ORDEM.ParamByName('VENDA').asInteger;

      DMProcs4.Free;
      DMProcs4 := Nil;

      DmaPP.TransactionProc.Commit ;
  except
      DmApp.TransactionProc.Rollback  ;
  end;
end;

function TDmApp.Envia_Troca_Caixa(CNPJ: String; CODIGO: Integer): String;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.ENVIA_TROCA_CAIXA.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs2.ENVIA_TROCA_CAIXA.ParamByName('CODIGO').asInteger := CODIGO ;
        //
        DMProcs2.ENVIA_TROCA_CAIXA.ExecProc;
        //
        Result := DMProcs2.ENVIA_TROCA_CAIXA.ParamByName('PROD').asString;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Envia_Garantia_Caixa(CNPJ: String; CODIGO: Integer): String;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.ENVIA_GARANTIA_CAIXA.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs4.ENVIA_GARANTIA_CAIXA.ParamByName('CODIGO').asInteger := CODIGO ;
        //
        DMProcs4.ENVIA_GARANTIA_CAIXA.ExecProc;
        //
        Result := DMProcs4.ENVIA_GARANTIA_CAIXA.ParamByName('PROD').asString;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Nome_Produto(CNPJ: String; Produto: String): String;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
{       If DMProcs = Nil Then
        DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.Nome_Produto.ParamByName('CNPJ').asString     := CNPJ    ;
        DMProcs.Nome_Produto.ParamByName('PRODUTO').asString  := Produto ;
        //
        DMProcs.Nome_Produto.ExecProc;
        //
        Result := DMProcs.Nome_Produto.ParamByName('NOME').asString;
        //
{       DMProcs.Free;
        DMProcs := Nil;}

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Soma_Conciliados_Data: Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs4 = Nil Then
          DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.SOMA_CONCILIACAO_CARTAO.ParamByName('CNPJ').asString   := CNPJ ;
        DMProcs4.SOMA_CONCILIACAO_CARTAO.ExecProc;
        Result := DMProcs4.SOMA_CONCILIACAO_CARTAO.ParamByName('SOMA').asFloat;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.Soma_Cheques_Devolvidos( Pessoa: Integer ): Real;
begin
  try
    DmaPP.Transaction.CommitRetaining ;

    if not DmaPP.TransactionProc.InTransaction then
      DmaPP.TransactionProc.StartTransaction ;

    if DMProcs5 = nil then
      DMProcs5 := TDMProcs5.Create(Self);

    DMProcs5.SOMA_CHEQUE_DEVOLVIDOS_PESSOA.ParamByName ('CNPJ'       ).asString  := DmaPP.Cnpj ;
    DMProcs5.SOMA_CHEQUE_DEVOLVIDOS_PESSOA.ParamByName ('PESSOA_FJ'  ).asInteger := Pessoa     ;
    DMProcs5.SOMA_CHEQUE_DEVOLVIDOS_PESSOA.ExecProc;

    if DMProcs5.SOMA_CHEQUE_DEVOLVIDOS_PESSOA.ParamByName('SOMA').ISnULL then
      Result := 0
    else
      Result := DMProcs5.SOMA_CHEQUE_DEVOLVIDOS_PESSOA.ParamByName('SOMA').Value ;

    DMProcs5.SOMA_CHEQUE_DEVOLVIDOS_PESSOA.Close;

    DMProcs5.Free;
    DMProcs5 := Nil;

    DmaPP.TransactionProc.Commit;
  except
    DmApp.TransactionProc.Rollback;
    Application.HandleException(self);
  end;
end;

function TDmApp.Soma_Cheques_Conciliados_Data ( Data: TDateTime ): Real;
begin
  try
    DmaPP.Transaction.CommitRetaining ;
    if not DmaPP.TransactionProc.InTransaction then
      DmaPP.TransactionProc.StartTransaction ;

    if DMProcs4 = nil then
      DMProcs4 := TDMProcs4.Create(Self);

    DMProcs4.SOMAS_FLUXO.StoredProcName := 'SOMA_CHEQUE_CONCILIADOS_DATA' ;

    DMProcs4.SOMAS_FLUXO.ParamByName ('CNPJ'  ).asString  := DmaPP.Cnpj ;
    DMProcs4.SOMAS_FLUXO.ParamByName ('DATA'  ).asDate    := Data       ;
    DMProcs4.SOMAS_FLUXO.ExecProc;
    if DMProcs4.SOMAS_FLUXO.ParamByName('SOMA').ISnULL then
      Result := 0
    else
      Result := DMProcs4.SOMAS_FLUXO.ParamByName('SOMA').Value ;

    DMProcs4.SOMAS_FLUXO.Close;

    DMProcs4.Free;
    DMProcs4 := Nil;

    DmaPP.TransactionProc.Commit;
  except
    DmApp.TransactionProc.Rollback;
    Application.HandleException(self);
  end;
end;

procedure TDmApp.PROCESSA_CONCILIACAO_CARTAO ( Data: TDateTime; Banco: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        DMProcs4.PROCESSA_CONCILIACAO_CARTAO.ParamByName('CNPJ' ).asString   := CNPJ  ;
        DMProcs4.PROCESSA_CONCILIACAO_CARTAO.ParamByName('DATA' ).asDate     := Data  ;
        DMProcs4.PROCESSA_CONCILIACAO_CARTAO.ParamByName('DATA_CX' ).asDate     := dmApp.DataCaixa  ;
        DMProcs4.PROCESSA_CONCILIACAO_CARTAO.ParamByName('BANCO').asInteger  := Banco ;
        DMProcs4.PROCESSA_CONCILIACAO_CARTAO.ExecProc;
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

procedure TDmApp.PROCESSA_CONCILIACAO_CHEQUE ( Data: TDateTime; Codigo: Integer; Tipo: Char);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        { CNPJ ,
          DATA ,
          CODIGO ,
          USUARIO ,
          TURNO ,
          TIPO }
        DMProcs4.PROCESSA_CONCILIACAO_CHEQUE.ParamByName('CNPJ' ).asString    := CNPJ  ;
        DMProcs4.PROCESSA_CONCILIACAO_CHEQUE.ParamByName('DATA' ).asDate      := Data  ;
        DMProcs4.PROCESSA_CONCILIACAO_CHEQUE.ParamByName('CODIGO').asInteger  := codigo ;
        DMProcs4.PROCESSA_CONCILIACAO_CHEQUE.ParamByName('USUARIO').value     := UsuarioCaixa;
        DMProcs4.PROCESSA_CONCILIACAO_CHEQUE.ParamByName('TURNO' ).value      := TurnoCaixa;
        DMProcs4.PROCESSA_CONCILIACAO_CHEQUE.ParamByName('TIPO' ).value       := Tipo ;
        //
        DMProcs4.PROCESSA_CONCILIACAO_CHEQUE.ExecProc;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Quantidade_Fiscal(CNPJ: String; Produto: String): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
{       If DMProcs = Nil Then
        DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.Quantidade_Fiscal.ParamByName('CNPJ').asString     := CNPJ    ;
        DMProcs.Quantidade_Fiscal.ParamByName('PRODUTO').asString  := Produto ;
        //
        DMProcs.Quantidade_Fiscal.ExecProc;
        //
        Result := DMProcs.Quantidade_Fiscal.ParamByName('QUANTIDADE').asFloat;
        //
       {DMProcs.Free;
        DMProcs := Nil;}

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Devolve_Balcao(CNPJ: String; CODIGO: Integer);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Devolve_Balcao.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs.Devolve_Balcao.ParamByName('CODIGO').asInteger := CODIGO ;
        DMProcs.Devolve_Balcao.ExecProc;
        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Devolve_Troca_Balcao(CNPJ: String; CODIGO: Integer);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.DEVOLVE_TROCA_BALCAO.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs2.DEVOLVE_TROCA_BALCAO.ParamByName('CODIGO').asInteger := CODIGO ;
        //
        DMProcs2.DEVOLVE_TROCA_BALCAO.ExecProc;

        DMProcs2.DEVOLVE_TROCA_BALCAO.CLOSE ;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:Exception Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
                DmApp.TransactionProc.Rollback;
           End;


     end;
end;

//ATUALIZA O NUMERO DE NOTA E NUMERO DE SERIE DE NF
Procedure TDmApp.Marca_NumNota(CNPJ: String; CODIGO: Integer; UltNum:Integer; Serie: String);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
           DmaPP.TransactionProc.StartTransaction;

        DMProcs.Marca_NumNota.ParamByName('CNPJ').asString     := CNPJ   ;
        DMProcs.Marca_NumNota.ParamByName('CODIGO').asInteger    := CODIGO ;
        DMProcs.Marca_NumNota.ParamByName('ULTNUMERO').asInteger    := ULTNUM ;
        DMProcs.Marca_NumNota.ParamByName('DATA_NF').asDate     :=  DmApp.DATA_NF;
        DMProcs.Marca_NumNota.ParamByName('SERIE').asString     := Serie  ;

        DMProcs.Marca_NumNota.ExecProc;
        DmaPP.TransactionProc.Commit ;
     except
       On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         DmaPP.TransactionProc.Rollback ;
         Abort ;
         Exit;
       End
       Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         DmaPP.TransactionProc.Rollback ;
         Abort ;
         Exit;
       End;
     end;
end;


Procedure TDmApp.Marca_NumNotaAgrupada(CNPJ: String; PESSOA: INTEGER; Numero:Integer; Serie:String);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.PCD_SET_NF_AGRUPADA.ParamByName('CNPJ'     ).asString     := CNPJ   ;
        DMProcs.PCD_SET_NF_AGRUPADA.ParamByName('PESSOA_FJ'   ).asInteger    := PESSOA ;
        DMProcs.PCD_SET_NF_AGRUPADA.ParamByName('NUMERO').asInteger    := Numero ;
        DMProcs.PCD_SET_NF_AGRUPADA.ParamByName('SERIE').asString     := Serie  ;
        DMProcs.PCD_SET_NF_AGRUPADA.ExecProc;
        DmaPP.TransactionProc.Commit ;
     except
       On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         DmaPP.TransactionProc.Rollback ;
         Abort ;
         Exit;
       End
       Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         DmaPP.TransactionProc.Rollback ;
         Abort ;
         Exit;
       End;
     end;
end;

//ATUALIZA O NUMERO DE NOTA E NUMERO DE SERIE DE NF
Procedure TDmApp.Marca_NumNota_Os(CNPJ: String; CODIGO: Integer; UltNum:Integer; Serie: String);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.MARCA_NUMNOTA_OS.ParamByName('CNPJ'     ).asString     := CNPJ   ;
        DMProcs4.MARCA_NUMNOTA_OS.ParamByName('CODIGO'   ).asInteger    := CODIGO ;
        DMProcs4.MARCA_NUMNOTA_OS.ParamByName('ULTNUMERO').asInteger    := ULTNUM ;
        DMProcs4.MARCA_NUMNOTA_OS.ParamByName('SERIE'    ).asString     := Serie  ;
        //
        DMProcs4.MARCA_NUMNOTA_OS.ExecProc;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
       On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         DmaPP.TransactionProc.Rollback ;
         Exit;
       End
       Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         DmaPP.TransactionProc.Rollback ;
         Exit;
       End;
     end;
end;

//ATUALIZA O NUMERO DE NOTA E NUMERO DE SERIE DE NF
Procedure TDmApp.Marca_NumNota_Agrupada(CNPJ: String; DtInicial, DtFinal: TDateTime; Pessoa: Integer ; UltNum:Integer; Serie: String; Emissao: TdateTime);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.MARCA_NUMNOTA_AGRUPADA.ParamByName('CNPJ'         ).asString     := CNPJ      ;

        DMProcs4.MARCA_NUMNOTA_AGRUPADA.ParamByName('DINI'         ).asDate       := DTINICIAL ;
        DMProcs4.MARCA_NUMNOTA_AGRUPADA.ParamByName('DFIM'         ).asDate       := DTFINAL   ;
        DMProcs4.MARCA_NUMNOTA_AGRUPADA.ParamByName('PESSOA'       ).asInteger    := PESSOA    ;
        DMProcs4.MARCA_NUMNOTA_AGRUPADA.ParamByName('ULTNUMERO'    ).asInteger    := ULTNUM    ;
        DMProcs4.MARCA_NUMNOTA_AGRUPADA.ParamByName('SERIE'        ).asString     := Serie     ;
        DMProcs4.MARCA_NUMNOTA_AGRUPADA.ParamByName('DATA_EMISSAO' ).asDate       := Emissao   ;
        //
        DMProcs4.MARCA_NUMNOTA_AGRUPADA.ExecProc;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
        On E:EDataBaseError Do
        Begin
          ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
          DmaPP.TransactionProc.Rollback ;
          Abort ;
          Exit;
        End
        Else
        Begin
          ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
          DmaPP.TransactionProc.Rollback ;
          Abort ;
          Exit;
        End;
     end;
end;

//SELECIONA AS VENDAS
Procedure TDmApp.Seleciona_Cobranca(Indice: String; Selecionado: Char );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs5 = Nil Then
           DMProcs5 := TDMProcs5.Create(Self);
        //
        DMProcs5.SELECIONA_COBRANCA.ParamByName( 'INDICE').asString  := indice;
        DMProcs5.SELECIONA_COBRANCA.ParamByName( 'SELECIONADO').asString  := SELECIONADO   ;

        //
        DMProcs5.SELECIONA_COBRANCA.ExecProc;

        DmaPP.TransactionProc.Commit ;

        //
        DMProcs5.Free;
        DMProcs5 := Nil;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;

           DmApp.TransactionProc.Rollback  ;

           Abort ;
     end;
end;

Function TDmApp.Seleciona_Venda( CODIGO: Integer; Opcao: String; Pessoa: Integer ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Seleciona_Venda.ParamByName( 'CNPJ'   ).asString  := CNPJ   ;
        DMProcs2.Seleciona_Venda.ParamByName( 'CODIGO' ).asInteger := CODIGO ;
        DMProcs2.Seleciona_Venda.ParamByName( 'OPCAO'  ).asString  := OPCAO  ;
        //
        DMProcs2.Seleciona_Venda.ExecProc;

        DmaPP.TransactionProc.Commit ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        DMProcs2.Soma_Venda_Selecionada.Close ;

        DMProcs2.Soma_Venda_Selecionada.ParamByName( 'CNPJ'   ).asString  := CNPJ   ;
        DMProcs2.Soma_Venda_Selecionada.ParamByName( 'PESSOA' ).asInteger := Pessoa ;

        //
        DMProcs2.Soma_Venda_Selecionada.Open ;

        NUM_REG_SEL := DMProcs2.Soma_Venda_SelecionadaNUMERO.asInteger;
        Result      := DMProcs2.Soma_Venda_SelecionadaSOMA.asFloat    ;

        DMProcs2.Soma_Venda_Selecionada.Close ;

        DmaPP.TransactionProc.Commit ;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
           Abort ;
     end;
end;

//SELECIONA AS VENDAS
Function TDmApp.Seleciona_Venda_Agrupada ( CODIGO: Integer; Opcao: String; Pessoa: Integer ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.Seleciona_Venda.ParamByName( 'CNPJ'   ).asString  := CNPJ   ;
        DMProcs4.Seleciona_Venda.ParamByName( 'CODIGO' ).asInteger := CODIGO ;
        DMProcs4.Seleciona_Venda.ParamByName( 'OPCAO'  ).asString  := OPCAO  ;
        //
        DMProcs4.Seleciona_Venda.ExecProc;

        DmaPP.TransactionProc.Commit ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        DMProcs4.Soma_Venda_Selecionada.Close ;

        DMProcs4.Soma_Venda_Selecionada.ParamByName( 'CNPJ'   ).asString  := CNPJ   ;
        DMProcs4.Soma_Venda_Selecionada.ParamByName( 'PESSOA' ).asInteger := Pessoa ;

        //
        DMProcs4.Soma_Venda_Selecionada.Open ;

        NUM_REG_SEL := DMProcs4.Soma_Venda_SelecionadaNUMERO.asInteger;
        Result      := DMProcs4.Soma_Venda_SelecionadaSOMA.asFloat    ;

        DMProcs4.Soma_Venda_Selecionada.Close ;

        DmaPP.TransactionProc.Commit ;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
           Abort ;
     end;
end;

Procedure TDmApp.Marca_NumCupom( CNPJ: String; CODIGO: Integer );
begin
     Try
        If DmApp.PDV_ECF = 'S'
        THEN BEGIN
             TRY
                DmaPP.Transaction.CommitRetaining ;

                If Not TransactionProc.InTransaction
                then
                    DmaPP.TransactionProc.StartTransaction ;

                //
{               If DMProcs = Nil Then
                   DMProcs := TDMProcs.Create(Self);}
                //
                DMProcs.Marca_NumCupom.ParamByName('CNPJ'     ).asString     := CNPJ               ;
                DMProcs.Marca_NumCupom.ParamByName('CODIGO'   ).asInteger    := CODIGO             ;
                DMProcs.Marca_NumCupom.ParamByName('NUMERO'   ).asInteger    := NumeroUltimoCupom + 1 ;
                DMProcs.Marca_NumCupom.ParamByName('TIPO'     ).asString     := 'ECF'              ;
                //
                DMProcs.Marca_NumCupom.ExecProc;
                //
{               DMProcs.Free;
                DMProcs := Nil;}

                DmaPP.TransactionProc.Commit ;
             EXCEPT
                DmaPP.TransactionProc.Rollback ;
                MESSAGEDLG('Erro ao Gravar o Número do Cupom', MtError, [MbOk],0);
             END
        END
        ELSE BEGIN
             TRY
                DmaPP.Transaction.CommitRetaining ;

                If DmaPP.TransactionProc.InTransaction
                then
                    DmaPP.TransactionProc.StartTransaction ;

                //
{               If DMProcs = Nil Then
                   DMProcs := TDMProcs.Create(Self);}
                //
                DMProcs.Marca_NumCupom.ParamByName('CNPJ'     ).asString     := CNPJ   ;
                DMProcs.Marca_NumCupom.ParamByName('CODIGO'   ).asInteger    := CODIGO ;
                DMProcs.Marca_NumCupom.ParamByName('NUMERO'   ).asInteger    := 0      ;
                DMProcs.Marca_NumCupom.ParamByName('TIPO'     ).asString     := 'PED'  ;
                //
                DMProcs.Marca_NumCupom.ExecProc;
                //
              { DMProcs.Free;
                DMProcs := Nil;}

                DmaPP.TransactionProc.Commit ;
             EXCEPT
                DmaPP.TransactionProc.Rollback ;
                MESSAGEDLG('Erro ao Gravar o Número do Cupom', MtError, [MbOk],0);
             END
        END;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Cancela_Nota( CNPJ: String; CODIGO: Integer; Caixa: TDateTime );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Cancela_Notas.ParamByName('CNPJ'     ).asString     := CNPJ   ;
        DMProcs.Cancela_Notas.ParamByName('CODIGO'   ).asInteger    := CODIGO ;
        DMProcs.Cancela_Notas.ParamByName('DATA_CANCELAMENTO'     ).asDate       := Caixa  ;
        DMProcs.Cancela_Notas.ExecProc;
        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Cancela_Pedido( CNPJ: String; CODIGO: Integer; Caixa: TDateTime );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        DMProcs3.Cancela_Pedido.ParamByName('CNPJ'     ).asString     := CNPJ   ;
        DMProcs3.Cancela_Pedido.ParamByName('CODIGO'   ).asInteger    := CODIGO ;
        DMProcs3.Cancela_Pedido.ParamByName('DATA_CANCELAMENTO'     ).asDate       := Caixa  ;
        //
        DMProcs3.Cancela_Pedido.ExecProc;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Extorna_Cancelamento_Venda( CODIGO: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.EXTORNA_NOTA_CANCELADA.ParamByName('CNPJ'     ).asString     := DMAPP.CNPJ   ;
        DMProcs4.EXTORNA_NOTA_CANCELADA.ParamByName('CODIGO'   ).asInteger    := CODIGO ;
        //
        DMProcs4.EXTORNA_NOTA_CANCELADA.ExecProc;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Carrega(CNPJ: String; CARGA: Integer; FATURA: INTEGER; PESO: REAL; VOLUME: REAL);
BEGIN
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
{       If DMProcs = Nil Then
           DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.Carregar.ParamByName('CNPJ'     ).asString     := CNPJ   ;
        DMProcs.Carregar.ParamByName('CARGA'    ).asInteger    := CARGA  ;
        DMProcs.Carregar.ParamByName('FATURA'   ).asInteger    := FATURA ;
        DMProcs.Carregar.ParamByName('PESO'     ).asFloat      := Peso   ;
        DMProcs.Carregar.ParamByName('VOLUME'   ).asFloat      := Volume ;
        //
        DMProcs.Carregar.ExecProc;
        //
 {      DMProcs.Free;
        DMProcs := Nil;}
        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
END;

Procedure TDmApp.DesCarrega(CNPJ: String; CARGA: Integer; FATURA: INTEGER; PESO: REAL; VOLUME: REAL);
BEGIN
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Descarrega.ParamByName('CNPJ'     ).asString     := CNPJ   ;
        DMProcs2.Descarrega.ParamByName('CARGA'    ).asInteger    := CARGA  ;
        DMProcs2.Descarrega.ParamByName('FATURA'   ).asInteger    := FATURA ;
        DMProcs2.Descarrega.ParamByName('PESO'     ).asFloat      := Peso   ;
        DMProcs2.Descarrega.ParamByName('VOLUME'   ).asFloat      := Volume ;
        //
        DMProcs2.Descarrega.ExecProc;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;
        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
END;

Procedure TDmApp.Encerra_Venda( CNPJ: String; CODIGO: Integer; Data_Caixa: TDateTime; Usuario: Integer; Conta: Integer; Turno: Integer; Tipo_Vale: string = '');
var
  TipoDocto : char;
  sql : string;
begin
     Try
         DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;

         DMProcs.Encerra_Venda.ParamByName('CNPJ').asString        := CNPJ      ;
         DMProcs.Encerra_Venda.ParamByName('CODIGO').asInteger     := CODIGO     ;
         DMProcs.Encerra_Venda.ParamByName('DATA_CAIXA').asDate    := Data_Caixa ;
         DMProcs.Encerra_Venda.ParamByName('USUARIO').asInteger    := Usuario    ;
         DMProcs.Encerra_Venda.ParamByName('CONTA'  ).asInteger    := Conta      ;
         DMProcs.Encerra_Venda.ParamByName('TURNO'  ).asInteger    := Turno      ;
         DMProcs.Encerra_Venda.ParamByName('VALE_TROCO').asString    := Tipo_Vale ;
         DMProcs.Encerra_Venda.ExecProc;

         DmaPP.TransactionProc.commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmaPP.TransactionProc.Rollback;
     end;
end;

Procedure TDmApp.Encerra_Troca( CNPJ: String; CODIGO: Integer; Data_Caixa: TDateTime; Usuario: Integer; Conta: Integer; Turno: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs2 = Nil
        Then
            DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Encerra_Troca.ParamByName('CNPJ').asString        := CNPJ       ;
        DMProcs2.Encerra_Troca.ParamByName('CODIGO').asInteger     := CODIGO     ;
        DMProcs2.Encerra_Troca.ParamByName('DATA_CAIXA').asDate    := Data_Caixa ;
        DMProcs2.Encerra_Troca.ParamByName('USUARIO').asInteger    := Usuario    ;
        DMProcs2.Encerra_Troca.ParamByName('CONTA'  ).asInteger    := Conta      ;
        DMProcs2.Encerra_Troca.ParamByName('TURNO'  ).asInteger    := Turno      ;

        //
        DMProcs2.Encerra_Troca.ExecProc;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Encerra_Garantia( CNPJ: String; CODIGO: Integer; Data_Caixa: TDateTime; Usuario: Integer; Conta: Integer; Turno: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs4 = Nil
        Then
            DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.Encerra_Garantia.ParamByName('CNPJ').asString        := CNPJ       ;
        DMProcs4.Encerra_Garantia.ParamByName('CODIGO').asInteger     := CODIGO     ;
        DMProcs4.Encerra_Garantia.ParamByName('DATA_CAIXA').asDate    := Data_Caixa ;
        DMProcs4.Encerra_Garantia.ParamByName('USUARIO').asInteger    := Usuario    ;
        DMProcs4.Encerra_Garantia.ParamByName('CONTA'  ).asInteger    := Conta      ;
        DMProcs4.Encerra_Garantia.ParamByName('TURNO'  ).asInteger    := Turno      ;

        //
        DMProcs4.Encerra_Garantia.ExecProc;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Exclui_Venda(CNPJ: String; CODIGO: Integer);
begin
     Try            
        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        dmapp.pcd_log_fat_vendas(CNPJ,CODIGO,DMAPP.USR_CONECTADO,'DELEÇÃO');
        DMProcs.Exclui_Venda.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs.Exclui_Venda.ParamByName('CODIGO').asInteger := CODIGO ;
        DMProcs.Exclui_Venda.ExecProc;
        DmaPP.TransactionProc.Commit ;

        LOG_TRANSACOES ( INTTOSTR(CODIGO), 'VND' );
     except
       On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
       End
       Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
       End;
     end;
end;

Procedure TDmApp.Exclui_Troca(CNPJ: String; CODIGO: Integer);
begin
     Try
        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        DMProcs3.Exclui_Troca.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs3.Exclui_Troca.ParamByName('CODIGO').asInteger := CODIGO ;
        //
        DMProcs3.Exclui_Troca.ExecProc;
        //

        DmaPP.TransactionProc.Commit ;

        LOG_TRANSACOES ( INTTOSTR(CODIGO), 'TRC' );
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Exclui_Ordem(CNPJ: String; CODIGO: Integer);
begin
     Try
        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.Exclui_Ordem.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs4.Exclui_Ordem.ParamByName('CODIGO').asInteger := CODIGO ;
        //
        DMProcs4.Exclui_Ordem.ExecProc;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmaPP.TransactionProc.Commit ;

        LOG_TRANSACOES ( INTTOSTR(CODIGO), 'ORD' );
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Exclui_Ordem_Orc(CNPJ: String; CODIGO: Integer);
begin
     Try
        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs4 = Nil Then
           DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.Exclui_Ordem_Orc.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs4.Exclui_Ordem_Orc.ParamByName('CODIGO').asInteger := CODIGO ;
        //
        DMProcs4.Exclui_Ordem_Orc.ExecProc;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmaPP.TransactionProc.Commit ;

        LOG_TRANSACOES ( INTTOSTR(CODIGO), 'ODO' );
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Exclui_Orcamento(CNPJ: String; CODIGO: Integer);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Exclui_Orcamento.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs.Exclui_Orcamento.ParamByName('CODIGO').asInteger := CODIGO ;
        DMProcs.Exclui_Orcamento.ExecProc;

        DmaPP.TransactionProc.Commit ;

        LOG_TRANSACOES ( INTTOSTR(CODIGO), 'ORC' );
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Exclui_Cotacao(CNPJ: String; CODIGO: Integer);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Exclui_Cotacao.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs2.Exclui_Cotacao.ParamByName('CODIGO').asInteger := CODIGO ;
        //
        DMProcs2.Exclui_Cotacao.ExecProc;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Exclui_Nota(CNPJ: String; CODIGO: Integer);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Exclui_Nota.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs2.Exclui_Nota.ParamByName('CODIGO').asInteger := CODIGO ;
        //
        DMProcs2.Exclui_Nota.ExecProc;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmaPP.TransactionProc.Commit ;

        LOG_TRANSACOES ( INTTOSTR(CODIGO), 'VND' );
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Exclui_Nota_Aberto( CNPJ: String );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Exclui_Notas_Aberto.ParamByName('CNPJ').asString    := CNPJ   ;
        //
        DMProcs2.Exclui_Notas_Aberto.ExecProc;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmaPP.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Extorna_Venda(CNPJ: String; CODIGO: Integer);
begin
     Try

        DMProcs.Extorna_Venda.Transaction := DmaPP.Transaction;
        DMProcs.Extorna_Venda.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs.Extorna_Venda.ParamByName('CODIGO').asInteger := CODIGO ;
        DMProcs.Extorna_Venda.ExecProc;

        DmaPP.Transaction.CommitRetaining;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmaPP.Transaction.RollbackRetaining;
     end;
end;

Procedure TDmApp.Extorna_Troca(CNPJ: String; CODIGO: Integer);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Extorna_Troca.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs2.Extorna_Troca.ParamByName('CODIGO').asInteger := CODIGO ;
        //
        DMProcs2.Extorna_Troca.ExecProc;

        DMProcs2.Extorna_Troca.Close ;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Cancela_Troca(CNPJ: String; CODIGO: Integer; DATA: TDATETIME );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        //
        DMProcs3.CANCELA_TROCA.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs3.CANCELA_TROCA.ParamByName('CODIGO').asInteger := CODIGO ;
        DMProcs3.CANCELA_TROCA.ParamByName('DATA'  ).asDate    := DATA   ;
        //
        DMProcs3.CANCELA_TROCA.ExecProc;

        DMProcs3.CANCELA_TROCA.Close ;
        //
        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Apaga_Parcelas_Venda(CNPJ: String; CODIGO: Integer);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Apaga_Parcelas_Venda.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs.Apaga_Parcelas_Venda.ParamByName('CODIGO').asInteger := CODIGO ;

        DMProcs.Apaga_Parcelas_Venda.ExecProc;

        DmApp.TransactionProc.Commit ;                                  
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Apaga_Parcelas_Ordem(CNPJ: String; CODIGO: Integer);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //

        DMProcs3.APAGA_PARCELAS_ORDEM.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs3.APAGA_PARCELAS_ORDEM.ParamByName('CODIGO').asInteger := CODIGO ;
        //
        DMProcs3.APAGA_PARCELAS_ORDEM.ExecProc;
        //
        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Apaga_Parcelas_Troca(CNPJ: String; CODIGO: Integer);
begin
     Try
         DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Apaga_Parcelas_Troca.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs2.Apaga_Parcelas_Troca.ParamByName('CODIGO').asInteger := CODIGO ;
        //
        DMProcs2.Apaga_Parcelas_Troca.ExecProc;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Apaga_Parcelas_Garantias(CNPJ: String; CODIGO: Integer);
begin
     Try
         DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //

        If DMProcs4 = Nil Then
        DMProcs4 := TDMProcs4.Create(Self);
        //
        DMProcs4.Apaga_Parcelas_Garantias.ParamByName('CNPJ').asString    := CNPJ   ;
        DMProcs4.Apaga_Parcelas_Garantias.ParamByName('CODIGO').asInteger := CODIGO ;
        //
        DMProcs4.Apaga_Parcelas_Garantias.ExecProc;
        //
        DMProcs4.Free;
        DMProcs4 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Verifica_Limite(Cnpj: String; Cliente: Integer; Nome: String; Tempo: Integer; Credito: Real; Data: TDateTime; Compra_Atual: Real; Forma_Pagto: Integer=2 ): Boolean;
Var
   SOMA_CHEQUES, SomaReceber, SomaFatura, SomaReceberInterno: Real;
   DataReceber, DataFatura: TDateTime ;
   Periodo: Integer;
Begin
   {Ateração Paulo / alterei o código por que percebi que quando o valor da compra_atual era 0
    a procedure do banco me retornava valido como S, oque é errado }
   If Inclui_Venda_Lim = 'N' THEN
       Compra_Atual := 0;

    VerificaLimite.Close;
    VerificaLimite.ParamByName('CNPJ').value  := CNPJ      ;
    VerificaLimite.ParamByName('CLIENTE').value := Cliente   ;
    VerificaLimite.ParamByName('VALOR_VENDA').value := Compra_Atual;
    VerificaLimite.ParamByName('FORMA_PAGTO').value := Forma_Pagto;
    VerificaLimite.Open;


   SomaReceber := VerificaLimiteTOTAL_RECEBER.asFloat;
   SomaFatura  := VerificaLimiteTOTAL_FATURAS.asFloat;
   Soma_Cheques := VerificaLimiteTOTAL_CHEQUES.asFloat + VerificaLimiteTOTAL_CHEQUES_N_CONCILIADO.asFloat;

   SomaReceber := SomaReceber + Soma_Cheques ;
   If Inclui_Venda_Lim = 'S' THEN
     SomaReceber := SomaReceber + Compra_Atual;

   If VerificaLimiteVALIDO.asString = 'N'  then
   begin
     FrmLimitesCreditos := TFrmLimitesCreditos.Create(Self);
     FrmLimitesCreditos.Codigo := Cliente;
     FrmLimitesCreditos.Nome := Nome;
     FrmLimitesCreditos.COMPRA_ATUAL := Compra_Atual ;
     FrmLimitesCreditos.LBLLIMITE.Caption := 'Limite de Crédito ' + Formatfloat('R$ ###,###,##0.00', Credito) + '  Limite de Tempo ' + inttostr(Tempo);
     FrmLimitesCreditos.Showmodal ;

     If FrmLimitesCreditos.Autorizou then
        Result := true
     else
        Result := false;

   end
   else
    Result := true ;
end;

function TDmApp.Verifica_Limite_Pdv ( Cnpj: String; Cliente: Integer; Nome: String; Tempo: Integer; Credito: Real; Data: TDateTime; Compra_Atual: Real ): Boolean;
Var
   SomaReceber, SomaFatura: Real;
   DataReceber, DataFatura: TDateTime ;
   Periodo: Integer;
Begin
     Try

     DmaPP.Transaction.CommitRetaining ;

     If Not DmaPP.TransactionProc.InTransaction  then
      DmaPP.TransactionProc.StartTransaction ;

      DMProcs.Soma_Receber_Cliente.StoredProcName := 'SOMA_RECEBER_CLIENTE_PDV' ;


      DMProcs.Soma_Receber_Cliente.Close ;
      DMProcs.Soma_Receber_Cliente.Params.Clear ;

      DMProcs.Soma_Receber_Cliente.ParamByName('CNPJ'        ).asString  := CNPJ      ;
      DMProcs.Soma_Receber_Cliente.ParamByName('PESSOA'      ).asInteger := Cliente   ;

      DMProcs.Soma_Receber_Cliente.ExecProc;

      SomaReceber := DMProcs.Soma_Receber_Cliente.ParamByName('RECEBER'    ).asFloat;
      DataReceber := DMProcs.Soma_Receber_Cliente.ParamByName('DATARECEBER').asDate ;
      SomaFatura  := DMProcs.Soma_Receber_Cliente.ParamByName('FATURA'     ).asFloat;
      DataFatura  := DMProcs.Soma_Receber_Cliente.ParamByName('DATAFATURA' ).asDate ;

      If Inclui_Venda_Lim = 'S' THEN
        SomaReceber := SomaReceber + Compra_Atual;

      if tempo = 0 then
      begin
        tempo := 30;
      end;

      If datareceber <> 0 then
      begin      //DIA DO VENCIMENTO
             Periodo := Trunc( Data - DataReceber );
      end
      else
      begin
        Periodo := 0;
      end;

      If (( CREDITO > 0 ) OR ( TEMPO <> 999999 )) THEN
      BEGIN
             //BLOQUEIA POR CREDITO
        IF ( CREDITO > 0 ) THEN
        BEGIN
                  If (SomaReceber + SomaFatura > Credito)
                  then begin
                       Result := False ;
                  end
                  else begin
                       IF ( Periodo >= Tempo )
                       THEN BEGIN
                           Result := FALSE ;
                       END
                       ELSE
                           Result := true ;
                  end;
             END
             ELSE BEGIN
                  //BLOQUEIA POR TEMPO
                  If (( Periodo >= Tempo ) or ( Trunc(DataFatura - Data) >= Tempo ))
                  then begin
                       Result := False ;
                  end
                  else begin
                       Result := true ;
                  end;
             END;
        END
        ELSE BEGIN
             RESULT := TRUE ;
        END;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.At_NF_Ent_Qtd(CNPJ, NDOCTO: String; PESSOA_FJ: Integer): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;
        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.AtNfEntQtd.ParamByName('CNPJ').asString       := CNPJ;
        DMProcs.AtNfEntQtd.ParamByName('NDOCTO').asString     := NDOCTO;
        DMProcs.AtNfEntQtd.ParamByName('PESSOA_FJ').asInteger := PESSOA_FJ;
        DMProcs.AtNfEntQtd.ExecProc;
        //
        Result := DMProcs.AtNfEntQtd.ParamByName('TAG').asInteger;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.At_NF_Ent_Cus(CNPJ, NDOCTO: String; PESSOA_FJ: Integer): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
          DmaPP.TransactionProc.StartTransaction ;

        DMProcs.AtNfEntCus.ParamByName('CNPJ').asString       := CNPJ;
        DMProcs.AtNfEntCus.ParamByName('NDOCTO').asString     := NDOCTO;
        DMProcs.AtNfEntCus.ParamByName('PESSOA_FJ').asInteger := PESSOA_FJ;
        DMProcs.AtNfEntCus.ExecProc;
        Result := DMProcs.AtNfEntCus.ParamByName('TAG').asInteger;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.At_NF_Ent_Fin(CNPJ, NDOCTO: String; PESSOA_FJ: Integer; Dt_Caixa: TDateTime): Integer;
begin
     try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.AtNfEntFin.ParamByName('CNPJ').asString        := CNPJ      ;
        DMProcs.AtNfEntFin.ParamByName('NDOCTO').asString      := NDOCTO    ;
        DMProcs.AtNfEntFin.ParamByName('PESSOA_FJ').asInteger  := PESSOA_FJ ;
        DMProcs.AtNfEntFin.ParamByName('DATA_CAIXA').asDate    := Dt_Caixa  ;
        DMProcs.AtNfEntFin.ExecProc;
        
        Result := DMProcs.AtNfEntFin.ParamByName('TAG').asInteger;

        DmApp.TransactionProc.Commit;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Ext_NF_Ent_Fin(CNPJ, NDOCTO: String; PESSOA_FJ: Integer): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
            
        //
{       If DMProcs = Nil Then
           DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.ExtNfEntFin.ParamByName('CNPJ').asString       := CNPJ;
        DMProcs.ExtNfEntFin.ParamByName('NDOCTO').asString     := NDOCTO;
        DMProcs.ExtNfEntFin.ParamByName('PESSOA_FJ').asInteger := PESSOA_FJ;
        //
        DMProcs.ExtNfEntFin.ExecProc;
        //
        Result := DMProcs.ExtNfEntFin.ParamByName('TAG').asInteger;
        //
        {MProcs.Free;
        DMProcs := Nil;}
        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Ext_NF_Ent_Custo(CNPJ, NDOCTO: String; PESSOA_FJ: Integer): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;
            

        DMProcs.ExtNfEntCusto.ParamByName('CNPJ').asString       := CNPJ;
        DMProcs.ExtNfEntCusto.ParamByName('NDOCTO').asString     := NDOCTO;
        DMProcs.ExtNfEntCusto.ParamByName('PESSOA_FJ').asInteger := PESSOA_FJ;

        DMProcs.ExtNfEntCusto.ExecProc;
        Result := DMProcs.ExtNfEntCusto.ParamByName('TAG').asInteger;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Ext_NF_Ent_Qtd(CNPJ, NDOCTO: String; PESSOA_FJ: Integer): Integer;
begin
     try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.ExtNfEntQtd.ParamByName('CNPJ').asString       := CNPJ;
        DMProcs.ExtNfEntQtd.ParamByName('NDOCTO').asString     := NDOCTO;
        DMProcs.ExtNfEntQtd.ParamByName('PESSOA_FJ').asInteger := PESSOA_FJ;
        DMProcs.ExtNfEntQtd.ExecProc;
        //
        Result := DMProcs.ExtNfEntQtd.ParamByName('TAG').asInteger;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Fechar_Contagem (Codigo: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Fecha_Contagem.Params.Clear ;
        DMProcs.Fecha_Contagem.ParamByName('COD'   ).asInteger  := Codigo;
        DMProcs.Fecha_Contagem.ParamByName('CNPJ'  ).asString   := DmApp.Cnpj ;
        DMProcs.Fecha_Contagem.ExecProc;

        DmApp.TransactionProc.Commit ;
        Application.messagebox('Contagem processada com sucesso','Aviso',mb_ok + mb_iconquestion);
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Fechar_Alteracao ( Codigo: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
            
        //
{       If DMProcs = Nil Then
           DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.Fecha_Alteracao.Params.Clear ;

        DMProcs.Fecha_Alteracao.ParamByName('CNPJ'  ).asString   := DmApp.Cnpj ;
        DMProcs.Fecha_Alteracao.ParamByName('COD'   ).asInteger  := Codigo     ;

        DMProcs.Fecha_Alteracao.ExecProc;
        //
        //
      { DMProcs.Free;
        DMProcs := Nil;}
        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Fechar_Alteracao_Marca ( Codigo: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
            
        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Fecha_Alteracao_Marca.Params.Clear ;

        DMProcs2.Fecha_Alteracao_Marca.ParamByName('CNPJ'  ).asString   := DmApp.Cnpj ;
        DMProcs2.Fecha_Alteracao_Marca.ParamByName('COD'   ).asInteger  := Codigo     ;

        DMProcs2.Fecha_Alteracao_Marca.ExecProc;
        //
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Fechar_Alteracao_Grupo ( Codigo: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
            
        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Fecha_Alteracao_Grupo.Params.Clear ;

        DMProcs2.Fecha_Alteracao_Grupo.ParamByName('CNPJ'  ).asString   := DmApp.Cnpj ;
        DMProcs2.Fecha_Alteracao_Grupo.ParamByName('COD'   ).asInteger  := Codigo     ;

        DMProcs2.Fecha_Alteracao_Grupo.ExecProc;
        //
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;


function TDmApp.LocalizarProduto: String;
var
   Criou: Boolean ;
begin
     Criou := False ;

     If DMLocalizarProd = Nil
     then begin
          //
          DMLocalizarProd := TDMLocalizarProd.Create(Self);
          //
          Criou := True ;
     end;
     FrmLocalizarProd := TFrmLocalizarProd.Create(Self);
     FrmLocalizarProd.ShowModal;
     //
     If FrmLocalizarProd.ModalResult = mrOk Then
        Result := FrmLocalizarProd.CodigoProduto;
     //
     DMLocalizarProd.Produtos.Close;
     DMLocalizarProd.Similares.Close;
     DMLocalizarProd.SelMarca.Close;
     DMLocalizarProd.SelAplicacao.Close;

     if Criou
     then begin
          DMLocalizarProd.Free;
          DMLocalizarProd := Nil;
     end;

     //
     FrmLocalizarProd.Free;
     FrmLocalizarProd := Nil;
end;

Function TDmApp.SaldoAntContabilidade ( Conta: String; Data: TDateTime ):Real;
VAR
   CREDITO, DEBITO: REAL ;
Begin
  //SALDO ANTERIOR
{ If DMProcs = Nil Then
     DMProcs := TDMProcs.Create(Self);}
  //
  DMProcs.SaldoAntContabilidade.Params.Clear ;

  DMProcs.SaldoAntContabilidade.Params.CreateParam ( FtString , 'CNPJ'    , PtInput  );
  DMProcs.SaldoAntContabilidade.Params.CreateParam ( FtString , 'CONTA'   , PtInput  );
  DMProcs.SaldoAntContabilidade.Params.CreateParam ( FtDate   , 'DATA'    , PtInput  );
  DMProcs.SaldoAntContabilidade.Params.CreateParam ( FtFloat  , 'CREDITO' , PtOutPut );
  DMProcs.SaldoAntContabilidade.Params.CreateParam ( FtFloat  , 'DEBITO'  , PtOutPut );

  DMProcs.SaldoAntContabilidade.ParamByName('CNPJ').asString  := DmApp.Cnpj;
  DMProcs.SaldoAntContabilidade.ParamByName('CONTA').asString := Conta;
  DMProcs.SaldoAntContabilidade.ParamByName('DATA').asDate    := Data ;

  DMProcs.SaldoAntContabilidade.ExecProc;

  IF DMProcs.SaldoAntContabilidade.Params[3].ISNULL
  THEN
      CREDITO := 0
  ELSE
      CREDITO := DMProcs.SaldoAntContabilidade.Params[3].Value ;

  IF DMProcs.SaldoAntContabilidade.Params[4].ISNULL
  THEN
      DEBITO := 0
  ELSE
      DEBITO := DMProcs.SaldoAntContabilidade.Params[4].Value ;


  Result := DEBITO - CREDITO ;

  //
  {MProcs.Free;
  DMProcs := Nil;}
end;

Function TDmApp.SaldoAntContabilidade_DRE ( Conta: String; Data: TDateTime ):Real;
Begin
  //SALDO ANTERIOR
  If DMProcs4 = Nil Then
     DMProcs4 := TDMProcs4.Create(Self);
  //
  DMProcs4.SALDO_DRE.Params.Clear ;

  DMProcs4.SALDO_DRE.Params.CreateParam ( FtString , 'CNPJ'    , PtInput  );
  DMProcs4.SALDO_DRE.Params.CreateParam ( FtString , 'CONTA'   , PtInput  );
  DMProcs4.SALDO_DRE.Params.CreateParam ( FtDate   , 'DATA'    , PtInput  );
  DMProcs4.SALDO_DRE.Params.CreateParam ( FtFloat  , 'CREDITO' , PtOutPut );
  DMProcs4.SALDO_DRE.Params.CreateParam ( FtFloat  , 'DEBITO'  , PtOutPut );

  DMProcs4.SALDO_DRE.ParamByName('CNPJ').asString  := DmApp.Cnpj;
  DMProcs4.SALDO_DRE.ParamByName('CONTA').asString := Conta;
  DMProcs4.SALDO_DRE.ParamByName('DATA').asDate    := Data ;

  DMProcs4.SALDO_DRE.ExecProc;

  Result := DMProcs4.SALDO_DRE.Parambyname('DEBITO').Value - DMProcs4.SALDO_DRE.Parambyname('CREDITO').Value ;

  //
  DMProcs4.Free;
  DMProcs4 := Nil;
end;

Procedure TDmApp.Concilia_Banco ( Codigo: Integer; Data: TDateTime );
Begin
  DMProcs.Concilia_Banco.Close ;
  DMProcs.Concilia_Banco.Params.Clear ;
  DMProcs.Concilia_Banco.Params.CreateParam ( FtInteger, 'CODIGO'    , PtInput );
  DMProcs.Concilia_Banco.Params.CreateParam ( FtInteger, 'DATA'      , PtInput );
  DMProcs.Concilia_Banco.ParamByName('CODIGO').asInteger := Codigo ;
  DMProcs.Concilia_Banco.ParamByName('DATA'  ).asDate    := Data   ;
  DMProcs.Concilia_Banco.ExecProc;
end;

Procedure TDmApp.DesConcilia_Banco ( Codigo: Integer );
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
            
        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);

        //
        DMProcs2.DesConcilia_Banco.Close ;
        DMProcs2.DesConcilia_Banco.Params.Clear ;

        DMProcs2.DesConcilia_Banco.Params.CreateParam ( FtInteger, 'CODIGO'    , PtInput );

        DMProcs2.DesConcilia_Banco.ParamByName('CODIGO').asInteger := Codigo ;

        DMProcs2.DesConcilia_Banco.ExecProc;

        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Concilia_Cheque ( Banco: String; Conta: String; Cheque: String ; Data: TDateTime; Tipo: String );
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        IF Not DmApp.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);

        //
        DMProcs2.Concilia_Cheque.Close ;
        DMProcs2.Concilia_Cheque.Params.Clear ;

        DMProcs2.Concilia_Cheque.Params.CreateParam ( FtString,  'CNPJ'    , PtInput );
        DMProcs2.Concilia_Cheque.Params.CreateParam ( FtString,  'BANCO'   , PtInput );
        DMProcs2.Concilia_Cheque.Params.CreateParam ( FtString,  'CONTA'   , PtInput );
        DMProcs2.Concilia_Cheque.Params.CreateParam ( FtString,  'CHEQUE'  , PtInput );
        DMProcs2.Concilia_Cheque.Params.CreateParam ( FtString,  'TIPO'    , PtInput );
        DMProcs2.Concilia_Cheque.Params.CreateParam ( FtInteger, 'DATA'    , PtInput );

        DMProcs2.Concilia_Cheque.ParamByName('CNPJ'   ).asString   := Cnpj   ;
        DMProcs2.Concilia_Cheque.ParamByName('BANCO'  ).asString   := Banco  ;
        DMProcs2.Concilia_Cheque.ParamByName('CONTA'  ).asString   := Conta  ;
        DMProcs2.Concilia_Cheque.ParamByName('CHEQUE' ).asString   := Cheque ;
        DMProcs2.Concilia_Cheque.ParamByName('TIPO'   ).asString   := Tipo   ;
        DMProcs2.Concilia_Cheque.ParamByName('DATA'   ).asDate     := Data   ;

        DMProcs2.Concilia_Cheque.ExecProc;

        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback ;
     end;
end;

Procedure TDmApp.Concilia_Cartao ( Codigo: Integer ; Data: TDateTime; Tipo: String );
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
            
        //
        DMProcs3.CONCILIA_CARTAO.Close ;
        DMProcs3.CONCILIA_CARTAO.Params.Clear ;

        DMProcs3.CONCILIA_CARTAO.Params.CreateParam ( FtString,  'CNPJ'    , PtInput );
        DMProcs3.CONCILIA_CARTAO.Params.CreateParam ( FtInteger, 'CODIGO'  , PtInput );
        DMProcs3.CONCILIA_CARTAO.Params.CreateParam ( FtString,  'TIPO'    , PtInput );
        DMProcs3.CONCILIA_CARTAO.Params.CreateParam ( FtInteger, 'DATA'    , PtInput );

        DMProcs3.CONCILIA_CARTAO.ParamByName('CNPJ'   ).asString   := Cnpj   ;
        DMProcs3.CONCILIA_CARTAO.ParamByName('CODIGO' ).asInteger  := Codigo ;
        DMProcs3.CONCILIA_CARTAO.ParamByName('TIPO'   ).asString   := Tipo   ;
        DMProcs3.CONCILIA_CARTAO.ParamByName('DATA'   ).asDate     := Data   ;

        DMProcs3.CONCILIA_CARTAO.ExecProc;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Devolve_Cheque ( Banco: String; Conta: String; Cheque: String ; Data: TDateTime; Motivo: Integer );
Begin
  try
    if DMProcs2 = nil then
      DMProcs2 := TDMProcs2.Create(Self);

    with DMProcs2.Devolve_Cheque do
    begin
      Transaction := DMApp.txnCritica;
      Transaction.StartTransaction;
      ParamByName('CNPJ'          ).asString   := Cnpj   ;
      ParamByName('CONTA'         ).asString   := Conta  ;
      ParamByName('BANCO'         ).asString   := Banco  ;
      ParamByName('CHEQUE'        ).asString   := Cheque ;
      ParamByName('DATA_DEVOLUCAO').asDate     := Data   ;
      ParamByName('MOTIVO_DEVOLUCAO').asInteger  := Motivo ;
      ExecProc;
      Transaction.Commit;
    end;
    DMProcs2.Free;
    DMProcs2 := Nil;
  except
    DmApp.txnCritica.Rollback;
    Application.HandleException(self);
  end;
end;

Procedure TDmApp.Acerta_Cheque ( Banco: String; Conta: String; Cheque: String ; Data: TDateTime; Juros: Real );
Begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);

        //
        DMProcs2.Acerta_Cheque.Close ;
        DMProcs2.Acerta_Cheque.Params.Clear ;

        DMProcs2.Acerta_Cheque.Params.CreateParam ( FtString,  'CNPJ'          , PtInput );
        DMProcs2.Acerta_Cheque.Params.CreateParam ( FtString,  'CONTA'         , PtInput );
        DMProcs2.Acerta_Cheque.Params.CreateParam ( FtString,  'BANCO'         , PtInput );
        DMProcs2.Acerta_Cheque.Params.CreateParam ( FtString,  'CHEQUE'        , PtInput );
        DMProcs2.Acerta_Cheque.Params.CreateParam ( FtInteger, 'DATA_ACERTO'   , PtInput );
        DMProcs2.Acerta_Cheque.Params.CreateParam ( FtFloat,   'JUROS'         , PtInput );

        DMProcs2.Acerta_Cheque.ParamByName('CNPJ'          ).asString   := Cnpj   ;
        DMProcs2.Acerta_Cheque.ParamByName('CONTA'         ).asString   := Conta  ;
        DMProcs2.Acerta_Cheque.ParamByName('BANCO'         ).asString   := Banco  ;
        DMProcs2.Acerta_Cheque.ParamByName('CHEQUE'        ).asString   := Cheque ;
        DMProcs2.Acerta_Cheque.ParamByName('DATA_ACERTO'   ).asDate     := Data   ;
        DMProcs2.Acerta_Cheque.ParamByName('JUROS'         ).asFloat    := Juros  ;

        DMProcs2.Acerta_Cheque.ExecProc;

        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function  TDmApp.Ultima_Conta(Conta:String): String;
begin
  // Ultima Conta
  //
{ If DMProcs = Nil Then
     DMProcs := TDMProcs.Create(Self);}
  //
  DMProcs.Ultima_Conta.ParamByName('CONTA').asString := CONTA;
  DMProcs.Ultima_Conta.ExecProc;
  //
  Result := DMProcs.Ultima_Conta.ParamByName('ULTIMACONTA').asSTRING;
  //
{ DMProcs.Free;
  DMProcs := Nil;}
end;

function TDmApp.DataHora(Tp: String): TDateTime;
begin
  DMProcs.DataHora.ParamByName('TP').asString := Tp;
  DMProcs.DataHora.ExecProc;
  //
  Result := DMProcs.DataHora.ParamByName('DATA').asDateTime;

end;

Function TDmApp.SelecionarEmpresa: String;
         Function AplicaDados: String ;
         var
           Versao : Integer;
           sAux, chave, Caminho: string;
           Config: TIniFile;
           IniFile  : String ;
           Ok : Boolean;
         Begin
              DMApp.Cnpj              := DMEmpresas.SelEmpresa.FieldByName('CNPJ').asString;
              DMApp.DB_VERSAO         := DMEmpresas.SelEmpresa.FieldByName('DB_VERSAO').asInteger;
              DMApp.Foto              := DMEmpresas.SelEmpresa.FieldByName('FOTO').asString;
              DmApp.Nome              := TRIM(DMEmpresas.SelEmpresa.FieldByName('NOME').asString);
              DmApp.IE               := TRIM(DMEmpresas.SelEmpresa.FieldByName('IE').asString);
              DmApP.Cidade            := DMEmpresas.SelEmpresa.FieldByName('NOME_CIDADE').asString;
              DmApP.ENDER             := DMEmpresas.SelEmpresa.FieldByName('NOME_LOGRADOURO').asString;
              DmApP.BAIRRO            := DMEmpresas.SelEmpresa.FieldByName('NOME_BAIRRO').asString;
              DmApP.Uf                := DMEmpresas.SelEmpresa.FieldByName('UF').asString;
              DmApP.CEP               := DMEmpresas.SelEmpresa.FieldByName('CEP').asString;
              DmApP.FONE              := DMEmpresas.SelEmpresa.FieldByName('FONE').asString;
              DmApP.FAX               := DMEmpresas.SelEmpresa.FieldByName('FAX').asString;
              DmApP.EMAIL             := DMEmpresas.SelEmpresa.FieldByName('EMAIL').asString;
              DmApp.TAXA              := DMEmpresas.SelEmpresa.FieldByName('TX_JUROS_APOS').asFloat;
              DmApp.PIS               := DMEmpresas.SelEmpresa.FieldByName('PIS').asFloat;
              DmApp.CUSTO_VARIAVEL    := DMEmpresas.SelEmpresa.FieldByName('CUSTO_VARIAVEL').asFloat;
              DmApp.COFINS            := DMEmpresas.SelEmpresa.FieldByName('COFINS').asFloat;
              DmApp.PROPAGANDA        := DMEmpresas.SelEmpresa.FieldByName('PROPAGANDA').asFloat;
              DmApp.DESCONTOS         := DMEmpresas.SelEmpresa.FieldByName('DESCONTOS').asFloat;
              DmApp.VENDEDOR          := DMEmpresas.SelEmpresa.FieldByName('VENDEDOR').asFloat;
              DmApp.TIPO              := DMEmpresas.SelEmpresa.FieldByName('TIPO_TAXA').asString;
              DmApp.PG_COM_TERC       := DMEmpresas.SelEmpresa.FieldByName('PG_COM_TERC').asString;
              DmApp.CLIAVISTA         := DMEmpresas.SelEmpresa.FieldByName('CLI_VND_VISTA').asInteger;
              DmApp.CARREGAR_ARQ      := DMEmpresas.SelEmpresa.FieldByName('CARREGAR_ARQUIVOS').asString;
              DmApp.CHM_PROD_INEXIST  := DMEmpresas.SelEmpresa.FieldByName('CHM_LOCPROD_INEXISTENTE').asString;
              DmApp.VER_ENVIADAS      := DMEmpresas.SelEmpresa.FieldByName('VER_VENDAS_ENVIADAS').asString;
//              DmApp.COR_FUNDO_SEL     := DMEmpresas.SelEmpresa.FieldByName('COR_FUNDO_SELECIONADO').asString;
//              DmApp.SAI_COR_FUNDO_SEL := DMEmpresas.SelEmpresa.FieldByName('COR_FUNDO_DESELECIONADO').asString;
              DmApp.NUM_REG_LOAD      := DMEmpresas.SelEmpresa.FieldByName('NUM_REG_LOAD').asInteger;
              DmApp.TAXA_DESC_AVISTA  := DMEmpresas.SelEmpresa.FieldByName('LOJA_DESC_AVISTA').asFloat;
              DmApp.MARGEM_BRUTA  := DMEmpresas.SelEmpresa.FieldByName('MARGEM_BRUTA').asFloat;
              DmApp.ITENSORCAMENTO    := DMEmpresas.SelEmpresa.FieldByName('ITENS_ORCAMENTO').asInteger;
              DmApp.IMP_DESC_AGRUPADO := DMEmpresas.SelEmpresa.FieldByName('IMPRIME_DESCONTO_AGRUPADO').asString;
              DmApp.IMP_RODAPE_ORC    := DMEmpresas.SelEmpresa.FieldByName('IMPRIME_RODAPE_ORCAMENTO').asString;
              DmApp.TIPO_CUSTO        := DMEmpresas.SelEmpresa.FieldByName('TIPO_CUSTO').asString;
              DmApp.TIPO_ORCAMENTO    := DMEmpresas.SelEmpresa.FieldByName('TIPO_ORCAMENTO').asString;
              DmApp.Cx_Comp_Sld_Ant   := DMEmpresas.SelEmpresa.FieldByName('CX_COMP_SLD_ANT').asString;
              DmApp.Cx_Imp_Vnd_Agrup  := DMEmpresas.SelEmpresa.FieldByName('CX_IMP_VND_AGRUPADA').asString;
              DmApp.Cx_Transp_Sld     := DMEmpresas.SelEmpresa.FieldByName('CX_TRANSP_SLD_ANT').asString;
              DmApp.TIPO_CAB_FATURA   := DMEmpresas.SelEmpresa.FieldByName('TIPO_CAB_FATURA').asString;
              DmApp.Sel_Impressora    := DMEmpresas.SelEmpresa.FieldByName('SELECIONA_IMPRESSORA').asString;
              DmApp.CASAS_QNTDE       := DMEmpresas.SelEmpresa.FieldByName('IMP_CASAS_QNTDE_FATURA').asString;
              DmApp.VALIDA_DOCS       := DMEmpresas.SelEmpresa.FieldByName('VALIDA_DOCUMENTOS').asString;
              DmApp.NUMERO_ZEROS      := DMEmpresas.SelEmpresa.FieldByName('NUMERO_ZEROS').asInteger;
              DmApp.DIG_ITENS_NF      := DMEmpresas.SelEmpresa.FieldByName('DIG_ITENS_NF').asInteger;
              DmApp.TROCO_MAXIMO      := DMEmpresas.SelEmpresa.FieldByName('TROCO_MAXIMO').asFloat;
              DmApp.MASCARA_FONE      := DMEmpresas.SelEmpresa.FieldByName('MASCARA_FONE').asString;
              DmApp.IMPRIME_SUBTOTORC := DMEmpresas.SelEmpresa.FieldByName('IMPRIME_SUBTOTAL_ORCAMENTO').asString;
              DmApp.MASCARA_PROD_ENT  := DMEmpresas.SelEmpresa.FieldByName('MASCARA_PRODUTOS_ENT').asString;
              DmApp.UTIL_PROPRIEDADE  := DMEmpresas.SelEmpresa.FieldByName('PDV_PROPRIEDADE').asString;
              DmApp.IMPRIMIR_POSICOES :=  DMEmpresas.SelEmpresa.FieldByName('IMPRIMIR_POSICOES').asString;
              DmApp.Cx_Mostra_Ent     := DMEmpresas.SelEmpresa.FieldByName('PST_MOSTRA_ENTRADAS').asString;
              DmApp.IMP_CONVENIO_GRAF := DMEmpresas.SelEmpresa.FieldByName('IMP_CONVENIO_GRAF').asString;
              DmApp.PDV_IMP_CONVENIO := DMEmpresas.SelEmpresa.FieldByName('PDV_IMP_CONVENIO').asString;
              DmApp.SINC_BOL_DPL      := DMEmpresas.SelEmpresa.FieldByName('SINCRONIZAR_BOL_DPL').asString;
              DmApp.COMISSAO_FAIXA    := DMEmpresas.SelEmpresa.FieldByName('COMISSAO_POR_FAIXA').asString;
              DmApp.COMISSAO_NORMAL   := DMEmpresas.SelEmpresa.FieldByName('COMISSAO_NORMAL').asString;
              DmApp.ALTERA_VLR_CNT_PAGAR  := DMEmpresas.SelEmpresa.FieldByName('ALTERA_VLR_CNT_PAGAR').asString;
              DmApp.DT_CX_MOVTO_ANTERIOR := DMEmpresas.SelEmpresa.FieldByName('DT_CX_MOVTO_ANTERIOR').asString;
              DmApp.CTB_DT_AVISO_BANCARIO := DMEmpresas.SelEmpresa.FieldByName('CTB_DT_AVISO_BANCARIO').asString;
              DmApp.CONF_DUPLIC_REC   := DMEmpresas.SelEmpresa.FieldByName('CONF_DUPLIC_REC_LANCTO').asString;
              DmApp.FAT_TIPO_PARCEL   := DMEmpresas.SelEmpresa.FieldByName('FAT_TIPO_PARCELAMENTO').asString;
              DmApp.MENSAGEM_CONDIC   := DMEmpresas.SelEmpresa.FieldByName('MENSAGEM_CONDICIONAL').asString;
              DmApp.Faz_Fec_Diario    := DMEmpresas.SelEmpresa.FieldByName('FAZ_FECHAMENTO_DIARIO').asString;
              DmApp.SINCRONIZA_CAIXA  := DMEmpresas.SelEmpresa.FieldByName('CAIXA_SINCRONIZADO').asString;
              DmApp.ALT_PRCVEND_MARG  := DMEmpresas.SelEmpresa.FieldByName('ALT_PRCVEND_MARGEM').asString;
              DmApp.BLQ_VND_SEM_IERG  := DMEmpresas.SelEmpresa.FieldByName('BLQ_VENDA_SEM_IERG').asString;
              DmApp.PDV_VALOR_ZERADO  := DMEmpresas.SelEmpresa.FieldByName('PDV_UNITARIO_ZERADO').asString;
              DmApp.DIRETORIO_TEF     := DMEmpresas.SelEmpresa.FieldByName('DIRETORIO_TEF').asString;
              DmApp.IMPRIME_NF_BALCAO := DMEmpresas.SelEmpresa.FieldByName('IMPRIME_NF_BALCAO').asString;
              DmApp.TRANSF_VLRS_CAIXA := DMEmpresas.SelEmpresa.FieldByName('TRANSF_VLRS_CAIXA').asString;
              DmApp.Pdv_Msg1          := DMEmpresas.SelEmpresa.FieldByName('PDV_MSG1').asString;
              DmApp.Pdv_Msg2          := DMEmpresas.SelEmpresa.FieldByName('PDV_MSG2').asString;
              DmApp.Pdv_Msg3          := DMEmpresas.SelEmpresa.FieldByName('PDV_MSG3').asString;
              DmApp.Pdv_Msg4          := DMEmpresas.SelEmpresa.FieldByName('PDV_MSG4').asString;
              DmApp.Pdv_Msg5          := DMEmpresas.SelEmpresa.FieldByName('PDV_MSG5').asString;
              dmApp.MSG_PDVTELA       := DMEmpresas.SelEmpresa.FieldByName('MSG_PDVTELA').asString;
              DmApp.TAXA_ACRESC_PDV   := DMEmpresas.SelEmpresa.FieldByName('TAXA_ACRESC_PDV').asFloat;

              DmApp.ICM_PRESUMIDO_SEM := DMEmpresas.SelEmpresa.FieldByName('ICM_PRESUMIDO_SEM_IPI').asFloat;
              DmApp.ICM_PRESUMIDO_IPI := DMEmpresas.SelEmpresa.FieldByName('ICM_PRESUMIDO_IPI').asFloat;

              IF DmApp.NUM_REG_LOAD = 0  //NUMERO DE REGISTROS PARA O LOAD NAS VENDAS
              THEN
                  DmApp.NUM_REG_LOAD := 100 ;

              //BOLETO BANCARIO
              DmApp.MENSAGEM_BOL      := DMEmpresas.SelEmpresa.FieldByName('MENSAGEM_BOL').asString ;
              DmApp.MENSAGEM_BOL2     := DMEmpresas.SelEmpresa.FieldByName('MENSAGEM_BOL2').asString;
              DmApp.MORA_DIARIA       := DMEmpresas.SelEmpresa.FieldByName('MORA_DIARIA').asFloat   ;

              //-----------------------------boleto grafico--------------------------//
              DMApp.BLT_GERA_BOLETOS   := DMEmpresas.SelEmpresaGERA_BOLETOS.AsString;
              DMApp.BLT_EMAIL_SERVIDOR := DMEmpresas.SelEmpresaBLT_EMAIL_SERVIDOR.AsString;
              DMApp.BLT_EMAIL_PORTA    := DMEmpresas.SelEmpresaBLT_EMAIL_PORTA.VALUE;
              DMApp.BLT_EMAIL_USER     := DMEmpresas.SelEmpresaBLT_EMAIL_USER.AsString;
              DMApp.BLT_EMAIL_SENHA    := DMEmpresas.SelEmpresaBLT_EMAIL_SENHA.AsString;
              DMApp.BLT_NOSSO_NUM_INI  := DMEmpresas.SelEmpresaBLT_NOSSO_NUM_INI.value;
              DMApp.BLT_NOSSO_NUM_FIM  := DMEmpresas.SelEmpresaBLT_NOSSO_NUM_FIM.value;


              {if (BlT_GERA_BOLETOS = 'S') then
                CobreBemX := CreateOleObject('CobreBemX.ContaCorrente');}

              DMApp.BLT_LAYOUT        := DMEmpresas.SelEmpresaBLT_LAYOUT.Value;
              DMApp.BLT_DIR_REMESSA   := DMEmpresas.SelEmpresaBLT_DIR_REMESSA.Value;
              DMApp.BLT_DIR_RETORNO   := DMEmpresas.SelEmpresaBLT_DIR_RETORNO.Value;
              DmApp.DESP_BANCARIA     := DMEmpresas.SelEmpresa.FieldByName('DESP_BANCARIA').asFloat   ;

              //CAIXA
              DmApp.PAGAR_CAIXA       := 'S';
              DmApp.RECEBER_CAIXA     := 'S';
              DmApp.Ext_Lanc_Fechado  := DMEmpresas.SelEmpresa.FieldByName('EXT_LANC_CAIXA_FECHADO').asString ;
              DmaPP.Ecf_Casas_Dec     := 3;



              //PDV
              DmApp.PDVNATUREZA       := DMEmpresas.SelEmpresa.FieldByName('PDV_NATUREZA').asInteger;
              if (DMEmpresas.SelEmpresa.FieldByName('PDV_FORMA_PAGTO').asInteger = 0) then
                DmApp.PDV_FORMA_PAGTO   := 1
              else
                DmApp.PDV_FORMA_PAGTO   := DMEmpresas.SelEmpresa.FieldByName('PDV_FORMA_PAGTO').asInteger;

              DmApp.PDVTIPODOCTO      := DMEmpresas.SelEmpresa.FieldByName('PDV_TIPODOCTO').asString;
              DmApp.PDVLOCAL          := DMEmpresas.SelEmpresa.FieldByName('PDV_LOCALCOBRANCA').asInteger;

              DmApp.PDV_UNITARIO      := DMEmpresas.SelEmpresa.FieldByName('PDV_MAIORVALORUNIT').asFloat;
              DmApp.PDV_SENHA         := DMEmpresas.SelEmpresa.FieldByName('PDV_SENHA').asString;
              dmApp.CONTROLE_PEDIDO_RESTAURANTE := DMEmpresas.SelEmpresa.FieldByName('CONTROLE_PEDIDO_RESTAURANTE').asString;
              DmApp.PDV_PARC_VENDA    := DMEmpresas.SelEmpresa.FieldByName('PDV_PARCELA_VENDA').asString;
              DmApp.ELIMINA_ZEROS     := DMEmpresas.SelEmpresa.FieldByName('PDV_ELIMINA_ZEROS').asString;
              DmApp.DESC_BX_PARCIAL   := DMEmpresas.SelEmpresa.FieldByName('DESC_BX_PARCIAL').asString;
              DmApp.ELIMINA_ZERO_PRD_SEM_GRADE := DMEmpresas.SelEmpresa.FieldByName('ELIMINA_ZERO_PRD_SEM_GRADE').asString;
              DmApp.ACRESCENTA_ZEROS  := DMEmpresas.SelEmpresa.FieldByName('PDV_ACRESCENTA_ZEROS').asString;
              DmApp.F4_ALTERA         := DMEmpresas.SelEmpresa.FieldByName('PDV_F4_ALTERACLIENTE').asString;
              DmApp.DIG_SEN_VEND      := DMEmpresas.SelEmpresa.FieldByName('DIG_SENHA_VENDEDOR').asString;
              DmApp.PDV_DIGITA_QNTDE  := DMEmpresas.SelEmpresa.FieldByName('PDV_DIGITA_QUANTIDADE').asString;

              DmApp.PDV_MENSAGEM      := DMEmpresas.SelEmpresa.FieldByName('MENS_ECF').asString;
              DmApp.PDV_MENSAGEM1     := DMEmpresas.SelEmpresa.FieldByName('MENS2_ECF').asString;
              DmApp.PDV_MENSAGEM2     := DMEmpresas.SelEmpresa.FieldByName('MENS3_ECF').asString;
              DmApp.IMPRIME_VINC_VLR  := DMEmpresas.SelEmpresa.FieldByName('PDV_IMP_VINC_VALOR').asString;
              DmApp.UTIL_PROPRIEDADE  := DMEmpresas.SelEmpresa.FieldByName('PDV_PROPRIEDADE').asString;
              DmApp.DIGITA_VEND_PDV   := DMEmpresas.SelEmpresa.FieldByName('DIGITA_VENDEDOR_PDV').asString;
              DmApp.SIS_MSG_INTERNA   := DMEmpresas.SelEmpresa.FieldByName('SIS_MENSAGEM_INTERNA').asString;
              DmApp.ATIVA_AGENTE   := DMEmpresas.SelEmpresa.FieldByName('ATIVA_AGENTE').asString;

              //Dados de email
              DmApp.EMAIL_PADRAO := DMEmpresas.SelEmpresa.FieldByName('EMAIL_PADRAO').asString;
              DmApp.SMTP := DMEmpresas.SelEmpresa.FieldByName('SMTP').asString;
              DmApp.LOGIN := DMEmpresas.SelEmpresa.FieldByName('LOGIN').asString;
              DmApp.SENHA := DMEmpresas.SelEmpresa.FieldByName('SENHA').asString;
              DmApp.NOME_USUARIO := DMEmpresas.SelEmpresa.FieldByName('NOME_USUARIO').asString;
              DmApp.EMAIL_CONTROLE := DMEmpresas.SelEmpresa.FieldByName('EMAIL_CONTROLE').asString;

              //PARAMETROS DE VENDAS
              DmApp.DIG_DESC_VENDA    := DMEmpresas.SelEmpresa.FieldByName('DIG_DESC_VENDA').asString;
              dmApp.EXIBE_PENDENCIA   := DMEmpresas.SelEmpresa.FieldByName('EXIBE_PENDENCIA').asString;

              dmApp.EXIBE_CTR_OBRAS   := DMEmpresas.SelEmpresa.FieldByName('EXIBE_CTR_OBRAS').asString;

              dmApp.EXIBE_INDICE_PDV  := DMEmpresas.SelEmpresa.FieldByName('EXIBE_INDICE_PDV').asString;
              dmApp.EXIBE_ACERTO      := DMEmpresas.SelEmpresa.FieldByName('exibe_acerto_contas').asString;
              dmApp.EXIBE_OFC_COPIAS      := DMEmpresas.SelEmpresa.FieldByName('OFC_EXIBE_COPIAS').asString;
              dmApp.OFC_DATA_BASE_MAN_OS := DMEmpresas.SelEmpresa.FieldByName('OFC_DATA_BASE_MAN_OS').asDateTime;
              dmApp.EXIBE_OFC_MOVTO_AVULSO      := DMEmpresas.SelEmpresa.FieldByName('OFC_EXIBE_MOVTO_AVULSO').asString;
              dmApp.EXIBE_OFC_VISUALIZACAO      := DMEmpresas.SelEmpresa.FieldByName('OFC_EXIBE_VISUALIZACAO').asString;
              dmApp.EXIBE_SRV := DMEmpresas.SelEmpresa.FieldByName('EXIBE_SRV').asString;
              dmApp.OFC_EXIBE_NOTIFICACAO := DMEmpresas.SelEmpresa.FieldByName('OFC_EXIBE_NOTIFICACAO').asString;
              //Configura Campos


              dmApp.EXIBE_OFC_PREVENTIVA := DMEmpresas.SelEmpresa.FieldByName('ofc_exibe_visita_preventiva').asString;
              dmApp.EXIBE_OFC_MOVIMENTOS_OS  := DMEmpresas.SelEmpresa.FieldByName('ofc_exibe_movimentos_os').asString;
              dmApp.EXIBE_EMAIL_AUTOMATICO := DMEmpresas.SelEmpresa.FieldByName('ofc_envio_email_automatico').asString;
              dmApp.OFC_GERA_FAT_AUTOMATICO := DMEmpresas.SelEmpresa.FieldByName('OFC_GERA_FAT_AUTOMATICO').asString;
              dmApp.OFC_EXIBE_DADOS_COMPLEMENTARES := DMEmpresas.SelEmpresa.FieldByName('OFC_EXIBE_DADOS_COMPLEMENTARES').asString;
              dmApp.PDV_QTDE_COD_BARRAS := DMEmpresas.SelEmpresa.FieldByName('PDV_QTDE_COD_BARRAS').asString;
              dmApp.EXIBE_OFC_CONTROLA_TEMPO_RESPOSTA := DMEmpresas.SelEmpresa.FieldByName('OFC_CONTROLA_TEMPO_RESPOSTA').asString;

              dmApp.EXIBE_MESALIDADES       := DMEmpresas.SelEmpresa.FieldByName('EXIBE_MESALIDADES').asString;
              dmApp.CARREGAMENTO_PARCIAL := DMEmpresas.SelEmpresa.FieldByName('CARREGAMENTO_PARCIAL').asString;
              DmApp.DIG_PREC_VENDA    := DMEmpresas.SelEmpresa.FieldByName('ALT_PRC_VND').asString;
              DmApp.DIG_UNIDADE_VENDA := DMEmpresas.SelEmpresa.FieldByName('DIG_UNIDADE_VENDA').asString;
              DmApp.DIG_CHEQUE_VENDA  := DMEmpresas.SelEmpresa.FieldByName('DIG_CHEQUE_VENDA').asString;
              DmApp.DIG_CARTAO_VENDA  := DMEmpresas.SelEmpresa.FieldByName('DIG_CARTAO_VENDA').asString;
              DmApp.LOCAL_FATURA      := DMEmpresas.SelEmpresa.FieldByName('LOCAL_FATURA').asString;
              DmApp.LOCAL_PADRAO_ESTOQUE := DMEmpresas.SelEmpresa.FieldByName('LOCAL_PADRAO').asString;
              DmApp.LOCAL_FATURA_TROCA:= DMEmpresas.SelEmpresa.FieldByName('LOCAL_FATURA_TROCA').asString;
              DmApp.Sel_Agrupado      := DMEmpresas.SelEmpresa.FieldByName('SELAGRUPADOR').asString;
              DmApp.Tipo_Cons_Prod    := DMEmpresas.SelEmpresa.FieldByName('TIPO_CONSULTA_PROD').asString;
              DmApp.NUM_MAX_ITENS     := DMEmpresas.SelEmpresa.FieldByName('NUM_MAX_ITENS').asInteger;
              DmApp.NUM_ITENS_NF      := DMEmpresas.SelEmpresa.FieldByName('NUM_ITENS_NF').asInteger;
              DmApp.NUM_MAX_ITENS_ORC := DMEmpresas.SelEmpresa.FieldByName('NUM_MAX_ITENS_ORC').asInteger;
              DmApp.CONTAGEM_INCREMENTAL := DMEmpresas.SelEmpresa.FieldByName('CONTAGEM_INCREMENTAL').asString;
              DmApp.IMP_UNIT_ORC      := DMEmpresas.SelEmpresa.FieldByName('IMP_UNIT_ORC').asString;
              DmApp.BlqQtdeFiscal     := DMEmpresas.SelEmpresa.FieldByName('BLQQTDEFISCAL').asString;
              DmApp.DIGITA_NUM_NOTA   := DMEmpresas.SelEmpresa.FieldByName('DIGITA_NUM_NOTA').asString;
              DmApp.IMPRIME_CABEC_2FOL:= DMEmpresas.SelEmpresa.FieldByName('IMPRIME_CABEC_2FOL').asString;
              DmApp.REPETE_PRODUTO    := DMEmpresas.SelEmpresa.FieldByName('PDV_REPETE_PRODUTOS').asString;
              DmApp.ACT_MULTI_SELETOR := DMEmpresas.SelEmpresa.FieldByName('ACT_MULTI_SELETOR').asString;
              DmApp.EDITA_NUM_NF      := DMEmpresas.SelEmpresa.FieldByName('EDITA_NUM_NF').asString;
              DmApp.EMBUTIR_JUROS     := DMEmpresas.SelEmpresa.FieldByName('EMBUTIR_JUROS_IMPRESSOES').asString;
              DmApp.DESCONTO_MAXIMO   := DMEmpresas.SelEmpresa.FieldByName('DESCONTO_MAXIMO').asFloat;

              DmApp.MAP_HTML_VIEW     := DMEmpresas.SelEmpresa.FieldByName('MAP_HTML_VIEW').asString;
              DmApp.NF_CONTINUO_COM_MESMO_NUM_NF := DMEmpresas.SelEmpresa.FieldByName('NF_CONTINUO_COM_MESMO_NUM_NF').asString;
              DmApp.NF_CONTINUO_NOME_CAMPO_TRUE  := DMEmpresas.SelEmpresa.FieldByName('NF_CONTINUO_NOME_CAMPO_TRUE').asString;
              //----------------------------------Resgatando os valores das cores------------------------------//
              Caminho := ExtractFilePath(Application.Exename);
              If Copy(Caminho, Length(Caminho), 1) <> '\' Then
                 Caminho := Caminho + '\';

              If fileExists(Caminho + 'HelpStore.ini') Then
              begin
                config := TIniFile.Create(Caminho + 'HelpStore.ini');
                //Usa Pdv
                DmApp.PDV_ECF  := config.readstring('PDV','PDV_ECF','');

                //validação para que da primeira vez, nao seja necessário configurar indidualmente cada maquina
                DmApp.COR_FUNDO_SEL   := config.readstring('cores','COR_FUNDO_SEL','');
                if COR_FUNDO_SEL = '' then
                  DmApp.COR_FUNDO_SEL     := DMEmpresas.SelEmpresa.FieldByName('COR_FUNDO_SELECIONADO').asString;

                DmApp.SAI_COR_FUNDO_SEL := config.readstring('cores','SAI_COR_FUNDO_SEL','');
                if SAI_COR_FUNDO_SEL = '' then
                  DmApp.SAI_COR_FUNDO_SEL := DMEmpresas.SelEmpresa.FieldByName('COR_FUNDO_DESELECIONADO').asString;


                DmApp.OFC_COR_TELA     := config.readstring('cores','OFC_COR_TELA','');
                if DmApp.OFC_COR_TELA = '' then
                   DmApp.OFC_COR_FUNDO       := ConfiguracoesOFC_COR_TELA.VALUE;

                DmaPP.PDV_COR_FUNDO     := config.readstring('cores','PDV_COR_FUNDO ','');
                if DmaPP.PDV_COR_FUNDO = '' then
                  DmaPP.PDV_COR_FUNDO   := ConfiguracoesPDV_COR_FUNDO.TEXT;

                DmaPP.PDV_COR_FONTE     := config.readstring('cores','PDV_COR_FONTE','');
                if DmaPP.PDV_COR_FONTE = '' then
                  DmaPP.PDV_COR_FONTE       := ConfiguracoesPDV_COR_FONTE.TEXT                 ;

                Config.Free;
              end;

//              DmApp.CHEQUE_CONTA      := DMEmpresas.SelEmpresa.FieldByName('CHEQUE_CONTA').asString;
//              DmApp.CHEQUE_SENHA      := DMEmpresas.SelEmpresa.FieldByName('CHEQUE_SENHA').asString;

              //TIPO DE EMPRESA
              DmApp.TIPO_EMPRESA      := DMEmpresas.SelEmpresa.FieldByName('TIPO_EMPRESA').asString;
              DmApp.DIGITA_COTACOES   := DMEmpresas.SelEmpresa.FieldByName('DIGITA_COTACOES').asString;

              ContaCaixa              := 0;
              UsuarioCaixa            := 0;
              TurnoCaixa              := 0;

              DmApp.Caminho_Externo   := DMEmpresas.SelEmpresa.FieldByName('CAMINHO_EXTERNO').asString;
              DmApp.FONE_SUPORTE :=  QryParceiroPARC_SUPORTE_FONE.asString;

              DmApp.NFE_ENT_PATH_IMPORTACAO := DMEmpresas.SelEmpresa.FieldByName('NFE_ENT_PATH_IMPORTACAO').asString;
              DmApp.NFE_ENT_CFOP_IMPORTACAO := DMEmpresas.SelEmpresa.FieldByName('NFE_ENT_CFOP_IMPORTACAO').asInteger;
              DmApp.NFE_ENT_CFOP_IMPORTACAO_INT := DMEmpresas.SelEmpresa.FieldByName('NFE_ENT_CFOP_IMPORTACAO').AsInteger;

              DmApp.NFE_DIR_EXP := DMEmpresas.SelEmpresa.FieldByName('nfe_dir_exportacao').asString;
              DmApp.NFE_DESTACA_ICMS_SUB := DMEmpresas.SelEmpresa.FieldByName('NFE_DESTACA_ICMS_SUB').asString;
              DmApp.BCH_PATH_PEDIDOS := DMEmpresas.SelEmpresa.FieldByName('BCH_PATH_PEDIDOS').asString;
              DmApp.BCH_PATH := DMEmpresas.SelEmpresa.FieldByName('BCH_PATH').asString;
              DmApp.BCH_ATIVO := DMEmpresas.SelEmpresa.FieldByName('BCH_ATIVO').asString;
              DmApp.FIN_EXIBE_GRAFICOS := DMEmpresas.SelEmpresa.FieldByName('FIN_EXIBE_GRAFICOS').asString;
              DmApp.BCH_HABILITA_SINC_AUT := DMEmpresas.SelEmpresa.FieldByName('BCH_HABILITA_SINC_AUT').asString;
              DmApp.BCH_EXIBE_DESCONTO := DMEmpresas.SelEmpresa.FieldByName('BCH_EXIBE_DESCONTO').asString;
              DmApp.BCH_CONC_CODIGO_PRODUTO := DMEmpresas.SelEmpresa.FieldByName('BCH_CONC_CODIGO_PRODUTO').asString;
              DmApp.BCH_FILIAL := DMEmpresas.SelEmpresa.FieldByName('BCH_FILIAL').asString;

              DmApp.EST_MIN_CONTA_EMAIL_ENVIO := DMEmpresas.SelEmpresa.FieldByName('EST_MIN_CONTA_EMAIL_ENVIO').asString;
              DmApp.EST_MIN_SMTP_EMAIL_ENVIO := DMEmpresas.SelEmpresa.FieldByName('EST_MIN_SMTP_EMAIL_ENVIO').asString;
              DmApp.EST_MIN_LOGIN_EMAIL_ENVIO:= DMEmpresas.SelEmpresa.FieldByName('EST_MIN_LOGIN_EMAIL_ENVIO').asString;
              DmApp.EST_MIN_PASSWORD_EMAIL_ENVIO:= DMEmpresas.SelEmpresa.FieldByName('EST_MIN_PASSWORD_EMAIL_ENVIO').asString;
              DmApp.EST_MIN_DESTINOS_EMAIL_ENVIO:= DMEmpresas.SelEmpresa.FieldByName('EST_MIN_DESTINOS_EMAIL_ENVIO').asString;

              DmApp.NFE_PATH_LEIAUTE_DANFE := DMEmpresas.SelEmpresa.FieldByName('NFE_PATH_LEIAUTE_DANFE').asString;
              DmApp.NFE_CERT_CAMINHO := DMEmpresas.SelEmpresa.FieldByName('NFE_CERT_CAMINHO').asString;
              DmApp.NFE_CERT_SENHA   := DMEmpresas.SelEmpresa.FieldByName('NFE_CERT_SENHA').asString;
              DmApp.NFE_CERT_NUM_SERIE := DMEmpresas.SelEmpresa.FieldByName('NFE_CERT_NUM_SERIE').asString;
              DmApp.NFE_GER_TP_DANFE  := DMEmpresas.SelEmpresa.FieldByName('NFE_GER_TP_DANFE').asString;
              DmApp.NFE_GER_FORMA_EMISSAO := DMEmpresas.SelEmpresa.FieldByName('NFE_GER_FORMA_EMISSAO').asString;
              DmApp.NFE_GER_PATH_LOGS := DMEmpresas.SelEmpresa.FieldByName('NFE_GER_PATH_LOGS').asString;
              DmApp.NFE_GER_IMG_DANFE := DMEmpresas.SelEmpresa.FieldByName('NFE_GER_IMG_DANFE').asString;
              DmApp.NFE_WS_UF   := DMEmpresas.SelEmpresa.FieldByName('NFE_WS_UF').asString;
              DmApp.NFE_WS_AMBIENTE := DMEmpresas.SelEmpresa.FieldByName('NFE_WS_AMBIENTE').asString;
              DmApp.NFE_WS_PROXY_HOST := DMEmpresas.SelEmpresa.FieldByName('NFE_WS_PROXY_HOST').asString;
              DmApp.NFE_WS_PROXY_PORTA := DMEmpresas.SelEmpresa.FieldByName('NFE_WS_PROXY_PORTA').asString;
              DmApp.NFE_WS_PROXY_USUARIO := DMEmpresas.SelEmpresa.FieldByName('NFE_WS_PROXY_USUARIO').asString;;
              DmApp.NFE_WS_PROXY_SENHA  := DMEmpresas.SelEmpresa.FieldByName('NFE_WS_PROXY_SENHA').asString;;
              DmApp.NFE_EMIT_CNPJ  := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_CNPJ').asString;;
              DmApp.NFE_EMIT_RAZAO_SOCIAL := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_RAZAO_SOCIAL').asString;;
              DmApp.NFE_EMIT_INSC_ESTADUAL := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_INSC_ESTADUAL').asString;;
              DmApp.NFE_EMIT_FANTASIA := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_FANTASIA').asString;;
              DmApp.NFE_EMIT_FONE := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_FONE').asString;;
              DmApp.NFE_EMIT_CEP  := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_CEP').asString;;
              DmApp.NFE_EMIT_LOGRADOURO := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_LOGRADOURO').asString;;
              DmApp.NFE_EMIT_BAIRRO := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_BAIRRO').asString;;
              DmApp.NFE_EMIT_COMPLEMENTO := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_COMPLEMENTO').asString;;
              DmApp.NFE_EMIT_NUMERO  := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_NUMERO').asString;
              DmApp.NFE_EMIT_COD_CIDADE := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_COD_CIDADE').asString;
              DmApp.NFE_EMIT_CIDADE  := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_CIDADE').asString;
              DmApp.NFE_REGIME  := DMEmpresas.SelEmpresa.FieldByName('REGIME_TRIBUTARIO').asString;
              DmApp.NFE_CNAE  := DMEmpresas.SelEmpresa.FieldByName('NFE_CNAE').asString;
              DmApp.NFE_EMIT_UF  := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_UF').asString;
              DmApp.NFE_EMIT_EMAIL := DMEmpresas.SelEmpresa.FieldByName('NFE_EMIT_EMAIL').asString;
              DmApp.NFE_EMAIL_PORTA  := DMEmpresas.SelEmpresa.FieldByName('NFE_EMAIL_PORTA').asString;
              DmApp.NFE_EMAIL_USUARIO := DMEmpresas.SelEmpresa.FieldByName('NFE_EMAIL_USUARIO').asString;
              DmApp.NFE_EMAIL_SENHA  := DMEmpresas.SelEmpresa.FieldByName('NFE_EMAIL_SENHA').asString;
              DmApp.NFE_EMAIL_SMTP_SEGURA := DMEmpresas.SelEmpresa.FieldByName('NFE_EMAIL_SMTP_SEGURA').asString;
              DmApp.NFE_EMAIL_SMTP := DMEmpresas.SelEmpresa.FieldByName('NFE_EMAIL_SMTP').asString;
              {$IFDEF ACBrNFeOpenSSL}

                 dmapp.ACBrNFe.Configuracoes.Certificados.Certificado  := dmApp.NFE_CERT_CAMINHO;
                 dmapp.ACBrNFe.Configuracoes.Certificados.Senha        := dmApp.NFE_CERT_SENHA;

                 FrmEmpresas.edtNumSerie.Visible := False;
                 FrmEmpresas.Label25.Visible := False;
                 FrmEmpresas.sbtnGetCert.Visible := False;
              {$ELSE}
                 dmApp.ACBrNFe.Configuracoes.Certificados.NumeroSerie := DmApp.NFE_CERT_NUM_SERIE;
                { FrmEmpresas.Label1.Caption := 'Informe o número de série do certificado'#13+
                                   'Disponível no Internet Explorer no menu'#13+
                                   'Ferramentas - Opções da Internet - Conteúdo '#13+
                                   'Certificados - Exibir - Detalhes - '#13+
                                   'Número do certificado';
                 FrmEmpresas.Label2.Visible := False;
                 FrmEmpresas.edtCaminho.Visible := False;
                 FrmEmpresas.edtSenha.Visible   := False;
                 FrmEmpresas.sbtnCaminhoCert.Visible := False; }
              {$ENDIF}

             { rgFormaEmissao.ItemIndex := Ini.ReadInteger( 'Geral','FormaEmissao',0) ;
              ckSalvar.Checked    := Ini.ReadBool(   'Geral','Salvar'      ,True) ;
              edtPathLogs.Text    := Ini.ReadString( 'Geral','PathSalvar'  ,'') ;}

              if  (dmApp.NFE_GER_FORMA_EMISSAO <> '') then
                dmapp.ACBrNFe.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,IntToStr(StrToInt(dmApp.NFE_GER_FORMA_EMISSAO) +1));
              dmapp.ACBrNFe.Configuracoes.Geral.Salvar       := true; //ckSalvar.Checked;

              //Local onde Ficarão armazenados os logs
              dmapp.ACBrNFe.Configuracoes.Geral.PathSalvar   := dmApp.NFE_GER_PATH_LOGS;

              //Local onde ficarão armazenados as NFe geradas
              dmapp.ACBrNFe.Configuracoes.Arquivos.PathCan := dmApp.NFE_GER_PATH_LOGS;
              dmapp.ACBrNFe.Configuracoes.Arquivos.PathNFe := dmApp.NFE_GER_PATH_LOGS;
              dmapp.ACBrNFe.Configuracoes.Arquivos.PathInu := dmApp.NFE_GER_PATH_LOGS;
              dmapp.ACBrNFe.Configuracoes.Arquivos.PathDPEC := dmApp.NFE_GER_PATH_LOGS;

              if (DmApp.NFE_WS_UF <> '') then
                 dmapp.ACBrNFe.Configuracoes.WebServices.UF         := DmApp.NFE_WS_UF;

              if (DmApp.NFE_WS_AMBIENTE <> '') then
                dmapp.ACBrNFe.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(StrToInt(DmApp.NFE_WS_AMBIENTE)+1));
              dmapp.ACBrNFe.Configuracoes.WebServices.Visualizar := true; //ckVisualizar.Checked;


              dmapp.ACBrNFe.Configuracoes.WebServices.ProxyHost := DmApp.NFE_WS_PROXY_HOST;
              dmapp.ACBrNFe.Configuracoes.WebServices.ProxyPort := DmApp.NFE_WS_PROXY_PORTA;
              dmapp.ACBrNFe.Configuracoes.WebServices.ProxyUser := DmApp.NFE_WS_PROXY_USUARIO;
              dmapp.ACBrNFe.Configuracoes.WebServices.ProxyPass := DmApp.NFE_WS_PROXY_SENHA;

              if dmapp.ACBrNFe.DANFE <> nil then
               begin
                 if (DmApp.NFE_GER_TP_DANFE <> '') then
                   dmapp.ACBrNFe.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(strtoint(DmApp.NFE_GER_TP_DANFE)+1));
                 dmapp.ACBrNFe.DANFE.Logo       := DmApp.NFE_GER_IMG_DANFE;
               end;


              DmApp.Senha_Emp_Externa := DMEmpresas.SelEmpresa.FieldByName('SENHA_EMPRESA_EXTERNA').asString;

              //Verificação de Versão
              DataServidor ;
              versao := DMApp.RetornaVersao;
              {if (versao <> dmapp.DB_VERSAO) then
              begin
                sAux := 'As versões de base:'+IntToStr(dmapp.DB_VERSAO)+' e de excutável:'+InttoStr(Versao)+' são incompatíveis.'+#13+'O programa será fechado. Contate o suporte '+dmApp.QryParceiroPARC_NOME_FANTASIA.asString;
                application.messagebox(Pchar(sAux),'Aviso',MB_ICONERROR + mb_ok);
                application.terminate;
              end;}

              Result := DMEmpresas.SelEmpresa.FieldByName('IP_EXTERNO').asString;
         end;
var
   IP: String;
begin
  If Trim(DMApp.Cnpj) <> '' Then
     Begin
       Result := 'S';
       Exit;
     End;
  //
  If DMEmpresas = Nil Then
     DMEmpresas := TDMEmpresas.Create(Self);

  DMEmpresas.SelEmpresa.Open ;
  DMEmpresas.SelEmpresa.FetchAll ;

  If DMEmpresas.SelEmpresa.RecordCount = 1
  then begin
       IP := AplicaDados ;

       //Configura especificações do Menu principal
       If TRIM(IP) <> ''
       THEN BEGIN
            //Pedir Senha Externa
            IF TRIM(Senha_Emp_Externa) <> ''
            THEN BEGIN
                 Application.CreateForm(TFrmEntraSenha, FrmEntraSenha) ;

                 FrmEntraSenha.Senha := Senha_Emp_Externa ;

                 If FrmEntraSenha.Showmodal <> MrOk
                 then begin
                      MESSAGEDLG ('Senha Inválida o Sistema Será Finalizado', MtError, [MbOk], 0 );
                      Application.Terminate ;
                 end ;

                 FrmEntraSenha.Free ;
                 FrmEntraSenha := Nil ;
            END;

            DATABASE.Connected := FALSE ;

            DATABASE.DatabaseName := IP + ':' + DmApp.Caminho_Externo ;

            DATABASE.Connected := TRUE  ;

            Transaction.Active := TRUE  ;

            FrmMain.LblBase.Caption := lowercase(IP + ':' + DmApp.Caminho_Externo) ;
            FrmMain.LblBase.Visible := True ;

            IF NOT DATABASE.TestConnected
            THEN BEGIN
                 MESSAGEDLG ('Servidor Externo Inválido ' + IP + ':' + DmApp.Caminho_Externo, MtError, [MbOk], 0 );
                 Application.Terminate ;
            END;
       END;

       Result := 'S' ;

       //
       FrmMain.LblEmpresa.Caption := DmApp.Nome;
       FrmMain.Image1.Left        := FrmMain.Panel7.Width - FrmMain.LblEmpresa.Width - 50;
       //
       FrmMain.LblEmpresa.Visible := True;
       FrmMain.Image1.Visible     := True;
       //
       DMEmpresas.Free;
       DMEmpresas := Nil;

       If IMPRIMIR_POSICOES = 'S'  THEN
           FrmMain.ImprimePosicao ;

       //Digita as Cotacoes Diárias
      { IF Digita_Cotacoes = 'S' THEN
           DmaPP.Digita_Cotacao ;}

  end
  ELSE BEGIN
       //
       FrmSelEmpresa := TFrmSelEmpresa.Create(Self);

       If FrmSelEmpresa.ShowModal = MrOk
       then begin
            AplicaDados ;

            IP := AplicaDados ;

            If TRIM(IP) <> ''
            THEN BEGIN
                 //Pedir Senha Externa
                 IF TRIM(Senha_Emp_Externa) <> ''
                 THEN BEGIN
                      Application.CreateForm(TFrmEntraSenha, FrmEntraSenha) ;

                      FrmEntraSenha.Senha := Senha_Emp_Externa ;

                      If FrmEntraSenha.Showmodal <> MrOk
                      then begin
                           MESSAGEDLG ('Senha Inválida o Sistema Será Finalizado', MtError, [MbOk], 0 );
                           Application.Terminate ;
                      end ;

                      FrmEntraSenha.Free ;
                      FrmEntraSenha := Nil ;
                 END;

                 DATABASE.Connected := FALSE ;

                 DATABASE.DatabaseName := IP + ':' + DmApp.Caminho_Externo ;

                 DATABASE.Connected := TRUE  ;

                 Transaction.Active := TRUE  ;

                 IF NOT DATABASE.TestConnected
                 THEN BEGIN
                      MESSAGEDLG ('Servidor Externo Inválido ' + IP + ':' + DmApp.Caminho_Externo, MtError, [MbOk], 0 );
                      Application.Terminate ;
                 END;
            END;

            FrmMain.LblBase.Caption := lowercase(IP + ':' + DmApp.Caminho_Externo) ;
            FrmMain.LblBase.Visible := True ;

            //
            If Trim(DMApp.Cnpj) = '' then
                Result := 'N'
            else
            begin
              if IMPRIMIR_POSICOES = 'S' then
                FrmMain.ImprimePosicao ;

                 //Digita as Cotacoes Diárias
              if Digita_Cotacoes = 'S' then
                DmaPP.Digita_Cotacao ;

              Result := 'S';
            end;
       end
       else begin
            Result := 'N'
       end
  end;


  FrmMain.LblEmpresa.Caption := DmApp.Nome;
  FrmMain.Image1.Left        := FrmMain.Panel7.Width - FrmMain.LblEmpresa.Width - 50;

  Perfil_Computador.Close ;

  Perfil_Computador.Open  ;
  Perfil_Computador.FetchAll ;

  If ( Perfil_Computador.RecordCount = 0 )
  then begin
       IF TRIM(CNPJ) <> ''
       THEN BEGIN
            Perfil_Computador.Append ;

            Perfil_ComputadorCNPJ.Value       := cnpj ;
            Perfil_ComputadorCOMPUTADOR.Value := NomeComputador ;

            Perfil_Computador.Post   ;
       END;
  end;

  //CONFIGURAÇÕES                /
  Configuracoes.Close ;

  Configuracoes.Open  ;
  Configuracoes.FetchAll ;

  If Configuracoes.RecordCount = 0
  then begin
       IF TRIM(CNPJ) <> ''
       THEN BEGIN
            Configuracoes.Append ;

            ConfiguracoesCNPJ.Value := cnpj ;

            Configuracoes.Post   ;
       END;
  end;

  DmApp.CSLL                := ConfiguracoesCSLL.Value  ;
  DmApp.IMPOSTO_RENDA       := ConfiguracoesIMPOSTO_RENDA.Value  ;
  DmApp.DESP_OPER           := ConfiguracoesDESPESAS_OPERACIONAIS.Value   ;
  DmApp.PARC_MESMO_DIA      := ConfiguracoesVENCTO_FIXO_PRESTACOES.Value  ;
  DmApp.TOLERANCIA_JUROS    := ConfiguracoesTOLERANCIA_JUROS.Value        ;
  DmApp.MULTA_FINANCEIRA    := ConfiguracoesMULTA_FINANCEIRA.Value        ;
  DmApp.CODIFICA_PRODUTOS   := ConfiguracoesCODIFICA_PRODUTOS.Value       ;
  DmApp.INCLUI_VENDA_LIM    := ConfiguracoesINCLUI_VENDA_LIMITE.Value     ;
  DmApp.EXCL_BX_PARC_PDV    := ConfiguracoesEXCLUI_VENDAS_BX_PARC_PDV.Value    ;
  DmApp.INDEXA_PRODUTOS     := ConfiguracoesUTLIZA_INDEXADOR_CUSTO.Value  ;
  DmApp.IMP_ITENS_PDV       := ConfiguracoesIMPRIME_ITENS_CUPOM_PDV.Value ;
  DmApp.CODIGO_SCPC         := ConfiguracoesCODIGO_SCPC.Value             ;
  DmApp.TROCO_MAX_PDV       := ConfiguracoesPDV_TROCO_MAXIMO.value;
  DmApp.Aliquota_ISS        := ConfiguracoesALIQUOTA_ISS.Value ;
  DmApp.PEDE_SEN_GER_CX     := ConfiguracoesPEDE_SENHAGER_CAIXA.Value;
  DmApp.IMP_VND_FAT         := ConfiguracoesIMP_VND_FATURAMENTO.Value;
  DmApp.INDEXA_ENTRADAS     := ConfiguracoesEST_ENTRADAS_DOLAR.VALUE;
  DmApp.EST_USA_GRADE       := ConfiguracoesEST_UTILIZA_GRADES.VALUE      ;
  DmApp.ITENS_ORDENS_SERV   := ConfiguracoesITENSORDEM_SERVICO.VALUE      ;
  BLOQ_CAD_SEM_CPF          := ConfiguracoesBLOQ_CAD_SEM_CPF.VALUE        ;
  DmApp.PDV_IMP_END_PRAZO   := ConfiguracoesPDV_IMP_END_PRAZO.VALUE       ;
  DmApp.Ofc_Nome            := ConfiguracoesOFC_NOME_RAZAO.VALUE          ;
  DmApp.Ofc_FOne            := ConfiguracoesOFC_FONE.Value                ;
  DmApp.Ofc_Fax             := ConfiguracoesOFC_FAX.VALUE                 ;
  DmApp.Ofc_Endereco        := ConfiguracoesOFC_ENDERECO.VALUE            ;
  DmApp.Config_Ordem_Servico:= ConfiguracoesOS_CONFIG_CAMPOS.AsString;
//  DmApp.OFC_COR_FUNDO       := ConfiguracoesOFC_COR_TELA.VALUE            ;
  DmaPP.ENT_FRETE_MANUAL    := ConfiguracoesENT_FRETE_MANUAL.VALUE        ;

  DmaPP.CONVENIO_CHEQUE     := ConfiguracoesCONVENIO_CHEQUE.value         ;
  DmaPP.CONVENIO_BANCO      := ConfiguracoesCODIGO_CONVENIO_BANCO.value   ;
  DmaPP.PATH_ARQUIVO_MAG    := ConfiguracoesPATH_ARQUIVO_BANCO.VALUE      ;
  DmaPP.NOME_ARQUIVO_MAG    := ConfiguracoesNOME_ARQUIVO_BANCO.VALUE      ;
  DmaPP.PROPRIED_EQUIP      := ConfiguracoesGLO_PROPRIEDADE_EQUIPAMENTOS.VALUE ;
  DmaPP.MASCARA_ORCAMENTO   := ConfiguracoesUTILIZA_MASCARA_ORCAMENTO.VALUE    ;
  DmaPP.VALOR_MINIMO_PARC   := ConfiguracoesVALOR_MINIMO_PARCELAMENTO.VALUE    ;
  DmaPP.PDV_OBRIGA_QTDE     := ConfiguracoesPDV_OBRIGA_QNTDE.Value             ;
//  DmaPP.PDV_COR_FUNDO       := ConfiguracoesPDV_COR_FUNDO.TEXT                 ;
//  DmaPP.PDV_COR_FONTE       := ConfiguracoesPDV_COR_FONTE.TEXT                 ;
  DmaPP.DIF_FIS_FISC        := ConfiguracoesDIFERENCIA_FIS_FISC.TEXT           ;
  DmApp.ITENSORCAMENTOORC   := ConfiguracoesITENSORCAMENTO_ORC.asInteger       ;
  DmApp.PDV_FAT_FIM_MES     := ConfiguracoesPDV_FATURAMENTO_FIM_MES.value      ;
  DMApp.Foto1               := ConfiguracoesPDV_FOTO_FUNDO.VALUE               ;
  DMApp.BLQ_VND_SEM_CPF     := ConfiguracoesBLOQUEIA_VENDA_SEM_CPF.VALUE       ;
  DMApp.OFC_USA_CONTADOR    := ConfiguracoesOFC_USA_CONTADORES.Value           ;
  DMApp.IMP_VENDA_NOMINAL   := ConfiguracoesIMPRIME_CUPOM_NOMINAL.Value        ;

  dmApp.Contato_por_Cliente := ConfiguracoesOFC_CONTATO_POR_CLIENTE.AsString;
  DMApp.IMP_NOME_PROPR      := ConfiguracoesIMP_NOME_PROPRIEDADE.Value         ;

  //ALIQUOTAS
  DmApp.PDV_T01          := Perfil_Computador.FieldByName('PDV_T01').asString;
  DmApp.PDV_T02          := Perfil_Computador.FieldByName('PDV_T02').asString;
  DmApp.PDV_T03          := Perfil_Computador.FieldByName('PDV_T03').asString;
  DmApp.PDV_T04          := Perfil_Computador.FieldByName('PDV_T04').asString;
  DmApp.PDV_T05          := Perfil_Computador.FieldByName('PDV_T05').asString;
  DmApp.PDV_T06          := Perfil_Computador.FieldByName('PDV_T06').asString;
  DmApp.PDV_FF           := Perfil_Computador.FieldByName('PDV_FF').asString;
  DmApp.PDV_II           := Perfil_Computador.FieldByName('PDV_II').asString;
  if trim(Perfil_ComputadorPDV_LINHA_RECIBO.VALUE)<> ''
  then
      DmApp.PDV_LINHA_RECIBO := Strtoint(trim(Perfil_ComputadorPDV_LINHA_RECIBO.VALUE))
  else
      DmApp.PDV_LINHA_RECIBO := 48;

  FrmMain.LblComputador.Caption := Perfil_ComputadorCOMPUTADOR.value ;
  FrmMain.LblComputador.Visible := True ;
  //
  FrmMain.LblEmpresa.Visible := True;
  FrmMain.Image1.Visible     := True;

  FrmMain.LblBase.Caption := lowercase(DmApp.CaminhoBase) ;
  FrmMain.LblBase.Visible := True ;

  //MENU PRINCIPAL
  Sis_Menu_Itens.Close ;
  Sis_Menu.Close ;

  Sis_Menu.Open  ;
  Sis_Menu_Itens.Open ;
  Sis_Menu.FetchAll ;

  //
  DMEmpresas.Free;
  DMEmpresas := Nil;
end;

function TDmApp.NomeSimilar(ProdutoA, ProdutoB, Produto: String): String;
begin
  //
{ If DMProcs = Nil Then
     DMProcs := TDMProcs.Create(Self);}
  //
  DMProcs.NomeSimilar.ParamByName('PRODUTO_A').asString := ProdutoA;
  DMProcs.NomeSimilar.ParamByName('PRODUTO_B').asString := ProdutoB;
  DMProcs.NomeSimilar.ParamByName('PRODUTO').asString   := Produto;
  DMProcs.NomeSimilar.ExecProc;
  //
  Result := DMProcs.NomeSimilar.ParamByName('NOME').asString;
  //
{ DMProcs.Free;
  DMProcs := Nil;}
end;

function TDmApp.Verificar_Similares(ProdutoA, ProdutoB: String): Integer;
begin
  //
{ If DMProcs = Nil Then
     DMProcs := TDMProcs.Create(Self);}
  //
  DMProcs.VerifSimilares.ParamByName('PRODUTO_A').asString := ProdutoA;
  DMProcs.VerifSimilares.ParamByName('PRODUTO_B').asString := ProdutoB;
  DMProcs.VerifSimilares.ExecProc;
  //
  Result := DMProcs.VerifSimilares.ParamByName('RETORNO').asInteger;
  //
{ DMProcs.Free;
  DMProcs := Nil;}
end;

Procedure TDmApp.LogOff;
Begin

  // Tirando os Objetos da Memoria
  DMUsuarios.Login.Close;
  DMUsuarios.Login.UnPrepare;
  DMUsuarios.Objeto := '';
  DMUsuarios.Direito := '';
  DMUsuarios.Free;
  DMUsuarios := Nil;

  // Escondendo as Identificacoes do Usuario
  FrmMain.ImgUsuario.Visible := False;
  FrmMain.LblUsuario.Visible := False;
  FrmMain.Shape81.Visible    := False;
  FrmMain.Shape82.Visible    := False;

End;

function TDmApp.GerarCodigoSubGrupo(Cnpj: String; Grupo: Integer): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
            
        //
{       If DMProcs = Nil Then
           DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.CodigoSubGrupo.ParamByName('CNPJ').asString   := Cnpj;
        DMProcs.CodigoSubGrupo.ParamByName('GRUPO').asInteger := Grupo;
        DMProcs.CodigoSubGrupo.ExecProc;
        //
        Result := DMProcs.CodigoSubGrupo.ParamByName('CODIGO').asInteger + 1;
        //
{       DMProcs.Free;
        DMProcs := Nil;}
        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.GerarCodigoPropriedade(Pessoa: Integer): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
            
        //
{       If DMProcs = Nil Then
           DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.CodigoPropriedade.ParamByName('CNPJ'     ).asString  := Cnpj  ;
        DMProcs.CodigoPropriedade.ParamByName('PESSOA_FJ').asInteger := Pessoa;
        DMProcs.CodigoPropriedade.ExecProc;
        //
        Result := DMProcs.CodigoPropriedade.ParamByName('CODIGO').asInteger ;
        //
     {  DMProcs.Free;
        DMProcs := Nil;}
        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.GerarCodigoVeiculo(Pessoa: Integer): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
{       If DMProcs = Nil Then
           DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.CodigoVeiculo.ParamByName('CNPJ'     ).asString  := Cnpj  ;
        DMProcs.CodigoVeiculo.ParamByName('PESSOA_FJ').asInteger := Pessoa;
        DMProcs.CodigoVeiculo.ExecProc;
        //
        Result := DMProcs.CodigoVeiculo.ParamByName('CODIGO').asInteger ;
        //
{       DMProcs.Free;
        DMProcs := Nil;}
        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Pagar_Aberto: Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.PAGAR_ABERTO.ParamByName('CNPJ'     ).asString  := Cnpj  ;
        DMProcs2.PAGAR_ABERTO.ParamByName('DATA'     ).asDate    := DmApp.Data_Servidor  ;
        DMProcs2.PAGAR_ABERTO.ExecProc;
        //
        Result := DMProcs2.PAGAR_ABERTO.ParamByName('SOMA').asFloat ;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Cheques_Aberto: Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        DMProcs3.SOMA_CHEQUES_ABERTOS.ParamByName('CNPJ').asString  := Cnpj  ;

        DMProcs3.SOMA_CHEQUES_ABERTOS.ExecProc;
        //
        Result := DMProcs3.SOMA_CHEQUES_ABERTOS.ParamByName('SOMA').asFloat ;

        DMProcs3.SOMA_CHEQUES_ABERTOS.CLOSE ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Cheques_Conciliados_Data( Data: TDateTime ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        DMProcs3.SOMA_CHEQUE_CONCILIADOS_DATA.ParamByName('CNPJ').asString  := Cnpj  ;
        DMProcs3.SOMA_CHEQUE_CONCILIADOS_DATA.ParamByName('DATA').asDate    := Data  ;

        DMProcs3.SOMA_CHEQUE_CONCILIADOS_DATA.ExecProc;
        //
        Result := DMProcs3.SOMA_CHEQUE_CONCILIADOS_DATA.ParamByName('SOMA').asFloat ;

        DMProcs3.SOMA_CHEQUE_CONCILIADOS_DATA.CLOSE ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Saldo_Haver( Codigo: Integer ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.Saldo_Haver.ParamByName('CNPJ'    ).asString  := Cnpj    ;
        DMProcs2.Saldo_Haver.ParamByName('CODIGO'  ).asInteger := Codigo  ;
        DMProcs2.Saldo_Haver.ExecProc;
        //
        Result := DMProcs2.Saldo_Haver.ParamByName('SOMA').asFloat ;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Saldo_Retiradas_Venda( Codigo: Integer ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.RETIRADAS_VENDA.ParamByName('CNPJ'    ).asString  := Cnpj    ;
        DMProcs2.RETIRADAS_VENDA.ParamByName('VENDA'   ).asInteger := Codigo  ;
        DMProcs2.RETIRADAS_VENDA.ExecProc;
        //
        Result := DMProcs2.RETIRADAS_VENDA.ParamByName('VALOR').asFloat ;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Soma_Retiradas( Codigo: Integer ): Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.RETIRADA_DIARIA.ParamByName('CNPJ'      ).asString  := Cnpj            ;
        DMProcs2.RETIRADA_DIARIA.ParamByName('PESSOA_FJ' ).asInteger := Codigo          ;
        DMProcs2.RETIRADA_DIARIA.ParamByName('DATA'      ).asDate    := DmApp.DataCaixa ;
        DMProcs2.RETIRADA_DIARIA.ExecProc;
        //
        Result := DMProcs2.RETIRADA_DIARIA.ParamByName('VALOR').asFloat ;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Receber_Aberto: Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.RECEBER_ABERTO.ParamByName('CNPJ'     ).asString  := Cnpj  ;
        DMProcs2.RECEBER_ABERTO.ParamByName('DATA'     ).asDate    := DmApp.Data_Servidor  ;
        DMProcs2.RECEBER_ABERTO.ExecProc;
        //
        Result := DMProcs2.RECEBER_ABERTO.ParamByName('SOMA').asFloat ;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Fatura_Aberto: Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
         DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);
        //
        DMProcs2.FATURA_ABERTO.ParamByName('CNPJ'     ).asString  := Cnpj  ;
        DMProcs2.FATURA_ABERTO.ParamByName('DATA'     ).asDate    := DmApp.Data_Servidor  ;
        DMProcs2.FATURA_ABERTO.ExecProc;
        //
        Result := DMProcs2.FATURA_ABERTO.ParamByName('SOMA').asFloat ;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Cheque_Aberto: Real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);

        DMProcs2.cheque_aberto.ParamByName('CNPJ').asString  := Cnpj  ;
        DMProcs2.cheque_aberto.ExecProc;
        //
        Result := DMProcs2.cheque_ABERTO.ParamByName('SOMA').asFloat ;
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmApp.TransactionProc.Commit ;

        Result := 0;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.GerarCodigoDpl: Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;
            
        //
{       If DMProcs = Nil Then
           DMProcs := TDMProcs.Create(Self);}
        //
        DMProcs.CodigoDpl.ParamByName('CNPJ').asString  := Cnpj  ;
        DMProcs.CodigoDpl.ExecProc;
        //
        Result := DMProcs.CodigoDpl.ParamByName('CODIGO').asInteger ;
        //
{       DMProcs.Free;
        DMProcs := Nil;}
        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;



Function TDmApp.GerarCodigoGrade(Tag: Integer): String;
Var
   Grade: String;
   L1, L2, L3, L4: Char;
   CodigoAsc, CodigoAsc1, CodigoAsc2, CodigoAsc3: Integer;
begin
     TrY
        //TABELA ASCII DE 65 = A ATE 90 = Z

        //TRAZENDO A ULTIMA GRADE
        DmaPP.Transaction.CommitRetaining ;
        If Not DmaPP.TransactionProc.InTransaction then
          DmaPP.TransactionProc.StartTransaction ;


        If DMProcs5 = Nil Then
           DMProcs5 := TDMProcs5.Create(Self);

        DMProcs5.ULTIMA_GRADE.ParamByName('CNPJ').asString  := Cnpj  ;
        DMProcs5.ULTIMA_GRADE.ExecProc;

        Grade := DMProcs5.ULTIMA_GRADE.ParamByName('GRADE').asString ;

        //----------------Pegando a Ultima Grade------------------//
        L1 := Grade[1];
        L2 := Grade[2];
        L3 := Grade[3];
        L4 := Grade[4];

        if L1 = '' then
          L1 := 'A' ;

        if L2 = '' then
          L2 := 'A' ;

        IF L3 = '' then
          L3 := 'A' ;

        IF L4 = '' then
          L4 := 'A' ;

        //---------------Pegando a numeração da grade----------------//
        CODIGOASC  := ASC(L4);
        CODIGOASC1 := ASC(L3);
        CODIGOASC2 := ASC(L2);
        CODIGOASC3 := ASC(L1);

        //Limite da ultima posição ou seja se codigo asc for 'Z'
        if CODIGOASC = 90 then
        begin
          //faço posição 1 assumir 'A'
          CODIGOASC  := 65 ;

          //numeração da penultima posição
          CODIGOASC1 := ASC(L3);

          //Se esta posição tambem estourou ou seja = 'Z'
          if (CODIGOASC1 >= 90) then
          begin
            //faço posição 2 assumir 'A'
            CODIGOASC1 := 65;

            //Pego a numeração da
            CODIGOASC2 := ASC(L2);

            //Se esta posição tambem estourou ou seja = 'Z'
            if (CODIGOASC2 >= 90) then
            begin
              //faço posição 2 assumir 'A'
              CODIGOASC2 := 65;

              CODIGOASC3 := ASC(L1);
              CODIGOASC3 := CODIGOASC3 + 1;
            end
            else
              CODIGOASC2 := CODIGOASC2 + 1;
          end
          else
            CODIGOASC1 := CODIGOASC1 + 1;
        end
        else
          codigoasc := codigoasc + 1 ;


        L1 := CHAR(CODIGOASC3) ;
        L2 := CHAR(CODIGOASC2) ;
        L3 := CHAR(CODIGOASC1);
        L4 := CHAR(CODIGOASC);

        RESULT := L1 + L2 + L3 + L4;
        //
        DMProcs5.Free;
        DMProcs5 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.GerarCodigo(Tabela: String; Tag: Integer): Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.GeraCodigo.ParamByName('TABELA').asString := Tabela;
        DMProcs.GeraCodigo.ParamByName('TAG').asInteger   := Tag;
        DMProcs.GeraCodigo.ExecProc;
        Result := DMProcs.GeraCodigo.ParamByName('CODIGO').asInteger;

        DmApp.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Function TDmApp.Verificar_Login(Executavel, Objeto: String; NegarAcesso: Boolean): Boolean;
var
  cont : integer;
begin
  Objeto := trim ( Objeto );

  // Setando o valor inicial de retorno da funcao
  Result := False;

  // Se o usuario naum estiver logado, Criar formulario de identificacao
  If ((DMUsuarios = Nil) or (trim(DMUsuarios.LoginLOGIN.AsString) = '')) Then
  Begin
       FrmIdent := TFrmIdent.Create(Self);
       FrmIdent.ShowModal;
  End;

  //Verificando se o o user já desabilitou a listagem de release
  if (DMUsuarios <> Nil) then
  begin
    If frmListagemMod = Nil Then
    begin

//      FrmMain.Memo1.text := 'Nº de Conexões: '+intToStr(IBDatabaseInfo1.UserNames.Count);
      Geral.Close;
      Geral.sql.text := ' select coalesce(u.exibir,''S'') exibir from sis_usuarios u where u.codigo = '+IntToStr(DmApp.USR_CONECTADO);
      Geral.Open;

      if (Geral.fieldbyname('exibir').value = 'S') then
      begin
        frmListagemMod := TfrmListagemMod.Create(Self);
        frmListagemMod.FormStyle   := fsNormal;
        frmListagemMod.WindowState := wsMaximized;
        frmListagemMod.BorderStyle := bsSingle;
        frmListagemMod.showmodal;
      end;
    end;

  end;
  // Se o Usuario for do Grupo de Supervisores
  If (DMUsuarios <> Nil) And (DMUsuarios.LoginPERFIL.Value = 1) Then
  Begin
    DMUsuarios.Direito := 'SUPERVISOR';
    Result := True;
    if trim(DMUsuarios.LoginLOGIN.Value) = '' then
       exit;

    if dmapp.Perfil_ComputadorPDV_AGENTE.value <> '' then
      frmMain.NomeAgente := dmapp.Perfil_ComputadorPDV_AGENTE.value
    else
      frmMain.NomeAgente := 'merlin';

    {if not(frmMain.Agent1.Connected) then
      frmMain.Agent1.Connected := True;}

    exit;
  end;

  // Verifica se deve pedir troca de Senha
  If DMUsuarios <> Nil Then
  Begin
    If (DMUsuarios.LoginSENHA.Value) = '1234' Then
    Begin
       MessageDlg(Cumprimento() + DMUsuarios.LoginNOME.Value + ', este é seu primeiro Login no Sistema ' + #13 +
                 'e você deve efetuar a mudança de sua senha.' + #13 +
                 'Para isso siga corretamente as instruções na tela e sinta-se à vontade.',mtError,[mbOk],0);

       FrmOpUsuario := TFrmOpUsuario.Create(Self);
       FrmOpUsuario.Tag := 1;
       FrmOpUsuario.ShowModal;

       If DMUsuarios.LoginSENHA.Value = '1234' Then
       Begin
         MessageDlg('O Usuário deve obrigatoriamente mudar a Senha no primeiro Login.' + #13 +
                    'Sua tentativa de Login foi cancelada, inicie a operação novamente.',mtError,[mbOk],0);
         LogOff;
       End;
    End;

    if trim(DMUsuarios.LoginLOGIN.Value) = '' then
       exit;

    if dmapp.Perfil_ComputadorPDV_AGENTE.value <> '' then
      frmMain.NomeAgente := dmapp.Perfil_ComputadorPDV_AGENTE.value
    else
      frmMain.NomeAgente := 'merlin';

    {if not(frmMain.Agent1.Connected) then
      frmMain.Agent1.Connected := True;}

  end;

  // Caso cancelar o Login, cair fora
  If DMUsuarios <> Nil Then
  begin // O Usuario efetuou login, pois o Data Module está criado
    If Objeto = 'FrmMain' Then
       Result := True
    else
    begin
      // Verificar qual a permissão do usuário no módulo especificado
      DMProcs := TDMProcs.Create(Application);
      //
      DMProcs.VerificaDireito.ParamByName('EXECUTAVEL').asString := Executavel;
      DMProcs.VerificaDireito.ParamByName('OBJETO').asString     := Objeto;
      DMProcs.VerificaDireito.ParamByName('PERFIL').asInteger    := DMUsuarios.LoginPERFIL.Value;
      //
      DMProcs.VerificaDireito.ExecProc;
      //

      If (DMProcs.VerificaDireito.ParamByName('DIREITO').asString = '') And (NegarAcesso) Then
         MessageDlg('Usuário não autorizado para esta Operação !',MtError,[MbOk],0)
      Else
      Begin
        Result := True;
        DMUsuarios.Objeto := DMProcs.VerificaDireito.ParamByName('OBJETO').asString;
        DMUsuarios.Direito := DMProcs.VerificaDireito.ParamByName('DIREITO').asString;
      end;
    end;
  end;


end;

function TDmApp.Autenticar(Login, Senha: String): Boolean;
begin
  // Setando o Result
  Result := False;

  // Criando o Data Module de Usuarios
  If DMUsuarios = Nil
  then
      DMUsuarios := TDMUsuarios.Create(Self)
  else
      DMUsuarios.Tag := DMUsuarios.Tag + 1;

  // Preparando a Query

  DMUsuarios.Login.Close ;
  DMUsuarios.Login.ParamByName('LOGIN').asString := Login;
  DMUsuarios.Login.ParamByName('SENHA').asString := Senha;
  DMUsuarios.Login.Prepare;

  // Abrindo a Query
  DMUsuarios.Login.Open;

  // Verificando se foi encontrado
  If DMUsuarios.Login.RecordCount = 0
  Then Begin // Falha no Login
       DMUsuarios.Login.Close;
       DMUsuarios.Login.UnPrepare;

       If DMUsuarios.Tag = 0
       then begin
            DMUsuarios.Free;
            DMUsuarios := Nil;
       end
       else begin
            DMUsuarios.Tag := DMUsuarios.Tag - 1;
       end;
  End
  Else Begin // Login com sucesso
       FrmMain.ImgUsuario.Visible := True;
       FrmMain.LblUsuario.Caption := DMUsuarios.LoginNOME.Value ;
       FrmMain.LblUsuario.Visible := True;
       FrmMain.Shape81.Visible    := True;
       FrmMain.Shape82.Visible    := True;
       DmApp.USR_CONECTADO        := DMUsuarios.Logincodigo.Value ;

       Result := True;
  End;
end;

function TDmApp.AutenticarCaixa(Login, Senha: String): Boolean;
begin
     // Setando o Result
     Result := False;

     TRY
        If DMProcs2 = Nil Then
           DMProcs2 := TDMProcs2.Create(Self);

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs2.AUTENTICA_USUARIO.ParamByName  ('LOGIN'   ).asString  := Login ;
        DMProcs2.AUTENTICA_USUARIO.ParamByName  ('SENHA'   ).asString  := Senha ;

        DMProcs2.AUTENTICA_USUARIO.ExecProc;

        If DMProcs2.AUTENTICA_USUARIO.ParamByName('PERFIL').ISnULL
        Then
            Result := False
        else
            Result := True  ;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

Procedure TDmApp.Verifica_Modulo(Executavel: String; Objeto: String; Descricao: String; Actions: String);
Begin
  DMProcs.VerificaModulo.ParamByName('EXECUTAVEL').value := Trim(Executavel);
  DMProcs.VerificaModulo.ParamByName('OBJETO').value     := Trim(Objeto);
  DMProcs.VerificaModulo.ParamByName('DESCRICAO').asString  := Trim(Descricao);
  DMProcs.VerificaModulo.ParamByName('ACTIONS').asString    := Trim(Actions);
  //
  DMProcs.VerificaModulo.ExecProc;
  //
  If DMProcs.VerificaModulo.ParamByName('OK').asString = '0' Then
     MessageDlg('Módulo inserido e configurado com sucesso !',Mtinformation,[MbOk],0);

  //Validação adicionada na tentativa de isolar as transações do desdobramento de cheques e cartão no recebimento
  if (dmApp.Commitar) then
    Transaction.CommitRetaining;
End;

procedure TDmApp.Filtrar(Datasource: TDataSource);
begin
  //
  FrmFiltrar := TFrmFiltrar.Create(Self);
  FrmFiltrar.Datasource := Datasource;
  FrmFiltrar.ShowModal;
end;

procedure TDmApp.Localizar(Datasource: TDataSource);
begin
  //
  FrmLocalizar := TFrmLocalizar.Create(Self);
  FrmLocalizar.Datasource := Datasource;
  FrmLocalizar.ShowModal;
end;

procedure TDmApp.DataModuleCreate(Sender: TObject);
var
  Aux : Variant;
  config: TIniFile;
  caminho, password : string;
  aberto : boolean;
begin
  IniciaComponentesDm ( Self as TDataModule );
  Commitar := true;
  //
  If Database.Connected Then
     Database.Close;
  //
  Caminho := ExtractFilePath(Application.Exename);

  If Copy(Caminho, Length(Caminho), 1) <> '\' Then
     Caminho := Caminho + '\';
  //
  If FileExists(Caminho + 'HelpStore.ini')
  Then Begin
       Config                  := TIniFile.Create(Caminho + 'HelpStore.ini');
       Database.DatabaseName   := Config.ReadString('geral', 'db',   '');
       PassWord                := Config.ReadString('geral', 'psd',  '');

       If PassWord <> ''
       then begin
            Database.Params[0]  := 'user_name=SYSDBA';
            Database.Params[1]  := 'password=' + PassWord;
       end;

       skinname                := Config.ReadString('GERAL', 'ESTILO',  '');
       CaminhoBase             := Config.ReadString('geral', 'db',   '');
       MENU                    := Config.ReadString('geral', 'mn',   '');
       TIPOVENDA               := Config.ReadString('Venda', 'vn',   '');
       MODODIGPROD             := Config.ReadString('Venda', 'dp',   '');
       COMP_EXTERNO            := Config.ReadString('Venda', 'ext', '');
       TEMPOOBSERV             := StrToInt(Config.ReadString('Venda', 'to',   ''));
       PDV_PORTA               := Config.ReadString('Pdv'  , 'pt',   '');
       LEITORPORTA             := Config.ReadString('Pdv'  , 'le',   '');
       BALANCAPORTA            := Config.ReadString('Pdv'  , 'ba',   '');
       USRPDV                  := Config.ReadString('Pdv'  , 'us',   '');
       USRBLC                  := Config.ReadString('Pdv'  , 'blc',  '');
       ORDENA_VENDA            := Config.ReadString('Venda', 'od',   '');
       ORCAMENTO               := Config.ReadString('Venda', 'pr',   '');
       TIPO_FOLHA              := Config.ReadString('Pdv'  , 'tpf',  '');
       TIPO_IMPRESSORA         := Config.ReadString('Pdv'  , 'tpi',  '');
       PORTA_IMPRESSORA        := Config.ReadString('Pdv'  , 'porta','');
       PORTA_PRAZO             := Config.ReadString('Pdv'  , 'portaprazo','');
       VIASVISTA               := Config.ReadString('Pdv'  , 'viasvista','');
       VIASPRAZO               := Config.ReadString('Pdv'  , 'viasprazo','');
       PDV_MODELO              := Config.ReadString('Pdv'  , 'modelo','');
       IMP_RECIBO              := Config.ReadString('Pdv'  , 'imprec','');
       FOLHA_RECIBO            := Config.ReadString('Pdv'  , 'folharec','');
       PWPDV                   := Config.ReadString('Pdv'  , 'pwpdv','');

       ContaCaixa              := 0;
       UsuarioCaixa            := 0;
       TurnoCaixa              := 0;

       Config.Free;
     End;
     //Capturando a chave do BD
     {aberto := Database.Connected;
     if not Database.Connected then
       Database.Connected := true;}

//     OgDaysCode.HojeMano := RetornaValor('select cast(''today'' as date)  from rdb$database');
     //OgDaysCode.CheckCode(true);
end;

procedure TDmApp.DataModuleDestroy(Sender: TObject);
  var
  config: TIniFile;
  Caminho : string;
begin
  Caminho := ExtractFilePath(Application.Exename);
  if Copy(Caminho, Length(Caminho), 1) <> '\' Then
     Caminho := Caminho + '\';

  if FileExists(Caminho + 'HelpStore.ini') then
  begin
       Config    := TIniFile.Create(Caminho + 'HelpStore.ini');
       Config.WriteString('Geral', 'ESTILO',  skinname);
       Config.Free;
  end;

  CobreBemX := Unassigned;
  Database.Close;
end;

procedure TDmApp.EventosEventAlert(Sender: TObject; EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
var
    Remetente, Destinatario, Assunto, Mensagem, Reservado: String;
    Dt_Envio: TDateTime;
begin
     If EventName = 'NovaMensagem_' + DmUsuarios.LoginLOGIN.value
     then begin
         { If FrmMain.pnlMensagens.Collaps
          then begin}
               FrmMain.dsMensagensRes.DataSet.Close;
               FrmMain.dsMensagensRes.DataSet.Open;
         { end
          else begin}
               FrmMain.dsMensagens.DataSet.Close;
               FrmMain.dsMensagens.DataSet.Open;

               FrmMain.dsMensagens.DataSet.Last ;

               FrmMensagemDisplay := TFrmMensagemDisplay.Create(Self);
               FrmMensagemDisplay.Showmodal ;

               Remetente    := FrmMensagemDisplay.Remetente      ;
               Destinatario := FrmMensagemDisplay.Destinatario   ;
               Assunto      := FrmMensagemDisplay.Assunto        ;
               Mensagem     := FrmMensagemDisplay.Mensagem       ;
               Reservado    := FrmMensagemDisplay.Reservado      ;
               Dt_Envio     := FrmMensagemDisplay.Dt_Envio       ;

               FrmMensagemDisplay.Free ;
               FrmMensagemDisplay := Nil ;

               If TRIM( Mensagem ) <> ''
               then
                   DmaPP.Responder_Mensagem ( Remetente, Destinatario, Reservado, Assunto, Mensagem,Dt_Envio);
          //end;
     end;

     If EventName = 'ExcluirMensagem_' + DmUsuarios.LoginLOGIN.value
     then begin
          {If FrmMain.pnlMensagens.Collaps
          then begin}
               FrmMain.dsMensagensRes.DataSet.Close;
               FrmMain.dsMensagensRes.DataSet.Open;
        {  end
          else begin }
               FrmMain.dsMensagens.DataSet.Close;
               FrmMain.dsMensagens.DataSet.Open;
        //  end;
     end;

end;

procedure TDmApp.Sis_MenuBeforeOpen(DataSet: TDataSet);
begin
     if (DataSet is TIBDataSet) Then
     begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString       := DMApp.Cnpj;
       (DataSet as TIBDataSet).ParamByName('COMPUTADOR').asString := NomeComputador ;

       (DataSet as TIBDataSet).Prepare;
     end;
end;

procedure TDmApp.ConfiguracoesBeforeOpen(DataSet: TDataSet);
begin
     If (DataSet is TIBDataSet) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString       := DMApp.Cnpj;

       (DataSet as TIBDataSet).Prepare;
     End;
end;

procedure TDmApp.ConfiguracoesNewRecord(DataSet: TDataSet);
begin
     ConfiguracoesVENCTO_FIXO_PRESTACOES.Value := 'N';
end;

procedure TDmApp.Seta_Impostos_Servicos(Venda: Integer; IRRF, ISS,
  PIS_COFINS_CSLL, INSS: Real);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs5 = Nil Then
        DMProcs5 := TDMProcs5.Create(Self);
        //
        DMProcs5.SETAR_IMP_NF_SERVICO.ParamByName('CNPJ'  ).asString    := Cnpj     ;
        DMProcs5.SETAR_IMP_NF_SERVICO.ParamByName('CODIGO').asInteger   := Venda    ;

        DMProcs5.SETAR_IMP_NF_SERVICO.ParamByName('IRRF'           ).asFloat := IRRF     ;
        DMProcs5.SETAR_IMP_NF_SERVICO.ParamByName('ISS'            ).asFloat := ISS      ;
        DMProcs5.SETAR_IMP_NF_SERVICO.ParamByName('PIS_COFINS_CSLL').asFloat := PIS_COFINS_CSLL    ;
        DMProcs5.SETAR_IMP_NF_SERVICO.ParamByName('INSS'           ).asFloat := INSS     ;

        DMProcs5.SETAR_IMP_NF_SERVICO.ExecProc;
        //
        DMProcs5.SETAR_IMP_NF_SERVICO.Close ;

        //
        DMProcs5.Free;
        DMProcs5 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.Buscar_Pagamento_Venda(Codigo: Integer): TDateTime;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs5 = Nil Then
        DMProcs5 := TDMProcs5.Create(Self);
        //
        DMProcs5.VER_DADOS_BAIXA_VENDA.ParamByName('CNPJ'  ).asString    := Cnpj     ;
        DMProcs5.VER_DADOS_BAIXA_VENDA.ParamByName('VENDA' ).asInteger   := Codigo   ;

        DMProcs5.VER_DADOS_BAIXA_VENDA.ExecProc;

        If DMProcs5.VER_DADOS_BAIXA_VENDA.ParamByName('DATA_BAIXA').ISnULL
        Then
            Result := strtodate('01/01/1900')
        else
            Result := DMProcs5.VER_DADOS_BAIXA_VENDA.ParamByName('DATA_BAIXA').asdate  ;

        //
        DMProcs5.VER_DADOS_BAIXA_VENDA.Close ;

        //
        DMProcs5.Free;
        DMProcs5 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

function TDmApp.CaixaFechado(Data: TDate; Usuario, Turno: Integer;
  Cnpj: String): Boolean;
begin
  with qCaixaFechado do
  begin
    ParamByName('data').Value := Data;
    ParamByName('usuario').Value := Usuario;
    ParamByName('turno').Value := Turno;
    ParamByName('cnpj').Value := Cnpj;
    Open;
    Result := UpperCase(Fields[0].AsString) = 'S';
    Close;
  end;
end;

procedure TDmApp.Agendar_Cobranca_Agrupada(DATA_SERVIDOR, INI, FIM,
  COBRAR_EM: TDateTime; COBRADOR, MOTIVO: Integer; HISTORICO: String);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;
        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs5 = Nil Then
        DMProcs5 := TDMProcs5.Create(Self);
        //
        DMProcs5.AGENDAR_COBRANCAS_AGRUPADA.ParamByName('CNPJ'          ).asString   := Cnpj     ;
        DMProcs5.AGENDAR_COBRANCAS_AGRUPADA.ParamByName('INI'           ).asDate     := INI   ;
        DMProcs5.AGENDAR_COBRANCAS_AGRUPADA.ParamByName('FIM'           ).asDate     := FIM   ;
        DMProcs5.AGENDAR_COBRANCAS_AGRUPADA.ParamByName('COBRAR_EM'     ).asDate     := COBRAR_EM   ;
        DMProcs5.AGENDAR_COBRANCAS_AGRUPADA.ParamByName('DATA_SERVIDOR' ).asDate     := DATA_SERVIDOR   ;
        DMProcs5.AGENDAR_COBRANCAS_AGRUPADA.ParamByName('COBRADOR'      ).asInteger  := COBRADOR   ;
        DMProcs5.AGENDAR_COBRANCAS_AGRUPADA.ParamByName('MOTIVO'        ).asInteger  := MOTIVO   ;
        DMProcs5.AGENDAR_COBRANCAS_AGRUPADA.ParamByName('HISTORICO'     ).asString   := HISTORICO   ;

        DMProcs5.AGENDAR_COBRANCAS_AGRUPADA.ExecProc;

        //
        DMProcs5.AGENDAR_COBRANCAS_AGRUPADA.Close ;

        //
        DMProcs5.Free;
        DMProcs5 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;

procedure TDmApp.Insere_Produto_Pdv(Codigo, Nome, Secundario, Ecf,
  Est_Negativo, Pesavel: String; Valor: Real; Validade: Integer);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;
        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs5 = Nil Then
        DMProcs5 := TDMProcs5.Create(Self);
        //
        DMProcs5.Insere_Produto_Pdv.ParamByName('CNPJ'                 ).asString   :=  DMAPP.CNPJ   ;
        DMProcs5.Insere_Produto_Pdv.ParamByName('CODIGO'               ).asString   :=  CODIGO       ;
        DMProcs5.Insere_Produto_Pdv.ParamByName('CODIGO_2'             ).asString   :=  SECUNDARIO   ;
        DMProcs5.Insere_Produto_Pdv.ParamByName('NOME'                 ).asString   :=  NOME         ;
        DMProcs5.Insere_Produto_Pdv.ParamByName('NEG_QTDADE_2'         ).asString   :=  EST_NEGATIVO ;
        DMProcs5.Insere_Produto_Pdv.ParamByName('PRC_VENDA'            ).asFloat    :=  VALOR        ;
        DMProcs5.Insere_Produto_Pdv.ParamByName('ALIQUOTA_ECF'         ).asString   :=  ECF          ;
        DMProcs5.Insere_Produto_Pdv.ParamByName('PROD_PESAVEL'         ).asString   :=  PESAVEL      ;
        DMProcs5.Insere_Produto_Pdv.ParamByName('ATUALIZA_ARQ_EXTERNO' ).asString   :=  'N'          ;
        DMProcs5.Insere_Produto_Pdv.ParamByName('VALIDADE'             ).asInteger  :=  VALIDADE     ;

        DMProcs5.Insere_Produto_Pdv.ExecProc;

        //
        DMProcs5.Insere_Produto_Pdv.Close ;

        //
        DMProcs5.Free;
        DMProcs5 := Nil;

        DmApp.TransactionProc.Commit ;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback  ;
     end;
end;



procedure TDmApp.InsereTitulosCbx(ContaCorrente:Integer;DataSet: TIBQuery; DtVencto : TDate = 0);
var
  boleto : variant;
begin
     //----------------- Início dos parâmetros obrigatórios da conta corrente--------------------
     CobreBemX.ArquivoLicenca := ExtractFilePath(Application.Exename)+'Boleto\Licenca.conf';
     CobreBemX.CodigoAgencia := DataSet.FieldByName('BLT_AGENCIA').asstring;
     CobreBemX.NumeroContaCorrente := DataSet.FieldByName('BLT_CONTA').asstring;
     CobreBemX.CodigoCedente := DataSet.FieldByName('CED_CODIGOCED').asstring;
     CobreBemX.InicioNossoNumero := DMApp.BLT_NOSSO_NUM_INI;
     CobreBemX.FimNossoNumero := DMApp.BLT_NOSSO_NUM_FIM;
    // CobreBemX.ProximoNossoNumero := DataSet.FieldByName('NOSSO_NUMERO').asstring;

     //---------------- Início da configuração dos dados do Cedente para envio de boletos por email---------
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.SMTP.Servidor := DMApp.BLT_EMAIL_SERVIDOR; { Trocar para apontar para o seu servidor SMTP }
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.SMTP.Porta := DMApp.BLT_EMAIL_PORTA;
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.SMTP.Usuario := DMApp.BLT_EMAIL_USER; {'suporte@globaltechnologia.com.br' utilizar esta propriedade para acesso a servidores SMTP seguros }
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.SMTP.Senha := DMApp.BLT_EMAIL_SENHA; {utilizar esta propriedade para acesso a servidores SMTP seguros }

     CobreBemX.PadroesBoleto.PadroesBoletoEmail.URLImagensCodigoBarras := 'http://www.bptob.com/imagenscbe/';
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.URLLogotipo := 'http://www.thisf.com.br/banners/BannerCBE.gif';
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.PadroesEmail.Assunto := 'Boleto de Cobrança';
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.PadroesEmail.EmailFrom.Endereco := dmApp.Email;
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.PadroesEmail.EmailFrom.Nome := dmApp.Nome;
     CobreBemX.PadroesBoleto.PadroesBoletoEmail.PadroesEmail.FormaEnvio := feeSMTPBoletoHTML;


    {------------------ Início da configuração dos dados do Cedente para impressão de boletos--------------
      A próxima linha só é necessária se for solicitada a impressão de boletos e
      se desejar colocar o logotipo do Cedente na parte superior do boleto}

     CobreBemX.PadroesBoleto.PadroesBoletoImpresso.ArquivoLogotipo := ExtractFilePath(Application.Exename)+'Boleto\Imagens\Cedente.jpg';
     CobreBemX.PadroesBoleto.PadroesBoletoImpresso.CaminhoImagensCodigoBarras := ExtractFilePath(Application.Exename)+'Boleto\Imagens\';
    { Utilize o parâmetro abaixo para efetuar ajustes na impressão do boleto subindo ou descendo o mesmo na folha de papel
    Os valores devem ser informados em milímetros e quanto maior o valor mais para baixo será iniciado o boleto
    Se este parâmetro não for passado será assumido o valor 15 que é o indicado para a maioria das impressoras Jato de Tinta}
    CobreBemX.PadroesBoleto.PadroesBoletoImpresso.MargemSuperior := 3;

   //-- A próxima linha é utilizada para exibir um texto do lado direito do logotipo nos boletos impressos ou enviados por email--//
   CobreBemX.PadroesBoleto.IdentificacaoCedente := dmApp.QryParceiroPARC_NOME_FANTASIA.asString+' - '+QryParceiroPARC_SLOGAN.AsString;


   //-----------------------------------------------------PASSANDO DADOS COBRE BEM--------------------------------------------//
   CobreBemX.DocumentosCobranca.Clear;
   Boleto := CobreBemX.DocumentosCobranca.Add;
   // Boleto.NumeroDocumento := tbBoletosChaveBoleto.AsString;
   Boleto.NomeSacado := DataSet.FieldByName('SAC_NOME').AsString;

   if Length(DataSet.FieldByName('SAC_CPF_CGC').asstring) > 11 then
     Boleto.CNPJSacado := DataSet.FieldByName('SAC_CPF_CGC').asstring
   else
     Boleto.CPFSacado := DataSet.FieldByName('SAC_CPF_CGC').asstring;

   Boleto.EnderecoSacado := DataSet.FieldByName('SAC_RUA').asstring;
   Boleto.BairroSacado := DataSet.FieldByName('SAC_BAIRRO').asstring;
   Boleto.CidadeSacado := DataSet.FieldByName('SAC_CIDADE').asstring;
   Boleto.EstadoSacado := DataSet.FieldByName('SAC_UF').asstring;
   Boleto.CepSacado := DataSet.FieldByName('SAC_CEP').asstring;
   Boleto.DataDocumento := FormatDateTime('dd/mm/yyyy', Date);

   //não foi definido uma dt.de vecnto então pego a do próprio titulo
   if DtVencto <= 0 then
     Boleto.DataVencimento  := FormatDateTime('dd/mm/yyyy',DataSet.FieldByName('BLT_DT_VENCTO').AsDateTime)
   else
     Boleto.DataVencimento  := DtVencto;

   Boleto.DataProcessamento := FormatDateTime('dd/mm/yyyy', Date);
   Boleto.ValorDocumento := DataSet.FieldByName('TOTAL').AsFloat; //Esse é um campo calculado com o vlr. do título + juros
   Boleto.PercentualJurosDiaAtraso := (DataSet.FieldByName('BLT_VLR_MORA_JUROS').AsFloat/30);
   Boleto.PercentualMultaAtraso := DataSet.FieldByName('BLT_MULTA').AsFloat;

   Boleto.PercentualDesconto := DataSet.FieldByName('BLT_PCT_DESCONTO').AsFloat;
   Boleto.ValorOutrosAcrescimos := DataSet.FieldByName('BLT_VLR_OUTRAS_DESP').AsFloat;
   Boleto.PadroesBoleto.Demonstrativo := 'Adicionar Texto';
   Boleto.PadroesBoleto.InstrucoesCaixa := DataSet.FieldByName('BLT_INSTRUCAO').Value;

   Boleto.EmailSacado := DataSet.FieldByName('SAC_EMAIL').asstring;
   Boleto.EmailSacado.Nome := DataSet.FieldByName('SAC_NOME').asstring;
   Boleto.EmailSacado.Endereco := DataSet.FieldByName('SAC_RUA').asstring;

   Boleto.ControleProcessamentoDocumento.Imprime := scpExecutar;
   Boleto.ControleProcessamentoDocumento.EnviaEmail := scpExecutar;
   Boleto.ControleProcessamentoDocumento.GravaRemessa := scpExecutar;
   Boleto.NossoNumero := DataSet.FieldByName('NOSSO_NUMERO').asstring;
end;

procedure TDmApp.GeraRemessa(UPDTit:Boolean = False; Data1: TDate = 0;Data2: TDate = 0);
var
  NomeArquivo, Path : String;
begin
  //----------------------------Remessa-----------------------//
{  gbCobranca.Titulos.Clear;
  gbCobranca.DataArquivo := Now();}
  //--Extraindo Nome do Arquivo e Path
  NomeArquivo := ExtractFileName(dmapp.BLT_DIR_REMESSA);
  Path := ExtractFileDir(dmapp.BLT_DIR_REMESSA);

  // caso não tenha sido definido um caminho para o arquivo ou mesmo um nome no configurações.. então barro
  if ((NomeArquivo = '') or (Path = ''))then
  begin
    application.messageBox('Diretorio ou Nome do arquivo de remessa não foram definidos na configuração da empresa','Aviso',MB_ICONINFORMATION + mb_ok);
    exit;
  end
  else
  begin
    // if diretorio não existe então criamos
    if not DirectoryExists(Path) then
      if not ForceDirectories(Path) then
        showmessage('Diretorio para arquivo não pode ser criado');
  end;

 { case dmapp.blt_layout of
    1 : gbCobranca.LayoutArquivo := laCNAB240;
    2 : gbCobranca.LayoutArquivo := laCNAB400
  else
    gbCobranca.LayoutArquivo := laOutro;
  end;

  gbCobranca.NomeArquivo := dmapp.BLT_DIR_REMESSA;

  //Gerando
  qryGerarTitulos.close;
  qryGerarTitulos.sql.text := 'select * from  pcd_gera_titulos_periodo(:cnpj,:dt_ini,:dt_fin)';
  qryGerarTitulos.parambyname('cnpj').value := dmapp.cnpj;
  qryGerarTitulos.parambyname('dt_ini').asdate := Data1;
  qryGerarTitulos.parambyname('dt_fin').asdate := Data2;
  qryGerarTitulos.open;
  qryGerarTitulos.first;
  while not qryGerarTitulos.eof do
  begin
    InsereTitulos(qryGerarTitulos);
    qryGerarTitulos.next;
  end;
  //--se os titulos serão marcados como remetidos(Não serão achados novamente em pesquisas p/Remessa)

   gbCobranca.Titulos.Add(gbTitulo);
  gbCobranca.GerarRemessa;}
end;

procedure TDmApp.ImprimeTitulo(codigo,ContaCorrente: integer; Origem: char;Trans:TIBTransaction=nil);
begin
  //----------Imprimirá um único boleto--------------//
  qryGerarTitulos.close;
  qryGerarTitulos.sql.text := ' select * from pcd_blt_gera_titulos(:cnpj,:codigo,:ContaCorrente,:origem) ';
  qryGerarTitulos.parambyname('cnpj').value := dmapp.cnpj;
  qryGerarTitulos.parambyname('codigo').value := codigo;
  qryGerarTitulos.parambyname('ContaCorrente').value := ContaCorrente;
  qryGerarTitulos.parambyname('origem').value := origem;
  qryGerarTitulos.open;

  InsereTitulos(ContaCorrente,0,Trans);

  //CobreBemX.ImprimeBoletos;
end;


procedure TDmApp.RetornoBolestos;
begin
  //
end;

procedure TDmApp.Perfil_ComputadorBeforeOpen(DataSet: TDataSet);
begin
 If (DataSet is TIBDataSet) Then
 Begin
   (DataSet as TIBDataSet).ParamByName('CNPJ').asString       := DMApp.Cnpj;
   (DataSet as TIBDataSet).ParamByName('COMPUTADOR').asString := NomeComputador ;

   (DataSet as TIBDataSet).Prepare;
 End;
end;

function TDmApp.VerificaDesconto(Venda: Integer; DescontoPos: Currency=0;Trans: TIBTransaction=nil): boolean;
var
  Valido,TotalOriginal, pct ,VlrOriginal,TotalUnitario, DescontoVD, TotalVD, Desconto: variant;
  Percentual : Real;
  Descto : string;
begin
  Descto := floattostr(DescontoPos);
  Descto := stringReplace(Descto,',','.',[rfReplaceAll]);
  valido := VarToStr(RetornaValor('select valido from PCD_TESTANDO('''+dmapp.cnpj+''','+inttostr(venda)+','+Descto+')',Trans));

  if (valido = 'N') then
    result := false
  else
    result := true;
end;

function TDmApp.VerificaDescontoReceber(Valor,Desconto:Currency): boolean;
var
 PctDescto : Currency;
begin
  PctDescto := ((Desconto * 100)/Valor);

  if PctDescto <= DESCONTO_MAXIMO then
    Result := true
  else
    Result := false;

end;

function TDmApp.VerificaDescontoItem(Produto: String; Cliente: Integer; VlrProduto: Currency; Vendedor:Integer=0): boolean;
var
  Valor : string;
  valido : variant;
begin
  Valor := floattostr(VlrProduto);
  Valor := stringReplace(Valor,',','.',[rfReplaceAll]);
  valido := RetornaValor('select valido from verifica_desctoitem('''+dmapp.cnpj+''','''+produto+''','+inttostr(cliente)+','+Valor+','+inttostr(vendedor)+')');
  If (valido = 'S') then
    result := true
  else
    result := false;
end;

function TDmApp.TributosRetidos(Venda: integer; Trans: TIBTransaction=nil): Currency;
var
  tributos : variant;
begin
    tributos := RetornaValor('select * from pct_tributos_ret('''+dmapp.cnpj+''','+inttostr(venda)+')',Trans);
    if (VarIsNull(tributos)) then
      tributos := 0;
    Result :=  tributos;
end;

function TDmApp.DescontoRestante(Venda: integer; Descto: Currency; Trans: TIBTransaction=nil): Currency;
var
  DesctoRes : Variant;
  DesctoAux : String;
begin
  DesctoAux := floattostr(Descto);
  DesctoAux := stringReplace(DesctoAux,',','.',[rfReplaceAll]);
  DesctoRes := RetornaValor('select descto_res from PCD_TESTANDO('''+dmapp.cnpj+''','+inttostr(venda)+','+DesctoAux+')',Trans);
  if (VarIsNull(DesctoRes)) then
    DesctoRes := 0;

  Result :=  DesctoRes;
end;

function TDmApp.VerificaLimite2(Cliente,Forma_pagto: Integer; Valor: Currency; Trans: TIBTransaction): integer;
begin
   DMProcs.VerificaLimite.Close;
   DMProcs.VerificaLimite.ParamByName('CNPJ').value  := CNPJ      ;
   DMProcs.VerificaLimite.ParamByName('CLIENTE').value := Cliente   ;
   DMProcs.VerificaLimite.ParamByName('VALOR_VENDA').value := Valor;
   DMProcs.VerificaLimite.ParamByName('FORMA_PAGTO').value := Forma_pagto;
   DMProcs.VerificaLimite.ExecProc;

   //Através do motivo, descobrimos se é por causa do limite de tempo, crédito ou válido
   result := DMProcs.VerificaLimite.ParamByName('MOTIVO').asInteger;

end;

procedure TDmApp.qryGerarTitulosCalcFields(DataSet: TDataSet);
var
  Data : Tdate;
  Dias : integer;
begin
   //Valor Restante é o valor total
   qryGerarTitulosTotal.Value   := qryGerarTitulosBLT_VALOR.Value -(qryGerarTitulosREC_VLR_PARCIAL.Value +qryGerarTitulosREC_DESCONTOS.VALUE);

   //Verificando se a ultima baixa será utilizado como parâmetro para o calculo de juros
   if (qryGerarTitulosREC_Data_Ult_Baixa.value < qryGerarTitulosBLT_DT_VENCTO.value) then
     Data := qryGerarTitulosBLT_DT_VENCTO.Value
   else
     Data := qryGerarTitulosREC_Data_Ult_Baixa.Value;

   //Data_Servidor
   //Dias := trunc(DmaPP.DataCaixa - Data);
   Dias := trunc(DmaPP.Data_Servidor - Data);
   if Dias < 0 then
     Dias := 0;

   //se havemos de cobrar juros
   if ((Dias > 0) and (dias > dmapp.TOLERANCIA_JUROS)) then
     qryGerarTitulosJuros_Calculadors.Value := arredonda(CALCULAJUROS(Data,DmaPP.Data_Servidor,qryGerarTitulosTOTAL.Value,0 ),2)
   else
     qryGerarTitulosJuros_Calculadors.Value := 0;


   qryGerarTitulosTotal.value := arredonda(qryGerarTitulosTotal.value + qryGerarTitulosJuros_Calculadors.Value,2) ;
end;

function TDmApp.RetornaVersao: Integer;
var
  Reg: TRegistry;
  chave, Versao : string;
begin
  try
    versao := '';
    Reg:=Tregistry.create;
    chave := 'SOFTWARE\neotech\Update\';
    with Reg do
    begin
      rootkey:=HKEY_LOCAL_MACHINE;
      Openkey(chave,false);
      versao := readstring('MNG1');
      if versao = '' then
         versao := '0';

      closekey;
    end;
  finally
    reg.free;
  end;

  result := strToInt(trim(Versao));
end;

procedure TDmApp.SetForm;
var
  exibe_mensalidades,exibe_grafico, exibe_acerto, exibe_carga, exibe_mesas, exibe_ctb, exibe_cb, cm_vdt, cm_agr, exibe_srv, exibe_agr, exibe_tbl : string;
begin
  //Inabilitando o menu de restaurante no form principal
  with FrmMain do
  begin
    //-------------------------Mesas-------------------//
    exibe_mesas := VarToStr(RetornaValor('select max(coalesce(emp.exibe_mesas,''N'')) from sis_empresas emp'));
    if (exibe_mesas = 'S') then
      SubRestaurante.Visible := ivAlways
    else
      SubRestaurante.Visible := ivNever;

    //-------------------------Obras-------------------//
    EXIBE_CTR_OBRAS := VarToStr(RetornaValor('select max(coalesce(emp.EXIBE_CTR_OBRAS,''N'')) from sis_empresas emp'));
    if (EXIBE_CTR_OBRAS = 'S') then
      SubContratos.Visible := ivAlways
    else
      SubContratos.Visible := ivNever;


    //-------------------------graico---------------//
    exibe_grafico := VarToStr(RetornaValor('select max(coalesce(emp.FIN_EXIBE_GRAFICOS,''N'')) from sis_empresas emp'));
    tbsGeral.TabVisible :=  (exibe_grafico = 'S');

    //-------------------------Serviço---------------//
    exibe_srv := VarToStr(RetornaValor('select max(coalesce(emp.exibe_srv,''N'')) from sis_empresas emp'));
    if (exibe_srv = 'S') then
    begin
      SubServico.visible := ivAlways;
      btnMainServico.visible := ivAlways;
    end
    else
    begin
      SubServico.visible := ivNever;
      btnMainServico.visible := ivNever;
    end;


    //-------------------------NFe---------------//
    exibe_nfe := VarToStr(RetornaValor('select max(coalesce(emp.exibe_nfe,''N'')) from sis_empresas emp'));
    btnNfeMain.visible := ivNever;
    if (exibe_nfe = 'S') then
    begin
     // btnNfeMain.visible := ivAlways;
    end
    else
    begin
     // btnNfeMain.visible := ivNever;
    end;

    //-------------------------Receituário Agronomico---------------//
    exibe_agr := VarToStr(RetornaValor('select max(coalesce(emp.exibe_agr,''N'')) from sis_empresas emp'));
    if (exibe_agr = 'S') then
    begin
      btnReceituario.visible := ivAlways;
      SubReceituario.visible := ivAlways;
    end
    else
    begin
      SubReceituario.visible := ivNever;
       btnReceituario.visible := ivNever;
    end;

    //-------------------------Exibe Tabela de Preços---------------//
    exibe_tbl := VarToStr(RetornaValor('select max(coalesce(emp.exibe_tbl,''N'')) from sis_empresas emp'));
    if (exibe_tbl = 'S') then
      SubTabelaPreco.visible := ivAlways
    else
      SubTabelaPreco.visible := ivNever;

    //-------------------------Comissao VDT---------------//
    cm_vdt := VarToStr(RetornaValor('select max(coalesce(emp.CM_VDT,''N'')) from sis_empresas emp'));
    if (cm_vdt = 'S') then
      bntVDT.visible := ivAlways
    else
      bntVDT.visible := ivNever;

    //-------------------------Comissao agricola---------------//
    cm_AGR := VarToStr(RetornaValor('select max(coalesce(emp.CM_AGR,''N'')) from sis_empresas emp'));
    if (cm_agr = 'S') then
      btnCMAGR.visible := ivAlways
    else
      btnCMAGR.visible := ivNever;


    //-------------------------Controle Cargas---------------//
    exibe_carga := VarToStr(RetornaValor('select max(coalesce(emp.exibe_carga,''N'')) from sis_empresas emp'));
    if (exibe_carga = 'S') then
    begin
      btnCarga.visible := ivAlways;
      btnMainCarga.visible := ivAlways
    end
    else
    begin
      btnCarga.visible := ivNever;
      btnMainCarga.visible := ivNever;
    end;

    //-------------------------Controle Cargas---------------//
    exibe_acerto := VarToStr(RetornaValor('select max(coalesce(emp.exibe_acerto_contas,''N'')) from sis_empresas emp'));
    if (exibe_acerto = 'S') then
    begin
      btnMainAcerto.visible := ivAlways;
      EstornaRec.visible := ivNever;
      EstornaPgr.visible := ivNever;
      btnRecibo.visible := ivNever;
    end
    else
    begin
      btnMainAcerto.visible := ivNever;
      EstornaRec.visible := ivAlways;
      EstornaPgr.visible := ivAlways;
      btnRecibo.visible := ivAlways;
    end;

    exibe_mensalidades := VarToStr(RetornaValor('select max(coalesce(emp.EXIBE_MESALIDADES,''N'')) from sis_empresas emp'));
    if (exibe_mensalidades = 'S') then
      btnSubMensalidade.visible := ivAlways
    else
      btnSubMensalidade.visible := ivNever;

    //-------------------------Contabilidade---------------//
    exibe_ctb := VarToStr(RetornaValor('select max(coalesce(emp.exibe_ctb,''N'')) from sis_empresas emp'));
    if (exibe_ctb = 'S') then
      SubContabilidade.visible := ivAlways
    else
      SubContabilidade.visible := ivNever;

    //-------------------------Cobrança---------------//
    exibe_cb := VarToStr(RetornaValor('select max(coalesce(emp.exibe_cb,''N'')) from sis_empresas emp'));
    if (exibe_cb = 'S') then
      subCobranca.visible := ivAlways
    else
      subCobranca.visible := ivNever;
  end;

  //--------Inabilitando o panel da mesa no pdv----//
  if (frmPdv <> nil) then
  begin
    with FrmPdv do
    begin
      if (exibe_mesas = 'S') then
      begin
        pnlMesa.visible := true;
        ActTransfereMesa.enabled := true;
       // ActMesa.enabled := true;
      end
      else
      begin
        pnlMesa.visible := false;
        ActTransfereMesa.enabled := false;
      //  ActMesa.enabled := false;
      end;
    end;
  end;
end;

function TDmApp.SetKEY_RELEASE(chave: string):boolean;
begin
  try
    ExecSql('update sis_empresas set key_release ='+QuotedStr(chave),TransactionAux);
    result := true;
  except
    result := false;
  end;
end;

function TDmApp.GetKEY_RELEASE: String;
var
  Aux : Variant;
  config: TIniFile;
  caminho, password : string;
  aberto : boolean;
begin
  //Capturando a chave do BD
  aberto := Database.Connected;
  if not Database.Connected then
  begin
    Caminho := ExtractFilePath(Application.Exename);
    If Copy(Caminho, Length(Caminho), 1) <> '\' Then
       Caminho := Caminho + '\';
    try
      if FileExists(Caminho + 'HelpStore.ini')  Then
      begin
        Config                  := TIniFile.Create(Caminho + 'HelpStore.ini');
        Database.DatabaseName   := Config.ReadString('geral','db','');
        PassWord                := Config.ReadString('geral', 'psd',  '');

        Database.Params[0]  := 'user_name=SYSDBA';
        if PassWord <> '' then
          Database.Params[1]  := 'password=' + PassWord;
      end;

    finally
      config.free;
    end;
    //Conectando o BD
    Database.LoginPrompt := false;
    Database.Connected := true;

  end;

  result := RetornaValor('select max(key_release) from sis_empresas ');
  //Valendo 15 dias ou esse

 // result := '666A1EE60233F294';


end;

procedure TDmApp.OgDaysCodeChangeCode(Sender: TObject; Code: TCode);
var
  S    : string;
begin
  S := BufferToHex(Code, SizeOf(Code));
  SetKEY_RELEASE(s);
end;

procedure TDmApp.OgDaysCodeChecked(Sender: TObject; Status: TCodeStatus);
var
  s,texto : string;
  DiasRestantes : integer;
begin
  DiasRestantes := OgDaysCode.GetValue;
  if ((DiasRestantes <= 0) or (Status <> ogValidCode)) then
  begin
    application.messagebox(Pchar('Release expirada'+#13+'Contate a central de suporte '+dmApp.QryParceiroPARC_NOME_FANTASIA.asString),'Aviso',mb_iconerror + mb_ok);
    application.terminate;
  end
  else if ((DiasRestantes <= 10) and (Status = ogValidCode)) then
  begin
    if DiasRestantes = 1 then
      texto :=  ' dia '
    else
      texto :=  ' dias ';

    s := 'Esta release expirará em '+IntToStr(DiasRestantes)+texto+#13+'Contate a Central de Suporte e solicite uma atualização';
    application.messagebox(Pchar(s),Pchar('Aviso - '+dmApp.QryParceiroPARC_NOME_FANTASIA.asString),mb_iconinformation + mb_ok);
  end;
end;

procedure TDmApp.OgDaysCodeGetKey(Sender: TObject; var Key: TKey);
const                     
  CKey : TKey = ($9E,$38,$14,$7A,$67,$3E,$42,$82,$14,$62,$D5,$01,$65,$DE,$1C,$56);
begin
  Key := CKey;
end;


procedure TDmApp.OgDaysCodeGetCode(Sender: TObject; var Code: TCode);
var
  s : string;
begin
    {get the days code from the ini file}
    S := GetKEY_RELEASE;

    OgDaysCode.HojeMano := RetornaValor('select cast(''today'' as date)  from rdb$database');
   // showmessage(DateToSTr(OgDaysCode.HojeMano));

    {convert to proper form}
    HexToBuffer(S, Code, SizeOf(Code));

    {set code label caption}
end;

procedure TDmApp.Sis_Menu_ItensBeforePost(DataSet: TDataSet);
begin
  Sis_Menu_ItensCNPJ.value := dmapp.cnpj;
end;

procedure TDmApp.Sis_MenuBeforePost(DataSet: TDataSet);
begin
  Sis_MenuCNPJ.value := dmapp.cnpj;
end;


function TDmApp.VerificaLote(Venda: Integer): boolean;
var
  s : string;
  cont : variant;
begin
  s := ' select count(*) from fat_vendas_itens vdi '+
       ' inner join est_produtos prd on (prd.codigo = vdi.produto and vdi.cnpj = prd.cnpj) '+
       ' where prd.possui_lote = ''S'' and vdi.codigo_lote is null '+
       ' and vdi.codigo ='+inttostr(venda)+' and vdi.cnpj = '+quotedstr(dmapp.cnpj);

  cont := retornaValor(s);

  if cont > 0 then
    result := false
  else
    result := true;
end;

function TDmApp.RetornaJuroCli(cliente: integer):real;
var
  juros_cli : variant;
begin
  juros_cli := RetornaValor('select cli.taxa_juros from glo_clientes cli where cli.cnpj = '+QuotedStr(dmApp.cnpj)+' and cli.pessoa_fj = '+IntToStr(cliente));
  if VarIsNull(juros_cli) then
    juros_cli := 0;

  result := juros_cli;
end;
procedure TDmApp.Sis_ReleasesAfterPost(DataSet: TDataSet);
begin
  Sis_Releases.transaction.CommitRetaining;
  Sis_Releases.DisableControls;
  Sis_Releases.close;
  Sis_Releases.open;
  Sis_Releases.EnableControls;
end;

procedure TDmApp.pcd_log_fat_vendas(LOG_CNPJ: STRING; LOG_CODIGO,LOG_USUARIO:INTEGER; LOG_OPERACAO:STRING);
begin
  LOG_FAT_VENDAS.ParamByName('LOG_CODIGO').value       := log_codigo;
  LOG_FAT_VENDAS.ParamByName('LOG_CNPJ').value       := log_cnpj;
  LOG_FAT_VENDAS.ParamByName('LOG_USUARIO').value  := log_usuario;
  LOG_FAT_VENDAS.ParamByName('LOG_OPERACAO').value := log_operacao;
  LOG_FAT_VENDAS.ExecProc;
  DmaPP.Transaction.CommitRetaining;
end;

function TDmApp.Gerar_Venda_OS(CNPJ: String; CODIGO,ID_CLIENTE: integer): Integer;
begin
  try
      DmaPP.Transaction.CommitRetaining ;

      If Not DmaPP.TransactionProc.InTransaction then
          DmaPP.TransactionProc.StartTransaction ;
      //
      If DMProcs4 = Nil Then
         DMProcs4 := TDMProcs4.Create(Self);
      //
      DMProcs4.PCD_OS_GERA_VENDA.ParamByName('CNPJ').asString       := CNPJ   ;
      DMProcs4.PCD_OS_GERA_VENDA.ParamByName('CODIGO').asInteger    := CODIGO ;
      DMProcs4.PCD_OS_GERA_VENDA.ParamByName('PESSOA_FJ').asInteger := ID_CLIENTE ;
      DMProcs4.PCD_OS_GERA_VENDA.ExecProc;
      Result := DMProcs4.PCD_OS_GERA_VENDA.ParamByName('COD_VENDA').asInteger;

      DMProcs4.Free;
      DMProcs4 := Nil;

      DmaPP.TransactionProc.Commit ;
  except
      DmApp.TransactionProc.Rollback;
  end;
end;

procedure TDmApp.ZeraCaixaUsuario(owner: TObject);
begin
  if (Owner = FrmMain) then
  begin
    DmApp.UsuarioCaixa := 0;
    DmApp.ContaCaixa   := 0;
    DmApp.TurnoCaixa   := 0;
  end;
end;

procedure TDmApp.Conecta;
begin
  IdSMTP.IOHandler := nil;
  IdSMTP.IOHandler := SSLSocket;
  if not IdSMTP.Connected then
  begin
    IdSMTP.UserName := dmApp.LOGIN;
    IdSMTP.Host := dmApp.smtp;

    IdSMTP.Password := dmapp.senha;
    IdSMTP.AuthenticationType := atLogin;
    IdSMTP.Port := 465;//25;//587;
    IdSMTP.Connect;
    IdSMTP.Authenticate;
  end;
end;

procedure TDmApp.Desconecta;
begin
  if IdSMTP.Connected then
    IdSMTP.Disconnect;
end;

procedure TDmApp.ACBrNFeStatusChange(Sender: TObject);
begin
 case ACBrNFe.Status of
    stIdle :
    begin
      if ( frmStatus <> nil ) then
        frmStatus.Hide;
    end;
    stNFeStatusServico :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeRetRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeConsulta :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeCancelamento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeInutilizacao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecibo :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCadastro :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEnvDPEC :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando DPEC...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeConsultaDPEC :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando DPEC...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEmail :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Email...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
  end;
  Application.ProcessMessages;
end;


procedure TDmApp.ImprimeNFE(cnpj: string; venda, num_nf: integer; DataNF: TDate;Serie:string='1';PathXML:String='');
var
   vAux,regime, FileXML : String;
   ok :boolean;
   NITEM : Integer;
begin
  if PathXML <> '' then
  begin
    ACBrNFe.DANFE.Logo       := '';
    ACBrNFe.Configuracoes.WebServices.Ambiente   := taHomologacao;
    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromFile(PathXML);
    ACBrNFe.NotasFiscais.Imprimir;
    ACBrNFe.DANFE.Logo       := DmApp.NFE_GER_IMG_DANFE;
  //  ACBrNFe.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(StrToInt(DmApp.NFE_WS_AMBIENTE)+1));
    exit;
  end;

  try
     ACBrNFe.WebServices.StatusServico.Executar
  except on E: Exception do
      begin
        raise Exception.Create(E.Message);
      end;
  end;

  dmCadastros2.QryVerificaNUMNFE.Close;
  dmCadastros2.QryVerificaNUMNFE.parambyname('cnpj').value := dmApp.cnpj;
  dmCadastros2.QryVerificaNUMNFE.parambyname('codigo').value := venda;
  dmCadastros2.QryVerificaNUMNFE.parambyname('num_nf').value := num_nf;
  dmCadastros2.QryVerificaNUMNFE.parambyname('serie').value :=  serie;
  dmCadastros2.QryVerificaNUMNFE.Open;


  if ((dmCadastros2.QryVerificaNUMNFEEXISTE_NF.value <> 0) or (dmCadastros2.QryVerificaNUMNFEEXISTE_XML.value <> 0)) then
  begin
    raise Exception.Create((Pchar('Número de NF já utilizado pelo seguinte faturamento('+dmCadastros2.QryVerificaNUMNFEEXISTE_NF.asString+','+dmCadastros2.QryVerificaNUMNFEEXISTE_XML.asString+')')));
    exit;
  end;

  dmCadastros2.NFe_Faturamentos2.Close;
  dmCadastros2.NFe_Faturamentos2.ParambyName('cnpj').value := cnpj;
  dmCadastros2.NFe_Faturamentos2.ParambyName('venda').value := venda;
  dmCadastros2.NFe_Faturamentos2.Open;

  dmCadastros2.NFe_Faturamentos_Itens.Close;
  dmCadastros2.NFe_Faturamentos_Itens.ParambyName('scnpj').value := cnpj;
  dmCadastros2.NFe_Faturamentos_Itens.ParambyName('codigo').value := venda;
  dmCadastros2.NFe_Faturamentos_Itens.Open;


  //Nota Já foi emitida basta, reimprimir
  if (dmCadastros2.NFe_Faturamentos2NFE_XML.AsString <> '') then
  begin
    if not(DirectoryExists('C:\Sistemas\HelpStore\NFe\Temp\')) then
      CreateDir('C:\Sistemas\HelpStore\NFe\Temp\');

    FileXML := 'C:\Sistemas\HelpStore\NFe\Temp\'+dmCadastros2.NFe_Faturamentos2NUM_NF.AsString+'.tmp';

    dmCadastros2.NFe_Faturamentos2NFE_XML.SaveToFile(FileXML);

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromFile(FileXML);
    ACBrNFe.Configuracoes.Geral.ModeloDF := moNFe; // moNFe ou moNFCe
    
    // Pegando Versão da NFE  --- Sanniel
    if (ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.Versao = 2) then
      ACBrNFe.Configuracoes.Geral.VersaoDF := ve200   // Versão 3.10
    else
    if (ACBrNFe.NotasFiscais.Items[0].NFe.infNFe.Versao = 3.1) then
      ACBrNFe.Configuracoes.Geral.VersaoDF := ve310;   // Versão 3.10

    if (ACBrNFe.Consultar) then
    begin
      DeleteFile(FileXML);
      if not (ACBrNFe.NotasFiscais.Items[0].Confirmada) then
        Application.MessageBox(Pchar(ACBrNFe.NotasFiscais.Items[0].Msg) ,'Aviso',mb_ok + mb_iconerror)
      else
      begin
        ACBrNFe.NotasFiscais.Imprimir;
        UpdateFAT_NFE_CONSULTA(dmApp.Cnpj,venda,1);
      end;
    end;
    exit;
  end;

  // NF-e 3.10
  ACBRNFE.Configuracoes.Geral.ModeloDF := moNFe; // moNFe ou moNFCe
  ACBRNFE.Configuracoes.Geral.VersaoDF := ve310;   // Versão 3.10
  ACBRNFE.Configuracoes.Geral.PathSchemas := ExtractFilePath(Application.ExeName) + 'Schemas\ve310\';
  with dmApp do
  begin
    if copy(DmApp.NFE_REGIME,1,1) = '1' then
      regime := '1'
    else if copy(DmApp.NFE_REGIME,1,1) = '2' then
      regime := '2'
    else if copy(DmApp.NFE_REGIME,1,1) = '3' then
      regime := '3'
    else
      regime := '1';

    ACBrNFe.NotasFiscais.Clear;
    with ACBrNFe.NotasFiscais.Add.NFe do
    begin
      infNFe.ID := dmCadastros2.NFe_Faturamentos2CODIGO.asString;

      Ide.natOp     := dmCadastros2.NFe_Faturamentos2NATUREZA.value;
      Ide.nNF       := num_nf;
      Ide.cNF       := num_nf;
      Ide.modelo    := 55;
      Ide.serie     := StrToInt(Serie);
      Ide.dEmi      := Date;
      Ide.dSaiEnt   := DataNF;
      Ide.tpAmb     := StrToTpAmb(Ok,IntToStr(StrToInt(DMApp.NFE_WS_AMBIENTE)+1));
      Ide.tpEmis    :=  StrToTpEmis(Ok,IntToStr(StrToInt(DMApp.NFE_GER_FORMA_EMISSAO)+1));

      //Sanniel -- Campo tem que ser preenchido caso operação seja pra fora do estado.
      if DMApp.NFE_EMIT_UF <> dmCadastros2.NFe_Faturamentos2DEST_UF.value then
        Ide.idDest    :=  doInterestadual
      else
        Ide.idDest    := doInterna;

      if (dmCadastros2.NFe_Faturamentos2ES.value = 'S') then
         Ide.tpNF      := tnSaida
      else
         Ide.tpNF      := tnEntrada;

      if (dmCadastros2.NFe_Faturamentos2OUTROS.value = 'S') then
        Ide.indPag    := ipOutras
      else if (dmCadastros2.NFe_Faturamentos2AVISTA.value = 'S') then
        Ide.indPag    := ipVista
      else
        Ide.indPag    := ipPrazo;


      Ide.verProc   := '3.10';
      Ide.cUF       := 50; //mato grosso do sul
      Ide.cMunFG    := StrToInt(DMApp.NFE_EMIT_COD_CIDADE);

      if (dmCadastros2.NFe_Faturamentos_ItensCFOP.AsInteger = 1202) or (dmCadastros2.NFe_Faturamentos_ItensCFOP.AsInteger = 5202) then
        Ide.finNFe    := fnDevolucao
      else
        Ide.finNFe    := fnNormal;


      Emit.CNPJCPF           := DMApp.NFE_EMIT_CNPJ;
      Emit.IE                := DMApp.NFE_EMIT_INSC_ESTADUAL;
      Emit.xNome             := DMApp.NFE_EMIT_RAZAO_SOCIAL;
      Emit.xFant             := DMApp.NFE_EMIT_FANTASIA;
      Emit.EnderEmit.fone    := DMApp.NFE_EMIT_FONE;
      Emit.EnderEmit.CEP     := StrToInt(DMApp.NFE_EMIT_CEP);
      Emit.EnderEmit.xLgr    := DMApp.NFE_EMIT_LOGRADOURO;
      Emit.EnderEmit.nro     := DMApp.NFE_EMIT_NUMERO;
      Emit.EnderEmit.xCpl    := DMApp.NFE_EMIT_COMPLEMENTO;
      Emit.EnderEmit.xBairro := DMApp.NFE_EMIT_BAIRRO;
      Emit.EnderEmit.cMun    := StrToInt(DMApp.NFE_EMIT_COD_CIDADE);
      Emit.EnderEmit.xMun    := DMApp.NFE_EMIT_CIDADE;
      Emit.EnderEmit.UF      := DMApp.NFE_EMIT_UF;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      if regime = '1' then
        Emit.CRT               := crtRegimeNormal
      else if  regime = '2' then
        Emit.CRT               := crtSimplesNacional
      else if  regime = '3' then
        Emit.CRT               := crtSimplesExcessoReceita;

      Emit.IEST              := '';
      Emit.IM                := ''; // Preencher no caso de existir serviços na nota
      Emit.CNAE              := DMApp.NFE_CNAE; // Verifique na cidade do emissor da NFe se é permitido

      //A partir de 01.11.2011 se o ambiente for de homologação não sera mais passado
      //os valores reais do destinatario
     // if (DMApp.NFE_WS_AMBIENTE = '0') then
        Dest.CNPJCPF           := dmCadastros2.NFe_Faturamentos2DEST_CPF_CNPJ.value;
     // else
      //  Dest.CNPJCPF           := '9999999000191';

      if (dmCadastros2.NFe_Faturamentos2DEST_CEP.AsString = '') then
        raise Exception.Create('Defina um CEP para o endereço do destinatário');

      Dest.EnderDest.CEP     := StrToInt(StringReplace(dmCadastros2.NFe_Faturamentos2DEST_CEP.AsString,'-','',[rfReplaceAll]));

      Dest.EnderDest.xLgr    := dmCadastros2.NFe_Faturamentos2DEST_LOGRADOURO.value;

      if (dmCadastros2.NFe_Faturamentos2DEST_NUMERO.AsString = '') then
        raise Exception.Create('Defina um número para o endereço do destinatário');

      Dest.EnderDest.nro     := dmCadastros2.NFe_Faturamentos2DEST_NUMERO.AsString;
      Dest.EnderDest.xCpl    := dmCadastros2.NFe_Faturamentos2DEST_COMPLEMENTO.value ;
      Dest.EnderDest.xBairro := dmCadastros2.NFe_Faturamentos2DEST_BAIRRO.value;
      Dest.EnderDest.cMun    := dmCadastros2.NFe_Faturamentos2DEST_COD_CIDADE.value;
      Dest.EnderDest.xMun    := dmCadastros2.NFe_Faturamentos2DEST_CIDADE.value;
      Dest.EnderDest.UF      := dmCadastros2.NFe_Faturamentos2DEST_UF.value;
      Dest.EnderDest.Fone    := dmCadastros2.NFe_Faturamentos2DEST_FONE.value;

      if (dmCadastros2.NFe_Faturamentos2DEST_IE.AsString = '') and (DMApp.NFE_WS_AMBIENTE = '0') then
        raise Exception.Create('Defina uma Insc. Estadual do destinatário ');

      //A partir de 01.11.2011 se o ambiente for de homologação não sera mais passado
      //os valores reais do destinatario
     // if (DMApp.NFE_WS_AMBIENTE = '0') then
     if (dmCadastros2.NFe_Faturamentos2DEST_IE.value) = 'ISENTO' then
      Dest.indIEDest := inNaoContribuinte
     else
      Dest.IE                := StringReplace(StringReplace(dmCadastros2.NFe_Faturamentos2DEST_IE.value,'.','',[rfReplaceAll]),'-','',[rfReplaceAll]);
     // else
     //   Dest.IE := '';

      Dest.xNome             := dmCadastros2.NFe_Faturamentos2DEST_RAZAO_SOCIAL.value;
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';




      dmCadastros2.NFe_Parcelamentos.Close;
      dmCadastros2.NFe_Parcelamentos.Open;
      dmCadastros2.NFe_Parcelamentos.First;
      NITEM := 1;
      while not dmCadastros2.NFe_Parcelamentos.Eof do
      begin
        if (NITEM = 1) then
        begin
          Cobr.Fat.nFat := dmCadastros2.NFe_ParcelamentosN_FAT.AsString;
          Cobr.Fat.vOrig := dmCadastros2.NFe_ParcelamentosTOTAL_ORIG.AsFloat;
          if dmCadastros2.NFe_Faturamentos_ItensCFOP.AsInteger = 5102 then
          begin
            Cobr.Fat.vDesc := (-1 * dmCadastros2.NFe_ParcelamentosDESC_ACRES.AsFloat);
            Cobr.Fat.vLiq := dmCadastros2.NFe_ParcelamentosTOTAL.AsFloat
          end else
            Cobr.Fat.vLiq := dmCadastros2.NFe_ParcelamentosTOTAL_ORIG.AsFloat;
        end;

        with Cobr.Dup.Add do
        begin
          nDup := dmCadastros2.NFe_ParcelamentosPARCELA.AsString;
          dVenc := dmCadastros2.NFe_ParcelamentosVENCTO.AsDateTime;
          vDup := dmCadastros2.NFe_ParcelamentosVALOR.AsFloat;
        end;
        NITEM := NITEM + 1;
        dmCadastros2.NFe_Parcelamentos.Next;
      end;

      dmCadastros2.NFe_Faturamentos_Itens.Open;
      dmCadastros2.NFe_Faturamentos_Itens.First;
      NITEM := 1;
      while not dmCadastros2.NFe_Faturamentos_Itens.Eof do
      begin
        with Det.Add do
        begin
          infAdProd     := '';
          Prod.nItem    := NITEM;//dmCadastros2.NFe_Faturamentos_ItensNITEM.Value;
          Prod.CFOP     := dmCadastros2.NFe_Faturamentos_ItensCFOP.asString;
          Prod.cProd    := dmCadastros2.NFe_Faturamentos_ItensCPROD.value;
          Prod.xProd    := dmCadastros2.NFe_Faturamentos_ItensCXPRODUTO.value;
          Prod.qCom     := Arredonda(dmCadastros2.NFe_Faturamentos_ItensQCOM.value,2);
          Prod.uCom     := dmCadastros2.NFe_Faturamentos_ItensUCOM.value;
          Prod.vProd    := Arredonda(dmCadastros2.NFe_Faturamentos_ItensVPROD.value,2);
          Prod.vUnCom   := Arredonda(dmCadastros2.NFe_Faturamentos_ItensVUNCOM.value,2);
          Prod.qTrib    := Arredonda(dmCadastros2.NFe_Faturamentos_ItensQTRIB.value,2);
          Prod.uTrib    := dmCadastros2.NFe_Faturamentos_ItensUTRIB.value;
          Prod.vUnTrib  := Arredonda(dmCadastros2.NFe_Faturamentos_ItensVUTRIB.value,2);
          Prod.NCM :=   dmCadastros2.NFe_Faturamentos_ItensCODIGO_NCM.AsString;
          if dmCadastros2.NFe_Faturamentos_ItensCFOP.AsInteger = 5102 then
            Prod.vDesc := Arredonda(dmCadastros2.NFe_Faturamentos_ItensVDESC.value * dmCadastros2.NFe_Faturamentos_ItensQTRIB.value,2);
          
          if (trim(dmCadastros2.NFe_Faturamentos_ItensCOD_GETIN.AsString) <> '') then
          begin
            Prod.cEAN := dmCadastros2.NFe_Faturamentos_ItensCOD_GETIN.AsString;
            Prod.cEANTrib := dmCadastros2.NFe_Faturamentos_ItensCOD_GETIN.AsString;
          end;

          with Imposto  do
          begin
            with ICMS  do
            begin
              if regime = '1' then
              begin

                if (dmCadastros2.NFe_Faturamentos_ItensCST.Value = 'cst00') then
                  CST := cst00
                else if (dmCadastros2.NFe_Faturamentos_ItensCST.Value = 'cst20') then
                  CST := cst20
                else if (dmCadastros2.NFe_Faturamentos_ItensCST.Value = 'cst40') then
                  CST := cst40
                else if (dmCadastros2.NFe_Faturamentos_ItensCST.Value = 'cst41') then
                  CST := cst41
                else if (dmCadastros2.NFe_Faturamentos_ItensCST.Value = 'cst51') then
                  CST := cst51
                else if (dmCadastros2.NFe_Faturamentos_ItensCST.Value = 'cst60') then
                  CST := cst60;
              end
              else
              begin
                //(csosnVazio,csosn101, csosn102, csosn103, csosn201, csosn202, csosn203, csosn300, csosn400, csosn500,csosn900 )
                if (dmCadastros2.NFe_Faturamentos_ItensCSOSN.Value = 101) then
                  CSOSN := csosn101
                else if (dmCadastros2.NFe_Faturamentos_ItensCSOSN.Value = 102) then
                  CSOSN := csosn102
                else if (dmCadastros2.NFe_Faturamentos_ItensCSOSN.Value = 103) then
                  CSOSN := csosn103
                else if (dmCadastros2.NFe_Faturamentos_ItensCSOSN.Value = 201) then
                  CSOSN := csosn201
                else if (dmCadastros2.NFe_Faturamentos_ItensCSOSN.Value = 202) then
                  CSOSN := csosn202
                else if (dmCadastros2.NFe_Faturamentos_ItensCSOSN.Value = 203) then
                  CSOSN := csosn203
                else if (dmCadastros2.NFe_Faturamentos_ItensCSOSN.Value = 300) then
                  CSOSN := csosn300
                else if (dmCadastros2.NFe_Faturamentos_ItensCSOSN.Value = 400) then
                  CSOSN := csosn400
                else if (dmCadastros2.NFe_Faturamentos_ItensCSOSN.Value = 900) then
                  CSOSN := csosn900;
              end;


              if (dmCadastros2.NFe_Faturamentos_ItensTRIB_MODALIDADE.value = 'Margem Valor Agregado (%).') then
                ICMS.modBC  := dbiMargemValorAgregado
              else if (dmCadastros2.NFe_Faturamentos_ItensTRIB_MODALIDADE.value = 'Pauta (Valor).') then
                ICMS.modBC  := dbiPauta
              else if (dmCadastros2.NFe_Faturamentos_ItensTRIB_MODALIDADE.value = 'Preço Tabelado Máx. (Valor).') then
                ICMS.modBC  := dbiPrecoTabelado
              else if (dmCadastros2.NFe_Faturamentos_ItensTRIB_MODALIDADE.value = 'Valor da operação.') then
                ICMS.modBC  := dbiValorOperacao;

              if (DmApp.NFE_DESTACA_ICMS_SUB = 'S') then
              begin
                ICMS.pICMSST  := Arredonda(dmCadastros2.NFe_Faturamentos_ItensPICMS_SUB.value,2);
                ICMS.vICMSST  := Arredonda(dmCadastros2.NFe_Faturamentos_ItensVICMS_SUB.Value,2);
                ICMS.vBCST    := Arredonda(dmCadastros2.NFe_Faturamentos_ItensVBC_SUB.value,2);
              end;

              ICMS.pICMS  := Arredonda(dmCadastros2.NFe_Faturamentos_ItensPICMS.value,2);
              ICMS.vICMS  := Arredonda(dmCadastros2.NFe_Faturamentos_ItensVICMS.Value,2);
              ICMS.vBC    := Arredonda(dmCadastros2.NFe_Faturamentos_ItensVBC.value,2);
            end;

            {IPI.CST := StrToCSTIPI(false,Pchar(dmCadastros2.NFe_Faturamentos_ItensTRIB_IPI.AsString));
            PIS.CST := StrToCSTPIS(false,Pchar(dmCadastros2.NFe_Faturamentos_ItensTRIB_PIS.AsString));
            COFINS.CST := StrToCSTCOFINS(false,Pchar(dmCadastros2.NFe_Faturamentos_ItensTRIB_COFINS.AsString));
            {
             TpcnCstIpi = (ipi00, ipi49, ipi50, ipi99, ipi01, ipi02, ipi03, ipi04, ipi05, ipi51, ipi52, ipi53, ipi54, ipi55);
             TpcnCstPis = (pis01, pis02, pis03, pis04, pis06, pis07, pis08, pis09, pis99);
             TpcnCstCofins = (cof01, cof02, cof03, cof04, cof06, cof07, cof08, cof09, cof99);
            }

            {suspensao - Frig. Sao luiz}
            PIS.CST := pis09;
            COFINS.CST := cof09;
          end;
        end;
        NITEM := NITEM + 1;
        dmCadastros2.NFe_Faturamentos_Itens.Next;
      end;

      Total.ICMSTot.vBC   := Arredonda(dmCadastros2.NFe_Faturamentos2BASE_ICM.value,2);
      Total.ICMSTot.vICMS := Arredonda(dmCadastros2.NFe_Faturamentos2ICM.value,2);

      if dmCadastros2.NFe_Faturamentos_ItensCFOP.AsInteger = 5102 then
      begin
        if (dmCadastros2.NFe_Faturamentos2DESC_ACRESC.value < 0) then
          Total.ICMSTot.vDesc := (-1 * Arredonda(dmCadastros2.NFe_Faturamentos2DESC_ACRESC.value,2))
        else
          Total.ICMSTot.vDesc := Arredonda(dmCadastros2.NFe_Faturamentos2DESC_ACRESC.value,2);
      end;

      if (DmApp.NFE_DESTACA_ICMS_SUB = 'S') then
      begin
        Total.ICMSTot.vBCST   := Arredonda(dmCadastros2.NFe_Faturamentos2BASE_ICM_SUBST.value,2);
        Total.ICMSTot.vST   := Arredonda(dmCadastros2.NFe_Faturamentos2VALOR_ICM_SUBST.value,2);
      end;

      if dmCadastros2.NFe_Faturamentos_ItensCFOP.AsInteger = 5102 then
        Total.ICMSTot.vNF   := Arredonda(dmCadastros2.NFe_Faturamentos2TOTAL_NF.value,2)
      else
        Total.ICMSTot.vNF   := Arredonda(dmCadastros2.NFe_Faturamentos2TOTAL.value,2);
        
      Total.ICMSTot.vProd := Arredonda(dmCadastros2.NFe_Faturamentos2TOTAL.value,2);

     // InfAdic.infCpl := dmCadastros2.NFe_Faturamentos2OBSERVACAO.Value;
      InfAdic.infCpl := dmCadastros2.NFe_Faturamentos2MSG_FISCAL.AsString;

      if (dmCadastros2.NFe_Faturamentos2PGTO_FRETE.value = '1') then
        Transp.modFrete := mfContaEmitente
      else
        Transp.modFrete := mfContaDestinatario;

      if (dmCadastros2.NFe_Faturamentos2TRP_NOME.value <> '') then
      begin
        Transp.Transporta.xNome := dmCadastros2.NFe_Faturamentos2TRP_NOME.value;

        if (dmCadastros2.NFe_Faturamentos2TRP_CPF_CNPJ.value <> '') then
          Transp.Transporta.CNPJCPF := dmCadastros2.NFe_Faturamentos2TRP_CPF_CNPJ.value;

        if (dmCadastros2.NFe_Faturamentos2TRP_CIDADE.value <> '') then
          Transp.Transporta.xMun := dmCadastros2.NFe_Faturamentos2TRP_CIDADE.AsString;

        if (dmCadastros2.NFe_Faturamentos2TRP_UF.value <> '') then
          Transp.Transporta.UF := dmCadastros2.NFe_Faturamentos2TRP_UF.value;
      end
      else if (dmCadastros2.NFe_Faturamentos2TRP_MOTORISTA.value <> '') then
      begin
        Transp.Transporta.xNome :=  dmCadastros2.NFe_Faturamentos2TRP_MOTORISTA.value;

        if (dmCadastros2.NFe_Faturamentos2TRP_CPF_CNPJ2.value <> '') then
          Transp.Transporta.CNPJCPF := dmCadastros2.NFe_Faturamentos2TRP_CPF_CNPJ2.value;

        if (dmCadastros2.NFe_Faturamentos2TRP_CIDADE2.value <> '') then
          Transp.Transporta.xMun := dmCadastros2.NFe_Faturamentos2TRP_CIDADE2.AsString;

        if (dmCadastros2.NFe_Faturamentos2TRP_UF_PLACA.value <> '') then
          Transp.Transporta.UF := dmCadastros2.NFe_Faturamentos2TRP_UF_PLACA.value;
      end;

      if (dmCadastros2.NFe_Faturamentos2TRP_IE.value <> '') then
        Transp.Transporta.IE := dmCadastros2.NFe_Faturamentos2TRP_IE.AsString;

      if (dmCadastros2.NFe_Faturamentos2TRP_PLACA.Value <> '') then
          Transp.veicTransp.placa := stringReplace(dmCadastros2.NFe_Faturamentos2TRP_PLACA.Value,'-','',[rfReplaceAll]);

      if (dmCadastros2.NFe_Faturamentos2TRP_UF_PLACA.Value <> '') then
          Transp.veicTransp.UF := dmCadastros2.NFe_Faturamentos2TRP_UF_PLACA.Value ;


     { if (dmCadastros2.NFe_Faturamentos2TRP_PESO_BRUTO.Value > 0 ) then
          Transp.Peso_Bruto  := dmCadastros2.NFe_Faturamentos2TRP_PESO_BRUTO.AsFloat;

      if (dmCadastros2.NFe_Faturamentos2TRP_PESO_LIQUIDO.Value > 0 ) then
          Transp.Transporta.Peso_Liquido  := dmCadastros2.NFe_Faturamentos2TRP_PESO_LIQUIDO.AsFloat;

      if (dmCadastros2.NFe_Faturamentos2TRP_QTDE.Value > 0 ) then
          Transp.Transporta.QTDE  := dmCadastros2.NFe_Faturamentos2TRP_QTDE.AsFloat;

      if (dmCadastros2.NFe_Faturamentos2TRP_ESPECIE.Value <> '' ) then
          Transp.Transporta.Especie  := dmCadastros2.NFe_Faturamentos2TRP_ESPECIE.AsString;}

    end;

    if (StrToTpEmis(Ok,IntToStr(StrToInt(DMApp.NFE_GER_FORMA_EMISSAO)+1)) = teNormal) then
    begin
      ACBrNFe.NotasFiscais.Valida;
      ACBrNFe.NotasFiscais.Items[0].SaveToFile;
      //Salvando somente para armazenar o xml também no banco com status '3' - Pendente
      UpdateFAT_NFE(dmApp.Cnpj,venda,3);
      dmApp.Transaction.CommitRetaining;

      ACBrNFe.Enviar(0);
      //Salvando dados completos, chave, protocolo, XML etc..
      UpdateFAT_NFE(dmApp.Cnpj,venda,1);
    end
    else if (StrToTpEmis(Ok,IntToStr(StrToInt(DMApp.NFE_GER_FORMA_EMISSAO)+1))=teDPEC) then
    begin
      ACBrNFe.WebServices.EnviarDPEC.Executar;
      //protocolo de envio ao DPEC e impressão do DANFE
      ACBrNFe.DANFE.ProtocoloNFe:= ACBrNFe.WebServices.EnviarDPEC.nRegDPEC+' '+
                                    DateTimeToStr(ACBrNFe.WebServices.EnviarDPEC.DhRegDPEC);
      ACBrNFe.NotasFiscais.Imprimir;

      dmCadastros2.UPDNFeVendas.parambyname('cnpj').value := dmApp.cnpj;
      dmCadastros2.UPDNFeVendas.parambyname('venda').value := venda;
      dmCadastros2.UPDNFeVendas.parambyname('NFE_CHAVE').value := ACBrNFe.WebServices.Retorno.ChaveNFe;
      dmCadastros2.UPDNFeVendas.parambyname('NFE_PROTOCOLO').value := '0';
      dmCadastros2.UPDNFeVendas.parambyname('NFE_RECIBO').value := ACBrNFe.WebServices.EnviarDPEC.nRegDPEC;
      dmCadastros2.UPDNFeVendas.parambyname('NFE_XML').value := ACBrNFe.NotasFiscais.Items[0].XML;
      dmCadastros2.UPDNFeVendas.parambyname('NFE_NUMERO').value := inttostr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF);
      dmCadastros2.UPDNFeVendas.parambyname('NFE_AUTORIZADA').value := 4;
      dmCadastros2.UPDNFeVendas.ExecQuery;
    end;


   // MemoResp.Lines.Text := UTF8Encode(ACBrNFe.WebServices.Retorno.RetWS);
   // LoadXML(MemoResp, WBResposta);

     ACBrNFe.NotasFiscais.Clear;
  end
end;

procedure TDmApp.UpdateFAT_NFE(cnpj: string; venda, Status: integer);
begin
  with dmApp do
  begin
    dmCadastros2.UPDNFeVendas.parambyname('cnpj').value := dmApp.cnpj;
    dmCadastros2.UPDNFeVendas.parambyname('venda').value := venda;
    dmCadastros2.UPDNFeVendas.parambyname('NFE_CHAVE').value := ACBrNFe.WebServices.Retorno.ChaveNFe;
    dmCadastros2.UPDNFeVendas.parambyname('nfe_protocolo').value := ACBrNFe.WebServices.Retorno.Protocolo;
    dmCadastros2.UPDNFeVendas.parambyname('NFE_RECIBO').value := ACBrNFe.WebServices.Retorno.Recibo;
    dmCadastros2.UPDNFeVendas.parambyname('NFE_XML').value := ACBrNFe.NotasFiscais.Items[0].XML;
    dmCadastros2.UPDNFeVendas.parambyname('NFE_NUMERO').value := inttostr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF);
    dmCadastros2.UPDNFeVendas.parambyname('NFE_AUTORIZADA').value := status;
    dmCadastros2.UPDNFeVendas.ExecQuery;
  end;
end;

procedure TDmApp.ConsultaNFe(cnpj: string; venda: integer);
var
   vAux,FileXML : String;
   ok :boolean;
begin
  dmCadastros2.NFe_Faturamentos2.Close;
  dmCadastros2.NFe_Faturamentos2.ParambyName('cnpj').value := cnpj;
  dmCadastros2.NFe_Faturamentos2.ParambyName('venda').value := venda;
  dmCadastros2.NFe_Faturamentos2.Open;

  //Nota Já foi emitida basta, reimprimir
  if (dmCadastros2.NFe_Faturamentos2NFE_CHAVE.AsString <> '') then
  begin
    if not(DirectoryExists('C:\Sistemas\HelpStore\NFe\Temp\')) then
      CreateDir('C:\Sistemas\HelpStore\NFe\Temp\');

    FileXML := 'C:\Sistemas\HelpStore\NFe\Temp'+dmCadastros2.NFe_Faturamentos2NUM_NF.AsString+'.tmp';

    dmCadastros2.NFe_Faturamentos2NFE_XML.SaveToFile(FileXML);

    ACBrNFe.NotasFiscais.Clear;
    ACBrNFe.NotasFiscais.LoadFromFile(FileXML);
    ACBrNFe.Consultar;
    ACBrNFe.NotasFiscais.Imprimir;
    exit;
  end;
end;

procedure TDmApp.UpdateFAT_NFE_CONSULTA(cnpj: string; venda,
  status: integer);
begin
  with dmApp do
  begin
    dmCadastros2.UPDNFeVendas.parambyname('cnpj').value := dmApp.cnpj;
    dmCadastros2.UPDNFeVendas.parambyname('venda').value := venda;
    dmCadastros2.UPDNFeVendas.parambyname('NFE_CHAVE').value := ACBrNFe.WebServices.Consulta.NFeChave;
    dmCadastros2.UPDNFeVendas.parambyname('nfe_protocolo').value := ACBrNFe.WebServices.Consulta.Protocolo;
    dmCadastros2.UPDNFeVendas.parambyname('NFE_RECIBO').value := '';
    dmCadastros2.UPDNFeVendas.parambyname('NFE_XML').value := ACBrNFe.NotasFiscais.Items[0].XML;
    dmCadastros2.UPDNFeVendas.parambyname('NFE_AUTORIZADA').value := status;
    dmCadastros2.UPDNFeVendas.parambyname('NFE_NUMERO').value := inttostr(ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF);
    dmCadastros2.UPDNFeVendas.ExecQuery;
  end;
end;


procedure TDmApp.BCH_SYNC_CLIENTE(cliente: integer);
var
  codigo : integer;
begin
  {try

    BCH_CLIENTE.Close;
    BCH_CLIENTE.ParamByName('codigo').value := cliente;
    BCH_CLIENTE.ParamByName('cnpj').value := dmApp.Cnpj;
    BCH_CLIENTE.Open;

    ADOConsultaCliente.Close;
    ADOConsultaCliente.Parameters[0].Value := BCH_CLIENTECODIGO.Value;
    ADOConsultaCliente.Open;

    if (ADOConsultaClienteCODCLI.AsString = '') then
    begin
      INSERTCLIENTE.Open;
      INSERTCLIENTE.Append;
      INSERTCLIENTECODCLI.Value := BCH_CLIENTECODIGO.AsInteger;
      INSERTCLIENTEDIGCLI.value := 0;
      INSERTCLIENTENOMCLI.Value := BCH_CLIENTENOME_RAZAO.AsString;
      if (SoNumeros(BCH_CLIENTECPF_CGC.value) <> '') then
        INSERTCLIENTECGCCPF.Value := StrToFloat(SoNumeros(BCH_CLIENTECPF_CGC.value))
      else
        INSERTCLIENTECGCCPF.Value := 0;

      INSERTCLIENTEENDERECO.Value := BCH_CLIENTELOGRADOURO.AsString;
      INSERTCLIENTEBAIRRO.Value := copy(BCH_CLIENTEBAIRRO.AsString,1,40);
      INSERTCLIENTECIDADE.Value := BCH_CLIENTECIDADE.AsString;
      INSERTCLIENTEESTADO.Value := BCH_CLIENTEUF.AsString;
      INSERTCLIENTECEP.Value := strToInt(SoNumeros(BCH_CLIENTECEP.AsString));
      if (SoNumeros(BCH_CLIENTENUMERO.AsString) <> '') then
        INSERTCLIENTENUMERO.Value := StrToInt(SoNumeros(BCH_CLIENTENUMERO.AsString))
      else
        INSERTCLIENTENUMERO.Value :=0;
      INSERTCLIENTESTATUS.value := 1;
      INSERTCLIENTESENHA.value := '123456';
      INSERTCLIENTEVLLIMCRE.value := 0;
      INSERTCLIENTECODTABDESC.value := 0;
      INSERTCLIENTENRDIASCARENCIA.value := 0;
      INSERTCLIENTECODGRPECON.value := 0;
      INSERTCLIENTEFONE.value := '';
      INSERTCLIENTEDDD.value := '';
      INSERTCLIENTE.Post;
    end
    else
    begin
      INSERTCLIENTE.Close;
      INSERTCLIENTE.Filtered := False;
      INSERTCLIENTE.Filter := '(CODCLI = '+BCH_CLIENTECODIGO.AsString+')';
      INSERTCLIENTE.Filtered := True;
      INSERTCLIENTE.Open;
      INSERTCLIENTE.Edit;
      INSERTCLIENTECODCLI.Value := BCH_CLIENTECODIGO.AsInteger;
      INSERTCLIENTEDIGCLI.value := 0;
      INSERTCLIENTENOMCLI.Value := BCH_CLIENTENOME_RAZAO.AsString;
      if (SoNumeros(BCH_CLIENTECPF_CGC.value) <> '') then
        INSERTCLIENTECGCCPF.Value := StrToFloat(SoNumeros(BCH_CLIENTECPF_CGC.value))
      else
        INSERTCLIENTECGCCPF.Value := 0;

      INSERTCLIENTEENDERECO.Value := BCH_CLIENTELOGRADOURO.AsString;
      INSERTCLIENTEBAIRRO.Value := copy(BCH_CLIENTEBAIRRO.AsString,1,40);
      INSERTCLIENTECIDADE.Value := BCH_CLIENTECIDADE.AsString;
      INSERTCLIENTEESTADO.Value := BCH_CLIENTEUF.AsString;
      INSERTCLIENTECEP.Value := strToInt(SoNumeros(BCH_CLIENTECEP.AsString));
      if (SoNumeros(BCH_CLIENTENUMERO.AsString) <> '') then
        INSERTCLIENTENUMERO.Value := StrToInt(SoNumeros(BCH_CLIENTENUMERO.AsString))
      else
        INSERTCLIENTENUMERO.Value :=0;

      INSERTCLIENTE.Post;
    end;

    INSERTCLIENTE.Close;
  Except
     On E:Exception Do
     Begin
       MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
     End;
  end }
end;

procedure TDmApp.BCH_SYNC_PRODUTO(produto: string);
var
  codigo : integer;
begin
  {try

    BCH_PRODUTO.Close;
    BCH_PRODUTO.ParamByName('codigo').value := produto;
    BCH_PRODUTO.ParamByName('cnpj').value := dmApp.Cnpj;
    BCH_PRODUTO.Open;

    ADOConsultaProduto.Close;
    ADOConsultaProduto.Parameters[0].Value := BCH_PRODUTOBCH_CODIGO.Value;
    ADOConsultaProduto.Open;

    if (ADOConsultaProdutoCODPROD.AsString = '') then
    begin
      INSERTPRODUTO.Open;
      INSERTCODBARRA.Open;
      INSERTPRECO.Open;

      INSERTPRODUTO.Append;
      INSERTPRODUTOCODPROD.Value := BCH_PRODUTOBCH_CODIGO.AsInteger;
      INSERTPRODUTOPRECO.Value := BCH_PRODUTOPRC_VENDA.value;
      INSERTPRODUTODIGPROD.Value := 0;
      INSERTPRODUTODESCRICAO.Value := copy(BCH_PRODUTOCODIGO.value,1,15)+'-'+copy(BCH_PRODUTONOME.value,1,30);
      INSERTPRODUTODESCRESUMIDA.Value := copy(BCH_PRODUTONOME.value,1,40);
      INSERTPRODUTOCTF.Value := 0;
      INSERTPRODUTOALIQICMS.Value := 17;
      INSERTPRODUTOFLNRSERIE.Value := 'S';
      INSERTPRODUTONIVELPROD1.Value := 0;
      INSERTPRODUTOFLCORINGA.Value := 'N';
      INSERTPRODUTOFLCONTROLADO.Value := 'N';
      INSERTPRODUTOTIPOPROCESSO.Value := 0;
      INSERTPRODUTOFLSERVICO.Value := 'N';
      INSERTPRODUTOFLPROMOCAO.Value := 'S';
      INSERTPRODUTOCMUP.Value := 0;
      INSERTPRODUTOFOTO.Value := 'N';
      INSERTPRODUTOQTEMBMOVIM.Value := 0;
      INSERTPRODUTOFLTERCEIRO.Value := 'N';
      INSERTPRODUTOFLCOMISSAO.Value := 'S';
      INSERTPRODUTOCOMISSAO.Value := 0;
      INSERTPRODUTOPMARGINF.Value := 0;
      INSERTPRODUTOCODEMBAL.Value := 0;
      INSERTPRODUTOFLSELFCOLOR.Value := 'N';
      INSERTPRODUTOPDESCPROM.Value := 0;
      INSERTPRODUTODESCAUTOITEM.Value := 0;
      INSERTPRODUTOCODFORNE.Value := 0;
      INSERTPRODUTOCOR.Value := 'S';
      INSERTPRODUTOESPECIFICACAO.Value := 'N';
      INSERTPRODUTOUNIDMAIOR.Value := 'S';
      INSERTPRODUTOUNIDMENOR.Value := 'S';
      INSERTPRODUTOQTEMB.Value := 1;
      INSERTPRODUTOCODPRODDF.Value := '0';
      INSERTPRODUTOCODFAM.Value := 0;
      INSERTPRODUTOFLMONTAGEM.Value := 'N';
      INSERTPRODUTOQTEMBMOVIMVENDA.Value := 1;
      INSERTPRODUTOCODPRODVASILHAME.Value := 0;
      INSERTPRODUTOFLREDUDIFER.Value := 'N';
      INSERTPRODUTOCODOCORRPRECO.Value := 'N';
      INSERTPRODUTOCONVERSAO.Value := 1;
      INSERTPRODUTOFLLOTEVENCTO.Value := 'N';
      INSERTPRODUTOFLREPI.Value := 'S';
      INSERTPRODUTOFLESTDIR.Value := 'S';
      INSERTPRODUTOFLNRSIMCARD.Value := 'S';
      INSERTPRODUTOPRECOREF.Value := 0;
      INSERTPRODUTOFLCARTAOESPECIAL.Value := '0';
      INSERTPRODUTOFLCUPOMEXTRA.Value := '0';
      INSERTPRODUTOFLVALEPRESENTE.Value := '0';
      INSERTPRODUTOFLPRODDEFRESALIQIPIECF.Value := '0';
      INSERTPRODUTOLOGICO.Value := 0;
      INSERTPRODUTOTPITEM.Value := 1;
      INSERTPRODUTO.Post;

      INSERTCODBARRA.Append;
      INSERTCODBARRACODBARRA.VALUE := StrToFloat(SoNumeros(BCH_PRODUTOCODIGO.AsString));
      INSERTCODBARRACODEMBAL.VALUE := 1;
      INSERTCODBARRACODPROD.VALUE := BCH_PRODUTOBCH_CODIGO.Value;
      INSERTCODBARRASTATUS.VALUE := 1;
      INSERTCODBARRAQTEMB.VALUE := 1;
      INSERTCODBARRAFATOR.VALUE := 1;
      INSERTCODBARRACONVERSAO.VALUE := 1;
      INSERTCODBARRA.Post;

      INSERTPRECO.Append;
      INSERTPRECOCODPROD.VALUE := BCH_PRODUTOBCH_CODIGO.Value;
      INSERTPRECOPRECO.VALUE := BCH_PRODUTOPRC_VENDA.Value;
      INSERTPRECOFILIAL.Value := 1;
      INSERTPRECO.Post;
    end
    else
    begin
      INSERTPRODUTO.Close;
      INSERTPRODUTO.Filtered := False;
      INSERTPRODUTO.Filter := '(CODPROD = '+BCH_PRODUTOBCH_CODIGO.AsString+')';
      INSERTPRODUTO.Filtered := True;
      INSERTPRODUTO.Open;
      INSERTPRODUTO.Edit;
      INSERTPRODUTOPRECO.Value := BCH_PRODUTOPRC_VENDA.value;
      INSERTPRODUTODESCRICAO.Value := BCH_PRODUTONOME.value;
      INSERTPRODUTODESCRESUMIDA.Value := copy(BCH_PRODUTONOME.value,1,40);
      INSERTPRODUTO.Post;

      INSERTPRECO.Close;
      INSERTPRECO.Filtered := False;
      INSERTPRECO.Filter := '(CODPROD = '+BCH_PRODUTOBCH_CODIGO.AsString+')';
      INSERTPRECO.Filtered := True;
      INSERTPRECO.Open;

      INSERTPRECO.Edit;
      INSERTPRECOPRECO.Value := BCH_PRODUTOPRC_VENDA.value;
      INSERTPRECO.Post;
    end;

    INSERTPRODUTO.Close;
    INSERTCODBARRA.Close;
    INSERTPRECO.Close;
  Except
     On E:Exception Do
     Begin
       MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
     End;
  end }
end;

procedure TDmApp.ConfigurarRelatorio(Report:TppReport;Designer:TppDesigner;Relatorio:String);
var
  StreamRel : TStringStream;
begin
  with dmCadastros2 do
  begin
    CONFIG_REL_GRAFICO.close;
    CONFIG_REL_GRAFICO.parambyname('relatorio').value := Relatorio;
    CONFIG_REL_GRAFICO.Open;

    if (CONFIG_REL_GRAFICOID.AsInteger = 0) then
    begin
      CONFIG_REL_GRAFICO.Open;
      CONFIG_REL_GRAFICO.Insert;
      CONFIG_REL_GRAFICOCNPJ.value := dmApp.cnpj;
      CONFIG_REL_GRAFICORELATORIO.Value := Relatorio;

      StreamRel := TStringStream.Create('');
      Report.Template.SaveToStream(StreamRel);
      CONFIG_REL_GRAFICOCONFIG.LoadFromStream(StreamRel);
      CONFIG_REL_GRAFICO.Post;
      StreamRel.Free;
    end;

    Report.Template.DatabaseSettings.Name := Relatorio;
    Report.Template.LoadFromDatabase;
    Designer.Show;
    CONFIG_REL_GRAFICO.edit;

    CONFIG_REL_GRAFICO.Transaction.CommitRetaining;
  end;
end;

function EnviaEmailEstoque(P: Pointer): LongInt;
begin
  try
    with FRelEstoqueMaxMin2 do
    begin
      VerificaTemplate;
      CarregaTemplateBD;
      SetaCabecalho;
      TppSMTPPlugIn.RegisterClass(TppSMTPIndy);


      Report.EmailSettings.FromAddress := DmApp.EST_MIN_CONTA_EMAIL_ENVIO;
      Report.EmailSettings.Recipients.Add(DmApp.EST_MIN_DESTINOS_EMAIL_ENVIO);
      Report.EmailSettings.Subject := 'Atenção: Aviso de Estoque Mínimo';
      Report.EmailSettings.ShowEmailDialog := false;
      Report.EmailSettings.HostAddress := DmApp.EST_MIN_SMTP_EMAIL_ENVIO;
      Report.EmailSettings.UserName := DmApp.EST_MIN_LOGIN_EMAIL_ENVIO;
      Report.EmailSettings.Password := DmApp.EST_MIN_PASSWORD_EMAIL_ENVIO;
      Report.EmailSettings.PreviewInEmailClient := False;

      Report.EmailSettings.Body.Text := 'Existem produtos no estoque com quantidades abaixo '+#13+
                                        ' do valor mínimo configurado. Veja o relatório em anexo';

      Report.SendMail;
    end;
   // ExecSql2('update est_email_posicao_estoque e set e.status = ''S''',nil,nil);
  except
    On E:Exception Do
    begin
          MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
    end;
  end;
end;

procedure TDmApp.TimerConsultaEstoqueTimer(Sender: TObject);
var
  Data : TDate;
  Envia : boolean;
  hThreadID :THandle;
  ThreadID :DWord;
begin
  if (Perfil_ComputadorEST_MIN_ENVIA_AUTOMATICO.Value <> 'S') then
    exit;

  Envia := false;
  if FRelEstoqueMaxMin2 = nil then
     FRelEstoqueMaxMin2 := TFRelEstoqueMaxMin2.Create(FRelEstoqueMaxMin2);

   with FRelEstoqueMaxMin2 do
   begin
    qryRelatorio.close;
    qryRelatorio.ParamByName('cnpj').value := dmapp.cnpj;
    qryRelatorio.ParamByName('tipo').value := 1;
    qryRelatorio.ParamByName('fornecedor').value := 0;
    qryRelatorio.ParamByName('tipo_calc').value := 'S';//simples
    qryRelatorio.ParamByName('marca').value := 0;
    qryRelatorio.ParamByName('loc1').value := 0;
    qryRelatorio.ParamByName('loc2').value := 0;
    qryRelatorio.ParamByName('loc3').value := 0;
    qryRelatorio.Open;
    qryRelatorio.FetchAll;

    if qryRelatorio.RecordCount = 0 then
       exit;

    Data := dmApp.Data_Servidor;
    qryRelatorio.First;
    while not qryRelatorio.eof do
    begin
      EST_EMAIL_POSICAO_ESTOQUE.Close;
      EST_EMAIL_POSICAO_ESTOQUE.ParamByName('cnpj').value := dmapp.cnpj;
      EST_EMAIL_POSICAO_ESTOQUE.ParamByName('produto').value := qryRelatorioPRD_CODIGO.Value;
      EST_EMAIL_POSICAO_ESTOQUE.ParamByName('data').AsDate := Data;
      EST_EMAIL_POSICAO_ESTOQUE.Open;

      EST_EMAIL_POSICAO_ESTOQUE.FetchAll;

      if EST_EMAIL_POSICAO_ESTOQUE.RecordCount = 0 then
      begin
        QryContCotacoes.Close;
        QryContCotacoes.ParamByName('produto').value := qryRelatorioPRD_CODIGO.Value;
        QryContCotacoes.Open;

        if QryContCotacoesCOUNT.value = 0 then
        begin
          EST_EMAIL_POSICAO_ESTOQUE.Append;
          EST_EMAIL_POSICAO_ESTOQUECNPJ.Value := dmApp.cnpj;
          EST_EMAIL_POSICAO_ESTOQUEPRODUTO.Value := qryRelatorioPRD_CODIGO.Value;
          EST_EMAIL_POSICAO_ESTOQUEQTDE.Value := qryRelatorioPRD_ESTOQUE.Value;
          EST_EMAIL_POSICAO_ESTOQUEMINIMO.Value := qryRelatorioPRD_MIN.Value;
          EST_EMAIL_POSICAO_ESTOQUEMAXIMO.Value := qryRelatorioPRD_MAX.Value;
          EST_EMAIL_POSICAO_ESTOQUESUJESTAO.Value := qryRelatorioSUJ_COMPRA_MAX.Value;
          EST_EMAIL_POSICAO_ESTOQUEDATA.Value := Data;
          EST_EMAIL_POSICAO_ESTOQUESTATUS.Value := 'A';
          EST_EMAIL_POSICAO_ESTOQUE.Post;
          envia := true;
        end;
      end;
      qryRelatorio.next;
    end;
    EST_EMAIL_POSICAO_ESTOQUE.transaction.CommitRetaining;
   end;
   if (Envia) then
     hThreadID := CreateThread(nil, 0, @EnviaEmailEstoque, nil, 0, ThreadID);
end;



function TDmApp.VerificaTipoDoctoBoleto(Sigla: String): boolean;
var
  Boleto : Variant;
begin
  Boleto :=  RetornaValor('SELECT coalesce(tp.blt,''N'') FROM GLO_TIPOS_DOCTO tp  WHERE tp.CNPJ = '+QuotedStr(DmApp.cnpj)+' and tp.sigla = '+QuotedStr(Sigla));
  result := (VarToStr(Boleto)='S');
end;

procedure TDmApp.Save(ADefaultExt, AFilter, AFileName: String;Grid :TcxGrid);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
     ExportGridToExcel(aFileName,Grid);
  end;
end;


function TDmApp.ManFilterGrid(GridTV: TcxGridDBBandedTableView;
  sFile: String; Save: Boolean): boolean;
var
  AFilterControl: TcxFilterControl;
  Diretorio : sTRING;
begin
  Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
  if not DirectoryExists(Diretorio) then
  begin
    ForceDirectories(Diretorio);
    MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
  end;

  AFilterControl := TcxFilterControl.Create(Self);
  AFilterControl.LinkComponent := GridTV;
  //Salvando o filtro
  if (save) then
  begin
   AFilterControl.SaveToFile(sFile);
   AFilterControl.ApplyFilter;
  end
  else if fileExists(sFile) then //Carregando
  begin
    AFilterControl.LoadFromFile(sFile);
    AFilterControl.ApplyFilter;
    GridTV.DataController.Filter.Active := True;
  end;
  AFilterControl.Free;
end;

procedure TDmApp.InsereTitulos(ContaCorrente:Integer;DtVencto : TDate = 0;Trans:TIBTransaction=nil);
var
  Digito, sNumero : Integer;
  Nome, Mensagem : String;
  vNossoNumero : Variant;
  Titulo    : TACBrTitulo;
  sTrans: TIBTransaction;
begin
  try
      if Trans = nil then
      begin
        sTrans := TransactionAux;
        sTrans.StartTransaction;
      end
      else
        sTrans := Trans;

      sNumero       := qryGerarTitulosBLT_BANCO.AsInteger;
      Mensagem := qryGerarTitulosBLT_INSTRUCAO.Value;
      //Limpando Buffer de Boletos
      ACBrBoleto.ListadeBoletos.Clear;
      ACBrBoletoFCFortes.NumCopias := qryGerarTitulosBLT_NUM_COPIAS.AsInteger;

      if (qryGerarTitulosBLT_LAYOUT_IMPRESSAO.value = '1') then
         ACBrBoletoFCFortes.LayOut := lPadrao
      else if (qryGerarTitulosBLT_LAYOUT_IMPRESSAO.value = '2') then
         ACBrBoletoFCFortes.LayOut := lCarne
      else
         ACBrBoletoFCFortes.LayOut := lFatura;

      with ACBrBoleto.Banco do
      begin
         Nome         := qryGerarTitulosBLT_NOME_BANCO.asString;
         Numero       := qryGerarTitulosBLT_BANCO.AsInteger;

         case sNumero of
            237           : begin
                              TipoCobranca := cobBradesco;
                          //    Digito       := 2;
                            end;
            1             : begin
                              TipoCobranca := cobBancoDoBrasil;
                           //   Digito       := 9;
                            end;
            341           : begin
                              TipoCobranca := cobItau;
                          //    Digito       := 7;
                            end;
            748           : begin
                              TipoCobranca := cobSicred;
                            //  Digito       := 10;
                            end;
            104           : begin
                              TipoCobranca := cobCaixaEconomica;
                           //   Digito       := 9;
                            end;
            756           : begin  //sicoob
                              TipoCobranca := cobBancoob;
                           //   Digito       := 0;
                            end;
            33,53,008     : begin
                              TipoCobranca := cobSantander;
                            //   Digito       := 7;
                            end;
         else
            TipoCobranca := cobNenhum;
         end;
      end;

      with ACBrBoleto.Cedente do
      begin
         CNPJCPF := qryGerarTitulosCED_CPF_CGC.asstring;
         TipoInscricao := pJuridica;
         Nome := qryGerarTitulosCED_NOME.asstring;

         Agencia         := qryGerarTitulosBLT_AGENCIA.asString;
         AgenciaDigito := qryGerarTitulosBLT_DIG_AGENCIA.asString;
         Conta := qryGerarTitulosBLT_CONTA.asString;
         ContaDigito := qryGerarTitulosBLT_DIG_CONTA.asString;
         CodigoCedente :=  qryGerarTitulosCED_CODIGOCED.asstring;
         if trim(qryGerarTitulosBLT_CONVENIO.asString) <> '' then
           Convenio := qryGerarTitulosBLT_CONVENIO.asString;

         if trim(qryGerarTitulosBLT_MODALIDADE.asString) <> '' then
           Modalidade := qryGerarTitulosBLT_MODALIDADE.asString;

         Bairro :=  qryGerarTitulosCED_BAIRRO.asstring;
         CEP :=  NFe_RetiraCaracEspecial(qryGerarTitulosCED_CEP.asstring);
         Cidade := qryGerarTitulosCED_CIDADE.asstring;
         Logradouro := qryGerarTitulosCED_RUA.asstring;
         UF := qryGerarTitulosCED_UF.asstring;
       end;


       qryGerarTitulos.First;
       while not qryGerarTitulos.Eof do
       begin
         Titulo:= ACBrBoleto.CriarTituloNaLista;
         with Titulo do
         begin
            LocalPagamento    := qryGerarTitulosBLT_LOCAL_PAGTO.asstring;
            if DtVencto <= 0 then
              Vencimento  := qryGerarTitulosBLT_DT_VENCTO.AsDateTime
            else
              Vencimento        := DtVencto;

            DataDocumento     := dmApp.DataCaixa;
            NumeroDocumento   := padL(qryGerarTitulosREC_CODIGO.asstring,6,'0');
            EspecieDoc        := 'DM';
            Aceite            := atSim;
            DataProcessamento := Now;
            //Senão possui nosso numero, pego o proximo da conta
            if qryGerarTitulosNOSSO_NUMERO.asstring = '' then
            begin
              vNossoNumero := RetornaValor('select coalesce(ctb.blt_nosso_num_prox,1) from ctb_planoconta ctb where ctb.cnpj = '+QuotedStr(dmapp.cnpj)+' and ctb.conta = '+IntToStr(ContaCorrente),sTrans);
              NossoNumero    := VarToStr(vNossoNumero);
              ExecSql('update ctb_planoconta ctb set ctb.blt_nosso_num_prox = coalesce(ctb.blt_nosso_num_prox,1) + 1 where ctb.cnpj = '+QuotedStr(dmapp.cnpj)+' and ctb.conta = '+IntToStr(ContaCorrente),sTrans);
              ExecSql('update fin_contas_receber r set r.blt_nosso_num = '+QuotedStr(vNossoNumero)+' where r.cnpj ='+QuotedStr(dmapp.cnpj)+' and r.codigo = '+qryGerarTitulosREC_CODIGO.AsString,sTrans);
            end
            else
              NossoNumero       := qryGerarTitulosNOSSO_NUMERO.asstring;

            Carteira          := qryGerarTitulosBLT_CARTEIRA.asstring;//'09';
            ValorDocumento    := qryGerarTitulosBLT_VALOR.asFloat;
            Sacado.NomeSacado := qryGerarTitulosSAC_NOME.asstring;

            if Length(qryGerarTitulosSAC_CPF_CGC.asstring) > 11 then
              Sacado.CNPJCPF := qryGerarTitulosSAC_CPF_CGC.asstring
            else
              Sacado.CNPJCPF := qryGerarTitulosSAC_CPF_CGC.asstring;

            Sacado.Logradouro := NFe_RetiraCaracEspecial(qryGerarTitulosSAC_RUA.asstring);
            Sacado.Numero     := qryGerarTitulosSAC_NUM.asstring;
            Sacado.Bairro     := NFe_RetiraCaracEspecial(qryGerarTitulosSAC_BAIRRO.asstring);
            Sacado.Cidade     := NFe_RetiraCaracEspecial(qryGerarTitulosSAC_CIDADE.asstring);
            Sacado.UF         := qryGerarTitulosSAC_UF.asstring;
            Sacado.CEP        := NFe_RetiraCaracEspecial(qryGerarTitulosSAC_CEP.asstring);

            if (qryGerarTitulosBLT_DIAS_ABATIMENTO.asFloat > 0) then
            begin
              DataAbatimento    := qryGerarTitulosBLT_DT_VENCTO.Value - (qryGerarTitulosBLT_DIAS_ABATIMENTO.asFloat);
              ValorAbatimento   := ((qryGerarTitulosBLT_VALOR.asFloat * qryGerarTitulosBLT_PCT_ABATIMENTO.Value)/100);
            end;

            Instrucao1        := qryGerarTitulosblt_instrucao.AsString;
            //Instrucao2        := '00';

            ACBrBoleto.AdicionarMensagensPadroes(Titulo,Mensagem);
         end;
         qryGerarTitulos.Next;
       end;

       ACBrBoleto.Imprimir;
       if (trans = nil) then
         sTrans.Commit
       else
         sTrans.CommitRetaining;
   except
     On E:Exception Do
     Begin
       MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
       if (trans = nil) then
         sTrans.Rollback
       else
         sTrans.RollbackRetaining;
     End;
   end
end;

function TDmApp.GetDBVersao: Integer;
var
  Aux : Variant;
  config: TIniFile;
  caminho, password : string;
  aberto : boolean;
begin
  //Capturando a chave do BD
  aberto := Database.Connected;
  if not Database.Connected then
  begin
    Caminho := ExtractFilePath(Application.Exename);
    If Copy(Caminho, Length(Caminho), 1) <> '\' Then
       Caminho := Caminho + '\';
    try
      if FileExists(Caminho + 'HelpStore.ini')  Then
      begin
        Config                  := TIniFile.Create(Caminho + 'HelpStore.ini');
        Database.DatabaseName   := Config.ReadString('geral','db','');
        PassWord                := Config.ReadString('geral', 'psd',  '');

        Database.Params[0]  := 'user_name=SYSDBA';
        if PassWord <> '' then
          Database.Params[1]  := 'password=' + PassWord;
      end;

    finally
      config.free;
    end;
    //Conectando o BD
    Database.LoginPrompt := false;
    Database.Connected := true;
  end;

  //abrindo consulta de parceiros
  QryParceiro.Close;
  QryParceiro.Open;
  if QryParceiroPARC_PATH_ICONE.asString <> '' then
  begin
     if FileExists(QryParceiroPARC_PATH_ICONE.asString) then
       Application.Icon.LoadFromFile(QryParceiroPARC_PATH_ICONE.asString);
  end ;
  

  result := RetornaValor('select coalesce(db_versao,0) from sis_empresas',dmapp.Transaction);
end;

function TDmApp.SincronizaPessoa(Trans: TIBTransaction; FCNPJCPF, FxNome,
  FxFant: string;  FIE, FIEST, FIM, FCNAE, FxLgr,
  Fnro, fxCpl, FxBairro: string; FcMun: integer; FxMun, FUF: string; FCEP,
  FcPais: integer; FxPais, Ffone: string): integer;
begin
  edtPessoas.Close;
  edtPessoas.ParamByName('cnpj').value := dmApp.cnpj;
  edtPessoas.ParamByName('cpf_cnpj').value := trim(FCNPJCPF);
  edtPessoas.Open;

  if edtPessoasCODIGO.AsInteger = 0 then
    edtPessoas.Append
  else
    edtPessoas.Edit;

  edtPessoasCNPJ.Value := dmApp.Cnpj;
  edtPessoasNOME_RAZAO.Value := FxNome;
  edtPessoasCPF_CGC.Value := Fcnpjcpf;
  edtPessoasFANTASIA.Value := FxFant;
  edtPessoasRG_IE.Value := FIE;
  edtPessoasINSC_MUNIC.Value := FIM;

  edtPessoasNUMERO.Value := Fnro;
  edtPessoasUF.Value := SincronizaUF(trans,fUF);
  edtPessoasBAIRRO.value := SincronizaBairro(trans,FxBairro);
  edtPessoasCIDADE.value := SincronizaCidade(trans,FcMun,FxMun,fUF);
  edtPessoasENDERECO.value := SincronizaLogradouro(trans,FxLgr);
  edtPessoasCOMPLEMENTO.value :=  fxCpl;
  edtPessoasCEP.value :=  IntToStr(fCep);
  edtPessoas.Post;

  edtCliente.Close;
  edtCliente.Parambyname('cnpj').value := dmApp.cnpj;
  edtCliente.Parambyname('codigo').value := edtPessoasCODIGO.Value;
  edtCliente.Open;
  if edtClientePESSOA_FJ.asInteger = 0 then
  begin
    edtCliente.Append;
    edtClientePESSOA_FJ.Value := edtPessoasCODIGO.Value;
    edtClienteCNPJ.Value := dmApp.cnpj;
    edtClienteCOMPRADOR.Value := 'IMPORTAÇÃO  XML';
    edtClienteDIA_PREF_FAT.Value := 15;
    edtClienteCLASSIF.Value := 'M';
    edtCliente.Post;
  end;

  edtFornecedor.Close;
  edtFornecedor.Parambyname('cnpj').value := dmApp.cnpj;
  edtFornecedor.Parambyname('codigo').value := edtPessoasCODIGO.Value;
  edtFornecedor.Open;
  if edtFornecedorPESSOA_FJ.asInteger = 0 then
  begin
    edtFornecedor.Append;
    edtFornecedorPESSOA_FJ.Value := edtPessoasCODIGO.Value;
    edtFornecedorCNPJ.Value := dmApp.cnpj;
    edtFornecedorVENDEDOR.Value := 'IMPORTAÇÃO XML';
    edtFornecedorSINCRONIZA_FILIAIS.Value := 'S';
    edtFornecedor.Post;
  end;

  result := edtPessoasCODIGO.Value;
end;

function TDmApp.SincronizaBairro(Trans: TIBTransaction;
  FxBairro: string): integer;
begin
  edtBairro.Close;
  edtBairro.ParamByName('cnpj').value := dmApp.cnpj;
  edtBairro.ParamByName('nome').value := trim(FxBairro);
  edtBairro.Open;

  if edtBairroCODIGO.asInteger = 0 then
    edtBairro.Append
  else
    edtBairro.Edit;

  edtBairroCNPJ.value  := dmApp.cnpj;
  edtBairroNOME.value := FxBairro;
  edtBairro.Post;

  result := edtBairroCODIGO.AsInteger;
end;

function TDmApp.SincronizaUF(Trans: TIBTransaction; FUF: string): string;
begin
  edtUF.Close;
  edtUF.ParamByName('cnpj').value := dmApp.cnpj;
  edtUF.ParamByName('uf').value := trim(FUF);
  edtUF.Open;

  if edtUFSIGLA.asString = '' then
    edtUF.Append
  else
    edtUF.Edit;

  edtUFCNPJ.value  := dmApp.cnpj;
  edtUFSIGLA.value := trim(fUf);
  edtUF.Post;

  result := fUF;
end;

function TDmApp.SincronizaCidade(Trans: TIBTransaction; FcMun: integer;
  FxMun, FUF: string): integer;
begin
  edtCidade.Close;
  edtCidade.ParamByName('cnpj').value := dmApp.cnpj;
  edtCidade.ParamByName('COD_IBGE').value := FcMun;
  edtCidade.Open;

  if edtCidadeCODIGO.AsInteger = 0 then
  begin
    edtCidade.Append;
    edtCidadeCNPJ.value := dmApp.cnpj;
  end
  else
    edtCidade.Edit;


  edtCidadeNOME.value := FxMun;
  edtCidadeUF.value := SincronizaUF(trans,fUF);
  edtCidadeCOD_IBGE.value := IntToStr(fcMun);
  edtCidade.Post;

  result := edtCidadeCODIGO.AsInteger;
end;

function TDmApp.SincronizaLogradouro(Trans: TIBTransaction;
  FxLgr: string): integer;
begin
  edtLogradouro.Close;
  edtLogradouro.ParamByName('cnpj').value := dmApp.cnpj;
  edtLogradouro.ParamByName('nome').value := trim(FxLgr);
  edtLogradouro.Open;

  if edtLogradouroCODIGO.asInteger =    0 then
    edtLogradouro.Append
  else
    edtLogradouro.Edit;

  edtLogradouroCNPJ.value  := dmApp.cnpj;
  edtLogradouroNOME.value := trim(FxLgr);
  edtLogradouro.Post;

  result := edtLogradouroCODIGO.AsInteger;
end;

function TDmApp.SincronizaProduto(Trans: TIBTransaction;
  Fornecedor: Integer; cProd, xProd, cEAN, NCM, uCom,DicProd: string;Fator: Real;Cadastra:Boolean): string;
var
  produto : string;
begin

   Unidades.Close;
   Unidades.parambyname('cnpj').value := dmApp.cnpj;
   Unidades.parambyname('sigla').value := uCom;
   Unidades.Open;

   if  UnidadesSIGLA.asString = '' then
   begin
     Unidades.Append;
     UnidadesCNPJ.Value := dmApp.cnpj;
     UnidadesSIGLA.Value := uCom;
     UnidadesNOME.Value := uCom;
     Unidades.Post;
   end;

  edtProdutos.Close;
  if Cadastra then
  begin
    edtProdutos.Open;
    edtProdutos.Append;
    edtProdutosNOME.Value := xProd;
    edtProdutosDEBITA_ICMS.Value      := 'N' ;
    edtProdutosATIVO.Value            := 'S' ;
    edtProdutosCOMPLEMENTO_NF.Value   := 'N' ;
    edtProdutosVENDE_FRACIONADO.Value := 'N' ;
    edtProdutosPOSSUI_LOTE.Value      := 'N' ;
    edtProdutosCTE.Value              := 1   ;
    edtProdutosCTIe.Value             := 1   ;
    edtProdutosNEG_QTDADE_2.Value     := 'N' ;
    edtProdutosEtiqueta_ent.Value     := 'N' ;
    edtProdutosComplemento_NF.Value   := 'N' ;
    edtProdutosPROD_PESAVEL.Value     := 'N' ;
    edtProdutosSERVICO.Value          := 'N' ;
    edtProdutosCUSTO_INDEXADO.Value   := 0   ;
    edtProdutosSINCRONIZA_FILIAIS.Value := 'S';
  end
  else
  begin
    edtProdutos.ParambyName('cnpj').value := dmApp.cnpj;
    edtProdutos.ParambyName('produto').value := DicProd;

    edtProdutos.Open;
    edtProdutos.Edit;
  end;



  edtProdutosCNPJ.Value := dmApp.cnpj;
  edtProdutosCODIGO_2.Value := cEAN;

  if DmApp.MARGEM_BRUTA > 0 then
       edtProdutosMARGEM_BRUTA.value := DmApp.MARGEM_BRUTA;

  edtProdutosCOD_GETIN.Value := cEAN;
  edtProdutosCODIGO_NCM.Value := NCM;
  edtProdutosUNIDADE.Value := uCom;
  edtProdutosUND_PRIMARIA.Value := uCom;
  edtProdutosUND_CARREGAMENTO.Value := uCom;
  edtProdutos.Post;

  QryRetProduto.Close;
  QryRetProduto.ParamByName('cnpj').value := dmApp.cnpj;
  QryRetProduto.ParamByName('fornecedor').value := FORNECEDOR;
  QryRetProduto.ParamByName('cod_barras').value := cEAN;
  QryRetProduto.ParamByName('codigo').value := cProd;
  QryRetProduto.Open;

  if QryRetProdutoRET_PRODUTO.value = '' then
  begin
    Produto_Fornecedor.Close;
    Produto_Fornecedor.Open;
    Produto_Fornecedor.Append;

    Produto_FornecedorCNPJ.value := dmApp.cnpj;
    Produto_FornecedorPRODUTO.value := edtProdutosCODIGO.Value;
    Produto_FornecedorFORNECEDOR.value := fornecedor;
    Produto_FornecedorCOD_PRD_FORNECEDOR.Value := cProd;
    Produto_FornecedorFATOR.Value := Fator;
    Produto_FornecedorUNIDADE.value := uCom;
    Produto_Fornecedor.Post;
  end;
  result := edtProdutosCODIGO.Value;
end;

procedure TDmApp.CriaFormulario(Form: TfrmCadPadrao;Name :String);
begin
 { deu errado, pesquisar mais
 if Not(Verificar_Login(FileName(Application.ExeName), Name, True)) Then
     Exit;

  if SelecionarEmpresa = 'N' Then
     Exit;

  if Form = Nil Then
  begin
     Application.ProcessMessages;
     Form := Tf.Create(Form);
     Form.ShowMODAL ;
     Form.Free      ;
     Form := Nil    ;
  end;}
end;

end.
