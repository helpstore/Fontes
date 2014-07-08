 unit Relatorios_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Db, IBCustomDataSet, IBQuery, RDprint;

type
  TDMRelatorios = class(TDataModule)
    SelProdutos: TIBQuery;
    SelProdutosCODIGO: TIBStringField;
    SelProdutosNOME: TIBStringField;
    ListaPrecos: TIBQuery;
    SelGrupo: TIBQuery;
    SelGrupoCODIGO: TIntegerField;
    SelGrupoNOME: TIBStringField;
    ListaPrecosAZ: TIBQuery;
    ListaPrecosAZCODIGO: TIBStringField;
    ListaPrecosAZNOME: TIBStringField;
    ListaPrecosAZUNIDADE: TIBStringField;
    ListaPrecosAZPRC_VENDA: TFloatField;
    ListaSimp: TIBQuery;
    ListaSimpCODIGO_G: TIntegerField;
    ListaSimpNOME_GRUPO: TIBStringField;
    ListaSimpSUBGRUPO: TIntegerField;
    ListaSimpNOME_SUBGRUPO: TIBStringField;
    ListaSimpCODIGO_P: TIBStringField;
    ListaSimpNOME_PRODUTO: TIBStringField;
    ListaSimpQTDADE_2: TFloatField;
    PosicaoEstoque: TIBQuery;
    PosicaoEstoquePRC_CUSTO_TOTAL: TFloatField;
    PosicaoEstoquePRC_VENDA_TOTAL: TFloatField;
    PosicaoEstoqueMARGEM: TFloatField;
    FisicaFinan: TIBQuery;
    Entradas: TIBQuery;
    EntradasItens: TIBQuery;
    EntradasFat: TIBQuery;
    dsEntradas: TDataSource;
    EntradasFatPARCELA: TIBStringField;
    EntradasFatDT_VENCTO: TDateTimeField;
    EntradasFatVALOR: TFloatField;
    EntradasItensPRODUTO: TIBStringField;
    EntradasItensNOME_PRODUTO: TIBStringField;
    EntradasItensQUANTIDADE: TFloatField;
    EntradasItensPRC_UNITARIO: TFloatField;
    EntradasItensIPI: TFloatField;
    EntradasItensIPI_UNITARIO: TFloatField;
    EntradasItensIPI_TOTAL: TFloatField;
    EntradasItensCUSTO_TOTAL: TFloatField;
    SelFornecedor: TIBQuery;
    SelFornecedorPESSOA_FJ: TIntegerField;
    SelFornecedorNOME_RAZAO: TIBStringField;
    EntradasNDOCTO: TIBStringField;
    EntradasPESSOA_FJ: TIntegerField;
    EntradasNOME_RAZAO: TIBStringField;
    EntradasDATA_NF: TDateTimeField;
    EntradasDATA_REF: TDateTimeField;
    EntradasDATA_ENT: TDateTimeField;
    EntradasSERIE_NF: TIBStringField;
    EntradasTAXAS: TFloatField;
    EntradasVLR_EMBALAGEM: TFloatField;
    EntradasVLR_FRETE: TFloatField;
    EntradasVLR_DESCONTO: TFloatField;
    EntradasVLR_SEGURO: TFloatField;
    EntradasVLR_BC_ICM: TFloatField;
    EntradasVLR_ICM: TFloatField;
    EntradasVLR_ICM_SUBS: TFloatField;
    EntradasPERC_ICM: TFloatField;
    EntradasItensPRC_VENDA: TFloatField;
    EntradasItensPERC_DIF: TFloatField;
    FornecedoresAlf: TIBQuery;
    FornecedoresAlfCNPJ: TIBStringField;
    FornecedoresAlfPESSOA_FJ: TIntegerField;
    FornecedoresAlfNOME_RAZAO: TIBStringField;
    FornecedoresAlfENDERECO: TIBStringField;
    FornecedoresAlfNUMERO: TIBStringField;
    FornecedoresAlfCOMPLEMENTO: TIBStringField;
    FornecedoresAlfBAIRRO: TIBStringField;
    FornecedoresAlfCIDADE: TIBStringField;
    FornecedoresAlfCEP: TIBStringField;
    FornecedoresAlfCPF_CGC: TIBStringField;
    FornecedoresAlfRG_IE: TIBStringField;
    FornecedoresAlfFONE: TIBStringField;
    FornecedoresAlfFAX: TIBStringField;
    FornecedoresAlfCELULAR: TIBStringField;
    FornecedoresAlfEMAIL: TIBStringField;
    ProdutosFornecedor: TIBQuery;
    ProdutosFornecedorCODIGO: TIBStringField;
    ProdutosFornecedorNOME: TIBStringField;
    ProdutosFornecedorQTDADE_2: TFloatField;
    ProdutosFornecedorDT_ULT_COMPRA: TDateTimeField;
    ProdutosFornecedorQT_ULT_COMPRA: TIntegerField;
    ProdutosFornecedorPRC_REPOS: TFloatField;
    ProdutosFornecedorPRC_VENDA: TFloatField;
    ListaUnid: TIBQuery;
    ListaUnidCODIGO_G: TIntegerField;
    ListaUnidNOME_GRUPO: TIBStringField;
    ListaUnidSUBGRUPO: TIntegerField;
    ListaUnidNOME_SUBGRUPO: TIBStringField;
    ListaUnidUNIDADE: TIBStringField;
    ListaUnidSUBUNIDADE: TIntegerField;
    SelVendedor2: TIBQuery;
    SelCliente: TIBQuery;
    SelClassif: TIBQuery;
    SelClienteCNPJ: TIBStringField;
    SelClientePESSOA_FJ: TIntegerField;
    SelClienteNOME_RAZAO: TIBStringField;
    SelClassifCNPJ: TIBStringField;
    SelClassifCODIGO: TIntegerField;
    SelClassifNOME: TIBStringField;
    EntradasItensDESCONTOS: TFloatField;
    EntradasItensFRETE: TFloatField;
    EntradasItensCustoUnitario: TFloatField;
    Fat_VendasVend: TIBQuery;
    Fat_VendasVendCODIGO: TIntegerField;
    Fat_VendasVendFECHADA: TIBStringField;
    Fat_VendasVendHISTORICO: TIBStringField;
    Fat_VendasVendPESSOA_FJ: TIntegerField;
    Fat_VendasVendPESSOA_RAZAO: TIBStringField;
    Fat_VendasVendUSUARIO: TIntegerField;
    Fat_VendasVendNATUREZA: TIntegerField;
    Fat_VendasVendNOME_NATUREZA: TIBStringField;
    Fat_VendasVendENVIADA_CX: TIBStringField;
    Fat_VendasVendFORMA_PGTO: TIntegerField;
    Fat_VendasVendNUM_NF: TIntegerField;
    Fat_VendasVendNUM_CUPOM: TIntegerField;
    Fat_VendasVendPROPRIEDADE: TIntegerField;
    Fat_VendasVendCONVENIADO: TIntegerField;
    Fat_VendasVendTIPO_DOCTO: TIBStringField;
    Fat_VendasVendLOCAL_COBRANCA: TIntegerField;
    Fat_VendasVendDESC_ACRES: TIBBCDField;
    Fat_VendasVendENTRADA: TIBBCDField;
    Fat_VendasVendDINHEIRO: TIBBCDField;
    Fat_VendasVendCHEQUE: TIBBCDField;
    Fat_VendasVendCARTAO: TIBBCDField;
    Fat_VendasVendTICKET: TIBBCDField;
    Fat_VendasVendTOTAL: TIBBCDField;
    Fat_VendasVendVLR_PARC_LC: TIBBCDField;
    Fat_VendasVendTERCEIRO: TIntegerField;
    Fat_VendasVendCARGA: TIntegerField;
    Fat_VendasVendVOLUME: TIBBCDField;
    Fat_VendasVendPESO: TIBBCDField;
    Fat_VendasVendREQUISICAO: TIBStringField;
    Fat_VendasVendDESCRICAO: TBlobField;
    Fat_VendasVendTIPO_VENDA: TIBStringField;
    Fat_VendasVendNOME_CONSUMIDOR: TIBStringField;
    Fat_VendasVendORCAMENTO: TIntegerField;
    Fat_VendasVendVLRLIQUIDO: TIBBCDField;
    Fat_VendasVendVENDEDO: TIntegerField;
    Fat_VendasVendNOME_VENDEDOR: TIBStringField;
    Fat_VendasItens: TIBQuery;
    Fat_VendasItensPRODUTO: TIBStringField;
    Fat_VendasItensSEQUENCIA: TSmallintField;
    Fat_VendasItensQUANTIDADE: TIBBCDField;
    Fat_VendasItensNOME: TIBStringField;
    Fat_VendasItensPRC_UNITARIO: TIBBCDField;
    Fat_VendasItensPRC_CUSTO: TIBBCDField;
    Fat_VendasItensICM: TIBBCDField;
    Fat_VendasItensICM_SUBS: TIBBCDField;
    Fat_VendasItensIPI: TIBBCDField;
    Fat_VendasItensVOLUME: TIBBCDField;
    Fat_VendasItensPESO: TIBBCDField;
    Fat_VendasItensDESCONTO: TIBBCDField;
    Fat_VendasItensPORC_DESC: TIBBCDField;
    Fat_VendasItensUNIDADE: TIBStringField;
    Fat_VendasItensPRC_UNIT_ORIGINAL: TIBBCDField;
    Fat_VendasItensNOME_PRODUTO: TIBStringField;
    Fat_VendasItensALIQUOTA: TIBStringField;
    Fat_VendasItensPRODUTOFIS: TIBStringField;
    Fat_VendasItensNOME_FIS: TIBStringField;
    Fat_VendasItensCTE: TIntegerField;
    Fat_VendasItensCTIE: TIntegerField;
    Fat_VendasItensORIGEM: TIntegerField;
    Fat_VendasItensREDUCAO: TIntegerField;
    Fat_VendasItensSUBUNIDADE: TIntegerField;
    Fat_VendasCli: TIBQuery;
    Fat_VendasCliCODIGO: TIntegerField;
    Fat_VendasCliDATA: TDateTimeField;
    Fat_VendasCliFECHADA: TIBStringField;
    Fat_VendasCliHISTORICO: TIBStringField;
    Fat_VendasCliPESSOA_FJ: TIntegerField;
    Fat_VendasCliPESSOA_RAZAO: TIBStringField;
    Fat_VendasCliUSUARIO: TIntegerField;
    Fat_VendasCliNATUREZA: TIntegerField;
    Fat_VendasCliNOME_NATUREZA: TIBStringField;
    Fat_VendasCliENVIADA_CX: TIBStringField;
    Fat_VendasCliFORMA_PGTO: TIntegerField;
    Fat_VendasCliNUM_NF: TIntegerField;
    Fat_VendasCliNUM_CUPOM: TIntegerField;
    Fat_VendasCliPROPRIEDADE: TIntegerField;
    Fat_VendasCliCONVENIADO: TIntegerField;
    Fat_VendasCliTIPO_DOCTO: TIBStringField;
    Fat_VendasCliLOCAL_COBRANCA: TIntegerField;
    Fat_VendasCliDESC_ACRES: TIBBCDField;
    Fat_VendasCliENTRADA: TIBBCDField;
    Fat_VendasCliDINHEIRO: TIBBCDField;
    Fat_VendasCliCHEQUE: TIBBCDField;
    Fat_VendasCliCARTAO: TIBBCDField;
    Fat_VendasCliTICKET: TIBBCDField;
    Fat_VendasCliTOTAL: TIBBCDField;
    Fat_VendasCliVLRLIQUIDO: TIBBCDField;
    Fat_VendasCliOBSERVACAO: TIBStringField;
    Fat_VendasCliVLR_PARC_LC: TIBBCDField;
    Fat_VendasCliTERCEIRO: TIntegerField;
    Fat_VendasCliCARGA: TIntegerField;
    Fat_VendasCliVOLUME: TIBBCDField;
    Fat_VendasCliPESO: TIBBCDField;
    Fat_VendasCliREQUISICAO: TIBStringField;
    Fat_VendasCliDESCRICAO: TBlobField;
    Fat_VendasCliTIPO_VENDA: TIBStringField;
    Fat_VendasCliNOME_CONSUMIDOR: TIBStringField;
    Fat_VendasCliORCAMENTO: TIntegerField;
    Fat_VendasCliVENDEDO: TIntegerField;
    Fat_VendasCliNOME_VENDEDOR: TIBStringField;
    Fat_GraficoVendas: TIBQuery;
    Fat_GraficoVendasVENDEDO: TIntegerField;
    Fat_GraficoVendasNOME_VENDEDOR: TIBStringField;
    Fat_GraficoVendasVALOR: TIBBCDField;
    Fat_GraficoVendasPERCT_VENDA: TIBBCDField;
    Fat_VendasPorProduto: TIBQuery;
    Fat_VendasPorProdutoCODIGO: TIntegerField;
    Fat_VendasPorProdutoDATA: TDateTimeField;
    Fat_VendasPorProdutoPRODUTO: TIBStringField;
    Fat_VendasPorProdutoGRUPO: TIntegerField;
    Fat_VendasPorProdutoSEQUENCIA: TSmallintField;
    Fat_VendasPorProdutoQUANTIDADE: TIBBCDField;
    Fat_VendasPorProdutoPRC_UNITARIO: TIBBCDField;
    Fat_VendasPorProdutoPRC_CUSTO: TIBBCDField;
    Fat_VendasPorProdutoICM: TIBBCDField;
    Fat_VendasPorProdutoICM_SUBS: TIBBCDField;
    Fat_VendasPorProdutoIPI: TIBBCDField;
    Fat_VendasPorProdutoVOLUME: TIBBCDField;
    Fat_VendasPorProdutoPESO: TIBBCDField;
    Fat_VendasPorProdutoDESCONTO: TIBBCDField;
    Fat_VendasPorProdutoPORC_DESC: TIBBCDField;
    Fat_VendasPorProdutoUNIDADE: TIBStringField;
    Fat_VendasPorProdutoPRC_UNIT_ORIGINAL: TIBBCDField;
    Fat_VendasPorProdutoNOME_PRODUTO: TIBStringField;
    Fat_VendasPorProdutoALIQUOTA: TIBStringField;
    Fat_VendasPorProdutoPRODUTOFIS: TIBStringField;
    Fat_VendasPorProdutoNOME_FIS: TIBStringField;
    Fat_VendasPorProdutoCTE: TIntegerField;
    Fat_VendasPorProdutoCTIE: TIntegerField;
    Fat_VendasPorProdutoORIGEM: TIntegerField;
    Fat_VendasPorProdutoREDUCAO: TIntegerField;
    Fat_VendasPorProdutoSUBUNIDADE: TIntegerField;
    Fat_VendasPorProdutoPESSOA_FJ: TIntegerField;
    Fat_VendasPorProdutoPESSOA_RAZAO: TIBStringField;
    Fat_VendasPorProdutoNATUREZA: TIntegerField;
    Fat_VendasPorProdutoNOME_NATUREZA: TIBStringField;
    Fat_VendasPorProdutoNF: TIntegerField;
    Fat_VendasPorProdutoVENDEDOR: TIntegerField;
    Fat_VendasPorProdutoNOME_VENDEDOR: TIBStringField;
    Fat_VendasPorProdutoVALOR: TIBBCDField;
    Fat_Grafico_GrupoProd: TIBQuery;
    Fat_Grafico_GrupoProdGRUPO: TIntegerField;
    Fat_Grafico_GrupoProdNOME_GRUPO: TIBStringField;
    Fat_Grafico_GrupoProdVALOR: TIBBCDField;
    ProdFaltaExcesso: TIBQuery;
    ProdFaltaExcessoCODIGO: TIBStringField;
    ProdFaltaExcessoCODIGO_2: TIBStringField;
    ProdFaltaExcessoCNPJ_AGRUP: TIBStringField;
    ProdFaltaExcessoCOD_AGRUP: TIBStringField;
    ProdFaltaExcessoNOME: TIBStringField;
    ProdFaltaExcessoMARCA: TIntegerField;
    ProdFaltaExcessoGRUPO: TIntegerField;
    ProdFaltaExcessoSUBGRUPO: TIntegerField;
    ProdFaltaExcessoREDUCAO: TIntegerField;
    ProdFaltaExcessoUNIDADE: TIBStringField;
    ProdFaltaExcessoCTE: TSmallintField;
    ProdFaltaExcessoCTIE: TSmallintField;
    ProdFaltaExcessoQTDADE_1: TIBBCDField;
    ProdFaltaExcessoQTDADE_2: TIBBCDField;
    ProdFaltaExcessoLOCALIZACAO_1: TIBStringField;
    ProdFaltaExcessoLOCALIZACAO_2: TIBStringField;
    ProdFaltaExcessoLOCALIZACAO_3: TIBStringField;
    ProdFaltaExcessoNEG_QTDADE_2: TIBStringField;
    ProdFaltaExcessoQTDADE_MIN: TIntegerField;
    ProdFaltaExcessoQTDADE_MAX: TIntegerField;
    ProdFaltaExcessoCOMPLEMENTO_NF: TIBStringField;
    ProdFaltaExcessoDT_ULT_COMPRA: TDateTimeField;
    ProdFaltaExcessoQT_ULT_COMPRA: TIntegerField;
    ProdFaltaExcessoDT_ULT_VENDA: TDateTimeField;
    ProdFaltaExcessoMARGEM_BRUTA: TIBBCDField;
    ProdFaltaExcessoPRC_REPOS: TIBBCDField;
    ProdFaltaExcessoPRC_CUSTO_ANT: TIBBCDField;
    ProdFaltaExcessoPRC_CUSTO_MED: TIBBCDField;
    ProdFaltaExcessoPRC_VENDA: TIBBCDField;
    ProdFaltaExcessoPRC_VENDA_ANT: TIBBCDField;
    ProdFaltaExcessoPRC_VENDA_MED: TIBBCDField;
    ProdFaltaExcessoALIQUOTA_ECF: TIBStringField;
    ProdFaltaExcessoORIGEM: TSmallintField;
    ProdFaltaExcessoPESO_LIQ: TIBBCDField;
    ProdFaltaExcessoPERC_FRETE: TIBBCDField;
    ProdFaltaExcessoIPI: TIBBCDField;
    ProdFaltaExcessoVOLUME: TIBBCDField;
    ProdFaltaExcessoPROD_PESAVEL: TIBStringField;
    ProdFaltaExcessoETIQUETA_ENT: TIBStringField;
    ProdFaltaExcessoATIVO: TIBStringField;
    ProdFaltaExcessoULTIMO_FORNECEDOR: TIntegerField;
    ProdFaltaExcessoFORNECEDOR: TIntegerField;
    ProdFaltaExcessoSUBUNIDADE: TIntegerField;
    ProdFaltaExcessoNOME_MARCA: TIBStringField;
    ProdFaltaExcessoNOME_GRUPO: TIBStringField;
    ProdFaltaExcessoNOME_SUBGRUPO: TIBStringField;
    Fat_VendasNatu: TIBQuery;
    Fat_VendasNatuCODIGO: TIntegerField;
    Fat_VendasNatuDATA: TDateTimeField;
    Fat_VendasNatuFECHADA: TIBStringField;
    Fat_VendasNatuHISTORICO: TIBStringField;
    Fat_VendasNatuPESSOA_FJ: TIntegerField;
    Fat_VendasNatuPESSOA_RAZAO: TIBStringField;
    Fat_VendasNatuUSUARIO: TIntegerField;
    Fat_VendasNatuNATUREZA: TIntegerField;
    Fat_VendasNatuNOME_NATUREZA: TIBStringField;
    Fat_VendasNatuENVIADA_CX: TIBStringField;
    Fat_VendasNatuFORMA_PGTO: TIntegerField;
    Fat_VendasNatuNUM_NF: TIntegerField;
    Fat_VendasNatuNUM_CUPOM: TIntegerField;
    Fat_VendasNatuPROPRIEDADE: TIntegerField;
    Fat_VendasNatuCONVENIADO: TIntegerField;
    Fat_VendasNatuTIPO_DOCTO: TIBStringField;
    Fat_VendasNatuLOCAL_COBRANCA: TIntegerField;
    Fat_VendasNatuDESC_ACRES: TIBBCDField;
    Fat_VendasNatuENTRADA: TIBBCDField;
    Fat_VendasNatuDINHEIRO: TIBBCDField;
    Fat_VendasNatuCHEQUE: TIBBCDField;
    Fat_VendasNatuCARTAO: TIBBCDField;
    Fat_VendasNatuTICKET: TIBBCDField;
    Fat_VendasNatuTOTAL: TIBBCDField;
    Fat_VendasNatuVLRLIQUIDO: TIBBCDField;
    Fat_VendasNatuOBSERVACAO: TIBStringField;
    Fat_VendasNatuVLR_PARC_LC: TIBBCDField;
    Fat_VendasNatuTERCEIRO: TIntegerField;
    Fat_VendasNatuCARGA: TIntegerField;
    Fat_VendasNatuVOLUME: TIBBCDField;
    Fat_VendasNatuPESO: TIBBCDField;
    Fat_VendasNatuREQUISICAO: TIBStringField;
    Fat_VendasNatuDESCRICAO: TBlobField;
    Fat_VendasNatuTIPO_VENDA: TIBStringField;
    Fat_VendasNatuNOME_CONSUMIDOR: TIBStringField;
    Fat_VendasNatuORCAMENTO: TIntegerField;
    Fat_VendasNatuVENDEDO: TIntegerField;
    Fat_VendasNatuNOME_VENDEDOR: TIBStringField;
    SelNatureza: TIBQuery;
    SelNaturezaCODIGO: TIntegerField;
    SelNaturezaNOME: TIBStringField;
    SelNaturezaCNPJ: TIBStringField;
    SelNaturezaINTERESTADUAL: TIBStringField;
    VariacoesPreco: TIBQuery;
    VariacoesPrecoCODIGO: TIntegerField;
    VariacoesPrecoDESCONTO: TIBBCDField;
    VariacoesPrecoICM: TIBBCDField;
    VariacoesPrecoICM_SUBS: TIBBCDField;
    VariacoesPrecoIPI: TIBBCDField;
    VariacoesPrecoPESO: TIBBCDField;
    VariacoesPrecoPORC_DESC: TIBBCDField;
    VariacoesPrecoPRC_CUSTO: TIBBCDField;
    VariacoesPrecoPRC_UNIT_ORIGINAL: TIBBCDField;
    VariacoesPrecoPRC_UNITARIO: TIBBCDField;
    VariacoesPrecoPRODUTO: TIBStringField;
    VariacoesPrecoGRUPO: TIntegerField;
    VariacoesPrecoPRODUTOFIS: TIBStringField;
    VariacoesPrecoQUANTIDADE: TIBBCDField;
    VariacoesPrecoSEQUENCIA: TIntegerField;
    VariacoesPrecoUNIDADE: TIBStringField;
    VariacoesPrecoSUBUNIDADE: TIntegerField;
    VariacoesPrecoVOLUME: TIBBCDField;
    VariacoesPrecoNOME_PRODUTO: TIBStringField;
    VariacoesPrecoNOME_FIS: TIBStringField;
    VariacoesPrecoALIQUOTA: TIBStringField;
    VariacoesPrecoORIGEM: TIntegerField;
    VariacoesPrecoCTE: TIntegerField;
    VariacoesPrecoCTIE: TIntegerField;
    VariacoesPrecoREDUCAO: TIntegerField;
    VariacoesPrecoDATA: TDateField;
    VariacoesPrecoVENDEDOR: TIntegerField;
    VariacoesPrecoNOME_VENDEDOR: TIBStringField;
    VariacoesPrecoVARIACAO: TIBBCDField;
    EntradasNATUREZA: TIntegerField;
    EntradasVLR_IPI: TFloatField;
    SelVeiculos: TIBQuery;
    SelVeiculosCODIGO: TIntegerField;
    SelVeiculosPESSOA_FJ: TIntegerField;
    SelVeiculosTIPO_VEICULO: TIntegerField;
    SelVeiculosNOME_TIPO: TIBStringField;
    SelVeiculosMARCA_VEICULO: TIntegerField;
    SelVeiculosNOME_MARCA: TIBStringField;
    SelVeiculosMODELO: TIBStringField;
    SelVeiculosNOME: TIBStringField;
    PosicaoEstoqueCODIGO: TIBStringField;
    PosicaoEstoqueNOME: TIBStringField;
    PosicaoEstoqueUNIDADE: TIBStringField;
    PosicaoEstoqueNOME_GRUPO: TIBStringField;
    PosicaoEstoqueCODIGO_G: TIntegerField;
    PosicaoEstoqueSUBGRUPO: TIntegerField;
    PosicaoEstoqueNOME_SUBGRUPO: TIBStringField;
    PosicaoEstoqueSUBUNIDADE: TIntegerField;
    PosicaoEstoqueQTDADE_2: TIBBCDField;
    PosicaoEstoquePRC_REPOS: TIBBCDField;
    PosicaoEstoquePRC_CUSTO_MED: TIBBCDField;
    PosicaoEstoquePRC_VENDA: TIBBCDField;
    ListaPrecosCODIGO: TIBStringField;
    ListaPrecosNOME: TIBStringField;
    ListaPrecosUNIDADE: TIBStringField;
    ListaPrecosNOME_GRUPO: TIBStringField;
    ListaPrecosCODIGO_G: TIntegerField;
    ListaPrecosSUBGRUPO: TIntegerField;
    ListaPrecosNOME_SUBGRUPO: TIBStringField;
    ListaPrecosSUBUNIDADE: TIntegerField;
    ListaPrecosQTDADE_2: TIBBCDField;
    ListaPrecosPRC_REPOS: TIBBCDField;
    ListaPrecosPRC_CUSTO_MED: TIBBCDField;
    ListaPrecosPRC_VENDA: TIBBCDField;
    FisicaFinanNOME_GRUP0: TIBStringField;
    FisicaFinanNOME_SUBGRUPO: TIBStringField;
    FisicaFinanQTDADE: TIBBCDField;
    FisicaFinanT_REPOS: TIBBCDField;
    FisicaFinanT_CUSTO_MED: TIBBCDField;
    FisicaFinanT_VENDA: TIBBCDField;
    FisicaFinanMargem: TFloatField;
    Produtos_Marca: TIBQuery;
    Produtos_MarcaCODIGO: TIBStringField;
    Produtos_MarcaNOME: TIBStringField;
    Produtos_MarcaUNIDADE: TIBStringField;
    Produtos_MarcaNOME_MARCA: TIBStringField;
    Produtos_MarcaCODIGO_M: TIntegerField;
    Produtos_MarcaSUBUNIDADE: TIntegerField;
    Produtos_MarcaQTDADE_2: TIBBCDField;
    Produtos_MarcaPRC_REPOS: TIBBCDField;
    Produtos_MarcaPRC_CUSTO_MED: TIBBCDField;
    Produtos_MarcaPRC_VENDA: TIBBCDField;
    SelMarca: TIBQuery;
    SelMarcaCNPJ: TIBStringField;
    SelMarcaCODIGO: TIntegerField;
    SelMarcaNOME: TIBStringField;
    Produtos_MarcaPRC_CUSTO_TOTAL: TFloatField;
    Produtos_MarcaPRC_VENDA_TOTAL: TFloatField;
    Produtos_MarcaMARGEM: TFloatField;
    ListaUnidCODIGO: TIBStringField;
    ListaUnidNOME: TIBStringField;
    ListaUnidQTDADE_2: TIBBCDField;
    ListaUnidPRC_REPOS: TIBBCDField;
    ListaUnidPRC_CUSTO_MED: TIBBCDField;
    ListaUnidPRC_VENDA: TIBBCDField;
    ListaUnidPRC_UNIT: TFloatField;
    ListaUnidPRC_VENDA_VIS: TFloatField;
    ListaUnidPRC_UNIT_VIS: TFloatField;
    Produtos_MarcaCODIGO_INTERNO: TIntegerField;
    Produtos_MarcaCUSTO_AQUISICAO: TIBBCDField;
    PosicaoEstoqueCODIGO_INTERNO: TIntegerField;
    PosicaoEstoqueCUSTO_AQUISICAO: TIBBCDField;
    EntradasNDOCTOINT: TIntegerField;
    Faturas: TIBQuery;
    FaturasCODIGO: TIntegerField;
    FaturasPESSOA_FJ: TIntegerField;
    FaturasVALOR: TIBBCDField;
    FaturasDESCONTO: TIBBCDField;
    FaturasJUROS: TIBBCDField;
    FaturasHISTORICO: TIBStringField;
    FaturasNOME: TIBStringField;
    FaturasENDERECO: TIBStringField;
    FaturasNUMERO: TIBStringField;
    FaturasCIDADE: TIBStringField;
    FaturasBAIRRO: TIBStringField;
    FaturasCEP: TIBStringField;
    FaturasUF: TIBStringField;
    FaturasFONE: TIBStringField;
    FaturasBANCO: TIBStringField;
    FaturasENVIADA: TIBStringField;
    FaturasTIPO: TIBStringField;
    FaturasCPF_CGC: TIBStringField;
    SelRota: TIBQuery;
    SelRotaCNPJ: TIBStringField;
    SelRotaCODIGO: TIntegerField;
    SelRotaNOME: TIBStringField;
    SelRotaVENDEDOR: TIntegerField;
    Notas_Fatura: TIBQuery;
    Notas_FaturaCODIGO: TIntegerField;
    Notas_FaturaANO: TSmallintField;
    Notas_FaturaPESSOA_FJ: TIntegerField;
    Notas_FaturaDOCTO: TIBStringField;
    Notas_FaturaPARCELA: TIBStringField;
    Notas_FaturaHISTORICO: TIBStringField;
    Notas_FaturaVALOR: TIBBCDField;
    Notas_FaturaVLR_PARCIAL: TIBBCDField;
    Notas_FaturaJUROS_REC: TIBBCDField;
    Notas_FaturaDESCONTOS: TIBBCDField;
    Notas_FaturaBOLETO: TIBStringField;
    Notas_FaturaORIGEM: TIBStringField;
    Notas_FaturaCODIGO_VN: TIntegerField;
    Notas_FaturaANO_VN: TSmallintField;
    Notas_FaturaAVISO: TSmallintField;
    Notas_FaturaSELECIONADO: TIBStringField;
    Notas_FaturaTIPO_DOCTO: TIBStringField;
    Notas_FaturaNUMDUPLICATA: TIntegerField;
    Notas_FaturaFATURA: TIntegerField;
    Notas_FaturaNUMBOLETO: TIntegerField;
    Notas_FaturaTOTAL: TFloatField;
    Ver_Fat_Vendas_Maiores: TIBQuery;
    Ver_Fat_Vendas_MaioresPESSOA_FJ: TIntegerField;
    Ver_Fat_Vendas_MaioresNOME: TIBStringField;
    Ver_Fat_Vendas_MaioresDESC_ACRES: TIBBCDField;
    Ver_Fat_Vendas_MaioresENTRADA: TIBBCDField;
    Ver_Fat_Vendas_MaioresDINHEIRO: TIBBCDField;
    Ver_Fat_Vendas_MaioresCHEQUE: TIBBCDField;
    Ver_Fat_Vendas_MaioresCARTAO: TIBBCDField;
    Ver_Fat_Vendas_MaioresTICKET: TIBBCDField;
    Ver_Fat_Vendas_MaioresTOTAL: TIBBCDField;
    Ver_Fat_Vendas_MaioresVLRLIQUIDO: TIBBCDField;
    Fat_Vendas_Comissoes: TIBQuery;
    Fat_Vendas_ComissoesPRODUTO: TIBStringField;
    Fat_Vendas_ComissoesSEQUENCIA: TSmallintField;
    Fat_Vendas_ComissoesQUANTIDADE: TIBBCDField;
    Fat_Vendas_ComissoesNOME: TIBStringField;
    Fat_Vendas_ComissoesPRC_UNITARIO: TIBBCDField;
    Fat_Vendas_ComissoesPRC_CUSTO: TIBBCDField;
    Fat_Vendas_ComissoesICM: TIBBCDField;
    Fat_Vendas_ComissoesICM_SUBS: TIBBCDField;
    Fat_Vendas_ComissoesIPI: TIBBCDField;
    Fat_Vendas_ComissoesVOLUME: TIBBCDField;
    Fat_Vendas_ComissoesPESO: TIBBCDField;
    Fat_Vendas_ComissoesDESCONTO: TIBBCDField;
    Fat_Vendas_ComissoesPORC_DESC: TIBBCDField;
    Fat_Vendas_ComissoesUNIDADE: TIBStringField;
    Fat_Vendas_ComissoesPRC_UNIT_ORIGINAL: TIBBCDField;
    Fat_Vendas_ComissoesNOME_PRODUTO: TIBStringField;
    Fat_Vendas_ComissoesALIQUOTA: TIBStringField;
    Fat_Vendas_ComissoesPRODUTOFIS: TIBStringField;
    Fat_Vendas_ComissoesNOME_FIS: TIBStringField;
    Fat_Vendas_ComissoesCTE: TIntegerField;
    Fat_Vendas_ComissoesCTIE: TIntegerField;
    Fat_Vendas_ComissoesORIGEM: TIntegerField;
    Fat_Vendas_ComissoesREDUCAO: TIntegerField;
    Fat_Vendas_ComissoesSUBUNIDADE: TIntegerField;
    Fat_Vendas_ComissoesGRUPO: TIntegerField;
    Fat_Vendas_ComissoesSUBGRUPO: TIntegerField;
    Fat_Vendas_ComissoesNOME_GRUPO: TIBStringField;
    Fat_Vendas_ComissoesNOME_SUBGRUPO: TIBStringField;
    Fat_Vendas_ComissoesCOMISSAO_VISTA: TIBBCDField;
    Fat_Vendas_ComissoesCOMISSAO_PRAZO: TIBBCDField;
    Fat_VendasVendAVISTA: TFloatField;
    Fat_VendasVendAPRAZO: TFloatField;
    Fat_VendasVendTROCO: TIBBCDField;
    Cotas_Vendedores: TIBQuery;
    Cotas_VendedoresVENDEDOR: TIntegerField;
    Cotas_VendedoresNOME_VENDEDOR: TIBStringField;
    Cotas_VendedoresGRUPO: TIntegerField;
    Cotas_VendedoresSUBGRUPO: TIntegerField;
    Cotas_VendedoresNOME_GRUPO: TIBStringField;
    Cotas_VendedoresNOME_SUBGRUPO: TIBStringField;
    Cotas_VendedoresVALOR: TIBBCDField;
    Cotas_VendedoresCOMISSAO_VISTA: TIBBCDField;
    Cotas_VendedoresCOMISSAO_PRAZO: TIBBCDField;
    SelSubGrupo: TIBQuery;
    DsGrupo: TDataSource;
    SelSubGrupoCNPJ: TIBStringField;
    SelSubGrupoGRUPO: TIntegerField;
    SelSubGrupoNOME: TIBStringField;
    SelSubGrupoSUBGRUPO: TIntegerField;
    Fat_VendasPorGrupo: TIBQuery;
    Fat_VendasPorGrupoCODIGO: TIntegerField;
    Fat_VendasPorGrupoDATA: TDateTimeField;
    Fat_VendasPorGrupoPRODUTO: TIBStringField;
    Fat_VendasPorGrupoGRUPO: TIntegerField;
    Fat_VendasPorGrupoNOME_GRUPO: TIBStringField;
    Fat_VendasPorGrupoSEQUENCIA: TSmallintField;
    Fat_VendasPorGrupoQUANTIDADE: TIBBCDField;
    Fat_VendasPorGrupoNATUREZA: TIntegerField;
    Fat_VendasPorGrupoNOME_NATUREZA: TIBStringField;
    Fat_VendasPorGrupoNF: TIntegerField;
    Fat_VendasPorGrupoPRC_UNITARIO: TIBBCDField;
    Fat_VendasPorGrupoPRC_CUSTO: TIBBCDField;
    Fat_VendasPorGrupoICM: TIBBCDField;
    Fat_VendasPorGrupoICM_SUBS: TIBBCDField;
    Fat_VendasPorGrupoIPI: TIBBCDField;
    Fat_VendasPorGrupoVOLUME: TIBBCDField;
    Fat_VendasPorGrupoPESO: TIBBCDField;
    Fat_VendasPorGrupoDESCONTO: TIBBCDField;
    Fat_VendasPorGrupoPORC_DESC: TIBBCDField;
    Fat_VendasPorGrupoUNIDADE: TIBStringField;
    Fat_VendasPorGrupoPRC_UNIT_ORIGINAL: TIBBCDField;
    Fat_VendasPorGrupoNOME_PRODUTO: TIBStringField;
    Fat_VendasPorGrupoALIQUOTA: TIBStringField;
    Fat_VendasPorGrupoPRODUTOFIS: TIBStringField;
    Fat_VendasPorGrupoNOME_FIS: TIBStringField;
    Fat_VendasPorGrupoCTE: TIntegerField;
    Fat_VendasPorGrupoCTIE: TIntegerField;
    Fat_VendasPorGrupoORIGEM: TIntegerField;
    Fat_VendasPorGrupoREDUCAO: TIntegerField;
    Fat_VendasPorGrupoSUBUNIDADE: TIntegerField;
    Fat_VendasPorGrupoPESSOA_FJ: TIntegerField;
    Fat_VendasPorGrupoPESSOA_RAZAO: TIBStringField;
    Fat_VendasPorGrupoVENDEDOR: TIntegerField;
    Fat_VendasPorGrupoNOME_VENDEDOR: TIBStringField;
    Fat_VendasPorGrupoVALOR: TIBBCDField;
    Fat_VendasPorGrupoTOTAL: TIBBCDField;
    Fat_VendasPorGrupoDESC_ACRES: TIBBCDField;
    Fat_VendasPorGrupoVLRLIQUIDO: TFloatField;
    Fat_VendasGrupo: TIBQuery;
    Fat_VendasGrupoPRODUTO: TIBStringField;
    Fat_VendasGrupoGRUPO: TIntegerField;
    Fat_VendasGrupoNOME_GRUPO: TIBStringField;
    Fat_VendasGrupoNOME_PRODUTO: TIBStringField;
    Fat_VendasGrupoUNIDADE: TIBStringField;
    Fat_VendasGrupoSUBUNIDADE: TIntegerField;
    Fat_VendasGrupoQUANTIDADE: TIBBCDField;
    Fat_VendasGrupoVALOR: TIBBCDField;
    Fat_VendasGrupoTOTAL: TFloatField;
    FECHAMENTO_DIARIO: TIBQuery;
    FECHAMENTO_DIARIODATA: TDateTimeField;
    FECHAMENTO_DIARIOPRODUTO: TIBStringField;
    FECHAMENTO_DIARIONOME: TIBStringField;
    FECHAMENTO_DIARIOLEITURA: TIBBCDField;
    FECHAMENTO_DIARIOENTRADA: TIBBCDField;
    FECHAMENTO_DIARIOVENDA: TIBBCDField;
    FECHAMENTO_DIARIOCONTAGEM: TIBBCDField;
    FECHAMENTO_DIARIOPOSICAO: TIBBCDField;
    FECHAMENTO_DIARIOINICIAL: TIBBCDField;
    Fat_VendasGrupoVENDEDOR: TIntegerField;
    Fat_VendasGrupoFECHADA: TIBStringField;
    Fat_VendasVendCANCELADA: TIBStringField;
    VER_FAT_CAIXAS_MOVIMENTOS: TIBQuery;
    VER_FAT_CAIXAS_MOVIMENTOSDOCUMENTO: TIBStringField;
    VER_FAT_CAIXAS_MOVIMENTOSHISTORICO: TIBStringField;
    VER_FAT_CAIXAS_MOVIMENTOSVALOR: TIBBCDField;
    VER_FAT_CAIXAS_MOVIMENTOSNOME_CONTRAPARTIDA: TIBStringField;
    VER_FAT_CAIXAS_MOVIMENTOSCONTRA_PARTIDA: TIntegerField;
    VER_FAT_CAIXAS_MOVIMENTOSTIPO: TIBStringField;
    VER_FAT_CAIXAS_MOVIMENTOSNOME: TIBStringField;
    COMISSOES_POR_FAIXA: TIBQuery;
    COMISSOES_POR_FAIXACNPJ: TIBStringField;
    COMISSOES_POR_FAIXACODIGO: TIntegerField;
    COMISSOES_POR_FAIXAPRAZO: TFloatField;
    COMISSOES_POR_FAIXAVALOR: TFloatField;
    COMISSOES_POR_FAIXAVISTA: TFloatField;
    EntradasVLR_TOTAL_NF: TFloatField;
    EntradasFRETE_LF: TIBStringField;
    EntradasVLR_PRODUTOS: TFloatField;
    Fat_VendasVendCOM_PRAZO: TIBBCDField;
    Fat_VendasVendCOM_VISTA: TIBBCDField;
    Fat_VendasVendDATA: TDateTimeField;
    Fat_VendasVendDATA_CAIXA: TDateTimeField;
    VendasIndicados: TIBQuery;
    VendasIndicadosCODIGO: TIntegerField;
    VendasIndicadosDATA: TDateTimeField;
    VendasIndicadosFECHADA: TIBStringField;
    VendasIndicadosHISTORICO: TIBStringField;
    VendasIndicadosPESSOA_FJ: TIntegerField;
    VendasIndicadosPESSOA_RAZAO: TIBStringField;
    VendasIndicadosUSUARIO: TIntegerField;
    VendasIndicadosNATUREZA: TIntegerField;
    VendasIndicadosNOME_NATUREZA: TIBStringField;
    VendasIndicadosENVIADA_CX: TIBStringField;
    VendasIndicadosFORMA_PGTO: TIntegerField;
    VendasIndicadosNUM_NF: TIntegerField;
    VendasIndicadosNUM_CUPOM: TIntegerField;
    VendasIndicadosPROPRIEDADE: TIntegerField;
    VendasIndicadosCONVENIADO: TIntegerField;
    VendasIndicadosTIPO_DOCTO: TIBStringField;
    VendasIndicadosLOCAL_COBRANCA: TIntegerField;
    VendasIndicadosDESC_ACRES: TIBBCDField;
    VendasIndicadosENTRADA: TIBBCDField;
    VendasIndicadosDINHEIRO: TIBBCDField;
    VendasIndicadosCHEQUE: TIBBCDField;
    VendasIndicadosCARTAO: TIBBCDField;
    VendasIndicadosTICKET: TIBBCDField;
    VendasIndicadosTOTAL: TIBBCDField;
    VendasIndicadosVLRLIQUIDO: TIBBCDField;
    VendasIndicadosOBSERVACAO: TIBStringField;
    VendasIndicadosVLR_PARC_LC: TIBBCDField;
    VendasIndicadosTERCEIRO: TIntegerField;
    VendasIndicadosCARGA: TIntegerField;
    VendasIndicadosVOLUME: TIBBCDField;
    VendasIndicadosPESO: TIBBCDField;
    VendasIndicadosREQUISICAO: TIBStringField;
    VendasIndicadosDESCRICAO: TBlobField;
    VendasIndicadosTIPO_VENDA: TIBStringField;
    VendasIndicadosNOME_CONSUMIDOR: TIBStringField;
    VendasIndicadosORCAMENTO: TIntegerField;
    VendasIndicadosVENDEDO: TIntegerField;
    VendasIndicadosNOME_VENDEDOR: TIBStringField;
    VendasIndicadosPORCENTAGEM: TIBBCDField;
    VendasIndicadosBonificacao: TFloatField;
    ACOMPANHAMENTO_VENDAS: TIBQuery;
    VER_FAT_VENDAS_ANALISE: TIBQuery;
    VER_FAT_VENDAS_ANALISE_CUSTOS: TIBQuery;
    VER_FIN_PAGAS_ANALISE: TIBQuery;
    FaturasDATA: TDateTimeField;
    FaturasDATA_BAIXA: TDateTimeField;
    FaturasVENCIMENTO: TDateTimeField;
    FaturasNOME_FANTASIA: TIBStringField;
    FaturasCOMPRADOR: TIBStringField;
    FaturasFONE_COMPRADOR: TIBStringField;
    Fat_TrocasCli: TIBQuery;
    Fat_TrocasCliCODIGO: TIntegerField;
    Fat_TrocasCliDATA: TDateTimeField;
    Fat_TrocasCliFECHADA: TIBStringField;
    Fat_TrocasCliPESSOA_FJ: TIntegerField;
    Fat_TrocasCliPESSOA_RAZAO: TIBStringField;
    Fat_TrocasCliUSUARIO: TIntegerField;
    Fat_TrocasCliENVIADA_CX: TIBStringField;
    Fat_TrocasCliFORMA_PGTO: TIntegerField;
    Fat_TrocasCliTIPO_DOCTO: TIBStringField;
    Fat_TrocasCliLOCAL_COBRANCA: TIntegerField;
    Fat_TrocasCliDESC_ACRESC: TIBBCDField;
    Fat_TrocasCliENTRADA: TIBBCDField;
    Fat_TrocasCliDINHEIRO: TIBBCDField;
    Fat_TrocasCliCHEQUE: TIBBCDField;
    Fat_TrocasCliCARTAO: TIBBCDField;
    Fat_TrocasCliTICKET: TIBBCDField;
    Fat_TrocasCliTOTAL: TIBBCDField;
    Fat_TrocasCliVLRLIQUIDO: TIBBCDField;
    Fat_TrocasCliOBSERVACAO: TIBStringField;
    Fat_TrocasCliVLR_PARC_LC: TIBBCDField;
    Fat_TrocasCliNOME_CONSUMIDOR: TIBStringField;
    Fat_TrocasCliVENDEDOR: TIntegerField;
    Fat_TrocasCliNOME_VENDEDOR: TIBStringField;
    Fat_TrocasCliTOTAL_2: TIBBCDField;
    Fat_TrocasCliDESC_ACRESC_2: TIBBCDField;
    Fat_VendasPorMarca: TIBQuery;
    Fat_VendasPorMarcaCODIGO: TIntegerField;
    Fat_VendasPorMarcaDATA: TDateTimeField;
    Fat_VendasPorMarcaPRODUTO: TIBStringField;
    Fat_VendasPorMarcaSEQUENCIA: TSmallintField;
    Fat_VendasPorMarcaQUANTIDADE: TIBBCDField;
    Fat_VendasPorMarcaNATUREZA: TIntegerField;
    Fat_VendasPorMarcaNOME_NATUREZA: TIBStringField;
    Fat_VendasPorMarcaNF: TIntegerField;
    Fat_VendasPorMarcaPRC_UNITARIO: TIBBCDField;
    Fat_VendasPorMarcaPRC_CUSTO: TIBBCDField;
    Fat_VendasPorMarcaICM: TIBBCDField;
    Fat_VendasPorMarcaICM_SUBS: TIBBCDField;
    Fat_VendasPorMarcaIPI: TIBBCDField;
    Fat_VendasPorMarcaVOLUME: TIBBCDField;
    Fat_VendasPorMarcaPESO: TIBBCDField;
    Fat_VendasPorMarcaDESCONTO: TIBBCDField;
    Fat_VendasPorMarcaPORC_DESC: TIBBCDField;
    Fat_VendasPorMarcaUNIDADE: TIBStringField;
    Fat_VendasPorMarcaPRC_UNIT_ORIGINAL: TIBBCDField;
    Fat_VendasPorMarcaNOME_PRODUTO: TIBStringField;
    Fat_VendasPorMarcaALIQUOTA: TIBStringField;
    Fat_VendasPorMarcaPRODUTOFIS: TIBStringField;
    Fat_VendasPorMarcaNOME_FIS: TIBStringField;
    Fat_VendasPorMarcaCTE: TIntegerField;
    Fat_VendasPorMarcaCTIE: TIntegerField;
    Fat_VendasPorMarcaORIGEM: TIntegerField;
    Fat_VendasPorMarcaREDUCAO: TIntegerField;
    Fat_VendasPorMarcaSUBUNIDADE: TIntegerField;
    Fat_VendasPorMarcaPESSOA_FJ: TIntegerField;
    Fat_VendasPorMarcaPESSOA_RAZAO: TIBStringField;
    Fat_VendasPorMarcaVENDEDOR: TIntegerField;
    Fat_VendasPorMarcaNOME_VENDEDOR: TIBStringField;
    Fat_VendasPorMarcaVALOR: TIBBCDField;
    Fat_VendasPorMarcaTOTAL: TIBBCDField;
    Fat_VendasPorMarcaDESC_ACRES: TIBBCDField;
    Fat_VendasPorMarcaVLRLIQUIDO: TFloatField;
    Fat_VendasMarca: TIBQuery;
    Fat_VendasPorMarcaMARCA: TIntegerField;
    Fat_VendasPorMarcaNOME_MARCA: TIBStringField;
    ANALISE_INADIMPLENCIA: TIBQuery;
    ANALISE_INADIMPLENCIALANCADO: TIBBCDField;
    ANALISE_INADIMPLENCIAPAGO: TIBBCDField;
    ANALISE_INADIMPLENCIAABERTO: TIBBCDField;
    ANALISE_INADIMPLENCIAMES: TIntegerField;
    ANALISE_INADIMPLENCIAANO: TIntegerField;
    Fat_VendasGrupoCUSTO: TIBBCDField;
    Fat_VendasComissao: TIBQuery;
    Fat_VendasComissaoCODIGO: TIntegerField;
    Fat_VendasComissaoFECHADA: TIBStringField;
    Fat_VendasComissaoHISTORICO: TIBStringField;
    Fat_VendasComissaoPESSOA_FJ: TIntegerField;
    Fat_VendasComissaoPESSOA_RAZAO: TIBStringField;
    Fat_VendasComissaoUSUARIO: TIntegerField;
    Fat_VendasComissaoNATUREZA: TIntegerField;
    Fat_VendasComissaoNOME_NATUREZA: TIBStringField;
    Fat_VendasComissaoENVIADA_CX: TIBStringField;
    Fat_VendasComissaoFORMA_PGTO: TIntegerField;
    Fat_VendasComissaoNUM_NF: TIntegerField;
    Fat_VendasComissaoNUM_CUPOM: TIntegerField;
    Fat_VendasComissaoPROPRIEDADE: TIntegerField;
    Fat_VendasComissaoCONVENIADO: TIntegerField;
    Fat_VendasComissaoTIPO_DOCTO: TIBStringField;
    Fat_VendasComissaoLOCAL_COBRANCA: TIntegerField;
    Fat_VendasComissaoDESC_ACRES: TIBBCDField;
    Fat_VendasComissaoENTRADA: TIBBCDField;
    Fat_VendasComissaoDINHEIRO: TIBBCDField;
    Fat_VendasComissaoCHEQUE: TIBBCDField;
    Fat_VendasComissaoCARTAO: TIBBCDField;
    Fat_VendasComissaoTICKET: TIBBCDField;
    Fat_VendasComissaoTOTAL: TIBBCDField;
    Fat_VendasComissaoVLR_PARC_LC: TIBBCDField;
    Fat_VendasComissaoTERCEIRO: TIntegerField;
    Fat_VendasComissaoCARGA: TIntegerField;
    Fat_VendasComissaoVOLUME: TIBBCDField;
    Fat_VendasComissaoPESO: TIBBCDField;
    Fat_VendasComissaoREQUISICAO: TIBStringField;
    Fat_VendasComissaoDESCRICAO: TBlobField;
    Fat_VendasComissaoTIPO_VENDA: TIBStringField;
    Fat_VendasComissaoNOME_CONSUMIDOR: TIBStringField;
    Fat_VendasComissaoORCAMENTO: TIntegerField;
    Fat_VendasComissaoVLRLIQUIDO: TIBBCDField;
    Fat_VendasComissaoVENDEDOR: TIntegerField;
    Fat_VendasComissaoNOME_VENDEDOR: TIBStringField;
    Fat_VendasComissaoAVISTA: TFloatField;
    Fat_VendasComissaoAPRAZO: TFloatField;
    Fat_VendasComissaoTROCO: TIBBCDField;
    Fat_VendasComissaoCANCELADA: TIBStringField;
    Fat_VendasComissaoCOM_PRAZO: TIBBCDField;
    Fat_VendasComissaoCOM_VISTA: TIBBCDField;
    Fat_VendasComissaoDATA: TDateTimeField;
    Fat_VendasComissaoDATA_CAIXA: TDateTimeField;
    Fat_VendasComissaoPRODUTO: TIBStringField;
    Fat_VendasComissaoNOME_PRODUTO: TIBStringField;
    Fat_VendasComissaoSEQUENCIA: TIntegerField;
    Fat_VendasComissaoQUANTIDADE: TIBBCDField;
    Fat_VendasComissaoPRC_UNITARIO: TIBBCDField;
    Fat_VendasComissaoPRC_CUSTO: TIBBCDField;
    Fat_VendasComissaoDESCONTO: TIBBCDField;
    Fat_VendasComissaoPORC_DESC: TIBBCDField;
    Fat_VendasComissaoUNIDADE: TIBStringField;
    Fat_VendasComissaoItem: TFloatField;
    Fat_VendasComissaoItem_Vista: TFloatField;
    Fat_VendasComissaoItem_Prazo: TFloatField;
    Entradas_Itens_Agrupada: TIBQuery;
    Entradas_Itens_AgrupadaPRODUTO: TIBStringField;
    Entradas_Itens_AgrupadaQUANTIDADE: TFloatField;
    Entradas_Itens_AgrupadaPRC_CUSTO: TFloatField;
    Entradas_Itens_AgrupadaNOME_PRODUTO: TIBStringField;
    Entradas_Itens_AgrupadaPRC_CUSTO_DIG: TFloatField;
    FECHAMENTO_MES: TIBQuery;
    FECHAMENTO_MESPRODUTO: TIBStringField;
    FECHAMENTO_MESDATA: TDateTimeField;
    FECHAMENTO_MESSALDO_INICIAL: TIBBCDField;
    FECHAMENTO_MESENTRADAS: TIBBCDField;
    FECHAMENTO_MESSAIDAS: TIBBCDField;
    FECHAMENTO_MESGRUPO: TIntegerField;
    FECHAMENTO_MESCUSTO: TIBBCDField;
    FECHAMENTO_MESSUB_GRUPO: TIntegerField;
    FECHAMENTO_MESNOME: TIBStringField;
    Notas_FaturaNUM_CUPOM: TIntegerField;
    Notas_FaturaDT_EMISSAO: TDateTimeField;
    Notas_FaturaDT_VENCTO: TDateTimeField;
    Notas_FaturaDT_LANCTO: TDateTimeField;
    Notas_FaturaDT_AVISO: TDateTimeField;
    FaturasUSUARIO: TIBStringField;
    Fat_TrocasItens: TIBQuery;
    Fat_TrocasItensDESCONTO: TIBBCDField;
    Fat_TrocasItensICM: TIBBCDField;
    Fat_TrocasItensICM_SUBS: TIBBCDField;
    Fat_TrocasItensIPI: TIBBCDField;
    Fat_TrocasItensPESO: TIBBCDField;
    Fat_TrocasItensPORC_DESC: TIBBCDField;
    Fat_TrocasItensPRC_CUSTO: TIBBCDField;
    Fat_TrocasItensPRC_UNIT_ORIGINAL: TIBBCDField;
    Fat_TrocasItensPRC_UNITARIO: TIBBCDField;
    Fat_TrocasItensPRODUTO: TIBStringField;
    Fat_TrocasItensQUANTIDADE: TIBBCDField;
    Fat_TrocasItensSEQUENCIA: TIntegerField;
    Fat_TrocasItensUNIDADE: TIBStringField;
    Fat_TrocasItensSUBUNIDADE: TIntegerField;
    Fat_TrocasItensVOLUME: TIBBCDField;
    Fat_TrocasItensNOME_PRODUTO: TIBStringField;
    Fat_TrocasItensTIPO: TIBStringField;
    Fat_VendasSubGrupo: TIBQuery;
    Fat_VendasSubGrupoPRODUTO: TIBStringField;
    Fat_VendasSubGrupoGRUPO: TIntegerField;
    Fat_VendasSubGrupoNOME_GRUPO: TIBStringField;
    Fat_VendasSubGrupoSUBGRUPO: TIntegerField;
    Fat_VendasSubGrupoNOME_SUBGRUPO: TIBStringField;
    Fat_VendasSubGrupoNOME_PRODUTO: TIBStringField;
    Fat_VendasSubGrupoUNIDADE: TIBStringField;
    Fat_VendasSubGrupoSUBUNIDADE: TIntegerField;
    Fat_VendasSubGrupoQUANTIDADE: TIBBCDField;
    Fat_VendasSubGrupoVALOR: TIBBCDField;
    Fat_VendasSubGrupoVENDEDOR: TIntegerField;
    Fat_VendasSubGrupoFECHADA: TIBStringField;
    Fat_VendasSubGrupoCUSTO: TIBBCDField;
    Fat_VendasSubGrupoTOTAL: TFloatField;
    Fat_VendasSubGrupoNOME_VENDEDOR: TIBStringField;
    Fat_VendasVendDT_EMISSAO_AGRUPADA: TDateTimeField;
    ListaUnidCUSTO_INDEXADO: TIBBCDField;
    ListaUnidMARGEM_BRUTA: TIBBCDField;
    FECHAMENTO_DIARIOCUSTO: TIBBCDField;
    Fat_GarantiasCli: TIBQuery;
    Fat_GarantiasCliCODIGO: TIntegerField;
    Fat_GarantiasCliDATA: TDateTimeField;
    Fat_GarantiasCliFECHADA: TIBStringField;
    Fat_GarantiasCliPESSOA_FJ: TIntegerField;
    Fat_GarantiasCliPESSOA_RAZAO: TIBStringField;
    Fat_GarantiasCliUSUARIO: TIntegerField;
    Fat_GarantiasCliENVIADA_CX: TIBStringField;
    Fat_GarantiasCliFORMA_PGTO: TIntegerField;
    Fat_GarantiasCliTIPO_DOCTO: TIBStringField;
    Fat_GarantiasCliLOCAL_COBRANCA: TIntegerField;
    Fat_GarantiasCliDESC_ACRESC: TIBBCDField;
    Fat_GarantiasCliENTRADA: TIBBCDField;
    Fat_GarantiasCliDINHEIRO: TIBBCDField;
    Fat_GarantiasCliCHEQUE: TIBBCDField;
    Fat_GarantiasCliCARTAO: TIBBCDField;
    Fat_GarantiasCliTICKET: TIBBCDField;
    Fat_GarantiasCliTOTAL: TIBBCDField;
    Fat_GarantiasCliVLRLIQUIDO: TIBBCDField;
    Fat_GarantiasCliOBSERVACAO: TIBStringField;
    Fat_GarantiasCliVLR_PARC_LC: TIBBCDField;
    Fat_GarantiasCliNOME_CONSUMIDOR: TIBStringField;
    Fat_GarantiasCliVENDEDOR: TIntegerField;
    Fat_GarantiasCliNOME_VENDEDOR: TIBStringField;
    Fat_GarantiasCliTOTAL_2: TIBBCDField;
    Fat_GarantiasCliDESC_ACRESC_2: TIBBCDField;
    FECHAMENTO_DIARIOTROCAS_SAI: TIBBCDField;
    FECHAMENTO_DIARIOTROCAS_ENT: TIBBCDField;
    FECHAMENTO_DIARIOGARANTIAS_SAI: TIBBCDField;
    FECHAMENTO_DIARIOGARANTIAS_ENT: TIBBCDField;
    VER_FAT_CAIXAS_MOVIMENTOSDATA: TDateTimeField;
    PosicaoEstoqueVenda: TIBQuery;
    PosicaoEstoqueVendaCODIGO: TIBStringField;
    PosicaoEstoqueVendaCODIGO_INTERNO: TIntegerField;
    PosicaoEstoqueVendaCUSTO_AQUISICAO: TIBBCDField;
    PosicaoEstoqueVendaNOME: TIBStringField;
    PosicaoEstoqueVendaUNIDADE: TIBStringField;
    PosicaoEstoqueVendaNOME_GRUPO: TIBStringField;
    PosicaoEstoqueVendaCODIGO_G: TIntegerField;
    PosicaoEstoqueVendaSUBGRUPO: TIntegerField;
    PosicaoEstoqueVendaNOME_SUBGRUPO: TIBStringField;
    PosicaoEstoqueVendaSUBUNIDADE: TIntegerField;
    PosicaoEstoqueVendaQTDADE_2: TIBBCDField;
    PosicaoEstoqueVendaPRC_REPOS: TIBBCDField;
    PosicaoEstoqueVendaPRC_CUSTO_MED: TIBBCDField;
    PosicaoEstoqueVendaPRC_VENDA: TIBBCDField;
    PosicaoEstoqueVendaVENDA: TIBBCDField;
    PosicaoEstoqueVendaMARGEM: TFloatField;
    PosicaoEstoqueVendaPRC_CUSTO_TOTAL: TFloatField;
    PosicaoEstoqueVendaPRC_VENDA_TOTAL: TFloatField;
    IMPRESSORAFAT: TRDprint;
    ORDENS: TIBQuery;
    ORDENSCODIGO: TIntegerField;
    ORDENSDATA: TDateTimeField;
    ORDENSDATA_FECHAMENTO: TDateTimeField;
    ORDENSPESSOA_FJ: TIntegerField;
    ORDENSENVIADA_CX: TIBStringField;
    ORDENSNOME: TIBStringField;
    ORDENSNATUREZA: TIntegerField;
    ORDENSMECANICO: TIntegerField;
    ORDENSVIAJANTE: TIntegerField;
    ORDENSENTRADA: TDateTimeField;
    ORDENSMOTOR: TIntegerField;
    ORDENSHISTORICO: TIBStringField;
    ORDENSCHASSI: TIBStringField;
    ORDENSTOTAL: TIBBCDField;
    ORDENSDESC_ACRESC: TIBBCDField;
    ORDENSCLIENTE: TIBStringField;
    ORDENSFECHADO: TIBStringField;
    ORDENSNOME_NATUREZA: TIBStringField;
    ORDENSNOME_MECANICO: TIBStringField;
    ORDENSNOME_VIAJANTE: TIBStringField;
    ORDENSNOME_MOTOR: TIBStringField;
    ORDENSNF: TIntegerField;
    ORDENSALIQUOTA_ISS: TIBBCDField;
    ORDENSVLRLIQUIDO: TFloatField;
    ORDENS_SERVICOS: TIBQuery;
    ORDENS_SERVICOSSERVICO: TIntegerField;
    ORDENS_SERVICOSNOME: TIBStringField;
    ORDENS_SERVICOSQUANTIDADE: TIBBCDField;
    ORDENS_SERVICOSUNITARIO: TIBBCDField;
    ORDENS_SERVICOSSELECIONADO: TIBStringField;
    ORDENS_SERVICOSTOTAL: TFloatField;
    VER_FAT_VENDAS_ANALISE_CLIENTE: TIBQuery;
    VER_FAT_VENDAS_ANALISE_CLIENTESOMA: TIBBCDField;
    VER_FAT_VENDAS_ANALISE_CLIENTEMES: TIntegerField;
    VER_FAT_VENDAS_ANALISE_CLIENTEANO: TIntegerField;
    VER_FAT_VENDAS_ANALISE_CLIENTEPESSOA_FJ: TIntegerField;
    VER_FAT_VENDAS_ANALISE_CLIENTEDATA_CAIXA: TDateTimeField;
    VER_FAT_VENDAS_ANALISE_CLIENTEVENDEDOR: TIntegerField;
    VER_FAT_VENDAS_ANALISE_CLIENTENOME_VENDEDOR: TIBStringField;
    VER_FAT_VENDAS_ANALISE_CLIENTEPLACA: TIBStringField;
    VER_FAT_VENDAS_ANALISE_CLIENTETOTAL: TIBBCDField;
    SelPessoas: TIBQuery;
    SelPessoasCODIGO: TIntegerField;
    SelPessoasNOME_RAZAO: TIBStringField;
    SelPessoasFONE: TIBStringField;
    SelPessoasPESSOA_FJ: TIntegerField;
    SelPessoasFANTASIA: TIBStringField;
    SelPessoasCPF_CGC: TIBStringField;
    SelPessoasBLOQUEADO: TIBStringField;
    SelPessoasCLASSIFICACAO: TIBStringField;
    SelPessoasUF: TIBStringField;
    SelPessoasEMPRESA: TIBStringField;
    SelPessoasORDEM: TIntegerField;
    Notas_FaturaCONVENIADO: TIntegerField;
    Notas_FaturaNOME_CONVENIADO: TIBStringField;
    VerCheque_Comissao: TIBQuery;
    VerCheque_ComissaoBANCO: TIBStringField;
    VerCheque_ComissaoCONTA: TIBStringField;
    VerCheque_ComissaoCHEQUE: TIBStringField;
    VerCheque_ComissaoVENDA: TIntegerField;
    VerCheque_ComissaoVALOR: TIBBCDField;
    VerCheque_ComissaoCONCILIADO: TIBStringField;
    VerCheque_ComissaoPESSOA_FJ: TIntegerField;
    VerCheque_ComissaoHISTORICO: TIBStringField;
    VerCheque_ComissaoAGENCIA: TIBStringField;
    VerCheque_ComissaoNOME: TIBStringField;
    VerCheque_ComissaoFONE: TIBStringField;
    VerCheque_ComissaoFAX: TIBStringField;
    VerCheque_ComissaoCELULAR: TIBStringField;
    VerCheque_ComissaoCPF_CGC: TIBStringField;
    VerCheque_ComissaoTotal: TFloatField;
    VerCheque_ComissaoJUROS: TIBBCDField;
    VerCheque_ComissaoMOEDA1: TIBBCDField;
    VerCheque_ComissaoMOEDA2: TIBBCDField;
    VerCheque_ComissaoTIPO: TIBStringField;
    VerCheque_ComissaoPLANILHA: TIntegerField;
    VerCheque_ComissaoDIGITO_AGENCIA: TIBStringField;
    VerCheque_ComissaoDIGITO_CHEQUE: TIBStringField;
    VerCheque_ComissaoEMISSAO: TDateTimeField;
    VerCheque_ComissaoPRE_DATE: TDateTimeField;
    VerCheque_ComissaoDATA_CONCILIACAO: TDateTimeField;
    VerCheque_ComissaoDATA_ACERTO: TDateTimeField;
    VerCheque_ComissaoDATA_DEVOLUCAO: TDateTimeField;
    VerCheque_ComissaoVENDEDOR: TIntegerField;
    Geral: TIBQuery;
    SelGrupoSELECIONADO: TIBStringField;
    Fat_VendasGrupoSel: TIBQuery;
    Fat_VendasVendPAGA_COMISSAO: TIBStringField;
    SelMarcaSELECIONADO: TIBStringField;
    VER_EST_PRODUTOS_GRADES: TIBQuery;
    VER_EST_PRODUTOS_GRADESCNPJ: TIBStringField;
    VER_EST_PRODUTOS_GRADESCODIGO: TIBStringField;
    VER_EST_PRODUTOS_GRADESCODIGO_2: TIBStringField;
    VER_EST_PRODUTOS_GRADESCNPJ_AGRUP: TIBStringField;
    VER_EST_PRODUTOS_GRADESCOD_AGRUP: TIBStringField;
    VER_EST_PRODUTOS_GRADESNOME: TIBStringField;
    VER_EST_PRODUTOS_GRADESMARCA: TIntegerField;
    VER_EST_PRODUTOS_GRADESNOME_MARCA: TIBStringField;
    VER_EST_PRODUTOS_GRADESGRUPO: TIntegerField;
    VER_EST_PRODUTOS_GRADESSUBGRUPO: TIntegerField;
    VER_EST_PRODUTOS_GRADESNOME_GRUPO: TIBStringField;
    VER_EST_PRODUTOS_GRADESNOME_SUBGRUPO: TIBStringField;
    VER_EST_PRODUTOS_GRADESREDUCAO: TIntegerField;
    VER_EST_PRODUTOS_GRADESUNIDADE: TIBStringField;
    VER_EST_PRODUTOS_GRADESCTE: TSmallintField;
    VER_EST_PRODUTOS_GRADESCTIE: TSmallintField;
    VER_EST_PRODUTOS_GRADESQTDADE_1: TIBBCDField;
    VER_EST_PRODUTOS_GRADESQTDADE_2: TIBBCDField;
    VER_EST_PRODUTOS_GRADESLOCALIZACAO_1: TIBStringField;
    VER_EST_PRODUTOS_GRADESLOCALIZACAO_2: TIBStringField;
    VER_EST_PRODUTOS_GRADESLOCALIZACAO_3: TIBStringField;
    VER_EST_PRODUTOS_GRADESNEG_QTDADE_2: TIBStringField;
    VER_EST_PRODUTOS_GRADESQTDADE_MIN: TIntegerField;
    VER_EST_PRODUTOS_GRADESQTDADE_MAX: TIntegerField;
    VER_EST_PRODUTOS_GRADESCOMPLEMENTO_NF: TIBStringField;
    VER_EST_PRODUTOS_GRADESDT_ULT_COMPRA: TDateTimeField;
    VER_EST_PRODUTOS_GRADESQT_ULT_COMPRA: TIntegerField;
    VER_EST_PRODUTOS_GRADESDT_ULT_VENDA: TDateTimeField;
    VER_EST_PRODUTOS_GRADESMARGEM_BRUTA: TIBBCDField;
    VER_EST_PRODUTOS_GRADESPRC_REPOS: TIBBCDField;
    VER_EST_PRODUTOS_GRADESPRC_CUSTO_ANT: TIBBCDField;
    VER_EST_PRODUTOS_GRADESPRC_CUSTO_MED: TIBBCDField;
    VER_EST_PRODUTOS_GRADESPRC_VENDA: TIBBCDField;
    VER_EST_PRODUTOS_GRADESPRC_VENDA_ANT: TIBBCDField;
    VER_EST_PRODUTOS_GRADESPRC_VENDA_MED: TIBBCDField;
    VER_EST_PRODUTOS_GRADESALIQUOTA_ECF: TIBStringField;
    VER_EST_PRODUTOS_GRADESORIGEM: TSmallintField;
    VER_EST_PRODUTOS_GRADESPESO_LIQ: TIBBCDField;
    VER_EST_PRODUTOS_GRADESPERC_FRETE: TIBBCDField;
    VER_EST_PRODUTOS_GRADESIPI: TIBBCDField;
    VER_EST_PRODUTOS_GRADESVOLUME: TIBBCDField;
    VER_EST_PRODUTOS_GRADESPROD_PESAVEL: TIBStringField;
    VER_EST_PRODUTOS_GRADESETIQUETA_ENT: TIBStringField;
    VER_EST_PRODUTOS_GRADESATIVO: TIBStringField;
    VER_EST_PRODUTOS_GRADESULTIMO_FORNECEDOR: TIntegerField;
    VER_EST_PRODUTOS_GRADESFORNECEDOR: TIntegerField;
    VER_EST_PRODUTOS_GRADESSUBUNIDADE: TIntegerField;
    VER_EST_PRODUTOS_GRADESPRC_CUSTO_CODIF: TIBStringField;
    VER_EST_PRODUTOS_GRADESGRADE: TIBStringField;
    VER_EST_PRODUTOS_GRADESMATERIAL: TIntegerField;
    VER_EST_PRODUTOS_GRADESCOR: TIntegerField;
    VER_EST_PRODUTOS_GRADESULTIMA_COMPRA: TDateTimeField;
    VER_EST_PRODUTOS_GRADESQTDADE_COMPRA: TIBBCDField;
    VER_EST_PRODUTOS_GRADESULTIMA_VENDA: TDateTimeField;
    VER_EST_PRODUTOS_GRADESQTDADE_VENDA: TIBBCDField;
    VER_EST_PRODUTOS_GRADESESTOQUE: TIBBCDField;
    VER_EST_PRODUTOS_GRADESPERFIL: TIntegerField;
    VER_EST_PRODUTOS_GRADESNOME_PERFIL: TIBStringField;
    VER_EST_PRODUTOS_GRADESNOME_COR: TIBStringField;
    VER_EST_PRODUTOS_GRADESNOME_MATERIAL: TIBStringField;
    VER_EST_PRODUTOS_GRADESNUMERO: TIntegerField;
    VER_EST_PRODUTOS_GRADESINICIAL: TIntegerField;
    VER_EST_PRODUTOS_GRADESFINAL: TIntegerField;
    VER_EST_PRODUTOS_GRADESINTERVALO: TIntegerField;
    VER_EST_PRODUTOS_GRADES_NUMEROS: TIBQuery;
    VER_EST_PRODUTOS_GRADES_NUMEROSESTOQUE: TIBBCDField;
    VER_EST_PRODUTOS_GRADES_NUMEROSNUMERO: TIBStringField;
    VER_EST_PRODUTOS_GRADES_NUMEROSORDEM: TIntegerField;
    Fat_VendasItensDESCONTO_TOTAL: TFloatField;
    VER_EST_GRADES_ADICIONAL: TIBQuery;
    VER_EST_GRADES_ADICIONALCODIGO: TIBStringField;
    VER_EST_GRADES_ADICIONALORDEM: TIntegerField;
    VER_EST_GRADES: TIBQuery;
    VER_EST_GRADESCODIGO: TIntegerField;
    VER_EST_GRADESNOME: TIBStringField;
    VER_EST_GRADESINICIAL: TIntegerField;
    VER_EST_GRADESFINAL: TIntegerField;
    VER_EST_GRADESINTERVALO: TIntegerField;
    Fat_VendasVendIRRF: TIBBCDField;
    Fat_VendasVendPIS_COFINS_CSLL: TIBBCDField;
    Fat_VendasVendINSS: TIBBCDField;
    Fat_VendasVendISS: TIBBCDField;
    Ver_Pagamentos_Vendas: TIBQuery;
    Ver_Pagamentos_VendasDATA_BAIXA: TDateField;
    Ver_Pagamentos_VendasBANCO: TIBStringField;
    qPosEstGrade: TIBDataSet;
    qPerfil: TIBQuery;
    qPosEstGradeESTOQUE: TIBBCDField;
    qPosEstGradeNUMERO: TIBStringField;
    qPosEstGradeORDEM: TIntegerField;
    qPosEstGradePERFIL: TIBStringField;
    qPosEstGradePRODUTO: TIBStringField;
    qPosEstGradeMARCA: TIBStringField;
    Produtos_MarcaCODIGO_2: TIBStringField;
    Fat_TrocasCliENTRADAS: TFloatField;
    Fat_TrocasCliSAIDAS: TFloatField;
    Fat_TrocasCliLIQUIDO: TFloatField;
    Fat_TrocasCliAVISTA: TFloatField;
    Fat_TrocasCliAPRAZO: TFloatField;
    Fat_VendasGrupoQntdeSel: TIBQuery;
    Fat_VendasGrupoQntdeSelPRODUTO: TIBStringField;
    Fat_VendasGrupoQntdeSelGRUPO: TIntegerField;
    Fat_VendasGrupoQntdeSelNOME_GRUPO: TIBStringField;
    Fat_VendasGrupoQntdeSelNOME_PRODUTO: TIBStringField;
    Fat_VendasGrupoQntdeSelUNIDADE: TIBStringField;
    Fat_VendasGrupoQntdeSelSUBUNIDADE: TIntegerField;
    Fat_VendasGrupoQntdeSelDESCONTO: TIBBCDField;
    Fat_VendasGrupoQntdeSelQUANTIDADE: TIBBCDField;
    Fat_VendasGrupoQntdeSelVALOR: TIBBCDField;
    Fat_VendasGrupoQntdeSelVENDEDOR: TIntegerField;
    Fat_VendasGrupoQntdeSelFECHADA: TIBStringField;
    Fat_VendasGrupoQntdeSelCUSTO: TIBBCDField;
    Fat_VendasGrupoQntdeSelPRC_UNITARIO: TIBBCDField;
    Fat_VendasGrupoQntdeSelCODIGO: TIntegerField;
    Fat_VendasGrupoQntdeSelDATA: TDateField;
    Fat_VendasGrupoQntdeSelPESSOA_FJ: TIntegerField;
    Fat_VendasGrupoQntdeSelNOME_RAZAO: TIBStringField;
    Fat_VendasGrupoQntdeSelNATUREZA: TIntegerField;
    Fat_VendasGrupoQntdeSelNF: TIntegerField;
    Fat_VendasGrupoQntdeSelCOM_VENDA_VLR: TIBBCDField;
    Fat_VendasGrupoQntdeSelCOM_VENDA_PCT: TIBBCDField;
    Fat_VendasGrupoQntdeSelPARTICIP_LUCRO: TIBBCDField;
    Fat_VendasGrupoQntdeSelCOM_VISTA_VENDEDOR: TIBBCDField;
    Fat_VendasGrupoQntdeSelCOM_PRAZO_VENDEDOR: TIBBCDField;
    Fat_VendasGrupoQntdeSelTotal: TFloatField;
    Fat_VendasGrupoQntdeSelUNITARIO: TIBBCDField;
    ANALISE_INADIMPLENCIAPORCENTAGEM: TIBBCDField;
    SelCidade: TIBQuery;
    SelCidadeCODIGO: TIntegerField;
    SelCidadeNOME: TIBStringField;
    Caixas: TIBQuery;
    CaixasCONTA: TIntegerField;
    CaixasNOME: TIBStringField;
    VER_FAT_VENDAS_ANALISE_MES: TIBQuery;
    VER_FAT_VENDAS_ANALISE_MESSOMA: TIBBCDField;
    VER_FAT_VENDAS_ANALISE_MESSEMANA: TIntegerField;
    VER_FAT_VENDAS_ANALISE_CUSTOS_MES: TIBQuery;
    VER_FAT_VENDAS_ANALISE_CUSTOS_MESSOMA: TIBBCDField;
    VER_FAT_VENDAS_ANALISE_CUSTOS_MESSEMANA: TIntegerField;
    VER_FIN_PAGAS_ANALISE_MES: TIBQuery;
    VER_FIN_PAGAS_ANALISE_MESSOMA: TIBBCDField;
    VER_FIN_PAGAS_ANALISE_MESSEMANA: TIntegerField;
    VER_FIN_PAGAS_ANALISE_MESTIPO_CENTRO: TIBStringField;
    VER_FIN_PAGAS_ANALISE_MESCENTRO_CUSTO: TIntegerField;
    VER_FIN_PAGAS_ANALISE_MESNOME: TIBStringField;
    Fat_EntradasPorProduto: TIBQuery;
    Fat_EntradasPorProdutoCNPJ: TIBStringField;
    Fat_EntradasPorProdutoCODIGO: TIntegerField;
    Fat_EntradasPorProdutoGRUPO: TIntegerField;
    Fat_EntradasPorProdutoNOME_GRUPO: TIBStringField;
    Fat_EntradasPorProdutoDATA: TDateTimeField;
    Fat_EntradasPorProdutoPRODUTO: TIBStringField;
    Fat_EntradasPorProdutoNOME: TIBStringField;
    Fat_EntradasPorProdutoVLR_CAIXA: TIBBCDField;
    Fat_EntradasPorProdutoVLR_EMBALAGEM: TIBBCDField;
    Fat_EntradasPorProdutoVLR_COMPRA: TIBBCDField;
    Fat_EntradasPorProdutoVLR_IPI: TIBBCDField;
    Fat_EntradasPorProdutoVLR_FRETE_PROPRIO: TIBBCDField;
    Fat_EntradasPorProdutoVLR_FRETE_TERCEIRO: TIBBCDField;
    Fat_EntradasPorProdutoVLR_TRIBUTACAO_CREDITO: TIBBCDField;
    Fat_EntradasPorProdutoVLR_OUTRAS_DESPESAS: TIBBCDField;
    Fat_EntradasPorProdutoQUANTIDADE: TIBBCDField;
    Fat_EntradasPorProdutoVLR_VENDA: TIBBCDField;
    Fat_EntradasPorProdutoVLR_LUCRO: TIBBCDField;
    Fat_EntradasPorProdutoVLR_CUSTO_TOTAL: TIBBCDField;
    Fat_EntradasPorProdutoFECHADA: TIBStringField;
    Fat_EntradasPorProdutoVLR_RENTABILIDADE: TIBBCDField;
    Fat_EntradasPorProdutoVLR_ICM_VENDA: TIBBCDField;
    Fat_EntradasPorProdutoMARGEM_LUCRO: TIBBCDField;
    Fat_EntradasPorProdutoTOT_FRETE_TERCEIRO: TIBBCDField;
    Fat_EntradasPorProdutoTOT_ICM_CREDITO: TIBBCDField;
    Fat_EntradasPorProdutoTOT_ICM_DEBITO: TIBBCDField;
    Fat_EntradasPorProdutoTOT_RENTABILIDADE: TIBBCDField;
    Fat_EntradasPorProdutoTOT_IPI: TIBBCDField;
    Fat_EntradasPorProdutoTOT_DESP_OPERACIONAL: TIBBCDField;
    Fat_EntradasPorProdutoTOT_DESP_FEDERAL: TIBBCDField;
    Fat_EntradasPorProdutoTOT_FRETE_PROPRIO: TIBBCDField;
    Fat_EntradasPorProdutoHORA: TTimeField;
    Fat_EntradasPorProdutoVLR_VENDA_ANTERIOR: TIBBCDField;
    Ver_Est_Produtos: TIBQuery;
    Ver_Est_ProdutosCNPJ: TIBStringField;
    Ver_Est_ProdutosCODIGO: TIBStringField;
    Ver_Est_ProdutosCODIGO_2: TIBStringField;
    Ver_Est_ProdutosCNPJ_AGRUP: TIBStringField;
    Ver_Est_ProdutosCOD_AGRUP: TIBStringField;
    Ver_Est_ProdutosNOME: TIBStringField;
    Ver_Est_ProdutosMARCA: TIntegerField;
    Ver_Est_ProdutosGRUPO: TIntegerField;
    Ver_Est_ProdutosSUBGRUPO: TIntegerField;
    Ver_Est_ProdutosNOME_GRUPO: TIBStringField;
    Ver_Est_ProdutosNOME_SUBGRUPO: TIBStringField;
    Ver_Est_ProdutosREDUCAO: TIntegerField;
    Ver_Est_ProdutosUNIDADE: TIBStringField;
    Ver_Est_ProdutosCTE: TSmallintField;
    Ver_Est_ProdutosCTIE: TSmallintField;
    Ver_Est_ProdutosQTDADE_1: TIBBCDField;
    Ver_Est_ProdutosQTDADE_2: TIBBCDField;
    Ver_Est_ProdutosLOCALIZACAO_1: TIBStringField;
    Ver_Est_ProdutosLOCALIZACAO_2: TIBStringField;
    Ver_Est_ProdutosLOCALIZACAO_3: TIBStringField;
    Ver_Est_ProdutosNEG_QTDADE_2: TIBStringField;
    Ver_Est_ProdutosQTDADE_MIN: TIntegerField;
    Ver_Est_ProdutosQTDADE_MAX: TIntegerField;
    Ver_Est_ProdutosCOMPLEMENTO_NF: TIBStringField;
    Ver_Est_ProdutosDT_ULT_COMPRA: TDateTimeField;
    Ver_Est_ProdutosQT_ULT_COMPRA: TIntegerField;
    Ver_Est_ProdutosDT_ULT_VENDA: TDateTimeField;
    Ver_Est_ProdutosMARGEM_BRUTA: TIBBCDField;
    Ver_Est_ProdutosPRC_REPOS: TIBBCDField;
    Ver_Est_ProdutosPRC_CUSTO_ANT: TIBBCDField;
    Ver_Est_ProdutosPRC_CUSTO_MED: TIBBCDField;
    Ver_Est_ProdutosPRC_VENDA: TIBBCDField;
    Ver_Est_ProdutosPRC_VENDA_ANT: TIBBCDField;
    Ver_Est_ProdutosPRC_VENDA_MED: TIBBCDField;
    Ver_Est_ProdutosALIQUOTA_ECF: TIBStringField;
    Ver_Est_ProdutosORIGEM: TSmallintField;
    Ver_Est_ProdutosPESO_LIQ: TIBBCDField;
    Ver_Est_ProdutosPERC_FRETE: TIBBCDField;
    Ver_Est_ProdutosIPI: TIBBCDField;
    Ver_Est_ProdutosVOLUME: TIBBCDField;
    Ver_Est_ProdutosPROD_PESAVEL: TIBStringField;
    Ver_Est_ProdutosETIQUETA_ENT: TIBStringField;
    Ver_Est_ProdutosATIVO: TIBStringField;
    Ver_Est_ProdutosULTIMO_FORNECEDOR: TIntegerField;
    Ver_Est_ProdutosFORNECEDOR: TIntegerField;
    Ver_Est_ProdutosSUBUNIDADE: TIntegerField;
    Ver_Est_ProdutosNOME_MARCA: TIBStringField;
    Ver_Est_ProdutosPRC_CUSTO_CODIF: TIBStringField;
    lkpUsuario: TIBQuery;
    lkpUsuarioUSUARIO: TIntegerField;
    lkpUsuarioLOGIN: TIBStringField;
    SelUsuario: TIBQuery;
    SelUsuarioCODIGO: TIntegerField;
    SelUsuarioLOGIN: TIBStringField;
    SelUsuarioNOME: TIBStringField;
    SelUsuarioPERFIL: TIntegerField;
    SelUsuarioSENHA: TIBStringField;
    Fat_VendasGrupoSelPRODUTO: TIBStringField;
    Fat_VendasGrupoSelGRUPO: TIntegerField;
    Fat_VendasGrupoSelCODIGO: TIntegerField;
    Fat_VendasGrupoSelDATA: TDateField;
    Fat_VendasGrupoSelPESSOA_FJ: TIntegerField;
    Fat_VendasGrupoSelNF: TIntegerField;
    Fat_VendasGrupoSelNATUREZA: TIntegerField;
    Fat_VendasGrupoSelNOME_RAZAO: TIBStringField;
    Fat_VendasGrupoSelNOME_GRUPO: TIBStringField;
    Fat_VendasGrupoSelNOME_PRODUTO: TIBStringField;
    Fat_VendasGrupoSelUNIDADE: TIBStringField;
    Fat_VendasGrupoSelSUBUNIDADE: TIntegerField;
    Fat_VendasGrupoSelQUANTIDADE: TIBBCDField;
    Fat_VendasGrupoSelPRC_UNITARIO: TIBBCDField;
    Fat_VendasGrupoSelDESCONTO: TIBBCDField;
    Fat_VendasGrupoSelVALOR: TIBBCDField;
    Fat_VendasGrupoSelVENDEDOR: TIntegerField;
    Fat_VendasGrupoSelFECHADA: TIBStringField;
    Fat_VendasGrupoSelCUSTO: TIBBCDField;
    Fat_VendasGrupoSelCOM_VENDA_VLR: TIBBCDField;
    Fat_VendasGrupoSelCOM_VENDA_PCT: TIBBCDField;
    Fat_VendasGrupoSelTOTAL_PRODUTO: TIBBCDField;
    Fat_VendasGrupoSelTOTAL_DESCONTO: TIBBCDField;
    Fat_VendasGrupoSelPARTICIP_LUCRO: TIBBCDField;
    Fat_VendasGrupoSelCOM_VISTA_VENDEDOR: TIBBCDField;
    Fat_VendasGrupoSelCOM_PRAZO_VENDEDOR: TIBBCDField;
    Fat_VendasGrupoSelUNITARIO: TIBBCDField;
    Fat_VendasGrupoSelCOMPUTA_VENDA: TIBStringField;
    Fat_VendasGrupoSelPAGA_COMISSAO: TIBStringField;
    Fat_VendasGrupoSelTotal: TFloatField;
    Fat_VendasGrupoSelecao: TIBQuery;
    Fat_VendasGrupoSelecaoTOTAL_DESCONTO: TIBBCDField;
    Fat_VendasGrupoSelecaoTOTAL_PRODUTO: TIBBCDField;
    Fat_VendasGrupoSelecaoTOTAL_CUSTO: TIBBCDField;
    Fat_VendasGrupoSelecaoTOTAL_QUANTIDADE: TIBBCDField;
    Fat_VendasGrupoSelecaoPRODUTO: TIBStringField;
    Fat_VendasGrupoSelecaoGRUPO: TIntegerField;
    Fat_VendasGrupoSelecaoNATUREZA: TIntegerField;
    Fat_VendasGrupoSelecaoNOME_GRUPO: TIBStringField;
    Fat_VendasGrupoSelecaoNOME_PRODUTO: TIBStringField;
    Fat_VendasGrupoSelecaoPRC_UNITARIO: TIBBCDField;
    Fat_VendasGrupoSelecaoCOM_VENDA_VLR: TIBBCDField;
    Fat_VendasGrupoSelecaoCOM_VENDA_PCT: TIBBCDField;
    Fat_VendasGrupoSelecaoPARTICIP_LUCRO: TIBBCDField;
    Fat_VendasGrupoSelecaoCOM_VISTA_VENDEDOR: TIBBCDField;
    Fat_VendasGrupoSelecaoCOM_PRAZO_VENDEDOR: TIBBCDField;
    Fat_VendasGrupoSelecaoCOMPUTA_VENDA: TIBStringField;
    Fat_VendasGrupoSelecaoPAGA_COMISSAO: TIBStringField;
    SelMecanico: TIBQuery;
    IBStringField1: TIBStringField;
    IntegerField1: TIntegerField;
    IBStringField2: TIBStringField;
    qryRelVendasGerais: TIBQuery;
    ACOMPANHAMENTO_VENDASCAIXA: TDateTimeField;
    ACOMPANHAMENTO_VENDASVALOR: TFloatField;
    Fat_VendasPorMarca_Total_Item: TFloatField;
    qryTtlContabil: TIBQuery;
    qryRelVendasGeraisN_DOCTO: TIntegerField;
    qryRelVendasGeraisNOME_RAZAO: TIBStringField;
    qryRelVendasGeraisDATA: TDateField;
    qryRelVendasGeraisCFOP: TIntegerField;
    qryRelVendasGeraisTIPO_VENDA: TIBStringField;
    qryRelVendasGeraisDATA_CAIXA: TDateField;
    qryRelVendasGeraisVLR_BRUTO: TIBBCDField;
    qryRelVendasGeraisVLR_DESC_ACRESC: TIBBCDField;
    qryRelVendasGeraisVLR_TOTAL: TIBBCDField;
    qryRelVendasGeraisVLR_BASE_ICM: TIBBCDField;
    qryRelVendasGeraisVLR_ICM: TIBBCDField;
    qryRelVendasGeraisVLR_ICM_SUB: TIBBCDField;
    qryRelVendasGeraisVLR_BASE_ICM_SUB: TIBBCDField;
    qryRelVendasGeraisCANCELADA: TIBStringField;
    qryTtlContabilCTE5VLRICMS: TIBBCDField;
    qryTtlContabilCTE5TOTAL: TIBBCDField;
    qryTtlContabilCTE5BASEICMS: TIBBCDField;
    qryTtlContabilCTEESTBASEICMS: TIBBCDField;
    qryTtlContabilCTEESTVLRICMS: TIBBCDField;
    qryTtlContabilCTEESTTOTAL: TIBBCDField;
    qryTtlContabilCTEINTBASEICMS: TIBBCDField;
    qryTtlContabilCTEINTVLRICMS: TIBBCDField;
    qryTtlContabilCTEINTTOTAL: TIBBCDField;
    qryTtlContabilCTE3BASEICMS: TIBBCDField;
    qryTtlContabilCTE3VLRICMS: TIBBCDField;
    qryTtlContabilCTE3TOTAL: TIBBCDField;
    qryRelVendasGeraisSTATUS: TIBStringField;
    qryRelVendasGeraisTIPO_DOC: TIntegerField;
    qryRelVendasGeraisCOD_VENDA: TIntegerField;
    Entradas_Produto: TIBQuery;
    Entradas_ProdutoNDOCTO: TIBStringField;
    Entradas_ProdutoPRODUTO: TIBStringField;
    Entradas_ProdutoUNIDADE: TIBStringField;
    Entradas_ProdutoQUANTIDADE: TIBBCDField;
    Entradas_ProdutoPRC_UNITARIO: TIBBCDField;
    Entradas_ProdutoPERC_LUCRO: TIBBCDField;
    Entradas_ProdutoPRC_VENDA: TIBBCDField;
    Entradas_ProdutoPRC_VENDA_ANT: TIBBCDField;
    Entradas_ProdutoPRC_CUSTO: TIBBCDField;
    Entradas_ProdutoICM: TIBBCDField;
    Entradas_ProdutoICM_SUBS: TIBBCDField;
    Entradas_ProdutoIPI: TIBBCDField;
    Entradas_ProdutoIPI_PRODUTO: TIBBCDField;
    Entradas_ProdutoTAXAS: TIBBCDField;
    Entradas_ProdutoDESCONTOS: TIBBCDField;
    Entradas_ProdutoEMBALAGEM: TIBBCDField;
    Entradas_ProdutoFRETE: TIBBCDField;
    Entradas_ProdutoSEGURO: TIBBCDField;
    Entradas_ProdutoNOME_PRODUTO: TIBStringField;
    Entradas_ProdutoSUBUNIDADE: TIntegerField;
    Entradas_ProdutoDATA_NF: TDateTimeField;
    Entradas_ProdutoDATA_REF: TDateTimeField;
    Entradas_ProdutoDATA_ENT: TDateTimeField;
    Entradas_ProdutoSERIE_NF: TIBStringField;
    Entradas_ProdutoNATUREZA: TIntegerField;
    Entradas_ProdutoNOME: TIBStringField;
    Fat_VendasVend_TotalJuros: TFloatField;
    Fat_VendasVend_TotalDesconto: TFloatField;
    qryComissaoVend: TIBQuery;
    qryComissaoVendCODIGO: TIntegerField;
    qryComissaoVendDATA: TDateField;
    qryComissaoVendPESSOA_FJ: TIntegerField;
    qryComissaoVendCLIENTE: TIBStringField;
    qryComissaoVendNATUREZA: TIntegerField;
    qryComissaoVendDOCTO: TIBStringField;
    qryComissaoVendTOTAL: TIBBCDField;
    qryComissaoVendPORCENTAGEM: TIBBCDField;
    qryComissaoVendDESC_ACRESC: TIBBCDField;
    qryComissaoVendLIQUIDO: TIBBCDField;
    qryComissaoVendVISTA: TIBBCDField;
    qryComissaoVendPRAZO: TIBBCDField;
    qryComissaoVendTIPO_MOV: TIBStringField;
    qryComissaoRec: TIBQuery;
    qryComissaoTrc: TIBQuery;
    qryComissaoTrcCODIGO: TIntegerField;
    qryComissaoTrcDATA: TDateField;
    qryComissaoTrcCLIENTE: TIBStringField;
    qryComissaoTrcPESSOA_FJ: TIntegerField;
    qryComissaoTrcTOTAL: TIBBCDField;
    qryComissaoTrcDESC_ACRESC: TIBBCDField;
    qryComissaoTrcTOTAL_2: TIBBCDField;
    qryComissaoTrcDESC_ACRESC_2: TIBBCDField;
    qryComissaoTrcENTRADA: TIBBCDField;
    qryComissaoTrcVISTA: TIBBCDField;
    qryComissaoTrcTIPO_MOV: TIBStringField;
    qryComissaoTrcLIQUIDO: TIBBCDField;
    qryComissaoTrcPRAZO: TIBBCDField;
    qryVendasPeriodo: TIBQuery;
    qryVendasPeriodoCODIGO: TIntegerField;
    qryVendasPeriodoTOTAL: TIBBCDField;
    qryVendasPeriodoTOTAL_BRUTO: TIBBCDField;
    qryVendasPeriodoDESCONTO: TIBBCDField;
    qryVendasPeriodoFECHADA: TIBStringField;
    qryVendasPeriodoHISTORICO: TIBStringField;
    qryVendasPeriodoPESSOA_FJ: TIntegerField;
    qryVendasPeriodoUSUARIO: TIntegerField;
    qryVendasPeriodoNATUREZA: TIntegerField;
    qryVendasPeriodoNUM_NF: TIntegerField;
    qryVendasPeriodoNUM_CUPOM: TIntegerField;
    qryVendasPeriodoOBSERVACAO: TIBStringField;
    qryVendasPeriodoTIPO_MOV: TIBStringField;
    qryVendasPeriodoNOME_CONSUMIDOR: TIBStringField;
    qryVendasPeriodoVENDEDOR: TIntegerField;
    qryVendasPeriodoCANCELADA: TIBStringField;
    qryVendasPeriodoPRD_COD: TIBStringField;
    qryVendasPeriodoPRD_NOME: TIBStringField;
    qryVendasPeriodoPRD_UNIDADE: TIBStringField;
    qryVendasPeriodoPRD_SUBUNIDADE: TIntegerField;
    qryVendasPeriodoPRD_QUANTIDADE: TIBBCDField;
    qryVendasPeriodoPRD_PRC_UNITARIO: TIBBCDField;
    qryVendasPeriodoPRD_DESCONTO: TIBBCDField;
    qryVendasPeriodoPRD_TOTAL: TIBBCDField;
    qryVendasPeriodoVLR_VISTA: TIBBCDField;
    qryVendasPeriodoVLR_PRAZO: TIBBCDField;
    qryVendasPeriodoDOCTO: TIBStringField;
    qryVendasPeriodoSint: TIBQuery;
    qryVendasPeriodoSintCODIGO: TIntegerField;
    qryVendasPeriodoSintTOTAL: TIBBCDField;
    qryVendasPeriodoSintTOTAL_BRUTO: TIBBCDField;
    qryVendasPeriodoSintDESCONTO: TIBBCDField;
    qryVendasPeriodoSintFECHADA: TIBStringField;
    qryVendasPeriodoSintPESSOA_FJ: TIntegerField;
    qryVendasPeriodoSintUSUARIO: TIntegerField;
    qryVendasPeriodoSintNATUREZA: TIntegerField;
    qryVendasPeriodoSintNUM_NF: TIntegerField;
    qryVendasPeriodoSintNUM_CUPOM: TIntegerField;
    qryVendasPeriodoSintOBSERVACAO: TIBStringField;
    qryVendasPeriodoSintTIPO_MOV: TIBStringField;
    qryVendasPeriodoSintNOME_CONSUMIDOR: TIBStringField;
    qryVendasPeriodoSintVENDEDOR: TIntegerField;
    qryVendasPeriodoSintCANCELADA: TIBStringField;
    qryVendasPeriodoSintVLR_VISTA: TIBBCDField;
    qryVendasPeriodoSintVLR_PRAZO: TIBBCDField;
    qryVendasPeriodoSintDOCTO: TIBStringField;
    qryTtlContabilCTEDIVBASEICMS: TIBBCDField;
    qryTtlContabilCTEDIVVLRICMS: TIBBCDField;
    qryTtlContabilCTEDIVTOTAL: TIBBCDField;
    qryRelVendasGeraisPESSOA_FJ: TIntegerField;
    EntradasNDOCTOINT2: TIntegerField;
    qryComissaoGeral: TIBQuery;
    qryComissaoGeralCOMISSAO_VISTA: TIBBCDField;
    qryComissaoGeralCOMISSAO_PRAZO: TIBBCDField;
    qryComissaoGeralCOM_VISTA: TIBBCDField;
    qryComissaoGeralCOM_PRAZO: TIBBCDField;
    qrySeriesNF: TIBQuery;
    qrySeriesNFCLIENTE: TIBStringField;
    qrySeriesNFCONCATENATION: TIBStringField;
    qrySeriesNFENDERECO: TIBStringField;
    qrySeriesNFCOD_VENDA: TIntegerField;
    qrySeriesNFDT_VENDA: TDateTimeField;
    qrySeriesNFDATA_CAIXA: TDateTimeField;
    qrySeriesNFDESC_ACRES: TFloatField;
    qrySeriesNFTOTAL: TFloatField;
    qrySeriesNFNUM_CUPOM: TIntegerField;
    qrySeriesNFNUM_NF: TIntegerField;
    qrySeriesNFNOME_CONSUMIDOR: TIBStringField;
    qrySeriesNFNOME_VENDEDOR: TIBStringField;
    qrySeriesNFFORMA_PAGTO: TIBStringField;
    qrySeriesNFSEQUENCIA: TSmallintField;
    qrySeriesNFNOME: TIBStringField;
    qrySeriesNFQUANTIDADE: TFloatField;
    qrySeriesNFPRC_UNITARIO: TFloatField;
    qrySeriesNFTOTAL_ITEM: TFloatField;
    dsQrySeriesNF: TDataSource;
    qryTtlContabilCTEDEVBASEICMS: TIBBCDField;
    qryTtlContabilCTEDEVVLRICMS: TIBBCDField;
    qryTtlContabilCTEDEVTOTAL: TIBBCDField;
    qryRelDevolucoes: TIBQuery;
    IntegerField2: TIntegerField;
    IBStringField3: TIBStringField;
    DateField1: TDateField;
    IntegerField3: TIntegerField;
    IBStringField4: TIBStringField;
    DateField2: TDateField;
    IBBCDField1: TIBBCDField;
    IBBCDField2: TIBBCDField;
    IBBCDField3: TIBBCDField;
    IBBCDField4: TIBBCDField;
    IBBCDField5: TIBBCDField;
    IBBCDField6: TIBBCDField;
    IBBCDField7: TIBBCDField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    qryRelVendasProdutos: TIBQuery;
    Fat_VendasItensCUSTO_TOTAL: TFloatField;
    RelEntradasProdutos: TIBQuery;
    RelEntradasProdutosPRODUTO: TIBStringField;
    RelEntradasProdutosQTDE: TIBBCDField;
    RelEntradasProdutosPRECO_MEDIO: TIBBCDField;
    RelEntradasProdutosTOTAL: TFloatField;
    ClientesAlf: TIBQuery;
    ClientesAlfPESSOA: TIBStringField;
    ClientesAlfCODIGO: TIntegerField;
    ClientesAlfNOME_RAZAO: TIBStringField;
    ClientesAlfFANTASIA: TIBStringField;
    ClientesAlfENDERECO: TIBStringField;
    ClientesAlfNUMERO: TIBStringField;
    ClientesAlfCOMPLEMENTO: TIBStringField;
    ClientesAlfBAIRRO: TIBStringField;
    ClientesAlfCIDADE: TIBStringField;
    ClientesAlfCEP: TIBStringField;
    ClientesAlfCPF_CGC: TIBStringField;
    ClientesAlfCPF: TIBStringField;
    ClientesAlfRG_IE: TIBStringField;
    ClientesAlfFONE: TIBStringField;
    ClientesAlfFAX: TIBStringField;
    ClientesAlfCELULAR: TIBStringField;
    ClientesAlfEMAIL: TIBStringField;
    ClientesAlfNOME_VENDEDOR: TIBStringField;
    ClientesAlfNOME_FORMA_PAGTO: TIBStringField;
    ClientesAlfPRAZO: TIntegerField;
    ClientesAlfCOMPRADOR: TIBStringField;
    ClientesAlfDT_CADASTRO: TDateTimeField;
    ClientesAlfBLOQUEADO: TIBStringField;
    ClientesAlfNOME_CLASSIF: TIBStringField;
    ClientesAlfCOD_CLASSIF: TIntegerField;
    ClientesAlfCOD_VENDEDOR: TIntegerField;
    ClientesAlfREGIAO: TIntegerField;
    ClientesAlfASSINA_NOTA: TIBStringField;
    ClientesAlfUF: TIBStringField;
    ClientesAlfDT_NASCIMENTO: TDateTimeField;
    ClientesAlfFREQUENCIA: TIBStringField;
    ClientesAlfATIVIDADE: TIBStringField;
    VER_FAT_VENDAS_ANALISESOMA: TIBBCDField;
    VER_FAT_VENDAS_ANALISEMES: TIntegerField;
    VER_FAT_VENDAS_ANALISEANO: TIntegerField;
    VER_FAT_VENDAS_ANALISE_CUSTOSSOMA: TIBBCDField;
    VER_FAT_VENDAS_ANALISE_CUSTOSMES: TIntegerField;
    VER_FAT_VENDAS_ANALISE_CUSTOSANO: TIntegerField;
    VER_FIN_PAGAS_ANALISESOMA: TIBBCDField;
    VER_FIN_PAGAS_ANALISEMES: TIntegerField;
    VER_FIN_PAGAS_ANALISEANO: TIntegerField;
    VER_FIN_PAGAS_ANALISETIPO_CENTRO: TIBStringField;
    VER_FIN_PAGAS_ANALISENOME: TIBStringField;
    qryMaxMin: TIBQuery;
    qryMaxMinPRD_EST_FISICO: TIBBCDField;
    qryMaxMinPRD_PRODUTO: TIBStringField;
    qryMaxMinPRD_GRUPO: TIBStringField;
    qryMaxMinPRD_SUB_GRUPO: TIBStringField;
    qryMaxMinPRD_DT_ULTCOMPRA: TDateField;
    qryMaxMinPRD_DT_ULTVENDA: TDateField;
    qryMaxMinPRD_ESTOQUE: TIBBCDField;
    dsEntradasProd: TDataSource;
    SelProdutos_Cod_Nome: TStringField;
    ListaPrecosAZMARCA: TIBStringField;
    qryRelEntProd: TIBQuery;
    qryRelEntProdFORNECEDOR: TIBStringField;
    qryRelEntProdDATA_NF: TDateField;
    qryRelEntProdPRODUTO: TIBStringField;
    qryRelEntProdNUM_NF: TIBStringField;
    qryRelEntProdQTDE: TIBBCDField;
    qryRelEntProdVLR_UNITARIO: TIBBCDField;
    qryRelEntProdTOTAL_ITEM: TIBBCDField;
    qryRelEntProdORIGEM: TIBStringField;
    qryRelEntProdDESCONTO_NOTA: TIBBCDField;
    qryRelEntProdTOTAL_NOTA: TIBBCDField;
    qryRelEntProdCOD_FORN: TIntegerField;
    qryRelResEnt: TIBQuery;
    qryRelResEntPRODUTO: TIBStringField;
    qryRelResEntQTDE: TIBBCDField;
    qryRelResEntTOTAL: TIBBCDField;
    qryRelEntProdTotal_Liquido: TFloatField;
    qryRelEntProdAQUI: TIBStringField;
    qryRelEntProdCFOP: TIntegerField;
    qryRelCotacoes: TIBQuery;
    qryRelCotacoesDATA: TDateTimeField;
    qryRelCotacoesCODIGO: TIntegerField;
    qryRelCotacoesDESC_ACRESC: TFloatField;
    qryRelCotacoesTOTAL: TFloatField;
    qryRelCotacoesNOME: TIBStringField;
    qryRelCotacoesFORNECEDOR: TIBStringField;
    qryRelCotacoesNOME_PRODUTO: TIBStringField;
    qryRelCotacoesPORC_DESC: TFloatField;
    qryRelCotacoesPRC_UNIT_ORIGINAL: TFloatField;
    qryRelCotacoesPRC_UNITARIO: TFloatField;
    qryRelCotacoesPRC_CUSTO: TFloatField;
    qryRelCotacoesQUANTIDADE: TFloatField;
    qryRelCotacoesUNIDADE: TIBStringField;
    qryRelCotacoesSUBUNIDADE: TIntegerField;
    qryRelCotacoesFECHADO: TIBStringField;
    lkpTransportadora: TIBQuery;
    lkpFornecedor: TIBQuery;
    lkpFornecedorPESSOA_FJ: TIntegerField;
    lkpFornecedorNOME_RAZAO: TIBStringField;
    lkpTransportadoraCODIGO: TIntegerField;
    lkpTransportadoraNOME: TIBStringField;
    Fat_VendasMarcaCODIGO_VD: TIntegerField;
    Fat_VendasMarcaQUANTIDADE: TIBBCDField;
    Fat_VendasMarcaUNITARIO: TIBBCDField;
    Fat_VendasMarcaDESCONTO: TIBBCDField;
    Fat_VendasMarcaTOTAL_ITEM: TIBBCDField;
    Fat_VendasMarcaVENDEDOR: TIntegerField;
    Fat_VendasMarcaFECHADA: TIBStringField;
    Fat_VendasMarcaCLIENTE: TIBStringField;
    Fat_VendasMarcaCOD_MARCA: TIntegerField;
    Fat_VendasMarcaMARCA: TIBStringField;
    Fat_VendasMarcaN_DOCTO: TIntegerField;
    Fat_VendasMarcaDATA_CX: TDateField;
    Fat_VendasMarcaDATA_VD: TDateField;
    Fat_VendasMarcaCFOP: TIntegerField;
    Fat_VendasMarcaUND: TIBStringField;
    Fat_VendasMarcaPRODUTO: TIBStringField;
    dsVendaMarca: TDataSource;
    Fat_VendasMarca_Total_Descto: TFloatField;
    qryRelVendasCidade: TIBQuery;
    qryRelVendasCidadeCODIGO: TIntegerField;
    qryRelVendasCidadeDATA: TDateTimeField;
    qryRelVendasCidadeFECHADA: TIBStringField;
    qryRelVendasCidadeHISTORICO: TIBStringField;
    qryRelVendasCidadePESSOA_FJ: TIntegerField;
    qryRelVendasCidadePESSOA_RAZAO: TIBStringField;
    qryRelVendasCidadeUSUARIO: TIntegerField;
    qryRelVendasCidadeNATUREZA: TIntegerField;
    qryRelVendasCidadeNOME_NATUREZA: TIBStringField;
    qryRelVendasCidadeENVIADA_CX: TIBStringField;
    qryRelVendasCidadeFORMA_PGTO: TIntegerField;
    qryRelVendasCidadeNUM_NF: TIntegerField;
    qryRelVendasCidadeNUM_CUPOM: TIntegerField;
    qryRelVendasCidadePROPRIEDADE: TIntegerField;
    qryRelVendasCidadeCONVENIADO: TIntegerField;
    qryRelVendasCidadeTIPO_DOCTO: TIBStringField;
    qryRelVendasCidadeLOCAL_COBRANCA: TIntegerField;
    qryRelVendasCidadeDESC_ACRES: TIBBCDField;
    qryRelVendasCidadeENTRADA: TIBBCDField;
    qryRelVendasCidadeDINHEIRO: TIBBCDField;
    qryRelVendasCidadeCHEQUE: TIBBCDField;
    qryRelVendasCidadeCARTAO: TIBBCDField;
    qryRelVendasCidadeTICKET: TIBBCDField;
    qryRelVendasCidadeTOTAL: TIBBCDField;
    qryRelVendasCidadeVLRLIQUIDO: TIBBCDField;
    qryRelVendasCidadeOBSERVACAO: TIBStringField;
    qryRelVendasCidadeVLR_PARC_LC: TIBBCDField;
    qryRelVendasCidadeTERCEIRO: TIntegerField;
    qryRelVendasCidadeCARGA: TIntegerField;
    qryRelVendasCidadeVOLUME: TIBBCDField;
    qryRelVendasCidadePESO: TIBBCDField;
    qryRelVendasCidadeREQUISICAO: TIBStringField;
    qryRelVendasCidadeDESCRICAO: TBlobField;
    qryRelVendasCidadeTIPO_VENDA: TIBStringField;
    qryRelVendasCidadeNOME_CONSUMIDOR: TIBStringField;
    qryRelVendasCidadeORCAMENTO: TIntegerField;
    qryRelVendasCidadeVENDEDO: TIntegerField;
    qryRelVendasCidadeCODIGO_CIDADE: TIntegerField;
    qryRelVendasCidadeNOME_VENDEDOR: TIBStringField;
    Fat_VendasMarcaPESO: TIBBCDField;
    Fat_VendasMarcaTOTAL_PESO: TIBBCDField;
    Fat_VendasMarcaSEQUENCIA: TIntegerField;
    qryRelPessoaConveio: TIBQuery;
    qryRelPessoaConveioCODIGO: TIntegerField;
    qryRelPessoaConveioNOME_RAZAO: TIBStringField;
    qryRelPessoaConveioFANTASIA: TIBStringField;
    qryRelPessoaConveioCOD_ATIVIDADE: TIntegerField;
    qryRelPessoaConveioCOD_CLASSIF: TIntegerField;
    qryRelPessoaConveioPRAZO: TIntegerField;
    qryRelPessoaConveioCOMPRADOR: TIBStringField;
    qryRelPessoaConveioATIVIDADE: TIBStringField;
    qryRelPessoaConveioNOME_VENDEDOR: TIBStringField;
    qryRelPessoaConveioCOD_ENDERECO: TIntegerField;
    qryRelPessoaConveioCOD_VENDEDOR: TIntegerField;
    qryRelPessoaConveioNOME_CLASSIF: TIBStringField;
    qryRelPessoaConveioENDERECO: TIBStringField;
    qryRelPessoaConveioNOME_FORMA_PAGTO: TIBStringField;
    qryRelPessoaConveioNUMERO: TIBStringField;
    qryRelPessoaConveioCOMPLEMENTO: TIBStringField;
    qryRelPessoaConveioCOD_BAIRRO: TIntegerField;
    qryRelPessoaConveioBAIRRO: TIBStringField;
    qryRelPessoaConveioCOD_CIDADE: TIntegerField;
    qryRelPessoaConveioCIDADE: TIBStringField;
    qryRelPessoaConveioUF: TIBStringField;
    qryRelPessoaConveioBLOQUEADO: TIBStringField;
    qryRelPessoaConveioCEP: TIBStringField;
    qryRelPessoaConveioFONE: TIBStringField;
    qryRelPessoaConveioFAX: TIBStringField;
    qryRelPessoaConveioCELULAR: TIBStringField;
    qryRelPessoaConveioPESSOA: TIBStringField;
    qryRelPessoaConveioCPF_CGC: TIBStringField;
    qryRelPessoaConveioRG_IE: TIBStringField;
    qryRelPessoaConveioCONTATO: TIBStringField;
    qryRelPessoaConveioDT_NASCIMENTO: TDateField;
    qryRelPessoaConveioDT_CADASTRO: TDateField;
    qryRelPessoaConveioEMAIL: TIBStringField;
    qryRelPessoaConveioOBS: TBlobField;
    qryRelPessoaConveioREGIAO: TIntegerField;
    qryRelPessoaConveioINSC_MUNIC: TIBStringField;
    qryRelPessoaConveioORDEM: TIntegerField;
    qryRelPessoaConveioFREQUENCIA: TIBStringField;
    qryRelPessoaConveioASSINA_NOTA: TIBStringField;
    qryRelPessoaCheque: TIBQuery;
    qryRelPessoaChequeCODIGO: TIntegerField;
    qryRelPessoaChequeNOME_RAZAO: TIBStringField;
    qryRelPessoaChequeFANTASIA: TIBStringField;
    qryRelPessoaChequeCOD_ATIVIDADE: TIntegerField;
    qryRelPessoaChequeCOD_CLASSIF: TIntegerField;
    qryRelPessoaChequePRAZO: TIntegerField;
    qryRelPessoaChequeCOMPRADOR: TIBStringField;
    qryRelPessoaChequeATIVIDADE: TIBStringField;
    qryRelPessoaChequeNOME_VENDEDOR: TIBStringField;
    qryRelPessoaChequeCOD_ENDERECO: TIntegerField;
    qryRelPessoaChequeCOD_VENDEDOR: TIntegerField;
    qryRelPessoaChequeNOME_CLASSIF: TIBStringField;
    qryRelPessoaChequeENDERECO: TIBStringField;
    qryRelPessoaChequeNOME_FORMA_PAGTO: TIBStringField;
    qryRelPessoaChequeNUMERO: TIBStringField;
    qryRelPessoaChequeCOMPLEMENTO: TIBStringField;
    qryRelPessoaChequeCOD_BAIRRO: TIntegerField;
    qryRelPessoaChequeBAIRRO: TIBStringField;
    qryRelPessoaChequeCOD_CIDADE: TIntegerField;
    qryRelPessoaChequeCIDADE: TIBStringField;
    qryRelPessoaChequeUF: TIBStringField;
    qryRelPessoaChequeBLOQUEADO: TIBStringField;
    qryRelPessoaChequeCEP: TIBStringField;
    qryRelPessoaChequeFONE: TIBStringField;
    qryRelPessoaChequeFAX: TIBStringField;
    qryRelPessoaChequeCELULAR: TIBStringField;
    qryRelPessoaChequePESSOA: TIBStringField;
    qryRelPessoaChequeCPF_CGC: TIBStringField;
    qryRelPessoaChequeRG_IE: TIBStringField;
    qryRelPessoaChequeCONTATO: TIBStringField;
    qryRelPessoaChequeDT_NASCIMENTO: TDateField;
    qryRelPessoaChequeDT_CADASTRO: TDateField;
    qryRelPessoaChequeEMAIL: TIBStringField;
    qryRelPessoaChequeOBS: TBlobField;
    qryRelPessoaChequeREGIAO: TIntegerField;
    qryRelPessoaChequeINSC_MUNIC: TIBStringField;
    qryRelPessoaChequeASSINA_NOTA: TIBStringField;
    qryRelPessoaChequeORDEM: TIntegerField;
    qryRelPessoaChequeFREQUENCIA: TIBStringField;
    Fat_VendasVendSERIE: TIBStringField;
    Fat_VendasVendCONTA_CAIXA: TIntegerField;
    Fat_VendasVendVLR_VISTA: TIBBCDField;
    Fat_VendasVendVLR_PRAZO: TIBBCDField;
    qryRelComFaixa: TIBQuery;
    qryRelComFaixaCODIGO: TIntegerField;
    qryRelComFaixaPESSOA_FJ: TIntegerField;
    qryRelComFaixaPESSOA_RAZAO: TIBStringField;
    qryRelComFaixaDATA_CAIXA: TDateField;
    qryRelComFaixaDATA: TDateField;
    qryRelComFaixaDESC_ACRES: TIBBCDField;
    qryRelComFaixaDINHEIRO: TIBBCDField;
    qryRelComFaixaCHEQUE: TIBBCDField;
    qryRelComFaixaCARTAO: TIBBCDField;
    qryRelComFaixaTICKET: TIBBCDField;
    qryRelComFaixaTOTAL: TIBBCDField;
    qryRelComFaixaTROCO: TIBBCDField;
    qryRelComFaixaVLRLIQUIDO: TIBBCDField;
    qryRelComFaixaTIPO_VENDA: TIBStringField;
    qryRelComFaixaNOME_CONSUMIDOR: TIBStringField;
    qryRelComFaixaVENDEDO: TIntegerField;
    qryRelComFaixaNOME_VENDEDOR: TIBStringField;
    qryRelComFaixaPRODUTO: TIBStringField;
    qryRelComFaixaQUANTIDADE: TIBBCDField;
    qryRelComFaixaPRC_UNITARIO: TIBBCDField;
    qryRelComFaixaDESCONTO: TIBBCDField;
    qryRelComFaixaCOM_VISTA: TIBBCDField;
    qryRelComFaixaCOM_PRAZO: TIBBCDField;
    qryRelComFaixaFECHADA: TIBStringField;
    qryRelComFaixaVLR_VISTA: TIBBCDField;
    qryRelComFaixaVLR_PRAZO: TIBBCDField;
    qryRelComFaixaVLR_ITEM: TIBBCDField;
    dsRelComFaixa: TDataSource;
    qryRelComFaixaNOME_PRODUTO: TIBStringField;
    qryRelComFaixaCOM_TOTAL: TIBBCDField;
    qryRelCliConsumidor: TIBQuery;
    qryRelCliConsumidorDATA: TDateTimeField;
    qryRelCliConsumidorFORMA_PGTO: TIntegerField;
    qryRelCliConsumidorNUM_CUPOM: TIntegerField;
    qryRelCliConsumidorDESC_ACRES: TFloatField;
    qryRelCliConsumidorNOME_CONSUMIDOR: TIBStringField;
    qryRelCliConsumidorTOTAL_NOTA: TFloatField;
    qryRelCliConsumidorDATA_CAIXA: TDateTimeField;
    qryRelCliConsumidorDOCUMENTOS_CONSUMIDOR: TIBStringField;
    qryRelCliConsumidorENDERECO_CONSUMIDOR: TIBStringField;
    qryRelCliConsumidorCIDADE_CONSUMIDOR: TIBStringField;
    qryRelCliConsumidorFONE_CONSUMIDOR: TIBStringField;
    qryRelCliConsumidorBAIRRO_CONSUMIDOR: TIBStringField;
    dsCliConsumidor: TDataSource;
    qryRelCliConsumidorCODIGO: TIntegerField;
    qryRelCliConsumidorTOTAL: TFloatField;
    qryRelEntProdNDOC: TIBStringField;
    MalaDireta: TIBDataSet;
    MalaDiretaCNPJ: TIBStringField;
    MalaDiretaCONFIG_MALADIRETA: TMemoField;
    qryRelAuxContagem: TIBQuery;
    qryRelAuxContagemPRD_PRODUTO: TIBStringField;
    qryRelAuxContagemUNIDADE: TIBStringField;
    qryRelAuxContagemPRD_GRUPO: TIBStringField;
    qryRelAuxContagemPRD_SUB_GRUPO: TIBStringField;
    qryRelCliConsumidorLOGIN: TIBStringField;
    qryRelCliConsumidorCOD_USER: TIntegerField;
    SelBairro: TIBQuery;
    IntegerField7: TIntegerField;
    IBStringField7: TIBStringField;
    SelModelos: TIBQuery;
    SelModelosCODIGO: TIntegerField;
    SelModelosNOME: TIBStringField;
    SelLogradouro: TIBQuery;
    SelLogradouroCODIGO: TIntegerField;
    SelLogradouroNOME: TIBStringField;
    SelRegiao: TIBQuery;
    SelVendedor: TIBQuery;
    IBStringField9: TIBStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    IBStringField10: TIBStringField;
    SelVendedor2CODIGO: TIntegerField;
    SelVendedor2NOME: TIBStringField;
    SelTipoContrato: TIBQuery;
    IntegerField11: TIntegerField;
    IBStringField11: TIBStringField;
    Fat_VendasComissaoVENDEDO: TIntegerField;
    Fat_VendasComissaoOBSERVACAO: TIBStringField;
    Fat_VendasVendOBSERVACAO: TIBStringField;
    Produtos_MarcaCOD_GRUPO: TIntegerField;
    Produtos_MarcaCOD_SUB_GRUPO: TIntegerField;
    Produtos_MarcaGRUPO: TIBStringField;
    Produtos_MarcaSUB_GRUPO: TIBStringField;
    qryComissaoRecCODIGO: TIntegerField;
    qryComissaoRecDATA: TDateField;
    qryComissaoRecPESSOA_FJ: TIntegerField;
    qryComissaoRecCLIENTE: TIBStringField;
    qryComissaoRecDOCTO: TIBStringField;
    qryComissaoRecTOTAL: TIBBCDField;
    qryComissaoRecCOD_REC: TIntegerField;
    qryComissaoRecCOD_ORIGEM: TIntegerField;
    qryComissaoRecORIGEM: TIBStringField;
    qryComissaoRecLIQUIDO: TIBBCDField;
    qryComissaoRecDESCONTO: TIBBCDField;
    qryComissaoRecJUROS: TIBBCDField;
    qryRelVendasProdutosCOD_PRODUTO: TIBStringField;
    qryRelVendasProdutosPRODUTO: TIBStringField;
    qryRelVendasProdutosQTDE: TIBBCDField;
    qryRelVendasProdutosPRECO_MEDIO: TIBBCDField;
    qryRelVendasProdutosTOTAL: TFloatField;
    qryRelVendasTerceiros: TIBQuery;
    qryRelVendasTerceirosDATA_VD: TDateField;
    qryRelVendasTerceirosVLR_TOTAL: TFloatField;
    qryRelVendasTerceirosVLR_DESCONTO: TFloatField;
    qryRelVendasTerceirosVLR_LIQUIDO: TFloatField;
    qryRelVendasTerceirosTTL_CUSTO_ITENS: TFloatField;
    qryRelVendasTerceirosLB_PCT: TFloatField;
    qryRelVendasTerceirosLB_VLR: TFloatField;
    qryRelVendasTerceirosCOD_VENDEDOR: TIntegerField;
    qryRelVendasTerceirosVENDEDOR: TIBStringField;
    qryRelVendasTerceirosCODIGO: TIntegerField;
    qryRelVendasTerceirosCOD_TERCEIRO: TIntegerField;
    qryRelVendasTerceirosTERCEIRO: TIBStringField;
    qryRelVendasTerceirosCOD_CLIENTE: TIntegerField;
    qryRelVendasTerceirosCLIENTE: TIBStringField;
    qryRelVendasTerceirosCOD_FORNECEDOR: TIntegerField;
    qryRelVendasTerceirosCOD_MARCA: TIntegerField;
    qryRelVendasTerceirosCOD_SUBGRUPO: TIntegerField;
    qryRelVendasTerceirosCOD_PRODUTO: TIBStringField;
    qryRelVendasTerceirosPRODUTO: TIBStringField;
    qryRelVendasTerceirosProduto2: TIBStringField;
    qryRelVendasTerceirosCOM_VISTA: TFloatField;
    qryRelVendasTerceirosCOM_PRAZO: TFloatField;
    qryRelVendasTerceirosTotalComissao: TFloatField;
    SelClassificao: TIBQuery;
    IntegerField12: TIntegerField;
    IBStringField12: TIBStringField;
    SelLocalCob: TIBQuery;
    SelLocalCobCODIGO: TIntegerField;
    SelLocalCobNOME: TIBStringField;
    qryRelReceber: TIBQuery;
    SelTipoDocto: TIBQuery;
    qryRelRecebidas: TIBQuery;
    qryRelRecebidasCNPJ: TIBStringField;
    qryRelRecebidasCODIGO: TIntegerField;
    qryRelRecebidasANO: TSmallintField;
    qryRelRecebidasCODIGO_CR: TIntegerField;
    qryRelRecebidasANO_CR: TSmallintField;
    qryRelRecebidasUSUARIO: TIntegerField;
    qryRelRecebidasDT_BAIXA: TDateTimeField;
    qryRelRecebidasHISTORICO_BX: TIBStringField;
    qryRelRecebidasVLR_BAIXA: TFloatField;
    qryRelRecebidasJUROS: TFloatField;
    qryRelRecebidasDESCONTOS: TFloatField;
    qryRelRecebidasPLANILHA: TIntegerField;
    qryRelRecebidasTAXA_JUROS: TFloatField;
    qryRelRecebidasTIPO_JUROS: TIBStringField;
    qryRelRecebidasPESSOA_FJ: TIntegerField;
    qryRelRecebidasDT_EMISSAO: TDateTimeField;
    qryRelRecebidasDT_VENCTO: TDateTimeField;
    qryRelRecebidasDT_LANCTO: TDateTimeField;
    qryRelRecebidasDOCTO: TIBStringField;
    qryRelRecebidasPARCELA: TIBStringField;
    qryRelRecebidasHISTORICO: TIBStringField;
    qryRelRecebidasVALOR: TFloatField;
    qryRelRecebidasVLR_PARCIAL: TFloatField;
    qryRelRecebidasJUROS_REC: TFloatField;
    qryRelRecebidasDESCONTOS_REC: TFloatField;
    qryRelRecebidasBOLETO: TIBStringField;
    qryRelRecebidasORIGEM: TIBStringField;
    qryRelRecebidasCODIGO_VN: TIntegerField;
    qryRelRecebidasANO_VN: TSmallintField;
    qryRelRecebidasAVISO: TIntegerField;
    qryRelRecebidasDT_AVISO: TDateTimeField;
    qryRelRecebidasFATURA: TIntegerField;
    qryRelRecebidasNOME: TIBStringField;
    qryRelRecebidasNUMBOLETO: TIntegerField;
    qryRelRecebidasNUMDUPLICATA: TIntegerField;
    qryRelRecebidasCONTA: TIntegerField;
    qryRelRecebidasTURNO: TIntegerField;
    qryRelRecebidasCOBRADOR: TIntegerField;
    qryRelRecebidasLOCAL_COBRANCA: TIntegerField;
    qryRelRecebidasCODIGO_TRC: TIntegerField;
    qryRelRecebidasVLR_ORIG_ALT: TIBStringField;
    qryRelRecebidasBAIXA_BLT: TIBStringField;
    qryRelRecebidasBLT_NOSSO_NUM: TLargeintField;
    qryRelRecebidasBLT_BANCO: TIntegerField;
    qryRelRecebidasBLT_REM_GERADA: TIBStringField;
    dsRecLink: TDataSource;
    qryRelCobRec: TIBQuery;
    qryRelCobRecCNPJ: TIBStringField;
    qryRelCobRecPESSOA_FJ: TIntegerField;
    qryRelCobRecDATA_COBRANCA: TDateTimeField;
    qryRelCobRecRECEBER: TIntegerField;
    qryRelCobRecORIGEM: TIBStringField;
    qryRelCobRecMOTIVO: TIntegerField;
    qryRelCobRecCOBRAR_EM: TDateTimeField;
    qryRelCobRecHISTORICO: TIBStringField;
    qryRelCobRecPAGO_EM: TDateTimeField;
    qryRelCobRecNOME_MOTIVO: TIBStringField;
    qryRelCobRecCOBRADOR: TIntegerField;
    qryRelCobRecNOME_COBRADOR: TIBStringField;
    qryRelCobRecANO: TIntegerField;
    qryRelCobRecSELECIONADO: TIBStringField;
    qryRelCobRecINDICE: TIBStringField;
    qryRelCobRecDT_INSERT: TDateTimeField;
    qryRelCobRecHR_COBRAR_EM: TTimeField;
    qryRelCobRecHR_COBRANCA: TTimeField;
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
    qryVendasPeriodoDATA: TDateTimeField;
    qryVendasPeriodoSintDATA: TDateField;
    qryVendasPeriodoSintDATA_CX: TDateField;
    qryRelEstoqueComp: TIBQuery;
    qryRelPagar: TIBQuery;
    qryRelPagarCOD_FORNECEDOR: TIntegerField;
    qryRelPagarFORNECEDOR: TIBStringField;
    qryRelPagarORIGEM: TIBStringField;
    qryRelPagarCOD_PAGAR: TIntegerField;
    qryRelPagarDOCTO: TIBStringField;
    qryRelPagarPARCELA: TIBStringField;
    qryRelPagarDT_EMISSAO: TDateTimeField;
    qryRelPagarDT_VENCTO: TDateTimeField;
    qryRelPagarDT_LANCTO: TDateTimeField;
    qryRelPagarVALOR_NOMINAL: TFloatField;
    qryRelPagarBX_PARCIAL: TFloatField;
    qryRelPagarHISTORICO: TIBStringField;
    qryRelPagarCIDADE: TIntegerField;
    qryRelPagarFONE: TIBStringField;
    qryRelPagarCONTATO: TIBStringField;
    qryRelPagas: TIBQuery;
    qryRelPagasCNPJ: TIBStringField;
    qryRelPagasCODIGO: TIntegerField;
    qryRelPagasANO: TSmallintField;
    qryRelPagasCODIGO_PG: TIntegerField;
    qryRelPagasANO_PG: TSmallintField;
    qryRelPagasUSUARIO: TIntegerField;
    qryRelPagasDT_BAIXA: TDateTimeField;
    qryRelPagasHISTORICO_BX: TIBStringField;
    qryRelPagasVLR_BAIXA: TFloatField;
    qryRelPagasJUROS: TFloatField;
    qryRelPagasDESCONTOS: TFloatField;
    qryRelPagasPLANILHA: TIntegerField;
    qryRelPagasTAXA_JUROS: TFloatField;
    qryRelPagasTIPO_JUROS: TIBStringField;
    qryRelPagasPESSOA_FJ: TIntegerField;
    qryRelPagasDT_EMISSAO: TDateTimeField;
    qryRelPagasDT_VENCTO: TDateTimeField;
    qryRelPagasDT_LANCTO: TDateTimeField;
    qryRelPagasDOCTO: TIBStringField;
    qryRelPagasPARCELA: TIBStringField;
    qryRelPagasHISTORICO: TIBStringField;
    qryRelPagasVALOR: TFloatField;
    qryRelPagasVLR_PARCIAL: TFloatField;
    qryRelPagasJUROS_PAG: TFloatField;
    qryRelPagasDESCONTOS_PAG: TFloatField;
    qryRelPagasBOLETO: TIBStringField;
    qryRelPagasORIGEM: TIBStringField;
    qryRelPagasCODIGO_ENT: TIntegerField;
    qryRelPagasANO_ENT: TSmallintField;
    qryRelPagasAVISO: TIntegerField;
    qryRelPagasDT_AVISO: TDateTimeField;
    qryRelPagasNOME: TIBStringField;
    qryRelPagasCENTRO_CUSTO: TIntegerField;
    qryRelPagasDUPLICATA: TIBStringField;
    qryRelPagasCONFERIDA: TIBStringField;
    qryRelPagasCONTA: TIntegerField;
    qryRelPagasTOTAL_ENTRADA: TFloatField;
    qryRelPagasTURNO: TIntegerField;
    qryRelPagasCONTABILIDADE: TIntegerField;
    dsPgLink: TDataSource;
    qryRelPagarCCT_CODIGO: TIntegerField;
    qryRelPagarCCT_NOME: TIBStringField;
    qryRelPagarcod_nome_fornecedor: TStringField;
    qryRelPagarDT_ULTIMA_BAIXA: TDateTimeField;
    qryRelPagarSaldo: TFloatField;
    qryRelENTPag: TIBQuery;
    qryRelENTPagFRETE_LF: TIBStringField;
    qryRelENTPagNATUREZA: TIntegerField;
    qryRelENTPagNDOCTO: TIBStringField;
    qryRelENTPagDATA_ENT: TDateTimeField;
    qryRelENTPagDATA_NF: TDateTimeField;
    qryRelENTPagDATA_REF: TDateTimeField;
    qryRelENTPagNOME: TIBStringField;
    qryRelENTPagVLR_PRODUTOS: TFloatField;
    qryRelENTPagVLR_PRODUTOS_LC: TFloatField;
    qryRelENTPagVLR_DESCONTO: TFloatField;
    qryRelENTPagVLR_EMBALAGEM: TFloatField;
    qryRelENTPagVLR_FRETE: TFloatField;
    qryRelENTPagVLR_SEGURO: TFloatField;
    qryRelENTPagVLR_IPI: TFloatField;
    qryRelENTPagVLR_IPI_LC: TFloatField;
    qryRelENTPagVLR_BC_ICM: TFloatField;
    qryRelENTPagPERC_ICM: TFloatField;
    qryRelENTPagVLR_ICM: TFloatField;
    qryRelENTPagVLR_ICM_SUBS: TFloatField;
    qryRelENTPagVLR_PARC_LC: TFloatField;
    qryRelENTPagTAXAS: TFloatField;
    qryRelENTPagQUANTIDADE: TFloatField;
    qryRelENTPagPRC_UNITARIO: TFloatField;
    qryRelENTPagDESCONTOS: TFloatField;
    qryRelENTPagCOD_PRODUTO: TIBStringField;
    qryRelENTPagPRODUTO: TIBStringField;
    qryRelENTPagTOTAL_ITEM: TFloatField;
    qryRelENTPagVLR_TOTAL_NF: TFloatField;
    SelRegiaoCNPJ: TIBStringField;
    SelRegiaoVENDEDOR: TIntegerField;
    SelRegiaoTERCEIRO: TIntegerField;
    SelRegiaoDESCRICAO: TIBStringField;
    SelRegiaoCODIGO: TIntegerField;
    SelRegiaoNOME: TIBStringField;
    qryRelReceberCOD_CLIENTE: TIntegerField;
    qryRelReceberCOD_RECEBER: TIntegerField;
    qryRelReceberDOCTO: TIBStringField;
    qryRelReceberTIPO_DOCTO: TIBStringField;
    qryRelReceberCLIENTE: TIBStringField;
    qryRelReceberHISTORICO: TIBStringField;
    qryRelReceberPARCELA: TIBStringField;
    qryRelReceberDT_EMISSAO: TDateField;
    qryRelReceberDT_VENCTO: TDateField;
    qryRelReceberDT_LANCTO: TDateField;
    qryRelReceberVALOR_NOMINAL: TFloatField;
    qryRelReceberBX_PARCIAL: TFloatField;
    qryRelReceberSALDO: TFloatField;
    qryRelReceberCOD_CLASSIFICACAO: TIntegerField;
    qryRelReceberCLASSIFICACAO: TIBStringField;
    qryRelReceberCOD_LOCALCOBRANCA: TIntegerField;
    qryRelReceberLOCALCOBRANCA: TIBStringField;
    qryRelReceberCOD_VENDEDOR: TIntegerField;
    qryRelReceberNOME_VENDEDOR: TIBStringField;
    qryRelReceberCOD_REGIAO: TIntegerField;
    qryRelReceberREGIAO: TIBStringField;
    qryRelReceberCOD_ROTA: TIntegerField;
    qryRelReceberROTA: TIBStringField;
    qryRelReceberFONE: TIBStringField;
    qryRelReceberCONTATO: TIBStringField;
    qryRelReceberLOCAL_TRABALHO: TIBStringField;
    qryRelReceberDATA_ULT_BX: TDateField;
    qryRelReceberJUROS: TFloatField;
    qryRelReceberMULTA: TFloatField;
    qryRelReceberDESCTO_RES: TFloatField;
    qryRelReceberARQ_MORTO: TIBStringField;
    qryRelReceberVENDA: TIntegerField;
    qryRelAuxContagemLOCALIZACAO_1: TIBStringField;
    qryRelAuxContagemLOCALIZACAO_2: TIBStringField;
    qryRelAuxContagemLOCALIZACAO_3: TIBStringField;
    qryRelEstoqueCompPRODUTO: TIBStringField;
    qryRelEstoqueCompCODIGO: TIntegerField;
    qryRelEstoqueCompPRD_NOME: TIBStringField;
    qryRelEstoqueCompMARCA: TIBStringField;
    qryRelEstoqueCompPSA_CODIGO: TIntegerField;
    qryRelEstoqueCompPSA_NOME_RAZAO: TIBStringField;
    qryRelEstoqueCompQUANTIDADE: TIBBCDField;
    qryRelEstoqueCompTOTAL_ITEM: TIBBCDField;
    qryRelEstoqueCompPRC_CUSTO: TIBBCDField;
    qryRelEstoqueCompCLIENTE: TIBStringField;
    qryRelReceberNOME_CLIENTE: TIBStringField;
    qryVendasPeriodoDATA_CX: TDateField;
    qryComissaoGeralTotalComissoes: TFloatField;
    qryRelVDRecNUM_NF: TIntegerField;
    qryRelEstoqueCompORIGEM: TIBStringField;
    ListaPrecosAZGRUPO: TIBStringField;
    ListaPrecosAZSGRUPO: TIBStringField;
    qryMaxMinPRD_ATIVO: TIBStringField;
    qryComissaoVendFORM_PAGTO: TIntegerField;
    qryComissaoVendVLR_COMISSAO: TIBBCDField;
    qryComissaoRecVLR_COMISSAO: TIBBCDField;
    qryComissaoRecPORCENTAGEM: TIBBCDField;
    qryComissaoRecNUM_NF: TIntegerField;
    qryRelReceberVLR_COMISSAO: TFloatField;
    qryRelReceberPORCENTAGEM: TFloatField;
    SelTipoDoctoSIGLA: TIBStringField;
    SelTipoDoctoNOME: TIBStringField;
    SelTipoDocto2: TIBQuery;
    SelTipoDocto2SIGLA: TIBStringField;
    SelTipoDocto2NOME: TIBStringField;
    qryRelReceberCIDADE: TIntegerField;
    qryComissaoRecTIPO: TIBStringField;
    qryComissaoVendTIPO_FAT: TIBStringField;
    qryComissaoRecPCT_BAIXA: TIBBCDField;
    qryComissaoVendID_AGRUPADOR: TIntegerField;
    qryComissaoRecVLR_BX_ORIG: TIBBCDField;
    qryRelVDRecDATA: TDateField;
    qryRelReceberCIDADE_NOME: TIBStringField;
    qryRelRecebidasMULTA: TFloatField;
    qryRelRecebidasVARIACAO: TFloatField;
    qryRelRecebidasVALOR_NOMINAL: TFloatField;
    qryRelRecebidasPGT_FX_CODIGO: TIntegerField;
    qryRelRecebidasPGT_FX_INI: TIntegerField;
    qryRelRecebidasPGT_FX_FIN: TIntegerField;
    qryRelRecebidasPGT_FX_PCT_PAGTO: TFloatField;
    qryRelRecebidasCOD_INDEXADOR: TIntegerField;
    qryRelRecebidasIDX_DATABASE: TDateField;
    qryRelRecebidasIDX_COTACAO: TFloatField;
    qryRelRecebidasIDX_QTDE: TFloatField;
    qryRelRecebidasBX_IDX_QTDE: TFloatField;
    qryRelRecebidasBX_IDX_COTACAO: TFloatField;
    qryRelRecebidasJURO_CALCULADO: TFloatField;
    qryRelRecebidasDESCONTO_CALCULADO: TFloatField;
    qryRelRecebidasVARIACAO_CALCULADA: TFloatField;
    qryRelRecebidasMULTA_CALCULADA: TFloatField;
    qryRelRecebidasCOD_ACERTOCONTA: TIntegerField;
    qryRelRecebidasCOD_CONFIG_TITULO: TIntegerField;
    qryRelRecebidasCOD_EVENTOCONTABIL: TIntegerField;
    qryRelRecebidasACT_TIPO_BAIXA: TIBStringField;
    qryRelPagasCODIGO_VN: TIntegerField;
    qryRelPagasCOD_INDEXADOR: TIntegerField;
    qryRelPagasIDX_DATABASE: TDateField;
    qryRelPagasIDX_COTACAO: TFloatField;
    qryRelPagasIDX_QTDE: TFloatField;
    qryRelPagasVARIACAO: TFloatField;
    qryRelPagasMULTA: TFloatField;
    qryRelPagasBX_IDX_QTDE: TFloatField;
    qryRelPagasBX_IDX_COTACAO: TFloatField;
    qryRelPagasJURO_CALCULADO: TFloatField;
    qryRelPagasVARIACAO_CALCULADA: TFloatField;
    qryRelPagasMULTA_CALCULADA: TFloatField;
    qryRelPagasDESCONTO_CALCULADO: TFloatField;
    qryRelPagasCOD_ACERTOCONTA: TIntegerField;
    qryRelPagasCOD_CONFIG_TITULO: TIntegerField;
    qryRelPagasCOD_EVENTOCONTABIL: TIntegerField;
    qryRelPagasACT_TIPO_BAIXA: TIBStringField;
    qryConsultaRomaneio: TIBQuery;
    qryConsultaRomaneioPRODUTO: TIBStringField;
    qryConsultaRomaneioNOME: TIBStringField;
    qryConsultaRomaneioUNIDADE: TIBStringField;
    qryConsultaRomaneioQNTDE_PDR_CARGA: TFloatField;
    qryConsultaRomaneioUND_CARREGAMENTO: TIBStringField;
    qryConsultaRomaneioQTDE_VENDIDA: TFloatField;
    qryConsultaRomaneioMARCA: TIBStringField;
    qryConsultaRomaneioUND_TRANSPORTE: TIBStringField;
    qryConsultaRomaneioUND_INDIVIDUAL: TIBStringField;
    qryRelReceberNUM_NF: TIntegerField;
    qryConsultaRomaneioTOTAL_LIQUIDO: TFloatField;
    qryConsultaRomaneioTOTAL_BRUTO: TFloatField;
    qryConsultaRomaneioTOTAL_DESCONTOS: TFloatField;
    SelRegiaoTECNICO: TIntegerField;
    qryRelPagarCOD_CONTRATO: TIntegerField;
    qryRelPagarCTR_NOME: TIBStringField;
    procedure KardexBeforeOpen(DataSet: TDataSet);
    procedure KardexAfterClose(DataSet: TDataSet);
    procedure PosicaoEstoqueCalcFields(DataSet: TDataSet);
    procedure FisicaFinanCalcFields(DataSet: TDataSet);
    procedure EntradasItensCalcFields(DataSet: TDataSet);
    procedure ClientesAlfENDERECOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure ListaUnidCalcFields(DataSet: TDataSet);
    procedure ClientesAlfBLOQUEADOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure Produtos_MarcaCalcFields(DataSet: TDataSet);
    procedure Notas_FaturaCalcFields(DataSet: TDataSet);
    procedure Fat_VendasVendCalcFields(DataSet: TDataSet);
    procedure Fat_VendasPorGrupoCalcFields(DataSet: TDataSet);
    procedure Fat_VendasGrupoCalcFields(DataSet: TDataSet);
    procedure EntradasCalcFields(DataSet: TDataSet);
    procedure VendasIndicadosCalcFields(DataSet: TDataSet);
    procedure Fat_VendasPorMarcaCalcFields(DataSet: TDataSet);
    procedure Fat_VendasComissaoCalcFields(DataSet: TDataSet);
    procedure Fat_VendasSubGrupoCalcFields(DataSet: TDataSet);
    procedure PosicaoEstoqueVendaCalcFields(DataSet: TDataSet);
    procedure ORDENSCalcFields(DataSet: TDataSet);
    procedure VerCheque_ComissaoCalcFields(DataSet: TDataSet);
    procedure VER_EST_PRODUTOS_GRADES_NUMEROSBeforeOpen(DataSet: TDataSet);
    procedure Fat_VendasItensCalcFields(DataSet: TDataSet);
    procedure VER_EST_GRADES_ADICIONALBeforeOpen(DataSet: TDataSet);
    procedure Fat_VendasGrupoSelCalcFields(DataSet: TDataSet);
    procedure Fat_TrocasCliCalcFields(DataSet: TDataSet);
    procedure SelProdutosCalcFields(DataSet: TDataSet);
    procedure qryRelEntProdCalcFields(DataSet: TDataSet);
    procedure Fat_VendasMarcaCalcFields(DataSet: TDataSet);
    procedure MalaDiretaBeforeOpen(DataSet: TDataSet);
    procedure qryRelVendasTerceirosCalcFields(DataSet: TDataSet);
    procedure qryRelPagarCalcFields(DataSet: TDataSet);
    procedure qryRelENTPagCalcFields(DataSet: TDataSet);
    procedure qryComissaoGeralCalcFields(DataSet: TDataSet);
    procedure SelProdutosBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    //totalizadores de vendas gerais por periodo
    Calculou : boolean;
    ValDesc, ValBase, ValIcms, ValNota : variant;
    AbeDesc, AbeBase, AbeIcms, AbeNota : variant;
    CancDesc, CancBase, CancIcms, CancNota : variant;
    CancIcmsSub, CancBaseSub, AbeIcmsSub, AbeBaseSub,ValIcmsSub, ValBaseSub: variant;
  public
    { Public declarations }
    Perc_Desconto: Extended ;
    Procedure ImprimirFatura( INICIAL: TDATETIME; FINAL: TDATETIME; CLIENTE: INTEGER; NUMFATURA: INTEGER );
    procedure Rodape_Fatura(SENDER: TOBJECT;PAGINA:INTEGER);
  end;

var
  DMRelatorios: TDMRelatorios;
  Linha, Pagina: Integer;
implementation

uses Application_DM, Funcoes, PosicaoEstoqueGrade_FRel;

{$R *.DFM}

procedure TDMRelatorios.Rodape_Fatura(SENDER: TOBJECT;PAGINA:INTEGER);
begin
     // Rodapé...
     IMPRESSORAFAT.impf(63,01,'===============================================================================',[normal]);
     IMPRESSORAFAT.impf(64,01,dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
end;

Procedure TDMRelatorios.ImprimirFatura( INICIAL: TDATETIME; FINAL: TDATETIME; CLIENTE: INTEGER; NUMFATURA: INTEGER );
          Procedure InclinhaFat ;
          Begin
               Linha := Linha + 1;

               IF LINHA > 62
               THEN BEGIN
                    IMPRESSORAFAT.NOVAPAGINA ;

                    LINHA := 7 ;
               END;
          end;
VAR
   SAI: Boolean;
   STRCASAS, STR, IMPCAB: STRING;
   NOTAS, PARCIAL, VNOTAS, VPARCIAL, VCHEQUE, SOMATOTAL, SOMADESCTO, SOMADESCTOGERAL: REAL;
   ULT_CONV: Integer;
   TOTALCONVENIADO: REAL;
BEGIN
     Try
        IMPRESSORAFAT.TamanhoQteLPP := Seis ;

        IMPRESSORAFAT.OnNewPage       := NIL ;
        IMPRESSORAFAT.OnBeforeNewPage := NIL ;

        IMPRESSORAFAT.abrir;

        Faturas.Close ;
        Faturas.SQL.Clear ;
        Faturas.Params.Clear ;

        Faturas.Params.CreateParam ( FtString , 'CNPJ' , PtInput );
        Faturas.Params.CreateParam ( FtDate   , 'DINI' , PtInput );
        Faturas.Params.CreateParam ( FtDate   , 'DFIM' , PtInput );

        Faturas.Sql.add (' SELECT * FROM VER_FATURA_PERIODO ( :CNPJ , :DINI , :DFIM ) ' );

        Faturas.ParamByName ('CNPJ').AsString := DmaPP.Cnpj   ;
        Faturas.ParamByName ('DINI').AsDate   := INICIAL ;
        Faturas.ParamByName ('DFIM').AsDate   := FINAL   ;

        IF CLIENTE > 0
        THEN BEGIN
             Faturas.Params.CreateParam ( FtInteger, 'PESSOA_FJ' , PtInput );

             Faturas.Sql.add (' Where PESSOA_FJ = :PESSOA_FJ ' );

             Faturas.ParamByName ( 'PESSOA_FJ'  ).ASINTEGER := CLIENTE ;
        END;

        IF NUMFATURA > 0
        THEN BEGIN
             Faturas.Params.CreateParam ( FtInteger, 'CODIGO' , PtInput );

             Faturas.Sql.add (' Where CODIGO = :CODIGO ' );

             Faturas.ParamByName ( 'CODIGO'  ).ASINTEGER := NUMFATURA ;
        END;

        Faturas.Open ;

        SOMADESCTOGERAL := 0;

        Faturas.FetchAll ;

        While Not Faturas.Eof Do
        Begin
             NOTAS   := 0;

             PAGINA  := 0;

             IMPRESSORAFAT.impf(01,01,'===============================================================================',[normal]);

             STR :=  FORMATFLOAT ('###,###,##0', FaturasCODIGO.VALUE );

             WHILE LENGTH(STR) < 6 DO
             BEGIN
                  STR := '0' + STR ;
             END;

             IMPRESSORAFAT.impf(02,01, DmaPP.Nome + '    FATURA '+ STR, [NORMAL,NEGRITO]);

             If length( FaturasCPF_CGC.Value ) <= 11
             then begin
                  IMPRESSORAFAT.impf(03,01,'CLIENTE : ' + FaturasPESSOA_FJ.AsString + ' ' + FaturasNOME.Value + ' CPF/CNPJ: ' + MascaraCpf(FaturasCPF_CGC.Value) ,[NORMAL]);
             end
             else begin
                  IMPRESSORAFAT.impf(03,01,'CLIENTE : ' + FaturasPESSOA_FJ.AsString + ' ' + FaturasNOME.Value + ' CPF/CNPJ: ' + MascaraCNPJ(FaturasCPF_CGC.Value) ,[NORMAL]);
             end;

             IMPRESSORAFAT.impf(04,01,'FANTASIA: ' + FaturasNome_fantasia.VALUE ,[normal]);
             IMPRESSORAFAT.impf(04,35,'COMPRADOR: ' + FaturasCOMPRADOR.VALUE + ' FONE: ' + FaturasFONE_COMPRADOR.VALUE ,[COMP17]);

             IMPRESSORAFAT.impf(05,01,'ENDERECO: ' + FaturasENDERECO.VALUE + ', N ' + FaturasNUMERO.VALUE + ' ,'+FaturasBAIRRO.VALUE,[normal]);
             IMPRESSORAFAT.impf(06,01,'FONE    : ' + FaturasFONE.VALUE,[normal]);
             IMPRESSORAFAT.impf(06,56,'DATA '+ DATETIMETOSTR(NOW),[normal]);

             LINHA := 7;

             IMPRESSORAFAT.impf(LINHA,01,'EMISSAO    VENCIMENTO INICIO     FIM                                      VALOR',[normal]);

             InclinhaFat ;

             IMPRESSORAFAT.IMPF (LINHA, 1, DATETOSTR(FaturasDATA.Value),[COMP12]);

             IMPRESSORAFAT.IMPF (LINHA, 12, DATETOSTR(FaturasVENCIMENTO.Value),[COMP12]);

             //INICIA A IMPRESSAO DAS FATURAS
             Notas_Fatura.CLOSE ;

             Notas_Fatura.SQL.CLEAR ;

             Notas_Fatura.Params.CreateParam ( ftString , 'CNPJ', ptInputOutput );
             Notas_Fatura.Params.CreateParam ( ftInteger, 'FAT' , ptInputOutput );

             Notas_Fatura.SQL.ADD ( ' SELECT * FROM VER_FATURA_RECEBER         ' );
             Notas_Fatura.SQL.ADD ( ' ( :CNPJ, :FAT )                          ' );
             Notas_Fatura.SQL.ADD ( ' ORDER BY CONVENIADO, DT_EMISSAO, DOCTO   ' );

             Notas_Fatura.ParamByName ( 'CNPJ' ).ASSTRING  :=  DmaPP.Cnpj          ;
             Notas_Fatura.ParamByName ( 'FAT'  ).ASINTEGER :=  FaturasCODIGO.value ;

             Notas_Fatura.OPEN ;

             Notas_Fatura.FIRST;

             IMPRESSORAFAT.IMPF (LINHA, 23, DATETOSTR(Notas_FaturaDT_EMISSAO.Value),[COMP12]);

             Notas_Fatura.LAST;

             IMPRESSORAFAT.IMPF (LINHA, 34, DATETOSTR(Notas_FaturaDT_EMISSAO.Value),[COMP12]);

             Notas_Fatura.FIRST;

             STR :=  FORMATFLOAT ('###,###,##0.00', FaturasVALOR.VALUE );
             WHILE LENGTH(STR) < 12 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             //VALOR
             IMPRESSORAFAT.impf(linha,73, STR ,[comp17]);

             InclinhaFat ;

             IMPRESSORAFAT.impf(LINHA,01,'===============================================================================',[normal]);

             InclinhaFat ;

             SOMATOTAL := SOMATOTAL + FaturasVALOR.VALUE ;

             IF Notas_Fatura.RECORDCOUNT > 0
             THEN BEGIN
                  IMPRESSORAFAT.impf(LINHA,01,'DOC                VALOR     EMISSAO          PRODUTO                   QNTDE PRECO ANT  UNITARIO      CORR      TOTAL    TOTAL   DESCTO',[COMP17]);
                  InclinhaFat ;
             END;

             IF Notas_Fatura.RecordCount > 0
             THEN BEGIN
                  //NOTAS DA FATURA NAO PAGAS
                  Notas_Fatura.FIRST;

                  ULT_CONV := -1;

                  TOTALCONVENIADO := 0;

                  IMPCAB := 'N' ;

                  WHILE NOT Notas_Fatura.Eof DO
                  BEGIN
                       IF ( IMPCAB = 'S' )
                       THEN BEGIN
//                       IF (( Notas_FaturaCONVENIADO.VALUE <> ULT_CONV ) AND ( Notas_FaturaCONVENIADO.VALUE <> 0 ))
//                       THEN BEGIN
                            IMPRESSORAFAT.IMPF (LINHA, 1, Notas_FaturaCONVENIADO.TEXT + '-' + Notas_FaturaNOME_CONVENIADO.VALUE ,[COMP17]);

                            IncLinhaFat ;

                            TOTALCONVENIADO := 0;

                            IMPCAB := 'N' ;
                       END
                       ELSE BEGIN
                            IF ( Notas_FaturaCONVENIADO.VALUE = 0 )
                            THEN
                                ULT_CONV := 0;
                       END;

                       IF (( Notas_FaturaNUM_CUPOM.IsNull ) OR ( Notas_FaturaNUM_CUPOM.VALUE = 0 ))
                       THEN BEGIN
                            IMPRESSORAFAT.IMPF (LINHA, 1, COPY(Notas_FaturaDOCTO.Value,1,15) ,[COMP17]);
                       END
                       ELSE BEGIN
                            IMPRESSORAFAT.IMPF (LINHA, 1, Notas_FaturaNUM_CUPOM.TEXT ,[COMP17]);
                       END;

                       STR :=  FORMATFLOAT ('###,###,##0.00', Notas_FaturaTOTAL.VALUE );
                       WHILE LENGTH(STR) < 9 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;

                       //VALOR
                       IMPRESSORAFAT.impf(linha,10, STR ,[comp17]);

                       //EMISSAO
                       IF NOT Notas_FaturaDT_EMISSAO.IsNull
                       THEN BEGIN
                            IMPRESSORAFAT.IMPF (LINHA, 18, DATETOSTR(Notas_FaturaDT_EMISSAO.Value) ,[COMP17]);
                       END;

                       //VALOR
                       IMPRESSORAFAT.impf(linha, 70, STR ,[comp17]);

                       NOTAS := NOTAS + Notas_FaturaTOTAL.VALUE ;

                       TOTALCONVENIADO := TOTALCONVENIADO + Notas_FaturaTOTAL.VALUE;

                       SOMADESCTO := 0;

                       //IMPRIME OS PRODUTOS
                       Fat_VendasItens.CLOSE ;

                       Fat_VendasItens.ParamByName ( 'CNPJ'   ).ASSTRING   := DmaPP.Cnpj                   ;
                       Fat_VendasItens.ParamByName ( 'CODIGO' ).ASINTEGER  := Notas_FaturaCODIGO_VN.VALUE  ;

                       Fat_VendasItens.OPEN ;
                       Fat_VendasItens.FIRST;

                       IF Fat_VendasItens.RecordCount > 0
                       THEN BEGIN
                            //PRODUTOS DA FATURA NAO PAGAS
                            Fat_VendasItens.FIRST;

                            WHILE NOT Fat_VendasItens.Eof DO
                            BEGIN
                                 IMPRESSORAFAT.IMPF (LINHA, 28, COPY(Fat_VendasItensNOME.Value,1,16) ,[COMP17]);

                                 //QUANTIDADE
                                 STR :=  FORMATFLOAT ('###,###,##0.00', Fat_VendasItensQUANTIDADE.VALUE );
                                 WHILE LENGTH(STR) < 10 DO
                                 BEGIN
                                      STR := ' ' + STR ;
                                 END;
                                 IMPRESSORAFAT.impf(linha,40, STR ,[comp17]);

                                 //VALOR ORIGINAL
                                 STR :=  FORMATFLOAT ('###,###,##0.00', Fat_VendasItensPRC_UNIT_ORIGINAL.VALUE );
                                 WHILE LENGTH(STR) < 10 DO
                                 BEGIN
                                      STR := ' ' + STR ;
                                 END;
                                 IMPRESSORAFAT.impf(linha,46, STR ,[comp17]);

                                 //VALOR UNITARIO
                                 STR :=  FORMATFLOAT ('###,###,##0.00', Fat_VendasItensPRC_UNITARIO.VALUE - Fat_VendasItensDESCONTO.VALUE);
                                 WHILE LENGTH(STR) < 10 DO
                                 BEGIN
                                      STR := ' ' + STR ;
                                 END;
                                 IMPRESSORAFAT.impf(linha,52, STR ,[comp17]);

                                 STR :=  FORMATFLOAT ('###,###,##0.00',      Fat_VendasItensPRC_UNIT_ORIGINAL.VALUE);
                                 STRCASAS :=  FORMATFLOAT ('###,###,##0.00', Fat_VendasItensPRC_UNITARIO.VALUE);

                                 IF STR <> STRCASAS
                                 THEN BEGIN
                                      //DIFIRENCA / CORRECAO
                                      STR :=  FORMATFLOAT ('###,###,##0.00', Fat_VendasItensPRC_UNITARIO.VALUE - Fat_VendasItensPRC_UNIT_ORIGINAL.VALUE );
                                      WHILE LENGTH(STR) < 10 DO
                                      BEGIN
                                           STR := ' ' + STR ;
                                      END;
                                      IMPRESSORAFAT.impf(linha, 58, STR ,[comp17]);
                                 END
                                 ELSE BEGIN
                                      //DIFIRENCA / CORRECAO
                                      STR :=  FORMATFLOAT ('###,###,##0.00', 0 );
                                      WHILE LENGTH(STR) < 10 DO
                                      BEGIN
                                           STR := ' ' + STR ;
                                      END;
                                      IMPRESSORAFAT.impf(linha, 58, STR ,[comp17]);
                                 END;

                                 //VALOR TOTAL
                                 STR :=  FORMATFLOAT ('###0.00', ( Fat_VendasItensPRC_UNITARIO.VALUE - Fat_VendasItensDESCONTO.VALUE ) * Fat_VendasItensQUANTIDADE.VALUE );
                                 WHILE LENGTH(STR) < 10 DO
                                 BEGIN
                                      STR := ' ' + STR ;
                                 END;

                                 IMPRESSORAFAT.impf(linha, 64, STR ,[comp17]);

                                 //DESCONTOS DADOS NOS ITENS
                                 SOMADESCTO := SOMADESCTO + ( Fat_VendasItensDESCONTO.VALUE * Fat_VendasItensQUANTIDADE.VALUE ) ;

                                 SOMADESCTOGERAL := SOMADESCTOGERAL + ( Fat_VendasItensDESCONTO.VALUE * Fat_VendasItensQUANTIDADE.VALUE ) ;

//                               PRODUTOS := PRODUTOS + QPRODUTOSFATURATOTAL.VALUE ;

                                 Fat_VendasItens.NEXT;

                                 IF NOT Fat_VendasItens.EOF
                                 THEN
                                     IncLinhaFat
                                 ELSE BEGIN
                                      //TOTALIZA OS DESCONTOS DOS ITENS
                                      STR :=  FORMATFLOAT ('###0.00', SOMADESCTO );
                                      WHILE LENGTH(STR) < 8 DO
                                      BEGIN
                                           STR := ' ' + STR ;
                                      END;

                                      IMPRESSORAFAT.impf(linha, 76, STR ,[comp17]);
                                 END;
                            END;
                       END ;

                       Notas_Fatura.NEXT;

                       IF (( Notas_FaturaCONVENIADO.VALUE <> ULT_CONV ) AND ( Notas_FaturaCONVENIADO.VALUE <> 0 )) OR ( Notas_Fatura.EOF )
                       THEN BEGIN
                            InclinhaFat ;

                            //VALOR TOTAL
                            STR :=  FORMATFLOAT ('###0.00', TOTALCONVENIADO );
                            WHILE LENGTH(STR) < 8 DO
                            BEGIN
                                 STR := ' ' + STR ;
                            END;

                            IMPRESSORAFAT.impf(linha, 50, 'TOTAL DO CONVENIO' ,[comp17]);

                            IMPRESSORAFAT.impf(linha, 76, STR ,[comp17]);

                            ULT_CONV := Notas_FaturaCONVENIADO.VALUE ;

                            IMPCAB := 'S' ;
                       END;

                       InclinhaFat ;
                  END;
             END ;

             Faturas.NEXT;

             IF NOT Faturas.EOF
             THEN BEGIN
                  InclinhaFat ;
             END;

             NOTAS   := 0;
             PARCIAL := 0;
             VPARCIAL:= 0;

             //TOTAIS
             STR :=  FORMATFLOAT ('###,###,##0.00', SOMATOTAL );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             IMPRESSORAFAT.impf(linha,70, '------------------' ,[comp17]);

             InclinhaFat ;

             IMPRESSORAFAT.impf(linha, 60, 'TOTAL DA FATURA' ,[comp17]);

             IMPRESSORAFAT.impf(linha, 69, STR ,[comp17]);

             //TOTAL DO DESCONTO
             STR :=  FORMATFLOAT ('###,###,##0.00', SOMADESCTOGERAL );
             WHILE LENGTH(STR) < 8 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             IMPRESSORAFAT.impf(linha, 76, STR ,[comp17]);

             InclinhaFat;

             //TOTAL MENOS DESCONTO
             IMPRESSORAFAT.impf(linha, 60, '  TOTAL LIQUIDO' ,[comp17]);

             //TOTAIS
             STR :=  FORMATFLOAT ('###,###,##0.00', SOMATOTAL );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             IMPRESSORAFAT.impf(linha, 69, STR ,[comp17]);

             InclinhaFat;

             SOMATOTAL := 0;

             IMPRESSORAFAT.impf(LINHA,01,'===============================================================================',[normal]);
             InclinhaFat;

             If Trim( DmApp.MENS_RODAPE ) = ''
             THEN BEGIN
                  IMPRESSORAFAT.impf(LINHA,01,'FAVOR CONFERIR AS NOTAS, POIS NAO ACEITAREMOS RECLAMACOES POSTERIORES',[comp17,italico]);
                  InclinhaFat;
             END
             ELSE BEGIN
                  IMPRESSORAFAT.impf(LINHA,01,DmApp.MENS_RODAPE,[comp17,italico]);

                  InclinhaFat;

                  IF TRIM(DmApp.MENS_RODAPE1) <> ''
                  THEN BEGIN
                       IMPRESSORAFAT.impf(LINHA,01,DmApp.MENS_RODAPE1,[comp17,italico]);
                       InclinhaFat;
                  END;

                  IF TRIM(DmApp.MENS_RODAPE2) <> ''
                  THEN BEGIN
                       IMPRESSORAFAT.impf(LINHA,01,DmApp.MENS_RODAPE2,[comp17,italico]);
                       InclinhaFat;
                  END;

                  IF TRIM(DmApp.MENS_RODAPE3) <> ''
                  THEN BEGIN
                       IMPRESSORAFAT.impf(LINHA,01,DmApp.MENS_RODAPE3,[comp17,italico]);
                       InclinhaFat;
                  END;
             END;

             InclinhaFat;
             InclinhaFat;

             IMPRESSORAFAT.impf(LINHA,01,'____/____/________  _______________________________',[comp17]);
             InclinhaFat;
             IMPRESSORAFAT.impf(LINHA,01,'ACEITE             ' + FaturasNOME.VALUE,[comp17]);

             FATURAS.NEXT;

             InclinhaFat ;
             InclinhaFat ;

             IF NOT Faturas.EOF
             THEN
                 IMPRESSORAFAT.Novapagina ;
        END;

        IMPRESSORAFAT.fechar;

     except
     end;
END;

procedure TDMRelatorios.KardexBeforeOpen(DataSet: TDataSet);
begin
     If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (DataSet as TIBQuery).Prepare;
     End;
end;

procedure TDMRelatorios.KardexAfterClose(DataSet: TDataSet);
begin
     If (DataSet is TIBQuery) Then
     (DataSet as TIBquery).UnPrepare;
end;

procedure TDMRelatorios.PosicaoEstoqueCalcFields(DataSet: TDataSet);
Var
   Quantidade: Real;
begin
  //
  If PosicaoEstoqueSUBUNIDADE.VALUE > 0
  then begin
       Quantidade := PosicaoEstoqueQTDADE_2.Value / PosicaoEstoqueSUBUNIDADE.VALUE ;
  end
  else begin
       Quantidade := PosicaoEstoqueQTDADE_2.Value ;
  end;

  If PosicaoEstoque.Tag = 0
  Then begin
       PosicaoEstoquePRC_CUSTO_TOTAL.Value := Quantidade * PosicaoEstoquePRC_CUSTO_MED.Value
  end
  Else begin
       PosicaoEstoquePRC_CUSTO_TOTAL.Value := Quantidade * PosicaoEstoquePRC_REPOS.Value;
  end;

  //
  PosicaoEstoquePRC_VENDA_TOTAL.Value      := Quantidade * PosicaoEstoquePRC_VENDA.Value ;

  //
  If (PosicaoEstoquePRC_CUSTO_TOTAL.Value = 0) Or
     (PosicaoEstoquePRC_VENDA_TOTAL.Value = 0) Then
     PosicaoEstoqueMARGEM.Value := 0
  Else begin
       PosicaoEstoqueMARGEM.Value  := (
                                        (
                                          (PosicaoEstoquePRC_CUSTO_TOTAL.asFloat/PosicaoEstoquePRC_VENDA_TOTAL.asFloat)

                                          -1
                                        )
                                       * -100);

  end;
end;

procedure TDMRelatorios.FisicaFinanCalcFields(DataSet: TDataSet);
begin
  //
  If FisicaFinan.Tag = 0 Then
     Begin
       If (FisicaFinanT_CUSTO_MED.Value = 0) Or
          (FisicaFinanT_VENDA.Value = 0) Then
          FisicaFinanMARGEM.Value := 0
       Else
          FisicaFinanMARGEM.Value             := (1 - (FisicaFinanT_CUSTO_MED.Value / FisicaFinanT_VENDA.Value)) * 100;
     End
  Else
     Begin
       If (FisicaFinanT_REPOS.Value = 0) Or
          (FisicaFinanT_VENDA.Value = 0) Then
          FisicaFinanMARGEM.Value := 0
       Else
          FisicaFinanMARGEM.Value             := (1 - (FisicaFinanT_REPOS.Value / FisicaFinanT_VENDA.Value)) * 100;
     End
end;

procedure TDMRelatorios.EntradasItensCalcFields(DataSet: TDataSet);
Var
   Custo: Real ;
begin
  Custo := EntradasItensQUANTIDADE.Value *  EntradasItensPRC_UNITARIO.Value ;

  //
  EntradasItensIPI_TOTAL.Value     := custo * (EntradasItensIPI.Value / 100);
  //
  EntradasItensIPI_UNITARIO.Value  := EntradasItensIPI_TOTAL.Value / EntradasItensQUANTIDADE.Value;
  //
  IF EntradasItensPRC_UNITARIO.Value > 0
  THEN
      EntradasItensPERC_DIF.Value      := ((EntradasItensPRC_VENDA.Value / EntradasItensPRC_UNITARIO.Value) -1) * 100
  ELSE
      EntradasItensPERC_DIF.Value      := 100;

  //

  EntradasItensCustoUnitario.Value := EntradasItensPRC_UNITARIO.Value - ( EntradasItensDESCONTOS.Value / EntradasItensQUANTIDADE.Value) + EntradasItensIPI_UNITARIO.Value  ;

  EntradasItensCUSTO_TOTAL.Value   := EntradasItensQUANTIDADE.Value *  EntradasItensPRC_UNITARIO.Value - EntradasItensDESCONTOS.Value  + EntradasItensIPI_UNITARIO.Value  ;

end;

procedure TDMRelatorios.ClientesAlfENDERECOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Pos('< NAO', Sender.Value) > 0 Then
     Text := ''
  Else
     Text := Sender.Value;
end;

procedure TDMRelatorios.ListaUnidCalcFields(DataSet: TDataSet);
begin
  //
  If ListaUnidSUBUNIDADE.Value > 1 Then
     ListaUnidPRC_UNIT.Value      := ListaUnidPRC_VENDA.Value / ListaUnidSUBUNIDADE.Value
  Else
     ListaUnidPRC_UNIT.Value      := ListaUnidPRC_VENDA.Value;
  //
  ListaUnidPRC_VENDA_VIS.Value := ListaUnidPRC_VENDA.Value - (ListaUnidPRC_VENDA.Value * Perc_Desconto) / 100 ;
  ListaUnidPRC_UNIT_VIS.Value  := ListaUnidPRC_UNIT.Value - (ListaUnidPRC_UNIT.Value  * Perc_Desconto) / 100;
end;

procedure TDMRelatorios.ClientesAlfBLOQUEADOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  //
  If Sender.Value = 'S' Then
     Text := 'Bloqueado'
  Else
     Text := Sender.DataSet.FieldByName('NOME_CLASSIF').asString;
end;

procedure TDMRelatorios.DataModuleCreate(Sender: TObject);
begin
     IniciaComponentesDm ( Self as TDataModule );
end;

procedure TDMRelatorios.Produtos_MarcaCalcFields(DataSet: TDataSet);
begin
  //
  If Produtos_Marca.Tag = 0 Then
     Produtos_MarcaPRC_CUSTO_TOTAL.Value := Produtos_MarcaQTDADE_2.Value * Produtos_MarcaPRC_CUSTO_MED.Value
  Else
     Produtos_MarcaPRC_CUSTO_TOTAL.Value := Produtos_MarcaQTDADE_2.Value * Produtos_MarcaPRC_REPOS.Value;
  //
  Produtos_MarcaPRC_VENDA_TOTAL.Value    := Produtos_MarcaQTDADE_2.Value * Produtos_MarcaPRC_VENDA.Value;
  //
  If (Produtos_MarcaPRC_CUSTO_TOTAL.Value = 0) Or
     (Produtos_MarcaPRC_VENDA_TOTAL.Value = 0) Then
     Produtos_MarcaMARGEM.Value := 0
  Else
     Produtos_MarcaMARGEM.Value  := (1 - (Produtos_MarcaPRC_CUSTO_TOTAL.Value / Produtos_MarcaPRC_VENDA_TOTAL.Value)) * 100;
end;

procedure TDMRelatorios.Notas_FaturaCalcFields(DataSet: TDataSet);
begin
     Notas_FaturaTOTAL.Value := Notas_FaturaValor.Value - Notas_FaturaVlr_Parcial.Value + Notas_FaturaJUROS_REC.VALUE - Notas_FaturaDescontos.VALUE;
end;

procedure TDMRelatorios.Fat_VendasVendCalcFields(DataSet: TDataSet);
begin
  if Fat_VendasVendFECHADA.Value = 'S' then
  begin
    Fat_VendasVendAVISTA.Value := Fat_VendasVendDINHEIRO.VALUE +
                                  DmApp.Cheque_Vista_Venda (Fat_VendasVendCodigo.Value ) +
                                  DmApp.Cartao_Vista_Venda(Fat_VendasVendCodigo.Value ) +
                                  Fat_VendasVendTICKET.Value +
                                  Fat_VendasVendTROCO.Value;

    Fat_VendasVendAPRAZO.Value := Fat_VendasVendVLRLIQUIDO.Value - Fat_VendasVendAVISTA.Value;
  end
  else
  begin
    Fat_VendasVendAVISTA.Value :=  Fat_VendasVendVLRLIQUIDO.Value - Fat_VendasVendVLR_PARC_LC.Value ;
    Fat_VendasVendAPRAZO.Value := Fat_VendasVendVLRLIQUIDO.Value - Fat_VendasVendAVISTA.Value ;
  end;

  if Fat_VendasVendDESC_ACRES.value < 0   then
  begin
     Fat_VendasVend_TotalJuros.value := 0;
     Fat_VendasVend_TotalDesconto.value := Fat_VendasVendDESC_ACRES.value;
  end
  else
  begin
      Fat_VendasVend_TotalJuros.value := Fat_VendasVendDESC_ACRES.value;
      Fat_VendasVend_TotalDesconto.value := 0;
  end;
end;


procedure TDMRelatorios.Fat_VendasPorGrupoCalcFields(DataSet: TDataSet);
begin
     Fat_VendasPorGrupoVLRLIQUIDO.VALUE := Fat_VendasPorGrupoTOTAL.VALUE + Fat_VendasPorGrupoDESC_ACRES.VALUE ;
end;

procedure TDMRelatorios.Fat_VendasGrupoCalcFields(DataSet: TDataSet);
begin
     Fat_VendasGrupoTOTAL.Value := Fat_VendasGrupoQUANTIDADE.VALUE * Fat_VendasGrupovalor.VALUE ;
end;

procedure TDMRelatorios.EntradasCalcFields(DataSet: TDataSet);
begin

    if EntradasNDOCTOINT.value = -1 then
       EntradasNDOCTOINT2.value := 0
    else
       EntradasNDOCTOINT2.value := strToInt(ExtraiDigitos(EntradasNDOCTO.asString));

     If EntradasFRETE_LF.value = 'S' THEN
     BEGIN
       EntradasVLR_TOTAL_NF.Value := arredonda(EntradasVLR_PRODUTOS.Value +
                            EntradasVLR_EMBALAGEM.Value +
                            EntradasVLR_SEGURO.Value + EntradasVLR_FRETE.VALUE +
                            EntradasVLR_IPI.Value +
                            EntradasTAXAS.Value +
                            EntradasVLR_DESCONTO.Value + EntradasVLR_ICM_SUBS.VALUE,2);
     END
     ELSE
     BEGIN
       EntradasVLR_TOTAL_NF.Value := arredonda(EntradasVLR_PRODUTOS.Value +
                            EntradasVLR_EMBALAGEM.Value +
                            EntradasVLR_SEGURO.Value +
                            EntradasVLR_IPI.Value +
                            EntradasTAXAS.Value +
                            EntradasVLR_DESCONTO.Value+EntradasVLR_ICM_SUBS.VALUE,2);
     END;
end;

procedure TDMRelatorios.VendasIndicadosCalcFields(DataSet: TDataSet);
begin
     VendasIndicadosBonificacao.value := ((VendasIndicadosVLRLIQUIDO.value * VendasIndicadosPORCENTAGEM.value) / 100 );
end;

procedure TDMRelatorios.Fat_VendasPorMarcaCalcFields(DataSet: TDataSet);
begin
     Fat_VendasPorMARCAVLRLIQUIDO.VALUE := Fat_VendasPorMARCAValor.VALUE + Fat_VendasPorMARCADESC_ACRES.VALUE ;
end;

procedure TDMRelatorios.Fat_VendasComissaoCalcFields(DataSet: TDataSet);
Var
   Total, Vista, Prazo:Real;
   Porcentagem: Real;
begin
     Fat_VendasComissaoItem.Value := Fat_VendasComissaoQUANTIDADE.Value * ( Fat_VendasComissaoPRC_UNITARIO.Value - Fat_VendasComissaoDESCONTO.Value );

     IF Fat_VendasComissaoFECHADA.Value = 'S' THEN
     BEGIN
          Fat_VendasComissaoAVISTA.Value := Fat_VendasComissaoDINHEIRO.VALUE +
                                        DmApp.Cheque_Vista_Venda ( Fat_VendasComissaoCodigo.Value ) +
                                        DmApp.Cartao_Vista_Venda( Fat_VendasComissaoCodigo.Value ) +
                                        Fat_VendasComissaoTICKET.Value   +
                                        Fat_VendasComissaoTROCO.Value    ;

          Fat_VendasComissaoAPRAZO.Value := Fat_VendasComissaoVLRLIQUIDO.Value - Fat_VendasComissaoAVISTA.Value ;
     END
     ELSE
     BEGIN
          Fat_VendasComissaoAVISTA.Value :=  Fat_VendasComissaoVLRLIQUIDO.Value - Fat_VendasComissaoVLR_PARC_LC.Value ;

          Fat_VendasComissaoAPRAZO.Value := Fat_VendasComissaoVLRLIQUIDO.Value - Fat_VendasComissaoAVISTA.Value ;
     END;

     Total := ARREDONDA(Fat_VendasComissaoAVISTA.Value + Fat_VendasComissaoAPRAZO.Value,2) ;

     IF Arredonda(Fat_VendasComissaoDESC_ACRES.VALUE ,2) <> 0
     THEN BEGIN
          If Fat_VendasComissaoTOTAL.VALUE > 0
          THEN BEGIN
               Porcentagem := Fat_VendasComissaoItem.Value / Fat_VendasComissaoTOTAL.Value;
          END
          ELSE BEGIN
               Porcentagem := 0;
          END;

          Fat_VendasComissaoItem.Value := Arredonda(Fat_VendasComissaoItem.Value + ( Arredonda(Fat_VendasComissaoDESC_ACRES.VALUE ,2) * Porcentagem ),2);
     END;

     if (ARREDONDA(total,2) <> 0)then
     begin
       Vista := ARREDONDA(Fat_VendasComissaoAVISTA.value / Total,2) ;
       Prazo := ARREDONDA(Fat_VendasComissaoAPRAZO.value / Total,2) ;
     end
     else
     begin
       Vista := 0 ;
       Prazo := 0 ;
     end;

    IF ARREDONDA(VISTA,2) > 0 THEN
      Fat_VendasComissaoItem_Vista.Value := ARREDONDA(Fat_VendasComissaoItem.Value * Vista,2)
    else
      Fat_VendasComissaoItem_Vista.Value := 0;

    if ARREDONDA(PRAZO,2) > 0 THEN
      Fat_VendasComissaoItem_PRAZO.Value := ARREDONDA(Fat_VendasComissaoItem.Value * PRAZO,2 )
    else
      Fat_VendasComissaoItem_PRAZO.Value := 0;

end;

procedure TDMRelatorios.Fat_VendasSubGrupoCalcFields(DataSet: TDataSet);
begin
     Fat_VendasSubGrupoTOTAL.Value := Fat_VendasSubGrupoQUANTIDADE.VALUE * Fat_VendasSubGrupoVALOR.VALUE ;
end;

procedure TDMRelatorios.PosicaoEstoqueVendaCalcFields(DataSet: TDataSet);
Var
   Quantidade: Real;
begin
  //
  If PosicaoEstoqueSUBUNIDADE.VALUE > 0
  then begin
       Quantidade := PosicaoEstoqueVendaQTDADE_2.Value / PosicaoEstoqueVendaSUBUNIDADE.VALUE ;
  end
  else begin
       Quantidade := PosicaoEstoqueVendaQTDADE_2.Value ;
  end;

  If PosicaoEstoque.Tag = 0
  Then begin
       PosicaoEstoqueVendaPRC_CUSTO_TOTAL.Value := Quantidade * PosicaoEstoqueVendaPRC_CUSTO_MED.Value
  end
  Else begin
       PosicaoEstoqueVendaPRC_CUSTO_TOTAL.Value := Quantidade * PosicaoEstoqueVendaPRC_REPOS.Value;
  end;

  //
  PosicaoEstoqueVendaPRC_VENDA_TOTAL.Value      := Quantidade * PosicaoEstoqueVendaPRC_VENDA.Value ;

  //
  If (PosicaoEstoqueVendaPRC_CUSTO_TOTAL.Value = 0) Or
     (PosicaoEstoqueVendaPRC_VENDA_TOTAL.Value = 0) Then
     PosicaoEstoqueVendaMARGEM.Value := 0
  Else
     PosicaoEstoqueVendaMARGEM.Value := (1 - (PosicaoEstoqueVendaPRC_CUSTO_TOTAL.Value / PosicaoEstoqueVendaPRC_VENDA_TOTAL.Value)) * 100;
end;

procedure TDMRelatorios.ORDENSCalcFields(DataSet: TDataSet);
begin
     ORDENSVLRLIQUIDO.VALUE := ORDENSTOTAL.VALUE + ORDENSDESC_ACRESC.VALUE ;
end;

procedure TDMRelatorios.VerCheque_ComissaoCalcFields(DataSet: TDataSet);
begin
     VerCheque_ComissaoTotal.Value := VerCheque_ComissaoVALOR.Value + VerCheque_ComissaoJuros.value;
end;

procedure TDMRelatorios.VER_EST_PRODUTOS_GRADES_NUMEROSBeforeOpen( DataSet: TDataSet);
begin
     If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ'   ).asString := DMApp.Cnpj                          ;

       (DataSet as TIBQuery).ParamByName('PRODUTO').asString := VER_EST_PRODUTOS_GRADESCODIGO.VALUE ;
       (DataSet as TIBQuery).ParamByName('GRADE'  ).asString := VER_EST_PRODUTOS_GRADESGRADE.VALUE  ;

       (DataSet as TIBQuery).Prepare;
     End;
end;

procedure TDMRelatorios.Fat_VendasItensCalcFields(DataSet: TDataSet);
begin
     Fat_VendasItensCUSTO_TOTAL.Value    := Fat_VendasItensQUANTIDADE.VALUE * Fat_VendasItensPRC_CUSTO.VALUE ;
     Fat_VendasItensDESCONTO_TOTAL.VALUE := Fat_VendasItensQUANTIDADE.VALUE * Fat_VendasItensDESCONTO.VALUE  ;
end;

procedure TDMRelatorios.VER_EST_GRADES_ADICIONALBeforeOpen( DataSet: TDataSet);
begin
     If (DataSet is TIBQuery) Then
     Begin
          IF FRelPosicaoEstoqueGrade <> nIL
          THEN BEGIN
               (DataSet as TIBQuery).ParamByName('CNPJ'   ).asString  := DMApp.Cnpj                          ;

               (DataSet as TIBQuery).ParamByName('GRADE'  ).asInteger := VER_EST_PRODUTOS_GRADESPERFIL.value ;
          END;

         (DataSet as TIBQuery).Prepare;
     End;
end;

procedure TDMRelatorios.Fat_VendasGrupoSelCalcFields(DataSet: TDataSet);
begin
  Fat_VendasGrupoSelTOTAL.Value := Fat_VendasGrupoSelQUANTIDADE.VALUE * Fat_VendasGrupoSelUNITARIO.VALUE ;
end;

procedure TDMRelatorios.Fat_TrocasCliCalcFields(DataSet: TDataSet);
begin
     //ENTRADAS, SAIDAS E LIQUIDO
     Fat_TrocasCliENTRADAS.Value   := Fat_TrocasCliTotal.Value + Fat_TrocasCliDESC_ACRESC.Value ;
     Fat_TrocasCliSAIDAS.Value     := Fat_TrocasCliTotal_2.Value + Fat_TrocasCliDESC_ACRESC_2.Value ;

     Fat_TrocasCliLIQUIDO.Value := Fat_TrocasCliSAIDAS.Value - Fat_TrocasCliENTRADAS.Value;

     if Fat_TrocasCliFECHADA.Value = 'S'
     then begin
          Fat_TrocasCliAVISTA.Value := Fat_TrocasCliDINHEIRO.VALUE +
                                  Fat_TrocasCliCHEQUE.Value +
                                  Fat_TrocasCliCARTAO.Value +
                                  Fat_TrocasCliTICKET.Value ;

          Fat_TrocasCliAPRAZO.Value := Fat_TrocasCliLIQUIDO.Value - Fat_TrocasCliAVISTA.Value;
     end
     else begin
          Fat_TrocasCliAVISTA.Value := Fat_TrocasCliLIQUIDO.Value - Fat_TrocasCliVLR_PARC_LC.Value ;
          Fat_TrocasCliAPRAZO.Value := Fat_TrocasCliLIQUIDO.Value - Fat_TrocasCliAVISTA.Value ;
     end;
end;

procedure TDMRelatorios.SelProdutosCalcFields(DataSet: TDataSet);
begin
  SelProdutos_Cod_Nome.Value := SelProdutosCODIGO.Value+'-'+SelProdutosNOME.Value; 
end;

procedure TDMRelatorios.qryRelEntProdCalcFields(DataSet: TDataSet);
begin
  qryRelEntProdTotal_Liquido.value := qryRelEntProdTOTAL_NOTA.value + qryRelEntProdDESCONTO_NOTA.value;
end;

procedure TDMRelatorios.Fat_VendasMarcaCalcFields(DataSet: TDataSet);
begin
  Fat_VendasMarca_Total_Descto.value := Fat_VendasMarcaDESCONTO.value * Fat_VendasMarcaQuantidade.value;
end;

procedure TDMRelatorios.MalaDiretaBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString       := DMApp.Cnpj;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
  Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString       := DMApp.Cnpj;
       (Dataset as TIBDataSet).Prepare;
  End;
end;

procedure TDMRelatorios.qryRelVendasTerceirosCalcFields(DataSet: TDataSet);
begin
  qryRelVendasTerceirosProduto2.asString :=  qryRelVendasTerceirosCOD_PRODUTO.Value +' - '+ qryRelVendasTerceirosProduto.Value;
  qryRelVendasTerceirosTotalComissao.value := qryRelVendasTerceirosCOM_VISTA.asFloat + qryRelVendasTerceirosCOM_PRAZO.asFloat;
end;

procedure TDMRelatorios.qryRelPagarCalcFields(DataSet: TDataSet);
begin
  qryRelPagarcod_nome_fornecedor.value := qryRelPagarCOD_FORNECEDOR.asString+'-'+qryRelPagarFORNECEDOR.asString;
  qryRelPagarSaldo.value := qryRelPagarVALOR_NOMINAL.value - qryRelPagarBX_PARCIAL.value;
end;

procedure TDMRelatorios.qryRelENTPagCalcFields(DataSet: TDataSet);
begin
  If qryRelENTPagFRETE_LF.value = 'S' THEN
  begin
    qryRelENTPagVLR_TOTAL_NF.Value := arredonda(qryRelENTPagVLR_PRODUTOS.Value +
                                qryRelENTPagVLR_EMBALAGEM.Value +
                                qryRelENTPagVLR_SEGURO.Value + qryRelENTPagVLR_FRETE.VALUE +
                                qryRelENTPagVLR_IPI.Value +
                                qryRelENTPagTAXAS.Value -
                                qryRelENTPagVLR_DESCONTO.Value+qryRelENTPagVLR_ICM_SUBS.VALUE,2);
  end
  else
  begin
    qryRelENTPagVLR_TOTAL_NF.Value := arredonda(qryRelENTPagVLR_PRODUTOS.Value +
                                qryRelENTPagVLR_EMBALAGEM.Value +
                                qryRelENTPagVLR_SEGURO.Value +
                                qryRelENTPagVLR_IPI.Value +
                                qryRelENTPagTAXAS.Value -
                                qryRelENTPagVLR_DESCONTO.Value+EntradasVLR_ICM_SUBS.VALUE,2);
  end;
end;

procedure TDMRelatorios.qryComissaoGeralCalcFields(DataSet: TDataSet);
begin
  qryComissaoGeralTotalComissoes.value := qryComissaoGeralCOMISSAO_PRAZO.value + qryComissaoGeralCOMISSAO_VISTA.value;
end;

procedure TDMRelatorios.SelProdutosBeforeOpen(DataSet: TDataSet);
begin
 SelProdutos.ParamByName('CNPJ').asString       := DMApp.Cnpj;
end;

end.
