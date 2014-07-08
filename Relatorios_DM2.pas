 unit Relatorios_DM2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, RDprint,   ACBrBase, ACBrExtenso;

type
  TdmRelatorios2 = class(TDataModule)
    qryRelComVendas: TIBQuery;
    dsRelatorios: TDataSource;
    qryRelComBaixas: TIBQuery;
    qryRelComissoes: TIBQuery;
    qryRelParametros: TIBQuery;
    dsLink: TDataSource;
    qryRelComBaixasVALOR: TFloatField;
    qryRelComBaixasDT_BAIXA: TDateTimeField;
    qryRelComBaixasPARCELA: TIBStringField;
    qryRelComBaixasCODIGO_CR: TIntegerField;
    qryRelComBaixasCODIGO: TIntegerField;
    qryRelParametrosCODIGO: TIntegerField;
    qryRelParametrosCNPJ: TIBStringField;
    qryRelParametrosCOD_VENDA: TIntegerField;
    qryRelParametrosSEQUENCIA: TSmallintField;
    qryRelParametrosP_CODIGO: TIntegerField;
    qryRelParametrosP_PERFIL: TIBStringField;
    qryRelParametrosP_BASE_CALC: TSmallintField;
    qryRelParametrosP_FX_CODIGO: TIntegerField;
    qryRelParametrosP_FX_VLR_INICIAL: TFloatField;
    qryRelParametrosP_FX_VLR_FINAL: TFloatField;
    qryRelParametrosP_FX_D_CODIGO: TIntegerField;
    qryRelParametrosP_FX_D_PCT_INI: TFloatField;
    qryRelParametrosP_FX_D_PCT_FIN: TFloatField;
    qryRelParametrosP_FX_D_PCT_VISTA: TFloatField;
    qryRelParametrosP_FX_D_PCT_PRAZO: TFloatField;
    qryRelParametrosP_FX_D_PRD_CODIGO: TIntegerField;
    qryRelParametrosP_FX_D_PRD_PCT_VISTA: TFloatField;
    qryRelParametrosP_FX_D_PRD_PCT_PRAZO: TFloatField;
    qryRelParametrosTTL_FATURAMENTO: TFloatField;
    qryRelParametrosTTL_DESCTO_ITEM: TFloatField;
    qryRelParametrosDT_INICIAL: TDateTimeField;
    qryRelParametrosDT_FINAL: TDateTimeField;
    qryRelComissoesCOD_VENDA: TIntegerField;
    qryRelComissoesCOD_VENDEDOR: TIntegerField;
    qryRelComissoesCODIGO: TIntegerField;
    qryRelComissoesCOD_RECEBER: TIntegerField;
    qryRelComissoesCODIGO_PARC: TIntegerField;
    qryRelComissoesPCT_LIBERADO: TFloatField;
    qryRelComissoesPCT_PAGO: TFloatField;
    qryRelComissoesVLR_TOTAL: TFloatField;
    qryRelComVendd: TIBQuery;
    qryRelComVenddCNPJ: TIBStringField;
    qryRelComVenddVENDEDOR: TIntegerField;
    qryRelComVenddNOME: TIBStringField;
    qryRelComVendasVD_DATA: TDateTimeField;
    qryRelComVendasVD_DT_CX: TDateTimeField;
    qryRelComVendasVD_TOTAL: TFloatField;
    qryRelComVendasVD_DESC_ACRESC: TFloatField;
    qryRelComVendasVD_TOTAL_LIQ: TFloatField;
    qryRelComVendasVDI_QTDE: TFloatField;
    qryRelComVendasVDI_PRC_UNITARIO: TFloatField;
    qryRelComVendasVDI_CUSTO: TFloatField;
    qryRelComVendasVDI_DESCONTO: TFloatField;
    qryRelComVendasVDI_TTL_ITEM: TFloatField;
    qryRelComVendasPRD_CODIGO: TIBStringField;
    qryRelComVendasPRD_NOME: TIBStringField;
    qryRelComVendasVD_COD_CLIENTE: TIntegerField;
    qryRelComVendasVD_CLIENTE: TIBStringField;
    qryRelComVendasVD_ENTRADA: TFloatField;
    qryRelComVendasVD_COD_PAGTO: TIntegerField;
    qryRelComVendasCNPJ: TIBStringField;
    qryRelComVendasCM_COD_VENDA: TIntegerField;
    qryRelComVendasprd_cod_nome: TStringField;
    qryRelComVendasSEQUENCIA: TSmallintField;
    qryRelComissaoSint: TIBQuery;
    qryRelComissaoSintCOD_VENDA: TIntegerField;
    qryRelComissaoSintCOD_VENDEDOR: TIntegerField;
    qryRelComissaoSintCODIGO: TIntegerField;
    qryRelComissaoSintCOD_RECEBER: TIntegerField;
    qryRelComissaoSintCODIGO_PARC: TIntegerField;
    qryRelComissaoSintPCT_PAGO: TFloatField;
    qryRelComissaoSintVLR_TOTAL: TFloatField;
    qryRelComissaoSintNOME: TIBStringField;
    qryRelComissoesVLR_RECEBER: TFloatField;
    qryRelComissoesVLR_LIBERADO: TFloatField;
    qryRelComissaoSintVLR_LIBERADO: TFloatField;
    qryRelComVendasCOM_VISTA: TFloatField;
    qryRelComVendasCOM_PRAZO: TFloatField;
    qryRelComVendasttl_comissao: TFloatField;
    qryRelParametrosCOM_VISTA: TFloatField;
    qryRelParametrosCOM_PRAZO: TFloatField;
    qryRelParametrosUSUARIO: TIntegerField;
    qryRelParametrosDT_GERACAO: TDateTimeField;
    qryRelParametrosHORA: TTimeField;
    qryRelParametrosprd_cod_nome: TStringField;
    qryRelParametrosCOD_PRODUTO: TIBStringField;
    qryRelParametrosPRD_NOME: TIBStringField;
    qryRelComissoesPGT_ATRASO: TIntegerField;
    qryRelComissoesPGT_FX_PCT_PAGTO: TFloatField;
    qryRelComBaixasVLR_BRUTO: TFloatField;
    qryRelComBaixasVLR_JUROS: TFloatField;
    qryRelComCob: TIBQuery;
    qryRelComCobCODIGO: TIntegerField;
    qryRelComCobCOD_COBRADOR: TIntegerField;
    qryRelComCobCOBRADOR: TIBStringField;
    qryRelComCobCLIENTE: TIBStringField;
    qryRelComCobCOD_DOCTO: TIntegerField;
    qryRelComCobVLR_NOMINAL: TIBBCDField;
    qryRelComCobVLR_BAIXA: TIBBCDField;
    qryRelComCobVLR_JUROS: TIBBCDField;
    qryRelComCobVLR_DESCONTOS: TIBBCDField;
    qryRelComCobDT_VENCTO: TDateField;
    qryRelComCobDT_PAGTO: TDateField;
    qryRelComCobATRASO: TIntegerField;
    qryRelComCobpct_comissao: TFloatField;
    qryRelComCobcomissao: TFloatField;
    qryRelSugestaoCompra: TIBQuery;
    qryRelCompras: TIBQuery;
    qryRelSugestaoCompraCODIGO: TIBStringField;
    qryRelSugestaoCompraPRODUTO: TIBStringField;
    qryRelSugestaoCompraVMM: TFloatField;
    qryRelSugestaoCompraCOD_MARCA: TIntegerField;
    qryRelSugestaoCompraMARCA: TIBStringField;
    qryRelSugestaoCompraCOD_FORNECEDOR: TIntegerField;
    qryRelSugestaoCompraFORNECEDOR: TIBStringField;
    qryRelSugestaoCompraCOD_GRUPO: TIntegerField;
    qryRelSugestaoCompraGRUPO: TIBStringField;
    qryRelSugestaoCompraCOD_SUBGRUPO: TIntegerField;
    qryRelSugestaoCompraSUBGRUPO: TIBStringField;
    qryRelSugestaoCompraUNIDADE: TIBStringField;
    qryRelSugestaoCompraQTDE_PEDIDA: TFloatField;
    qryRelSugestaoCompraQTDE_MAX: TFloatField;
    qryRelSugestaoCompraQTDE_MIN: TFloatField;
    qryRelSugestaoCompraQTDE: TFloatField;
    dsCopLink: TDataSource;
    qryRelComprasCOD_FORNECEDOR: TIntegerField;
    qryRelComprasFORNECEDOR: TIBStringField;
    qryRelComprasTELEFONE: TIBStringField;
    qryRelComprasCUSTO: TFloatField;
    qryRelComprasDATA: TDateField;
    qryRelComprasQTDE: TFloatField;
    qryRelComprasNDOCTO: TIBStringField;
    qryRelComprasTIPO_DOCTO: TIBStringField;
    qryRelComprasLOCAL_ESTOQUE: TIntegerField;
    qryPosicaoEstoque: TIBQuery;
    qryPosicaoEstoquePRODUTO: TIBStringField;
    qryPosicaoEstoqueNOME_PRODUTO: TIBStringField;
    qryPosicaoEstoqueCOD_FORNECEDOR: TIntegerField;
    qryPosicaoEstoqueFORNECEDOR: TIBStringField;
    qryPosicaoEstoqueCOD_GRUPO: TIntegerField;
    qryPosicaoEstoqueGRUPO: TIBStringField;
    qryPosicaoEstoqueCOD_SUBGRUPO: TIntegerField;
    qryPosicaoEstoqueSUBGRUPO: TIBStringField;
    qryPosicaoEstoqueCOD_MARCA: TIntegerField;
    qryPosicaoEstoqueMARCA: TIBStringField;
    qryPosicaoEstoqueDATA_MOV: TDateField;
    qryPosicaoEstoqueORIGEM: TIBStringField;
    qryPosicaoEstoqueQTDE_ANT: TIBBCDField;
    qryPosicaoEstoqueQTDE: TIBBCDField;
    qryPosicaoEstoqueSALDO: TIBBCDField;
    qryPosicaoEstoqueTIPO_MOV: TIBStringField;
    qryPosicaoEstoqueUND: TIBStringField;
    SelPropriedade: TIBQuery;
    SelPropriedadeAREA_TOTAL: TIBStringField;
    SelPropriedadeATIVA: TIBStringField;
    SelPropriedadeBAIRRO: TIntegerField;
    SelPropriedadeCEP: TIBStringField;
    SelPropriedadeCIDADE: TIntegerField;
    SelPropriedadeCNPJ: TIBStringField;
    SelPropriedadeCOMPLEMENTO: TIBStringField;
    SelPropriedadeCONTRATO: TIBStringField;
    SelPropriedadeCPF: TIBStringField;
    SelPropriedadeENDERECO: TIntegerField;
    SelPropriedadeGARANTIA: TDateTimeField;
    SelPropriedadeIE: TIBStringField;
    SelPropriedadeMODELO: TIntegerField;
    SelPropriedadeNOME: TIBStringField;
    SelPropriedadeNUMERO: TIBStringField;
    SelPropriedadeOBS: TBlobField;
    SelPropriedadePESSOA_FJ: TIntegerField;
    SelPropriedadePROPRIEDADE: TIntegerField;
    SelPropriedadePROPRIETARIO: TIBStringField;
    SelPropriedadeREGIAO: TSmallintField;
    SelPropriedadeTECNICO: TIntegerField;
    SelPropriedadeTIPO_CONTRATO: TIntegerField;
    SelPropriedadeUF: TIBStringField;
    SelPropriedadeVENDEDOR: TIntegerField;
    qryRelHistoricoEquip: TIBQuery;
    qryRelHistoricoEquipOS_DEFEITO_RECLAMADO: TIntegerField;
    qryRelHistoricoEquipOS_TIPO_ATENDIMENTO: TIBStringField;
    qryRelHistoricoEquipOS_CAUSA_CHAMADO: TIBStringField;
    qryRelHistoricoEquipOS_CONDICAO_FINAL_EQUIPAMENTO: TIBStringField;
    qryRelHistoricoEquipOS_PESSOA_FJ: TIntegerField;
    qryRelHistoricoEquipOS_NOME: TIBStringField;
    qryRelHistoricoEquipOS_CODIGO: TIntegerField;
    qryRelHistoricoEquipOS_DATA: TDateTimeField;
    qryRelHistoricoEquipDEF_NOME: TIBStringField;
    qryRelHistoricoEquipMDL_CODIGO: TIntegerField;
    qryRelHistoricoEquipMDL_NOME: TIBStringField;
    qryRelHistoricoEquipPRO_PROPRIEDADE: TIntegerField;
    qryRelHistoricoEquipPRO_NOME: TIBStringField;
    qryRelHistoricoEquip2: TIBQuery;
    qryRelHistoricoEquip2OS_INFORMACOES: TBlobField;
    qryRelHistoricoEquip2OS_TIPO_ATENDIMENTO: TIBStringField;
    qryRelHistoricoEquip2OS_CAUSA_CHAMADO: TIBStringField;
    qryRelHistoricoEquip2OBS_FECHAMENTO: TBlobField;
    qryRelHistoricoEquip2OS_PESSOA_FJ: TIntegerField;
    qryRelHistoricoEquip2OS_NOME: TIBStringField;
    qryRelHistoricoEquip2OS_CODIGO: TIntegerField;
    qryRelHistoricoEquip2OS_DATA: TDateTimeField;
    qryRelHistoricoEquip2DEF_NOME: TIBStringField;
    qryRelHistoricoEquip2PRO_PROPRIEDADE: TIBStringField;
    qryRelHistoricoEquip2PRO_NOME: TIBStringField;
    qryRelHistoricoEquip2PRO_SERIE: TIBStringField;
    qryRelHistoricoEquip2ST_NOME: TIBStringField;
    qryRelHistoricoEquip2OS_DT_FECHAMENTO: TDateTimeField;
    qryRelHistoricoEquipOBS_FECHAMENTO: TBlobField;
    qryRelHistoricoEquipDT_CILINDRO: TDateTimeField;
    qryRelHistoricoEquipDT_REVELADOR: TDateTimeField;
    qryRelHistoricoEquip2DT_CILINDRO: TDateTimeField;
    qryRelHistoricoEquip2DT_REVELADOR: TDateTimeField;
    qryRelComissoesSTATUS: TIBStringField;
    qryRelComissaoSintSTATUS: TIBStringField;
    qryRelComissaoSintPCT_LIBERADO: TFloatField;
    qryRelEquipSint: TIBQuery;
    qryRelEquipSintCOD_PRODUTO: TIBStringField;
    qryRelEquipSintPRODUTO: TIBStringField;
    qryRelEquipSintSERIE: TIBStringField;
    qryRelEquipSintMRC_CODIGO: TIntegerField;
    qryRelEquipSintMARCA: TIBStringField;
    qryRelEquipSintMODELO: TIBStringField;
    qryRelEquipSintMDL_CODIGO: TIntegerField;
    qryRelEquipSintMEDIA_COPIAS: TIntegerField;
    qryRelEquipSintCOD_CLIENTE: TIntegerField;
    qryRelEquipSintCHAMADOS_SUB: TIntegerField;
    qryRelEquipSintCHAMADOS_TIT: TIntegerField;
    qryRelEquipSintKM_RODADO: TFloatField;
    qryRelEquipSintTEMPO_RESP_VENC: TIntegerField;
    qryRelEquipSintTEMPO_RESP_MED: TFloatField;
    qryRelEquipSintREG_CODIGO: TIntegerField;
    qryRelEquipSintREG_NOME: TIBStringField;
    SelKardex: TIBQuery;
    SelKardexCNPJ: TIBStringField;
    SelKardexPRODUTO: TIBStringField;
    SelKardexNOME_PRODUTO: TIBStringField;
    SelKardexCODIGO: TIntegerField;
    SelKardexNDOCTO: TIBStringField;
    SelKardexDT_MOVTO: TDateTimeField;
    SelKardexORIGEM: TIBStringField;
    SelKardexTIPO_ES: TIBStringField;
    SelKardexPESSOA_FJ: TIntegerField;
    SelKardexNOME_PESSOA: TIBStringField;
    SelKardexQTDADE_ANT: TFloatField;
    SelKardexQTDADE: TFloatField;
    SelKardexQTDADE_ATUAL: TFloatField;
    SelKardexPRC_UNIT: TFloatField;
    SelKardexDESCONTOS: TFloatField;
    SelKardexQTDADE_ENT: TFloatField;
    SelKardexSALDO: TFloatField;
    SelKardexQTDADE_SAI: TFloatField;
    SelKardexVLR_TOTAL: TFloatField;
    SelKardexDT_KARDEX: TDateTimeField;
    SelKardexHR_KARDEX: TTimeField;
    qryRelEquipSintTOTAL_CHAMADOS: TIntegerField;
    qryRelEquipSintCOD_TIPO_CONTRATO: TIntegerField;
    SelPessoasFJ: TIBQuery;
    SelPessoasFJNOME_RAZAO: TIBStringField;
    SelPessoasFJCODIGO: TIntegerField;
    SelProdutos: TIBQuery;
    SelProdutosCODIGO: TIBStringField;
    SelProdutosNOME: TIBStringField;
    SelProdutosSERIE: TIBStringField;
    qryRelComVendRec: TIBQuery;
    qryRelComVendRecVD_TOTAL: TFloatField;
    qryRelComVendRecVD_COD_VENDEDOR: TIntegerField;
    qryRelComVendRecVD_DT_VD: TDateField;
    qryRelComVendRecVD_DT_CX: TDateField;
    qryRelComVendRecVD_CODIGO: TIntegerField;
    qryRelComVendRecVD_TIPO: TIBStringField;
    qryRelComVendRecPCT_COMISSAO: TFloatField;
    qryRelComVendRecVLR_COMISSAO: TFloatField;
    qryRelComVendRecBX_CODIGO: TIntegerField;
    qryRelComVendRecBX_VALOR: TFloatField;
    qryRelComVendRecBX_JUROS: TFloatField;
    qryRelComVendRecBX_DESCONTOS: TFloatField;
    qryRelComVendRecBX_DATA: TDateField;
    qryRelPropriedade: TIBQuery;
    qryRelPropriedadePROP_ENDERECO: TIBStringField;
    qryRelPropriedadeCLI_FONE: TIBStringField;
    qryRelPropriedadeCLI_FAX: TIBStringField;
    qryRelPropriedadeCLI_CPF_CGC: TIBStringField;
    qryRelPropriedadeCLI_FANTASIA: TIBStringField;
    qryRelPropriedadePROP_ENDERECO1: TIBStringField;
    qryRelPropriedadePROP_COMPLEMENTO: TIBStringField;
    qryRelPropriedadeCLI_CODIGO: TIntegerField;
    qryRelPropriedadeCLI_NOME_RAZAO: TIBStringField;
    qryRelPropriedadePROP_CODIGO: TIntegerField;
    qryRelPropriedadePROP_NOME: TIBStringField;
    qryRelPropriedadePROP_IE: TIBStringField;
    qryRelPropriedadePROP_CIDADE: TIBStringField;
    qryRelPropriedadePROP_CNPJ: TIBStringField;
    qryRelPropriedadePROP_CEP: TIBStringField;
    qryRelPropriedadePROP_REGIAO: TIBStringField;
    Kardex: TIBQuery;
    KardexCNPJ: TIBStringField;
    KardexPRODUTO: TIBStringField;
    KardexNOME_PRODUTO: TIBStringField;
    KardexCODIGO: TIntegerField;
    KardexNDOCTO: TIBStringField;
    KardexDT_MOVTO: TDateTimeField;
    KardexORIGEM: TIBStringField;
    KardexTIPO_ES: TIBStringField;
    KardexPESSOA_FJ: TIntegerField;
    KardexNOME_PESSOA: TIBStringField;
    KardexQTDADE_ANT: TFloatField;
    KardexQTDADE: TFloatField;
    KardexQTDADE_ATUAL: TFloatField;
    KardexPRC_UNIT: TFloatField;
    KardexDESCONTOS: TFloatField;
    KardexQTDADE_ENT: TFloatField;
    KardexSALDO: TFloatField;
    KardexQTDADE_SAI: TFloatField;
    KardexVLR_TOTAL: TFloatField;
    KardexDT_KARDEX: TDateTimeField;
    KardexHR_KARDEX: TTimeField;
    KardexQTDADE_FISCAL: TFloatField;
    Impressora: TRDprint;
    qEndFornecedor: TIBQuery;
    qEndFornecedorCONCATENATION: TIBStringField;
    qEndFornecedorCOMPLEMENTO: TIBStringField;
    qEndFornecedorBAIRRO: TIBStringField;
    qEndFornecedorCIDADE: TIBStringField;
    qEndFornecedorUF: TIBStringField;
    qryRelVendasGrupo: TIBDataSet;
    qryRelVendasGrupo_Lucro: TFloatField;
    qryRelVendasGrupo_Margen: TFloatField;
    qryRelVendasGrupoCODIGO: TIntegerField;
    qryRelVendasGrupoNOME_PRODUTO: TIBStringField;
    qryRelVendasGrupoDATA: TDateField;
    qryRelVendasGrupoDATA_CAIXA: TDateField;
    qryRelVendasGrupoNOME_RAZAO: TIBStringField;
    qryRelVendasGrupoNOME: TIBStringField;
    qryRelVendasGrupoQTDE: TIBBCDField;
    qryRelVendasGrupoVLR_VENDA: TIBBCDField;
    qryRelVendasGrupoVLR_DESCONTO: TIBBCDField;
    qryRelVendasGrupoVLR_BRUTO: TIBBCDField;
    qryRelVendasGrupoVLR_CUSTO: TIBBCDField;
    QryRecibo: TIBQuery;
    dsRecibo: TDataSource;
    QryRecibo_ValorExtenso: TStringField;
    QryReciboRECIBO: TIntegerField;
    QryReciboREC_DT_LANCTO: TDateField;
    QryReciboEP_NOME: TIBStringField;
    QryReciboEP_ENDERECO: TIBStringField;
    QryReciboEP_BAIRRO: TIBStringField;
    QryReciboEP_CIDADE: TIBStringField;
    QryReciboEP_FONE: TIBStringField;
    QryReciboEP_CNPJ: TIBStringField;
    QryReciboCLI_CODIGO: TIntegerField;
    QryReciboCLI_NOME: TIBStringField;
    QryReciboCLI_CPF_CNPJ: TIBStringField;
    QryReciboVLR_BAIXA: TIBBCDField;
    QryReciboREC_CODIGO: TIntegerField;
    QryReciboREC_PARCELA: TIBStringField;
    QryReciboREC_SALDO: TIBBCDField;
    QryReciboREC_JUROS: TIBBCDField;
    QryReciboREC_MULTA: TIBBCDField;
    QryReciboREC_HISTORICO: TIBStringField;
    QryReciboREC_VENDA: TIntegerField;
    QryReciboTIPO_BAIXA: TIBStringField;
    QryReciboEP_FAX: TIBStringField;
    QryReciboREC_VALOR_NOMINAL: TIBBCDField;
    QryReciboREC_BX_PARCIAL: TIBBCDField;
    QryReciboREC_SALDO_NOMINAL: TIBBCDField;
    QryReciboREC_DESCONTOS: TIBBCDField;
    QryReciboREC_VLR_BAIXA: TIBBCDField;
    QryReciboIMPRESSAO: TIBStringField;
    QryReciboBX_HISTORICO: TIBStringField;
    qryRelEquipSintBAIRRO: TIBStringField;
    qryRelEquipSintENDERECO: TIBStringField;
    qryRelEquipSintCIDADE: TIBStringField;
    qryRelEquipSintFONE: TIBStringField;
    QryReciboREC_DOCTO: TIBStringField;
    SelKardexCFOP: TIntegerField;
    SelKardexCFOP_ESTOQUE: TIBStringField;
    qryRelHistEquipItens: TIBQuery;
    dsLinkHist: TDataSource;
    qryRelHistoricoEquip2CNPJ: TIBStringField;
    qryRelHistEquipItensCOD_PRODUTO: TIBStringField;
    qryRelHistEquipItensNOME_PRODUTO: TIBStringField;
    qryRelHistEquipItensQUANTIDADE: TFloatField;
    qryRelHistEquipItensMARCA: TIBStringField;
    qryRelHistoricoEquip2CONTADOR_TOTAL: TFloatField;
    QryRelContratos: TIBQuery;
    QryRelContratosCODIGO: TIntegerField;
    QryRelContratosNUM_CONTRATO: TIBStringField;
    QryRelContratosNOME: TIBStringField;
    QryRelContratosPSA_CODIGO: TIntegerField;
    QryRelContratosNOME_RAZAO: TIBStringField;
    QryRelContratosDT_INICIO: TDateTimeField;
    QryRelContratosDT_FIM: TDateTimeField;
    QryRelContratosATIVO: TIBStringField;
    QryRelContratosCOD_ITEM: TIntegerField;
    QryRelContratosCOD_PRODUTO: TIBStringField;
    QryRelContratosSERIE: TIBStringField;
    QryRelContratosITEM_ATIVO: TIBStringField;
    QryRelContratosDATA: TDateTimeField;
    QryRelContratosDT_ADICAO: TDateTimeField;
    QryRelContratosDT_RETIRADA: TDateField;
    QryRelContratosPRODUTO: TIBStringField;
    qryRelEquipSintPSA_FANTASIA: TIBStringField;
    qryRelHistoricoEquip2MDL_NOME: TIBStringField;
    QryRelPosicaoTitulos: TIBQuery;
    QryRelPosicaoTitulosCODIGO: TIntegerField;
    QryRelPosicaoTitulosTIPO: TIBStringField;
    QryRelPosicaoTitulosCOD_PESSOA: TIntegerField;
    QryRelPosicaoTitulosDOCTO: TIBStringField;
    QryRelPosicaoTitulosTIPO_DOCTO: TIBStringField;
    QryRelPosicaoTitulosDT_EMISSAO: TDateField;
    QryRelPosicaoTitulosDT_VENCIMENTO: TDateField;
    QryRelPosicaoTitulosVALOR_NOMINAL: TIBBCDField;
    QryRelPosicaoTitulosAMORTIZACAO: TIBBCDField;
    QryRelPosicaoTitulosSALDO_NOMINAL: TIBBCDField;
    QryRelPosicaoTitulosQTDE_INDEXADOR: TIBBCDField;
    QryRelPosicaoTitulosVARIACAO_INDEXADOR: TIBBCDField;
    QryRelPosicaoTitulosJUROS: TIBBCDField;
    QryRelPosicaoTitulosDESCONTOS: TIBBCDField;
    QryRelPosicaoTitulosSALDO_FINAL: TIBBCDField;
    QryRelPosicaoTitulosNOME_PESSOA: TIBStringField;
    QryRelPosicaoTitulosDATA_ULT_BX: TDateField;
    QryRelPosicaoTitulosB_JUROS: TIBBCDField;
    QryRelPosicaoTitulosB_DESCONTOS: TIBBCDField;
    QryRelPosicaoTitulosB_SALDO_FINAL: TIBBCDField;
    QryRelPosicaoTitulosB_VALOR_NOMINAL: TIBBCDField;
    QryRelPosicaoTitulosB_AMORTIZACAO: TIBBCDField;
    QryRelPosicaoTitulosB_SALDO_NOMINAL: TIBBCDField;
    QryRelPosicaoTitulosINDEXADOR: TIBStringField;
    qryRelVDRec: TIBQuery;
    qryRelVDRecNOME: TIBStringField;
    qryRelVDRecTOTAL: TFloatField;
    qryRelVDRecDESC_ACRES: TFloatField;
    qryRelVDRecVD_TOTAL: TFloatField;
    qryRelVDRecQUANTIDADE: TFloatField;
    qryRelVDRecPRC_UNITARIO: TFloatField;
    qryRelVDRecDESCONTO: TFloatField;
    qryRelVDRecCOD_PRODUTO: TIBStringField;
    qryRelVDRecTOTAL_ITEM: TFloatField;
    qryRelVDRecCODIGO: TIntegerField;
    qryRelVDRecPRODUTO: TIBStringField;
    qryRelVDRecNUM_NF: TIntegerField;
    qryRelVDRecDATA: TDateField;
    QryRelPosicaoTitulosCOD_VENDA: TIntegerField;
    dsLinkPosicao: TDataSource;
    qryPosicaoEstoquePRC_CUSTO_MED: TIBBCDField;
    qryPosicaoEstoquePRC_VENDA: TIBBCDField;
    QryReciboNUM_NF: TIntegerField;
    Qry_Faturamentos: TIBQuery;
    Qry_FaturamentosCODIGO: TIntegerField;
    Qry_FaturamentosNOME_RAZAO: TIBStringField;
    Qry_FaturamentosTOTAL: TFloatField;
    Qry_FaturamentosDESC_ACRES: TFloatField;
    Qry_FaturamentosNATUREZA: TIntegerField;
    Qry_FaturamentosCNPJ: TIBStringField;
    Qry_FaturamentosTOTAL_LIQUIDO: TFloatField;
    Qry_FaturamentosLUCRO_FATURAMENTO: TFloatField;
    Qry_FaturamentosCOM_FATURAMENTO: TFloatField;
    Qry_FaturamentosCFOP: TIntegerField;
    Qry_FaturamentosFORMA_PAGTO: TIBStringField;
    Qry_FatItens: TIBQuery;
    Qry_FatItensCNPJ: TIBStringField;
    Qry_FatItensCODIGO: TIntegerField;
    Qry_FatItensSEQUENCIA: TSmallintField;
    Qry_FatItensPRC_UNITARIO: TFloatField;
    Qry_FatItensCUSTO_MEDIO: TFloatField;
    Qry_FatItensQUANTIDADE: TFloatField;
    Qry_FatItensDESP_OP: TFloatField;
    Qry_FatItensCUSTO_ITEM: TFloatField;
    Qry_FatItensLUCRO_UNITARIO: TFloatField;
    Qry_FatItensLUCRO_BRUTO: TFloatField;
    Qry_FatItensLUCRO_LIQUIDO: TFloatField;
    Qry_FatItensCOMISSAO_ITEM: TFloatField;
    Qry_FatItensNOME: TIBStringField;
    Qry_FatItensAgentes: TIBQuery;
    Qry_FatItensAgentesNOME_RAZAO: TIBStringField;
    Qry_FatItensAgentesCPF_CGC: TIBStringField;
    Qry_FatItensAgentesCNPJ: TIBStringField;
    Qry_FatItensAgentesCODIGO: TIntegerField;
    Qry_FatItensAgentesCOD_ITEM: TIntegerField;
    Qry_FatItensAgentesPRODUTO: TIBStringField;
    Qry_FatItensAgentesSEQUENCIA: TIntegerField;
    Qry_FatItensAgentesPESSOA_FJ: TIntegerField;
    Qry_FatItensAgentesPERCENTUAL: TFloatField;
    Qry_FatItensAgentesCOMISSAO_ITEM: TFloatField;
    Qry_FatComissoes: TIBQuery;
    Qry_ComBaixas: TIBQuery;
    Qry_FatComissoesAGENTE: TIBStringField;
    Qry_FatComissoesVLR_COMISSAO: TIBBCDField;
    Qry_FatComissoesVLR_CONTA: TIBBCDField;
    Qry_FatComissoesSALDO_COMISSAO: TIBBCDField;
    Qry_FatComissoesCOD_PAGAR: TIntegerField;
    Qry_FatComissoesCOD_RECEBER: TIntegerField;
    Qry_ComBaixasCOD_BAIXA: TIntegerField;
    Qry_ComBaixasVLR_COMISSAO: TIBBCDField;
    Qry_ComBaixasPCT_BAIXA: TIBBCDField;
    Qry_ComBaixasVALOR_BAIXA: TIBBCDField;
    Qry_ComBaixasSTATUS: TIBStringField;
    dsLnkFaturamento: TDataSource;
    dsLnkFatItens: TDataSource;
    Qry_FatItensPRODUTO: TIBStringField;
    dsLnkBxCom: TDataSource;
    Qry_FatComissoesRCNPJ: TIBStringField;
    Qry_FatComissoesRCODIGO: TIntegerField;
    Qry_FaturamentosNUM_NF: TIntegerField;
    Qry_FaturamentosCM_LIBERADA: TFloatField;
    Qry_FaturamentosCM_QUITADA: TFloatField;
    qryPosicaoEstoqueCUSTO_AQUISICAO: TIBBCDField;
    qryPosicaoEstoqueTTL_PRC_CUSTO_MED: TIBBCDField;
    qryPosicaoEstoqueTTL_PRC_VENDA: TIBBCDField;
    qryPosicaoEstoqueTTL_CUSTO_AQUISICAO: TIBBCDField;
    qryRelHistoricoEquip2VEICULO: TIBStringField;
    qryRelHistoricoEquip2PLACA: TIBStringField;
    qryRelHistoricoEquip2ASSUNTO: TIBStringField;
    qryRelHistoricoEquip2NOME_RAZAO: TIBStringField;
    QryCuboEstoque: TIBQuery;
    QryCuboEstoqueCOD_PRODUTO: TIBStringField;
    QryCuboEstoquePRODUTO: TIBStringField;
    QryCuboEstoqueMARCA: TIBStringField;
    QryCuboEstoqueFORNECEDOR: TIBStringField;
    QryCuboEstoqueGRUPO: TIBStringField;
    QryCuboEstoqueSUBGRUPO: TIBStringField;
    QryCuboEstoqueSECAO: TIBStringField;
    QryCuboEstoqueMODELO: TIBStringField;
    QryCuboEstoqueCOR_PRODUTO: TIBStringField;
    QryCuboEstoqueMATERIAL_PRODUTO: TIBStringField;
    QryCuboEstoqueMATERIAL_GRADE: TIBStringField;
    QryCuboEstoqueSALDO_FISICO_PRODUTO: TFloatField;
    QryCuboEstoqueSALDO_FINANCEIRO_PRODUTO: TFloatField;
    QryCuboEstoquePROD_PESAVEL: TIBStringField;
    QryCuboEstoqueETIQUETA_ENT: TIBStringField;
    QryCuboEstoqueMATERIA_GRADE: TIBStringField;
    QryCuboEstoqueCOR_GRADE: TIBStringField;
    QryCuboEstoqueNOME_PERFIL: TIBStringField;
    QryCuboEstoqueSERVICO: TIBStringField;
    QryCuboEstoqueCOMPLEMENTO: TIBStringField;
    QryCuboEstoquePOSSUI_LOTE: TIBStringField;
    QryCuboEstoqueTRIB_ALIQ_EST: TIBStringField;
    QryCuboEstoqueTRIB_ALIQ_INT: TIBStringField;
    QryCuboEstoqueREDUCAO: TIBStringField;
    QryCuboEstoqueTRIB_MODALIDADE: TIBStringField;
    QryCuboEstoqueSALDO_FISICO_GRADE_PERFIL: TFloatField;
    QryCuboEstoqueSALDO_FINANCEIRO_GRADE_PERFIL: TFloatField;
    QryCuboEstoqueNUMERO: TIBStringField;
    QryCuboEstoqueSALDO_FISICO_NUMERO: TFloatField;
    QryCuboEstoqueORDEM: TIntegerField;
    QryCuboEstoqueNUM_ORD: TIBStringField;
    qryPosicaoEstoqueDT_VENCTO_PRC_VENDA: TDateField;
    Extenso: TACBrExtenso;
    qryRelEquipSintTECNICO_ESPECIFICO: TIntegerField;
    procedure qryRelComVendasCalcFields(DataSet: TDataSet);
    procedure qryRelParametrosCalcFields(DataSet: TDataSet);
    procedure qryRelComCobCalcFields(DataSet: TDataSet);
    procedure SelPropriedadeAfterClose(DataSet: TDataSet);
    procedure SelPropriedadeBeforeOpen(DataSet: TDataSet);
    procedure SelKardexBeforeOpen(DataSet: TDataSet);
    procedure SelPessoasFJBeforeOpen(DataSet: TDataSet);
    procedure SelProdutosBeforeOpen(DataSet: TDataSet);
    procedure qryRelPropriedadeBeforeOpen(DataSet: TDataSet);
    procedure KardexBeforeOpen(DataSet: TDataSet);
    procedure KardexCalcFields(DataSet: TDataSet);
    procedure ImpressoraBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure IMPRIMERECIBOPAGAR ( Codigo: Integer; Favorecido: String; Dt_Vencto: TDateTime; Docto: String;
    Dt_Lancto: TDateTime; Valor: Real; Historico: String;
    Cpf_Cnpj: String; Pessoa_Fj:Integer; Empresa: String );
    procedure qEndFornecedorBeforeOpen(DataSet: TDataSet);
    procedure qryRelVendasGrupoCalcFields(DataSet: TDataSet);
    procedure QryReciboCalcFields(DataSet: TDataSet);
    procedure qryRelVDRecBeforeOpen(DataSet: TDataSet);
  private
    {Private declarations}
  public
    { Public declarations }
    a1, a2, b1, b2, c1, c2, d1, d2: real;
    com1, com2, com3, com4: real;
  end;

var
  dmRelatorios2: TdmRelatorios2;

implementation

uses Application_DM, Relatorios_DM, Funcoes;

{$R *.DFM}

procedure TdmRelatorios2.qryRelComVendasCalcFields(DataSet: TDataSet);
begin
  qryRelComVendasprd_cod_nome.value := qryRelComVendasPRD_CODIGO.value + ' - '+qryRelComVendasPRD_NOME.value;
  qryRelComVendasttl_comissao.value := qryRelComVendasCOM_VISTA.asFloat + qryRelComVendasCOM_PRAZO.asFloat;
end;

procedure TdmRelatorios2.qryRelParametrosCalcFields(DataSet: TDataSet);
begin
  qryRelParametrosprd_cod_nome.value := qryRelParametrosCOD_PRODUTO.asString +'-'+qryRelParametrosPRD_NOME.asString;
end;

procedure TdmRelatorios2.qryRelComCobCalcFields(DataSet: TDataSet);
var
  atraso : integer;
begin
  atraso := qryRelComCobATRASO.value;
  if ((Atraso >= a1) and (Atraso <= a2)) then
  begin
    qryRelComCobPct_comissao.value := com1;
    qryRelComCobComissao.value := ((com1 * qryRelComCobVLR_BAIXA.value)/100);
  end
  else if ((Atraso >= b1) and (Atraso <= b2)) then
  begin
    qryRelComCobPct_comissao.value := com2;
    qryRelComCobComissao.value := ((com2 * qryRelComCobVLR_BAIXA.value)/100);
  end
  else if ((Atraso >= c1) and (Atraso <= c2)) then
  begin
    qryRelComCobPct_comissao.value := com3;
    qryRelComCobComissao.value := ((com3 * qryRelComCobVLR_BAIXA.value)/100);
  end
  else if ((Atraso >= d1) and (Atraso <= d2)) then
  begin
    qryRelComCobPct_comissao.value := com4;
    qryRelComCobComissao.value := ((com4 * qryRelComCobVLR_BAIXA.value)/100);
  end
end;

procedure TdmRelatorios2.SelPropriedadeAfterClose(DataSet: TDataSet);
begin
     If (DataSet is TIBQuery) Then
     (DataSet as TIBquery).UnPrepare;
end;

procedure TdmRelatorios2.SelPropriedadeBeforeOpen(DataSet: TDataSet);
begin
     if (DataSet is TIBQuery) then
     begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (DataSet as TIBQuery).Prepare;
     end;
end;

procedure TdmRelatorios2.SelKardexBeforeOpen(DataSet: TDataSet);
begin
     if (DataSet is TIBQuery) then
     begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (DataSet as TIBQuery).Prepare;
     end;
end;

procedure TdmRelatorios2.SelPessoasFJBeforeOpen(DataSet: TDataSet);
begin
  SelPessoasFJ.ParamByName('CNPJ').asString := DMApp.Cnpj;
end;

procedure TdmRelatorios2.SelProdutosBeforeOpen(DataSet: TDataSet);
begin
  SelProdutos.ParamByName('CNPJ').asString := DMApp.Cnpj;
end;

procedure TdmRelatorios2.qryRelPropriedadeBeforeOpen(DataSet: TDataSet);
begin
  qryRelPropriedade.parambyname('cnpj').value := dmapp.cnpj;
end;

procedure TdmRelatorios2.KardexBeforeOpen(DataSet: TDataSet);
begin
  Kardex.ParamByName('CNPJ').asString := DMApp.Cnpj;
end;

procedure TdmRelatorios2.KardexCalcFields(DataSet: TDataSet);
begin
  If KardexTIPO_ES.Value = 'E' Then
  Begin
       KardexQTDADE_ENT.Value := KardexQTDADE.Value;
       KardexSALDO.Value      := KardexQTDADE_ANT.Value + KardexQTDADE.Value;
  End;
  If KardexTIPO_ES.Value = 'S' Then
     Begin
       KardexQTDADE_SAI.Value := KardexQTDADE.Value;
       KardexSALDO.Value      := KardexQTDADE_ANT.Value - KardexQTDADE.Value;
     End;
  //
  KardexVLR_TOTAL.Value := (KardexQTDADE.Value * KardexPRC_UNIT.Value) - KardexDESCONTOS.Value;
end;

procedure TdmRelatorios2.ImprimeReciboPagar
  ( Codigo: Integer; Favorecido: String; Dt_Vencto: TDateTime; Docto: String;
    Dt_Lancto: TDateTime; Valor: Real; Historico: String;
    Cpf_Cnpj: String; Pessoa_Fj:Integer; Empresa: String );
VAR
   MESEXT, STR, STR1, STR2, STR3  : STRING;
   DIA, MES, ANO:WORD ;
begin
     FAVORECIDO := FAVORECIDO + ' - ' + DMApp.Cnpj;

     Str := inttostr(Codigo);

     IF DMAPP.IMP_RECIBO = '36'
     THEN BEGIN
          DECODEDATE ( DT_LANCTO, ANO, MES, DIA );

          MESEXT := UPPERCASE(MESEXTENSO(MES));

          IMPRESSORA.OnBeforeNewPage := Nil ;

          IMPRESSORA.TamanhoQteLinhas := 47 ;

          If (DmApp.Perfil_ComputadorPORTA_RECIBO.VALUE) <> ''
          then begin
               SetDefaultPrinter( DmApp.Perfil_ComputadorPORTA_RECIBO.VALUE ) ;
               IMPRESSORA.SetPrinterbyPorta ( DmApp.Perfil_ComputadorPORTA_RECIBO.VALUE );
               IMPRESSORA.PortaComunicacao := DmApp.Perfil_ComputadorPORTA_RECIBO.VALUE ;
          end;

          If (DmApp.Perfil_ComputadorTIPO_IMP_PEDIDO.VALUE) = 'HP'
          then begin
               IMPRESSORA.Impressora := GRAFICO ;
          END;

          IMPRESSORA.OpcoesPreview.Preview := TRUE ;

          IF NOT DMAPP.Perfil_ComputadorVIAS_RECIBO.IsNull
          THEN
              IMPRESSORA.NumerodeCopias := DMAPP.Perfil_ComputadorVIAS_RECIBO.VALUE ;

          IMPRESSORA.ABRIR;


          IF TRIM(EMPRESA) = ''
          THEN BEGIN
               IMPRESSORA.impf(03,01,'----------------------------------------' ,[comp17]);

               IMPRESSORA.impf(04,01,COPY(DmApp.Nome,1,40) ,[COMP12, NEGRITO]);

               IMPRESSORA.impf(05,01,COPY(DmApp.ENDER + ', BAIRRO = ' + DMAPP.BAIRRO,1,40),[COMP17, NEGRITO]);

               IMPRESSORA.impf(06,01,COPY(DmApp.CIDADE,1,40),[COMP17, NEGRITO]);

               IMPRESSORA.impf(07,01,COPY('FONE ' + DmApp.FONE + ' FAX ' + DMAPP.FAX,1,40),[COMP17, NEGRITO]);

               STR :=  INTTOSTR(CODIGO) ;
               WHILE LENGTH(STR) < 6 DO
               BEGIN
                    STR := '0' + STR ;
               END;

               IMPRESSORA.impf(08, 01,'----------------------------------------' ,[comp17]);
          END
          ELSE BEGIN
               IMPRESSORA.impf(03,01,'----------------------------------------' ,[comp17]);

               IMPRESSORA.impf(06,30,'R E C I B O',[EXPANDIDO, NEGRITO]);

               IMPRESSORA.impf(08, 01,'----------------------------------------' ,[comp17]);
          END;

          IMPRESSORA.impf(10, 01,'RECIBO N => ' + STR, [comp12, NEGRITO]);

          STR   := COPY('RECIBI(EMOS) DE  ' + FAVORECIDO,1 ,40) ;
          STR2  := COPY('RECIBI(EMOS) DE  ' + FAVORECIDO,41,80) ;

          IMPRESSORA.impf(12, 01,STR, [comp17]);
          IMPRESSORA.impf(13, 01,STR2, [comp17]);
          //aqui boy
          IMPRESSORA.impf(15, 01,'CGC/CPF ' + DMApp.Cnpj , [comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', VALOR );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          EXTENSO.Valor := VALOR ;

          STR1 := COPY('A IMPORTANCIA DE R$ ' + STR + ' ( ' + EXTENSO.Texto + ' ) ',01,40) ;
          STR2 := COPY('A IMPORTANCIA DE R$ ' + STR + ' ( ' + EXTENSO.Texto + ' ) ',41,40) ;
          STR3 := COPY('A IMPORTANCIA DE R$ ' + STR + ' ( ' + EXTENSO.Texto + ' ) ',81,40) ;

          IMPRESSORA.impf(17, 01, STR1, [comp17]);

          LINHA := 18 ;

          IF TRIM( STR2 ) <> ''
          THEN BEGIN
               IMPRESSORA.impf(LINHA, 01, STR2, [comp17]);

               LINHA := LINHA + 1;
          END;

          IF TRIM( STR3 ) <> ''
          THEN BEGIN
               IMPRESSORA.impf(LINHA, 01, STR3, [comp17]);

               LINHA := LINHA + 1;
          END;

          STR  := COPY ('PROVENIENTE DE : ' + DOCTO + '  ' + HISTORICO,01,40);
          STR1 := COPY ('PROVENIENTE DE : ' + DOCTO + '  ' + HISTORICO,41,40);
          STR2 := COPY ('PROVENIENTE DE : ' + DOCTO + '  ' + HISTORICO,81,40);

          IMPRESSORA.impf(LINHA, 01, STR , [comp17]);

          LINHA := LINHA + 1;

          IF TRIM( STR1 ) <> ''
          THEN BEGIN
               IMPRESSORA.impf(LINHA, 01, STR1, [comp17]);

               LINHA := LINHA + 1;
          END;

          IF TRIM( STR2 ) <> ''
          THEN BEGIN
               IMPRESSORA.impf(LINHA, 01, STR2, [comp17]);

               LINHA := LINHA + 1;
          END;

          STR  := COPY(DMAPP.CIDADE + ', ' + INTTOSTR(DIA) + ' DE ' + MESEXT + ' DE ' + INTTOSTR(ANO),01,40);
          STR1 := COPY(DMAPP.CIDADE + ', ' + INTTOSTR(DIA) + ' DE ' + MESEXT + ' DE ' + INTTOSTR(ANO),41,40);
          STR2 := COPY(DMAPP.CIDADE + ', ' + INTTOSTR(DIA) + ' DE ' + MESEXT + ' DE ' + INTTOSTR(ANO),81,40);

          LINHA := LINHA + 1;
          LINHA := LINHA + 1;
          LINHA := LINHA + 1;

          //lancamento
          IMPRESSORA.impf(LINHA,01, STR ,[comp17]);

          LINHA := LINHA + 1;

          IF TRIM( STR1 ) <> ''
          THEN BEGIN
               IMPRESSORA.impf(LINHA, 01, STR1, [comp17]);

               LINHA := LINHA + 1;
          END;

          IF TRIM( STR2 ) <> ''
          THEN BEGIN
               IMPRESSORA.impf(LINHA, 01, STR2, [comp17]);

               LINHA := LINHA + 1;
          END;

          LINHA := LINHA + 1;
          LINHA := LINHA + 1;
          LINHA := LINHA + 1;
          LINHA := LINHA + 1;

          IMPRESSORA.impf(LINHA,01,'----------------------------------------' ,[comp17]);

          LINHA := LINHA + 1;

          Str := dmapp.nome ;

          IMPRESSORA.impf(LINHA,01, Str,[comp17]);

          LINHA := LINHA + 1;

          IMPRESSORA.impf(LINHA,01, MascaraCnpj(dmapp.cnpj),[comp17]);

          IMPRESSORA.FECHAR;

          IMPRESSORA.OnBeforeNewPage := ImpressoraBeforeNewPage ;

          IMPRESSORA.TamanhoQteLinhas := 66 ;
     END
     ELSE BEGIN
          DECODEDATE ( DT_LANCTO, ANO, MES, DIA );

          MESEXT := UPPERCASE(MESEXTENSO(MES));

          IMPRESSORA.OnBeforeNewPage := Nil ;

          IMPRESSORA.TamanhoQteLinhas := 33 ;

          If (DmApp.PORTA_PRAZO) <> ''
          then begin
               SetDefaultPrinter( DmApp.PORTA_PRAZO ) ;
               IMPRESSORA.SetPrinterbyPorta ( DmApp.PORTA_PRAZO );
               IMPRESSORA.PortaComunicacao := DmApp.PORTA_PRAZO ;
          end;
          qEndFornecedor.Close;
          qEndFornecedor.ParamByName('codigo').Value := Pessoa_Fj;
          qEndFornecedor.Open;

          IMPRESSORA.OpcoesPreview.Preview := TRUE ;

          IMPRESSORA.ABRIR;

          IMPRESSORA.impf(03,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

          IMPRESSORA.impf(04,01,Empresa ,[COMP12, NEGRITO]);

          IMPRESSORA.impf(05,01,qEndFornecedorCONCATENATION.Value + ', BAIRRO = ' + qEndFornecedorBAIRRO.Value ,[COMP17, NEGRITO]);

          IMPRESSORA.impf(06,01,qEndFornecedorCIDADE.Value + '/' + qEndFornecedorUF.Value,[COMP17, NEGRITO]);

          IMPRESSORA.impf(08, 01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

          IMPRESSORA.impf(10, 01,'RECIBO N => ' + STR, [comp12, NEGRITO]);

          IMPRESSORA.impf(12, 01,'RECIBI(EMOS) DE  ' + FAVORECIDO  , [comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', VALOR );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          EXTENSO.Valor := VALOR ;
          STR := 'R$ ' + STR + ' ( ' + EXTENSO.Texto + ' ) ' ;

          IMPRESSORA.impf(14, 01,'A IMPORTANCIA DE ' + STR, [comp17]);

          IMPRESSORA.impf(16, 01, 'PROVENIENTE DE : ' + DOCTO + '  ' + HISTORICO , [comp17]);

          //lancamento
          IMPRESSORA.impf(19,01,DMAPP.CIDADE + ', ' + INTTOSTR(DIA) + ' DE ' + MESEXT + ' DE ' + INTTOSTR(ANO) ,[comp17]);

          Str := Empresa ;

          While Length(Str) < 42
          do begin
             Str := ' ' + Str + ' ' ;
          end;

          IMPRESSORA.impf(21,30, Str,[comp17]);

          IMPRESSORA.impf(22,38, dmApp.Ver_Cpf_Cnpj(Pessoa_Fj),[comp17]);

          IMPRESSORA.impf(24,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

          IMPRESSORA.FECHAR;

          IMPRESSORA.OnBeforeNewPage := ImpressoraBeforeNewPage ;

          IMPRESSORA.TamanhoQteLinhas := 66 ;

          IMPRESSORA.NumerodeCopias := 1 ;
     END;
end;

procedure TdmRelatorios2.ImpressoraBeforeNewPage(Sender: TObject;
  Pagina: Integer);
begin
       // Rodapé...
     IMPRESSORA.impf(63,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(64,01,dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
      
end;

procedure TdmRelatorios2.qEndFornecedorBeforeOpen(DataSet: TDataSet);
begin
  qEndFornecedor.ParamByName('cnpj').Value := DMApp.Cnpj;
end;

procedure TdmRelatorios2.qryRelVendasGrupoCalcFields(DataSet: TDataSet);
begin
  qryRelVendasGrupo_Lucro.value := qryRelVendasGrupoVLR_VENDA.value - qryRelVendasGrupoVLR_CUSTO.value;
  if qryRelVendasGrupoVLR_CUSTO.asfloat  > 0 then
  begin
    qryRelVendasGrupo_Margen.value := ((qryRelVendasGrupoVLR_CUSTO.asfloat/qryRelVendasGrupoVlr_VENDA.value)-1)*100;
    qryRelVendasGrupo_Margen.value := (qryRelVendasGrupo_Margen.value * -1);
  end;
end;

procedure TdmRelatorios2.QryReciboCalcFields(DataSet: TDataSet);
begin
  EXTENSO.Valor := QryReciboVLR_BAIXA.asFloat ;
  QryRecibo_ValorExtenso.value := ' ( '+EXTENSO.Texto+' ) ';
end;

procedure TdmRelatorios2.qryRelVDRecBeforeOpen(DataSet: TDataSet);
begin
  qryRelVDRec.parambyname('cnpj').value := dmapp.cnpj;
end;

end.
