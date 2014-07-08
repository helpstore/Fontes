 unit Vendas_DM2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBSQL, IBStoredProc, Variants, DateUtils;

type
  TDmVendas2 = class(TDataModule)
    qryGrafNF: TIBQuery;
    edtGrafNF: TIBDataSet;
    dsQryGrafNF: TDataSource;
    edtGrafNFCONFIG_NF_GRAF: TMemoField;
    dsEdtGrafNF: TDataSource;
    dsFat: TDataSource;
    qryFaturamentos: TIBQuery;
    qryFatItens: TIBQuery;
    dsFatItens: TDataSource;
    qryFatMovtos: TIBQuery;
    dsFatMovimentos: TDataSource;
    qryFaturamentosCODIGO: TIntegerField;
    qryFaturamentosTOTAL: TIBBCDField;
    qryFaturamentosDESC_ACRESC: TIBBCDField;
    qryFaturamentosDATA: TDateField;
    qryFaturamentosDATA_CAIXA: TDateField;
    qryFaturamentosFECHADA: TIBStringField;
    qryFaturamentosVENDEDOR: TIBStringField;
    qryFaturamentosNATUREZA: TIBStringField;
    qryFaturamentosSALDO: TIBBCDField;
    dsFatDet: TDataSource;
    qryFatItensSEQUENCIA: TSmallintField;
    qryFatItensPRODUTO: TIBStringField;
    qryFatItensSALDO_ITEM: TFloatField;
    qryFatItensQUANTIDADE: TFloatField;
    qryFatItensQTDE_ENTREGUE: TFloatField;
    qryFatItensDESCONTO: TFloatField;
    qryFatItensPRC_UNITARIO: TFloatField;
    qryFatItensTOTAL_ITEM: TFloatField;
    qryServico: TIBQuery;
    qryServicoCLIENTE: TIBStringField;
    qryServicoBAIRRO: TIBStringField;
    qryServicoCIDADE: TIBStringField;
    qryServicoUF: TIBStringField;
    qryServicoFONE: TIBStringField;
    qryServicoINSC_MUNIC: TIBStringField;
    qryServicoFAT_FATURA1: TIBStringField;
    qryServicoFAT_VENCTO1: TIBStringField;
    qryServicoFAT_VLR1: TIBStringField;
    qryServicoFAT_FATURA2: TIBStringField;
    qryServicoFAT_VENCTO2: TIBStringField;
    qryServicoFAT_VLR2: TIBStringField;
    qryServicoPESSOA_FJ: TIntegerField;
    qryServicoPRODUTO: TIBStringField;
    qryServicoQTDE: TIBBCDField;
    qryServicoVLR_UNITARIO: TIBBCDField;
    qryServicoVLR_TOTAL_UNIT: TIBBCDField;
    qryServicoPIS: TIBBCDField;
    qryServicoINSS: TIBBCDField;
    qryServicoVLR_PIS: TIBBCDField;
    qryServicoVLR_INSS: TIBBCDField;
    qryServicoTOTAL_VENDA: TIBBCDField;
    qryServicoDESC_ACRESC: TIBBCDField;
    qryServicoTEXTO_PIS: TIBStringField;
    qryServicoTEXTO_INSS: TIBStringField;
    qryServicoTEXTO_DESCONTO: TIBStringField;
    qryServicoBASE_CALC_ISS: TIBBCDField;
    qryServicoVLR_ISS: TIBBCDField;
    qryServicoVLR_ISS_SUB: TIBBCDField;
    qryServicoTOTAL_NF: TIBBCDField;
    qryServicoIRRF: TIBBCDField;
    qryServicoVLR_IRRF: TIBBCDField;
    qryServicoTEXTO_IRRF: TIBStringField;
    qryServicoFRETE_DESTINATARIO: TIBStringField;
    qryServicoFRETE_EMITENTE: TIBStringField;
    qryServicoCOMPLEMENTO: TBlobField;
    qryServicoCPF_CGC: TIBStringField;
    qryCT13: TIBQuery;
    qryCT13INSC_ESTADUAL: TIBStringField;
    qryCT13CNPJ_PROPRIEDADE: TIBStringField;
    qryCT13PECUARISTA: TIBStringField;
    qryCT13PROPRIEDADE: TIBStringField;
    qryCT13CIDADE_PROPRIEDADE: TIBStringField;
    qryCT13CEP: TIBStringField;
    qryCT13CELULAR: TIBStringField;
    qryCT13CIDADE_PECUARISTA: TIBStringField;
    qryCT13UF: TIBStringField;
    qryCT13FONE: TIBStringField;
    qryCT13EMAIL: TIBStringField;
    qryCT13FAX: TIBStringField;
    qryCT13NUM_DOSES: TIBBCDField;
    qryCT13PARTIDA: TIBStringField;
    qryCT13LABORATORIO: TIBStringField;
    qryCT13DATA_FABRICACAO: TDateField;
    qryCT13NUM_NF: TIntegerField;
    qryCT13DATA_COMPRA: TDateField;
    qryCT13ENDERECO_PROPRIEDADE: TIBStringField;
    qryCT13ENDERECO_PECUARISTA: TIBStringField;
    qryCT13DOSES_EXTENSO: TStringField;
    qrySeriesNF: TIBQuery;
    qrySeriesNFCLIENTE: TIBStringField;
    qrySeriesNFCIDADE: TIBStringField;
    qrySeriesNFENDERECO_CLI: TIBStringField;
    qrySeriesNFCOD_VENDA: TIntegerField;
    qrySeriesNFDT_VENDA: TDateField;
    qrySeriesNFDATA_CAIXA: TDateField;
    qrySeriesNFDESC_ACRESC: TFloatField;
    qrySeriesNFDESC_ITEM: TFloatField;
    qrySeriesNFTOTAL: TFloatField;
    qrySeriesNFTOTAL_BRUTO: TFloatField;
    qrySeriesNFNUM_CUPOM: TIntegerField;
    qrySeriesNFNUM_NF: TIntegerField;
    qrySeriesNFNOME_VENDEDOR: TIBStringField;
    qrySeriesNFPRODUTO: TIBStringField;
    qrySeriesNFFORMA_PAGTO: TIBStringField;
    qrySeriesNFSEQUENCIA: TIntegerField;
    qrySeriesNFQUANTIDADE: TFloatField;
    qrySeriesNFPRC_UNITARIO: TFloatField;
    qrySeriesNFPRC_UNITARIO_LIQ: TFloatField;
    qrySeriesNFTOTAL_ITEM: TFloatField;
    qrySeriesNFPARCELAMENTO: TIBStringField;
    qrySeriesNFCOD_PRODUTO: TIBStringField;
    qrySeriesNFBAIRRO: TIBStringField;
    qrySeriesNFCOMPLEMENTO: TIBStringField;
    qrySeriesNFPCT_ITEM_DESCTO: TFloatField;
    qrySeriesNFUNIDADE: TIBStringField;
    qrySeriesNFPESSOA_FJ: TIntegerField;
    qrySeriesNFCGC_CPF_CLI: TIBStringField;
    qrySeriesNFTIPO_DOCTO: TIBStringField;
    qrySeriesNFNOME_TIPO_DOCTO: TIBStringField;
    qrySeriesNFRG_IE: TIBStringField;
    qrySeriesNFHORA: TTimeField;
    qrySeriesNFPCT_DESCTO_VENDA: TFloatField;
    qrySeriesNFCPF_CGC: TIBStringField;
    qrySeriesNFCEP: TIBStringField;
    qrySeriesNFCEP_EMP: TIBStringField;
    qrySeriesNFBAIRRO_EMP: TIBStringField;
    qrySeriesNFFONE: TIBStringField;
    qrySeriesNFFONE_CLIENTE: TIBStringField;
    qrySeriesNFENDERECO_EMP: TIBStringField;
    qrySeriesNFFANTASIA_CLI: TIBStringField;
    qrySeriesNFEMPRESA: TIBStringField;
    qrySeriesNFCNPJ_EMP: TIBStringField;
    qrySeriesNFOBSERVACAO: TIBStringField;
    qrySeriesNFCONT_ITENS: TIBBCDField;
    qrySeriesNFVOLUME: TIBBCDField;
    qrySeriesNFPESO: TIBBCDField;
    dsQrySeriesNF: TDataSource;
    dsQryCT13: TDataSource;
    qryServicoRG_IE: TIBStringField;
    qrySeriesNFCIDADE_EMP: TIBStringField;
    qryNFAgrup: TIBQuery;
    dsNFAgrup: TDataSource;
    qryNFAgrupCLI_NOME: TIBStringField;
    qryNFAgrupCLI_PROPRIEDADE: TIBStringField;
    qryNFAgrupCLI_CODIGO: TIntegerField;
    qryNFAgrupCLI_IE_SUB: TIBStringField;
    qryNFAgrupCLI_IE: TIBStringField;
    qryNFAgrupCLI_CNPJ: TIBStringField;
    qryNFAgrupCLI_ENDERECO: TIBStringField;
    qryNFAgrupCLI_BAIRRO: TIBStringField;
    qryNFAgrupCLI_CEP: TIBStringField;
    qryNFAgrupCLI_CIDADE: TIBStringField;
    qryNFAgrupCLI_FONE: TIBStringField;
    qryNFAgrupCLI_UF: TIBStringField;
    qryNFAgrupVD_NATUREZA: TIBStringField;
    qryNFAgrupVD_MSG_ECF: TIBStringField;
    qryNFAgrupVD_OBS: TIBStringField;
    qryNFAgrupVD_CFOP: TIntegerField;
    qryNFAgrupVD_CODIGO: TIntegerField;
    qryNFAgrupVD_DT_EMISSAO: TDateField;
    qryNFAgrupVD_DT_SAIDA: TDateField;
    qryNFAgrupVD_HORA_SAIDA: TTimeField;
    qryNFAgrupVD_TOTAL_PROD: TFloatField;
    qryNFAgrupVD_TOTAL_LIQUIDO: TFloatField;
    qryNFAgrupVD_ICMS_DEBITADO: TFloatField;
    qryNFAgrupVD_TOTAL_NF: TFloatField;
    qryNFAgrupVD_DESCONTO: TFloatField;
    qryNFAgrupVD_VLR_FRETE: TFloatField;
    qryNFAgrupVD_VLR_SEGURO: TFloatField;
    qryNFAgrupVD_VLR_OUTRAS_DESP: TFloatField;
    qryNFAgrupVD_BASE_CALC: TFloatField;
    qryNFAgrupVD_VLR_ICM: TFloatField;
    qryNFAgrupVD_BASE_CALC_SUB: TFloatField;
    qryNFAgrupVD_VLR_ICM_SUB: TFloatField;
    qryNFAgrupVD_VLR_IPI: TFloatField;
    qryNFAgrupPRD_IPI: TFloatField;
    qryNFAgrupPRD_CODIGO: TIBStringField;
    qryNFAgrupPRD_NOME: TIBStringField;
    qryNFAgrupPRD_UNIDADE: TIBStringField;
    qryNFAgrupPRD_SIT_TRIB: TIBStringField;
    qryNFAgrupPRD_CL_FIS: TIBStringField;
    qryNFAgrupPRD_QTDE: TFloatField;
    qryNFAgrupPRD_VLR_UNIT: TFloatField;
    qryNFAgrupPRD_VLR_TTL_ITEM: TFloatField;
    qryNFAgrupPRD_ALIQ_ICM: TIBStringField;
    qryNFAgrupPRD_COMPLEMENTO: TIBStringField;
    qryNFAgrupPRD_REDUCAO: TIBStringField;
    qryNFAgrupVDI_COMPLEMENTO: TIBStringField;
    qryNFAgrupTRP_NOME: TIBStringField;
    qryNFAgrupTRP_CNPJ: TIBStringField;
    qryNFAgrupTRP_PLACA: TIBStringField;
    qryNFAgrupTRP_ENDERECO: TIBStringField;
    qryNFAgrupTRP_CIDADE: TIBStringField;
    qryNFAgrupTRP_UF: TIBStringField;
    qryNFAgrupTRP_UF_VEICULO: TIBStringField;
    qryNFAgrupTRP_FRETE: TIntegerField;
    qryNFAgrupTRP_IE: TIBStringField;
    qryNFAgrupTRP_PESO_LIQ: TFloatField;
    qryNFAgrupTRP_PESO_BRUTO: TFloatField;
    qryNFAgrupTRP_PESO_QTDE: TFloatField;
    qryNFAgrupTRP_ESPECIE: TIBStringField;
    qryNFAgrupTRP_MARCA: TIBStringField;
    qryNFAgrupTRP_NUMERO: TIBStringField;
    qryNFAgrupPRD_OBSERVACAO: TIBStringField;
    qryNFAgrupGPR_OBS: TMemoField;
    qryNFAgrupPC_PARCELAMENTO: TIBStringField;
    qryNFAgrupPRD_PRODUTO_LOTE: TIBStringField;
    qryNFAgrupVD_ENTRADA: TIBStringField;
    qryNFAgrupVD_SAIDA: TIBStringField;
    qryNFAgrupNUM_NF: TIntegerField;
    qryNFAgrupALT_DETALHE: TFloatField;
    qryNFAgrupDESC_ICM_TTL_PROD: TFloatField;
    qryNFAgrupDESC_ICM_LBL_TTL_PROD: TIBStringField;
    qryNFAgrupDESC_ICM_TTL_DESCTO: TFloatField;
    qryNFAgrupDESC_ICM_LBL_TTL_DESCTO: TIBStringField;
    qryNFAgrupDESC_ICM_TTL_LIQ: TFloatField;
    qryNFAgrupDESC_ICM_LBL_TTL_LIQ: TIBStringField;
    qryNFAgrupDESC_ICM_MSG_1: TIBStringField;
    qryNFAgrupDESC_ICM_MSG_2: TIBStringField;
    qryParcItens: TIBQuery;
    qryParcItensCNPJ: TIBStringField;
    qryParcItensCODIGO: TIntegerField;
    qryParcItensPRODUTO: TIBStringField;
    qryParcItensSEQUENCIA: TSmallintField;
    qryParcItensQUANTIDADE: TFloatField;
    qryParcItensPRC_UNITARIO: TFloatField;
    qryParcItensPRC_CUSTO: TFloatField;
    qryParcItensICM: TFloatField;
    qryParcItensICM_SUBS: TFloatField;
    qryParcItensIPI: TFloatField;
    qryParcItensVOLUME: TFloatField;
    qryParcItensPESO: TFloatField;
    qryParcItensDESCONTO: TFloatField;
    qryParcItensPORC_DESC: TFloatField;
    qryParcItensUNIDADE: TIBStringField;
    qryParcItensPRC_UNIT_ORIGINAL: TFloatField;
    qryParcItensNOME_PRODUTO: TIBStringField;
    qryParcItensALIQUOTA: TIBStringField;
    qryParcItensPRODUTOFIS: TIBStringField;
    qryParcItensNOME_FIS: TIBStringField;
    qryParcItensCTE: TIntegerField;
    qryParcItensCTIE: TIntegerField;
    qryParcItensORIGEM: TIntegerField;
    qryParcItensREDUCAO: TIntegerField;
    qryParcItensSUBUNIDADE: TIntegerField;
    qryParcItensTOTAL_DIGITADO: TFloatField;
    qryParcItensVENDEDOR: TIntegerField;
    qryParcItensFRACIONADO: TIBStringField;
    qryParcItensMENSAGEM_REDUCAO: TIBStringField;
    qryParcItensBASECALCULOICM: TFloatField;
    qryParcItensBASECALCULOSUBSTITUICAO: TFloatField;
    qryParcItensALIQUOTA_EST: TFloatField;
    qryParcItensALIQUOTA_INT: TFloatField;
    qryParcItensCFOP: TIntegerField;
    qryParcItensCOMPLEMENTO: TIBStringField;
    qryParcItensNOME_VENDEDOR: TIBStringField;
    qryParcItensSERVICO: TBlobField;
    qryParcItensNUMERO: TIBStringField;
    qryParcItensLINHA_ABASTECIMENTO: TIntegerField;
    qryParcItensCONTADOR_ARQUIVO: TIntegerField;
    qryParcItensGRADE: TIBStringField;
    qryParcItensQUANTIDADE_FIS: TFloatField;
    qryParcItensPRC_UNITARIO_FIS: TFloatField;
    qryParcItensLOTE: TIBStringField;
    qryParcItensCODIGO_LOTE: TIntegerField;
    qryParcItensUTILIZA_LOTE: TIBStringField;
    qryParcItensCOM_GERADA: TIBStringField;
    qryParcItensQTDE_ENTREGUE: TFloatField;
    qryGrafNFCLI_NOME: TIBStringField;
    qryGrafNFCLI_PROPRIEDADE: TIBStringField;
    qryGrafNFCLI_CODIGO: TIntegerField;
    qryGrafNFCLI_IE_SUB: TIBStringField;
    qryGrafNFCLI_IE: TIBStringField;
    qryGrafNFCLI_CNPJ: TIBStringField;
    qryGrafNFCLI_BAIRRO: TIBStringField;
    qryGrafNFCLI_CEP: TIBStringField;
    qryGrafNFCLI_CIDADE: TIBStringField;
    qryGrafNFCLI_FONE: TIBStringField;
    qryGrafNFCLI_UF: TIBStringField;
    qryGrafNFVD_NATUREZA: TIBStringField;
    qryGrafNFVD_MSG_ECF: TIBStringField;
    qryGrafNFVD_OBS: TIBStringField;
    qryGrafNFVD_CFOP: TIntegerField;
    qryGrafNFVD_CODIGO: TIntegerField;
    qryGrafNFVD_DT_EMISSAO: TDateField;
    qryGrafNFVD_DT_SAIDA: TDateField;
    qryGrafNFVD_HORA_SAIDA: TTimeField;
    qryGrafNFVD_TOTAL_PROD: TFloatField;
    qryGrafNFVD_TOTAL_LIQUIDO: TFloatField;
    qryGrafNFVD_ICMS_DEBITADO: TFloatField;
    qryGrafNFVD_TOTAL_NF: TFloatField;
    qryGrafNFVD_DESCONTO: TFloatField;
    qryGrafNFVD_VLR_FRETE: TFloatField;
    qryGrafNFVD_VLR_SEGURO: TFloatField;
    qryGrafNFVD_VLR_OUTRAS_DESP: TFloatField;
    qryGrafNFVD_BASE_CALC: TFloatField;
    qryGrafNFVD_VLR_ICM: TFloatField;
    qryGrafNFVD_BASE_CALC_SUB: TFloatField;
    qryGrafNFVD_VLR_ICM_SUB: TFloatField;
    qryGrafNFVD_VLR_IPI: TFloatField;
    qryGrafNFPRD_IPI: TFloatField;
    qryGrafNFPRD_CODIGO: TIBStringField;
    qryGrafNFPRD_NOME: TIBStringField;
    qryGrafNFPRD_UNIDADE: TIBStringField;
    qryGrafNFPRD_SIT_TRIB: TIBStringField;
    qryGrafNFPRD_CL_FIS: TIBStringField;
    qryGrafNFPRD_QTDE: TFloatField;
    qryGrafNFPRD_VLR_UNIT: TFloatField;
    qryGrafNFPRD_VLR_TTL_ITEM: TFloatField;
    qryGrafNFPRD_ALIQ_ICM: TIBStringField;
    qryGrafNFPRD_COMPLEMENTO: TIBStringField;
    qryGrafNFPRD_REDUCAO: TIBStringField;
    qryGrafNFVDI_COMPLEMENTO: TIBStringField;
    qryGrafNFTRP_NOME: TIBStringField;
    qryGrafNFTRP_CNPJ: TIBStringField;
    qryGrafNFTRP_PLACA: TIBStringField;
    qryGrafNFTRP_ENDERECO: TIBStringField;
    qryGrafNFTRP_CIDADE: TIBStringField;
    qryGrafNFTRP_UF: TIBStringField;
    qryGrafNFTRP_UF_VEICULO: TIBStringField;
    qryGrafNFTRP_FRETE: TIntegerField;
    qryGrafNFTRP_IE: TIBStringField;
    qryGrafNFTRP_PESO_LIQ: TFloatField;
    qryGrafNFTRP_PESO_BRUTO: TFloatField;
    qryGrafNFTRP_PESO_QTDE: TFloatField;
    qryGrafNFTRP_ESPECIE: TIBStringField;
    qryGrafNFTRP_MARCA: TIBStringField;
    qryGrafNFTRP_NUMERO: TIBStringField;
    qryGrafNFPRD_OBSERVACAO: TIBStringField;
    qryGrafNFGPR_OBS: TMemoField;
    qryGrafNFPC_PARCELAMENTO: TIBStringField;
    qryGrafNFPRD_PRODUTO_LOTE: TIBStringField;
    qryGrafNFVD_ENTRADA: TIBStringField;
    qryGrafNFVD_SAIDA: TIBStringField;
    qryGrafNFNUM_NF: TIntegerField;
    qryGrafNFALT_DETALHE: TFloatField;
    qryGrafNFDESC_ICM_TTL_PROD: TFloatField;
    qryGrafNFDESC_ICM_LBL_TTL_PROD: TIBStringField;
    qryGrafNFDESC_ICM_TTL_DESCTO: TFloatField;
    qryGrafNFDESC_ICM_LBL_TTL_DESCTO: TIBStringField;
    qryGrafNFDESC_ICM_TTL_LIQ: TFloatField;
    qryGrafNFDESC_ICM_LBL_TTL_LIQ: TIBStringField;
    qryGrafNFDESC_ICM_MSG_1: TIBStringField;
    qryGrafNFDESC_ICM_MSG_2: TIBStringField;
    SelecionaVenda: TIBSQL;
    qryFaturamentosNUM_NF: TIntegerField;
    qrySeries_ORC_NF: TIBQuery;
    dsSeries_ORC_NF: TDataSource;
    qrySeries_ORC_NFCLIENTE: TIBStringField;
    qrySeries_ORC_NFCIDADE: TIBStringField;
    qrySeries_ORC_NFENDERECO_CLI: TIBStringField;
    qrySeries_ORC_NFCOD_VENDA: TIntegerField;
    qrySeries_ORC_NFDT_VENDA: TDateField;
    qrySeries_ORC_NFDATA_CAIXA: TDateField;
    qrySeries_ORC_NFDESC_ACRESC: TFloatField;
    qrySeries_ORC_NFDESC_ITEM: TFloatField;
    qrySeries_ORC_NFTOTAL: TFloatField;
    qrySeries_ORC_NFTOTAL_BRUTO: TFloatField;
    qrySeries_ORC_NFNUM_CUPOM: TIntegerField;
    qrySeries_ORC_NFNUM_NF: TIntegerField;
    qrySeries_ORC_NFNOME_VENDEDOR: TIBStringField;
    qrySeries_ORC_NFPRODUTO: TIBStringField;
    qrySeries_ORC_NFFORMA_PAGTO: TIBStringField;
    qrySeries_ORC_NFSEQUENCIA: TIntegerField;
    qrySeries_ORC_NFQUANTIDADE: TFloatField;
    qrySeries_ORC_NFPRC_UNITARIO: TFloatField;
    qrySeries_ORC_NFPRC_UNITARIO_LIQ: TFloatField;
    qrySeries_ORC_NFTOTAL_ITEM: TFloatField;
    qrySeries_ORC_NFPARCELAMENTO: TIBStringField;
    qrySeries_ORC_NFCOD_PRODUTO: TIBStringField;
    qrySeries_ORC_NFBAIRRO: TIBStringField;
    qrySeries_ORC_NFCOMPLEMENTO: TIBStringField;
    qrySeries_ORC_NFPCT_ITEM_DESCTO: TFloatField;
    qrySeries_ORC_NFUNIDADE: TIBStringField;
    qrySeries_ORC_NFPESSOA_FJ: TIntegerField;
    qrySeries_ORC_NFCGC_CPF_CLI: TIBStringField;
    qrySeries_ORC_NFTIPO_DOCTO: TIBStringField;
    qrySeries_ORC_NFNOME_TIPO_DOCTO: TIBStringField;
    qrySeries_ORC_NFRG_IE: TIBStringField;
    qrySeries_ORC_NFHORA: TTimeField;
    qrySeries_ORC_NFPCT_DESCTO_VENDA: TFloatField;
    qrySeries_ORC_NFCPF_CGC: TIBStringField;
    qrySeries_ORC_NFCEP: TIBStringField;
    qrySeries_ORC_NFCEP_EMP: TIBStringField;
    qrySeries_ORC_NFBAIRRO_EMP: TIBStringField;
    qrySeries_ORC_NFFONE: TIBStringField;
    qrySeries_ORC_NFFONE_CLIENTE: TIBStringField;
    qrySeries_ORC_NFENDERECO_EMP: TIBStringField;
    qrySeries_ORC_NFFANTASIA_CLI: TIBStringField;
    qrySeries_ORC_NFEMPRESA: TIBStringField;
    qrySeries_ORC_NFCIDADE_EMP: TIBStringField;
    qrySeries_ORC_NFCNPJ_EMP: TIBStringField;
    qrySeries_ORC_NFOBSERVACAO: TIBStringField;
    qrySeries_ORC_NFCONT_ITENS: TIBBCDField;
    qrySeries_ORC_NFVOLUME: TIBBCDField;
    qrySeries_ORC_NFPESO: TIBBCDField;
    qrySeriesNFMRC_CODIGO: TIntegerField;
    qrySeriesNFMRC_NOME: TIBStringField;
    qrySeriesNFPRO_NOME: TIBStringField;
    qrySeriesNFPRO_PROPRIETARIO: TIBStringField;
    qrySeriesNFPRO_IE: TIBStringField;
    qrySeriesNFPRO_PROPRIEDADE: TIntegerField;
    qrySeriesNFPRO_ENDERECO: TIntegerField;
    qrySeriesNFPRO_COMPLEMENTO: TIBStringField;
    qrySeriesNFPRO_CIDADE: TIntegerField;
    qrySeriesNFPRO_UF: TIBStringField;
    qrySeriesNFPRO_CEP: TIBStringField;
    qrySeriesNFPRO_AREA_TOTAL: TIBStringField;
    qrySeriesNFPRO_ATIVA: TIBStringField;
    qrySeriesNFPRO_NUMERO: TIBStringField;
    qrySeriesNFPRO_CPF: TIBStringField;
    qrySeriesNFPRO_TECNICO: TIntegerField;
    qrySeriesNFPSA_CELULAR: TIBStringField;
    qrySeriesNFPSA_FAX: TIBStringField;
    qrySeriesNFVDI_GRADE: TIBStringField;
    qrySeriesNFVDI_NUMERO: TIBStringField;
    qrySeriesNFGRD_GRADE: TIBStringField;
    qrySeriesNFGRD_MATERIAL: TIntegerField;
    qrySeriesNFGRD_COR: TIntegerField;
    qrySeriesNFGRD_NOME_MATERIAL: TIBStringField;
    qrySeriesNFGRD_NOME_COR: TIBStringField;
    qrySeriesNFGRD_PERFIL: TIntegerField;
    qrySeriesNFGRD_NOME_PERFIL: TIBStringField;
    qrySeriesNFGRD_NUMERO: TIBStringField;
    qrySeriesNFGRD_ORDEM: TIntegerField;
    qrySeriesNFCOD_CLIENTE: TIntegerField;
    qrySeriesNFPC_PARCELAMENTO: TIBStringField;
    qryGrafNFCLI_FAX: TIBStringField;
    qryGrafNFVEND_NOME: TIBStringField;
    qryGrafNFVEND_COD: TIntegerField;
    qryGrafNFPRD_PORC_DESC: TFloatField;
    qryGrafNFPRC_UNITARIO_LIQ: TFloatField;
    qryGrafNFPRC_UNITARIO: TFloatField;
    SelFaturaVendasFutura: TIBDataSet;
    SelFaturaVendasFuturaSELECIONADA: TIBStringField;
    SelFaturaVendasFuturaPESSOA_FJ: TIntegerField;
    SelFaturaVendasFuturaNOME: TIBStringField;
    SelFaturaVendasFuturaCODIGO: TIntegerField;
    SelFaturaVendasFuturaDATA: TDateTimeField;
    SelFaturaVendasFuturaTOTAL: TIBBCDField;
    SelFaturaVendasFuturaFECHADA: TIBStringField;
    SelFaturaVendasFuturaHISTORICO: TIBStringField;
    SelFaturaVendasFuturaVENDEDOR: TIntegerField;
    SelFaturaVendasFuturaNOMEVENDEDOR: TIBStringField;
    SelFaturaVendasFuturaUSUARIO: TIntegerField;
    SelFaturaVendasFuturaDATA_CAIXA: TDateField;
    SelFaturaVendasFuturaCONTA_CAIXA: TIntegerField;
    SelFaturaVendasFuturaNUM_NF: TIntegerField;
    SelFaturaVendasFuturaNUM_CUPOM: TIntegerField;
    SelFaturaVendasFuturaNATUREZA: TIntegerField;
    SelFaturaVendasFuturaNOMENATUREZA: TIBStringField;
    SelFaturaVendasFuturaTIPO_VENDA: TIBStringField;
    SelFaturaVendasFuturaNOME_CONSUMIDOR: TIBStringField;
    SelFaturaVendasFuturaVLR_TOTAL: TIBBCDField;
    SelFaturaVendasFuturaDESC_ACRES: TIBBCDField;
    SelFaturaVendasFuturaOBSERVACAO: TIBStringField;
    SelFaturaVendasFuturaORCAMENTO: TIntegerField;
    SelFaturaVendasFuturaLOCAL: TIntegerField;
    SelFaturaVendasFuturaCANCELADA: TIBStringField;
    SelFaturaVendasFuturaCARGA: TIntegerField;
    SelFaturaVendasFuturaSERIE: TIBStringField;
    CarregarItensFutura: TIBDataSet;
    CarregarItensFuturaCNPJ: TIBStringField;
    CarregarItensFuturaCODIGO: TIntegerField;
    CarregarItensFuturaPRODUTO: TIBStringField;
    CarregarItensFuturaSEQUENCIA: TSmallintField;
    CarregarItensFuturaQUANTIDADE: TFloatField;
    CarregarItensFuturaVOLUME: TFloatField;
    CarregarItensFuturaPESO: TFloatField;
    CarregarItensFuturaUNIDADE: TIBStringField;
    CarregarItensFuturaNOME_PRODUTO: TIBStringField;
    CarregarItensFuturaSUBUNIDADE: TIntegerField;
    CarregarItensFuturaFRACIONADO: TIBStringField;
    CarregarItensFuturaSERVICO: TBlobField;
    CarregarItensFuturaGRADE: TIBStringField;
    CarregarItensFuturaNUMERO: TIBStringField;
    CarregarItensFuturaLOTE: TIBStringField;
    CarregarItensFuturaCODIGO_LOTE: TIntegerField;
    CarregarItensFuturaUTILIZA_LOTE: TIBStringField;
    CarregarItensFuturaCARREGADO: TFloatField;
    CarregarItensFuturaCARREGAR: TFloatField;
    CarregarItensFuturaENTREGUE: TFloatField;
    qrySeries_ORC_NFDATA_VALIDADE: TDateField;
    qrySeries_ORC_NFMRC_CODIGO: TIntegerField;
    qrySeries_ORC_NFMRC_NOME: TIBStringField;
    SelFaturaVendasFuturaSTATUS_CARREGAMENTO: TIntegerField;
    SelFaturaVendasFuturaORDEM_CARGA: TIntegerField;
    ImportaItens: TIBStoredProc;
    CarregarItensFuturaDEVOLVIDO: TFloatField;
    SelFaturaVendasFuturaItens: TIBDataSet;
    SelFaturaVendasFuturaItensCODIGO: TIntegerField;
    SelFaturaVendasFuturaItensPRODUTO: TIBStringField;
    SelFaturaVendasFuturaItensSEQUENCIA: TSmallintField;
    SelFaturaVendasFuturaItensQUANTIDADE: TFloatField;
    SelFaturaVendasFuturaItensPRC_UNITARIO: TFloatField;
    SelFaturaVendasFuturaItensDESCONTO: TFloatField;
    SelFaturaVendasFuturaItensPORC_DESC: TFloatField;
    SelFaturaVendasFuturaItensUNIDADE: TIBStringField;
    SelFaturaVendasFuturaItensPRC_UNIT_ORIGINAL: TFloatField;
    SelFaturaVendasFuturaItensNOME_PRODUTO: TIBStringField;
    SelFaturaVendasFuturaItensGRADE: TIBStringField;
    SelFaturaVendasFuturaItensNUMERO: TIBStringField;
    SelFaturaVendasFuturaItensGRADE1: TIBStringField;
    SelFaturaVendasFuturaItensNOME_COR: TIBStringField;
    SelFaturaVendasFuturaItensNOME_MATERIAL: TIBStringField;
    SelFaturaVendasFuturaItensNOME_PERFIL: TIBStringField;
    SelFaturaVendasFuturaItensENTREGUE: TFloatField;
    SelFaturaVendasFuturaItensDEVOLVIDO: TFloatField;
    CarregarItensFuturaDEVOLVER: TFloatField;
    CarregarItensFuturaENTREGAR: TFloatField;
    SelFaturaVendasFuturaItensCARREGAR: TFloatField;
    SelFaturaVendasFuturaItensCARREGADO: TFloatField;
    SelFaturaVendasFuturaItensENTREGAR: TFloatField;
    SelFaturaVendasFuturaItensDEVOLVER: TFloatField;
    qryGrafNFCOD_ORIGINADOR: TIBStringField;
    qrySeriesNFPRO_RUA_NOME: TIBStringField;
    qryNFAgrupDT_IMP_NF: TDateField;
    qryGrafNFDT_IMP_NF: TDateField;
    SelFaturaVendasFuturaItensCODIGO_LOTE: TIntegerField;
    SelFaturaVendasFuturaItensLOTE: TIBStringField;
    qryAux: TIBQuery;
    qryGrafNFVDI_CFOP: TIntegerField;
    qryNFAgrupVDI_CFOP: TIntegerField;
    qrySeriesNFTROCO: TIBBCDField;
    qryGrafNFS_VD_TOTAL_NF: TIBStringField;
    qryGrafNFS_VD_VLR_IPI: TIBStringField;
    qryGrafNFS_VD_VLR_OUTRAS_DESP: TIBStringField;
    qryGrafNFS_VD_VLR_SEGURO: TIBStringField;
    qryGrafNFS_VD_VLR_FRETE: TIBStringField;
    qryGrafNFS_VD_TOTAL_PROD: TIBStringField;
    qryGrafNFS_VD_VLR_ICM: TIBStringField;
    qryGrafNFS_VD_VLR_ICM_SUB: TIBStringField;
    qryGrafNFS_VD_BASE_CALC: TIBStringField;
    qryGrafNFS_VD_BASE_CALC_SUB: TIBStringField;
    Valida_Produto: TIBQuery;
    Valida_ProdutoPRC_REPOS: TIBBCDField;
    Valida_ProdutoPRC_VENDA: TIBBCDField;
    Valida_ProdutoVOLUME: TIBBCDField;
    Valida_ProdutoPESO_LIQ: TIBBCDField;
    Valida_ProdutoUNIDADE: TIBStringField;
    Valida_ProdutoNOME: TIBStringField;
    Valida_ProdutoATIVO: TIBStringField;
    Valida_ProdutoALIQUOTA_ECF: TIBStringField;
    Valida_ProdutoQTDADE_1: TIBBCDField;
    Valida_ProdutoQTDADE_2: TIBBCDField;
    Valida_ProdutoNEG_QTDADE_2: TIBStringField;
    Valida_ProdutoSUBUNIDADE: TIntegerField;
    Valida_ProdutoCOMPLEMENTO_NF: TIBStringField;
    Valida_ProdutoORIGEM: TIntegerField;
    Valida_ProdutoCTE: TIntegerField;
    Valida_ProdutoCTIE: TIntegerField;
    Valida_ProdutoREDUCAO: TIntegerField;
    Valida_ProdutoVENDE_FRACIONADO: TIBStringField;
    Valida_ProdutoPOSSUI_LOTE: TIBStringField;
    Valida_ProdutoMARCA: TIBStringField;
    Valida_ProdutoMARGEM_BRUTA: TIBBCDField;
    Valida_ProdutoSERVICO: TIBStringField;
    Valida_ProdutoCOMPLEMENTO: TIBStringField;
    Valida_ProdutoIPI: TIBBCDField;
    Geral: TIBQuery;
    Valida_Cliente: TIBQuery;
    Valida_ClientePESSOA_FJ: TIntegerField;
    Valida_ClienteCOD_VEND: TIntegerField;
    Valida_ClienteCOD_FPAGTO: TIntegerField;
    Valida_ClienteREQUISICAO: TIBStringField;
    Valida_ClienteDIA_PREF_FAT: TIntegerField;
    Valida_ClienteLIMITE_TEMPO: TIntegerField;
    Valida_ClienteLIMITE_CREDITO: TIBBCDField;
    Valida_ClienteCLASSIF: TIBStringField;
    Valida_ClienteBLOQUEADO: TIBStringField;
    Valida_ClienteOBS: TBlobField;
    Valida_ClienteCLASSIFICACAO: TIntegerField;
    Valida_ClienteNOME: TIBStringField;
    Valida_ClienteOBS2: TBlobField;
    Valida_ClienteCPF_CNPJ: TIBStringField;
    Valida_ClienteCONTROLA_PLACA: TIBStringField;
    Valida_ClienteCONTROLA_KM: TIBStringField;
    Valida_ClienteASSINA_NOTA: TIBStringField;
    Valida_ClienteNAO_COBR_JUR_ATE: TFloatField;
    Valida_ClienteTAXA_JUROS: TFloatField;
    Valida_ClienteUF: TIBStringField;
    Valida_ClienteVALOR_MAXIMO_RETIRADA: TFloatField;
    Valida_ClienteLIMITE_DIARIO_RETIRADA: TFloatField;
    Valida_ClienteALIQUOTA_DESCONTO: TFloatField;
    Valida_ClienteCONS_REV: TIBStringField;
    Valida_Forma: TIBQuery;
    Valida_FormaACRESCIMO: TFloatField;
    Valida_FormaAVISTA: TIBStringField;
    Valida_FormaCNPJ: TIBStringField;
    Valida_FormaCODIGO: TIntegerField;
    Valida_FormaCOMENTRADA: TIBStringField;
    Valida_FormaDESCONTO: TFloatField;
    Valida_FormaFATURA_FUTURA: TIBStringField;
    Valida_FormaFORMA_ECF: TIBStringField;
    Valida_FormaINTERVALO: TIntegerField;
    Valida_FormaNOME: TIBStringField;
    Valida_FormaNPARCELAS: TIntegerField;
    Valida_FormaTIPO_PAGAMENTO: TIBStringField;
    qrySeriesNFTRP_NOME: TIBStringField;
    qrySeriesNFTRP_CNPJ: TIBStringField;
    qrySeriesNFTRP_PLACA: TIBStringField;
    qrySeriesNFTRP_ENDERECO: TIBStringField;
    qrySeriesNFTRP_CIDADE: TIBStringField;
    qrySeriesNFTRP_UF: TIBStringField;
    qrySeriesNFTRP_UF_VEICULO: TIBStringField;
    qrySeriesNFTRP_FRETE: TIntegerField;
    qrySeriesNFTRP_IE: TIBStringField;
    qrySeriesNFTRP_PESO_LIQ: TFloatField;
    qrySeriesNFTRP_PESO_BRUTO: TFloatField;
    qrySeriesNFTRP_PESO_QTDE: TFloatField;
    qrySeriesNFTRP_ESPECIE: TIBStringField;
    qrySeriesNFTRP_MARCA: TIBStringField;
    qrySeriesNFTRP_NUMERO: TIBStringField;
    qrySeriesNFVD_VLR_FRETE: TIBBCDField;
    qrySeriesNFVD_BASE_CALC: TIBBCDField;
    qrySeriesNFVD_BASE_CALC_SUB: TIBBCDField;
    qrySeriesNFVD_VLR_ICM_SUB: TIBBCDField;
    qrySeriesNFVD_VLR_ICM: TIBBCDField;
    qrySeriesNFVD_TOTAL_PROD: TIBBCDField;
    qrySeriesNFVD_VLR_SEGURO: TIBBCDField;
    qrySeriesNFVD_VLR_OUTRAS_DESP: TIBBCDField;
    qrySeriesNFVD_VLR_IPI: TIBBCDField;
    qrySeriesNFVD_TOTAL_NF: TIBBCDField;
    DsOrcamentos: TDataSource;
    qrySeriesNFS_VD_TOTAL_NF: TIBStringField;
    qrySeriesNFS_VD_VLR_IPI: TIBStringField;
    qrySeriesNFS_VD_VLR_OUTRAS_DESP: TIBStringField;
    qrySeriesNFS_VD_VLR_SEGURO: TIBStringField;
    qrySeriesNFS_VD_VLR_FRETE: TIBStringField;
    qrySeriesNFS_VD_TOTAL_PROD: TIBStringField;
    qrySeriesNFS_VD_VLR_ICM: TIBStringField;
    qrySeriesNFS_VD_VLR_ICM_SUB: TIBStringField;
    qrySeriesNFS_VD_BASE_CALC: TIBStringField;
    qrySeriesNFS_VD_BASE_CALC_SUB: TIBStringField;
    qrySeriesNFS_TOTAL_BRUTO: TIBStringField;
    qrySeriesNFS_DESC_ACRESC: TIBStringField;
    qrySeriesNFS_TOTAL: TIBStringField;
    qrySeriesNFS_MSG_PROX_FOLHA: TIBStringField;
    qrySeries_ORC_NFGRD_GRADE: TIBStringField;
    qrySeries_ORC_NFGRD_MATERIAL: TIntegerField;
    qrySeries_ORC_NFGRD_COR: TIntegerField;
    qrySeries_ORC_NFGRD_NOME_MATERIAL: TIBStringField;
    qrySeries_ORC_NFGRD_NOME_COR: TIBStringField;
    qrySeries_ORC_NFGRD_PERFIL: TIntegerField;
    qrySeries_ORC_NFGRD_NOME_PERFIL: TIBStringField;
    qrySeries_ORC_NFGRD_NUMERO: TIBStringField;
    qrySeries_ORC_NFGRD_ORDEM: TIntegerField;
    qrySeriesNFVD_CFOP: TIntegerField;
    qrySeriesNFVD_CFOP_DESC: TIBStringField;
    qrySeriesNFPROD_COMPLEMENTO: TIBStringField;
    edtGrafNFINDICE: TIBStringField;
    qryNFAgrupS_VD_TOTAL_NF: TIBStringField;
    qryNFAgrupS_VD_VLR_IPI: TIBStringField;
    qryNFAgrupS_VD_VLR_OUTRAS_DESP: TIBStringField;
    qryNFAgrupS_VD_VLR_SEGURO: TIBStringField;
    qryNFAgrupS_VD_VLR_FRETE: TIBStringField;
    qryNFAgrupS_VD_TOTAL_PROD: TIBStringField;
    qryNFAgrupS_VD_VLR_ICM: TIBStringField;
    qryNFAgrupS_VD_VLR_ICM_SUB: TIBStringField;
    qryNFAgrupS_VD_BASE_CALC: TIBStringField;
    qryNFAgrupS_VD_BASE_CALC_SUB: TIBStringField;
    qryGrafNFCLI_ENDERECO: TIBStringField;
    qrySeriesNFPESO_ITEN: TFloatField;
    Valida_FormaATIVO: TIBStringField;
    Valida_FormaINTERVALO_PRE_DEFINIDO: TIBStringField;
    Valida_FormaVENCTO_FIXO: TIBStringField;
    Valida_FormaDT_VENCTO_FIXO: TDateField;
    Forma_Pagto_Parcelas: TIBQuery;
    Forma_Pagto_ParcelasCNPJ: TIBStringField;
    Forma_Pagto_ParcelasCODIGO: TIntegerField;
    Forma_Pagto_ParcelasCOD_FORMA_PAGTO: TIntegerField;
    Forma_Pagto_ParcelasPARCELA: TIntegerField;
    Forma_Pagto_ParcelasDIAS_VENCIMENTO: TIntegerField;
    qrySeriesNFVD_DATA_BASE: TDateField;
    Valida_ProdutoQNTDE_MINIMA_VENDA: TIBBCDField;
    Valida_ProdutoVALIDA_MULT_QTDE_MIN: TIBStringField;
    qryFatMovtosCODIGO: TIntegerField;
    qryFatMovtosTOTAL: TFloatField;
    qryFatMovtosDESC_ACRES: TFloatField;
    qryFatMovtosDATA: TDateField;
    qryFatMovtosDATA_CAIXA: TDateTimeField;
    qryFatMovtosFECHADA: TIBStringField;
    qryFatMovtosVENDEDOR: TIBStringField;
    qryFatMovtosNATUREZA: TIBStringField;
    QryFatDet: TIBQuery;
    QryFatDetCODIGO: TIntegerField;
    QryFatDetTOTAL: TFloatField;
    QryFatDetDESC_ACRES: TFloatField;
    QryFatDetDATA: TDateField;
    QryFatDetDATA_CAIXA: TDateTimeField;
    QryFatDetFECHADA: TIBStringField;
    QryFatDetVENDEDOR: TIBStringField;
    QryFatDetNATUREZA: TIBStringField;
    qryGrafNFPRD_DEFENSIVO: TIBStringField;
    qryGrafNFPRD_CONCAT: TIBStringField;
    qryGrafNFPARCELA_1_NUMERO: TIBStringField;
    qryGrafNFPARCELA_1_VALOR: TFloatField;
    qryGrafNFPARCELA_1_VENCTO: TDateField;
    qryGrafNFPARCELA_1_EXTENSO: TIBStringField;
    qryGrafNFPARCELA_2_NUMERO: TIBStringField;
    qryGrafNFPARCELA_2_VALOR: TFloatField;
    qryGrafNFPARCELA_2_VENCTO: TDateField;
    qryGrafNFPARCELA_2_EXTENSO: TIBStringField;
    qryGrafNFPARCELA_3_NUMERO: TIBStringField;
    qryGrafNFPARCELA_3_VALOR: TFloatField;
    qryGrafNFPARCELA_3_VENCTO: TDateField;
    qryGrafNFPARCELA_3_EXTENSO: TIBStringField;
    qryGrafNFPARCELA_4_NUMERO: TIBStringField;
    qryGrafNFPARCELA_4_VALOR: TFloatField;
    qryGrafNFPARCELA_4_VENCTO: TDateField;
    qryGrafNFPARCELA_4_EXTENSO: TIBStringField;
    qryGrafNFPARCELA_5_NUMERO: TIBStringField;
    qryGrafNFPARCELA_5_VALOR: TFloatField;
    qryGrafNFPARCELA_5_VENCTO: TDateField;
    qryGrafNFPARCELA_5_EXTENSO: TIBStringField;
    qryGrafNFPARCELA_6_NUMERO: TIBStringField;
    qryGrafNFPARCELA_6_VALOR: TFloatField;
    qryGrafNFPARCELA_6_VENCTO: TDateField;
    qryGrafNFPARCELA_6_EXTENSO: TIBStringField;
    qrySeriesNFSERV_COMPLEMENTO: TBlobField;
    qryNFAgrupPRC_UNITARIO_LIQ: TFloatField;
    qryGrafNFVD_MSG_FISCAL: TMemoField;
    SelPessoas: TIBQuery;
    SelPessoasCODIGO: TIntegerField;
    SelPessoasNOME_RAZAO: TIBStringField;
    SelPessoasCPF_CGC: TIBStringField;
    qrySeriesNFTOTAL_DESC_ITEM: TFloatField;
    qrySeriesNFCONTATO: TIBStringField;
    qryServicoENDERECO: TIBStringField;
    qryServicoCLI_PROPRIEDADE: TIBStringField;
    qryServicoCLI_IE: TIBStringField;
    qryServicoCEP: TIBStringField;
    dsqryServico: TDataSource;
    qryGrafNFVD_VOLUME: TFloatField;
    qryGrafNFS_VD_VOLUME: TIBStringField;
    qryGrafNFVD_MSG_COMPLEMENTAR: TMemoField;
    qrySeriesNFVD_DESC_CARREGAMENTO: TIBStringField;
    QryFatDetTOTAL_LIQUIDO: TFloatField;
    QryFatDetFORMA_PAGTO: TIBStringField;
    QryFatDetTERCEIRO: TIBStringField;
    qryFatItensPRC_UNIT_ORIGINAL: TFloatField;
    qryFatItensCOMPLEMENTO: TIBStringField;
    qryGrafNFLINHA: TIntegerField;
    qryGrafNFVND_CODIGOS: TIBStringField;
    qryNFAgrupVD_VOLUME: TFloatField;
    qryNFAgrupVD_MSG_FISCAL: TMemoField;
    qryNFAgrupVD_MSG_COMPLEMENTAR: TMemoField;
    qryNFAgrupS_VD_VOLUME: TIBStringField;
    qryNFAgrupLINHA: TIntegerField;
    qryNFAgrupVND_CODIGOS: TIBStringField;
    qrySeriesNFCOD_INDICE: TIntegerField;
    qrySeriesNFPRO_BAIRRO: TIBStringField;
    qrySeriesNFLOCALIZACAO_1: TIBStringField;
    qrySeriesNFLOCALIZACAO_2: TIBStringField;
    qrySeriesNFLOCALIZACAO_3: TIBStringField;
    qrySeries_ORC_NFLOCALIZACAO_1: TIBStringField;
    qrySeries_ORC_NFLOCALIZACAO_2: TIBStringField;
    qrySeries_ORC_NFLOCALIZACAO_3: TIBStringField;
    VendasPdv_Itens: TIBDataSet;
    VendasPdv_ItensCNPJ: TIBStringField;
    VendasPdv_ItensCODIGO: TIntegerField;
    VendasPdv_ItensPRODUTO: TIBStringField;
    VendasPdv_ItensQUANTIDADE: TFloatField;
    VendasPdv_ItensPRC_UNITARIO: TFloatField;
    VendasPdv_ItensPRC_CUSTO: TFloatField;
    VendasPdv_ItensICM: TFloatField;
    VendasPdv_ItensICM_SUBS: TFloatField;
    VendasPdv_ItensIPI: TFloatField;
    VendasPdv_ItensVOLUME: TFloatField;
    VendasPdv_ItensPESO: TFloatField;
    VendasPdv_ItensTotal: TFloatField;
    VendasPdv_ItensDESCONTO: TFloatField;
    VendasPdv_ItensPORC_DESC: TFloatField;
    VendasPdv_ItensUNIDADE: TIBStringField;
    VendasPdv_ItensSEQUENCIA: TSmallintField;
    VendasPdv_ItensPRC_UNIT_ORIGINAL: TFloatField;
    VendasPdv_ItensNOME_PRODUTO: TIBStringField;
    VendasPdv_ItensALIQUOTA: TIBStringField;
    VendasPdv_ItensPRODUTOFIS: TIBStringField;
    VendasPdv_ItensNOME_FIS: TIBStringField;
    VendasPdv_ItensSUBUNIDADE: TIntegerField;
    VendasPdv_ItensORIGEM: TIntegerField;
    VendasPdv_ItensCTE: TIntegerField;
    VendasPdv_ItensCTIE: TIntegerField;
    VendasPdv_ItensREDUCAO: TIntegerField;
    VendasPdv_ItensFRACIONADO: TIBStringField;
    VendasPdv_ItensVENDEDOR: TIntegerField;
    VendasPdv_ItensNOME_VENDEDOR: TIBStringField;
    VendasPdv_ItensSERVICO: TBlobField;
    VendasPdv_ItensCOMPLEMENTO: TIBStringField;
    VendasPdv_ItensNUMERO: TIBStringField;
    VendasPdv_ItensGRADE: TIBStringField;
    VendasPdv_ItensSPRODUTO: TIBStringField;
    VendasPdv: TIBDataSet;
    VendasPdvCNPJ: TIBStringField;
    VendasPdvCODIGO: TIntegerField;
    VendasPdvFECHADA: TIBStringField;
    VendasPdvHISTORICO: TIBStringField;
    VendasPdvPESSOA_FJ: TIntegerField;
    VendasPdvUSUARIO: TIntegerField;
    VendasPdvVENDEDOR: TIntegerField;
    VendasPdvNATUREZA: TIntegerField;
    VendasPdvENVIADA_CX: TIBStringField;
    VendasPdvFORMA_PGTO: TIntegerField;
    VendasPdvNUM_NF: TIntegerField;
    VendasPdvNUM_CUPOM: TIntegerField;
    VendasPdvPROPRIEDADE: TIntegerField;
    VendasPdvCONVENIADO: TIntegerField;
    VendasPdvTIPO_DOCTO: TIBStringField;
    VendasPdvLOCAL_COBRANCA: TIntegerField;
    VendasPdvDESC_ACRES: TFloatField;
    VendasPdvENTRADA: TFloatField;
    VendasPdvDINHEIRO: TFloatField;
    VendasPdvCHEQUE: TFloatField;
    VendasPdvCARTAO: TFloatField;
    VendasPdvTICKET: TFloatField;
    VendasPdvTOTAL: TFloatField;
    VendasPdvVLR_PARC_LC: TFloatField;
    VendasPdvTIPO_VENDA: TIBStringField;
    VendasPdvNOME_CONSUMIDOR: TIBStringField;
    VendasPdvOBSERVACAO: TIBStringField;
    VendasPdvTERCEIRO: TIntegerField;
    VendasPdvCARGA: TIntegerField;
    VendasPdvVOLUME: TFloatField;
    VendasPdvPESO: TFloatField;
    VendasPdvREQUISICAO: TIBStringField;
    VendasPdvDESCRICAO: TBlobField;
    VendasPdvORCAMENTO: TIntegerField;
    VendasPdvTROCO: TFloatField;
    VendasPdvLOCAL: TIntegerField;
    VendasPdvNOME: TIBStringField;
    VendasPdvCANCELADA: TIBStringField;
    VendasPdvSELECIONADA: TIBStringField;
    VendasPdvDUPLICATA: TIntegerField;
    VendasPdvRECEBIDAS: TFloatField;
    VendasPdvTotal_Geral: TFloatField;
    VendasPdvCONS_REV: TIBStringField;
    VendasPdvCONTA_CAIXA: TIntegerField;
    VendasPdvTOTAL_NOTA: TFloatField;
    VendasPdvBASE_ICM: TFloatField;
    VendasPdvICM: TFloatField;
    VendasPdvBASE_ICM_SUBST: TFloatField;
    VendasPdvVALOR_ICM_SUBST: TFloatField;
    VendasPdvFRETE: TFloatField;
    VendasPdvSEGURO: TFloatField;
    VendasPdvDESPESAS: TFloatField;
    VendasPdvIPI: TFloatField;
    VendasPdvAPRAZO: TFloatField;
    VendasPdvBANCO: TIBStringField;
    VendasPdvCONTROLA_PLACA: TIBStringField;
    VendasPdvCONTROLA_KM: TIBStringField;
    VendasPdvASSINA_NOTA: TIBStringField;
    VendasPdvKM_ATUAL: TFloatField;
    VendasPdvNOME_PROPRIEDADE: TIBStringField;
    VendasPdvNOME_VENDEDOR: TIBStringField;
    VendasPdvNOME_NATUREZA: TIBStringField;
    VendasPdvNOME_TERCEIRO: TIBStringField;
    VendasPdvNOME_FORMA: TIBStringField;
    VendasPdvUF: TIBStringField;
    VendasPdvVALIDADE: TDateTimeField;
    VendasPdvMEDIA_KM: TFloatField;
    VendasPdvDOCUMENTOS_CONSUMIDOR: TIBStringField;
    VendasPdvENDERECO_CONSUMIDOR: TIBStringField;
    VendasPdvTURNO: TIntegerField;
    VendasPdvHORA: TTimeField;
    VendasPdvNAO_COBR_JUR_ATE: TIntegerField;
    VendasPdvSERIE: TIBStringField;
    VendasPdvDESCONTOS_CONCEDIDOS: TFloatField;
    VendasPdvNOME_CONVENIO: TIBStringField;
    VendasPdvDT_EMISSAO_AGRUPADA: TDateTimeField;
    VendasPdvTRANSPORTADORA: TIntegerField;
    VendasPdvDATA_CANCELAMENTO: TDateTimeField;
    VendasPdvTOTAL_FISCAL: TFloatField;
    VendasPdvIRRF: TFloatField;
    VendasPdvINSS: TFloatField;
    VendasPdvPIS_COFINS_CSLL: TFloatField;
    VendasPdvISS: TFloatField;
    VendasPdvVALE_TROCO: TIBStringField;
    VendasPdvCIDADE_CONSUMIDOR: TIBStringField;
    VendasPdvPGTO_FRETE: TIBStringField;
    VendasPdvBAIRRO_CONSUMIDOR: TIBStringField;
    VendasPdvFONE_CONSUMIDOR: TIBStringField;
    VendasPdvMESA: TIntegerField;
    VendasPdvDESCTO_RES: TFloatField;
    VendasPdvCOMPROMETER_ESTOQUE: TIBStringField;
    VendasPdvID_AGRUPADOR: TIntegerField;
    VendasPdvDESCTO_ICMS: TFloatField;
    VendasPdvPCT_DESCTO_ICMS: TFloatField;
    VendasPdvNF_AGRUPADA: TIBStringField;
    VendasPdvTRP_QTDE: TFloatField;
    VendasPdvTRP_ESPECIE: TIBStringField;
    VendasPdvTRP_PESO_BRUTO: TFloatField;
    VendasPdvTRP_PESO_LIQUIDO: TFloatField;
    VendasPdvTRP_NUMERO: TIBStringField;
    VendasPdvTRP_MARCA: TIntegerField;
    VendasPdvTRP_NOME: TIBStringField;
    VendasPdvSTATUS_CARREGAMENTO: TIntegerField;
    VendasPdvORDEM_CARGA: TIntegerField;
    VendasPdvENTREGA_FUTURA: TIBStringField;
    VendasPdvPCT_COMISSAO: TFloatField;
    VendasPdvCENTRO_CUSTO: TIntegerField;
    VendasPdvES: TIBStringField;
    VendasPdvGERA_FINANCEIRO: TIBStringField;
    VendasPdvDATA: TDateField;
    VendasPdvDATA_CAIXA: TDateTimeField;
    qrySeriesNFOFC_PLACA: TIBStringField;
    VendasPdvNFE_CHAVE: TIBStringField;
    VendasPdvNFE_SELECIONADO: TIBStringField;
    VendasPdvDT_PREV_ENTREGA: TDateField;
    VendasPdvCOD_INDEXADOR: TIntegerField;
    VendasPdvIDX_DATABASE: TDateField;
    VendasPdvIDX_COTACAO: TFloatField;
    VendasPdvIDX_QTDE: TFloatField;
    VendasPdvCOD_CONFIGTITULO: TIntegerField;
    VendasPdvNFE_VALIDADA: TIBStringField;
    VendasPdvNFE_ASSINADA: TIBStringField;
    VendasPdvNFE_TRANSMITIDA: TIBStringField;
    VendasPdvNFE_AUTORIZADA: TIBStringField;
    VendasPdvNFE_DANFE_IMPRESSO: TIBStringField;
    VendasPdvCLI_SUB_TRIBUTARIO: TIBStringField;
    VendasPdvDT_EMISSAO_NF: TDateField;
    VendasPdvDT_EMISSAO_CF: TDateField;
    VendasPdvN_SEQ_ECF: TIBStringField;
    VendasPdvN_SERIE_ECF: TIBStringField;
    VendasPdvNFE_PROTOCOLO: TIBStringField;
    VendasPdvNFE_RECIBO: TIBStringField;
    VendasPdvNFE_XML: TMemoField;
    VendasPdvNFE_CANC_MOTIVO: TIBStringField;
    VendasPdvNFE_CANC_STATUS: TIBStringField;
    VendasPdvNFE_CANC_PROTOCOLO: TIBStringField;
    VendasPdvNFE_CANC_XML: TMemoField;
    VendasPdvPLACA: TIBStringField;
    VendasPdvUF_PLACA: TIBStringField;
    VendasPdvBCH_COD_FILIAL: TIntegerField;
    VendasPdvDESCTO_SERVICO: TFloatField;
    qryNFAgrupVEND_NOME: TIBStringField;
    BCH_ITENS: TIBQuery;
    BCH_ITENSPEDIDO: TIntegerField;
    BCH_ITENSPRC_UNITARIO: TFloatField;
    BCH_ITENSQUANTIDADE: TFloatField;
    BCH_ITENSVENDEDOR: TIntegerField;
    BCH_ITENSPRODUTO: TIBStringField;
    BCH_ITENSPESSOA_FJ: TIntegerField;
    BCH_CARTAO: TIBQuery;
    BCH_CARTAOVENDA: TIntegerField;
    BCH_CARTAOVALOR: TFloatField;
    BCH_CARTAODATA: TDateTimeField;
    BCH_ITENSTOTAL_VENDA: TFloatField;
    BCH_ITENSBCH_CODIGO: TIntegerField;
    BCH_ITENSDESCONTO: TIBBCDField;
    Valida_ProdutoPRC_CUSTO_MED: TIBBCDField;
    Valida_ProdutoVENCTO_PRC_VENDA: TDateField;
    qConsultaGrade: TIBQuery;
    qConsultaGradeCOUNT: TIntegerField;
    qrySeriesNFCTR_COD_CONTRATO: TIntegerField;
    qrySeriesNFCTR_NOME_CONTRATO: TIBStringField;
    procedure qryCT13CalcFields(DataSet: TDataSet);
    procedure SelFaturaVendasFuturaBeforeOpen(DataSet: TDataSet);
    procedure SelFaturaVendasFuturaAfterClose(DataSet: TDataSet);
    procedure Proc_Requisicao_Venda( CodVenda: Integer ) ;
    procedure Proc_Devolucao_Venda( CodVenda: Integer ) ;
    procedure OpenVendaFuturaItens( CodVenda: Integer ) ;
    procedure VendaAfterInsert(DataSet: TDataSet);
    procedure VendaBeforeOpen(DataSet: TDataSet);
    procedure OrcamentosAfterInsert(DataSet: TDataSet);
    procedure Orcamentos_ItensBeforeOpen(DataSet: TDataSet);

    procedure VendasPdv_ItensAfterInsert(DataSet: TDataSet);
    procedure VendasPdv_ItensBeforeOpen(DataSet: TDataSet);
    procedure VendasPdv_ItensBeforePost(DataSet: TDataSet);
    procedure VendasPdv_ItensCalcFields(DataSet: TDataSet);
    procedure VendasPdv_ItensNewRecord(DataSet: TDataSet);
    procedure VendasPdv_ItensPRODUTOSetText(Sender: TField;
      const Text: String);
    procedure VendasPdv_ItensPRODUTOValidate(Sender: TField);
    procedure VendasPdv_ItensVENDEDORValidate(Sender: TField);
    procedure VendasPdv_ItensNUMEROValidate(Sender: TField);
    procedure VendasPdv_ItensGRADEValidate(Sender: TField);
  private
    { Private declarations }
  public
    TIPO_VENDA : STRING;
    Qtdade_1,Ven_Limite_Credito : Real;
    Ven_Dia_Pref_Fat, Ven_Limite_Tempo, NDocto: integer;
    Bloqueado, Ven_Requisicao, Classificacao: String[1];
    UfPessoa : string;
    LiberaOS : Boolean;
    function VerificaNatureza(Pessoa:Integer; Natureza: Integer; ES: String; TIPO: String): variant;
    procedure Parcela_Vendas(CFOP, Forma, Codigo :Integer; DtVenda, DtParcela : TIBDataset);
    procedure Parcela_Trocas;
    procedure Proc_Imprime_Venda( CodVenda: Integer ) ;
    procedure Proc_Consulta_Venda( CodVenda: Integer ) ;
    procedure Proc_Consulta_Troca( CodVenda: Integer ) ;
    procedure ValidaPendenciaFinanceira(Cliente:Integer);
    { Public declarations }


  end;

var
  DmVendas2: TDmVendas2;

implementation

uses Application_DM, ListaFaturamento_Form, Vendas_Dm, Funcoes,
  CarregarItens, ConfirmarCarregamentoItens, DevolverItens,
  ConsultaVendas_Form, ConsultaTrocas_Form, VendasItens_Form,
  Localizar_Lote, Vendas_Form, Entra_Dados_Consumidor_Form,
  ConsultaCobrancas_Form, MensagemFaturamento_Form,
  MensagemClassificacao_Form, EntraSenha_Form, FaturaVenda_Form,
  Entra_Valor_Form, Orcamentos_Form, OrcamentosItens_Form, Servicos_DM,
  VendasPdvItens_Form, VendasPdv_Form;

{$R *.DFM}

{ TDmVendas2 }

function TDmVendas2.VerificaNatureza(Pessoa,Natureza: Integer; ES,TIPO: String): variant;
begin
  qryFaturamentos.Close;
  qryFaturamentos.ParambyName('cnpj').value := dmapp.cnpj;
  qryFaturamentos.ParambyName('pessoa_fj').value := Pessoa;
  qryFaturamentos.ParambyName('es').value := ES;
  qryFaturamentos.ParambyName('cfop').value := Natureza;
  qryFaturamentos.ParambyName('tipo').value := Tipo;
  qryFaturamentos.Open;


  frmListaFaturamento := TfrmListaFaturamento.Create(Self);
  frmListaFaturamento.showmodal;
  frmListaFaturamento.Free;

  result :=  qryFaturamentosCodigo.asVariant;
end;

procedure TDmVendas2.Parcela_Vendas(CFOP, Forma, Codigo :Integer; DtVenda, DtParcela : TIBDataset);

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
   Total_Parcelar, XVenda, XEntrada, XDesconto : Real;
begin
    {DtVenda.Close;
    DtVenda.ParamByName('cnpj').value := dmApp.Cnpj;
    DtVenda.ParamByName('codigo').value := Codigo;
    DtVenda.Open;}

    Total_Parcelar := arredonda((DtVenda.FieldByName('TOTAL_NOTA').AsFloat - dtVenda.FieldByName('ENTRADA').AsFloat - dtVenda.FieldByName('DESCTO_SERVICO').AsFloat), 2) ;

    //Não sei pq essa porcaria.. ms..
    if ((Total_Parcelar <= 0) AND (DMAPP.PDV_VALOR_ZERADO <> 'S')) then
    begin
      Application.Messagebox('Não existem produtos para faturamento. Verifique!','Aviso',mb_iconerror + mb_ok);
      Exit;
    end;

    //----------------------Faturamento irá gerar registros financeiros, contas á receber ou contas à pagar-----------------//
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
    DmApp.Apaga_Parcelas_Venda(DmApp.Cnpj, Codigo);

    DtParcela.Close;
    DtParcela.Open;

    Valida_Forma.Close ;
    Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
    Valida_Forma.ParamByName ('CODIGO').AsInteger := Forma ;
    Valida_Forma.Prepare ;
    Valida_Forma.Open ;

    entrada := Valida_FormaCOMENTRADA.AsString;

    if Valida_FormaINTERVALO_PRE_DEFINIDO.value = 'S' then
    begin
      Forma_Pagto_Parcelas.Close;
      Forma_Pagto_Parcelas.ParamByName('codigo').value := Forma;
      Forma_Pagto_Parcelas.ParamByName('cnpj').value := dmApp.cnpj;
      Forma_Pagto_Parcelas.Open;
      Forma_Pagto_Parcelas.FetchAll;
    end;

     //Saldo Restante
    SaldoRest := Total_Parcelar;
    Total := Total_Parcelar;

     //Numero de Parcelas
    Parcelas  := Valida_FormaNPARCELAS.Value ;

    J := Parcelas ;


     //----------PARCELAMENTO COM OS VALORES SEMPRE INTEIROS,UTILIZADO EM LOJAS DE ROUPAS E CALCADOS
     if UPPERCASE(DmApp.FAT_TIPO_PARCEL) = 'ARR' then
     begin
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

       if not (dtVenda.FieldByName('DT_PREV_ENTREGA').ISNULL) then
         Vencimento := dtVenda.FieldByName('DT_PREV_ENTREGA').AsDateTime
       else if dtVenda.FieldByName('DATA_CAIXA').ISNULL then
         Vencimento := dtVenda.FieldByName('DATA').AsDateTime
       else
         Vencimento := dtVenda.FieldByName('DATA_CAIXA').AsDateTime;

       DataBase := Vencimento;

       while I <= J do
       Begin
         DtParcela.Append;

         if Valida_FormaINTERVALO_PRE_DEFINIDO.value = 'S' then
         begin
           //procurando a parcela nos itervalos pré-definidos
           Forma_Pagto_Parcelas.Locate('PARCELA',I,[loPartialKey, loCaseInsensitive]);

           //identificando os dias do intervalo
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

         dtParcela.FieldByName('VALOR').Value   := ARREDONDA(Valor,2);
         dmapp.Extenso.Valor := Valor;
         dtParcela.FieldByName('VALOR_EXTENSO').value := dmapp.Extenso.texto;
         dtParcela.FieldByName('VENCTO').Value  := Vencimento ;
         dtParcela.FieldByName('PARCELA').Value := IntToStr(I) + '/' + IntToStr(J) ;

         SaldoRest := ARREDONDA(SaldoRest - Valor,2) ;
         Parcelas := Parcelas - 1 ;

         IF Parcelas > 0 THEN
           Valor := ARREDONDA(SaldoRest / Parcelas,2)  ;

         IF PARCELAS <> 1 THEN
           VALOR := VALORAUXILIAR ( VALOR );

         dtParcela.Post ;

         I := I + 1;
       end;
     end ;


     //Truncado, requerido pelo JB, onde a Ultima parcela fica com o maior valor
     if UPPERCASE(DmApp.FAT_TIPO_PARCEL) = 'TRU' then
     begin
       If Parcelas > 0 then
         Valor := arredonda((Total /Parcelas),2)
       Else
         Valor := 0;

       //Intervalo
       Intervalo := Valida_FormaINTERVALO.Value ;

       //Contador
       I := 1;

       if not (dtVenda.FieldByName('DT_PREV_ENTREGA').ISNULL) then
         Vencimento := dtVenda.FieldByName('DT_PREV_ENTREGA').AsDateTime
       else if dtVenda.FieldByName('DATA_CAIXA').ISNULL then
         Vencimento := dtVenda.FieldByName('DATA').AsDateTime
       else
         Vencimento := dtVenda.FieldByName('DATA_CAIXA').AsDateTime;

       DataBase := Vencimento;

       sobra := 0;
       while I <= J do
       Begin
         dtParcela.Append;

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


         fValor := Trunc(Valor);
         sobra := sobra + (Valor - fValor);

         //ultima parcela fica com o resto de todas as truncagens
         if (i=J) then
           dtParcela.FieldByName('VALOR').Value   := fValor + Sobra
         else
           dtParcela.FieldByName('VALOR').Value   := fValor;

         dtParcela.FieldByName('VENCTO').Value  := Vencimento ;
         dtParcela.FieldByName('PARCELA').Value := IntToStr(I) + '/' + IntToStr(J) ;

         SaldoRest := ARREDONDA(SaldoRest - Valor,2) ;
         Parcelas := Parcelas - 1 ;

         IF Parcelas > 0 THEN
           Valor := ARREDONDA(SaldoRest / Parcelas,2)  ;

         dtParcela.Post ;

         I := I + 1;
       end;
     end;


     //Decimal
     if UPPERCASE(DmApp.FAT_TIPO_PARCEL) = 'DEC' then
     begin
       If Parcelas > 0 then
         Valor := arredonda((Total / Parcelas),2)
       Else
          Valor := 0;

       //Intervalo
       Intervalo := Valida_FormaINTERVALO.Value ;

       //Contador
       I := 1;

       if not (dtVenda.FieldByName('DT_PREV_ENTREGA').ISNULL) then
         Vencimento := dtVenda.FieldByName('DT_PREV_ENTREGA').AsDateTime
       else if dtVenda.FieldByName('DATA_CAIXA').ISNULL then
         Vencimento := dtVenda.FieldByName('DATA').AsDateTime
       else
         Vencimento := dtVenda.FieldByName('DATA_CAIXA').AsDateTime;

       DataBase := Vencimento;

       while I <= J do
       Begin
         dtParcela.Append;
         //Vencimento
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


         dtParcela.FieldByName('VALOR').Value   := ARREDONDA(Valor,2)      ;
         dtParcela.FieldByName('VENCTO').Value  := Vencimento ;
         dtParcela.FieldByName('PARCELA').Value := IntToStr(I) + '/' + IntToStr(J) ;

         SaldoRest := ARREDONDA(SaldoRest - Valor,2) ;
         Parcelas := Parcelas - 1 ;

         IF Parcelas > 0 THEN
           Valor := ARREDONDA(SaldoRest / Parcelas,2)  ;

         dtParcela.Post ;

         I := I + 1;
       end;
     end;

     //---------------------A PRIMEIRA PARCELA DEVERÁ SER A MAIOR-------------------//
     if UPPERCASE(DmApp.FAT_TIPO_PARCEL) = 'INT' then
     begin
       if Parcelas > 0 then
         Valor := TRUNC(arredonda((Total / Parcelas),2))
       else
         Valor := 0;

       //A PRIMEIRA PARCELA DEVERÁ SER A MAIOR
       Valor := Total - Valor * (Parcelas - 1);

       //Intervalo
       Intervalo := Valida_FormaINTERVALO.Value ;

       //Contador
       I := 1;

       dtParcela.DisableControls ;
       if not (dtVenda.FieldByName('DT_PREV_ENTREGA').ISNULL) then
         Vencimento := dtVenda.FieldByName('DT_PREV_ENTREGA').AsDateTime
       else if dtVenda.FieldByName('DATA_CAIXA').ISNULL then
         Vencimento := dtVenda.FieldByName('DATA').AsDateTime
       else
         Vencimento := dtVenda.FieldByName('DATA_CAIXA').AsDateTime;

       DataBase := Vencimento;

       While I <= J do
       Begin
         dtParcela.Append;
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

         dtParcela.FieldByName('VALOR').Value   := ARREDONDA(Valor,2)      ;
         dtParcela.FieldByName('VENCTO').Value  := Vencimento ;
         dtParcela.FieldByName('PARCELA').Value := IntToStr(I) + '/' + IntToStr(J) ;

         SaldoRest := ARREDONDA(SaldoRest - Valor,2) ;

         Parcelas := Parcelas - 1 ;

         if Parcelas > 0 then
           Valor := ARREDONDA(SaldoRest / Parcelas,2)  ;

         dtParcela.Post ;
         I := I + 1;
       end;
     end;
end;

procedure TDmVendas2.Parcela_Trocas;
Var
   Total, Valor              : Real      ;
   SaldoRest                 : Real      ;
   Parcelas, Intervalo, I, J : Integer   ;
   Vencimento                : TDateTime ;
   Dia, Mes, Ano             : Word      ;
begin
  with dmVendas do
  begin
     //Apaga as Parcelas da Venda
     DmApp.Apaga_Parcelas_Troca (DmApp.Cnpj, FaturaTrocasCODIGO.Value);

     Trocas_Parc.Close ;
     Trocas_Parc.Open  ;

     //Faz o Parcelamento Automático das Vendas
     Total := DmVendas.FaturaTrocas.FieldByName('Total_Parcelar').AsFloat ;

     Valida_Forma.Close ;
     Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Valida_Forma.ParamByName ('CODIGO').AsInteger := DmVendas.FaturaTrocas.FieldByName('FORMA_PGTO').AsInteger ;
     Valida_Forma.Prepare ;
     Valida_Forma.Open ;

     //Saldo Restante
     SaldoRest := Total ;

     //Numero de Parcelas
     Parcelas  := Valida_FormaNPARCELAS.Value ;

     J := Parcelas ;

     //PARCELAMENTO COM OS VALORES SEMPRE INTEIROS
     //UTILIZADO EM LOJAS DE ROUPAS E CALCADOS
     If DmApp.FAT_TIPO_PARCEL = 'Int'
     THEN BEGIN
          If Parcelas > 0
          then
              Valor     := TRUNC(Total / Parcelas)
          Else
              Valor     := 0;

          //A PRIMEIRA PARCELA DEVERÁ SER A MAIOR
          Valor := Total - Valor * ( Parcelas - 1 );

          //Intervalo
          Intervalo := Valida_FormaINTERVALO.Value ;

          //Contador
          I := 1;

          Trocas_Parc.DisableControls ;

          //Vencimento :=DsTrocas.DataSet.FieldByName('DATA').AsDateTime ;
          if (dmApp.DataCaixa = 0) then
            Vencimento := dmApp.DataCaixa
          else
            Vencimento := Date;

          While I <= J do
          Begin
               //Vencimento
               Vencimento := Vencimento + Intervalo ;

               If (Ven_Dia_Pref_Fat > 0) and (Ven_Dia_Pref_Fat < 30)
               then begin
                    Decodedate(Vencimento, Ano, Mes, Dia);

                    If ( Mes = 2 ) and ( Ven_Dia_Pref_Fat > 28 )
                    then
                        Vencimento := Encodedate(Ano, Mes, 28)
                    Else
                        Vencimento := Encodedate(Ano, Mes, Ven_Dia_Pref_Fat);
               end;

               Trocas_Parc.Append;

               Trocas_ParcVALOR.Value   := Valor      ;
               Trocas_ParcVENCTO.Value  := Vencimento ;
               Trocas_ParcPARCELA.Value := IntToStr(I) + '/' + IntToStr(J) ;

               SaldoRest := SaldoRest - Valor ;

               Parcelas := Parcelas - 1 ;

               IF Parcelas > 0
               THEN
                   Valor := SaldoRest / Parcelas  ;

               Trocas_Parc.Post ;

               I := I + 1;
          end;
     END
     ELSE BEGIN
          If Parcelas > 0
          then
              Valor     := Total / Parcelas
          Else
              Valor     := 0;

          //Intervalo
          Intervalo := Valida_FormaINTERVALO.Value ;

          //Contador
          I := 1;

          Trocas_Parc.DisableControls ;

          if (dmApp.DataCaixa > 0) then
            Vencimento := dmApp.DataCaixa
          else
            Vencimento := Date;

         // Vencimento :=DsTrocas.DataSet.FieldByName('DATA').AsDateTime ;

          While I <= J do
          Begin
               //Vencimento
               Vencimento := Vencimento + Intervalo ;

               If (Ven_Dia_Pref_Fat > 0) and (Ven_Dia_Pref_Fat < 30)
               then begin
                    Decodedate(Vencimento, Ano, Mes, Dia);

                    If ( Mes = 2 ) and ( Ven_Dia_Pref_Fat > 28 )
                    then
                        Vencimento := Encodedate(Ano, Mes, 28)
                    Else
                        Vencimento := Encodedate(Ano, Mes, Ven_Dia_Pref_Fat);
               end;

               Trocas_Parc.Append;

               Trocas_ParcVALOR.Value   := Valor      ;
               Trocas_ParcVENCTO.Value  := Vencimento ;
               Trocas_ParcPARCELA.Value := IntToStr(I) + '/' + IntToStr(J) ;

               SaldoRest := SaldoRest - Valor ;

               Parcelas := Parcelas - 1 ;

               IF Parcelas > 0
               THEN
                   Valor := SaldoRest / Parcelas  ;

               Trocas_Parc.Post ;

               I := I + 1;
          end;
     END;

     Trocas_Parc.EnableControls ;
  end;
end;

procedure TDmVendas2.qryCT13CalcFields(DataSet: TDataSet);
begin
  dmapp.Extenso.Valor := qryCT13NUM_DOSES.asInteger;
  qryCT13DOSES_EXTENSO.value := dmapp.Extenso.texto;
end;

procedure TDmVendas2.SelFaturaVendasFuturaBeforeOpen(DataSet: TDataSet);
begin
  SelFaturaVendasFutura.parambyname('cnpj').value := dmApp.cnpj;
  SelFaturaVendasFutura.ParamByName ('TP').AsString := '0';
end;

procedure TDmVendas2.SelFaturaVendasFuturaAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TDmVendas2.Proc_Requisicao_Venda( CodVenda: Integer ) ;
begin
     CarregarItensFutura.Close;
     CarregarItensFutura.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj;
     CarregarItensFutura.ParamByName ('CODIGO').AsInteger := CodVenda;
     CarregarItensFutura.Prepare;
     CarregarItensFutura.Open;

     if FrmCarregarItens = Nil then
       FrmCarregarItens := TFrmCarregarItens.Create(Self);
     FrmCarregarItens.Showmodal ;
end;



procedure TDmVendas2.Proc_Devolucao_Venda(CodVenda: Integer);
begin
     CarregarItensFutura.Close;
     CarregarItensFutura.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj;
     CarregarItensFutura.ParamByName ('CODIGO').AsInteger := CodVenda;
     CarregarItensFutura.Prepare;
     CarregarItensFutura.Open;

     if FrmDevolverItens = Nil then
       FrmDevolverItens := TFrmDevolverItens.Create(Self);
       FrmDevolverItens.Showmodal ;
end;

procedure TDmVendas2.OpenVendaFuturaItens(CodVenda: Integer);
begin
    SelFaturaVendasFuturaItens.close;
    SelFaturaVendasFuturaItens.parambyname('CODIGO').value := CodVenda;
    SelFaturaVendasFuturaItens.parambyname('CNPJ').value   := dmApp.cnpj;
    SelFaturaVendasFuturaItens.open;
end;

procedure TDmVendas2.Proc_Imprime_Venda( CodVenda: Integer ) ;
begin
  with dmVendas do
  begin
     Consulta_Venda.Close ;
     Consulta_Venda.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Consulta_Venda.ParamByName ('COD'   ).AsInteger := CodVenda ;
     Consulta_Venda.Prepare ;

     Consulta_Venda.Open ;

     If Consulta_Venda.Fields[0].isNull
     then Begin
         // Showmessage ('Venda Não Cadastrada, Verifique!');
          Exit;
     end;

     //Itens da Venda
     Consulta_Venda_Itens.Close ;
     Consulta_Venda_Itens.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Consulta_Venda_Itens.ParamByName ('CODIGO').AsInteger := CodVenda ;
     Consulta_Venda_Itens.Open ;

     //Parcelas da Venda
     Consulta_Venda_Parc.Close ;
     Consulta_Venda_Parc.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Consulta_Venda_Parc.ParamByName ('CODIGO').AsInteger := CodVenda ;
     Consulta_Venda_Parc.Open ;

     //Propriedades
     IF Consulta_VendaPROPRIEDADE.Value > 0
     then begin
          SelPropriedade.Close ;

          SelPropriedade.ParamByName ('CNPJ'       ).AsString  := DmApp.Cnpj   ;
          SelPropriedade.ParamByName ('PESSOA_FJ'  ).AsInteger := Consulta_VendaPESSOA_FJ.Value  ;
          SelPropriedade.ParamByName ('PROPRIEDADE').AsInteger := Consulta_VendaPROPRIEDADE.Value  ;

          SelPropriedade.Prepare ;
          SelPropriedade.Open ;
     end;
  end;
end;

procedure TDmVendas2.Proc_Consulta_Venda( CodVenda: Integer ) ;
begin
  with dmVendas do
  begin
     Consulta_Venda.Close;
     Consulta_Venda.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj;
     Consulta_Venda.ParamByName ('COD'   ).AsInteger := CodVenda;
     Consulta_Venda.Prepare;
     Consulta_Venda.Open;

     If Consulta_Venda.Fields[0].isNull
     then Begin
          Showmessage ('Venda Não Cadastrada, Verifique!');
          Exit;
     end;

     //Itens da Venda
     Consulta_Venda_Itens.Close;
     Consulta_Venda_Itens.ParamByName('CNPJ').AsString  := DmApp.Cnpj;
     Consulta_Venda_Itens.ParamByName('CODIGO').AsInteger := CodVenda;
     Consulta_Venda_Itens.Prepare;
     Consulta_Venda_Itens.Open;

     //Parcelas da Venda
     Consulta_Venda_Parc.Close;
     Consulta_Venda_Parc.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Consulta_Venda_Parc.ParamByName ('CODIGO').AsInteger := CodVenda ;
     Consulta_Venda_Parc.Prepare;
     Consulta_Venda_Parc.Open;

       if FrmConsultaVenda = Nil then
       begin
         FrmConsultaVenda := TFrmConsultaVenda.Create(Self);
         FrmConsultaVenda.Showmodal ;
         FrmConsultaVenda.Free   ;
         FrmConsultaVenda := Nil ;
       end;
  end;
end;

procedure TDmVendas2.Proc_Consulta_Troca( CodVenda: Integer ) ;
begin
  with dmvendas do
  begin
     Consulta_Troca.Close ;
     Consulta_Troca.ParamByName ('CNPJ').AsString  := DmApp.Cnpj;
     Consulta_Troca.ParamByName ('CODIGO').AsInteger := CodVenda;
     Consulta_Troca.Prepare ;
     Consulta_Troca.Open ;

     If Consulta_Troca.Fields[0].isNull
     then Begin
          Showmessage ('Troca Não Cadastrada, Verifique!');
          Exit;
     end;

     //Itens da Troca
     Consulta_Troca_Itens.Close ;
     Consulta_Troca_Itens.ParamByName ('CNPJ'   ).AsString  := DmApp.Cnpj;
     Consulta_Troca_Itens.ParamByName ('CODIGO' ).AsInteger := CodVenda;
     Consulta_Troca_Itens.Prepare ;
     Consulta_Troca_Itens.Open ;

     //Parcelas da Troca
     Consulta_Troca_Parc.Close ;
     Consulta_Troca_Parc.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj;
     Consulta_Troca_Parc.ParamByName ('CODIGO').AsInteger := CodVenda;
     Consulta_Troca_Parc.Prepare ;
     Consulta_Troca_Parc.Open ;

     If FrmConsultaTroca = Nil Then
     Begin
          FrmConsultaTroca := TFrmConsultaTroca.Create(Self);
          FrmConsultaTroca.Showmodal ;
          FrmConsultaTroca.Free   ;
          FrmConsultaTroca := Nil ;
     End;
  end;
end;

procedure TDmVendas2.VendaAfterInsert(DataSet: TDataSet);
begin
   DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmVendas2.VendaBeforeOpen(DataSet: TDataSet);
begin
    If (DataSet is TIBQuery) Then
    Begin
      (DataSet as TIBDataSet).ParamByName('CNPJ').asString       := DMApp.Cnpj;
      (DataSet as TIBDataSet).ParamByName('CODIGO').asInteger    := NDocto;
      (Dataset as TIBQuery).Prepare;
    End;
    If (DataSet is TIBDataset) Then
    Begin
      (DataSet as TIBDataSet).ParamByName('CNPJ').asString       := DMApp.Cnpj;
      (DataSet as TIBDataSet).ParamByName('CODIGO').asInteger    := NDocto;
      (Dataset as TIBDataSet).Prepare;
    End;
    UfPessoa := '' ;
end;

procedure TDmVendas2.OrcamentosAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmVendas2.Orcamentos_ItensBeforeOpen(DataSet: TDataSet);
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

procedure TDmVendas2.ValidaPendenciaFinanceira(Cliente:Integer);
Var
   Clas: Integer;
   NomeClas, Dig_Senha, complemento: String;
   SOMA_CHEQUES: Real ;
begin

  Valida_Cliente.Close ;
  Valida_Cliente.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
  Valida_Cliente.ParamByName ('CODIGO').AsInteger := NDocto ;
  Valida_Cliente.Open ;

  if Valida_ClientePESSOA_FJ.isNull then
  begin
    showmessage ('Cliente Inexistente!');
    Abort;
  end;

  if Valida_ClienteBLOQUEADO.value = 'S' then
  begin
    Showmessage ('Cliente Desativado!');
    Abort;
  end;

  {If valida_ClienteCOD_VEND.asInteger > 0 then
     VendasVENDEDOR.Value    := Valida_ClienteCOD_VEND.Value ;}


  if Valida_ClienteCOD_FPAGTO.asInteger > 0 then
  begin
    Valida_Forma.Close ;
    Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
    Valida_Forma.ParamByName ('CODIGO').AsInteger := Valida_ClienteCOD_FPAGTO.asInteger;
    Valida_Forma.Open ;

    if not Valida_FormaCODIGO.isNull then
    begin
     { VendasFORMA_PGTO.Value  := Valida_ClienteCOD_FPAGTO.Value;
      if (DmVendas.SelFormaPgtoDESCONTO.Value > 0) then
        VendasDESC_ACRES.Value := -1 * ((VendasTOTAL.VALUE * DmVendas.SelFormaPgtoDESCONTO.VALUE)/100)
      else
        VendasDESC_ACRES.Value := 0 ;

      if (DmVendas.SelFormaPgtoACRESCIMO.Value > 0 ) then
        VendasDESC_ACRES.Value := VendasDESC_ACRES.Value + ((VendasTOTAL.VALUE * DmVendas.SelFormaPgtoACRESCIMO.value)/100);
     }   
    end

  end;


 { If Not Valida_ClienteCONS_REV.isnull then
    VendasCONS_REV.value := Valida_ClienteCONS_REV.value
  else
    VendasCONS_REV.value := 'C' ;

  If Not Valida_ClienteREQUISICAO.isNull then
    Ven_Requisicao  := Valida_ClienteREQUISICAO.Value
  else
    Ven_Requisicao  := 'N' ;

  If Not Valida_ClienteDIA_PREF_FAT.isNull then
  Begin
    Ven_Dia_Pref_Fat  := Valida_ClienteDIA_PREF_FAT.Value ;
  end
  else
  begin
    Ven_Dia_Pref_Fat  := 0 ;
  end;

  If Not Valida_ClienteLIMITE_TEMPO.isNull then
  Begin
    Ven_Limite_Tempo  := Valida_ClienteLIMITE_TEMPO.Value ;
  end
  else
  begin
    Ven_Limite_Tempo  := 0 ;
  end;

  If Not Valida_ClienteLIMITE_CREDITO.isNull then
  Begin
    Ven_Limite_Credito  := Valida_ClienteLIMITE_CREDITO.Value ;
  end
  else
  begin
    ven_Limite_Credito  := 0 ;
  end;

  if Not Valida_ClienteCLASSIF.isNull then
  Begin
    Classificacao  := Valida_ClienteCLASSIF.Value ;
  end
  else
  begin
    Classificacao  := 'B' ;
  end;

  if Not Valida_ClienteBLOQUEADO.isNull then
  begin
    Bloqueado  := Valida_ClienteBLOQUEADO.Value ;
  end
  else
  begin
    Bloqueado  := 'N' ;
  end;

  if Not Valida_ClienteUF.isNull then
  begin
    VendasUF.Value  := Valida_ClienteUF.Value ;
  end
  else
  begin
    VendasUF.Value  := DmApp.UF ;
  end;

  if(FrmVendas <> nil ) or (FrmVendasPdv <> nil) then
    If Not Valida_ClienteOBS.isNull then
    Begin
      Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
      FrmMensagemFaturamento.Showmodal ;
      FrmMensagemFaturamento.Free ;
      FrmMensagemFaturamento  := Nil;
    end
    else
    begin
      If Not Valida_ClienteOBS2.isNull then
      begin
        Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
        FrmMensagemFaturamento.dxDBMemo1.DataField := 'OBS2' ;
        FrmMensagemFaturamento.Showmodal ;
        FrmMensagemFaturamento.Free ;
        FrmMensagemFaturamento  := Nil;
      end;
    end;
  if(FrmVendas <> nil ) or (FrmVendasPdv <> nil) then
    if Not Valida_ClienteCLASSIFICACAO.isNull then
    begin
      Clas := Valida_ClienteCLASSIFICACAO.Value ;

      //Confere se a Classificacao Pede Senha
      Geral.Close ;
      Geral.Sql.text := ' Select Nome, Dig_Senha from Glo_Classificacao Where Codigo = :C and CNPJ = :E ';
      Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
      Geral.ParamByName ('C').AsInteger := Clas         ;
      Geral.Open ;

      If Not Geral.Fields[0].isNull then
        NomeClas := Geral.Fields[0].Value
      else
        NomeClas := 'Não Informada';

      if Not Geral.Fields[1].isNull then
        Dig_Senha := Geral.Fields[1].Value
      else
        Dig_Senha := 'N';

      Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);
      FrmMensagemClassificacao.MEMO.Lines.Add (NomeClas);

      if Dig_Senha = 'S' Then
      begin
        FrmMensagemClassificacao.EdSenha.Visible := true ;
        FrmMensagemClassificacao.Label6.Visible  := true ;
        //Se o Nível ou a Classificacao exigir senha e não foi digitada
        if FrmMensagemClassificacao.Showmodal = MrCancel then
        Begin
          MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
          Abort ;
          end;
        end
      else
      begin
        FrmMensagemClassificacao.EdSenha.Visible := false ;
        FrmMensagemClassificacao.Label6.Visible  := false ;
        DmServicos.OS_INTERVALO.Close;
        DmServicos.OS_INTERVALO.Open;
        FrmMensagemClassificacao.Showmodal ;
      end;

        FrmMensagemClassificacao.Free ;
        FrmMensagemClassificacao := Nil;
    end;

  if not Valida_ClienteNOME.isNull then
    VendasNOME.Value := Valida_ClienteNOME.Value;

  with dmVendas do
  begin
    SelNatureza.Close ;
    SelNatureza.Sql.text := ' SELECT CNPJ, CODIGO, NOME, INTERESTADUAL FROM EST_NATUREZA WHERE CNPJ = :CNPJ and ATIVA = ''S'''+
                            ' AND INTERESTADUAL = :IE ORDER BY NOME ';
    SelNatureza.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
    //Seta o Estado da Pessoa
    UfPessoa := VendasUF.Value ;

    If dmvendas.SelPessoasFJUF.Value = DmApp.UF then
      SelNatureza.ParamByName ('IE').AsString  := 'E'
    else
      SelNatureza.ParamByName ('IE').AsString  := 'I';

    SelNatureza.Open ;
  end;

  //Seleciona as Naturezas Estaduais ou Interestaduais
  valida_Cliente.Close ;

  //Seleciona as Propriedades do cliente
  IF DmApp.UTIL_PROPRIEDADE = 'S' then
    dmvendas.Propriedade (DmApp.Cnpj,VendasPessoa_Fj.Value );

  //SOMA_CHEQUES := DmApp.Soma_Cheques_Devolvidos (Sender);

  if(FrmVendas <> nil ) or (FrmVendasPdv <> nil) then
    If (((Ven_Limite_Credito > 0 ) or ( Ven_Limite_Tempo > 0 ) or (soma_cheques > 0)) and (dmApp.EXIBE_PENDENCIA = 'S')) then
    begin
      //Verifica os Limites de Crédito ( Tempo e Valor )
      LiberaOS := DmApp.Verifica_Limite(DmApp.Cnpj, NDocto, VendasNome.Value, Ven_Limite_Tempo, Ven_Limite_Credito, VendasDATA.Value, 0);
      If not LiberaOS then
      begin
        Application.messagebox('Senha não informada corretamente','Aviso',mb_iconerror+mb_ok);
        //FrmVendas.EdPessoa.SetFocus ;
        Abort ;
      end;
    end;    }
end;

procedure TDmVendas2.VendasPdv_ItensAfterInsert(DataSet: TDataSet);
begin
   dmvendas.Qntde_Pdv                   := 0;
     VendasPdv_ItensCNPJ.Value   := dmVendas.VendasPdvCNPJ.value   ;
     VendasPdv_ItensCODIGO.Value := dmVendas.VendasPdvCODIGO.Value ;
end;

procedure TDmVendas2.VendasPdv_ItensBeforeOpen(DataSet: TDataSet);
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

procedure TDmVendas2.VendasPdv_ItensBeforePost(DataSet: TDataSet);
var
  resto : real;
begin
    if not dmapp.VerificaDescontoItem(VendasPdv_ItensPRODUTO.asString,dmVendas.VendasPdvPESSOA_FJ.Value,(VendasPdv_ItensPRC_UNITARIO.AsFloat)) then
    begin
      if not PedirSenha('Desconto Acima do ', 'Máximo Permitido!','') THEN
      begin
        abort;
        exit;
      end;
    end;

  if (Valida_ProdutoVALIDA_MULT_QTDE_MIN.value = 'S') then
  begin
    if (Valida_ProdutoQNTDE_MINIMA_VENDA.value > 0) then
    begin
      resto := (VendasPDV_ItensQUANTIDADE.value/Valida_ProdutoQNTDE_MINIMA_VENDA.value);
      resto := resto - trunc(resto);
      if (resto <> 0) then
      begin
        Application.MessageBox(Pchar('A quantidade vendida deverá ser no mínimo de '+Valida_ProdutoQNTDE_MINIMA_VENDA.AsString+' ou multipla deste valor'),'Aviso',mb_iconerror + mb_ok);
        abort;
        exit;
      end
    end
  end;

     IF ( VendasPdv_ItensGRADE.VALUE) = '' THEN
         VendasPdv_ItensGRADE.VALUE := '0';

     IF ( VendasPdv_ItensNUMERO.VALUE) = '' THEN
         VendasPdv_ItensNUMERO.VALUE := '0';
     if(FrmVendas <> nil ) or (FrmVendasPdv <> nil) then
       IF ( DMAPP.EST_USA_GRADE = 'S' )  THEN
       BEGIN
         IF VendasPdv_ItensGRADE.IsNull THEN
         BEGIN
           MESSAGEDLG('Digite uma Grade Válida!', mterror, [mbok],0);
           frmvendaspdvitens.EDGRADE.SetFocus;
           Abort;
         END
         ELSE
         BEGIN
           IF VendasPdv_ItensNUMERO.IsNull THEN
           BEGIN
             MESSAGEDLG('Digite um Número Válido!', mterror, [mbok],0);
             frmvendaspdvitens.EDNUMERO.SetFocus;
             Abort;
           END
           ELSE
           BEGIN
             IF (DMAPP.POSSUI_GRADE (VendasPdv_ItensPRODUTO.VALUE )) AND (( VendasPdv_ItensNUMERO.VALUE = '0' ) OR (VendasPdv_ItensGRADE.VALUE  = '0' ))
                      THEN BEGIN
                           MESSAGEDLG('Digite uma Grade Válida!', mterror, [mbok],0);
                           frmvendaspdvitens.EDGRADE.SetFocus;
                           Abort;
                      END
                 END;
            END;
       END;
end;

procedure TDmVendas2.VendasPdv_ItensCalcFields(DataSet: TDataSet);
begin
  VendasPdv_ItensTotal.value := arredonda(VendasPdv_ItensQUANTIDADE.Value * arredonda(VendasPdv_ItensPRC_UNITARIO.Value,2) , 3);
end;

procedure TDmVendas2.VendasPdv_ItensNewRecord(DataSet: TDataSet);
begin
     iF DmaPP.PDV_DIGITA_QNTDE = 'S'
     THEN BEGIN
          VendasPdv_ItensQUANTIDADE.Value    := 0;
     END
     ELSE BEGIN
          VendasPdv_ItensQUANTIDADE.Value    := 1;
     END;
     VendasPdv_ItensCODIGO.Value        := dmVendas.VendasPdvCODIGO.Value ;
     VendasPdv_ItensPRC_UNITARIO.Value  := 0;
     VendasPdv_ItensPRC_CUSTO.Value     := 0;
     VendasPdv_ItensICM.Value           := 0;
     VendasPdv_ItensICM_SUBS.Value      := 0;
     VendasPdv_ItensIPI.Value           := 0;
     VendasPdv_ItensVOLUME.Value        := 0;
     VendasPdv_ItensPESO.Value          := 0;
     VendasPdv_ItensDESCONTO.Value      := 0;
     VendasPdv_ItensPORC_DESC.Value     := 0;
     VendasPdv_ItensUNIDADE.Value       := 'UN' ;
     VendasPdv_ItensSEQUENCIA.Value     := VendasPdv_Itens.RecordCount ;
     VendasPdv_ItensVENDEDOR.Value      := dmVendas.VendasPdvVENDEDOR.Value ;
     VendasPdv_ItensSUBUNIDADE.VALUE    := 1;
end;

procedure TDmVendas2.VendasPdv_ItensPRODUTOSetText(Sender: TField;
  const Text: String);
Var
   Aux: String;
   Codigo, Grade, Numero: String;
begin
     showmessage('teste');
     Aux := Text ;
     //VERIFICA SE TEM GRADE
     IF ((LENGTH( TRIM( AUX )) >= 15 ) AND ( DMAPP.EST_USA_GRADE = 'S' ))
     THEN BEGIN
          CODIGO := COPY(AUX,  1, 6);
          if LENGTH(TRIM(AUX))=15 then
          begin
            GRADE := COPY(AUX,  7, 3);

            if (Pos('0',GRADE) = 0) then
              GRADE := 'A'+GRADE
            else if ((Pos('0',GRADE) > 0) and (length(trim(grade)) > 1)) then
              GRADE := 'A'+GRADE;

            NUMERO := COPY(AUX, 10, 6);
          end
          else
          begin
            GRADE  := COPY(AUX,  7, 4);
            NUMERO := COPY(AUX, 11, 7);
          end;

          CODIGO := RETIRAZEROS (CODIGO);
          NUMERO := RETIRAZEROS (NUMERO);
          SENDER.VALUE := CODIGO;

          IF NOT ( VendasPdv_Itens.STATE IN [ DSINSERT, DSEDIT ]) THEN
              VendasPdv_Itens.EDIT ;

          IF TRIM(GRADE) = '' THEN
            VendasPdv_ItensGRADE.VALUE  := '0'
          ELSE
            VendasPdv_ItensGRADE.VALUE  := (GRADE)  ;


          IF TRIM(NUMERO) = '' THEN
            VendasPdv_ItensNUMERO.VALUE := '0'
          ELSE
            VendasPdv_ItensNUMERO.VALUE := (NUMERO);
     END
     ELSE BEGIN
          If DmApp.Elimina_Zeros = 'S'
          THEN BEGIN
               While Copy ( Aux, 1, 1 ) = '0' DO
               BEGIN
                    Aux := Copy ( Aux, 2, 15 );
               End;
               Sender.Value := Aux ;
          END
          ELSE BEGIN
               If DmApp.Acrescenta_Zeros = 'S'
               THEN BEGIN
                    While Length ( Aux ) < 10 DO
                    BEGIN
                         Aux := '0' + Aux ;
                    End;
                    Sender.Value := Aux ;
               END
               ELSE BEGIN
                    If ( Copy ( Aux, 8, 8 ) = '  000000' ) AND ( Length(Aux) = 15 )
                    //EAN128
                    then begin
                         Codigo := Copy ( Aux, 1, 6 );

                         While Copy ( Codigo, 1, 1 ) = '0' do
                         begin
                              Codigo := Copy ( Codigo, 2, 5 );
                         end;

                         //Novo Código do Produto
                         Sender.Value := Codigo ;

                    END
                    ELSE
                    BEGIN
                         Sender.Value := Aux ;

                    end;
               END;
          END;
     END;

end;

procedure TDmVendas2.VendasPdv_ItensPRODUTOValidate(Sender: TField);
Var
   Aux: String;
   VALOR, DescPromocao, DESCONTO: REAL;
begin
  If ((Sender.IsNull) or (trim(Sender.Value) = '')) then
    Exit ;

   Valida_Produto.Close ;
   Valida_Produto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
   Valida_Produto.ParamByName ('PRODUTO').AsString     := Sender.Value;
   Valida_Produto.ParamByName ('VENDEDOR').AsInteger     := 0;
   Valida_Produto.open ;


   If Valida_ProdutoPRC_VENDA.IsNull then
   Begin
     If DmApp.CHM_PROD_INEXIST = 'S' THEN
     BEGIN
        If FrmVendasPdvItens <> Nil then
          FrmVendasPdvItens.LocProd := True ;

        Exit;
     END
     ELSE
     BEGIN
           MessageDlg('Produto Inexistente!', mtError, [mbOK], 0);
           Abort ;
           exit;
     END;
  end;

  IF Arredonda(dmVendas.Qntde_Pdv,2) > 0 THEN
  BEGIN
    VendasPdv_ItensQUANTIDADE.Value := Arredonda(dmVendas.Qntde_Pdv,2) ;
    dmVendas.Qntde_Pdv                       := 0;
  END;

  VendasPdv_ItensFRACIONADO.Value        := Valida_ProdutoVENDE_FRACIONADO.Value ;
  VendasPdv_ItensPRC_CUSTO.Value         := Valida_ProdutoPRC_REPOS.Value  ;

  //verificando preço em promoção
  Valor :=  dmapp.Verifica_Promocao ( Sender.value, dmapp.Data_Servidor);

  //verificando se cliente tem preço especial
  Desconto := DmaPP.Verifica_Preco_Especial ( Sender.Value, dmVendas.VendasPdvPESSOA_FJ.value );


  //caso o produto esteja em promoção, e seja menor que o preço normal - o desconto especial entao o utilizo
  if ((valor > 0) and (valor < (Valida_ProdutoPRC_VENDA.Value - (Valida_ProdutoPRC_VENDA.Value * desconto)/100))) then
  begin
    VendasPdv_ItensPRC_UNITARIO.Value := VALOR  ;
    Desconto := 0;
  end
  else If ARREDONDA(Desconto, 2) <> 0 then
  begin
    VendasPdv_ItensPORC_DESC.VALUE := Desconto ;
    VendasPdv_ItensDESCONTO.value  := arredonda(((Valida_ProdutoPRC_VENDA.Value * Desconto )/100),2);
    VendasPdv_ItensPRC_UNITARIO.Value := (Valida_ProdutoPRC_VENDA.Value - VendasPdv_ItensDESCONTO.asfloat);
  end
  else //caso o produto não tenha desconto especial e nem esteja em promoção
    VendasPdv_ItensPRC_UNITARIO.Value := Valida_ProdutoPRC_VENDA.Value;

  VendasPdv_ItensPRC_UNIT_ORIGINAL.Value := Valida_ProdutoPRC_VENDA.Value;
  VendasPdv_ItensNOME_PRODUTO.Value      := Valida_ProdutoNOME.Value       ;
  VendasPdv_ItensNOME_FIS.Value          := Valida_ProdutoNOME.Value       ;
  VendasPdv_ItensPRODUTOFIS.Value        := Sender.Value                                     ;

  If Not Valida_ProdutoVOLUME.IsNull
  then
      VendasPdv_ItensVOLUME.Value       := Valida_ProdutoVOLUME.Value
  else
      VendasPdv_ItensVOLUME.Value       := 0;

  If Not Valida_ProdutoPESO_LIQ.IsNull
  then
      VendasPdv_ItensPESO.Value         := Valida_ProdutoPESO_LIQ.Value
  else
      VendasPdv_ItensPESO.Value         := 0;

  If Not Valida_ProdutoUNIDADE.IsNull
  then
      VendasPdv_ItensUNIDADE.Value      := Valida_ProdutoUNIDADE.Value
  else
      VendasPdv_ItensUNIDADE.Value      := 'UN';

  If Not Valida_ProdutoSUBUNIDADE.IsNull
  then
      VendasPdv_ItensSUBUNIDADE.Value      := Valida_ProdutoSUBUNIDADE.Value
  else
      VendasPdv_ItensSUBUNIDADE.Value      := 1;

  If Not Valida_ProdutoATIVO.IsNull
  then begin
       If Valida_ProdutoATIVO.Value = 'N'
       then begin
          MessageDlg('Este Produto Não Esta Ativo, Verifique', mtError, [mbOK], 0);
          Abort;
       end;
  end;

  If Not Valida_ProdutoALIQUOTA_ECF.IsNull
  then begin
       VendasPdv_ItensALIQUOTA.Value := Valida_ProdutoALIQUOTA_ECF.Value ;
  end
  else begin
       VendasPdv_ItensALIQUOTA.Value := 'T1' ;
  end;

  If Not Valida_ProdutoORIGEM.IsNull
  then begin
       VendasPdv_ItensORIGEM.Value := Valida_ProdutoORIGEM.value ;
  end
  else begin
       VendasPdv_ItensORIGEM.Value := 0 ;
  end;

  If Not Valida_ProdutoCTE.IsNull
  then begin
       VendasPdv_ItensCTE.Value := Valida_ProdutoCTE.value ;
  end
  else begin
       VendasPdv_ItensCTE.Value := 1 ;
  end;

  If Not Valida_ProdutoCTIE.IsNull
  then begin
       VendasPdv_ItensCTIE.Value := Valida_ProdutoCTIE.value ;
  end
  else begin
       VendasPdv_ItensCTIE.Value := 1 ;
  end;

  If Not Valida_ProdutoReducao.IsNull
  then begin
       VendasPdv_ItensReducao.Value := Valida_ProdutoReducao.value ;
  end
  else begin
       VendasPdv_ItensReducao.Value := 0 ;
  end;

  //SERVICO
  If FrmVendasPdvItens <> Nil
  then begin
       If Valida_ProdutoSERVICO.Value = 'S' then
       begin
         FrmVendasPdvItens.GridItens.Top    := 160 ;
         FrmVendasPdvItens.GridItens.Height := 211 ;

         FrmVendasPdvItens.EdServico.Visible := true ;
       end
       else
       begin
         FrmVendasPdvItens.EdServico.Visible := False  ;

         FrmVendasPdvItens.GridItens.Top    := 80 ;
         FrmVendasPdvItens.GridItens.Height := 291 ;
       end;
  end;

  //COMPLEMENTO
  If Valida_ProdutoCOMPLEMENTO_NF.Value = 'S' then
    VendasPdv_ItensCOMPLEMENTO.Value := dmVendas.PedeComplemento ( VendasPdv_ItensCOMPLEMENTO.Value,VendasPdv_ItensPRODUTO.Value+'-'+VendasPdv_ItensNOME_PRODUTO.Value );
end;

procedure TDmVendas2.VendasPdv_ItensVENDEDORValidate(Sender: TField);
begin
If Sender.IsNull
     Then
         Exit ;

     If ( Sender.Value = 0 )
     then Begin
          FrmVendasPdv.LocVen := True ;
          Exit ;
     end;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME From Fat_Vendedor Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          MessageDlg('Vendedor Inexistente!', mtError, [mbOK], 0);
          Abort;
     end
     ELSE BEGIN
          VendasPdv_ItensNOME_VENDEDOR.Value := copy(Geral.Fields[0].Value,1,15);
     END;
end;

procedure TDmVendas2.VendasPdv_ItensNUMEROValidate(Sender: TField);
begin
  IF ( Sender.value <> '0' )
     THEN BEGIN
          GERAL.Close;
          GERAL.Sql.Clear;

          GERAL.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'P'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'G'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'N'   , PtInput ) ;

          GERAL.Sql.Add (' Select * From EST_PRODUTOS_GRADES_NUMEROS                          ');
          GERAL.Sql.Add (' Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G and NUMERO = :N ');

          GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj                   ;
          GERAL.ParamByName ('P'   ).AsString  := VendasPdv_ItensPRODUTO.Value ;
          GERAL.ParamByName ('G'   ).AsString  := VendasPdv_ItensGRADE.value   ;
          GERAL.ParamByName ('N'   ).AsString  := Sender.Value                 ;

          GERAL.open;

          IF GERAL.FIELDS[0].ISNULL
          THEN BEGIN
               MessageDlg('Número Inexistente nesta Grade, Verifique!',MtError,[MbOk],0);
               Abort;
          END;
     end;
end;

procedure TDmVendas2.VendasPdv_ItensGRADEValidate(Sender: TField);
begin
 If trim(sender.value) <> '0'
     then begin
          GERAL.Close;
          GERAL.Sql.Clear;
          GERAL.Sql.Add (' Select * From EST_PRODUTOS_GRADES Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G ');
          GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
          GERAL.ParamByName ('P'   ).AsString  := VendasPdv_ItensPRODUTO.Value ;
          GERAL.ParamByName ('G'   ).AsString  := Sender.value ;

          GERAL.open;

          IF GERAL.FIELDS[0].ISNULL
          THEN BEGIN
               MessageDlg('Grade não Cadastrada, Verifique!',MtError,[MbOk],0);
               Abort;
          END;
     end;
end;

end.
