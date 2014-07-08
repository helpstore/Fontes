unit Entradas_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBStoredProc, IBSQL;

type
  TDMEntradas = class(TDataModule)
    Entradas: TIBDataSet;
    Entradas_Itens: TIBDataSet;
    Entradas_Fat: TIBDataSet;
    dsEntradas: TDataSource;
    EntradasCNPJ: TIBStringField;
    EntradasNDOCTO: TIBStringField;
    EntradasPESSOA_FJ: TIntegerField;
    EntradasDATA_NF: TDateTimeField;
    EntradasDATA_REF: TDateTimeField;
    EntradasDATA_ENT: TDateTimeField;
    EntradasSERIE_NF: TIBStringField;
    EntradasNATUREZA: TIntegerField;
    EntradasVLR_DESCONTO: TFloatField;
    EntradasVLR_PRODUTOS: TFloatField;
    EntradasVLR_EMBALAGEM: TFloatField;
    EntradasFRETE_LF: TIBStringField;
    EntradasVLR_FRETE: TFloatField;
    EntradasVLR_SEGURO: TFloatField;
    EntradasVLR_IPI: TFloatField;
    EntradasVLR_BC_ICM: TFloatField;
    EntradasPERC_ICM: TFloatField;
    EntradasVLR_ICM: TFloatField;
    EntradasVLR_ICM_SUBS: TFloatField;
    EntradasTAXAS: TFloatField;
    EntradasLOCAL_ESTOQUE: TSmallintField;
    EntradasHISTORICO: TIBStringField;
    EntradasTIPO_DOCTO: TIBStringField;
    Entradas_ItensCNPJ: TIBStringField;
    Entradas_ItensNDOCTO: TIBStringField;
    Entradas_ItensPESSOA_FJ: TIntegerField;
    Entradas_ItensPRODUTO: TIBStringField;
    Entradas_ItensPERC_LUCRO: TFloatField;
    Entradas_ItensPRC_VENDA: TFloatField;
    Entradas_ItensPRC_VENDA_ANT: TFloatField;
    Entradas_ItensPRC_CUSTO: TFloatField;
    Entradas_ItensICM: TFloatField;
    Entradas_ItensICM_SUBS: TFloatField;
    Entradas_ItensIPI: TFloatField;
    Entradas_ItensIPI_PRODUTO: TFloatField;
    Entradas_ItensTAXAS: TFloatField;
    Entradas_ItensDESCONTOS: TFloatField;
    Entradas_ItensEMBALAGEM: TFloatField;
    Entradas_ItensFRETE: TFloatField;
    Entradas_ItensSEGURO: TFloatField;
    Entradas_FatCNPJ: TIBStringField;
    Entradas_FatNDOCTO: TIBStringField;
    Entradas_FatPESSOA_FJ: TIntegerField;
    Entradas_FatCODIGO_CP: TIntegerField;
    Entradas_FatANO_CP: TIntegerField;
    Entradas_FatVALOR: TFloatField;
    SelFornecedor: TIBQuery;
    SelFornecedorNOME_RAZAO: TIBStringField;
    SelNatureza: TIBQuery;
    SelNaturezaCODIGO: TIntegerField;
    SelNaturezaNOME: TIBStringField;
    SelFornecedorFONE: TIBStringField;
    Parametros: TIBQuery;
    ParametrosCNPJ: TIBStringField;
    ParametrosVENDEDOR: TFloatField;
    ParametrosDESCONTOS: TFloatField;
    ParametrosCUSTO_VARIAVEL: TFloatField;
    ParametrosPROPAGANDA: TFloatField;
    Entradas_ItensPRC_TOTAL: TFloatField;
    EntradasVLR_PRODUTOS_LC: TFloatField;
    EntradasVLR_IPI_LC: TFloatField;
    Entradas_ItensVLR_ICM: TFloatField;
    Entradas_ItensVLR_IPI: TFloatField;
    SelTipoDocto: TIBQuery;
    SelTipoDoctoCNPJ: TIBStringField;
    SelTipoDoctoSIGLA: TIBStringField;
    SelTipoDoctoNOME: TIBStringField;
    Entradas_FatPARCELA: TIBStringField;
    EntradasVLR_TOTAL_NF: TFloatField;
    EntradasTOTAL_PARCELAS: TFloatField;
    EntradasVLR_PARC_LC: TFloatField;
    EntradasVLR_DIFERENCA: TFloatField;
    EntradasPROC_QTD: TIBStringField;
    EntradasPROC_CUSTO: TIBStringField;
    EntradasPROC_FIN: TIBStringField;
    SelFornecedorPESSOA_FJ: TIntegerField;
    Entradas_ItensUNIDADE: TIBStringField;
    SelUnidade: TIBQuery;
    SelUnidadeCNPJ: TIBStringField;
    SelUnidadeSIGLA: TIBStringField;
    SelUnidadeNOME: TIBStringField;
    Entradas_ItensNOME_PRODUTO: TIBStringField;
    Valida_Produto: TIBStoredProc;
    SelFornecedorFANTASIA: TIBStringField;
    SelFornecedorCPF_CGC: TIBStringField;
    Geral: TIBQuery;
    Valida_Fornecedor: TIBQuery;
    Valida_FornecedorPESSOA_FJ: TIntegerField;
    Valida_FornecedorNOME: TIBStringField;
    DsUnidade: TDataSource;
    SelSubUnidade: TIBQuery;
    SelSubUnidadeCNPJ: TIBStringField;
    SelSubUnidadeSIGLA: TIBStringField;
    SelSubUnidadeUNIDADES: TIntegerField;
    Entradas_ItensSUBUNIDADE: TIntegerField;
    SelNaturezaPERC_ICMS: TFloatField;
    EntradasENTRADA: TFloatField;
    EntradasCENTRO_CUSTO: TIntegerField;
    SelCentro: TIBQuery;
    Entradas_FatDUPLICATA: TIBStringField;
    Entradas_FatOBSERVACAO: TIBStringField;
    Entradas_FatCONFERIDA: TIBStringField;
    SelLote: TIBQuery;
    SelLoteCNPJ: TIBStringField;
    SelLoteCODIGO: TIntegerField;
    SelLoteESTOQUE: TFloatField;
    SelLoteLOTE: TIBStringField;
    SelLotePRODUTO: TIBStringField;
    SelLotePENEIRA: TIBStringField;
    SelLoteATESTADO: TIBStringField;
    SelLoteGERMINACAO: TFloatField;
    SelLotePUREZA: TFloatField;
    SelLoteVALIDADE: TDateTimeField;
    Entradas_ItensLOTE: TIntegerField;
    SelLoteDT_ULTIMA_COMPRA: TDateTimeField;
    SelLoteDT_ULTIMA_VENDA: TDateTimeField;
    EntradasNOME: TIBStringField;
    SelEntrada: TIBQuery;
    SelEntradaNDOCTO: TIBStringField;
    SelEntradaNDOCTOINT: TIntegerField;
    SelEntradaPESSOA_FJ: TIntegerField;
    SelEntradaDATA_NF: TDateTimeField;
    SelEntradaNATUREZA: TIntegerField;
    SelEntradaNOME_RAZAO: TIBStringField;
    SelEntradaDATA_REF: TDateTimeField;
    SelEntradaDATA_ENT: TDateTimeField;
    SelEntradaSERIE_NF: TIBStringField;
    SelEntradaTAXAS: TFloatField;
    SelEntradaVLR_EMBALAGEM: TFloatField;
    SelEntradaVLR_FRETE: TFloatField;
    SelEntradaVLR_DESCONTO: TFloatField;
    SelEntradaVLR_SEGURO: TFloatField;
    SelEntradaVLR_BC_ICM: TFloatField;
    SelEntradaPERC_ICM: TFloatField;
    SelEntradaVLR_ICM: TFloatField;
    SelEntradaVLR_IPI: TFloatField;
    SelEntradaVLR_ICM_SUBS: TFloatField;
    SelEntradaPROC_QTD: TIBStringField;
    SelEntradaPROC_FIN: TIBStringField;
    SelEntradaVLR_TOTAL_NF: TFloatField;
    SelEntradaFRETE_LF: TIBStringField;
    SelEntradaVLR_PRODUTOS: TFloatField;
    Entradas_ItensCTE: TSmallintField;
    Entradas_ItensCTIE: TSmallintField;
    Entradas_ItensCODIGO_INTERNO: TIntegerField;
    SelNaturezaINTERESTADUAL: TIBStringField;
    SelUnidadeUNIDADES: TFloatField;
    Entradas_ItensCONVERSAO: TFloatField;
    Entradas_FatSEQUENCIAL: TIntegerField;
    Produtos_Grades: TIBDataSet;
    Produtos_GradesCNPJ: TIBStringField;
    Produtos_GradesNUMERO: TIBStringField;
    Produtos_GradesPRODUTO: TIBStringField;
    DsEntradas_Itens: TDataSource;
    Produtos_GradesNDOCTO: TIBStringField;
    Produtos_GradesPESSOA_FJ: TIntegerField;
    Produtos_GradesQUANTIDADE: TFloatField;
    Lista_Grades: TIBQuery;
    Lista_GradesMATERIAL: TIntegerField;
    Lista_GradesCOR: TIntegerField;
    Lista_GradesESTOQUE: TIBBCDField;
    Lista_GradesNOME_MATERIAL: TIBStringField;
    Lista_GradesNOME_COR: TIBStringField;
    Lista_GradesPERFIL: TIntegerField;
    Lista_GradesNOME_PERFIL: TIBStringField;
    Lista_GradesNUMERO: TIBStringField;
    Lista_GradesORDEM: TIntegerField;
    Produtos_GradesORDEM: TIntegerField;
    Produtos_GradesMATERIAL: TIBStringField;
    Produtos_GradesCOR: TIBStringField;
    Entradas_FatCENTRO_CUSTO: TIntegerField;
    Grades: TIBDataSet;
    GradesCNPJ: TIBStringField;
    GradesPRODUTO: TIBStringField;
    GradesMATERIAL: TIntegerField;
    GradesCOR: TIntegerField;
    GradesULTIMA_COMPRA: TDateTimeField;
    GradesQTDADE_COMPRA: TFloatField;
    GradesULTIMA_VENDA: TDateTimeField;
    GradesQTDADE_VENDA: TFloatField;
    GradesESTOQUE: TFloatField;
    GradesNOME_MATERIAL: TIBStringField;
    GradesNOME_COR: TIBStringField;
    GradesPERFIL: TIntegerField;
    GradesNOME_PERFIL: TIBStringField;
    Grades_Numeros: TIBDataSet;
    Grades_NumerosCNPJ: TIBStringField;
    Grades_NumerosPRODUTO: TIBStringField;
    Grades_NumerosESTOQUE: TFloatField;
    Grades_NumerosNUMERO: TIBStringField;
    DsGrades: TDataSource;
    Entradas_ItensORDEM: TIntegerField;
    Entradas_ItensSECUNDARIO: TIBStringField;
    EntradasVLR_FRETE_LC: TFloatField;
    GradesGRADE: TIBStringField;
    Grades_NumerosGRADE: TIBStringField;
    Produtos_GradesGRADE: TIBStringField;
    Lista_GradesGRADE: TIBStringField;
    SelEntradaPROC_CUSTO: TIBStringField;
    Entradas_ItensCFOP: TIntegerField;
    Entradas_Manual: TIBDataSet;
    Entradas_ManualCNPJ: TIBStringField;
    Entradas_ManualCODIGO: TIntegerField;
    Entradas_ManualDATA: TDateTimeField;
    Entradas_ManualPRODUTO: TIBStringField;
    Entradas_ManualNOME: TIBStringField;
    Entradas_ManualVLR_CAIXA: TFloatField;
    Entradas_ManualVLR_EMBALAGEM: TFloatField;
    Entradas_ManualVLR_COMPRA: TFloatField;
    Entradas_ManualVLR_IPI: TFloatField;
    Entradas_ManualVLR_FRETE_PROPRIO: TFloatField;
    Entradas_ManualVLR_FRETE_TERCEIRO: TFloatField;
    Entradas_ManualVLR_TRIBUTACAO_CREDITO: TFloatField;
    Entradas_ManualVLR_OUTRAS_DESPESAS: TFloatField;
    Entradas_ManualQUANTIDADE: TFloatField;
    Entradas_ManualVLR_VENDA: TFloatField;
    Entradas_ManualVLR_LUCRO: TFloatField;
    Entradas_ManualVLR_CUSTO_TOTAL: TFloatField;
    Entradas_ManualFECHADA: TIBStringField;
    Entradas_ManualVLR_RENTABILIDADE: TFloatField;
    Entradas_ManualVLR_ICM_VENDA: TFloatField;
    Entradas_ManualMARGEM_LUCRO: TFloatField;
    Entradas_ManualIPI_UNITARIO: TFloatField;
    Entradas_ManualIcm_Deb_Unitario: TFloatField;
    Entradas_ManualIcm_Cred_Unitario: TFloatField;
    Entradas_ManualIcm_Total_Venda: TFloatField;
    Entradas_ManualDespesas_Totais: TFloatField;
    Entradas_ManualDespesas_Unitarias: TFloatField;
    Entradas_ManualTotal_Frete_Proprio: TFloatField;
    Entradas_ManualTotal_Frete_Terceiros: TFloatField;
    Entradas_ManualOutras_Despesas_Unitario: TFloatField;
    Entradas_ManualCusto_Total: TFloatField;
    Entradas_ManualTotal_Classe: TFloatField;
    Entradas_ManualTotal_Custo_Compra: TFloatField;
    Entradas_ManualTotal_Valor_Venda: TFloatField;
    Entradas_ManualLucro_Bruto: TFloatField;
    Entradas_ManualLucro_Unitario: TFloatField;
    Entradas_ManualLucro_Total: TFloatField;
    Entradas_ManualLucro_Minimo: TFloatField;
    Entradas_ManualRentabilidade: TFloatField;
    Entradas_ManualLucro_Liquido: TFloatField;
    Entradas_ManualVLR_VENDA_CALCULADO: TFloatField;
    Entradas_ManualDesp_Operacional: TFloatField;
    Entradas_ManualDesp_Federal: TFloatField;
    Entradas_ManualTOT_FRETE_TERCEIRO: TFloatField;
    Entradas_ManualTOT_ICM_CREDITO: TFloatField;
    Entradas_ManualTOT_ICM_DEBITO: TFloatField;
    Entradas_ManualTOT_RENTABILIDADE: TFloatField;
    Entradas_ManualTOT_IPI: TFloatField;
    Entradas_ManualTOT_DESP_OPERACIONAL: TFloatField;
    Entradas_ManualTOT_DESP_FEDERAL: TFloatField;
    Entradas_ManualTOT_FRETE_PROPRIO: TFloatField;
    Entradas_ManualHORA: TTimeField;
    Entradas_ManualVLR_VENDA_ANTERIOR: TFloatField;
    SelEntradasManual: TIBQuery;
    SelEntradasManualCNPJ: TIBStringField;
    SelEntradasManualCODIGO: TIntegerField;
    SelEntradasManualGRUPO: TIntegerField;
    SelEntradasManualNOME_GRUPO: TIBStringField;
    SelEntradasManualDATA: TDateTimeField;
    SelEntradasManualPRODUTO: TIBStringField;
    SelEntradasManualNOME: TIBStringField;
    SelEntradasManualVLR_CAIXA: TIBBCDField;
    SelEntradasManualVLR_EMBALAGEM: TIBBCDField;
    SelEntradasManualVLR_COMPRA: TIBBCDField;
    SelEntradasManualVLR_IPI: TIBBCDField;
    SelEntradasManualVLR_FRETE_PROPRIO: TIBBCDField;
    SelEntradasManualVLR_FRETE_TERCEIRO: TIBBCDField;
    SelEntradasManualVLR_TRIBUTACAO_CREDITO: TIBBCDField;
    SelEntradasManualVLR_OUTRAS_DESPESAS: TIBBCDField;
    SelEntradasManualQUANTIDADE: TIBBCDField;
    SelEntradasManualVLR_VENDA: TIBBCDField;
    SelEntradasManualVLR_LUCRO: TIBBCDField;
    SelEntradasManualVLR_CUSTO_TOTAL: TIBBCDField;
    SelEntradasManualFECHADA: TIBStringField;
    SelEntradasManualVLR_RENTABILIDADE: TIBBCDField;
    SelEntradasManualVLR_ICM_VENDA: TIBBCDField;
    SelEntradasManualMARGEM_LUCRO: TIBBCDField;
    SelEntradasManualTOT_FRETE_TERCEIRO: TIBBCDField;
    SelEntradasManualTOT_ICM_CREDITO: TIBBCDField;
    SelEntradasManualTOT_ICM_DEBITO: TIBBCDField;
    SelEntradasManualTOT_RENTABILIDADE: TIBBCDField;
    SelEntradasManualTOT_IPI: TIBBCDField;
    SelEntradasManualTOT_DESP_OPERACIONAL: TIBBCDField;
    SelEntradasManualTOT_DESP_FEDERAL: TIBBCDField;
    SelEntradasManualTOT_FRETE_PROPRIO: TIBBCDField;
    SelEntradasManualHORA: TTimeField;
    SelEntradasManualVLR_VENDA_ANTERIOR: TIBBCDField;
    Entradas_ManualFORNECEDOR: TIntegerField;
    Entradas_ManualNDOCTO: TIBStringField;
    Entradas_ManualNOME_FORNECEDOR: TIBStringField;
    SelEntradasManualFORNECEDOR: TIntegerField;
    SelEntradasManualNDOCTO: TIBStringField;
    Entradas_ItensCODIGO_2: TIBStringField;
    EntradasNDOCTOINT: TIntegerField;
    SelEntradaNDOCTOINT2: TIntegerField;
    SelReducao: TIBQuery;
    SelReducaoPERC_ESTADUAL: TIBBCDField;
    SelReducaoPERC_INTERESTADUAL: TIBBCDField;
    SelReducaoMENSAGEM_NF: TIBStringField;
    SelReducaoMENSAGEM_NF_IE: TIBStringField;
    SelReducaoPERC_CONTRIBUINTE: TIBBCDField;
    EntradasUF: TIBStringField;
    Valida_FornecedorUF: TIBStringField;
    SelLotePESO: TFloatField;
    SelCentroCODIGO: TIntegerField;
    SelCentroNOME: TIBStringField;
    Entradas_ItensVENDE_FRACIONADO: TIBStringField;
    qProdFracionado: TIBQuery;
    qProdFracionadoVENDE_FRACIONADO: TIBStringField;
    Produtos_Lotes: TIBDataSet;
    Produtos_LotesCODIGO: TIntegerField;
    Produtos_LotesCNPJ: TIBStringField;
    Produtos_LotesNDOCTO: TIBStringField;
    Produtos_LotesPESSOA_FJ: TIntegerField;
    Produtos_LotesPRODUTO: TIBStringField;
    Produtos_LotesLOTE: TIntegerField;
    Produtos_LotesQUANTIDADE: TFloatField;
    Produtos_LotesORDEM: TIntegerField;
    Lista_Lotes: TIBQuery;
    Produtos_LotesGERMINACAO: TFloatField;
    Produtos_LotesNOME_LOTE: TIBStringField;
    Produtos_LotesPENEIRA: TIBStringField;
    Produtos_LotesPESO: TFloatField;
    Produtos_LotesPUREZA: TFloatField;
    Produtos_LotesDATA_VALIDADE: TDateTimeField;
    Produtos_LotesATESTADO: TIBStringField;
    Lista_LotesCNPJ: TIBStringField;
    Lista_LotesPRODUTO: TIBStringField;
    Lista_LotesCODIGO: TIntegerField;
    Lista_LotesLOTE: TIBStringField;
    Lista_LotesESTOQUE: TFloatField;
    Lista_LotesPENEIRA: TIBStringField;
    Lista_LotesATESTADO: TIBStringField;
    Lista_LotesGERMINACAO: TFloatField;
    Lista_LotesPUREZA: TFloatField;
    Lista_LotesVALIDADE: TDateTimeField;
    Lista_LotesDT_ULTIMA_COMPRA: TDateTimeField;
    Lista_LotesDT_ULTIMA_VENDA: TDateTimeField;
    Lista_LotesPESO: TFloatField;
    ApagaParcelas: TIBSQL;
    UndConversao: TIBQuery;
    UndConversaoQTDE: TFloatField;
    UndConversaoFATOR: TIntegerField;
    QryValidaProduto: TIBQuery;
    QryValidaProdutoPRC_REPOS: TIBBCDField;
    QryValidaProdutoVALIDA_MULT_QTDE_MIN: TIBStringField;
    QryValidaProdutoPRC_VENDA: TIBBCDField;
    QryValidaProdutoVOLUME: TIBBCDField;
    QryValidaProdutoPESO_LIQ: TIBBCDField;
    QryValidaProdutoUNIDADE: TIBStringField;
    QryValidaProdutoNOME: TIBStringField;
    QryValidaProdutoATIVO: TIBStringField;
    QryValidaProdutoALIQUOTA_ECF: TIBStringField;
    QryValidaProdutoQTDADE_1: TIBBCDField;
    QryValidaProdutoQTDADE_2: TIBBCDField;
    QryValidaProdutoNEG_QTDADE_2: TIBStringField;
    QryValidaProdutoSUBUNIDADE: TIntegerField;
    QryValidaProdutoCOMPLEMENTO_NF: TIBStringField;
    QryValidaProdutoORIGEM: TIntegerField;
    QryValidaProdutoCTE: TIntegerField;
    QryValidaProdutoCTIE: TIntegerField;
    QryValidaProdutoREDUCAO: TIntegerField;
    QryValidaProdutoIPI: TIBBCDField;
    QryValidaProdutoVENDE_FRACIONADO: TIBStringField;
    QryValidaProdutoPOSSUI_LOTE: TIBStringField;
    QryValidaProdutoMARCA: TIBStringField;
    QryValidaProdutoMARGEM_BRUTA: TIBBCDField;
    QryValidaProdutoQTDADE_CONVERSAO: TIBBCDField;
    QryValidaProdutoSERVICO: TIBStringField;
    QryValidaProdutoSECUNDARIO: TIBStringField;
    QryValidaProdutoCOMPLEMENTO: TIBStringField;
    QryValidaProdutoPERC_FRETE: TIBBCDField;
    QryValidaProdutoQNTDE_MINIMA_VENDA: TIBBCDField;
    QryValidaProdutoUND_PRIMARIA: TIBStringField;
    QryValidaProdutoFATOR_CONVERSAO: TFloatField;
    EntradasCOD_FORMA_PAGTO: TIntegerField;
    QryAux: TIBQuery;
    Entradas_FatDT_VENCTO: TDateTimeField;
    EntradasCOD_INDEXADOR: TIntegerField;
    EntradasIDX_DATABASE: TDateField;
    EntradasIDX_COTACAO: TFloatField;
    EntradasIDX_QTDE: TFloatField;
    Entradas_FatCOD_CREDOR: TIntegerField;
    Entradas_FatCREDOR: TIBStringField;
    Entradas_Total_Geral_IDX: TFloatField;
    Entradas_ItensREDUCAO: TFloatField;
    EntradasVLR_BC_ICM_SUBS: TFloatField;
    Entradas_ItensPRC_UNITARIO_DOLAR: TFloatField;
    Entradas_ItensQUANTIDADE: TFloatField;
    Entradas_ItensPRC_UNITARIO: TFloatField;
    EntradasNFE_XML: TMemoField;
    SelEntradaCOD_VENDA: TIntegerField;
    EntradasCOD_VENDA: TIntegerField;
    Entradas_FatTIPO_DOCTO: TIBStringField;
    Entradas_FatNOME_TIPO_DOCTO: TIBStringField;
    procedure Entradas_ItensCalcFields(DataSet: TDataSet);
    procedure Entradas_ItensAfterInsert(DataSet: TDataSet);
    procedure EntradasAfterClose(DataSet: TDataSet);
    procedure EntradasAfterInsert(DataSet: TDataSet);
    procedure Entradas_ItensPRC_UNITARIOValidate(Sender: TField);
    procedure Entradas_ItensICMValidate(Sender: TField);
    procedure Entradas_ItensIPIValidate(Sender: TField);
    procedure Entradas_FatAfterInsert(DataSet: TDataSet);
    procedure EntradasCalcFields(DataSet: TDataSet);
    procedure SelFornecedorBeforeOpen(DataSet: TDataSet);
    procedure EntradasBeforeOpen(DataSet: TDataSet);
    procedure Entradas_ItensPRODUTOValidate(Sender: TField);
    procedure EntradasNATUREZAValidate(Sender: TField);
    procedure EntradasPESSOA_FJValidate(Sender: TField);
    procedure EntradasBeforeDelete(DataSet: TDataSet);
    procedure Entradas_ItensNewRecord(DataSet: TDataSet);
    procedure EntradasNewRecord(DataSet: TDataSet);
    procedure Entradas_ItensUNIDADEValidate(Sender: TField);
    procedure Entradas_ItensPERC_LUCROValidate(Sender: TField);
    procedure Entradas_FatNewRecord(DataSet: TDataSet);
    procedure SelEntradaCalcFields(DataSet: TDataSet);
    procedure Entradas_ItensCODIGO_INTERNOValidate(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure Entradas_FatBeforePost(DataSet: TDataSet);
    procedure Produtos_GradesNewRecord(DataSet: TDataSet);
    procedure Entradas_ItensQUANTIDADEValidate(Sender: TField);
    procedure Produtos_GradesGRADEValidate(Sender: TField);
    procedure Entradas_ItensPRC_UNITARIO_DOLARValidate(Sender: TField);
    procedure GradesNewRecord(DataSet: TDataSet);
    procedure GradesBeforePost(DataSet: TDataSet);
    procedure GradesAfterInsert(DataSet: TDataSet);
    procedure Grades_NumerosNewRecord(DataSet: TDataSet);
    procedure EntradasVLR_BC_ICMValidate(Sender: TField);
    procedure Entradas_ItensSECUNDARIOValidate(Sender: TField);
    procedure EntradasBeforeEdit(DataSet: TDataSet);
    procedure Entradas_ManualAfterInsert(DataSet: TDataSet);
    procedure Entradas_ManualNewRecord(DataSet: TDataSet);
    procedure Entradas_ManualBeforePost(DataSet: TDataSet);
    procedure Entradas_ManualPRODUTOValidate(Sender: TField);
    procedure Entradas_ManualVLR_EMBALAGEMValidate(Sender: TField);
    procedure Entradas_ManualCalcFields(DataSet: TDataSet);
    procedure Entradas_ManualFORNECEDORValidate(Sender: TField);
    function Ver_Reducao_Credito ( Produto: String ): Real ;
    function Ver_Reducao_Debito  ( Produto: String; Local: String ): Real ;
    procedure LotesAfterInsert(DataSet: TDataSet);
    procedure LotesNewRecord(DataSet: TDataSet);
    procedure Produtos_LotesNewRecord(DataSet: TDataSet);
    procedure Produtos_LotesBeforeOpen(DataSet: TDataSet);
    procedure Entradas_FatAfterPost(DataSet: TDataSet);
    procedure Entradas_FatBeforeDelete(DataSet: TDataSet);
    procedure Entradas_ItensPRC_VENDAValidate(Sender: TField);
    procedure EntradasCOD_FORMA_PAGTOValidate(Sender: TField);

  private
    { Private declarations }
  public
    { Public declarations }
    NDocto: String[20];
    PessoaFJ: Integer;
    OldValor: Real;
    procedure Apagar_Parcelas;
    procedure Parcela_Entradas(CFOP, Forma :Integer;Data:TDate);
    procedure RateiaValores;
    Function CalculaCusto: Real;
    Function Calcula_Frete ( Quantidade, Vlr_Ipi, Prc_total: Real ): Real;
    Function CalculaPrecoVenda: Real;
    Function CalculaPctPrcVenda: Real;
  end;

var
  DMEntradas: TDMEntradas;

implementation

uses
    Application_DM,
    EntradasItens_Form,
    Entradas_Form,
    Funcoes,
    Localizar_Lote,
    Localizar_Grade,
    EntraNumeroReal_Form,
    Entradas_Grades_Form, Entradas_Lotes_Form, Vendas_Form, Vendas_Dm,
  Vendas_DM2;

{$R *.DFM}

function TDMEntradas.Calcula_Frete ( Quantidade, Vlr_Ipi, Prc_total: Real ): Real ;
var
  Indice, Vl1, pct, teste: Real;
begin
  If DmaPP.Tipo_Custo = 'P' //Precificado Alterado por Wendel e Alessandro
  THEN BEGIN
       {Indice := EntradasVLR_FRETE.Value / ( EntradasVLR_PRODUTOS.Value - EntradasVLR_DESCONTO.value ) * 100;

       VL1 := (Entradas_ItensPRC_UNITARIO.value - Entradas_ItensDESCONTOS.Value);

       //código antigo que gerava inconsistencia o problema era o arredonda
       //Result := arredonda(( Indice * VL1 )/100 ,8) ;
       Result := (Indice * VL1 )/100;}

       VL1 := ((Entradas_ItensPRC_UNITARIO.value - Entradas_ItensDESCONTOS.Value) * Entradas_ItensQUANTIDADE.VALUE);
       //código antigo que gerava inconsistencia o problema era o arredonda
       //Result := arredonda(( Indice * VL1 )/100 ,8) ;
       pct := ((VL1 * 100)/EntradasVLR_PRODUTOS.value);
       pct := arredonda((pct/100),2);
       result :=  (EntradasVLR_FRETE.Value * pct);///Entradas_ItensQUANTIDADE.VALUE;
  END
  ELSE BEGIN
       IF ARREDONDA(( EntradasVLR_TOTAL_NF.Value - EntradasVLR_ICM_SUBS.Value - EntradasVLR_FRETE.Value), 2) > 0
       THEN BEGIN
            if Arredonda(DMApp.ICM_PRESUMIDO_IPI,2) > 0 then
              Indice := arredonda( EntradasVLR_FRETE.Value / ( EntradasVLR_TOTAL_NF.Value - EntradasVLR_ICM_SUBS.Value - EntradasVLR_FRETE.Value ) * 100,  4)
            else
              Indice := EntradasVLR_FRETE.Value / ( EntradasVLR_PRODUTOS.Value - EntradasVLR_DESCONTO.value ) * 100;

            VL1 := ((Entradas_ItensPRC_UNITARIO.value - Entradas_ItensDESCONTOS.Value) * Entradas_ItensQUANTIDADE.VALUE)  + Vlr_Ipi;

            //código antigo que gerava inconsistencia o problema era o arredonda
            //Result := arredonda(( Indice * VL1 )/100 ,8) ;
            Result := (Indice * VL1 )/100;
       END
       ELSE BEGIN
            Result := 0;
       END;
  END;
end;

Function TDMEntradas.CalculaCusto: Real;
   procedure Seta_Form_Entrada ( Descontos, Propaganda, CustoVariavel, Vendedor: Real );
   begin
        if (FrmEntradasItens <> nil) then
        begin
          With FrmEntradasItens do
          begin
            EdDesconto.Text      := FormatFloat ('###,###,##0.00', Descontos    );
            EdPropaganda.Text    := FormatFloat ('###,###,##0.00', Propaganda   );
            EdCustoVariavel.Text := FormatFloat ('###,###,##0.00', CustoVariavel);
            EdVendedor.Text      := FormatFloat ('###,###,##0.00', Vendedor     );
          end;
        end;
   end;

   function Calcula_Icms_Substituicao (  Vlr_Ipi, Prc_total, Quantidade, vlr_icm, Perc_Prod: Real ): Real;
   var
      VL1, Vlr_Frete: Real;
   begin
     //ICMS SUBSTITUICAO
     If (arredonda(EntradasVLR_ICM_SUBS.Value,2) > 0) Then
     begin
       IF ARREDONDA ( vlr_ipi, 2  ) > 0 THEN
       BEGIN
         if Arredonda(DMApp.ICM_PRESUMIDO_IPI,2) > 0 then
         begin
            //O LUCRO PRESUMIDO SOBRE PROD + IPI + FRETE
            Vl1 := ((( ( Prc_total / Quantidade ) + Vlr_Ipi + Entradas_ItensFRETE.Value ) * DMApp.ICM_PRESUMIDO_IPI )/100) ;

            //SOMA O ICM + PROD + IPI + FRETE
            vl1 := vl1 + ( ( Prc_total / Quantidade ) + Vlr_Ipi + Entradas_ItensFRETE.Value);

            //JOGA O ICMS
            VL1 := ( ( VL1 * 17 ) / 100 );

            IF DMAPP.ENT_FRETE_MANUAL = 'S' THEN
            BEGIN
              //DIMINUIR O CREDITO DE ICM QUE ENTRA TBM O FRETE
              Vlr_Frete := Entradas_ItensFRETE.Value ;
              VL1 := VL1 - ( vlr_icm ) ;
            END
            ELSE
            BEGIN
              Vlr_Frete := ( Entradas_ItensFRETE.Value * EntradasPERC_ICM.value) / 100 ;
              VL1 := VL1 - ( vlr_icm + Vlr_Frete ) ;
            END;

              Result := arredonda( VL1, 2) ;
               end
               else begin
                    Result := arredonda(( Perc_Prod * EntradasVLR_ICM_SUBS.Value / QUANTIDADE ),2) ;
               end;
          END
          ELSE BEGIN
               if Arredonda(DMApp.ICM_PRESUMIDO_SEM, 2) > 0
               then begin
                    Vl1 := ((( ( Prc_total / Quantidade ) + Vlr_Ipi + Entradas_ItensFRETE.Value ) * DMApp.ICM_PRESUMIDO_SEM )/100) + ( ( Prc_total / Quantidade ) + Vlr_Ipi + Entradas_ItensFRETE.Value);

                    VL1 := ( ( VL1 * 17 ) / 100 );

                    //DIMINUIR O CREDITO DE ICM QUE ENTRA TBM O FRETE
                    Vlr_Frete := ( Entradas_ItensFRETE.Value ) ;

                    VL1 := VL1 - ( vlr_icm ) ;

                    Result := arredonda( VL1, 2) ;
               end
               else begin
                    Result := arredonda(( (Perc_Prod * EntradasVLR_ICM_SUBS.Value) / Quantidade ),2) ;
               end;
          END;
     end
     Else begin
          Result := 0;
     end;
   end;

   function Custo_Acumulativo ( Vlr_IcmSubst, vlr_icm, vlr_Ipi: Real ): Real;
   begin
      if Arredonda(Vlr_IcmSubst,2) > 0
      then begin
           Result := arredonda( ( Entradas_ItensPRC_UNITARIO.Value - Entradas_ItensDESCONTOS.Value )
                    + ((Entradas_ItensTAXAS.Value
                    + Entradas_ItensEMBALAGEM.Value
                    + Entradas_ItensFRETE.Value
                    + Entradas_ItensSEGURO.Value
                    + Vlr_IcmSubst
                    + vlr_ipi)),2);
      end
      else begin
           Result := arredonda( ( Entradas_ItensPRC_UNITARIO.Value - Entradas_ItensDESCONTOS.Value )
                    + ((Entradas_ItensTAXAS.Value
                    + Entradas_ItensEMBALAGEM.Value
                    + Entradas_ItensFRETE.Value
                    + Entradas_ItensSEGURO.Value
                    + Vlr_Icm
                    + vlr_ipi)),2);
      end;
   end;

   function Custo_Simples ( Vlr_IcmSubst, vlr_icm, vlr_Ipi: Real ): Real;
   begin
      if Arredonda(Vlr_IcmSubst,2) > 0
      then begin
           Result := arredonda( ( Entradas_ItensPRC_UNITARIO.Value - Entradas_ItensDESCONTOS.Value )
                    + ((Entradas_ItensTAXAS.Value
                    + Entradas_ItensEMBALAGEM.Value
                    + Entradas_ItensFRETE.Value
                    + Entradas_ItensSEGURO.Value
                    {+ Vlr_IcmSubst
                    + vlr_ipi})),2);
      end
      else begin
           Result := arredonda( ( Entradas_ItensPRC_UNITARIO.Value - Entradas_ItensDESCONTOS.Value )
                    + ((Entradas_ItensTAXAS.Value
                    + Entradas_ItensEMBALAGEM.Value
                    + Entradas_ItensFRETE.Value
                    + Entradas_ItensSEGURO.Value
                    {+ vlr_icm //Credito de Icm
                    + vlr_ipi})),2);
      end;
   end;
Var
   Custo, AUX, prc_total, perc_prod2, vlr_icm, Vlr_Frete, Vlr_IcmSubst,
   vlr_ipi, outros_custos, Quantidade: Extended;
   Indice, Vendedor, Descontos, Propaganda, CustoVariavel, Perc_Reducao_Credito, Perc_Presumido, Perc_Reducao_Debito,
   Perc_Origem, AliquotaIcmsST, AliquotaIcms: Extended ;
   Vl1, Vl2, Perc, Custo_Agregado, CustoMS, Preco_Presumido, Base_Reduzida, DebitoICMSST: Extended ;
begin
  If Entradas_ItensQUANTIDADE.Value <= 0 then
    Quantidade := 1
  else
    Quantidade := Entradas_ItensQUANTIDADE.Value ;

     //
  If Entradas_ItensPRC_UNITARIO.IsNull then
    prc_total := 0
  else
    prc_total := arredonda(Quantidade * Entradas_ItensPRC_UNITARIO.Value,2);

  Vendedor      := ParametrosVENDEDOR.Value       ;
  Descontos     := ParametrosDESCONTOS.Value      ;
  Propaganda    := ParametrosPROPAGANDA.Value     ;
  CustoVariavel := ParametrosCUSTO_VARIAVEL.Value ;

  //Seta o Form
  Seta_Form_Entrada ( Descontos, Propaganda, custoVariavel, Vendedor );
  vlr_ipi := 0;
  //aqui denovo
  vlr_ipi :=((prc_total + Entradas_ItensFRETE.value) * (Entradas_ItensIPI.Value / 100))/Quantidade;
  //Precificado Alterado por Wendel e Alessandro
  If DmaPP.Tipo_Custo = 'P'then
  begin
    //Calculando a Redução //Verificando Anexo I e Anexo II
    if ( not Entradas_ItensPRODUTO.isnull ) then
       Perc_reducao_Credito := Ver_Reducao_Credito ( Entradas_ItensPRODUTO.value )
    else
       Perc_Reducao_Credito := 0;

    vlr_icm := (
                 (
                   (prc_total *
                     ( 1 -
                       ( Perc_Reducao_Credito / 100  )
                     )
                   ) + Entradas_ItensFRETE.value + Entradas_ItensEMBALAGEM.Value
                 )*
                 (Entradas_ItensICM.Value / 100)
               )
               /Quantidade;



    Custo_Agregado := Entradas_ItensPRC_UNITARIO.Value + Entradas_ItensFRETE.value + Entradas_ItensEMBALAGEM.Value +
    Vlr_Ipi + Entradas_ItensTAXAS.Value + Entradas_ItensSEGURO.Value  ;
          //
    Custo := Entradas_ItensPRC_UNITARIO.Value + Entradas_ItensFRETE.value + Entradas_ItensEMBALAGEM.Value +
    Vlr_Ipi + Entradas_ItensTAXAS.Value + Entradas_ItensSEGURO.Value - vlr_icm ;

    //Percentual de origem.. aparentemente...
    if FrmEntradasItens <> nil then
    begin
      if FrmEntradasItens.EdOrigem.Text = 'Indústria' then
        Perc_Origem := 45
      else if FrmEntradasItens.EdOrigem.Text = 'Distribuidor' then
        Perc_Origem := 60
      else if FrmEntradasItens.EdOrigem.Text = 'Construção' then
        Perc_Origem := 31
      else if FrmEntradasItens.EdOrigem.Text = 'Óleo' then
        Perc_Origem := 57
      else
        Perc_Origem := 38 ;
    end;

    //Verificando se é estadual ou Interestadual
    if ((EntradasUF.Value = DmApp.UF ) or ( trim(EntradasUF.Value) = '')) then
    begin
      //É Substituição Tributária?
      if Entradas_ItensCTE.value = 6 then
      begin
        Perc_Presumido := Perc_Origem ;
        AliquotaIcmsST := 17 ;
        AliquotaIcms   := 0;
      end
      else
      begin //Não é Substituição Tributária!
        Perc_Presumido := 0 ;
        AliquotaIcmsST := 0;
        AliquotaIcms   := 17;
      end;

      //Calculando a Redução //Verificando Anexo I e Anexo II
      if ( not Entradas_ItensPRODUTO.isnull ) then
        Perc_reducao_Debito := Ver_Reducao_Debito ( Entradas_ItensPRODUTO.value, 'E' )
      else
        Perc_reducao_Debito := 0;
    end
    else
    begin
      //É Substituição Tributária?
      if Entradas_ItensCTIE.value = 6 then
      begin
        Perc_Presumido := Perc_Origem ;
        AliquotaIcmsST := 17;
        AliquotaIcms   := 0;
      end
      else  //Não é Substituição Tributária!
      begin
        Perc_Presumido := 0 ;
        AliquotaIcmsST := 0;
        AliquotaIcms   := 17 ;
      end;

      //Calculando a Redução //Verificando Anexo I e Anexo II
      if ( not Entradas_ItensPRODUTO.isnull ) then
        Perc_reducao_Debito := Ver_Reducao_Debito ( Entradas_ItensPRODUTO.value, 'I' )
      else
        Perc_reducao_Debito := 0;
    end;

    //Calculando o Perc
    {PERC := (AliquotaIcms + DmApp.PIS + DmApp.COFINS + DmApp.IMPOSTO_RENDA + DmApp.CSLL +
            DmApp.CUSTO_VARIAVEL + DmApp.Vendedor + DmApp.DESP_OPER +
            DmApp.PROPAGANDA )/100;}

    //Modificado para
    {PERC := (Entradas_ItensICM.asFloat + DmApp.PIS + DmApp.COFINS + DmApp.IMPOSTO_RENDA + DmApp.CSLL +
            DmApp.CUSTO_VARIAVEL + DmApp.Vendedor + DmApp.DESP_OPER +
            DmApp.PROPAGANDA )/100;}

    //Terceira verão agora tirando o icms deste PERC
    PERC := (DmApp.PIS + DmApp.COFINS + DmApp.IMPOSTO_RENDA + DmApp.CSLL +
            DmApp.CUSTO_VARIAVEL + DmApp.Vendedor + DmApp.DESP_OPER +
            DmApp.PROPAGANDA )/100;

    //Custo MS = Preco do Fornecedor + ( Custo
    Preco_Presumido := ( Custo_Agregado * ( 1 + ( Perc_Presumido / 100 ))) ;
    Base_Reduzida   := Preco_Presumido * ( 1 - ( ( Perc_Reducao_Debito / 100 )));
    //vamo ve...... vrs original 'Base_Reduzida * ( AliquotaIcmsST / 100 ))'
    DebitoICMSST    := (Base_Reduzida * ( AliquotaIcmsST / 100 )) - vlr_icm;

    //Modificado dia no feriado do carnaval por conta da america agrosseds
    if DebitoICMSST < 0 then
       DebitoICMSST := 0;

    Entradas_ItensICM_SUBS.Value  := DebitoICMSST ;
    {Esse calculo é utiliza o custo bruto do produto, sem estar embutido o valor de icms, pois
    custo é o valor do produto sem o imposto, + o valor de débito de IcmsST que é
    o valor do item (já embutido o ICMS) + o percentual presumido de lucro * 17% que é a aliquota padrão - o valor
    de ICMS que já foi embutido no produto }

   // alterado CustoMS := Custo + DebitoICMSST ;
    CustoMS := Custo_Agregado + DebitoICMSST ;
    Custo := CustoMS ;

    if ( 1 - PERC ) > 0 then
    begin
      {if (Entradas_ItensREDUCAO.asFloat > 0) then
      begin
        CUSTO := CUSTO / ( 1 - (
                              PERC * (Entradas_ItensREDUCAO.asFloat/100)
                              )
                         );
      end
      else}
      CUSTO := (CUSTO / ( 1 - PERC))+Entradas_ItensVLR_ICM.asFloat;
    end
    else
      CUSTO := 0;
  end
  else
  begin
    {calculo invertido não pode ser aplicado no icms da entrada tem de ser o simples
     vlr_icm := (
                 prc_total /
                 (
                   (100 - Entradas_ItensICM.Value )
                   /100
                 )
               )
               /Quantidade - (prc_total/quantidade); }



    perc_prod2 := prc_Total / EntradasVLR_PRODUTOS.Value;
    //calculo simples
    vlr_icm := ((prc_total/quantidade)*Entradas_ItensICM.Value)/100;
    //Calcula O ICMS DE Substituicao
    if Entradas_ItensCTE.Value = 6 then
      Vlr_IcmSubst := Calcula_Icms_Substituicao (  Vlr_Ipi, Prc_total, Quantidade, Vlr_Icm, Perc_Prod2 )
    else
      Vlr_IcmSubst := 0;

    Entradas_ItensICM_SUBS.Value  := Vlr_IcmSubst ;
    outros_custos := arredonda( Vendedor + Descontos + CustoVariavel + Propaganda , 2 );

    //Custo Simples
    If DmaPP.Tipo_Custo = 'S' then
    begin
      Custo := Custo_Simples ( 0, 0, 0);
      Custo  := (custo + ((custo * Outros_Custos)/100));
      if (Arredonda(Vlr_IcmSubst,2) > 0) then
        Custo := Custo + Vlr_IcmSubst + vlr_Ipi
      else
        Custo := Custo + vlr_icm + vlr_Ipi;
    end
    else
    begin
      Custo := Custo_Acumulativo ( Vlr_IcmSubst, vlr_icm, Vlr_Ipi);
      Custo  := (custo + ((custo * Outros_Custos)/100));
    end;

    //Custo  := (custo /((100 - (Outros_Custos + Entradas_ItensICM.asInteger))/100));
    //Custo  := (custo /((100 - Outros_Custos)/100));

  end;

  //Unidade utilizada diferente da unidade padrão, logo será necessário realizar a conversão, aqui doido
  QryValidaProduto.Close ;
  QryValidaProduto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
  QryValidaProduto.ParamByName ('PRODUTO').AsString     := Entradas_ItensProduto.value;
  QryValidaProduto.ParamByName ('VENDEDOR').value     := 0;
  QryValidaProduto.Open;

  if (DMEntradas.Entradas_ItensUNIDADE.asString <> QryValidaProdutoUNIDADE.asString) then
  begin
    //Encontrando a primeira relação de conversão Und de Entrada X Unidade Primaria
    UndConversao.Close;
    UndConversao.ParamByName('und_padrao').value := trim(QryValidaProdutoUND_PRIMARIA.asString);
    UndConversao.ParamByName('und_conversao').value := trim(DMEntradas.Entradas_ItensUNIDADE.asString);
    UndConversao.Open;

    if UndConversaoFATOR.Value = 1 then
    begin
      custo := (custo * UndConversaoQTDE.Value);
      custo := (custo / QryValidaProdutoFATOR_CONVERSAO.value);
    end
    else if UndConversaoFATOR.Value = 2 then
    begin
      custo := (custo / UndConversaoQTDE.Value);
      custo := (custo * QryValidaProdutoFATOR_CONVERSAO.value);
    end;
  end;
  result := CUSTO ;
end;

procedure TDMEntradas.Entradas_ItensCalcFields(DataSet: TDataSet);
var
  IPI : Real;
begin
  //
  Entradas_ItensPRC_TOTAL.Value := Entradas_ItensQUANTIDADE.Value *
                                   Entradas_ItensPRC_UNITARIO.Value;
  //
  if (Entradas_ItensIPI.value > 0) then
    IPI := Entradas_ItensIPI.value
  else
    IPI := Entradas_ItensIPI_PRODUTO.value;

  If Entradas_ItensQUANTIDADE.Value > 0
  then begin

       Entradas_ItensVLR_ICM.value :=  ((Entradas_ItensPRC_TOTAL.asFloat/Entradas_ItensQUANTIDADE.asFloat) * (Entradas_ItensICM.asFloat - Entradas_ItensREDUCAO.AsFloat))/100;

       Entradas_ItensVLR_IPI.Value   := ((Entradas_ItensPRC_TOTAL.Value + Entradas_ItensFRETE.value)*
                                          ( IPI / 100))/Entradas_ItensQUANTIDADE.Value;

       if (Entradas_ItensREDUCAO.asFloat <= 0) then
       begin

         {Entradas_ItensVLR_ICM.Value   := (
                                            Entradas_ItensPRC_TOTAL.Value
                                            /
                                            (
                                              (
                                                100 - Entradas_ItensICM.Value
                                              )
                                              /
                                              100
                                            )
                                          )
                                          /
                                          Entradas_ItensQUANTIDADE.Value
                                          -
                                          (
                                            Entradas_ItensPRC_TOTAL.Value
                                            /
                                            Entradas_ItensQUANTIDADE.Value
                                          );


         Entradas_ItensVLR_IPI.Value   := ((Entradas_ItensPRC_TOTAL.Value + Entradas_ItensFRETE.value)*
                                        ( IPI / 100))/Entradas_ItensQUANTIDADE.Value; }

       end
       else
       begin
         {Entradas_ItensVLR_ICM :=  ((Entradas_ItensPRC_TOTAL.Value/Entradas_ItensQUANTIDADE.Value) * (Entradas_ItensICM.Value - Entradas_ItensREDUCAO.AsFloat))/100;
         Entradas_ItensVLR_ICM.Value   := (
                                            //aplicando a redução
                                            (
                                              Entradas_ItensPRC_TOTAL.Value
                                              *
                                              (
                                                (
                                                  (Entradas_ItensREDUCAO.AsFloat/100)-1
                                                )
                                                * -1 //esse é apenas pra inverter o sinal
                                              )
                                            )
                                            /
                                            (
                                              (
                                                100 - Entradas_ItensICM.Value
                                              )
                                              /
                                              100
                                            )
                                          )
                                          /
                                          Entradas_ItensQUANTIDADE.Value
                                          -
                                          (
                                            (
                                              Entradas_ItensPRC_TOTAL.Value
                                              *
                                              (
                                                (
                                                  (Entradas_ItensREDUCAO.AsFloat/100)-1
                                                )
                                                * -1 //esse é apenas pra inverter o sinal
                                              )
                                            )
                                            /
                                            Entradas_ItensQUANTIDADE.Value
                                          );


         Entradas_ItensVLR_IPI.Value   := ((Entradas_ItensPRC_TOTAL.Value + Entradas_ItensFRETE.value)*
                                          ( IPI / 100))/Entradas_ItensQUANTIDADE.Value; }
       end
  end                                                       //modifiquei o codigo acima, estava ItensIPI coloquei ItensIPI_Produto
  else begin
       Entradas_ItensVLR_ICM.Value   := (Entradas_ItensPRC_TOTAL.Value *
                                        (Entradas_ItensICM.Value / 100));
       //
       Entradas_ItensVLR_IPI.Value   := ((Entradas_ItensPRC_TOTAL.Value + Entradas_ItensFRETE.value )*
                                        (IPI / 100));
  end;
end;

procedure TDMEntradas.Entradas_ItensAfterInsert(DataSet: TDataSet);
begin
  //
  Entradas_ItensCNPJ.Value      := EntradasCNPJ.Value;
  Entradas_ItensNDOCTO.Value    := EntradasNDOCTO.Value;
  Entradas_ItensPESSOA_FJ.Value := EntradasPESSOA_FJ.Value;
  Entradas_ItensICM_SUBS.Value  := 0;
  Entradas_ItensIPI.Value       := 0;
end;

procedure TDMEntradas.EntradasAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TDMEntradas.EntradasAfterInsert(DataSet: TDataSet);
begin
  //
  EntradasCNPJ.Value          := DMApp.Cnpj;
  EntradasDATA_NF.Value       := DMApp.DataHora('D');
  EntradasDATA_REF.Value      := DMApp.DATACAIXA    ;
  EntradasDATA_ENT.Value      := DMApp.DataHora('D');
  EntradasFRETE_LF.Value      := 'N';
  EntradasVLR_DESCONTO.Value  := 0;
  EntradasVLR_FRETE.Value     := 0;
  EntradasVLR_EMBALAGEM.Value := 0;
  EntradasVLR_SEGURO.Value    := 0;
  EntradasTAXAS.Value         := 0;
  EntradasVLR_IPI.Value       := 0;
  EntradasPERC_ICM.Value      := 0;
  EntradasVLR_ICM.Value       := 0;
  EntradasVLR_BC_ICM.Value    := 0;
  EntradasVLR_ICM_SUBS.Value  := 0;
  EntradasVLR_PARC_LC.Value   := 0;
  EntradasLOCAL_ESTOQUE.Value := 1;
  //
  EntradasPROC_QTD.Value      := 'N';
  EntradasPROC_CUSTO.Value    := 'N';
  EntradasPROC_FIN.Value      := 'N';
end;

procedure TDMEntradas.Entradas_ItensPRC_UNITARIOValidate(Sender: TField);
var
  IPI, TotalProduto, Frete : Real;
begin
  //
  RateiaValores;
  Entradas_ItensPRC_CUSTO.Value := CalculaCusto ;
  //aqui o problema TN-580
  Entradas_ItensPRC_VENDA.Value := CalculaPrecoVenda;
  QryValidaProduto.Close ;
  QryValidaProduto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
  QryValidaProduto.ParamByName ('PRODUTO').AsString     := Entradas_ItensProduto.value;
  QryValidaProduto.Open;

  IPI := QryValidaProdutoIPI.value;
  Frete := QryValidaProdutoPERC_FRETE.value;
  TotalProduto := (Entradas_ItensPRC_UNITARIO.asFloat  * Entradas_ItensQUANTIDADE.AsFloat);

end;

procedure TDMEntradas.Entradas_ItensICMValidate(Sender: TField);
begin
  Entradas_ItensPRC_CUSTO.Value := CalculaCusto ;
  Entradas_ItensPRC_VENDA.Value := CalculaPrecoVenda;
end;

procedure TDMEntradas.Entradas_ItensIPIValidate(Sender: TField);
begin
     Entradas_ItensPRC_CUSTO.Value := CalculaCusto ;
     Entradas_ItensPRC_VENDA.Value := CalculaPrecoVenda;
end;

procedure TDMEntradas.Entradas_FatAfterInsert(DataSet: TDataSet);
begin
  //
  Entradas_FatCNPJ.Value       := EntradasCNPJ.Value;
  Entradas_FatNDOCTO.Value     := EntradasNDOCTO.Value;
  Entradas_FatPESSOA_FJ.Value  := EntradasPESSOA_FJ.Value;
  Entradas_FatSEQUENCIAL.Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 0) + 1;
end;

procedure TDMEntradas.EntradasCalcFields(DataSet: TDataSet);
begin
  //
  If EntradasFRETE_LF.value = 'S'
  THEN BEGIN
       EntradasVLR_TOTAL_NF.Value := arredonda(EntradasVLR_PRODUTOS.Value +
                                EntradasVLR_EMBALAGEM.Value +
                                EntradasVLR_SEGURO.Value + EntradasVLR_FRETE.VALUE +
                                EntradasVLR_IPI.Value +
                                EntradasTAXAS.Value -
                                EntradasVLR_DESCONTO.Value + EntradasVLR_ICM_SUBS.VALUE,2);
  END
  ELSE BEGIN
       EntradasVLR_TOTAL_NF.Value := arredonda(EntradasVLR_PRODUTOS.Value +
                                EntradasVLR_EMBALAGEM.Value +
                                EntradasVLR_SEGURO.Value +
                                EntradasVLR_IPI.Value +
                                EntradasTAXAS.Value -
                                EntradasVLR_DESCONTO.Value+EntradasVLR_ICM_SUBS.VALUE,2);
  END;

  EntradasVLR_DIFERENCA.Value := arredonda(EntradasVLR_TOTAL_NF.Value - EntradasENTRADA.Value -
                                 EntradasVLR_PARC_LC.Value,2);
  Entradas_Total_Geral_IDX.Value := EntradasVLR_TOTAL_NF.Value;
end;

procedure TDMEntradas.SelFornecedorBeforeOpen(DataSet: TDataSet);
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

procedure TDMEntradas.EntradasBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString       := DMApp.Cnpj;
       (DataSet as TIBQuery).ParamByName('NDOCTO').asString     := NDocto;
       (DataSet as TIBQuery).ParamByName('PESSOA_FJ').asInteger := PessoaFJ;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString       := DMApp.Cnpj;
       (DataSet as TIBDataSet).ParamByName('NDOCTO').asString     := NDocto;
       (DataSet as TIBDataSet).ParamByName('PESSOA_FJ').asInteger := PessoaFJ;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TDMEntradas.Entradas_ItensPRODUTOValidate(Sender: TField);
Var
   Lote: Integer;
begin
  //
  If Sender.IsNull Then
     Exit ;
  //
  If trim(Sender.Value) = '' Then
     Exit ;

  //BUSCA OS VALORES DO PRODUTO
  QryValidaProduto.Close ;
  QryValidaProduto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
  QryValidaProduto.ParamByName ('PRODUTO').AsString     := Sender.Value ;
  QryValidaProduto.Open;

  if QryValidaProdutoNOME.IsNull Then
  begin
    If FrmEntradasItens <> Nil Then
       FrmEntradasItens.LocProd := True ;

    Exit;
  end
  else
  begin
    //VERIFICA O LOTE
    {If ((Valida_Produto.ParamByName('POSSUI_LOTE').Value = 'S')  and (Entradas_ItensLOTE.asInteger <= 0)) Then
    begin
      Lote := 0;
      SelLote.Close ;

      SelLote.ParamByName ('CNPJ').AsString    := EntradasCNPJ.Value      ;
      SelLote.ParamByName ('CODIGO').AsString  := Sender.Value    ;
      SelLote.Prepare ;
      SelLote.Open ;

      Application.CreateForm(TFrm_Localizar_Lote, Frm_Localizar_Lote);

      Frm_Localizar_Lote.DSource.dataset := DmEntradas.SelLote ;
      if (Frm_Localizar_Lote.showmodal = mrOk ) Then
      Begin
        Lote := (Frm_Localizar_Lote.CampTrecho) ;
      end;

      Frm_Localizar_Lote.free   ;
      Frm_Localizar_Lote := Nil ;

      If Lote <= 0 then
      begin
        MessageDlg('Lote Inválido, Verifique!', mtError, [mbOK], 0);
        Abort;
      end
      else
        Entradas_ItensLOTE.Value := Lote ;
    end;}

       //
    Entradas_ItensNOME_PRODUTO.Value  := QryValidaProdutoNOME.AsString ;
    Entradas_ItensPRC_VENDA_ANT.Value := QryValidaProdutoPRC_VENDA.AsFloat  ;
    Entradas_ItensIPI_PRODUTO.Value   := QryValidaProdutoIPI.AsFloat  ;

    if (QryValidaProdutoMARGEM_BRUTA.AsFloat >= 100) then
      Entradas_ItensPERC_LUCRO.Value    := 99.99
    else
      Entradas_ItensPERC_LUCRO.Value    := QryValidaProdutoMARGEM_BRUTA.AsFloat;

    Entradas_ItensCTE.Value           := QryValidaProdutoCTE.AsInteger         ;
    Entradas_ItensCTIE.Value          := QryValidaProdutoCTIE.AsInteger        ;
    Entradas_ItensSECUNDARIO.Value    := QryValidaProdutoSECUNDARIO.AsString ;
       //
    If Not QryValidaProdutoUNIDADE.IsNull Then
      Entradas_ItensUNIDADE.Value      := QryValidaProdutoUNIDADE.AsString
    Else
      Entradas_ItensUNIDADE.Value      := 'UN';

    Entradas_ItensSUBUNIDADE.Value      := QryValidaProdutoSUBUNIDADE.AsInteger ;
    Entradas_ItensCONVERSAO.Value       := QryValidaProdutoQTDADE_CONVERSAO.AsFloat ;

    If Not QryValidaProdutoATIVO.IsNull Then
    Begin
      If QryValidaProdutoATIVO.AsString = 'N' Then
      Begin
        MessageDlg('Este Produto Não Esta Ativo, Verifique', mtError, [mbOK], 0);
        Abort;
      end;
    end;
  End;

  //Verifica se Ele Já Foi Faturado Nesta Nota
  Geral.Close ;
  Geral.Sql.Clear ;

  Geral.Params.CreateParam ( FtString , 'E', PtInput );
  Geral.Params.CreateParam ( FtString , 'D', PtInput );
  Geral.Params.CreateParam ( FtInteger, 'C', PtInput );
  Geral.Params.CreateParam ( FtString , 'P', PtInput );

  Geral.Sql.Add (' Select * From Est_Entradas_Itens Where Produto = :P and  ');
  Geral.Sql.Add (' CNPJ = :E and NDocto = :D and Pessoa_Fj = :C    ');

  Geral.ParamByName ('E').AsString  := EntradasCNPJ.Value      ;
  Geral.ParamByName ('D').AsString  := EntradasNDOCTO.Value    ;
  Geral.ParamByName ('C').AsInteger := EntradasPESSOA_FJ.Value ;
  Geral.ParamByName ('P').AsString  := Sender.Value            ;

  Geral.Prepare ;

  Geral.Open ;

  If Not Geral.Fields[1].isNull Then
  Begin
    MessageDlg('Este Produto Já Foi Faturado Nesta Nota, Verifique!', mtError, [mbOK], 0);
    Abort;
  End;

  //UNIDADE DE MEDIDA
  SelUnidade.Close ;
  SelUnidade.ParamByName ('CNPJ'     ).AsString    := DmApp.Cnpj                  ;
  SelUnidade.Open    ;
end;

procedure TDMEntradas.EntradasNATUREZAValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     If ( Sender.Value = 0 )
     then Begin
          if FrmEntradas <> nil then
            FrmEntradas.LocNat := True ;
          Exit ;
     end;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );
     Geral.Params.CreateParam ( FtString , 'ES', PtInput );

     Geral.Sql.Add (' Select Codigo From Est_Natureza Where Codigo = :C and CNPJ = :E ');
     Geral.Sql.Add (' And ES = :ES ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;
     Geral.ParamByName ('ES').AsString := 'E'          ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          MessageDlg('Natureza Inexistente, ou esta Não é Uma Nutereza de Entrada!',MtError,[MbOk],0);
          Abort;
     end;
end;

procedure TDMEntradas.EntradasPESSOA_FJValidate(Sender: TField);
begin
     If (not ( Entradas.State in [ DsInsert, DsEdit] )) or ( EntradasPessoa_Fj.IsNull )
     then
         Exit;

     If ( EntradasPessoa_Fj.Value = 0 )
     then Begin
          If FrmEntradas <> Nil
          then begin
               FrmEntradas.LocFor := True ;
               Exit ;
          end;
     end;

     {Valida_Fornecedor.Close ;

     Valida_Fornecedor.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
     Valida_Fornecedor.ParamByName ('CODIGO').AsInteger := DmEntradas.EntradasPessoa_Fj.Value ;

     Valida_Fornecedor.Prepare ;
     Valida_Fornecedor.Open    ;

     If Valida_FornecedorPESSOA_FJ.isNull
     then Begin
          MessageDlg('Fornecedor Inexistente!',MtError,[MbOk],0);
          Valida_Fornecedor.Close ;
          Abort;
     end
     ELSE BEGIN
          EntradasNOME.Value := Valida_FornecedorNOME.Value ;
     END;

     EntradasUF.Value := Valida_FornecedorUF.VALUE ;

     Valida_Fornecedor.Close ;}

     //Verifica se a nota ja foi digitada
     Geral.Close ;
     Geral.Sql.Clear ;
     Geral.Params.Clear ;

     Geral.Params.CreateParam ( FtString,  'CNPJ'     , PtInput );
     Geral.Params.CreateParam ( FtString,  'NDOCTO'   , PtInput );
     Geral.Params.CreateParam ( FtInteger, 'PESSOA_FJ', PtInput );

     Geral.SQL.Add ( ' SELECT CNPJ, NDOCTO, PESSOA_FJ FROM EST_ENTRADAS                   ' );
     Geral.SQL.Add ( ' WHERE CNPJ = :CNPJ AND NDOCTO = :NDOCTO AND PESSOA_FJ = :PESSOA_FJ ' );

     Geral.ParamByName ('CNPJ'     ).AsString    := DmApp.Cnpj              ;
     Geral.ParamByName ('NDOCTO'   ).AsString    := EntradasNDOCTO.Value    ;
     Geral.ParamByName ('PESSOA_FJ').AsInteger   := EntradasPESSOA_FJ.Value ;

     Geral.Prepare ;
     Geral.Open    ;

     If Not Geral.Fields[0].isNull
     then Begin
          MessageDlg('Nota Fiscal Já Cadastrada, Verifique!!',MtError,[MbOk],0);

          NDocto    := EntradasNDOCTO.value ;
          PessoaFJ  := EntradasPESSOA_FJ.value ;

          Entradas.Close ;
          Entradas.OPEN  ;

          if (FrmEntradas <> nil) then
          begin
            FrmEntradas.EdDocumento.Enabled   := true ;
            FrmEntradas.edFornecedor.Enabled  := true ;
            FrmEntradas.edFornecedor.SetFocus ;
          end;

          Abort;
     end;

     Geral.Close ;
end;

procedure TDMEntradas.EntradasBeforeDelete(DataSet: TDataSet);
begin
     If ((EntradasPROC_QTD.Value = 'S') OR (EntradasPROC_CUSTO.Value = 'S') OR (EntradasPROC_FIN.Value = 'S'))
     THEN BEGIN
          MessageDlg('Esta Entrada Esta Fechada, Verifique!', mtError, [mbOK], 0);
          Abort;
     END
     ELSE
         DMApp.LOG_TRANSACOES ( EntradasNDOCTO.TEXT, 'ENT' );
end;

procedure TDMEntradas.Entradas_ItensNewRecord(DataSet: TDataSet);
begin
    

     Entradas_ItensREDUCAO.value   := (EntradasVLR_BC_ICM.asFloat / EntradasVLR_TOTAL_NF.asFloat);
     Entradas_ItensORDEM.Value     := Entradas_Itens.RecordCount   ;
     Entradas_ItensCNPJ.Value      := EntradasCNPJ.Value           ;
     Entradas_ItensNDOCTO.Value    := EntradasNDOCTO.Value         ;
     Entradas_ItensPESSOA_FJ.Value := EntradasPESSOA_FJ.Value      ;
     Entradas_ItensICM_SUBS.Value  := 0;
     Entradas_ItensIPI.Value       := 0;
     Entradas_ItensFRETE.VALUE     := 0;

     If EntradasPERC_ICM.Value > 0
     then
         Entradas_ItensICM.Value := EntradasPERC_ICM.Value
     else begin
          If Not SelNaturezaPERC_ICMS.IsNull
          THEN
              Entradas_ItensICM.Value := SelNaturezaPERC_ICMS.Value ;
     end;

     Entradas_ItensCFOP.VALUE := EntradasNATUREZA.VALUE ;
end;

procedure TDMEntradas.EntradasNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
     For I := 0 to Entradas.FieldCount - 1 do
     begin
          if Entradas.Fields.FIELDS[i].DataType = FtFloat
          then Begin
               Entradas.Fields[i].Value := 0;
          end;
     end;
end;

procedure TDMEntradas.Entradas_ItensUNIDADEValidate(Sender: TField);
begin
     //Verifica se a nota ja foi digitada
     SelSubUnidade.Close ;

     SelSubUnidade.ParamByName ('CNPJ'  ).AsString    := Entradas_ItensCNPJ.Value ;
     SelSubUnidade.ParamByName ('SIGLA' ).AsString    := Entradas_ItensUNIDADE.Value ;

     SelSubUnidade.Prepare ;
     SelSubUnidade.Open    ;
end;

procedure TDMEntradas.Entradas_ItensPERC_LUCROValidate(Sender: TField);
Var
   Perc, Custo, AliquotaICMS: Real ;
begin
{  if (Entradas_ItensPERC_LUCRO.OldValue = Entradas_ItensPERC_LUCRO.Newvalue) then
    exit;

  Entradas_ItensPRC_VENDA.Value :=  CalculaPrecoVenda; }


      { comentado para simplificar
      If DmaPP.Tipo_Custo = 'P' //Precificado Alterado por Wendel e Alessandro
      THEN BEGIN
           //Verificando se é estadual ou Interestadual
           IF (( EntradasUF.Value = DmApp.UF ) or ( trim(EntradasUF.Value) = '' ))
           then begin
                if Entradas_ItensCTE.value = 6 //É Substituição Tributária?
                then begin
                     AliquotaIcms   := 0;
                end
                else begin //Não é Substituição Tributária!
                     AliquotaIcms   := 17;
                end;
           end
           else begin
                if Entradas_ItensCTIE.value = 6 //É Substituição Tributária?
                then begin
                     AliquotaIcms   := 0;
                end
                else begin //Não é Substituição Tributária!
                     AliquotaIcms   := 17 ;
                end;
           end;

           //CALCULANDO PERC
           PERC := (AliquotaIcms + DmApp.PIS + DmApp.COFINS + DmApp.IMPOSTO_RENDA + DmApp.CSLL +
                   DmApp.CUSTO_VARIAVEL + DmApp.Vendedor + DmApp.DESP_OPER +
                   DmApp.PROPAGANDA )/100;

           CUSTO := Entradas_ItensPRC_CUSTO.value * ( 1 - PERC );

           PERC := (AliquotaICMS + DmApp.PIS + DmApp.COFINS + DmApp.IMPOSTO_RENDA + DmApp.CSLL +
                   DmApp.CUSTO_VARIAVEL + DmApp.Vendedor + DmApp.DESP_OPER +
                   DmApp.PROPAGANDA + Sender.value )/100;

           IF ( 1 - PERC ) > 0
           THEN
                Entradas_ItensPRC_VENDA.Value := CUSTO / ( 1 - PERC )
           ELSE BEGIN
                Entradas_ItensPRC_VENDA.Value := 0;
           END;

           IF ( 1 - ( DmApp.DESCONTOS / 100 ) ) > 0
           THEN
                Entradas_ItensPRC_VENDA.Value := Entradas_ItensPRC_VENDA.Value / ( 1 - ( DmApp.DESCONTOS / 100 ))
           ELSE BEGIN
                Entradas_ItensPRC_VENDA.Value := 0;
           END;
     END
     ELSE BEGIN
          Entradas_ItensPRC_VENDA.Value := arredonda(Entradas_ItensPRC_CUSTO.Value + ((Entradas_ItensPRC_CUSTO.Value * Entradas_ItensPERC_LUCRO.value)/100),2);
     END;}
end;

procedure TDMEntradas.Entradas_FatNewRecord(DataSet: TDataSet);
begin
     Entradas_FatCONFERIDA.Value    := 'N' ;
     Entradas_FatCENTRO_CUSTO.Value := EntradasCENTRO_CUSTO.value ;
end;

procedure TDMEntradas.SelEntradaCalcFields(DataSet: TDataSet);
Var
   Aux: String;
begin
{  if SelEntradaNDOCTOINT.value = -1 then
    SelEntradaNDOCTOINT2.value := 0
  else begin
       Aux:= (ExtraiDigitos(SelEntradaNDOCTO.asString)) ;

       If (Aux) = ''
       then
           Aux := '0' ;

       try
          SelEntradaNDOCTOINT2.value := strToInt(Aux);
       except
          SelEntradaNDOCTOINT2.value := 0;
       end;
  end;

  If SelEntradaFRETE_LF.value = 'S'
  THEN BEGIN
       SelEntradaVLR_TOTAL_NF.Value := arredonda(SelEntradaVLR_PRODUTOS.Value +
                                SelEntradaVLR_EMBALAGEM.Value +
                                SelEntradaVLR_SEGURO.Value + SelEntradaVLR_FRETE.VALUE +
                                SelEntradaVLR_IPI.Value +
                                SelEntradaTAXAS.Value -
                                SelEntradaVLR_DESCONTO.Value+SelEntradaVLR_ICM_SUBS.VALUE,2);
  END
  ELSE BEGIN
       SelEntradaVLR_TOTAL_NF.Value := arredonda(SelEntradaVLR_PRODUTOS.Value +
                                SelEntradaVLR_EMBALAGEM.Value +
                                SelEntradaVLR_SEGURO.Value +
                                SelEntradaVLR_IPI.Value +
                                SelEntradaTAXAS.Value -
                                SelEntradaVLR_DESCONTO.Value+SelEntradaVLR_ICM_SUBS.VALUE,2);
  END;}
end;

procedure TDMEntradas.Entradas_ItensCODIGO_INTERNOValidate(Sender: TField);
begin
     //
     If Sender = Nil
     then
         Exit ;

     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString , 'CNPJ', PtInput ) ;
     GERAL.Params.CreateParam ( FtInteger, 'C', PtInput ) ;

     GERAL.Sql.Add (' Select CODIGO From EST_PRODUTOS Where CNPJ = :CNPJ AND Codigo_Interno = :C ');

     GERAL.ParamByName ('C'   ).AsInteger := Sender.Value ;
     GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;

     GERAL.open;

     IF GERAL.FIELDS[0].ISNULL
     THEN BEGIN
          MessageDlg('Produto Não Cadastrado, Verifique!',MtError,[MbOk],0);
          Abort;
     END
     ELSE BEGIN
          Entradas_ItensPRODUTO.Value := GERAL.FIELDS[0].Value ;
     END;
end;

procedure TDMEntradas.DataModuleCreate(Sender: TObject);
begin
     If trim(DmApp.MASCARA_PROD_ENT) <> ''
     then begin
          Entradas_ItensPRC_UNITARIO.DisplayFormat := DmApp.MASCARA_PROD_ENT ; 
     end;
end;

procedure TDMEntradas.Entradas_FatBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert Then
         Entradas_FatSEQUENCIAL.Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);
    if  Entradas_FatDT_VENCTO.isNull then
      Entradas_FatDT_VENCTO.value := date;   
end;

procedure TDMEntradas.Produtos_GradesNewRecord(DataSet: TDataSet);
begin
     Produtos_GradesCNPJ.value       := Entradas_ItensCNPJ.VALUE      ;
     Produtos_GradesNDOCTO.value     := Entradas_ItensNDOCTO.VALUE    ;
     Produtos_GradesPESSOA_FJ.value  := Entradas_ItensPESSOA_FJ.VALUE ;
     Produtos_GradesPRODUTO.Value    := Entradas_ItensPRODUTO.Value   ;
end;

procedure TDMEntradas.Entradas_ItensQUANTIDADEValidate(Sender: TField);
begin
  //Lotes do produto
  Produtos_Grades.Close ;
  Produtos_Grades.Open  ;

  //verifica os lotes
  Lista_Grades.Close ;
  Lista_Grades.ParamByName ( 'CNPJ'    ).AsString := DMAPP.CNPJ   ;
  Lista_Grades.ParamByName ( 'PRODUTO' ).AsString := Entradas_ItensPRODUTO.Value ;
  Lista_Grades.Open ;
  Lista_Grades.FetchAll;

  if Lista_Grades.RecordCount > 0 then
  begin
    //Chama a Tela Para Localizar Naturezas
    Application.CreateForm(TFrmEntradas_Grades, FrmEntradas_Grades);
    FrmEntradas_Grades.Quantidade := Sender.value ;
    FrmEntradas_Grades.LBLQUANTIDADE.CAPTION := FORMATFLOAT ( '###,##0.00', SENDER.VALUE );

    if not FrmEntradas_Grades.showmodal = mrok then
    begin
      Produtos_Grades.Close ;
      FrmEntradas_Grades.free   ;
      FrmEntradas_Grades := Nil ;
      Abort ;
    end;

    FrmEntradas_Grades.free   ;
    FrmEntradas_Grades := Nil ;
  end;


  //verifica os lotes
  Lista_Lotes.Close ;
  Lista_Lotes.ParamByName ('CNPJ').AsString := DMAPP.CNPJ   ;
  Lista_Lotes.ParamByName ('PRODUTO').AsString := Entradas_ItensPRODUTO.Value ;
  Lista_Lotes.Open ;
  Lista_Lotes.FetchAll;

  if Lista_Lotes.RecordCount > 0 then
  begin
    //Chama a Tela Para Localizar Naturezas
    Application.CreateForm(TFrmEntradas_Lotes, FrmEntradas_Lotes);
    FrmEntradas_Lotes.Quantidade := Sender.value ;
    FrmEntradas_Lotes.LBLQUANTIDADE.CAPTION := FORMATFLOAT ( '###,##0.00', SENDER.VALUE );

    if not FrmEntradas_Lotes.showmodal = mrok then
    begin
      FrmEntradas_Lotes.free   ;
      FrmEntradas_Lotes := Nil ;
      Abort ;
    end;

    FrmEntradas_Lotes.free   ;
    FrmEntradas_Lotes := Nil ;
  end;

  Produtos_Lotes.Close ;
  RateiaValores;
  Entradas_ItensPRC_CUSTO.Value := CalculaCusto ;
  Entradas_ItensPRC_VENDA.Value := CalculaPrecoVenda;
end;

procedure TDMEntradas.Produtos_GradesGRADEValidate(Sender: TField);
Var
   Cor, Material: Integer;
begin
     //COR E MATERIAL
     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString , 'CNPJ'   , PtInput ) ;
     GERAL.Params.CreateParam ( FtString , 'PRODUTO', PtInput ) ;
     GERAL.Params.CreateParam ( FtString , 'GRADE'  , PtInput ) ;

     GERAL.Sql.Add (' Select COR, MATERIAL                       ');
     GERAL.Sql.Add (' From EST_PRODUTOS_GRADES                   ');
     GERAL.Sql.Add (' Where CNPJ = :CNPJ AND PRODUTO = :PRODUTO  ');
     GERAL.Sql.Add (' And GRADE = :GRADE                         ');

     GERAL.ParamByName ('CNPJ'      ).AsString  := DmApp.Cnpj                   ;
     GERAL.ParamByName ('PRODUTO'   ).AsString  := Produtos_GradesPRODUTO.Value ;
     GERAL.ParamByName ('GRADE'     ).AsString  := Produtos_GradesGRADE.Value   ;

     GERAL.open;

     IF NOT GERAL.FIELDS[0].ISNULL
     THEN BEGIN
          COR := GERAL.FIELDS[0].VALUE ;
     END
     ELSE BEGIN
          COR := 0 ;
     END;

     IF NOT GERAL.FIELDS[1].ISNULL
     THEN BEGIN
          MATERIAL := GERAL.FIELDS[1].VALUE ;
     END
     ELSE BEGIN
          MATERIAL := 0 ;
     END;

     //COR
     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString , 'CNPJ'    , PtInput ) ;
     GERAL.Params.CreateParam ( FtInteger, 'CODIGO'  , PtInput ) ;

     GERAL.Sql.Add (' Select NOME                                ');
     GERAL.Sql.Add (' From EST_COR                               ');
     GERAL.Sql.Add (' Where CNPJ = :CNPJ AND CODIGO = :CODIGO    ');

     GERAL.ParamByName ('CNPJ'   ).AsString  := DmApp.Cnpj ;
     GERAL.ParamByName ('CODIGO' ).AsInteger := COR        ;

     GERAL.open;

     IF NOT GERAL.FIELDS[0].ISNULL
     THEN BEGIN
          Produtos_GradesCOR.VALUE := GERAL.FIELDS[0].VALUE ;
     END
     ELSE BEGIN
          Produtos_GradesCOR.VALUE := '<NADA>' ;
     END;

     //MATERIAL
     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString , 'CNPJ'    , PtInput ) ;
     GERAL.Params.CreateParam ( FtInteger, 'CODIGO'  , PtInput ) ;

     GERAL.Sql.Add (' Select NOME                                ');
     GERAL.Sql.Add (' From EST_MATERIAL                          ');
     GERAL.Sql.Add (' Where CNPJ = :CNPJ AND CODIGO = :CODIGO    ');

     GERAL.ParamByName ('CNPJ'   ).AsString  := DmApp.Cnpj ;
     GERAL.ParamByName ('CODIGO' ).AsInteger := MATERIAL   ;

     GERAL.open;

     IF NOT GERAL.FIELDS[0].ISNULL
     THEN BEGIN
          Produtos_GradesMATERIAL.VALUE := GERAL.FIELDS[0].VALUE ;
     END
     ELSE BEGIN
          Produtos_GradesMATERIAL.VALUE := '<NADA>' ;
     END;
end;

procedure TDMEntradas.Entradas_ItensPRC_UNITARIO_DOLARValidate(Sender: TField);
begin
     //Verifica se Ele Já Foi Faturado Nesta Nota
     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtDate   , 'D', PtInput );
     Geral.Params.CreateParam ( FtString , 'E', PtInput );

     Geral.Sql.Add (' SELECT VALOR FROM FIN_COTACOES        ');
     Geral.Sql.Add (' WHERE DATA = :D AND SIGLA = :E ');

     Geral.ParamByName ('D').AsDate    := EntradasDATA_REF.Value    ;
     Geral.ParamByName ('E').AsString  := 'U$'  ;

     Geral.Prepare ;
     Geral.Open ;

     If Not Geral.Fields[0].isNull
     Then Begin
          Entradas_ItensPRC_UNITARIO.VALUE := SENDER.VALUE * Geral.Fields[0].VALUE ;
     end
     ELSE BEGIN
          Entradas_ItensPRC_UNITARIO.VALUE := SENDER.VALUE ;
     END;
end;

procedure TDMEntradas.GradesNewRecord(DataSet: TDataSet);
begin
     GradesESTOQUE.Value := 0;
     GradesPRODUTO.Value := Entradas_ItensPRODUTO.Value ;
end;

procedure TDMEntradas.GradesBeforePost(DataSet: TDataSet);
begin
  If Dataset.State = dsInsert Then
     GradesGRADE.Value := DMApp.GerarCodigoGrade( 1 );
end;

procedure TDMEntradas.GradesAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
  GradesGRADE.Value := DMApp.GerarCodigoGrade( 0 );
end;

procedure TDMEntradas.Grades_NumerosNewRecord(DataSet: TDataSet);
begin
     GRADES_NUMEROSCNPJ.Value    := GradesCNPJ.Value    ;
     GRADES_NUMEROSGRADE.Value   := GradesGRADE.value   ;
     GRADES_NUMEROSPRODUTO.Value := GradesPRODUTO.Value ;
end;

procedure TDMEntradas.EntradasVLR_BC_ICMValidate(Sender: TField);
begin
     EntradasVLR_ICM.value := EntradasVLR_BC_ICM.value * EntradasPERC_ICM.value / 100 ;
end;

procedure TDMEntradas.Entradas_ItensSECUNDARIOValidate(Sender: TField);
Var
   Lote: Integer;
begin
  If ((Sender.IsNull) or (trim(Sender.Value) = '') or (Entradas_ItensPRODUTO.value <> '')) Then
    Exit ;

  //BUSCA OS VALORES DO PRODUTO
  Valida_Produto.Close;
  Valida_Produto.StoredProcName := 'VALIDA_PRODUTO_SECUNDARIO' ;
  Valida_Produto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
  Valida_Produto.ParamByName ('PRODUTO').AsString     := Sender.Value ;
  Valida_Produto.ExecProc ;

  If Valida_Produto.ParamByName('NOME').IsNull Then
     Begin
       If FrmEntradasItens <> Nil Then
          FrmEntradasItens.LocProd := True ;
       Exit;
     End
  else
  Begin
    Entradas_ItensNOME_PRODUTO.Value  := Valida_Produto.paramByName('NOME'        ).AsString ;
    Entradas_ItensPRC_VENDA_ANT.Value := Valida_Produto.paramByName('PRC_VENDA'   ).AsFloat  ;
    Entradas_ItensIPI_PRODUTO.Value   := Valida_Produto.paramByName('IPI'         ).AsFloat  ;
    Entradas_ItensPERC_LUCRO.Value    := Valida_Produto.paramByName('MARGEM_BRUTA').AsFloat  ;
    Entradas_ItensCTE.Value           := Valida_Produto.paramByName('CTE').AsInteger         ;
    Entradas_ItensCTIE.Value          := Valida_Produto.paramByName('CTIE').AsInteger        ;
    Entradas_ItensPRODUTO.Value       := Valida_Produto.paramByName('SECUNDARIO'  ).AsString ;
       //
    if Not Valida_Produto.ParamByName('UNIDADE').IsNull Then
      Entradas_ItensUNIDADE.Value      := Valida_Produto.paramByName('UNIDADE').AsString
    else
      Entradas_ItensUNIDADE.Value      := 'UN';

    Entradas_ItensSUBUNIDADE.Value      := Valida_Produto.paramByName('SUBUNIDADE').AsInteger ;
    Entradas_ItensCONVERSAO.Value       := Valida_Produto.paramByName('QTDADE_CONVERSAO').AsFloat ;

    if not Valida_Produto.paramByName('ATIVO').IsNull Then
    begin
      if Valida_Produto.paramByName('ATIVO').AsString = 'N' Then
      begin
        MessageDlg('Este Produto Não Esta Ativo, Verifique', mtError, [mbOK], 0);
        Abort;
      end;
    end;
  end;

  //Verifica se Ele Já Foi Faturado Nesta Nota
  Geral.Close ;
  Geral.Sql.Clear ;
  Geral.Params.CreateParam ( FtString , 'E', PtInput );
  Geral.Params.CreateParam ( FtString , 'D', PtInput );
  Geral.Params.CreateParam ( FtInteger, 'C', PtInput );
  Geral.Params.CreateParam ( FtString , 'P', PtInput );

  Geral.Sql.Add (' Select * From Est_Entradas_Itens Where Produto = :P and  ');
  Geral.Sql.Add (' CNPJ = :E and NDocto = :D and Pessoa_Fj = :C    ');

  Geral.ParamByName ('E').AsString  := EntradasCNPJ.Value      ;
  Geral.ParamByName ('D').AsString  := EntradasNDOCTO.Value    ;
  Geral.ParamByName ('C').AsInteger := EntradasPESSOA_FJ.Value ;
  Geral.ParamByName ('P').AsString  := Sender.Value            ;

  Geral.Prepare ;

  Geral.Open ;

  If Not Geral.Fields[1].isNull Then
  begin
    MessageDlg('Este Produto Já Foi Faturado Nesta Nota, Verifique!', mtError, [mbOK], 0);
    Abort;
  end;

  //UNIDADE DE MEDIDA
  SelUnidade.Close;
  SelUnidade.ParamByName ('CNPJ'     ).AsString    := DmApp.Cnpj                  ;
  SelUnidade.Open;
end;

procedure TDMEntradas.EntradasBeforeEdit(DataSet: TDataSet);
begin
     If ((EntradasPROC_QTD.Value = 'S') OR (EntradasPROC_CUSTO.Value = 'S') OR (EntradasPROC_FIN.Value = 'S'))
     THEN BEGIN
          if FrmEntradas <> nil then
          begin
            if FrmEntradas.pc.ActivePageIndex <> 2
            then begin
                 MessageDlg('Esta Entrada Esta Fechada, Verifique!', mtError, [mbOK], 0);
                 Abort;
            end;
          end;
     end;
end;

procedure TDMEntradas.Entradas_ManualAfterInsert(DataSet: TDataSet);
begin
  //
  Entradas_ManualCnpj.Value     := DMApp.Cnpj;
  Entradas_ManualCODIGO.value   := DMApp.GerarCodigo(UpperCase(Dataset.Name), 0) + 1;
end;

procedure TDMEntradas.Entradas_ManualNewRecord(DataSet: TDataSet);
begin
    Entradas_ManualDATA.value := dmapp.Data_Servidor ;
    Entradas_ManualVLR_CAIXA.VALUE := 0;
    Entradas_ManualVLR_EMBALAGEM.VALUE := 0;
    Entradas_ManualVLR_COMPRA.VALUE := 0;
    Entradas_ManualVLR_IPI.VALUE := 0;
    Entradas_ManualVLR_FRETE_PROPRIO.VALUE := 0;
    Entradas_ManualVLR_FRETE_TERCEIRO.VALUE := 0;
    Entradas_ManualVLR_TRIBUTACAO_CREDITO.VALUE := 0;
    Entradas_ManualVLR_OUTRAS_DESPESAS.VALUE := 0;
    Entradas_ManualQUANTIDADE.VALUE := 0;
    Entradas_ManualMARGEM_LUCRO.VALUE := 0;
    Entradas_ManualVLR_VENDA.VALUE := 0;
    Entradas_ManualVLR_LUCRO.VALUE := 0;
    Entradas_ManualVLR_CUSTO_TOTAL.VALUE := 0;
    Entradas_ManualFECHADA.VALUE := 'N' ;
    Entradas_ManualVLR_ICM_VENDA.Value := 0;
    Entradas_ManualVLR_RENTABILIDADE.Value := 0;
    Entradas_ManualHORA.VALUE := Now ;
end;

procedure TDMEntradas.Entradas_ManualBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert
     Then
         Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);


     //
     Entradas_ManualTOT_DESP_OPERACIONAL.value := Entradas_ManualDesp_Operacional.value ;
     Entradas_ManualTOT_DESP_FEDERAL.value     := Entradas_ManualDesp_Federal.value ;
     Entradas_ManualTOT_FRETE_PROPRIO.value    := Entradas_ManualTotal_Frete_Proprio.value ;
     Entradas_ManualTOT_FRETE_TERCEIRO.value   := Entradas_ManualTotal_Frete_Terceiros.value ;
     Entradas_ManualTOT_ICM_CREDITO.value      := Entradas_ManualIcm_Cred_Unitario.VALUE * Entradas_ManualQUANTIDADE.VALUE ;
     Entradas_ManualTOT_ICM_DEBITO.value       := Entradas_ManualIcm_Deb_Unitario.VALUE * Entradas_ManualQUANTIDADE.VALUE ;
     Entradas_ManualTOT_RENTABILIDADE.value    := Entradas_ManualVLR_RENTABILIDADE.VALUE * Entradas_ManualQUANTIDADE.VALUE ;
     Entradas_ManualTOT_IPI.value              := Entradas_ManualIPI_UNITARIO.VALUE * Entradas_ManualQUANTIDADE.VALUE ;
     Entradas_ManualVLR_CUSTO_TOTAL.Value      := Entradas_ManualCusto_Total.VALUE ;
end;

procedure TDMEntradas.Entradas_ManualPRODUTOValidate(Sender: TField);
begin
     If Sender = Nil
     then
         Exit ;

     GERAL.Close;
     GERAL.Sql.Clear;

     GERAL.Params.CreateParam ( FtString , 'CNPJ', PtInput ) ;
     GERAL.Params.CreateParam ( FtString , 'C', PtInput ) ;

     GERAL.Sql.Add (' Select NOME, MARGEM_BRUTA, ALIQUOTA_ECF, PRC_VENDA From EST_PRODUTOS Where CNPJ = :CNPJ AND CODIGO = :C ');

     GERAL.ParamByName ('C'   ).AsString  := Sender.Value ;
     GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;

     GERAL.open;

     IF GERAL.FIELDS[0].ISNULL
     THEN BEGIN
          MessageDlg('Produto Não Cadastrado, Verifique!',MtError,[MbOk],0);
          Abort;
     END
     ELSE BEGIN
          Entradas_ManualNOME.Value  := GERAL.FIELDS[0].Value ;

          IF NOT GERAL.FIELDS[1].ISNULL
          THEN
              Entradas_ManualMARGEM_LUCRO.Value  := GERAL.FIELDS[1].Value
          ELSE
              Entradas_ManualMARGEM_LUCRO.Value  := 0;

          IF NOT GERAL.FIELDS[3].ISNULL
          THEN BEGIN
              Entradas_ManualVLR_VENDA.Value  := GERAL.FIELDS[3].Value;
              Entradas_ManualVLR_VENDA_ANTERIOR.vALUE := GERAL.FIELDS[3].Value ;
          END
          ELSE BEGIN
              Entradas_ManualVLR_VENDA.Value  := 0;
              Entradas_ManualVLR_VENDA_ANTERIOR.vALUE := 0 ;
          END;

          IF NOT GERAL.FIELDS[2].ISNULL
          THEN BEGIN
               IF (trim(GERAL.FIELDS[2].Value) = 'T1') OR (trim(GERAL.FIELDS[2].Value) = 'FF')
               THEN
                   Entradas_ManualVLR_ICM_VENDA.Value := 17;

               IF trim(GERAL.FIELDS[2].Value) = 'T2'
               THEN
                   Entradas_ManualVLR_ICM_VENDA.Value := 12;

               IF trim(GERAL.FIELDS[2].Value) = 'T3'
               THEN
                   Entradas_ManualVLR_ICM_VENDA.Value := 07;

               IF trim(GERAL.FIELDS[2].Value) = 'T4'
               THEN
                   Entradas_ManualVLR_ICM_VENDA.Value := 04;


               IF trim(GERAL.FIELDS[2].Value) = 'T5'
               THEN
                   Entradas_ManualVLR_ICM_VENDA.Value := 03;

               IF trim(GERAL.FIELDS[2].Value) = 'II'
               THEN
                   Entradas_ManualVLR_ICM_VENDA.Value := 0;

          END
          ELSE
              Entradas_ManualVLR_ICM_VENDA.Value := 0;

     END;
end;

procedure TDMEntradas.Entradas_ManualVLR_EMBALAGEMValidate(Sender: TField);
begin
     if Entradas_ManualVLR_EMBALAGEM.value > 0
     then Begin
         Entradas_ManualVLR_COMPRA.value := (Entradas_ManualVLR_CAIXA.value / Entradas_ManualVLR_EMBALAGEM.value);
     end
     else
         Entradas_ManualVLR_COMPRA.value := Entradas_ManualVLR_CAIXA.value;
end;

procedure TDMEntradas.Entradas_ManualCalcFields(DataSet: TDataSet);
var
   Total_Ipi, Total_Icm_Credito, Total_Icm_Debito, Total_Icms, Total_Despesas, Total_Frete_Proprio,
   Total_Frete_Terceiros, Total_Outras_Despesas, Custo_Total, Total_Despesas_Unit, Total_Classe,
   Total_Custo_Compra, Total_Valor_Venda, Total_Lucro_Bruto, Lucro_Unitario, Lucro_Total, Lucro_Minimo,
   Rentabilidade, Lucro_Liquido,  Custo, Icm_Venda, Margem_Lucro, Custo_Unitario, Custo_Calculado :Real;
begin
    //
    if Entradas_ManualVLR_COMPRA.value > 0
    then begin
         Custo := ((Entradas_ManualVLR_COMPRA.value * Entradas_ManualVLR_EMBALAGEM.value)* Entradas_ManualQUANTIDADE.VALUE);
         Custo_Unitario := Entradas_ManualVLR_COMPRA.value ;
    end
    else begin
         Custo := 0;
    end;

    Margem_Lucro := Entradas_ManualMARGEM_LUCRO.value ;

    Icm_Venda := Entradas_ManualVLR_ICM_VENDA.Value ;

    //IPI UNITARIO
    Total_Ipi := (Custo_Unitario * Entradas_ManualVLR_IPI.value) / 100;
    Entradas_ManualIPI_UNITARIO.VALUE := Total_Ipi ;

    //CREDITO UNITARIO
    Total_Icm_Credito := ( Custo_Unitario * Entradas_ManualVLR_TRIBUTACAO_CREDITO.value ) /100;
    Entradas_ManualICm_Cred_Unitario.Value := Total_Icm_Credito ;

    //ICMS DE VENDA
    Total_Icm_Debito := ( Entradas_ManualVLR_VENDA.VALUE * Icm_Venda ) / 100 ;
    Entradas_ManualIcm_Deb_Unitario.Value := Total_Icm_Debito ;

    //VALOR DO ICMS NA VENDA
    Total_Icms := Total_Icm_Debito - Total_Icm_Credito ;
    Entradas_ManualIcm_Total_Venda.Value := Total_Icms ;

    //TOTAL DE DESPESAS =(pis+confins+imprenda+contsocial+outras+dopera)
    Total_Despesas := DmApp.PIS + DmApp.COFINS + DmApp.IMPOSTO_RENDA + DmApp.CSLL + DmApp.CUSTO_VARIAVEL + DmApp.DESP_OPER;
    Entradas_ManualDespesas_Totais.Value := Total_Despesas ;

    //DESPESAS OPRACIONAIS
    Entradas_ManualDesp_Operacional.VALUE := Entradas_ManualQUANTIDADE.VALUE * ( Entradas_ManualVLR_VENDA.VALUE * DmApp.DESP_OPER ) / 100 ;

    //DESPESAS FEDERAIS
    Entradas_ManualDesp_Federal.VALUE := Entradas_ManualQUANTIDADE.VALUE * ( Entradas_ManualVLR_VENDA.VALUE * ( DmApp.PIS + DmApp.COFINS + DmApp.IMPOSTO_RENDA + DmApp.CSLL + DmApp.CUSTO_VARIAVEL ) ) / 100 ;

    //TOTAL DE DESPESASS UNITARIAS
    Total_Despesas_Unit := ( Entradas_ManualVLR_VENDA.VALUE * Total_Despesas ) / 100 ;
    Entradas_ManualDespesas_Unitarias.Value := Total_Despesas_Unit ;

    //TOTAL DE FRETE PROPRIO
    Total_Frete_Proprio := ( Custo_UNITARIO * Entradas_ManualVLR_FRETE_PROPRIO.value ) / 100;
    Entradas_ManualTotal_Frete_Proprio.Value := Total_Frete_Proprio ;

    //TOTAL DE FRETE DE TERCEIROS
    Total_Frete_Terceiros := ( Custo_UNITARIO  * Entradas_ManualVLR_FRETE_TERCEIRO.value ) / 100;
    Entradas_ManualTotal_Frete_Terceiros.Value := Total_Frete_Terceiros ;

    //TOTAL DE OUTRAS DESPESAS
    Total_Outras_Despesas := ( Custo_Unitario * Entradas_ManualVLR_OUTRAS_DESPESAS.value ) / 100;
    Entradas_ManualOutras_Despesas_Unitario.Value := Total_Outras_Despesas ;

    //CUSTO TOTAL
    Custo_Total := ( CUSTO_UNITARIO + Total_Frete_Proprio + Total_Frete_Terceiros + Total_Ipi + Total_Outras_Despesas + Total_Despesas_Unit + Total_Icms);
    Entradas_ManualCusto_Total.Value := Custo_Total ;

    //VALOR DE VENDA
    Custo_Calculado := Entradas_ManualVLR_COMPRA.VALUE + Entradas_ManualIPI_UNITARIO.value + Entradas_ManualTotal_Frete_Proprio.value +
    Entradas_ManualTotal_Frete_Terceiros.value + Entradas_ManualOutras_Despesas_Unitario.value ;

    Entradas_ManualVLR_VENDA_CALCULADO.VALUE := Custo_Calculado + (( Custo_Calculado * Entradas_ManualMARGEM_LUCRO.value ) / 100 );

    //RENTABILIDADE DA CLASSE ( Margem de Lucro vem do Cadastro de Produtos
    Total_Classe := ( Margem_Lucro * Custo_Total ) / 100;
    Entradas_ManualTotal_Classe.Value := Total_Classe ;

    //TOTAL DO CUSTO DE COMPRA
    Total_Custo_Compra := (( Entradas_ManualVLR_COMPRA.VALUE ) * Entradas_ManualQUANTIDADE.VALUE ) ;
    Entradas_ManualTotal_Custo_Compra.Value := Total_Custo_Compra ;

    //TOTAL OBTIDO COM A VENDA
    Total_Valor_Venda := ( Entradas_ManualVLR_VENDA.VALUE * Entradas_ManualQUANTIDADE.VALUE );
    Entradas_ManualTotal_Valor_Venda.Value := Total_Valor_Venda ;

    //TOTAL OBTIDO COM A VENDA MENOS O CUSTO
    Total_Lucro_Bruto := Total_Valor_Venda - Total_Custo_Compra ;
    Entradas_ManualLucro_Bruto.Value := Total_Lucro_Bruto ;

    //LUCRO UNITARIO
    Lucro_Unitario := Entradas_ManualVLR_VENDA.VALUE - Custo_Total ;
    Entradas_ManualLucro_Unitario.Value := Lucro_Unitario ;

    //LUCRO TOTAL
    Lucro_Total := Lucro_Unitario * Entradas_ManualQUANTIDADE.VALUE ;
    Entradas_ManualLucro_Total.Value := Lucro_Total ;

    //LUCRO MINIMO
    Lucro_Minimo := ARREDONDA((( Margem_Lucro * Custo_Total ) / 100 )* Entradas_ManualQUANTIDADE.VALUE,4) ;
    Entradas_ManualLucro_Minimo.Value := Lucro_Minimo ;

    //RENTABILIDADE
    If Custo > 0
    then begin
         Rentabilidade := ARREDONDA(( Lucro_Unitario / Custo ) * 100 ,2);
         Entradas_ManualRentabilidade.Value := Rentabilidade ;
    end
    else begin
         Rentabilidade := 0 ;
         Entradas_ManualRentabilidade.Value := Rentabilidade ;
    end;

    //LUCRO LIQUIDO
    Lucro_Liquido := ARREDONDA(( Entradas_ManualVLR_LUCRO.VALUE * Entradas_ManualQUANTIDADE.VALUE ),4) ;
    Entradas_ManualLucro_Liquido.Value := Lucro_Liquido  ;
end;

procedure TDMEntradas.Entradas_ManualFORNECEDORValidate(Sender: TField);
begin
     Valida_Fornecedor.Close ;

     Valida_Fornecedor.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
     Valida_Fornecedor.ParamByName ('CODIGO').AsInteger := SENDER.VALUE ;

     Valida_Fornecedor.Prepare ;
     Valida_Fornecedor.Open    ;

     If Valida_FornecedorPESSOA_FJ.isNull
     then Begin
          MessageDlg('Fornecedor Inexistente!',MtError,[MbOk],0);
          Valida_Fornecedor.Close ;
          Abort;
     end
     ELSE BEGIN
          Entradas_ManualNOME_FORNECEDOR.Value := Valida_FornecedorNOME.Value ;
     END;

     Valida_Fornecedor.Close ;
end;

function TDMEntradas.Ver_Reducao_Debito ( Produto: String; Local: String ): Real;
Var
   Codigo: Integer;
begin
     QryValidaProduto.Close ;
     QryValidaProduto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
     QryValidaProduto.ParamByName ('PRODUTO').AsString     := Produto ;
     QryValidaProduto.Open;

     If QryValidaProdutoREDUCAO.IsNull Then
     Begin
         Codigo := 0;
     End
     Else
     Begin
         Codigo := QryValidaProdutoREDUCAO.Value ;
     END;



     //
     SelReducao.Close ;

     SelReducao.ParamByName('CNPJ'  ).AsString  := DmApp.Cnpj ;
     SelReducao.ParamByName('CODIGO').AsInteger := Codigo ;

     SelReducao.Open  ;

     if Local = 'E' //Estadual
     then begin
          result := SelReducaoPERC_ESTADUAL.value ;
     end
     else begin
          //Interestadual
          result := SelReducaoPERC_INTERESTADUAL.value ;
     end;

     SelReducao.Close ;
end;

function TDMEntradas.Ver_Reducao_Credito (Produto: String): Real;
Var
   Codigo: Integer;
begin
     QryValidaProduto.Close ;
     QryValidaProduto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
     QryValidaProduto.ParamByName ('PRODUTO').AsString     := Produto ;
     QryValidaProduto.Open;

     If QryValidaProdutoREDUCAO.IsNull Then
       Begin
         Codigo := 0;
       End
     Else
       Begin
         Codigo := QryValidaProdutoREDUCAO.Value ;
       END;



     SelReducao.Close ;
     SelReducao.ParamByName('CNPJ'  ).AsString  := DmApp.Cnpj ;
     SelReducao.ParamByName('CODIGO').AsInteger := Codigo ;
     SelReducao.Open  ;

     result := SelReducaoPERC_CONTRIBUINTE.value ;

     SelReducao.Close ;
end;

function TDMEntradas.CalculaPrecoVenda: Real;
begin
  if (DmaPP.Tipo_Custo = 'P') then
  begin
    //aqui boy
    if (Entradas_ItensPERC_LUCRO.Value >= 100) then
    begin
      Application.Messagebox('O margem de lucro sobre o preço de venda deverá ser inferior a 100%. Redefina a margem.','Aviso',mb_ok+mb_iconerror);
      Result := Entradas_ItensPRC_CUSTO.Value/((100 - 99.99)/100);
    end
    else
      Result :=  Entradas_ItensPRC_CUSTO.Value/((100 - Entradas_ItensPERC_LUCRO.Value)/100);
  end
  else
    Result :=  Entradas_ItensPRC_CUSTO.Value + ((Entradas_ItensPRC_CUSTO.Value * Entradas_ItensPERC_LUCRO.Value)/100);
end;

function TDMEntradas.CalculaPctPrcVenda: Real;
begin
  //VlrLucro = lvrCusto / ((100-PctCusto)/100);
  if ((DmaPP.Tipo_Custo = 'P') and (Entradas_ItensPRC_VENDA.value > 0)) then
    result := 100 - (100 * (Entradas_ItensPRC_CUSTO.Value/Entradas_ItensPRC_VENDA.value))
  else if (Entradas_ItensPRC_VENDA.value > 0) then
    Result :=  ((Entradas_ItensPRC_VENDA.value - Entradas_ItensPRC_CUSTO.Value) * 100)/Entradas_ItensPRC_CUSTO.Value;
end;

procedure TDMEntradas.LotesAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDMEntradas.LotesNewRecord(DataSet: TDataSet);
begin
  GradesESTOQUE.Value := 0;
  GradesPRODUTO.Value := Entradas_ItensPRODUTO.Value ;
end;

procedure TDMEntradas.RateiaValores;
var
  quantidade,prc_total, perc_prod, vlr_ipi : real;
begin
  If Entradas_ItensQUANTIDADE.Value <= 0 then
    Quantidade := 1
  else
    Quantidade := Entradas_ItensQUANTIDADE.Value ;

  If Entradas_ItensPRC_UNITARIO.IsNull then
    prc_total := 0
  else
    prc_total := arredonda(Quantidade * Entradas_ItensPRC_UNITARIO.Value,2);

  vlr_ipi := ((prc_total + Entradas_ItensFRETE.value) * (Entradas_ItensIPI.Value / 100))/Quantidade;
  Entradas_ItensFRETE.value := Calcula_Frete ( Quantidade, Vlr_Ipi, Prc_total );
  perc_prod := prc_Total / EntradasVLR_PRODUTOS.Value;
  Entradas_ItensTAXAS.Value     := arredonda((EntradasTAXAS.Value * perc_prod)/Quantidade,6);
  Entradas_ItensDESCONTOS.Value := arredonda((EntradasVLR_DESCONTO.Value * perc_prod)/Quantidade,6);
  Entradas_ItensEMBALAGEM.Value := arredonda((EntradasVLR_EMBALAGEM.Value * perc_prod)/Quantidade,6);
  Entradas_ItensSEGURO.Value    := arredonda((EntradasVLR_SEGURO.Value * perc_prod)/Quantidade,6);
  Entradas_ItensFRETE.value  := (Entradas_ItensFRETE.value / Quantidade);
end;

procedure TDMEntradas.Produtos_LotesNewRecord(DataSet: TDataSet);
begin
  Produtos_LOTESCNPJ.value       := Entradas_ItensCNPJ.VALUE;
  Produtos_LOTESNDOCTO.value     := Entradas_ItensNDOCTO.VALUE;
  Produtos_LOTESPESSOA_FJ.value  := Entradas_ItensPESSOA_FJ.VALUE ;
  Produtos_LOTESPRODUTO.Value    := Entradas_ItensPRODUTO.Value;
end;

procedure TDMEntradas.Produtos_LotesBeforeOpen(DataSet: TDataSet);
begin
  Produtos_LOTES.parambyname('cnpj').value       := Entradas_ItensCNPJ.VALUE;
  Produtos_LOTES.parambyname('ndocto').value      := Entradas_ItensNDOCTO.VALUE;
  Produtos_LOTES.parambyname('produto').value      := Entradas_ItensPRODUTO.Value;
  Produtos_LOTES.parambyname('pessoa').value      := Entradas_ItensPESSOA_FJ.VALUE;
end;

procedure TDMEntradas.Entradas_FatAfterPost(DataSet: TDataSet);
begin
  if FrmEntradas <> nil then
    FrmEntradas.Calcular_Parcelas;
end;

procedure TDMEntradas.Entradas_FatBeforeDelete(DataSet: TDataSet);
begin
  if FrmEntradas <> nil then
    FrmEntradas.Calcular_Parcelas;
end;

procedure TDMEntradas.Entradas_ItensPRC_VENDAValidate(Sender: TField);
begin
{ if Entradas_ItensPRC_VENDA.OldValue =  Entradas_ItensPRC_VENDA.NewValue then
   Entradas_ItensPERC_LUCRO.value := CalculaPctPrcVenda;}
end;

procedure TDMEntradas.Parcela_Entradas(CFOP, Forma :Integer;Data:TDate);

          FUNCTION VALORAUXILIAR ( VALOR: REAL ): REAL;
          VAR
             UltimaCasa, PenultimaCasa : String;
             CASA: INTEGER;
          BEGIN
               //ULTIMA CASA DECIMAL
               IF POS (',', FLOATTOSTR(VALOR) ) = (LENGTH(FLOATTOSTR(VALOR))-1) THEN
               BEGIN
                 ULTIMACASA := '0';

                 IF ( LENGTH(FLOATTOSTR(VALOR)) = 1 ) THEN
                   PENULTIMACASA := '0'
                 ELSE
                   PENULTIMACASA := COPY(FLOATTOSTR(VALOR), LENGTH(FLOATTOSTR(VALOR)), 1);
               END
               ELSE
               BEGIN
                 IF POS (',', FLOATTOSTR(VALOR)) = 0 THEN
                 BEGIN
                   ULTIMACASA    := '0';
                   PENULTIMACASA := '0';
                 END
                 ELSE
                 BEGIN
                   ULTIMACASA := COPY(FLOATTOSTR(VALOR),length(FLOATTOSTR(VALOR)), 1);
                   PENULTIMACASA := COPY(FLOATTOSTR(VALOR),length(FLOATTOSTR(VALOR)) - 1, 1);
                 END;
               END;

               CASA := STRTOINT ( ULTIMACASA );

               CASE CASA OF
               1..5 :BEGIN
                       ULTIMACASA := '5' ;
                       CASA       := 0   ;
                     END;
               6..9 :BEGIN
                       ULTIMACASA := '0' ;
                       CASA       := 1   ;
                  END;
               0    :BEGIN
                       ULTIMACASA := '0' ;
                       CASA       := 0   ;
                     END;
               END;

               VALOR := TRUNC ( VALOR );

               IF CASA = 1
               THEN BEGIN
                    CASE PENULTIMACASA[1] OF
                    '1': PENULTIMACASA := '2' ;
                    '2': PENULTIMACASA := '3' ;
                    '3': PENULTIMACASA := '4' ;
                    '4': PENULTIMACASA := '5' ;
                    '5': PENULTIMACASA := '6' ;
                    '6': PENULTIMACASA := '7' ;
                    '7': PENULTIMACASA := '8' ;
                    '8': PENULTIMACASA := '9' ;
                    '9': BEGIN
                              PENULTIMACASA := '0' ;
                              VALOR := VALOR + 1;
                         END;
                    END;
               END;

               RESULT := VALOR + STRTOFLOAT('0,' + PENULTIMACASA + ULTIMACASA);

          END;
Var
   Total, Valor, Sobra, fValor : Real;
   SaldoRest, TotalVenda                 : Real;
   Parcelas, Intervalo, I, J : Integer;
   Vencimento, DataBase        : TDateTime;
   financeiro, entrada : string;

begin
 with dmVendas2 do
 begin
    //Verificando se faturamento irá gerar registros financeiros, contas á receber ou contas à pagar
    qryAux.close;
    qryAux.sql.text := ' select coalesce(nt.gera_financeiro,''S'') gera_financeiro from est_natureza nt '+
                       ' where nt.cnpj = :cnpj and nt.codigo = :cfop ';
    qryAux.parambyname('cnpj').value := dmapp.cnpj;
    qryAux.parambyname('cfop').value := cfop;
    qryAux.open;
    financeiro := qryAux.fieldbyname('gera_financeiro').value;

    if (financeiro = 'N') then
    begin
      Application.MessageBox('CFOP do faturamento relacionado não permite parcelamento. Verifique','Aviso',mb_iconerror+mb_ok);
      exit;
    end;

    //Apaga as Parcelas da Venda
    //DmApp.Apaga_Parcelas_Venda(DmApp.Cnpj, FaturaVendasCODIGO.Value);
    Entradas_Fat.Close;
    Entradas_Fat.Open;
    //Faz o Parcelamento Automático das Vendas

    Total := Arredonda(EntradasVLR_TOTAL_NF.AsFloat,2) ;

    Valida_Forma.Close ;
    Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
    Valida_Forma.ParamByName ('CODIGO').AsInteger := Forma;
    Valida_Forma.Open ;

    if Valida_FormaINTERVALO_PRE_DEFINIDO.value = 'S' then
    begin
      Forma_Pagto_Parcelas.Close;
      Forma_Pagto_Parcelas.ParamByName('codigo').value := Valida_FormaCODIGO.value;
      Forma_Pagto_Parcelas.ParamByName('cnpj').value := Valida_FormaCNPJ.value;
      Forma_Pagto_Parcelas.Open;
      Forma_Pagto_Parcelas.FetchAll;
    end;
     //Saldo Restante
    SaldoRest := Total ;

     //Numero de Parcelas
    Parcelas  := Valida_FormaNPARCELAS.Value ;
    J := Parcelas ;



   If Parcelas > 0 then
     Valor := (arredonda((Total / Parcelas),2))
   else
     Valor := 0;

   VALOR := VALORAUXILIAR (VALOR);

   //A PRIMEIRA PARCELA DEVERÁ SER A MENOR
   Valor := Total - Valor * ( Parcelas - 1);

   //Intervalo
   Intervalo := Valida_FormaINTERVALO.Value ;

   //Contador
   I := 1;

   Vencimento := Data;//DmApp.Data_Servidor;

   DataBase := Vencimento;

   while I <= J do
   Begin
     Entradas_Fat.Append;
     if Valida_FormaINTERVALO_PRE_DEFINIDO.value = 'S' then
     begin
       Forma_Pagto_Parcelas.Locate('PARCELA',I,[loPartialKey, loCaseInsensitive]);
       Intervalo := Forma_Pagto_ParcelasDIAS_VENCIMENTO.AsInteger;
       vencimento := DataBase;
       if (Intervalo = 0) then
       begin
         Application.MessageBox('Erro na configuração de parcelamento da forma de pagamento. Verifique','Aviso',mb_iconerror+mb_ok);
         exit;
       end;
     end;

     if (Valida_FormaVENCTO_FIXO.Value = 'S') then
       Vencimento := Valida_FormaDT_VENCTO_FIXO.value
     else
       Vencimento := Vencimento + Intervalo;

     Entradas_FatTIPO_DOCTO.Value := DMEntradas.EntradasTIPO_DOCTO.Value;
     Entradas_FatVALOR.Value   := ARREDONDA(Valor,2);
     Entradas_FatDT_VENCTO.Value  := Vencimento ;
     Entradas_FatPARCELA.Value := IntToStr(I) + '/' + IntToStr(J) ;
     Entradas_FatCOD_CREDOR.value := EntradasPESSOA_FJ.value;
     Entradas_FatDUPLICATA.value := EntradasNDOCTO.value;
     Entradas_FatOBSERVACAO.value := 'Ref. NF Ent. '+EntradasNDOCTO.asString;

     SaldoRest := ARREDONDA(SaldoRest - Valor,2) ;
     Parcelas := Parcelas - 1 ;

     IF Parcelas > 0 THEN
       Valor := ARREDONDA(SaldoRest / Parcelas,2)  ;

     IF PARCELAS <> 1 THEN
       VALOR := VALORAUXILIAR ( VALOR );

     Entradas_Fat.Post ;

     I := I + 1;
   end;
 end;
end;

procedure TDMEntradas.Apagar_Parcelas;
begin
  with dmEntradas do
  begin
    try
      ApagaParcelas.parambyname('cnpj').value := dmapp.cnpj;
      ApagaParcelas.parambyname('pessoa_fj').value := EntradasPESSOA_FJ.value;
      ApagaParcelas.parambyname('ndocto').value := EntradasNDOCTO.value;
      ApagaParcelas.ExecQuery;
    except
      application.messagebox('Erro ao tentar excluir as parcelas','Aviso',mb_iconerror+mb_ok);
      exit;
    end
  end;

  Entradas_Fat.Close;
  Entradas_Fat.Open;
end;

procedure TDMEntradas.EntradasCOD_FORMA_PAGTOValidate(Sender: TField);
begin
  If Sender.IsNull Then
    Exit ;


  dmVendas2.Valida_Forma.Close ;
  dmVendas2.Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
  dmVendas2.Valida_Forma.ParamByName ('CODIGO').AsInteger := Sender.Value ;
  dmVendas2.Valida_Forma.Open ;

  if dmVendas2.Valida_FormaCODIGO.isNull then
  Begin
    MessageDlg('Forma de Pagamento Inexistente!', mtError, [mbOK], 0);
    Abort;
  end;

     //Apaga Parcelas
  Apagar_Parcelas;

end;




end.
