unit Auto_Importa_Bemacash_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar,   StdCtrls, ExtCtrls, dxCntner, dxEditor, dxEdLib,
  ComCtrls,  ActnList, dbtables, db, IBCustomDataSet, IBQuery,
    IBStoredProc, cxPropertiesStore, dxExEdtr, FileCtrl,
  DBClient, Grids, DBGrids, dxmdaset, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxContainer, cxProgressBar, cxLabel,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons;

type
  TFrmAutoImportaBemaCash = class(TForm)
    DIR: TOpenDialog;
    Actions: TActionList;
    ActFechar: TAction;
    ActAbre: TAction;
    ActExporta: TAction;
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
    qryVendas: TIBQuery;
    qryVendaItens: TIBQuery;
    qryContasReceber: TIBQuery;
    qryContasReceberCNPJ: TIBStringField;
    qryContasReceberCODIGO: TIntegerField;
    qryContasReceberANO: TSmallintField;
    qryContasReceberPESSOA_FJ: TIntegerField;
    qryContasReceberDT_EMISSAO: TDateTimeField;
    qryContasReceberDT_VENCTO: TDateTimeField;
    qryContasReceberDT_LANCTO: TDateTimeField;
    qryContasReceberDOCTO: TIBStringField;
    qryContasReceberPARCELA: TIBStringField;
    qryContasReceberHISTORICO: TIBStringField;
    qryContasReceberVALOR: TFloatField;
    qryContasReceberVLR_PARCIAL: TFloatField;
    qryContasReceberJUROS_REC: TFloatField;
    qryContasReceberDESCONTOS: TFloatField;
    qryContasReceberBOLETO: TIBStringField;
    qryContasReceberORIGEM: TIBStringField;
    qryContasReceberCODIGO_VN: TIntegerField;
    qryContasReceberANO_VN: TSmallintField;
    qryContasReceberAVISO: TIntegerField;
    qryContasReceberDT_AVISO: TDateTimeField;
    qryContasReceberSELECIONADO: TIBStringField;
    qryContasReceberFATURA: TIntegerField;
    qryContasReceberTIPO_DOCTO: TIBStringField;
    qryContasReceberNUMBOLETO: TIntegerField;
    qryContasReceberNOME: TIBStringField;
    qryContasReceberNUMDUPLICATA: TIntegerField;
    qryContasReceberMOEDA1: TFloatField;
    qryContasReceberMOEDA2: TFloatField;
    qryContasReceberPARCIAL: TFloatField;
    qryContasReceberCODIGO_TRC: TIntegerField;
    qryContasReceberJUROS_PARCIAL: TFloatField;
    qryContasReceberDATA_ULT_BAIXA: TDateTimeField;
    qryContasReceberCOBRADOR: TIntegerField;
    qryContasReceberFLUXO_CAIXA: TDateTimeField;
    qryContasReceberLOCAL_COBRANCA: TIntegerField;
    qryContasReceberVLR_ORIG_ALT: TIBStringField;
    qryContasReceberBLT_NOSSO_NUM: TIBStringField;
    qryContasReceberBLT_BANCO: TIntegerField;
    qryContasReceberBLT_REM_GERADA: TIBStringField;
    qryContasReceberNDOC: TLargeintField;
    qryContasReceberARQUIVO_MORTO: TIBStringField;
    qryContasReceberVALOR_NOMINAL: TFloatField;
    qryContasReceberBLT_NUM_IMP: TSmallintField;
    qryContasReceberCOD_INDEXADOR: TIntegerField;
    qryContasReceberIDX_DATABASE: TDateField;
    qryContasReceberIDX_COTACAO: TFloatField;
    qryContasReceberIDX_QTDE: TFloatField;
    qryContasReceberIDX_VLR_PARCIAL: TFloatField;
    qryContasReceberACT_TOTAL_RECEBER: TFloatField;
    qryContasReceberCOD_CONFIG_TITULO: TIntegerField;
    qryVendasCNPJ: TIBStringField;
    qryVendasCODIGO: TIntegerField;
    qryVendasDATA: TDateField;
    qryVendasFECHADA: TIBStringField;
    qryVendasHISTORICO: TIBStringField;
    qryVendasPESSOA_FJ: TIntegerField;
    qryVendasUSUARIO: TIntegerField;
    qryVendasVENDEDOR: TIntegerField;
    qryVendasNATUREZA: TIntegerField;
    qryVendasENVIADA_CX: TIBStringField;
    qryVendasFORMA_PGTO: TIntegerField;
    qryVendasNUM_NF: TIntegerField;
    qryVendasNUM_CUPOM: TIntegerField;
    qryVendasPROPRIEDADE: TIntegerField;
    qryVendasCONVENIADO: TIntegerField;
    qryVendasTIPO_DOCTO: TIBStringField;
    qryVendasLOCAL_COBRANCA: TIntegerField;
    qryVendasDESC_ACRES: TFloatField;
    qryVendasENTRADA: TFloatField;
    qryVendasDINHEIRO: TFloatField;
    qryVendasCHEQUE: TFloatField;
    qryVendasCARTAO: TFloatField;
    qryVendasTICKET: TFloatField;
    qryVendasTOTAL: TFloatField;
    qryVendasOBSERVACAO: TIBStringField;
    qryVendasVLR_PARC_LC: TFloatField;
    qryVendasTERCEIRO: TIntegerField;
    qryVendasCARGA: TIntegerField;
    qryVendasVOLUME: TFloatField;
    qryVendasPESO: TFloatField;
    qryVendasREQUISICAO: TIBStringField;
    qryVendasDESCRICAO: TBlobField;
    qryVendasTIPO_VENDA: TIBStringField;
    qryVendasNOME_CONSUMIDOR: TIBStringField;
    qryVendasORCAMENTO: TIntegerField;
    qryVendasTROCO: TFloatField;
    qryVendasLOCAL: TIntegerField;
    qryVendasNOME: TIBStringField;
    qryVendasDATA_CAIXA: TDateTimeField;
    qryVendasCONTA_CAIXA: TIntegerField;
    qryVendasCANCELADA: TIBStringField;
    qryVendasTOTAL_NOTA: TFloatField;
    qryVendasBASE_ICM: TFloatField;
    qryVendasICM: TFloatField;
    qryVendasBASE_ICM_SUBST: TFloatField;
    qryVendasVALOR_ICM_SUBST: TFloatField;
    qryVendasFRETE: TFloatField;
    qryVendasSEGURO: TFloatField;
    qryVendasDESPESAS: TFloatField;
    qryVendasIPI: TFloatField;
    qryVendasAPRAZO: TFloatField;
    qryVendasSELECIONADA: TIBStringField;
    qryVendasDUPLICATA: TIntegerField;
    qryVendasBANCO: TIBStringField;
    qryVendasRECEBIDAS: TFloatField;
    qryVendasCONTROLA_PLACA: TIBStringField;
    qryVendasCONTROLA_KM: TIBStringField;
    qryVendasASSINA_NOTA: TIBStringField;
    qryVendasKM_ATUAL: TFloatField;
    qryVendasNOME_PROPRIEDADE: TIBStringField;
    qryVendasNOME_VENDEDOR: TIBStringField;
    qryVendasNOME_NATUREZA: TIBStringField;
    qryVendasNOME_TERCEIRO: TIBStringField;
    qryVendasNOME_FORMA: TIBStringField;
    qryVendasUF: TIBStringField;
    qryVendasVALIDADE: TDateTimeField;
    qryVendasMEDIA_KM: TFloatField;
    qryVendasDOCUMENTOS_CONSUMIDOR: TIBStringField;
    qryVendasENDERECO_CONSUMIDOR: TIBStringField;
    qryVendasTURNO: TIntegerField;
    qryVendasHORA: TTimeField;
    qryVendasNAO_COBR_JUR_ATE: TIntegerField;
    qryVendasSERIE: TIBStringField;
    qryVendasDESCONTOS_CONCEDIDOS: TFloatField;
    qryVendasNOME_CONVENIO: TIBStringField;
    qryVendasDT_EMISSAO_AGRUPADA: TDateTimeField;
    qryVendasTRANSPORTADORA: TIntegerField;
    qryVendasDATA_CANCELAMENTO: TDateTimeField;
    qryVendasTOTAL_FISCAL: TFloatField;
    qryVendasCONS_REV: TIBStringField;
    qryVendasIRRF: TFloatField;
    qryVendasINSS: TFloatField;
    qryVendasPIS_COFINS_CSLL: TFloatField;
    qryVendasISS: TFloatField;
    qryVendasVALE_TROCO: TIBStringField;
    qryVendasCIDADE_CONSUMIDOR: TIBStringField;
    qryVendasPGTO_FRETE: TIBStringField;
    qryVendasBAIRRO_CONSUMIDOR: TIBStringField;
    qryVendasFONE_CONSUMIDOR: TIBStringField;
    qryVendasMESA: TIntegerField;
    qryVendasDESCTO_RES: TFloatField;
    qryVendasCOMPROMETER_ESTOQUE: TIBStringField;
    qryVendasID_AGRUPADOR: TIntegerField;
    qryVendasDESCTO_ICMS: TFloatField;
    qryVendasPCT_DESCTO_ICMS: TFloatField;
    qryVendasNF_AGRUPADA: TIBStringField;
    qryVendasTRP_QTDE: TFloatField;
    qryVendasTRP_ESPECIE: TIBStringField;
    qryVendasTRP_PESO_BRUTO: TFloatField;
    qryVendasTRP_PESO_LIQUIDO: TFloatField;
    qryVendasTRP_NUMERO: TIBStringField;
    qryVendasTRP_MARCA: TIntegerField;
    qryVendasTRP_NOME: TIBStringField;
    qryVendasSTATUS_CARREGAMENTO: TIntegerField;
    qryVendasORDEM_CARGA: TIntegerField;
    qryVendasENTREGA_FUTURA: TIBStringField;
    qryVendasPCT_COMISSAO: TFloatField;
    qryVendasCENTRO_CUSTO: TIntegerField;
    qryVendasES: TIBStringField;
    qryVendasGERA_FINANCEIRO: TIBStringField;
    qryVendasNFE_CHAVE: TIBStringField;
    qryVendasNFE_SELECIONADO: TIBStringField;
    qryVendasDT_PREV_ENTREGA: TDateField;
    qryVendasCOD_INDEXADOR: TIntegerField;
    qryVendasIDX_DATABASE: TDateField;
    qryVendasIDX_COTACAO: TFloatField;
    qryVendasIDX_QTDE: TFloatField;
    qryVendasCOD_CONFIGTITULO: TIntegerField;
    qryVendasNFE_VALIDADA: TIBStringField;
    qryVendasNFE_ASSINADA: TIBStringField;
    qryVendasNFE_TRANSMITIDA: TIBStringField;
    qryVendasNFE_AUTORIZADA: TIBStringField;
    qryVendasNFE_DANFE_IMPRESSO: TIBStringField;
    qryVendasCLI_SUB_TRIBUTARIO: TIBStringField;
    qryVendasDT_EMISSAO_NF: TDateField;
    qryVendasDT_EMISSAO_CF: TDateField;
    qryVendasN_SEQ_ECF: TIBStringField;
    qryVendasN_SERIE_ECF: TIBStringField;
    qryVendasNFE_PROTOCOLO: TIBStringField;
    qryVendasNFE_RECIBO: TIBStringField;
    qryVendasNFE_XML: TMemoField;
    qryVendasNFE_CANC_MOTIVO: TIBStringField;
    qryVendasNFE_CANC_STATUS: TIBStringField;
    qryVendasNFE_CANC_PROTOCOLO: TIBStringField;
    qryVendasNFE_CANC_XML: TMemoField;
    qryVendaItensCNPJ: TIBStringField;
    qryVendaItensCODIGO: TIntegerField;
    qryVendaItensPRODUTO: TIBStringField;
    qryVendaItensSEQUENCIA: TSmallintField;
    qryVendaItensQUANTIDADE: TFloatField;
    qryVendaItensPRC_UNITARIO: TFloatField;
    qryVendaItensPRC_CUSTO: TFloatField;
    qryVendaItensICM: TFloatField;
    qryVendaItensICM_SUBS: TFloatField;
    qryVendaItensIPI: TFloatField;
    qryVendaItensVOLUME: TFloatField;
    qryVendaItensPESO: TFloatField;
    qryVendaItensDESCONTO: TFloatField;
    qryVendaItensPORC_DESC: TFloatField;
    qryVendaItensUNIDADE: TIBStringField;
    qryVendaItensPRC_UNIT_ORIGINAL: TFloatField;
    qryVendaItensNOME_PRODUTO: TIBStringField;
    qryVendaItensALIQUOTA: TIBStringField;
    qryVendaItensPRODUTOFIS: TIBStringField;
    qryVendaItensNOME_FIS: TIBStringField;
    qryVendaItensCTE: TIntegerField;
    qryVendaItensCTIE: TIntegerField;
    qryVendaItensORIGEM: TIntegerField;
    qryVendaItensREDUCAO: TIntegerField;
    qryVendaItensSUBUNIDADE: TIntegerField;
    qryVendaItensTOTAL_DIGITADO: TFloatField;
    qryVendaItensVENDEDOR: TIntegerField;
    qryVendaItensFRACIONADO: TIBStringField;
    qryVendaItensMENSAGEM_REDUCAO: TIBStringField;
    qryVendaItensBASECALCULOICM: TFloatField;
    qryVendaItensBASECALCULOSUBSTITUICAO: TFloatField;
    qryVendaItensALIQUOTA_EST: TFloatField;
    qryVendaItensALIQUOTA_INT: TFloatField;
    qryVendaItensCFOP: TIntegerField;
    qryVendaItensCOMPLEMENTO: TIBStringField;
    qryVendaItensNOME_VENDEDOR: TIBStringField;
    qryVendaItensSERVICO: TBlobField;
    qryVendaItensNUMERO: TIBStringField;
    qryVendaItensLINHA_ABASTECIMENTO: TIntegerField;
    qryVendaItensCONTADOR_ARQUIVO: TIntegerField;
    qryVendaItensGRADE: TIBStringField;
    qryVendaItensQUANTIDADE_FIS: TFloatField;
    qryVendaItensPRC_UNITARIO_FIS: TFloatField;
    qryVendaItensLOTE: TIBStringField;
    qryVendaItensCODIGO_LOTE: TIntegerField;
    qryVendaItensUTILIZA_LOTE: TIBStringField;
    qryVendaItensCOM_GERADA: TIBStringField;
    qryVendaItensQTDE_ENTREGUE: TFloatField;
    qryVendaItensCUSTO_MEDIO: TFloatField;
    qryVendaItensLUCRO_ITEM: TFloatField;
    qryVendaItensCARREGAR: TFloatField;
    qryVendaItensCARREGADO: TFloatField;
    qryVendaItensENTREGUE: TFloatField;
    qryVendaItensENTREGAR: TFloatField;
    qryVendaItensDEVOLVER: TFloatField;
    qryVendaItensDEVOLVIDO: TFloatField;
    qryVendaItensSPRODUTO: TIBStringField;
    qryVendaItensVLR_LUCRO_ITEM: TFloatField;
    qryVendaItensALIQUOTA_ICMS: TFloatField;
    qryEmpresaCNPJ: TIBStringField;
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
    qryEmpresaCODIFICA_PRODUTOS: TIBStringField;
    qryEmpresaIMPRIME_CUPOM_NOMINAL: TIBStringField;
    qryEmpresaIMP_NOME_PROPRIEDADE: TIBStringField;
    qryEmpresaPDV_VER_ULTIMAS_VENDAS: TIBStringField;
    qryEmpresaCNPJ1: TIBStringField;
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
    qryEmpresaBCH_INS_MUN: TSmallintField;
    qryEmpresaBCH_NOMECONTATO: TIBStringField;
    qryEmpresaBCH_PATH: TIBStringField;
    qryFAT_VENDAS_GE: TIBQuery;
    qryFAT_VENDAS_GECODIGO: TLargeintField;
    qryBuscaVenda: TIBQuery;
    qryBuscaVendaCNPJ: TIBStringField;
    qryBuscaVendaCODIGO: TIntegerField;
    qryBuscaVendaDATA: TDateField;
    qryBuscaVendaFECHADA: TIBStringField;
    qryBuscaVendaHISTORICO: TIBStringField;
    qryBuscaVendaPESSOA_FJ: TIntegerField;
    qryBuscaVendaUSUARIO: TIntegerField;
    qryBuscaVendaVENDEDOR: TIntegerField;
    qryBuscaVendaNATUREZA: TIntegerField;
    qryBuscaVendaENVIADA_CX: TIBStringField;
    qryBuscaVendaFORMA_PGTO: TIntegerField;
    qryBuscaVendaNUM_NF: TIntegerField;
    qryBuscaVendaNUM_CUPOM: TIntegerField;
    qryBuscaVendaPROPRIEDADE: TIntegerField;
    qryBuscaVendaCONVENIADO: TIntegerField;
    qryBuscaVendaTIPO_DOCTO: TIBStringField;
    qryBuscaVendaLOCAL_COBRANCA: TIntegerField;
    qryBuscaVendaDESC_ACRES: TFloatField;
    qryBuscaVendaENTRADA: TFloatField;
    qryBuscaVendaDINHEIRO: TFloatField;
    qryBuscaVendaCHEQUE: TFloatField;
    qryBuscaVendaCARTAO: TFloatField;
    qryBuscaVendaTICKET: TFloatField;
    qryBuscaVendaTOTAL: TFloatField;
    qryBuscaVendaOBSERVACAO: TIBStringField;
    qryBuscaVendaVLR_PARC_LC: TFloatField;
    qryBuscaVendaTERCEIRO: TIntegerField;
    qryBuscaVendaCARGA: TIntegerField;
    qryBuscaVendaVOLUME: TFloatField;
    qryBuscaVendaPESO: TFloatField;
    qryBuscaVendaREQUISICAO: TIBStringField;
    qryBuscaVendaDESCRICAO: TBlobField;
    qryBuscaVendaTIPO_VENDA: TIBStringField;
    qryBuscaVendaNOME_CONSUMIDOR: TIBStringField;
    qryBuscaVendaORCAMENTO: TIntegerField;
    qryBuscaVendaTROCO: TFloatField;
    qryBuscaVendaLOCAL: TIntegerField;
    qryBuscaVendaNOME: TIBStringField;
    qryBuscaVendaDATA_CAIXA: TDateTimeField;
    qryBuscaVendaCONTA_CAIXA: TIntegerField;
    qryBuscaVendaCANCELADA: TIBStringField;
    qryBuscaVendaTOTAL_NOTA: TFloatField;
    qryBuscaVendaBASE_ICM: TFloatField;
    qryBuscaVendaICM: TFloatField;
    qryBuscaVendaBASE_ICM_SUBST: TFloatField;
    qryBuscaVendaVALOR_ICM_SUBST: TFloatField;
    qryBuscaVendaFRETE: TFloatField;
    qryBuscaVendaSEGURO: TFloatField;
    qryBuscaVendaDESPESAS: TFloatField;
    qryBuscaVendaIPI: TFloatField;
    qryBuscaVendaAPRAZO: TFloatField;
    qryBuscaVendaSELECIONADA: TIBStringField;
    qryBuscaVendaDUPLICATA: TIntegerField;
    qryBuscaVendaBANCO: TIBStringField;
    qryBuscaVendaRECEBIDAS: TFloatField;
    qryBuscaVendaCONTROLA_PLACA: TIBStringField;
    qryBuscaVendaCONTROLA_KM: TIBStringField;
    qryBuscaVendaASSINA_NOTA: TIBStringField;
    qryBuscaVendaKM_ATUAL: TFloatField;
    qryBuscaVendaNOME_PROPRIEDADE: TIBStringField;
    qryBuscaVendaNOME_VENDEDOR: TIBStringField;
    qryBuscaVendaNOME_NATUREZA: TIBStringField;
    qryBuscaVendaNOME_TERCEIRO: TIBStringField;
    qryBuscaVendaNOME_FORMA: TIBStringField;
    qryBuscaVendaUF: TIBStringField;
    qryBuscaVendaVALIDADE: TDateTimeField;
    qryBuscaVendaMEDIA_KM: TFloatField;
    qryBuscaVendaDOCUMENTOS_CONSUMIDOR: TIBStringField;
    qryBuscaVendaENDERECO_CONSUMIDOR: TIBStringField;
    qryBuscaVendaTURNO: TIntegerField;
    qryBuscaVendaHORA: TTimeField;
    qryBuscaVendaNAO_COBR_JUR_ATE: TIntegerField;
    qryBuscaVendaSERIE: TIBStringField;
    qryBuscaVendaDESCONTOS_CONCEDIDOS: TFloatField;
    qryBuscaVendaNOME_CONVENIO: TIBStringField;
    qryBuscaVendaDT_EMISSAO_AGRUPADA: TDateTimeField;
    qryBuscaVendaTRANSPORTADORA: TIntegerField;
    qryBuscaVendaDATA_CANCELAMENTO: TDateTimeField;
    qryBuscaVendaTOTAL_FISCAL: TFloatField;
    qryBuscaVendaCONS_REV: TIBStringField;
    qryBuscaVendaIRRF: TFloatField;
    qryBuscaVendaINSS: TFloatField;
    qryBuscaVendaPIS_COFINS_CSLL: TFloatField;
    qryBuscaVendaISS: TFloatField;
    qryBuscaVendaVALE_TROCO: TIBStringField;
    qryBuscaVendaCIDADE_CONSUMIDOR: TIBStringField;
    qryBuscaVendaPGTO_FRETE: TIBStringField;
    qryBuscaVendaBAIRRO_CONSUMIDOR: TIBStringField;
    qryBuscaVendaFONE_CONSUMIDOR: TIBStringField;
    qryBuscaVendaMESA: TIntegerField;
    qryBuscaVendaDESCTO_RES: TFloatField;
    qryBuscaVendaCOMPROMETER_ESTOQUE: TIBStringField;
    qryBuscaVendaID_AGRUPADOR: TIntegerField;
    qryBuscaVendaDESCTO_ICMS: TFloatField;
    qryBuscaVendaPCT_DESCTO_ICMS: TFloatField;
    qryBuscaVendaNF_AGRUPADA: TIBStringField;
    qryBuscaVendaTRP_QTDE: TFloatField;
    qryBuscaVendaTRP_ESPECIE: TIBStringField;
    qryBuscaVendaTRP_PESO_BRUTO: TFloatField;
    qryBuscaVendaTRP_PESO_LIQUIDO: TFloatField;
    qryBuscaVendaTRP_NUMERO: TIBStringField;
    qryBuscaVendaTRP_MARCA: TIntegerField;
    qryBuscaVendaTRP_NOME: TIBStringField;
    qryBuscaVendaSTATUS_CARREGAMENTO: TIntegerField;
    qryBuscaVendaORDEM_CARGA: TIntegerField;
    qryBuscaVendaENTREGA_FUTURA: TIBStringField;
    qryBuscaVendaPCT_COMISSAO: TFloatField;
    qryBuscaVendaCENTRO_CUSTO: TIntegerField;
    qryBuscaVendaES: TIBStringField;
    qryBuscaVendaGERA_FINANCEIRO: TIBStringField;
    qryBuscaVendaNFE_CHAVE: TIBStringField;
    qryBuscaVendaNFE_SELECIONADO: TIBStringField;
    qryBuscaVendaDT_PREV_ENTREGA: TDateField;
    qryBuscaVendaCOD_INDEXADOR: TIntegerField;
    qryBuscaVendaIDX_DATABASE: TDateField;
    qryBuscaVendaIDX_COTACAO: TFloatField;
    qryBuscaVendaIDX_QTDE: TFloatField;
    qryBuscaVendaCOD_CONFIGTITULO: TIntegerField;
    qryBuscaVendaNFE_VALIDADA: TIBStringField;
    qryBuscaVendaNFE_ASSINADA: TIBStringField;
    qryBuscaVendaNFE_TRANSMITIDA: TIBStringField;
    qryBuscaVendaNFE_AUTORIZADA: TIBStringField;
    qryBuscaVendaNFE_DANFE_IMPRESSO: TIBStringField;
    qryBuscaVendaCLI_SUB_TRIBUTARIO: TIBStringField;
    qryBuscaVendaDT_EMISSAO_NF: TDateField;
    qryBuscaVendaDT_EMISSAO_CF: TDateField;
    qryBuscaVendaN_SEQ_ECF: TIBStringField;
    qryBuscaVendaN_SERIE_ECF: TIBStringField;
    qryBuscaVendaNFE_PROTOCOLO: TIBStringField;
    qryBuscaVendaNFE_RECIBO: TIBStringField;
    qryBuscaVendaNFE_XML: TMemoField;
    qryBuscaVendaNFE_CANC_MOTIVO: TIBStringField;
    qryBuscaVendaNFE_CANC_STATUS: TIBStringField;
    qryBuscaVendaNFE_CANC_PROTOCOLO: TIBStringField;
    qryBuscaVendaNFE_CANC_XML: TMemoField;
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn2: TcxButton;
    BtnCriar: TcxButton;
    FileListBox1: TFileListBox;
    PedidoVenda: TdxMemData;
    Venda: TdxMemData;
    InfoNota: TdxMemData;
    VendaItens: TdxMemData;
    PedidoItensDadosVenda: TdxMemData;
    InfoNotaNumeroNota: TIntegerField;
    VendaItensCodigoProduto: TStringField;
    PedidoItensVenda: TdxMemData;
    PedidoItensVendaCodigoVendedor: TIntegerField;
    PedidoItensVendaNumeroCupomFiscal: TIntegerField;
    PedidoVendaNumeroCupomFiscal: TIntegerField;
    PedidoItensLancamentos: TdxMemData;
    PedidoItensLancamentosValorLancamento: TFloatField;
    PedidoItensVendaCodigoProdutoDigito: TIntegerField;
    PedidoItensVendaQtdeVendida: TFloatField;
    PedidoItensVendaPrecoProduto: TFloatField;
    PedidoItensVendaDescontoItem: TFloatField;
    InfoNotaIdentificacaoArquivo: TStringField;
    InfoNotaNumeroCaixa: TIntegerField;
    VendaItensQuantidade: TFloatField;
    VendaItensAliquotaICMS: TStringField;
    VendaItensPreco: TFloatField;
    VendaItensDesconto: TFloatField;
    VendaCodFilial: TIntegerField;
    VendaNCaixa: TIntegerField;
    VendaCodOpertador: TIntegerField;
    VendaDTEmissao: TDateField;
    VendaHREmissao: TTimeField;
    VendaNCupom: TIntegerField;
    VendaCodVendedor: TIntegerField;
    VendaNPedido: TIntegerField;
    VendaZeros: TIntegerField;
    VendaDescontoCupom: TFloatField;
    VendaCodFormaPagto: TIntegerField;
    VendaTotalPago: TFloatField;
    VendaTotalVenda: TFloatField;
    VendaCliente: TIntegerField;
    VendaTroco: TFloatField;
    PedidoItensVendaNCupomCancelamento: TIntegerField;
    CancelamentoVenda: TdxMemData;
    CancelamentoVendaCodFilial: TIntegerField;
    CancelamentoVendaNCaixa: TIntegerField;
    CancelamentoVendaCodOpertador: TIntegerField;
    CancelamentoVendaDTEmissao: TDateField;
    CancelamentoVendaHREmissao: TTimeField;
    CancelamentoVendaNCupom: TIntegerField;
    CancelamentoVendaDTCancelamento: TDateTimeField;
    CancelamentoVendaHRCancelamento: TTimeField;
    Fat_vendas: TIBDataSet;
    qryBuscaVendaPLACA: TIBStringField;
    qryBuscaVendaUF_PLACA: TIBStringField;
    qryBuscaVendaBCH_COD_FILIAL: TIntegerField;
    cxProgressBar1: TcxProgressBar;
    cxLabel1: TcxLabel;
    StatusBar1: TStatusBar;
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
    procedure LeArquivoCF(Nome_Arq  :String);
    procedure LeArquivoPP(Nome_Arq  :String);
    procedure LeArquivoCC(Nome_Arq  :String);
    procedure DesfragmentaNome_Arq(Nome_Arq :String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAutoImportaBemaCash: TFrmAutoImportaBemaCash;

implementation

uses Usuarios_DM, Application_DM, Funcoes, Empresas_DM, Vendas_Dm, Vendas_DM2,
  Vendas_Form, NaturezaOper_Form, Cadastros_DM, Main;

{$R *.DFM}

procedure TFrmAutoImportaBemaCash.FormCreate(Sender: TObject);
begin



  PedidoVenda.Open;
  Venda.Open;
  CancelamentoVenda.Open;
  InfoNota.Open;
  if DMEmpresas = nil then
      DMEmpresas  := TDMEmpresas.Create(self);
  DMEmpresas.Empresas.Open;
  FileListBox1.Directory    :=  DMEmpresas.EmpresasBCH_PATH.AsString;

end;

procedure TFrmAutoImportaBemaCash.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmAutoImportaBemaCash.ActExportaExecute(Sender: TObject);
var
  I, bar: Integer;
  perct : Double;
  data : string;
  Crio, Crio2:Boolean;
begin
      //lista os arquivos criados pelo bemacash, separa os para importacao e os envias para as funcoes de leitura

      data := StringReplace(formatdatetime('dd/mm/yyyy',now),'/','',[rfreplaceall]);
      CreateDir('C:\BemaCASH\Arquivos\Backup\'+data+'\BackUP');
      FileListBox1.Directory   := 'C:\BemaCASH\Arquivos\Backup\'+data;

      i := 0;
      bar := 1;
      perct := (100/(FileListBox1.Items.Count));
      while (FileListBox1.Items.Count ) > i do
      begin
          statusbar1.panels[0].text := formatdatetime ('dd/mm/yyyy',now);

          cxProgressBar1.Position := bar * perct;
          if Copy(FileListBox1.Items.Strings[i],1,2) = 'cf' then
          begin
              LeArquivoCF(FileListBox1.Items[i]);
              FileCopy('C:\BemaCASH\Arquivos\Backup\'+data+'\'+FileListBox1.Items[i],'C:\BemaCASH\Arquivos\Backup\'+data+'\BackUP\'+FileListBox1.Items[i]);
              DeleteFile('C:\BemaCASH\Arquivos\Backup\'+data+'\'+ FileListBox1.Items[i]);
              bar := 1+ bar;
          end
          else if Copy(FileListBox1.Items.Strings[i],1,2) = 'pp' then
          begin
              LeArquivoPP(FileListBox1.Items[i]);
              FileCopy('C:\BemaCASH\Arquivos\Backup\'+data+'\'+FileListBox1.Items[i],'C:\BemaCASH\Arquivos\Backup\'+data+'\BackUP\'+FileListBox1.Items[i]);
              DeleteFile('C:\BemaCASH\Arquivos\Backup\'+data+'\'+ FileListBox1.Items[i]);
              bar := 1+ bar;
          end;
          i := i +1;
          cxLabel1.Caption  := 'Nº de Vendas: ' + IntToStr(Bar);
      end;

      i := 0;
      while (FileListBox1.Items.Count ) > i do
      begin
          cxProgressBar1.Position := bar * perct;
          if (Copy(FileListBox1.Items.Strings[i],1,3) <> 'ccc') and (Copy(FileListBox1.Items[i],1,2) = 'cc') then
          begin
             LeArquivoCC(FileListBox1.Items[i]);
             FileCopy('C:\BemaCASH\Arquivos\Backup\'+data+'\'+FileListBox1.Items[i],'C:\BemaCASH\Arquivos\Backup\'+data+'\BackUP\'+FileListBox1.Items[i]);
             DeleteFile('C:\BemaCASH\Arquivos\Backup\'+data+'\'+ FileListBox1.Items[i]);
             bar := 1+ bar;
          end;
          i := i +1;
          cxLabel1.Caption  := 'Vendas Nº: ' + IntToStr(Bar); 
      end;

      if not(FrmAutoImportaBemaCash.Visible) then
          FrmAutoImportaBemaCash.Close;


end;

procedure TFrmAutoImportaBemaCash.PRODUTOSBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
     (DataSet as TIBQuery).Prepare;
end;

procedure TFrmAutoImportaBemaCash.RzBitBtn2Click(Sender: TObject);
begin
     Close ;
end;

procedure TFrmAutoImportaBemaCash.IniKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmAutoImportaBemaCash.FimKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;



procedure TFrmAutoImportaBemaCash.BtnCriarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmAutoImportaBemaCash.RzBitBtn2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmAutoImportaBemaCash.LeArquivoCF(Nome_Arq: String);
var
  f: TextFile;
  Linha, Campo,CampoValor: String;
  Count, Count2,CampoCount, sequencia : Integer;
begin
      //Le o arquivo Separa os campos envia para um cliente daset e depois salva no banco as informacoes necessarias
      //Venda.data.Values.Clear;
      VendaItens.Close;
      VendaItens.Open;
      Venda.Close;
      Venda.Open;
      //VendaItens.data.Values.Clear;

      AssignFile(f, DMEmpresas.EmpresasBCH_PATH.AsString +'\'+Nome_Arq);
      Reset(f);

      DesfragmentaNome_Arq(Nome_Arq);

      VendaItens.Insert;
      Venda.Insert;
      While not Eof(f) do
      begin
          Readln(f, Linha);
          if (Linha[1] = 'C') and (Linha[2] <> 'L') then
          begin
              CampoCount := 1;

              
              count := 3;

              while Count <= Length(Linha) do
              begin

                  Campo := Campo + Linha[Count];

                  if Campo <> '' then
                      if count = 5 then
                      begin
                          Venda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if Count = 8 then
                      begin
                          Venda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if count = 17 then
                      begin
                          Venda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if count = 25 then
                      begin
                          Venda.Fields.Fields[CampoCount].Value  := StrToDate(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if count = 31 then
                      begin
                          Venda.Fields.Fields[CampoCount].Value := StrToTime(Copy(Campo,1,2)+':'+Copy(Campo,3,2)+':'+Copy(Campo,5,2));
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if count = 37 then
                      begin
                          Venda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end;
                  Count := Count + 1;
              end;

          end
          else if Linha[1] = 'V' then
          begin
              CampoCount  := 7;

              count := 3;

              while Count <= Length(Linha) do
              begin

                  Campo := Campo + Linha[Count];

                  if Campo <> '' then
                      if count = 10 then
                      begin
                          Venda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end;

                  Count := Count + 1;
              end;

          end
          else if Linha[1] = 'P' then
          begin
              CampoCount  := 8;

              count := 3;

              while Count <= Length(Linha) do
              begin

                  Campo := Campo + Linha[Count];

                  if Campo <> '' then
                      if count = 7 then
                      begin
                          Venda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end;

                  Count := Count + 1;
              end;
          end
          else if (Linha[1] = 'D') and (Linha[2] <> 'T') then
          begin
              CampoCount  := 9;

              
              count := 3;

              while Count <= Length(Linha) do
              begin

                  Campo := Campo + Linha[Count];

                  if Campo <> '' then
                      if count = 13 then
                      begin
                          Venda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end;

                  Count := Count + 1;
              end;
          end
          else if (Linha[1] = 'D') and (Linha[2] = 'T') then
          begin
              CampoCount  := 10;

              
              count := 3;

              while Count <= Length(Linha) do
              begin

                  Campo := Campo + Linha[Count];

                  if Campo <> '' then
                      if count = 4 then
                      begin
                          Venda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end;

                  Count := Count + 1;
              end;
          end
          else if Linha[1] = 'I' then
          begin
              CampoCount  := 1;
              VendaItens.Insert;
              count := 3;
              Campo := '';
              while Count <= Length(Linha) do
              begin
                  Campo := Campo + Linha[Count];

                  if Campo <> '' then
                      if count = 13 then
                      begin
                          VendaItens.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if Count = 14 then
                      begin
                          VendaItens.Fields.Fields[CampoCount].Value := StrToFloat(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if count = 19 then
                      begin
                          VendaItens.Fields.Fields[CampoCount].Value := StrToFloat(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if count = 33 then
                      begin
                          VendaItens.Fields.Fields[CampoCount].Value  := StrToFloat(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if count = 39 then
                      begin
                          VendaItens.Fields.Fields[CampoCount].Value := StrToFloat(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end;

                      Count := Count + 1;
              end;

              CampoCount  := CampoCount + 1;
              Campo := '';
              VendaItens.Post;
          end
          else if Linha[1] = 'F' then
          begin
              CampoCount  := 11;
              count := 2;

              while Count <= Length(Linha) do
              begin

                  Campo := Campo + Linha[Count];

                  if Campo <> '' then
                      if count = 5 then
                      begin
                          Venda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if count = 17 then
                      begin
                          Venda.Fields.Fields[CampoCount].Value := (StrToFloat(Campo)/100);
                          Campo := '';
                      end;


                  Count := Count + 1;
              end;
          end
          else if Linha[1] = 'T' then
          begin
              CampoCount  := 13;

              count := 2;

              while Count <= Length(Linha) do
              begin

                  Campo := Campo + Linha[Count];

                  if Campo <> '' then
                      if count = 13 then
                      begin
                          Venda.Fields.Fields[CampoCount].Value := (StrToFloat(Campo)/100);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end;

                  Count := Count + 1;
              end;
          end
          else if (Linha[1] = 'C') and (Linha[2] = 'L')then
          begin
              CampoCount  := 14;

              count := 3;

              while Count <= Length(Linha) do
              begin

                  Campo := Campo + Linha[Count];

                  if Campo <> '' then
                      if count = 17 then
                      begin
                          if( 0 = StrToInt(Campo)) then
                            Campo := '1';

                          Venda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end;

                  Count := Count + 1;
              end;
          end;

          {if ((Campo[1] >= '0') and (Campo[1] <= '9')) and (Campo[3] = '/')then
          begin
              Venda.Fields.Fields[CampoCount].Value := StrToDate(Campo);
          end
          else  if ((Campo[1] >= '0') and (Campo[1] <= '9')) and (Campo[3] = ':')then
          begin
              Venda.Fields.Fields[CampoCount].Value := StrToTime(Campo);
          end
          else if ((Campo[1] >= '0') and (Campo[1] <= '9'))then
          begin
              Venda.Fields.Fields[CampoCount].Value := StrToFloat(Campo);
          end
          else
              Venda.Fields.Fields[CampoCount].Value := Campo;}
          Campo := '';
      end;
      Venda.Post;
      CloseFile(f);
      qryEmpresa.Close;
      qryEmpresa.ParamByName('Cod').Value := VendaCodFilial.AsInteger;
      qryEmpresa.Open;

     { DMVendas2.Vendas.Close;
      DMVendas2.Vendas.Open;}
      qryFAT_VENDAS_GE.Close;
      qryFAT_VENDAS_GE.Open;

      if Venda.RecordCount > 0 then
      begin

          {DMVendas2.Vendas.Insert;
          DMVendas2.VendasCNPJ.Value                 :=  DMApp.Cnpj;
          DMVendas2.VendasCODIGO.Value               :=  qryFAT_VENDAS_GECODIGO.AsInteger;
          DmVendas2.VendasPESSOA_FJ.Value            :=  VendaCliente.AsInteger;
          DmVendas2.VendasNATUREZA.Value             :=  5102;
          DMVendas2.VendasDATA.Value                 :=  VendaDtEmissao.AsDateTime;
          DMVendas2.VendasFECHADA.Value              :=  'S';
          DMVendas2.VendasUSUARIO.Value              :=  VendaCodOpertador.AsInteger;
          DmVendas2.VendasENVIADA_CX.Value           :=  'S';
          DMVendas2.VendasVENDEDOR.Value             :=  VendaCodVendedor.AsInteger;
          DMVendas2.VendasNUM_NF.Value               :=  InfoNotaNumeroNota.AsInteger;
          DMVendas2.VendasNUM_CUPOM.Value            :=  VendaNCupom.AsInteger;
          DMVendas2.VendasDINHEIRO.Value             :=  VendaTotalPago.AsFloat;
          DMVendas2.VendasHORA.Value                 :=  VendaHrEmissao.AsDateTime;
          DMVendas2.VendasDESCONTOS_CONCEDIDOS.Value :=  VendaDescontoCupom.AsFloat;
          DMVendas2.VendasTOTAL.Value                :=  VendaTotalVenda.AsFloat;
          DMVendas2.Vendas.Post;

          VendaItens.First;
          sequencia := 0;
          while not VendaItens.Eof do
          begin
              DmVendas2.Vendas_Itens.Insert;
              DmVendas2.Vendas_ItensCNPJ.Value           :=  qryEmpresaCNPJ.AsString;
              DmVendas2.Vendas_ItensCODIGO.Value         :=  DmVendas2.VendasCODIGO.AsInteger;
              DmVendas2.Vendas_ItensSEQUENCIA.Value      :=  sequencia;
              DmVendas2.Vendas_ItensPRODUTO.Value        :=  VendaItensCodigoProduto.AsString;
              DmVendas2.Vendas_ItensQUANTIDADE.Value     :=  VendaItensQuantidade.AsFloat;
              DmVendas2.Vendas_ItensPRC_UNITARIO.Value   :=  VendaItensPreco.AsFloat;
              DmVendas2.Vendas_ItensALIQUOTA.Value       :=  VendaItensAliquotaICMS.AsString;
              DMVendas2.Vendas_ItensVENDEDOR.Value       :=  VendaCodVendedor.AsInteger;
              DmVendas2.Vendas_ItensDESCONTO.Value       :=  VendaItensDesconto.AsFloat;
              DmVendas2.Vendas_Itens.Post;
              sequencia := sequencia +1;
              VendaItens.Next;
          end;
      end;

      //Venda.data.Values.Clear;
     // VendaItens.data.Values.Clear;
      InfoNota.data.Values.Clear; }
   end;
end;

procedure TFrmAutoImportaBemaCash.LeArquivoPP(Nome_Arq: String);
var
  f: TextFile;
  Linha, Campo,CampoValor: String;
  Count,CampoCount : Integer;
begin
      //Le o arquivo Separa os campos envia para um cliente daset e depois salva no banco as informacoes necessarias
      Venda.data.Values.Clear;
      AssignFile(f, DMEmpresas.EmpresasBCH_PATH.AsString +'\'+Nome_Arq);
      Reset(f);

      DesfragmentaNome_Arq(Nome_Arq);
      PedidoVenda.Insert;
      While not Eof(f) do
      begin
          Readln(f, Linha);
          Count := 3;
          CampoCount := 0;
          if Linha[1] = 'P' then
          begin
              CampoCount := 0;
          end;

          while Count <= Length(Linha) do
          begin
              Campo := Campo + Linha[Count];

              if Linha[Count] = #9 then
              begin

                  if ((Campo[1] >= '0') and (Campo[1] <= '9')) and (Campo[3] = '/')then
                  begin
                      PedidoVenda.Fields.Fields[CampoCount].Value := StrToDate(Campo);
                  end
                  else  if ((Campo[1] >= '0') and (Campo[1] <= '9')) and (Campo[3] = ':')then
                  begin
                      PedidoVenda.Fields.Fields[CampoCount].Value := StrToTime(Campo);
                  end
                  else if ((Campo[1] >= '0') and (Campo[1] <= '9'))then
                  begin
                      PedidoVenda.Fields.Fields[CampoCount].Value := StrToFloat(Campo);
                  end
                  else
                      PedidoVenda.Fields.Fields[CampoCount].Value := Campo;

                  CampoCount  := CampoCount + 1;
                  Campo := '';
              end;

              Count := Count + 1;
          end;

          if ((Campo[1] >= '0') and (Campo[1] <= '9')) and (Campo[3] = '/')then
          begin
              PedidoVenda.Fields.Fields[CampoCount].Value := StrToDate(Campo);
          end
          else  if ((Campo[1] >= '0') and (Campo[1] <= '9')) and (Campo[3] = ':')then
          begin
              PedidoVenda.Fields.Fields[CampoCount].Value := StrToTime(Campo);
          end
          else if ((Campo[1] >= '0') and (Campo[1] <= '9'))then
          begin
              PedidoVenda.Fields.Fields[CampoCount].Value := StrToFloat(Campo);
          end
          else
              PedidoVenda.Fields.Fields[CampoCount].Value := Campo;

          CampoCount  := CampoCount + 1;
          Campo := '';
          PedidoVenda.Post;

      end;
      CloseFile(f);

      //Incompleto falta verificar itens do pedido e salvar o pedido corretamente


      //-------------Le o arquivo de Itens do pedido que e criado  separado------------\\

      if FileExists(DMEmpresas.EmpresasBCH_PATH.AsString +'\'+'9'+InfoNotaNumeroNota.AsString+'.Ist') then
      begin
          PedidoVenda.Insert;
          While not Eof(f) do
          begin
              Readln(f, Linha);
              Count := 3;
              CampoCount := 0;
              if Linha[1] = 'P' then
              begin
                  CampoCount := 0;
                  PedidoItensDadosVenda.Insert;
                  while Count <= Length(Linha) do
                  begin
                      Campo := Campo + Linha[Count];

                      if Linha[Count] = ',' then
                      begin

                          PedidoItensDadosVenda.Fields.Fields[CampoCount].Value := StrToFloat(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end;

                      Count := Count + 1;
                  end;
                  PedidoItensDadosVenda.Post;
              end;

              if Linha[1] = 'I' then
              begin
                  CampoCount := 0;

                  while Count <= Length(Linha) do
                  begin
                      Campo := Campo + Linha[Count];

                      if Linha[Count] = ',' then
                      begin
                          PedidoItensVenda.Fields.Fields[CampoCount].Value := StrToFloat(Campo);

                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end;

                      Count := Count + 1;
                  end;
              end;

              if Linha[1] = 'L' then
              begin
                  CampoCount := 0;

                  while Count <= Length(Linha) do
                  begin
                      Campo := Campo + Linha[Count];

                      if Linha[Count] = ',' then
                      begin
                          PedidoItensLancamentos.Fields.Fields[CampoCount].Value := StrToFloat(Campo);

                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end;

                      Count := Count + 1;
                  end;
              end;

              PedidoItensDadosVenda.Fields.Fields[CampoCount].Value := StrToFloat(Campo);

              CampoCount  := CampoCount + 1;
              Campo := '';
              
              PedidoVenda.Post;

          end;
          CloseFile(f);
      end;

      qryEmpresa.Close;
      qryEmpresa.ParamByName('Cod').Value := VendaCodFilial.AsInteger;
      qryEmpresa.Open;

      if PedidoVenda.RecordCount > 0 then
      begin
      
          qryVendas.Insert;
          qryVendasCNPJ.Value                 :=  qryEmpresaCNPJ.AsString;
          qryVendasCODIGO.Value               :=  qryFAT_VENDAS_GECODIGO.AsInteger;
          qryVendasUSUARIO.Value              :=  PedidoItensVendaCodigoVendedor.AsInteger;
          qryVendasVENDEDOR.Value             :=  PedidoItensVendaCodigoVendedor.AsInteger;
          qryVendasNUM_NF.Value               :=  InfoNotaNumeroNota.AsInteger;
          qryVendasNUM_CUPOM.Value            :=  PedidoVendaNumeroCupomFiscal.AsInteger;
          qryVendasTOTAL.Value                :=  PedidoItensLancamentosValorLancamento.AsFloat;
          qryVendas.Post;


          PedidoItensVenda.First;
          while not PedidoItensVenda.Eof do
          begin
              qryVendaItens.Insert;
              qryVendaItensCNPJ.Value           :=  qryEmpresaCNPJ.AsString;
              qryVendaItensCODIGO.Value         :=  qryVendasCODIGO.AsInteger;
              qryVendaItensPRODUTO.Value        :=  PedidoItensVendaCodigoProdutoDigito.AsString;
              qryVendaItensQUANTIDADE.Value     :=  PedidoItensVendaQtdeVendida.AsFloat;
              qryVendaItensPRC_UNITARIO.Value   :=  PedidoItensVendaPrecoProduto.AsFloat;
              qryVendaItensDESCONTO.Value       :=  PedidoItensVendaDescontoItem.AsFloat;
              qryVendaItens.Post;

              PedidoItensVenda.Next;
          end;
      end;

      PedidoVenda.data.Values.Clear;
      InfoNota.data.Values.Clear;
end;

procedure TFrmAutoImportaBemaCash.LeArquivoCC(Nome_Arq: String);
var
  f: TextFile;
  Linha, Campo,CampoValor: String;
  Count,  CampoCount : Integer;
begin
      //Le o arquivo Separa os campos envia para um cliente daset e depois salva no banco as informacoes necessarias

      AssignFile(f, DMEmpresas.EmpresasBCH_PATH.AsString +'\'+Nome_Arq);
      Reset(f);

      DesfragmentaNome_Arq(Nome_Arq);
      CancelamentoVenda.Insert;
      While not Eof(f) do
      begin
          Readln(f, Linha);
          Count := 3;
          CampoCount := 1;
          if Linha[1] = 'C' then
          begin
              CampoCount := 1;

              count := 3;

              while Count <= Length(Linha) do
              begin

                  Campo := Campo + Linha[Count];

                  if Campo <> '' then
                      if count = 5 then
                      begin
                          CancelamentoVenda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if Count = 8 then
                      begin
                          CancelamentoVenda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if count = 17 then
                      begin
                          CancelamentoVenda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if count = 25 then
                      begin
                          CancelamentoVenda.Fields.Fields[CampoCount].Value  := StrToDate(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if count = 31 then
                      begin
                          CancelamentoVenda.Fields.Fields[CampoCount].Value := StrToTime(Copy(Campo,1,2)+':'+Copy(Campo,3,2)+':'+Copy(Campo,5,2));
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end
                      else if count = 37 then
                      begin
                          CancelamentoVenda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end;
                  Count := Count + 1;
              end;

          end
          else if Linha[1] = 'N' then
          begin
              CampoCount  := 6;
              Count := 2;

              while Count <= Length(Linha) do
              begin

                  Campo := Campo + Linha[Count];

                  if Campo <> '' then
                      if count = 7 then
                      begin
                          CancelamentoVenda.Fields.Fields[CampoCount].Value := StrToInt(Campo);
                          CampoCount  := CampoCount + 1;
                          Campo := '';
                      end;
                  count := count +1;
              end;
          end
          else if Linha[1] = 'H' then
          begin
              CampoCount  := 6;
          end;

      end;
      CancelamentoVenda.Post;

      CloseFile(f);

      qryBuscaVenda.Close;
      qryBuscaVenda.ParamByName('CNPJ').value := DmApp.Cnpj;
      qryBuscaVenda.ParamByName('NF').value   := CancelamentoVendaNCupom.AsInteger;
      qryBuscaVenda.Open;

      if CancelamentoVenda.RecordCount > 0 then
      begin
            Fat_vendas.Close;
            Fat_vendas.ParamByName('COD_FILIAL').AsInteger := CancelamentoVendaCodFilial.AsInteger;
            Fat_vendas.ParamByName('NCUPOM').asInteger    := CancelamentoVendaNCupom.AsInteger;
            Fat_vendas.Open;
      End;

      DmApp.Cancela_Nota ( DmApp.Cnpj, qryBuscaVendaCODIGO.AsInteger, CancelamentoVendaDtEmissao.AsDateTime );

      CancelamentoVenda.data.Values.Clear;
      InfoNota.data.Values.Clear;
      
end;

procedure TFrmAutoImportaBemaCash.DesfragmentaNome_Arq(Nome_Arq: String);
begin
      InfoNota.Insert;
      InfoNotaIdentificacaoArquivo.Value  :=  Copy(Nome_Arq,1,2);
      InfoNotaNumeroNota.Value            :=  StrToInt(Copy(Nome_Arq,3,6));
      InfoNotaNumeroCaixa.Value           :=  StrToInt(Copy(Nome_Arq,10,3));
      InfoNota.Post;
end;

procedure TFrmAutoImportaBemaCash.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   FrmAutoImportaBemaCash := Nil
end;

end.

{
  Lembrar de verificar se foi feita a leitura correta dos campos por tipo str, int , float;
  Verificar caminho que o arquivo percorre apos a sua leitura;
  Verificar informacoes salva no banco
  verificar arquivo lido com dados salvos no banco
  lembrar converter campos para o tipo asdatatime;
  falta salvar pedido e os itens do pedido corretamente no banco;
  }
