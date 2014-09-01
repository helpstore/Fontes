 unit Cadastros_Dm2;

interface

uses                                                          
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBStoredProc, IBSQL;

type
  TdmCadastros2 = class(TDataModule)
    ProdutosClientes: TIBDataSet;
    ProdutosClientesCODIGO: TIntegerField;
    ProdutosClientesCNPJ: TIBStringField;
    ProdutosClientesCOD_PRODUTO: TIBStringField;
    ProdutosClientesCOD_CLIENTE: TIntegerField;
    ProdutosClientesCOD_CONTRATO: TIntegerField;
    ProdutosClientesNUM_CONTRATO: TIBStringField;
    ProdutosClientesDT_INICIO: TDateTimeField;
    ProdutosClientesDT_FIM: TDateTimeField;
    ProdutosClientesATIVO: TIBStringField;
    SelContratos: TIBQuery;
    SelContratosCNPJ: TIBStringField;
    SelContratosCODIGO: TIntegerField;
    SelContratosNOME: TIBStringField;
    SelClientes: TIBQuery;
    SelClientesCODIGO: TIntegerField;
    SelClientesNOME_RAZAO: TIBStringField;
    ProdutosClientesCODIGO_NOME: TIBStringField;
    ProdutosClientesNOME_RAZAO: TIBStringField;
    ProdutosClientesPRODUTO: TIBStringField;
    ProdutosClientesNOME: TIBStringField;
    ProdutosClientesSERIE: TIBStringField;
    ProdutosClientesCONTRATO: TIBStringField;
    DStatus: TIBDataSet;
    DStatusCODIGO: TIntegerField;
    DStatusCNPJ: TIBStringField;
    DStatusNOME: TIBStringField;
    DStatusCOR: TIntegerField;
    SelClientesTECNICO: TIntegerField;
    ConsultaContratoAberto: TIBQuery;
    ProdutosClientesTEMPO_RESPOSTA: TIntegerField;
    Duplicata: TIBDataSet;
    DuplicataCNPJ: TIBStringField;
    DuplicataDATA_ALT: TIntegerField;
    DuplicataDATA_DST: TIntegerField;
    DuplicataDOCUMENTO_ALT: TIntegerField;
    DuplicataDOCUMENTO_DST: TIntegerField;
    DuplicataEXTENSO_ALT: TIntegerField;
    DuplicataEXTENSO_DST: TIntegerField;
    DuplicataINSTRUCOES_ALT: TIntegerField;
    DuplicataINSTRUCOES_DST: TIntegerField;
    DuplicataLPP: TIntegerField;
    DuplicataSACADO_ALT: TIntegerField;
    DuplicataSACADO_DST: TIntegerField;
    DuplicataTAMANHOPAGINA: TIntegerField;
    DuplicataVALOR_ALT: TIntegerField;
    DuplicataVALOR_DST: TIntegerField;
    DuplicataVENCIMENTO_ALT: TIntegerField;
    DuplicataVENCIMENTO_DST: TIntegerField;
    DuplicataVENDA_DST: TIntegerField;
    DuplicataVENDA_ALT: TIntegerField;
    DuplicataPORTA_IMPRESSORA: TIBStringField;
    DuplicataVALOR_DPL_DST: TIntegerField;
    DuplicataVALOR_DPL_ALT: TIntegerField;
    DuplicataDPL_GRAFICA: TIBStringField;
    DuplicataCONFIG_DPL: TMemoField;
    SelDuplicatas: TIBQuery;
    dsLayoutDuplicata: TDataSource;
    dsDuplicata: TDataSource;
    SelCobrador: TIBQuery;
    SelCobradorCNPJ: TIBStringField;
    SelCobradorCODIGO: TIntegerField;
    SelCobradorNOME: TIBStringField;
    SelCobradorINTERNO: TIBStringField;
    SelCobradorATIVO: TIBStringField;
    ProdutosClientesINFORMACOES: TMemoField;
    SecoesProdutos: TIBDataSet;
    SecoesProdutosCNPJ: TIBStringField;
    SecoesProdutosCOD_SECAO: TIntegerField;
    SecoesProdutosNOME: TIBStringField;
    qrySelSecoes: TIBQuery;
    qrySelSecoesCNPJ: TIBStringField;
    qrySelSecoesCOD_SECAO: TIntegerField;
    qrySelSecoesNOME: TIBStringField;
    ProdutosClientesMEDIA_COPIAS: TIntegerField;
    ProdutosClientesDIAS_RECHAMADO: TIntegerField;
    ProdutosClientesQTDE_COPIAS_PREVENTIVA: TIntegerField;
    Cobrador: TIBDataSet;
    CobradorCNPJ: TIBStringField;
    CobradorCODIGO: TIntegerField;
    CobradorNOME: TIBStringField;
    CobradorINTERNO: TIBStringField;
    CobradorATIVO: TIBStringField;
    Motivo_Cobranca: TIBDataSet;
    Motivo_CobrancaCNPJ: TIBStringField;
    Motivo_CobrancaCODIGO: TIntegerField;
    Motivo_CobrancaNOME: TIBStringField;
    Local_Cobranca: TIBDataSet;
    Local_CobrancaCNPJ: TIBStringField;
    Local_CobrancaCODIGO: TIntegerField;
    Local_CobrancaNOME: TIBStringField;
    Local_CobrancaENDERECO: TIBStringField;
    Local_CobrancaFONE: TIBStringField;
    Local_CobrancaCIDADE: TIBStringField;
    Local_CobrancaUF: TIBStringField;
    Local_CobrancaCODIGO_SCPC: TIBStringField;
    Local_CobrancaBAIRRO: TIBStringField;
    Local_CobrancaBANCO: TIBStringField;
    ContratosItens: TIBDataSet;
    ContratosItensCNPJ: TIBStringField;
    ContratosItensCODIGO: TIntegerField;
    ContratosItensCOD_PRODUTO: TIBStringField;
    ContratosItensCONTRATO: TIntegerField;
    ContratosItensDT_ADICAO: TDateTimeField;
    ContratosItensDATA: TDateTimeField;
    ContratosItensATIVO: TIBStringField;
    ContratosItensPRODUTO: TIBStringField;
    ContratosItensTIPO_PRODUTO: TIBStringField;
    Contrato: TIBDataSet;
    dsLinkContrato: TDataSource;
    ContratosItensQTDE_COPIAS_PREVENTIVA: TIntegerField;
    ContratosItensDIAS_RECHAMADO: TIntegerField;
    ContratosItensMEDIA_COPIAS: TIntegerField;
    ContratosItensTEMPO_RESPOSTA: TIntegerField;
    ContratosItensSERIE: TIBStringField;
    ContratosItensINFORMACOES_ITENS: TMemoField;
    qryLocContratos: TIBQuery;
    qryLocContratosCNPJ: TIBStringField;
    qryLocContratosCODIGO: TIntegerField;
    qryLocContratosCOD_CLIENTE: TIntegerField;
    qryLocContratosCOD_CONTRATO: TIntegerField;
    qryLocContratosNUM_CONTRATO: TIBStringField;
    qryLocContratosDT_INICIO: TDateTimeField;
    qryLocContratosDT_FIM: TDateTimeField;
    qryLocContratosATIVO: TIBStringField;
    qryLocContratosINFORMACOES: TMemoField;
    qryLocContratosDATA: TDateField;
    qryLocContratosGERA_FATURAMENTO: TIBStringField;
    qryLocContratosNOME_RAZAO: TIBStringField;
    qryLocContratosTIPO_CONTRATO: TIBStringField;
    SelContratosLeitura: TIBQuery;
    SelContratosLeituraCONTRATO: TIBStringField;
    Leitura: TIBDataSet;
    LeituraCNPJ: TIBStringField;
    LeituraCODIGO: TIntegerField;
    LeituraCONTRATO: TIntegerField;
    LeituraDATA_REFERENCIA: TDateField;
    LeituraFECHADA: TIBStringField;
    LeituraGERA_FATURAMENTO: TIBStringField;
    SelContratosLeituraCODIGO: TIntegerField;
    LeituraItens: TIBDataSet;
    LeituraItensCNPJ: TIBStringField;
    LeituraItensCODIGO: TIntegerField;
    LeituraItensLEITURA: TIntegerField;
    LeituraItensCOD_ITEM_CONTRATO: TIntegerField;
    LeituraItensULTIMA_LEITURA: TIntegerField;
    LeituraItensLEITURA_ATUAL: TIntegerField;
    LeituraItensSALDO_LEITURA: TIntegerField;
    LeituraItensCOD_PRODUTO: TIBStringField;
    LeituraItensNOME_PRODUTO: TIBStringField;
    LeituraItensSERIE: TIBStringField;
    dsLinkLeitura: TDataSource;
    GerarItens: TIBStoredProc;
    SelContratosLeituraFRANQUIA_COPIAS: TIntegerField;
    SelContratosLeituraVALOR_CONTRATO: TFloatField;
    SelContratosLeituraVALOR_COPIA_EXCEDENTE: TFloatField;
    LeituraTOTAL_COPIAS: TIntegerField;
    LeituraCOPIAS_EXCESSO: TIntegerField;
    LeituraVALOR_LEITURA: TFloatField;
    LeituraCTR_VALOR: TFloatField;
    LeituraCTR_FRANQUIA: TIntegerField;
    LeituraCTR_VALOR_COPIA_EXCEDENTE: TFloatField;
    LeituraItensCONTRATO: TIntegerField;
    SelLeituras: TIBQuery;
    SelLeiturasCNPJ: TIBStringField;
    SelLeiturasLT_CODIGO: TIntegerField;
    SelLeiturasLT_CONTRATO: TIntegerField;
    SelLeiturasLT_DATA_REFERENCIA: TDateField;
    SelLeiturasLT_FECHADA: TIBStringField;
    SelLeiturasLT_GERA_FATURAMENTO: TIBStringField;
    SelLeiturasLT_TOTAL_COPIAS: TIntegerField;
    SelLeiturasLT_COPIAS_EXCESSO: TIntegerField;
    SelLeiturasLT_VALOR_LEITURA: TFloatField;
    SelLeiturasLT_CTR_VALOR: TFloatField;
    SelLeiturasLT_CTR_FRANQUIA: TIntegerField;
    SelLeiturasLT_CTR_VALOR_COPIA_EXCEDENTE: TFloatField;
    SelLeiturasCLI_CODIGO: TIntegerField;
    SelLeiturasCLI_NOME: TIBStringField;
    SelLeiturasCLI_FONE: TIBStringField;
    SelLeiturasCLI_CONTATO: TIBStringField;
    SelLeiturasCDD_NOME: TIBStringField;
    SelLeiturasTIPO_CONTRATO: TIBStringField;
    SelLeiturasCT_NUM_CONTRATO: TIBStringField;
    SelLeiturasCT_DT_INICIO: TDateTimeField;
    SelLeiturasCT_DT_FIM: TDateTimeField;
    SelLeiturasCT_FRANQUIA_COPIAS: TIntegerField;
    SelLeiturasCT_GERA_LEITURA: TIBStringField;
    SelLeiturasCT_VALOR_CONTRATO: TFloatField;
    SelLeiturasCT_VALOR_COPIA_EXCEDENTE: TFloatField;
    SelLeiturasCT_ATIVO: TIBStringField;
    PCD_LT_GERA_VENDA: TIBStoredProc;
    LeituraVENDA: TIntegerField;
    SelLeiturasVENDA: TIntegerField;
    pcd_exclui_leitura: TIBStoredProc;
    PCD_OFC_EST_LEITURA: TIBStoredProc;
    GeraLeituras: TIBStoredProc;
    SelLeiturasLT_DATA: TDateField;
    LeituraDATA: TDateField;
    SelLeiturasREG_NOME: TIBStringField;
    ContratosItensDT_RETIRADA: TDateField;
    AGR_Defensivo: TIBDataSet;
    AGR_DefensivoCNPJ: TIBStringField;
    AGR_DefensivoCODIGO: TIntegerField;
    AGR_DefensivoCOD_PRODUTO: TIBStringField;
    AGR_DefensivoNOME_TECNICO: TIBStringField;
    AGR_DefensivoNOME_COMUM: TIBStringField;
    AGR_DefensivoFORMULACAO: TIBStringField;
    AGR_DefensivoINGREDIENTE_ATIVO: TIBStringField;
    AGR_DefensivoCONCENTRACAO: TFloatField;
    AGR_DefensivoFORMULA_BRUTA: TIBStringField;
    AGR_DefensivoNUMERO_REGISTRO: TIntegerField;
    AGR_DefensivoCOD_CATEGORIA_DEFENSIVO: TIntegerField;
    AGR_DefensivoCOD_CLASSE_TOXICOLOGICA: TIntegerField;
    AGR_DefensivoCOD_CLASSIFICACAO_AMBIENTAL: TIntegerField;
    AGR_DefensivoCOD_CLASSIFICACAO_QUIMICA: TIntegerField;
    AGR_DefensivoCOD_ORIENTACAO_TECNICA: TIntegerField;
    AGR_DefensivoCOD_ORIENTACAO_COMPLEMENTAR: TIntegerField;
    AGR_DefensivoCOD_INFORMACAO_APLICACAO: TIntegerField;
    AGR_DefensivoCOD_ORIENTACAO_EQUIPAMENTO: TIntegerField;
    AGR_DefensivoCOD_REGISTRANTE: TIntegerField;
    AGR_DefensivoNUMERO_RISCO: TIntegerField;
    AGR_DefensivoNUMERO_ONU: TIntegerField;
    AGR_DefensivoCLASSE_RISCO: TIBStringField;
    AGR_DefensivoDESCRICAO_CLASSE_RISCO: TIBStringField;
    AGR_DefensivoGRUPO_EMBALAGEM: TIBStringField;
    AGR_DefensivoMATERIAL_EMBALAGEM: TIntegerField;
    AGR_DefensivoNOME_APROP_EMBARQUE: TIBStringField;
    AGR_Categoria: TIBDataSet;
    AGR_CategoriaCNPJ: TIBStringField;
    AGR_CategoriaCODIGO: TIntegerField;
    AGR_CategoriaDESCRICAO: TIBStringField;
    AGR_ClassTox: TIBDataSet;
    AGR_ClassToxCNPJ: TIBStringField;
    AGR_ClassToxCODIGO: TIntegerField;
    AGR_ClassToxDESCRICAO: TIBStringField;
    AGR_ClassAmb: TIBDataSet;
    AGR_ClassAmbCNPJ: TIBStringField;
    AGR_ClassAmbCODIGO: TIntegerField;
    AGR_ClassAmbDESCRICAO: TIBStringField;
    AGR_ClassQuimica: TIBDataSet;
    AGR_ClassQuimicaCNPJ: TIBStringField;
    AGR_ClassQuimicaCODIGO: TIntegerField;
    AGR_ClassQuimicaDESCRICAO: TIBStringField;
    AGR_DefensivoCOD_FABRICANTE: TIntegerField;
    AGR_Fabricante: TIBDataSet;
    AGR_FabricanteCNPJ: TIBStringField;
    AGR_FabricanteCODIGO: TIntegerField;
    AGR_FabricanteDESCRICAO: TIBStringField;
    AGR_MaterialEmb: TIBDataSet;
    AGR_MaterialEmbCNPJ: TIBStringField;
    AGR_MaterialEmbCODIGO: TIntegerField;
    AGR_MaterialEmbDESCRICAO: TIBStringField;
    AGR_DefensivoCOD_MAT_EMBALAGEM: TIntegerField;
    AGR_OrTecnica: TIBDataSet;
    AGR_OrTecnicaCNPJ: TIBStringField;
    AGR_OrTecnicaCODIGO: TIntegerField;
    AGR_OrTecnicaDESCRICAO: TIBStringField;
    AGR_OrComplementar: TIBQuery;
    AGR_OrComplementarCNPJ: TIBStringField;
    AGR_OrComplementarCODIGO: TIntegerField;
    AGR_OrComplementarDESCRICAO: TIBStringField;
    Agr_OrAplicacao: TIBQuery;
    Agr_OrAplicacaoCNPJ: TIBStringField;
    Agr_OrAplicacaoCODIGO: TIntegerField;
    Agr_OrAplicacaoDESCRICAO: TIBStringField;
    Agr_OrEquipamento: TIBQuery;
    Agr_OrEquipamentoCNPJ: TIBStringField;
    Agr_OrEquipamentoCODIGO: TIntegerField;
    Agr_OrEquipamentoDESCRICAO: TIBStringField;
    AGR_Registrante: TIBDataSet;
    AGR_RegistranteCNPJ: TIBStringField;
    AGR_RegistranteCODIGO: TIntegerField;
    AGR_RegistranteDESCRICAO: TIBStringField;
    qryLocDefensivos: TIBQuery;
    qryLocDefensivosCODIGO: TIntegerField;
    qryLocDefensivosCOD_PRODUTO: TIBStringField;
    qryLocDefensivosPRODUTO: TIBStringField;
    qryLocDefensivosCATEGORIA: TIBStringField;
    qryLocDefensivosCLASS_TOXICOLOGICA: TIBStringField;
    qryLocDefensivosCLASS_AMBIENTAL: TIBStringField;
    qryLocDefensivosCLASS_QUIMICA: TIBStringField;
    qryLocDefensivosFABRICANTE: TIBStringField;
    qryLocDefensivosMAT_EMBALAGEM: TIBStringField;
    qryLocDefensivosOR_TECNICA: TIBStringField;
    qryLocDefensivosOR_COMPLEMENTAR: TIBStringField;
    qryLocDefensivosINFO_APLICACAO: TIBStringField;
    qryLocDefensivosOR_EQUIPAMENTO: TIBStringField;
    qryLocDefensivosREGISTRANTE: TIBStringField;
    qryLocDefensivosNOME_TECNICO: TIBStringField;
    qryLocDefensivosNOME_COMUM: TIBStringField;
    qryLocDefensivosFORMULACAO: TIBStringField;
    qryLocDefensivosINGREDIENTE_ATIVO: TIBStringField;
    qryLocDefensivosCONCENTRACAO: TFloatField;
    qryLocDefensivosFORMULA_BRUTA: TIBStringField;
    qryLocDefensivosNUMERO_REGISTRO: TIntegerField;
    qryLocDefensivosNUMERO_RISCO: TIntegerField;
    qryLocDefensivosNUMERO_ONU: TIntegerField;
    qryLocDefensivosCLASSE_RISCO: TIBStringField;
    qryLocDefensivosDESCRICAO_CLASSE_RISCO: TIBStringField;
    qryLocDefensivosNOME_APROP_EMBARQUE: TIBStringField;
    SelLeiturasDIA_BASE: TSmallintField;
    NFe_Produtos: TIBDataSet;
    NFe_ProdutosCODIGO: TIBStringField;
    NFe_ProdutosNOME: TIBStringField;
    NFe_ProdutosMARCA: TIBStringField;
    NFe_ProdutosGRUPO: TIBStringField;
    NFe_ProdutosSELECIONADO: TIBStringField;
    NFe_ProdutosCNPJ: TIBStringField;
    NFe_ProdutosEXPORTADO: TIBStringField;
    NFe_Clientes: TIBDataSet;
    NFe_ClientesCODIGO: TIntegerField;
    NFe_ClientesNOME_RAZAO: TIBStringField;
    NFe_ClientesSELECIONADO: TIBStringField;
    NFe_ClientesNFE_EXP: TIBStringField;
    NFe_ClientesCNPJ: TIBStringField;
    NFe_ClientesPESSOA: TIBStringField;
    NFe_Transportadoras: TIBDataSet;
    NFe_TransportadorasCODIGO: TIntegerField;
    NFe_TransportadorasNOME: TIBStringField;
    NFe_TransportadorasCPF_CNPJ: TIBStringField;
    NFe_TransportadorasSELECIONADO: TIBStringField;
    NFe_TransportadorasNFE_EXP: TIBStringField;
    NFe_TransportadorasCNPJ: TIBStringField;
    qryLocContratosFANTASIA: TIBStringField;
    NFe_QrySeries: TIBQuery;
    NFe_QrySeriesSERIE: TIBStringField;
    UnidadeConversao: TIBDataSet;
    UnidadeConversaoCNPJ: TIBStringField;
    UnidadeConversaoCODIGO: TIntegerField;
    UnidadeConversaoCOD_UND_PADRAO: TIBStringField;
    UnidadeConversaoCOD_UND_CONVERSAO: TIBStringField;
    UnidadeConversaoFATOR: TIntegerField;
    UnidadeConversaoQTDE: TFloatField;
    qryUndPadrao: TIBQuery;
    qryUndConversao: TIBQuery;
    qryUndPadraoSIGLA: TIBStringField;
    qryUndPadraoNOME: TIBStringField;
    qryUndConversaoSIGLA: TIBStringField;
    qryUndConversaoNOME: TIBStringField;
    AGR_Pragas: TIBDataSet;
    AGR_PragasCNPJ: TIBStringField;
    AGR_PragasCODIGO: TIntegerField;
    AGR_PragasDESCRICAO: TIBStringField;
    AGR_Cultura: TIBDataSet;
    IBStringField1: TIBStringField;
    IntegerField1: TIntegerField;
    IBStringField2: TIBStringField;
    AGR_Und_Med_Vazao: TIBDataSet;
    AGR_Und_Med_VazaoCNPJ: TIBStringField;
    AGR_Und_Med_VazaoCODIGO: TIntegerField;
    AGR_Und_Med_VazaoDESCRICAO: TIBStringField;
    AGR_Und_Med_VazaoSIGLA: TIBStringField;
    AGR_Und_Med_VazaoIDUNIDADEMEDIDA_DE: TIBStringField;
    AGR_Und_Med_VazaoIDUNIDADEMEDIDA_POR: TIBStringField;
    AGR_DEF_CULT_PRAGA: TIBDataSet;
    AGR_DEF_CULT_PRAGACNPJ: TIBStringField;
    AGR_DEF_CULT_PRAGACODIGO: TIntegerField;
    AGR_DEF_CULT_PRAGADOSAGEM: TFloatField;
    AGR_DEF_CULT_PRAGAVAZAO: TFloatField;
    AGR_DEF_CULT_PRAGAINTERVALOSEGURANCA: TIntegerField;
    AGR_DEF_CULT_PRAGAIDMEDIDADOSAGEM: TIntegerField;
    AGR_DEF_CULT_PRAGAIDMEDIDAVAZAO: TIntegerField;
    AGR_DEF_CULT_PRAGAIDCULTURA: TIntegerField;
    AGR_DEF_CULT_PRAGAIDPRAGA: TIntegerField;
    AGR_DEF_CULT_PRAGAIDDEFENSIVOAGRICOLA: TIntegerField;
    dsLinkDefensivo: TDataSource;
    QryPragas: TIBQuery;
    QryPragasCNPJ: TIBStringField;
    QryPragasCODIGO: TIntegerField;
    QryPragasDESCRICAO: TIBStringField;
    QryCulturas: TIBQuery;
    QryCulturasCNPJ: TIBStringField;
    QryCulturasCODIGO: TIntegerField;
    QryCulturasDESCRICAO: TIBStringField;
    AGR_DEF_CULT_PRAGALK_PRAGA: TStringField;
    AGR_DEF_CULT_PRAGALK_CULTURA: TStringField;
    QryUndMedDosagem: TIBQuery;
    QryUndMedDosagemCNPJ: TIBStringField;
    QryUndMedDosagemCODIGO: TIntegerField;
    QryUndMedDosagemDESCRICAO: TIBStringField;
    QryUndMedDosagemSIGLA: TIBStringField;
    QryUndMedDosagemIDUNIDADEMEDIDA_DE: TIBStringField;
    QryUndMedDosagemIDUNIDADEMEDIDA_POR: TIBStringField;
    QryUndMedVazao: TIBQuery;
    QryUndMedVazaoCNPJ: TIBStringField;
    QryUndMedVazaoCODIGO: TIntegerField;
    QryUndMedVazaoDESCRICAO: TIBStringField;
    QryUndMedVazaoSIGLA: TIBStringField;
    QryUndMedVazaoIDUNIDADEMEDIDA_DE: TIBStringField;
    QryUndMedVazaoIDUNIDADEMEDIDA_POR: TIBStringField;
    AGR_DEF_CULT_PRAGALK_UND_MED_DOSAGEM: TStringField;
    AGR_DEF_CULT_PRAGALK_UND_MED_VAZAO: TStringField;
    SelReceitas: TIBQuery;
    SelReceitasCNPJ: TIBStringField;
    SelReceitasCODIGO: TIntegerField;
    SelReceitasCOD_FATURAMENTO: TIntegerField;
    SelReceitasCOD_DEFENSIVO: TIntegerField;
    SelReceitasCOD_PRAGA: TIntegerField;
    SelReceitasCOD_CULTURA: TIntegerField;
    SelReceitasDT_IMPRESSAO: TDateField;
    SelReceitasCOD_TECNICO: TIntegerField;
    SelReceitasN_RECEITA: TIntegerField;
    SelReceitasNOME_RAZAO: TIBStringField;
    SelReceitasNUM_NF: TIntegerField;
    SelReceitasCPF_CGC: TIBStringField;
    SelReceitasCOD_VENDA: TIntegerField;
    SelReceitasPROPRIEDADE: TIBStringField;
    SelReceitasDT_FATURAMENTO: TDateField;
    SelReceitasDT_CAIXA: TDateTimeField;
    SelReceitasPSA_CODIGO: TIntegerField;
    Receituario: TIBDataSet;
    ReceituarioCNPJ: TIBStringField;
    ReceituarioCODIGO: TIntegerField;
    ReceituarioDT_EMISSAO: TDateField;
    ReceituarioCOD_DEFENSIVO: TIntegerField;
    ReceituarioCOD_CULTURA: TIntegerField;
    ReceituarioCOD_FATURAMENTO: TIntegerField;
    ReceituarioCOD_TECNICO: TIntegerField;
    ReceituarioN_RECEITA: TIntegerField;
    ReceituarioPRODUTO: TIBStringField;
    ReceituarioNUM_NF: TIntegerField;
    ReceituarioNOME_RAZAO: TIBStringField;
    ReceituarioDATA_CAIXA: TDateTimeField;
    ReceituarioIMPRESSA: TIBStringField;
    qryReceita: TIBQuery;
    ReceituarioVD_DATA: TDateField;
    ReceituarioDATA: TDateField;
    EdtReceita: TIBDataSet;
    EdtReceitaCNPJ: TIBStringField;
    EdtReceitaCODIGO: TIntegerField;
    EdtReceitaCOD_DEFENSIVO: TIntegerField;
    EdtReceitaCOD_PRAGA: TIntegerField;
    EdtReceitaCOD_CULTURA: TIntegerField;
    EdtReceitaCOD_TECNICO: TIntegerField;
    EdtReceitaDT_EMISSAO: TDateField;
    EdtReceitaN_RECEITA: TIntegerField;
    EdtReceitaIMPRESSA: TIBStringField;
    EdtReceitaCOD_FATURAMENTO: TIntegerField;
    EdtReceitaPRODUTO: TIBStringField;
    EdtReceitaSEQUENCIA: TIntegerField;
    EdtReceitaDATA: TDateField;
    SelReceitasDT_EMISSAO: TDateField;
    SelReceitasIMPRESSA: TIBStringField;
    SelReceitasPRODUTO: TIBStringField;
    SelReceitasSEQUENCIA: TIntegerField;
    SelReceitasDATA: TDateField;
    QryCulturasRec: TIBQuery;
    QryPragasRec: TIBQuery;
    IntegerField3: TIntegerField;
    IBStringField6: TIBStringField;
    QryCulturasRecCODIGO: TIntegerField;
    QryCulturasRecDESCRICAO: TIBStringField;
    qryReceitaNOME_PROPRIETARIO: TIBStringField;
    qryReceitaNOME_PROPRIEDADE: TIBStringField;
    qryReceitaCIDADE_PROPRIEDADE: TIBStringField;
    qryReceitaCULTURA: TIBStringField;
    qryReceitaPRAGA: TIBStringField;
    qryReceitaCOD_PRODUTO: TIBStringField;
    qryReceitaMEDIDA_DOSAGEM: TIBStringField;
    qryReceitaMEDIDA_VAZAO: TIBStringField;
    qryReceitaORIENTACAO_USO_EQUIPAMENTO: TIBStringField;
    qryReceitaORIENTACAO_TECNICA: TIBStringField;
    qryReceitaORIENTACAO_COMPLEMENTAR: TIBStringField;
    qryReceitaORIENTACAO_FORMA_APLICACAO: TIBStringField;
    qryReceitaINGREDIENTE_ATIVO: TIBStringField;
    qryReceitaNOME_PRODUTO: TIBStringField;
    qryReceitaDOSAGEM: TIBBCDField;
    qryReceitaVAZAO: TIBBCDField;
    qryReceitaFORMULACAO: TIBStringField;
    qryReceitaCIDADE_EMPRESA: TIBStringField;
    qryReceitaCLASSE_TOXICOLOGICA: TIBStringField;
    qryReceitaDATA_EMISSAO: TDateField;
    qryReceitaNOME_TECNICO: TIBStringField;
    qryReceitaCREA_TECNICO: TIBStringField;
    qryReceitaCTPS_TECNICO: TIBStringField;
    qryReceitaCPF_CNPJ_PRODUTOR: TIBStringField;
    qryReceitaCNPJ_EMPRESA: TIBStringField;
    qryReceitaINTERVALO_SEGURANCA: TIntegerField;
    qryReceitaAREA_TRATADA: TIBBCDField;
    ReceituarioCOD_PRAGA: TIntegerField;
    ReceituarioPRAGA: TIBStringField;
    ReceituarioCULTURA: TIBStringField;
    ReceituarioTECNICO: TIBStringField;
    qryReceitaCPF_CNPJ_TECNICO: TIBStringField;
    QryAcerto: TIBQuery;
    QryAcertoACT_COD_CONTA: TIntegerField;
    QryAcertoACT_TIPO_MOVIMENTO: TIBStringField;
    QryAcertoACT_DOCTO: TIBStringField;
    QryAcertoACT_PARCELA: TIBStringField;
    QryAcertoACT_DT_EMISSAO: TDateField;
    QryAcertoACT_DT_VENCTO: TDateField;
    QryAcertoACT_QTDE_MOEDA: TIBBCDField;
    QryAcertoACT_VALOR_NOMINAL: TIBBCDField;
    QryAcertoACT_JUROS: TIBBCDField;
    QryAcertoACT_VARIACAO: TIBBCDField;
    QryAcertoACT_MULTA: TIBBCDField;
    QryAcertoACT_DESCONTO: TIBBCDField;
    QryAcertoACT_TOTAL: TIBBCDField;
    QryAcertoPSA_NOME: TIBStringField;
    QryAcertoPSA_CPF_CGC: TIBStringField;
    QryAcertoEMP_NOME: TIBStringField;
    QryAcertoEMP_IE: TIBStringField;
    QryAcertoEMP_BAIRRO: TIBStringField;
    QryAcertoEMP_LOGRADOURO: TIBStringField;
    QryAcertoEMP_CIDADE: TIBStringField;
    QryAcertoEMP_NUMERO: TIntegerField;
    QryAcertoACT_PLANILHA: TIntegerField;
    QryAcertoACT_TIPO_ACERTO: TIBStringField;
    QryAcertoUSR_NOME: TIBStringField;
    QryAcertoEMP_CNPJ: TIBStringField;
    QryAcertoB_ACT_VALOR_NOMINAL: TIBBCDField;
    QryAcertoB_ACT_JUROS: TIBBCDField;
    QryAcertoB_ACT_VARIACAO: TIBBCDField;
    QryAcertoB_ACT_MULTA: TIBBCDField;
    QryAcertoB_ACT_DESCONTO: TIBBCDField;
    QryAcertoB_ACT_TOTAL: TIBBCDField;
    qryReceitaAREA_TOTAL: TIBStringField;
    ACT_EVENTO_CONTABIL: TIBDataSet;
    ACT_EVENTO_CONTABILCNPJ: TIBStringField;
    ACT_EVENTO_CONTABILCODEVENTOCONTABIL: TIntegerField;
    ACT_EVENTO_CONTABILDESCRICAO: TIBStringField;
    ACT_EVENTO_CONTABILCODIGO: TIBStringField;
    ACT_EVENTO_CONTABILTIPO: TIBStringField;
    ACT_EVENTO_CONTABILMOVIMENTAFLUXODECAIXAREALIZADO: TIBStringField;
    ACT_EVENTO_CONTABILCONTABILIZACAOAUXILIAR: TIBStringField;
    ACT_EVENTO_CONTABILOBSERVACAO: TBlobField;
    QryAcertoPSA_NOME_RECIBO: TIBStringField;
    QryActTTGerado: TIBQuery;
    QryActTTGeradoCODIGO: TIntegerField;
    QryActTTGeradoPARCELA: TIBStringField;
    QryActTTGeradoQTDE_MOEDA: TIBBCDField;
    QryActTTGeradoVALOR: TIBBCDField;
    QryActTTGeradoNOME_RAZAO: TIBStringField;
    QryActTTGeradoCPF_CNPJ: TIBStringField;
    QryActTTGeradoDT_VENCTO: TDateField;
    qryReceitaQTDE_ITENS: TFloatField;
    QryActCheques: TIBQuery;
    QryActCartao: TIBQuery;
    QryActCartaoADMINISTRADORA: TIBStringField;
    QryActCartaoCLIENTE: TIBStringField;
    QryActCartaoNUM_CARTAO: TIBStringField;
    QryActCartaoNUM_CONTA: TIBStringField;
    QryActCartaoREEMBOLSO: TDateTimeField;
    QryActCartaoVALOR: TFloatField;
    QryActCartaoCPF_CNPJ: TIBStringField;
    QryActCartaoNUM_PARCELAS: TIntegerField;
    QryActChequesAGENCIA: TIBStringField;
    QryActChequesBANCO: TIBStringField;
    QryActChequesCHEQUE: TIBStringField;
    QryActChequesHISTORICO: TIBStringField;
    QryActChequesCONTA: TIBStringField;
    QryActChequesPRE_DATE: TDateTimeField;
    QryActChequesPESSOA_FJ: TIntegerField;
    QryActChequesNOME_RAZAO: TIBStringField;
    QryActChequesTIPO: TIBStringField;
    QryActChequesNOME_BANCO: TIBStringField;
    QryActChequesVALOR: TFloatField;
    QryActMovimento: TIBQuery;
    QryActMovimentoCODIGO: TIntegerField;
    QryActMovimentoCONTA: TIntegerField;
    QryActMovimentoBANCO: TIBStringField;
    QryActMovimentoCOD_DOC: TIBStringField;
    QryActMovimentoHISTORICO: TIBStringField;
    QryActMovimentoVALOR: TFloatField;
    QryActMovimentoTIPO: TIBStringField;
    QryActMovimentoNOME_BANCO: TIBStringField;
    QryAcertoSALDO: TIBBCDField;
    SelFiltraParceiro: TIBDataSet;
    SelFiltraParceiroCODIGO: TIntegerField;
    SelFiltraParceiroNOME_RAZAO: TIBStringField;
    SelFiltraParceiroFANTASIA: TIBStringField;
    SelFiltraParceiroCPF_CGC: TIBStringField;
    SelFiltraParceiroSELECIONADO: TIBStringField;
    SelFiltraParceiroCNPJ: TIBStringField;
    QryAcertoNUM_NF: TIntegerField;
    SelClientesEMAIL: TIBStringField;
    SelMensalidades: TIBDataSet;
    SelMensalidadesCNPJ: TIBStringField;
    SelMensalidadesFATURAMENTO: TIntegerField;
    SelMensalidadesMS_CODIGO: TIntegerField;
    SelMensalidadesMS_CONTRATO: TIntegerField;
    SelMensalidadesMS_DATA_REFERENCIA: TDateField;
    SelMensalidadesMS_DATA: TDateField;
    SelMensalidadesMS_FECHADA: TIBStringField;
    SelMensalidadesMS_GERA_FATURAMENTO: TIBStringField;
    SelMensalidadesMS_VALOR: TFloatField;
    SelMensalidadesMS_CTR_VALOR: TFloatField;
    SelMensalidadesCLI_CODIGO: TIntegerField;
    SelMensalidadesCLI_NOME: TIBStringField;
    SelMensalidadesCLI_FONE: TIBStringField;
    SelMensalidadesCLI_CONTATO: TIBStringField;
    SelMensalidadesCDD_NOME: TIBStringField;
    SelMensalidadesREG_NOME: TIBStringField;
    SelMensalidadesTIPO_CONTRATO: TIBStringField;
    SelMensalidadesCT_NUM_CONTRATO: TIBStringField;
    SelMensalidadesCT_DT_INICIO: TDateTimeField;
    SelMensalidadesCT_DT_FIM: TDateTimeField;
    SelMensalidadesCT_VALOR_CONTRATO: TFloatField;
    SelMensalidadesCT_ATIVO: TIBStringField;
    GeraMensalidades: TIBStoredProc;
    Mensalidade: TIBDataSet;
    MensalidadeCNPJ: TIBStringField;
    MensalidadeCODIGO: TIntegerField;
    MensalidadeCONTRATO: TIntegerField;
    MensalidadeDATA_REFERENCIA: TDateField;
    MensalidadeDATA: TDateField;
    MensalidadeFECHADA: TIBStringField;
    MensalidadeGERA_FATURAMENTO: TIBStringField;
    MensalidadeVALOR_MENSALIDADE: TFloatField;
    MensalidadeCTR_VALOR: TFloatField;
    MensalidadeFATURAMENTO: TIntegerField;
    MensalidadeItens: TIBDataSet;
    MensalidadeItensCNPJ: TIBStringField;
    MensalidadeItensCODIGO: TIntegerField;
    MensalidadeItensCOD_MENSALIDADE: TIntegerField;
    MensalidadeItensCOD_ITEM_CONTRATO: TIntegerField;
    MensalidadeItensVALOR: TFloatField;
    MensalidadeItensCONTRATO: TIntegerField;
    MensalidadeItensCOD_PRODUTO: TIBStringField;
    MensalidadeItensSERIE: TIBStringField;
    MensalidadeItensNOME_PRODUTO: TIBStringField;
    dsLinkMensalidade: TDataSource;
    GerarItenMen: TIBStoredProc;
    pcd_exclui_mensalidade: TIBStoredProc;
    PCD_MS_GERA_VENDA: TIBStoredProc;
    SelMensalidadesDIA_BASE: TSmallintField;
    SelMensalidadesSELECIONADO: TIBStringField;
    PCD_MS_ESTORNA_FATURAMENTOS: TIBStoredProc;
    SelFiltraParceiroEMAIL: TIBStringField;
    SelClientes2: TIBQuery;
    SelClientes2CODIGO: TIntegerField;
    SelClientes2NOME_RAZAO: TIBStringField;
    SelClientes2TECNICO: TIntegerField;
    SelClientes2EMAIL: TIBStringField;
    SelUsuario: TIBQuery;
    SelUsuarioCODIGO: TIntegerField;
    SelUsuarioLOGIN: TIBStringField;
    SelUsuarioNOME: TIBStringField;
    SelUsuarioPERFIL: TIntegerField;
    SelUsuarioSENHA: TIBStringField;
    ContratosItensCOD_INDEXADOR: TIntegerField;
    ContratosItensDT_VIGENCIA_INICIAL: TDateField;
    ContratosItensDT_VIGENCIA_FINAL: TDateField;
    CtItensDesconto: TIBDataSet;
    CtItensDescontoCNPJ: TIBStringField;
    CtItensDescontoCODIGO: TIntegerField;
    CtItensDescontoCOD_ITEM: TIntegerField;
    CtItensDescontoVALOR: TFloatField;
    CtItensDescontoDT_VIGENCIA_INICIAL: TDateField;
    CtItensDescontoDT_VIGENCIA_FINAL: TDateField;
    dsLinkItemContrato: TDataSource;
    DStatusFECHADO: TIBStringField;
    NFe_Faturamentos_Itens: TIBDataSet;
    NFe_Faturamentos_ItensNITEM: TIntegerField;
    NFe_Faturamentos_ItensCFOP: TIntegerField;
    NFe_Faturamentos_ItensCPROD: TIBStringField;
    NFe_Faturamentos_ItensCXPRODUTO: TIBStringField;
    NFe_Faturamentos_ItensQCOM: TFloatField;
    NFe_Faturamentos_ItensUCOM: TIBStringField;
    NFe_Faturamentos_ItensVPROD: TFloatField;
    NFe_Faturamentos_ItensVUNCOM: TFloatField;
    NFe_Faturamentos_ItensQTRIB: TFloatField;
    NFe_Faturamentos_ItensUTRIB: TIBStringField;
    NFe_Faturamentos_ItensVUTRIB: TFloatField;
    NFe_Faturamentos_ItensTRIB_MODALIDADE: TIBStringField;
    NFe_Faturamentos_ItensPICMS: TIBBCDField;
    NFe_Faturamentos_ItensVICMS: TIBBCDField;
    NFe_Faturamentos_ItensVBC: TIBBCDField;
    NFe_Faturamentos_ItensCST: TIBStringField;
    dsLinkNFeFat: TDataSource;
    SelClientes3: TIBQuery;
    SelClientes3CODIGO: TIntegerField;
    SelClientes3NOME_RAZAO: TIBStringField;
    SelClientes3TECNICO: TIntegerField;
    SelClientes3EMAIL: TIBStringField;
    DStatusOS: TIBStringField;
    DStatusMOVIMENTO: TIBStringField;
    SelVeiculos: TIBQuery;
    SelVeiculosPLACA: TIBStringField;
    SelVeiculosDESCRICAO: TIBStringField;
    ProsoftCFMestre: TIBDataSet;
    ProsoftCFMestreCNPJ: TIBStringField;
    ProsoftCFMestreCODIGO: TIntegerField;
    ProsoftCFMestreDATA_MOVIMENTO: TDateField;
    ProsoftCFMestreNUM_SEQ_ECF: TIBStringField;
    ProsoftCFMestreNUM_SER_ECF: TIBStringField;
    ProsoftCFMestreCT_OO_ANT: TIntegerField;
    ProsoftCFMestreCT_OO_FIN: TIntegerField;
    ProsoftCFMestreCT_RED_Z_FIN: TIntegerField;
    ProsoftCFMestreNUM_ULT_DOC_IMP: TIntegerField;
    ProsoftCFMestreNUM_CONT_R_OO: TIntegerField;
    ProsoftCFMestreTT_GERAL_INI: TFloatField;
    ProsoftCFMestreTT_GERAL_FIN: TFloatField;
    ProsoftCFMestreMOVIMENTO_DIA: TFloatField;
    ProsoftCFMestreCANCELAMENTOS: TFloatField;
    ProsoftCFMestreDESCCONTOS: TFloatField;
    ProsoftCFMestreTT_OP_ISS: TFloatField;
    ProsoftCFMestreACRESCIMO: TFloatField;
    ProsoftCFMestreVALOR_CONTABIL: TFloatField;
    ProsoftCFMestreF_SUB_TRIB: TFloatField;
    ProsoftCFMestreI_ISENTAS: TFloatField;
    ProsoftCFMestreN_INCIDENCIA: TFloatField;
    ProsoftCFMestreSUSPENSAO: TFloatField;
    ProsoftCFMestreALIQ_ICMS_01: TFloatField;
    ProsoftCFMestreDEBITO_ICMS_01: TFloatField;
    ProsoftCFMestreBASE_ICMS_01: TFloatField;
    ProsoftCFMestrePCT_REDUCAO_01: TFloatField;
    ProsoftCFMestreVALOR_S_REDUCAO_01: TFloatField;
    ProsoftCFMestreVALOR_C_REDUCAO_01: TFloatField;
    ProsoftCFMestreVALOR_ICMS_01: TFloatField;
    ProsoftCFMestreVALOR_OUTRAS_01: TFloatField;
    ProsoftCFMestreVALOR_ISENTAS_01: TFloatField;
    NFe_LOG: TIBDataSet;
    NFe_LOGCNPJ: TIBStringField;
    NFe_LOGCODIGO: TIntegerField;
    NFe_LOGCOD_FATURAMENTO: TIntegerField;
    NFe_LOGDATA: TDateField;
    NFe_LOGHORA: TTimeField;
    NFe_LOGXML: TMemoField;
    NFe_LOGUSUARIO: TIntegerField;
    NFe_Faturamentos_ItensPICMS_SUB: TIBBCDField;
    NFe_Faturamentos_ItensVICMS_SUB: TIBBCDField;
    NFe_Faturamentos_ItensVBC_SUB: TIBBCDField;
    UPDNFeVendas: TIBSQL;
    UPDNFeVendasCanc: TIBSQL;
    TipoMovimento: TIBDataSet;
    TipoMovimentoCNPJ: TIBStringField;
    TipoMovimentoCODIGO: TIntegerField;
    TipoMovimentoNOME: TIBStringField;
    SelTipoMovimento: TIBQuery;
    SelTipoMovimentoCNPJ: TIBStringField;
    SelTipoMovimentoCODIGO: TIntegerField;
    SelTipoMovimentoNOME: TIBStringField;
    QryActMovimentoDATA: TDateTimeField;
    SelDuplicatasVALOR_EXTENSO: TIBStringField;
    SelDuplicatasVD_TOTAL: TFloatField;
    SelDuplicatasVD_CODIGO: TIntegerField;
    SelDuplicatasVD_NUM_NF: TIntegerField;
    SelDuplicatasDPL_VALOR: TFloatField;
    SelDuplicatasDPL_VENCTO: TDateField;
    SelDuplicatasDPL_PARCELA: TIBStringField;
    SelDuplicatasSAC_CODIGO: TIntegerField;
    SelDuplicatasSAC_NOME: TIBStringField;
    SelDuplicatasDPL_NUMERO: TIntegerField;
    SelDuplicatasSAC_RG_IE: TIBStringField;
    SelDuplicatasSAC_ENDERECO: TIBStringField;
    SelDuplicatasSAC_CEP: TIBStringField;
    SelDuplicatasSAC_CIDADE: TIBStringField;
    SelDuplicatasSAC_BAIRRO: TIBStringField;
    SelDuplicatasSAC_UF: TIBStringField;
    SelDuplicatasSAC_CPF_CGC: TIBStringField;
    SelDuplicatasSAC_NUMERO: TIBStringField;
    SelDuplicatasPRD_QTDE: TFloatField;
    SelDuplicatasPRD_UNITARIO: TFloatField;
    SelDuplicatasPRD_TOTAL_UNITARIO: TFloatField;
    SelDuplicatasPRD_UNIDADE: TIBStringField;
    SelDuplicatasPRD_NOME: TIBStringField;
    SelDuplicatasPRD_CODIGO: TIBStringField;
    SelDuplicatasVD_DESCONTOS: TFloatField;
    SelDuplicatasPROP_BAIRRO: TIBStringField;
    SelDuplicatasPROP_IE: TIBStringField;
    SelDuplicatasPROP_NOME_ENDERECO: TIBStringField;
    SelDuplicatasPROP_CEP: TIBStringField;
    SelDuplicatasPROP_CIDADE: TIBStringField;
    SelDuplicatasPROP_UF: TIBStringField;
    SelDuplicatasPROP_NOME: TIBStringField;
    SelDuplicatasVDD_CODIGO: TIntegerField;
    SelDuplicatasVDD_NOME: TIBStringField;
    SelDuplicatasVDDI_NOME: TIBStringField;
    SelDuplicatasVDDI_CODIGO: TIntegerField;
    NFe_Faturamentos2: TIBDataSet;
    NFe_Faturamentos2CODIGO: TIntegerField;
    NFe_Faturamentos2NUM_NF: TIntegerField;
    NFe_Faturamentos2NUM_CF: TIntegerField;
    NFe_Faturamentos2TRP_PLACA: TIBStringField;
    NFe_Faturamentos2TRP_UF_PLACA: TIBStringField;
    NFe_Faturamentos2CANCELADA: TIBStringField;
    NFe_Faturamentos2TOTAL: TFloatField;
    NFe_Faturamentos2TOTAL_NF: TFloatField;
    NFe_Faturamentos2DESC_ACRESC: TFloatField;
    NFe_Faturamentos2DATA: TDateField;
    NFe_Faturamentos2DATA_CX: TDateField;
    NFe_Faturamentos2SELECIONADO: TIBStringField;
    NFe_Faturamentos2ID_AGRUPADOR: TIntegerField;
    NFe_Faturamentos2CFOP: TIntegerField;
    NFe_Faturamentos2NATUREZA: TIBStringField;
    NFe_Faturamentos2DEST_CPF_CNPJ: TIBStringField;
    NFe_Faturamentos2DEST_CEP: TIBStringField;
    NFe_Faturamentos2DEST_LOGRADOURO: TIBStringField;
    NFe_Faturamentos2DEST_NUMERO: TIBStringField;
    NFe_Faturamentos2DEST_COMPLEMENTO: TIBStringField;
    NFe_Faturamentos2DEST_BAIRRO: TIBStringField;
    NFe_Faturamentos2DEST_COD_CIDADE: TIntegerField;
    NFe_Faturamentos2DEST_CIDADE: TIBStringField;
    NFe_Faturamentos2DEST_UF: TIBStringField;
    NFe_Faturamentos2DEST_FONE: TIBStringField;
    NFe_Faturamentos2DEST_IE: TIBStringField;
    NFe_Faturamentos2DEST_RAZAO_SOCIAL: TIBStringField;
    NFe_Faturamentos2ICM: TFloatField;
    NFe_Faturamentos2VALOR_ICM_SUBST: TFloatField;
    NFe_Faturamentos2BASE_ICM: TFloatField;
    NFe_Faturamentos2BASE_ICM_SUBST: TFloatField;
    NFe_Faturamentos2SCNPJ: TIBStringField;
    NFe_Faturamentos2PSA_CODIGO: TIntegerField;
    NFe_Faturamentos2NFE_PROTOCOLO: TIBStringField;
    NFe_Faturamentos2NFE_RECIBO: TIBStringField;
    NFe_Faturamentos2NFE_XML: TBlobField;
    NFe_Faturamentos2AVISTA: TIBStringField;
    NFe_Faturamentos2OUTROS: TIBStringField;
    NFe_Faturamentos2ES: TIBStringField;
    NFe_Faturamentos2NFE_CHAVE: TIBStringField;
    NFe_Faturamentos2NFE_AUTORIZADA: TIBStringField;
    NFe_Faturamentos2OBSERVACAO: TIBStringField;
    NFe_Faturamentos2PGTO_FRETE: TIBStringField;
    NFe_Faturamentos2TRP_NOME: TIBStringField;
    NFe_Faturamentos2TRP_MOTORISTA: TIBStringField;
    NFe_Faturamentos2TRP_NUMERO: TIBStringField;
    NFe_Faturamentos2TRP_ESPECIE: TIBStringField;
    NFe_Faturamentos2TRP_PESO_BRUTO: TFloatField;
    NFe_Faturamentos2TRP_PESO_LIQUIDO: TFloatField;
    NFe_Faturamentos2TRP_QTDE: TFloatField;
    NFe_Faturamentos2TRP_CPF_CNPJ: TIBStringField;
    NFe_Faturamentos2TRP_ENDERECO: TIBStringField;
    NFe_Faturamentos2TRP_CIDADE: TIBStringField;
    NFe_Faturamentos2TRP_UF: TIBStringField;
    NFe_Faturamentos2TRP_IE: TIBStringField;
    SelDuplicatasSAC_FONE: TIBStringField;
    SelDuplicatasDPL_EMISSAO: TDateField;
    NFe_Faturamentos_ItensTRIB_PIS: TIBStringField;
    NFe_Faturamentos_ItensTRIB_COFINS: TIBStringField;
    NFe_Faturamentos_ItensTRIB_IPI: TIBStringField;
    ProsoftCFMestreAliq: TIBDataSet;
    ProsoftCFMestreAliqCODIGO: TIntegerField;
    ProsoftCFMestreAliqALIQUOTA: TIBStringField;
    ProsoftCFMestreAliqVALOR: TFloatField;
    ProsoftCFMestreAliqCOD_EXP_CTB_CF_PROSOFT: TIntegerField;
    ProsoftCFMestreAliqCNPJ: TIBStringField;
    dsLinkCUPOM: TDataSource;
    NFe_Faturamentos2TRP_CIDADE2: TIBStringField;
    NFe_Faturamentos2TRP_CPF_CNPJ2: TIBStringField;
    SelLeiturasINFORMACOES: TMemoField;
    QryVerificaNUMNFE: TIBQuery;
    QryVerificaNUMNFEEXISTE_NF: TIntegerField;
    QryVerificaNUMNFEEXISTE_XML: TIntegerField;
    GrpContrato: TIBDataSet;
    GrpContratoCNPJ: TIBStringField;
    GrpContratoCODIGO: TIntegerField;
    GrpContratoCOD_CLIENTE: TIntegerField;
    GrpContratoCOD_CONTRATO: TIntegerField;
    GrpContratoNUM_CONTRATO: TIBStringField;
    GrpContratoDT_INICIO: TDateTimeField;
    GrpContratoDT_FIM: TDateTimeField;
    GrpContratoATIVO: TIBStringField;
    GrpContratoINFORMACOES: TMemoField;
    GrpContratoVALOR_CONTRATO: TFloatField;
    GrpContratoFRANQUIA_COPIAS: TIntegerField;
    GrpContratoVALOR_COPIA_EXCEDENTE: TFloatField;
    GrpContratoDATA: TDateField;
    GrpContratoGERA_FATURAMENTO: TIBStringField;
    GrpContratoGERA_LEITURA: TIBStringField;
    GrpContratoDIA_BASE: TSmallintField;
    GrpContratoGERA_MENSALIDADE: TIBStringField;
    GrpContratoItens: TIBDataSet;
    GrpContratoItensCNPJ: TIBStringField;
    GrpContratoItensCODIGO: TIntegerField;
    GrpContratoItensCOD_GRUPO: TIntegerField;
    GrpContratoItensDATA: TDateTimeField;
    GrpContratoItensATIVO: TIBStringField;
    GrpContratoItensPESSOA_FJ: TIntegerField;
    GrpContratoItensNOME_RAZAO: TIBStringField;
    GrpContratoItensCPF_CGC: TIBStringField;
    GrpContratoItensCIDADE: TIBStringField;
    GrpContratoItensCDD_UF: TIBStringField;
    QryClientes: TIBQuery;
    QryClientesCODIGO: TIntegerField;
    GrpContratoItensLKP_CLIENTE: TStringField;
    SelClientesCIDADE: TIBStringField;
    dsLinkGrupo: TDataSource;
    SelContratosLeituraTIPO: TIntegerField;
    LeituraItensCOD_CLIENTE: TIntegerField;
    LeituraItensCIDADE: TIBStringField;
    LeituraItensNOME_CLIENTE: TIBStringField;
    ContratoCNPJ: TIBStringField;
    ContratoCODIGO: TIntegerField;
    ContratoCOD_CLIENTE: TIntegerField;
    ContratoCOD_CONTRATO: TIntegerField;
    ContratoNUM_CONTRATO: TIBStringField;
    ContratoDT_INICIO: TDateTimeField;
    ContratoDT_FIM: TDateTimeField;
    ContratoATIVO: TIBStringField;
    ContratoINFORMACOES: TMemoField;
    ContratoVALOR_CONTRATO: TFloatField;
    ContratoFRANQUIA_COPIAS: TIntegerField;
    ContratoVALOR_COPIA_EXCEDENTE: TFloatField;
    ContratoDATA: TDateField;
    ContratoGERA_FATURAMENTO: TIBStringField;
    ContratoGERA_LEITURA: TIBStringField;
    ContratoDIA_BASE: TSmallintField;
    ContratosItensVALOR: TFloatField;
    NFe_Parcelamentos: TIBDataSet;
    NFe_ParcelamentosVALOR: TFloatField;
    NFe_ParcelamentosVENCTO: TDateTimeField;
    NFe_ParcelamentosPARCELA: TIBStringField;
    NFe_ParcelamentosNOME: TIBStringField;
    NFe_ParcelamentosTOTAL_ORIG: TFloatField;
    NFe_ParcelamentosDESC_ACRES: TFloatField;
    NFe_ParcelamentosTOTAL: TFloatField;
    NFe_ParcelamentosN_FAT: TIntegerField;
    GeraLeituras3: TIBSQL;
    NFe_Faturamentos2MSG_FISCAL: TMemoField;
    qryLocContratosCopias: TIBQuery;
    qryLocContratosCopiasCNPJ: TIBStringField;
    qryLocContratosCopiasCODIGO: TIntegerField;
    qryLocContratosCopiasCOD_CLIENTE: TIntegerField;
    qryLocContratosCopiasCOD_CONTRATO: TIntegerField;
    qryLocContratosCopiasNUM_CONTRATO: TIBStringField;
    qryLocContratosCopiasDT_INICIO: TDateTimeField;
    qryLocContratosCopiasDT_FIM: TDateTimeField;
    qryLocContratosCopiasATIVO: TIBStringField;
    qryLocContratosCopiasINFORMACOES: TMemoField;
    qryLocContratosCopiasVALOR_CONTRATO: TFloatField;
    qryLocContratosCopiasFRANQUIA_COPIAS: TIntegerField;
    qryLocContratosCopiasVALOR_COPIA_EXCEDENTE: TFloatField;
    qryLocContratosCopiasDATA: TDateField;
    qryLocContratosCopiasGERA_FATURAMENTO: TIBStringField;
    qryLocContratosCopiasGERA_LEITURA: TIBStringField;
    qryLocContratosCopiasNOME_RAZAO: TIBStringField;
    qryLocContratosCopiasFANTASIA: TIBStringField;
    qryLocContratosCopiasTIPO_CONTRATO: TIBStringField;
    qryLocContratosVALOR_CONTRATO: TFloatField;
    QryClientesDESCRICAO: TIBStringField;
    ContratosItensMODELO_EQUIPAMENTO: TIBStringField;
    LeituraItensLOGRADOURO: TIBStringField;
    LeituraItensFONE: TIBStringField;
    LeituraItensFAX: TIBStringField;
    LeituraItensCELULAR: TIBStringField;
    LeituraItensEMAIL: TIBStringField;
    LeituraItensMODELO_EQUIPAMENTO: TIBStringField;
    LeituraItensINFORMACOES_ITENS: TMemoField;
    LeituraItensBAIRRO: TIBStringField;
    LeituraDESC_ACRESC_CP: TIntegerField;
    LeituraVALOR_TOTAL_COPIAS_EXCENTE: TFloatField;
    SelLeiturasVALOR_TOTAL_COPIAS_EXCENTE: TFloatField;
    SelLeiturasDESC_ACRESC_CP: TIntegerField;
    LeituraNOME_RAZAO: TIBStringField;
    LeituraCPF_CGC: TIBStringField;
    LeituraOBSERVACAO: TMemoField;
    LeituraItensTESTE: TIBStringField;
    LeituraItensCTR_VALOR: TFloatField;
    LeituraItensCTR_FRANQUIA: TIntegerField;
    LeituraItensCTR_VALOR_COPIA_EXCEDENTE: TFloatField;
    LeituraItensHISTORICO: TIBStringField;
    LeituraItensDADOS_CONTRATO: TIBStringField;
    LeituraItensTOTAL_LEITURA: TIBStringField;
    LeituraItensCONTAGEM_LEITURA: TIBStringField;
    LeituraPERIODO: TIBStringField;
    LeituraItensMARCA: TIBStringField;
    NFe_Faturamentos_ItensCODIGO_NCM: TIBStringField;
    NFe_Faturamentos_ItensCSOSN: TIntegerField;
    ContratosItensGERA_LEITURA: TIBStringField;
    CONFIG_REL_GRAFICO: TIBDataSet;
    CONFIG_REL_GRAFICOID: TIntegerField;
    CONFIG_REL_GRAFICOCNPJ: TIBStringField;
    CONFIG_REL_GRAFICORELATORIO: TIBStringField;
    CONFIG_REL_GRAFICOCONFIG: TMemoField;
    NFe_Faturamentos_ItensCOD_GETIN: TIBStringField;
    qryLocContratosFRANQUIA_COPIAS: TIntegerField;
    qryLocContratosVALOR_COPIA_EXCEDENTE: TFloatField;
    qryLocContratosGERA_LEITURA: TIBStringField;
    ContratosItensDECONTINUADO: TIBStringField;
    ContratosItensVMC_DATA_UPD: TDateTimeField;
    ContratosItensVMC_TIPO_UPD: TIBStringField;
    ContratosItensVMC_COD_UPD: TIntegerField;
    ContratosItensCOD_CLIENTE: TIntegerField;
    ContratoGERA_MENSALIDADE: TIBStringField;
    ContratoRESPOSTA: TIBStringField;
    procedure ProdutosClientesAfterInsert(DataSet: TDataSet);
    procedure ProdutosClientesBeforeOpen(DataSet: TDataSet);
    procedure ProdutosClientesNewRecord(DataSet: TDataSet);
    procedure ProdutosClientesBeforePost(DataSet: TDataSet);
    procedure DuplicataNewRecord(DataSet: TDataSet);
    procedure DuplicataLPPGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DuplicataLPPSetText(Sender: TField; const Text: String);
    procedure DuplicataAfterInsert(DataSet: TDataSet);
    procedure ProdutosClientesAfterPost(DataSet: TDataSet);
    procedure SecoesProdutosAfterInsert(DataSet: TDataSet);
    procedure CobradorAfterInsert(DataSet: TDataSet);
    procedure CobradorBeforeOpen(DataSet: TDataSet);
    procedure Motivo_CobrancaAfterInsert(DataSet: TDataSet);
    procedure Motivo_CobrancaBeforeOpen(DataSet: TDataSet);
    procedure CobradorNewRecord(DataSet: TDataSet);
    procedure Local_CobrancaAfterInsert(DataSet: TDataSet);
    procedure Local_CobrancaBeforePost(DataSet: TDataSet);
    procedure ContratoBeforeOpen(DataSet: TDataSet);
    procedure ContratosItensNewRecord(DataSet: TDataSet);
    procedure ContratoNewRecord(DataSet: TDataSet);
    procedure LeituraNewRecord(DataSet: TDataSet);
    procedure LeituraItensNewRecord(DataSet: TDataSet);
    procedure AGR_CategoriaNewRecord(DataSet: TDataSet);
    procedure AGR_DefensivoNewRecord(DataSet: TDataSet);
    procedure ContratoBeforePost(DataSet: TDataSet);
    procedure UnidadeConversaoNewRecord(DataSet: TDataSet);
    procedure AGR_DEF_CULT_PRAGABeforePost(DataSet: TDataSet);
    procedure ACT_EVENTO_CONTABILNewRecord(DataSet: TDataSet);
    procedure MensalidadeItensNewRecord(DataSet: TDataSet);
    procedure MensalidadeNewRecord(DataSet: TDataSet);
    procedure CtItensDescontoNewRecord(DataSet: TDataSet);
    procedure CtItensDescontoBeforePost(DataSet: TDataSet);
    procedure ContratosItensBeforePost(DataSet: TDataSet);
    procedure NFe_Faturamentos_ItensBeforeOpen(DataSet: TDataSet);
    procedure ProsoftCFMestreNewRecord(DataSet: TDataSet);
    procedure TipoMovimentoBeforePost(DataSet: TDataSet);
    procedure DStatusBeforePost(DataSet: TDataSet);
    procedure ProsoftCFMestreAliqBeforePost(DataSet: TDataSet);
    procedure GrpContratoBeforeOpen(DataSet: TDataSet);
    procedure GrpContratoBeforePost(DataSet: TDataSet);
    procedure GrpContratoNewRecord(DataSet: TDataSet);
    procedure GrpContratoItensNewRecord(DataSet: TDataSet);
    procedure LeituraDESC_ACRESC_CPValidate(Sender: TField);
    procedure LeituraItensLEITURA_ATUALChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    function Exclui_Leitura(CNPJ: String; CODIGO: Integer):boolean;
    Procedure Exclui_Mensalidade(CNPJ: String; CODIGO: Integer);
    Procedure Gera_Leitura(CNPJ: String; Data_Referencia: TDate);
    Procedure Gera_Mensalidade(CNPJ: String; Data_Referencia: TDate);
    function Estorna_Leitura(CNPJ: String; CODIGO, VENDA: Integer):integer;
    function Gerar_Venda_Leitura(CNPJ: String; CODIGO: integer): Integer;
    function Gerar_Venda_Mensalidade(CNPJ: String; CODIGO: integer;Data: Tdate): Integer;
  end;

var
  dmCadastros2: TdmCadastros2;

implementation

uses Application_DM;

{$R *.DFM}

procedure TdmCadastros2.ProdutosClientesAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('cnpj').Value := DMApp.Cnpj;
  DataSet.FieldByName('MEDIA_COPIAS').Value := 0;
end;

procedure TdmCadastros2.ProdutosClientesBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
    (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj
  else If (DataSet is TIBDataset) Then
    (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
end;

procedure TdmCadastros2.ProdutosClientesNewRecord(DataSet: TDataSet);
begin
  ProdutosClientesATIVO.value := 'S';
end;

procedure TdmCadastros2.ProdutosClientesBeforePost(DataSet: TDataSet);
begin
  if ((ProdutosClientesAtivo.Oldvalue = 'N') and (ProdutosClientesAtivo.Newvalue = 'N'))then
  begin
    Application.messagebox(Pchar('O contrato se encontra desativado.'+#13+'Impossível salvar modificações'),'Aviso',mb_iconerror + mb_ok);
    abort;
    exit;
  end;

  if ((ProdutosClientesAtivo.NewValue = 'N') and (ProdutosClientesAtivo.OldValue = 'S')) then
  begin
    if Application.messagebox('Deseja realmente desativar este contrato?','Aviso',mb_iconquestion+mb_yesno) = id_no then
    begin
      abort;
      exit;
    end
    else
      ProdutosClientesATIVO.value := 'N';
  end;
end;

procedure TdmCadastros2.DuplicataNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
     For I := 0 to Duplicata.FieldCount - 1 do
     begin
          if Duplicata.Fields.FIELDS[i].DataType = FtInteger
          then Begin
               Duplicata.Fields[i].Value := 0;
          end;
     end;
end;

procedure TdmCadastros2.DuplicataLPPGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 6 Then
     Text := 'Seis';
  If Sender.Value = 8 Then
     Text := 'Oito';
end;

procedure TdmCadastros2.DuplicataLPPSetText(Sender: TField;
  const Text: String);
begin
  If Text = 'Seis' Then
     Sender.Value := 6;
  If Text = 'Oito' Then
     Sender.Value := 8;
end;

procedure TdmCadastros2.DuplicataAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('cnpj').Value := DMApp.Cnpj;
end;

procedure TdmCadastros2.ProdutosClientesAfterPost(DataSet: TDataSet);
begin
  ProdutosClientes.Close;
  ProdutosClientes.Open;
end;

procedure TdmCadastros2.SecoesProdutosAfterInsert(DataSet: TDataSet);
begin
  DataSet.FieldByName('cnpj').Value := DMApp.Cnpj;
end;

procedure TdmCadastros2.CobradorAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TdmCadastros2.CobradorBeforeOpen(DataSet: TDataSet);
begin
  (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
end;

procedure TdmCadastros2.Motivo_CobrancaAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TdmCadastros2.Motivo_CobrancaBeforeOpen(DataSet: TDataSet);
begin
  (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
end;

procedure TdmCadastros2.CobradorNewRecord(DataSet: TDataSet);
begin
  CobradorINTERNO.Value := 'N' ;
  CobradorATIVO.Value := 'S' ;
end;

procedure TdmCadastros2.Local_CobrancaAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TdmCadastros2.Local_CobrancaBeforePost(DataSet: TDataSet);
begin
  {If Dataset.State = dsInsert  Then
     Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);}
end;

function TdmCadastros2.Exclui_Leitura(CNPJ: String; CODIGO: Integer):boolean;
begin
     Try
        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;


        pcd_exclui_leitura.ParamByName('CNPJ').asString    := CNPJ   ;
        pcd_exclui_leitura.ParamByName('CODIGO').asInteger := CODIGO ;
        pcd_exclui_leitura.ExecProc;

        DmaPP.TransactionProc.Commit ;
        dmapp.LOG_TRANSACOES(INTTOSTR(CODIGO), 'LT' );
        Application.MessageBox('Leitura excluída com sucesso','Aviso',mb_iconinformation+mb_ok);
        result := true;
     except
       On E:Exception Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         result := false;
       End
     end;
end;

Procedure TdmCadastros2.Exclui_Mensalidade(CNPJ: String; CODIGO: Integer);
begin
     Try
        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;


        pcd_exclui_mensalidade.ParamByName('CNPJ').asString    := CNPJ   ;
        pcd_exclui_mensalidade.ParamByName('CODIGO').asInteger := CODIGO ;
        pcd_exclui_mensalidade.ExecProc;

        DmaPP.TransactionProc.Commit ;
        dmapp.LOG_TRANSACOES(INTTOSTR(CODIGO), 'MS' );
     except
       On E:Exception Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
       End;
     end;
end;

Procedure TdmCadastros2.Gera_Leitura(CNPJ: String; Data_Referencia: TDate);
begin
     Try
        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;


        GeraLeituras.ParamByName('CNPJ').asString := CNPJ;
        GeraLeituras.ParamByName('DATA_REFERENCIA').asDate := Data_Referencia;
        GeraLeituras.ExecProc;
        GeraLeituras.Transaction.CommitRetaining;
        
        DmaPP.TransactionProc.Commit ;
        Application.MessageBox('Leituras geradas com sucesso','Aviso', mb_iconinformation + mb_ok);
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

Procedure TdmCadastros2.Gera_Mensalidade(CNPJ: String; Data_Referencia: TDate);
begin
     Try
        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        GeraMensalidades.ParamByName('CNPJ').asString    := CNPJ   ;
        GeraMensalidades.ParamByName('DATA_REFERENCIA').asDate := Data_Referencia;
        GeraMensalidades.ExecProc;

        DmaPP.TransactionProc.Commit ;
        Application.MessageBox('Mensalidades geradas com sucesso','Aviso', mb_iconinformation + mb_ok);
     except
       On E:Exception Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
       End;
     end;
end;

function TdmCadastros2.Estorna_Leitura(CNPJ: String; CODIGO,VENDA: Integer):integer;
begin
     Try
        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;


        PCD_OFC_EST_LEITURA.ParamByName('CNPJ').asString    := CNPJ   ;
        PCD_OFC_EST_LEITURA.ParamByName('CODIGO').asInteger := CODIGO ;
        PCD_OFC_EST_LEITURA.ParamByName('VENDA').asInteger := VENDA ;
        PCD_OFC_EST_LEITURA.ExecProc;
        Result := PCD_OFC_EST_LEITURA.ParamByName('cod_faturamento').asInteger;
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
     end;
end;

procedure TdmCadastros2.ContratoBeforeOpen(DataSet: TDataSet);
begin
  Contrato.parambyname('cnpj').value := dmApp.cnpj;
end;

procedure TdmCadastros2.ContratosItensNewRecord(DataSet: TDataSet);
begin
  ContratosItensCNPJ.value := dmApp.cnpj;
  ContratosItensCONTRATO.value := ContratoCODIGO.value;
  ContratosItensATIVO.value := 'S';
end;

function TdmCadastros2.Gerar_Venda_Leitura(CNPJ: String; CODIGO: integer): Integer;
begin
  try
      If DmaPP.TransactionProc.InTransaction then
        DmaPP.TransactionProc.Commit;

      If Not DmaPP.TransactionProc.InTransaction then
          DmaPP.TransactionProc.StartTransaction ;

      PCD_LT_GERA_VENDA.Transaction :=  DmaPP.TransactionProc;
      PCD_LT_GERA_VENDA.ParamByName('CNPJ').asString       := CNPJ   ;
      PCD_LT_GERA_VENDA.ParamByName('CODIGO').asInteger    := CODIGO ;
      PCD_LT_GERA_VENDA.ExecProc;
      Result := PCD_LT_GERA_VENDA.ParamByName('COD_VENDA').asInteger;

      DmaPP.TransactionProc.Commit ;
  except
      DmApp.TransactionProc.Rollback;
  end;
end;

function TdmCadastros2.Gerar_Venda_Mensalidade(CNPJ: String; CODIGO: integer;Data: Tdate): Integer;
begin
  try
      DmaPP.Transaction.CommitRetaining ;

      If Not DmaPP.TransactionProc.InTransaction then
          DmaPP.TransactionProc.StartTransaction ;

      PCD_MS_GERA_VENDA .ParamByName('CNPJ').asString       := CNPJ   ;
      PCD_MS_GERA_VENDA.ParamByName('CODIGO').asInteger    := CODIGO ;
      PCD_MS_GERA_VENDA.ParamByName('USUARIO').value := dmApp.UsuarioCaixa;
      PCD_MS_GERA_VENDA.ParamByName('TURNO').value := dmApp.TurnoCaixa;
      PCD_MS_GERA_VENDA.ParamByName('DATA_CX').value := dmApp.DataCaixa;
      PCD_MS_GERA_VENDA.ParamByName('CONTA').value := dmApp.ContaCaixa;
      PCD_MS_GERA_VENDA.ParamByName('DT_VENCTO').value := Data;
      PCD_MS_GERA_VENDA.ExecProc;
      Result := PCD_MS_GERA_VENDA.ParamByName('COD_FATURAMENTO').asInteger;

      DmaPP.TransactionProc.Commit ;
  except
      DmApp.TransactionProc.Rollback;
  end;
end;

procedure TdmCadastros2.ContratoNewRecord(DataSet: TDataSet);
begin
  ContratoCNPJ.value := dmapp.cnpj;
  ContratoGERA_FATURAMENTO.value := 'S';
  ContratoGERA_LEITURA.value := 'S';
  ContratoATIVO.value := 'S';
end;

procedure TdmCadastros2.LeituraNewRecord(DataSet: TDataSet);
begin
  LeituraCNPJ.value := dmapp.cnpj;
  LeituraFECHADA.value := 'N';
  LeituraGERA_FATURAMENTO.value := 'N';
  LeituraDATA_REFERENCIA.value := date;
end;

procedure TdmCadastros2.LeituraItensNewRecord(DataSet: TDataSet);
begin
  LeituraItensCNPJ.value := dmapp.cnpj;
end;

procedure TdmCadastros2.AGR_CategoriaNewRecord(DataSet: TDataSet);
begin
  (DataSet as TIBDataSet).FieldByName('CNPJ').asString := DMApp.Cnpj;
end;

procedure TdmCadastros2.AGR_DefensivoNewRecord(DataSet: TDataSet);
begin
   (DataSet as TIBDataSet).FieldByName('CNPJ').asString := DMApp.Cnpj;
end;

procedure TdmCadastros2.ContratoBeforePost(DataSet: TDataSet);
begin
 if ((ContratoCOD_CLIENTE.OldValue <> 0) and(ContratoCOD_CLIENTE.OldValue <> ContratoCOD_CLIENTE.NewValue)) then
 begin
   if Application.messagebox('Deseja realmente anterar o cliente deste contrato?','Aviso',mb_iconquestion + mb_yesno) = id_no then
   begin;
     abort;
     exit;
   end;
 end
end;

procedure TdmCadastros2.UnidadeConversaoNewRecord(DataSet: TDataSet);
begin
  UnidadeConversaoCNPJ.Value := dmApp.cnpj;
  UnidadeConversaoFATOR.value := 1;
end;

procedure TdmCadastros2.AGR_DEF_CULT_PRAGABeforePost(DataSet: TDataSet);
begin
  AGR_DEF_CULT_PRAGAIDDEFENSIVOAGRICOLA.value := AGR_DefensivoCODIGO.value;
end;

procedure TdmCadastros2.ACT_EVENTO_CONTABILNewRecord(DataSet: TDataSet);
begin
 ACT_EVENTO_CONTABILMOVIMENTAFLUXODECAIXAREALIZADO.value := 'N';
 ACT_EVENTO_CONTABILCONTABILIZACAOAUXILIAR.value := 'N';
 ACT_EVENTO_CONTABILCNPJ.value := DmApp.cnpj;
end;

procedure TdmCadastros2.MensalidadeItensNewRecord(DataSet: TDataSet);
begin
  MensalidadeItensCNPJ.Value := dmApp.Cnpj;
end;

procedure TdmCadastros2.MensalidadeNewRecord(DataSet: TDataSet);
begin
  MensalidadeCNPJ.value := dmapp.cnpj;
  MensalidadeFECHADA.value := 'N';
  MensalidadeDATA_REFERENCIA.value := dmApp.DataServidor;
end;

procedure TdmCadastros2.CtItensDescontoNewRecord(DataSet: TDataSet);
begin
  CtItensDescontoCNPJ.value := dmapp.CNPJ;
  CtItensDescontoCOD_ITEM.value := ContratosItensCODIGO.value;
end;

procedure TdmCadastros2.CtItensDescontoBeforePost(DataSet: TDataSet);
begin
  if (CtItensDescontoVALOR.Value = 0) then
  begin
    Application.MessageBox('Valor não pode ser igual a zero','Aviso',mb_ok + mb_iconerror);
    abort;
    exit;
  end;

  if (CtItensDescontoDT_VIGENCIA_INICIAL.Value <= 0) then
  begin
    Application.MessageBox('Dt. de vigência inicial inválida','Aviso',mb_ok + mb_iconerror);
    abort;
    exit;
  end;

  if (CtItensDescontoDT_VIGENCIA_FINAL.Value <= 0) then
  begin
    Application.MessageBox('Dt. de vigência final inválida','Aviso',mb_ok + mb_iconerror);
    abort;
    exit;
  end;

  if (CtItensDescontoDT_VIGENCIA_FINAL.Value <= CtItensDescontoDT_VIGENCIA_INICIAL.Value) then
  begin
    Application.MessageBox('Intervalo de vigência inválido','Aviso',mb_ok + mb_iconerror);
    abort;
    exit;
  end;
end;

procedure TdmCadastros2.ContratosItensBeforePost(DataSet: TDataSet);
begin
  if (ContratosItensDT_VIGENCIA_INICIAL.Value <= 0) then
  begin
    Application.MessageBox('Dt. de vigência inicial inválida','Aviso',mb_ok + mb_iconerror);
    abort;
    exit;
  end;

  if (ContratosItensDT_VIGENCIA_FINAL.Value <= 0) then
  begin
    Application.MessageBox('Dt. de vigência final inválida','Aviso',mb_ok + mb_iconerror);
    abort;
    exit;
  end;

  if (ContratosItensDT_VIGENCIA_FINAL.Value <= CtItensDescontoDT_VIGENCIA_INICIAL.Value) then
  begin
    Application.MessageBox('Intervalo de vigência inválido','Aviso',mb_ok + mb_iconerror);
    abort;
    exit;
  end;
end;

procedure TdmCadastros2.NFe_Faturamentos_ItensBeforeOpen(
  DataSet: TDataSet);
begin
  (DataSet as TIBDataSet).ParamByName('SCNPJ').asString := DMApp.Cnpj;
end;

procedure TdmCadastros2.ProsoftCFMestreNewRecord(DataSet: TDataSet);
begin
  ProsoftCFMestreCNPJ.value := dmApp.cnpj;
  ProsoftCFMestreDATA_MOVIMENTO.Value := dmApp.Data_Servidor;
  ProsoftCFMestreNUM_SEQ_ECF.Value := '1';
end;

procedure TdmCadastros2.TipoMovimentoBeforePost(DataSet: TDataSet);
begin
  TipoMovimentoCNPJ.value := dmApp.Cnpj;
end;

procedure TdmCadastros2.DStatusBeforePost(DataSet: TDataSet);
begin
  DStatusCNPJ.value := DmApp.cnpj;
end;

procedure TdmCadastros2.ProsoftCFMestreAliqBeforePost(DataSet: TDataSet);
begin
  ProsoftCFMestreAliqCOD_EXP_CTB_CF_PROSOFT.value := ProsoftCFMestreCODIGO.value;
  ProsoftCFMestreAliqCNPJ.value := dmApp.cnpj;
end;

procedure TdmCadastros2.GrpContratoBeforeOpen(DataSet: TDataSet);
begin
  GrpContrato.parambyname('CNPJ').value := dmApp.cnpj;
end;

procedure TdmCadastros2.GrpContratoBeforePost(DataSet: TDataSet);
begin
  if ((GrpContratoCOD_CLIENTE.OldValue <> 0) and(GrpContratoCOD_CLIENTE.OldValue <> GrpContratoCOD_CLIENTE.NewValue)) then
 begin
   if Application.messagebox('Deseja realmente anterar o cliente deste Grupo Empresarial?','Aviso',mb_iconquestion + mb_yesno) = id_no then
   begin;
     abort;
     exit;
   end;
 end
end;

procedure TdmCadastros2.GrpContratoNewRecord(DataSet: TDataSet);
begin
  GrpContratoCNPJ.value := dmapp.cnpj;
  GrpContratoGERA_FATURAMENTO.value := 'S';
  GrpContratoGERA_LEITURA.value := 'S';
  GrpContratoATIVO.value := 'S';
end;

procedure TdmCadastros2.GrpContratoItensNewRecord(DataSet: TDataSet);
begin
  if (GrpContrato.State in [dsEdit, dsInsert]) then
    GrpContrato.Post;
    
  GrpContratoItensCNPJ.value := dmApp.cnpj;
  GrpContratoItensCOD_GRUPO.value := GrpContratoCODIGO.value;
  GrpContratoItensATIVO.value := 'S';
end;

procedure TdmCadastros2.LeituraDESC_ACRESC_CPValidate(Sender: TField);
begin
   LeituraVALOR_TOTAL_COPIAS_EXCENTE.value := ((LeituraCOPIAS_EXCESSO.Value + LeituraDESC_ACRESC_CP.Value) * LeituraCTR_VALOR_COPIA_EXCEDENTE.value);
   LeituraVALOR_LEITURA.Value := LeituraCTR_VALOR.AsFloat + LeituraVALOR_TOTAL_COPIAS_EXCENTE.AsFloat;
end;

procedure TdmCadastros2.LeituraItensLEITURA_ATUALChange(Sender: TField);
begin
  if (LeituraItensLEITURA_ATUAL.value >= LeituraItensultima_leitura.value) then
    LeituraItenssaldo_leitura.value := (LeituraItensleitura_atual.value - LeituraItensultima_leitura.value)
  else
    LeituraItenssaldo_leitura.value := LeituraItensleitura_atual.value;
end;

end.
