 unit Caixa_Dm;
                                 

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBStoredProc;

type
  TDmCaixa = class(TDataModule)
    Caixas_Usuario: TIBDataSet;
    DsCaixa: TDataSource;
    Caixas_UsuarioCNPJ: TIBStringField;
    Caixas_UsuarioCONTA: TIntegerField;
    Caixas_UsuarioUSUARIO: TIntegerField;
    SelUsuario: TIBQuery;
    SelUsuarioCODIGO: TIntegerField;
    SelUsuarioLOGIN: TIBStringField;
    SelUsuarioNOME: TIBStringField;
    SelUsuarioPERFIL: TIntegerField;
    SelUsuarioSENHA: TIBStringField;
    Caixas_UsuarioNome: TStringField;
    Caixas: TIBDataSet;
    CaixasCHEQUE: TFloatField;
    CaixasCNPJ: TIBStringField;
    CaixasCONTA: TIntegerField;
    CaixasDINHEIRO: TFloatField;
    CaixasSALDO_ANTERIOR: TFloatField;
    CaixasTICKET: TFloatField;
    CaixasUSUARIO: TIntegerField;
    Saldo_Caixa: TIBStoredProc;
    CaixasDATA: TDateTimeField;
    CaixasNome: TStringField;
    Pagas: TIBQuery;
    PagasCODIGO: TIntegerField;
    PagasANO: TIntegerField;
    PagasCODIGO_PG: TIntegerField;
    PagasANO_PG: TIntegerField;
    PagasPESSOA_FJ: TIntegerField;
    PagasDT_BAIXA: TDateField;
    PagasDT_EMISSAO: TDateField;
    PagasDT_VENCTO: TDateField;
    PagasDT_LANCTO: TDateField;
    PagasDOCTO: TIBStringField;
    PagasPARCELA: TIBStringField;
    PagasHISTORICO: TIBStringField;
    PagasHISTORICO_BX: TIBStringField;
    PagasVALOR: TIBBCDField;
    PagasVLR_BAIXA: TIBBCDField;
    PagasDESCONTOS: TIBBCDField;
    PagasVLR_PARCIAL: TIBBCDField;
    PagasJUROS: TIBBCDField;
    PagasJUROS_PAG: TIBBCDField;
    PagasDESCONTOS_PAG: TIBBCDField;
    PagasTAXA_JUROS: TIBBCDField;
    PagasBOLETO: TIBStringField;
    PagasTIPO_JUROS: TIBStringField;
    PagasORIGEM: TIBStringField;
    PagasCODIGO_ENT: TIntegerField;
    PagasPLANILHA: TIntegerField;
    PagasANO_ENT: TIntegerField;
    PagasAVISO: TIntegerField;
    PagasDT_AVISO: TDateField;
    PagasNOME: TIBStringField;
    PagasCPF_CGC: TIBStringField;
    Recebidas: TIBQuery;
    RecebidasCODIGO: TIntegerField;
    RecebidasANO: TIntegerField;
    RecebidasPESSOA_FJ: TIntegerField;
    RecebidasDT_BAIXA: TDateField;
    RecebidasDT_EMISSAO: TDateField;
    RecebidasDT_VENCTO: TDateField;
    RecebidasDT_LANCTO: TDateField;
    RecebidasDOCTO: TIBStringField;
    RecebidasPARCELA: TIBStringField;
    RecebidasHISTORICO: TIBStringField;
    RecebidasHISTORICO_BX: TIBStringField;
    RecebidasVALOR: TIBBCDField;
    RecebidasVLR_BAIXA: TIBBCDField;
    RecebidasDESCONTOS: TIBBCDField;
    RecebidasVLR_PARCIAL: TIBBCDField;
    RecebidasJUROS: TIBBCDField;
    RecebidasTAXA_JUROS: TIBBCDField;
    RecebidasBOLETO: TIBStringField;
    RecebidasTIPO_JUROS: TIBStringField;
    RecebidasORIGEM: TIBStringField;
    RecebidasPLANILHA: TIntegerField;
    RecebidasAVISO: TIntegerField;
    RecebidasDT_AVISO: TDateField;
    RecebidasNOME: TIBStringField;
    RecebidasCPF_CGC: TIBStringField;
    RecebidasCODIGO_CR: TIntegerField;
    RecebidasANO_CR: TIntegerField;
    RecebidasJUROS_REC: TIBBCDField;
    RecebidasDESCONTOS_REC: TIBBCDField;
    RecebidasCODIGO_VN: TIntegerField;
    RecebidasANO_VN: TIntegerField;
    Vendas: TIBQuery;
    VendasCODIGO: TIntegerField;
    VendasHISTORICO: TIBStringField;
    VendasPESSOA_FJ: TIntegerField;
    VendasVENDEDOR: TIntegerField;
    VendasNATUREZA: TIntegerField;
    VendasFORMA_PGTO: TIntegerField;
    VendasNUM_NF: TIntegerField;
    VendasNUM_CUPOM: TIntegerField;
    VendasPROPRIEDADE: TIntegerField;
    VendasCONVENIADO: TIntegerField;
    VendasTIPO_DOCTO: TIBStringField;
    VendasLOCAL_COBRANCA: TIntegerField;
    VendasDESC_ACRES: TIBBCDField;
    VendasENTRADA: TIBBCDField;
    VendasDINHEIRO: TIBBCDField;
    VendasCHEQUE: TIBBCDField;
    VendasCARTAO: TIBBCDField;
    VendasTICKET: TIBBCDField;
    VendasTOTAL: TIBBCDField;
    VendasOBSERVACAO: TIBStringField;
    VendasVLR_PARC_LC: TIBBCDField;
    VendasTERCEIRO: TIntegerField;
    VendasCARGA: TIntegerField;
    VendasVOLUME: TIBBCDField;
    VendasPESO: TIBBCDField;
    VendasREQUISICAO: TIBStringField;
    VendasTIPO_VENDA: TIBStringField;
    VendasNOME_CONSUMIDOR: TIBStringField;
    VendasNOME: TIBStringField;
    VendasORCAMENTO: TIntegerField;
    VendasLiquido: TFloatField;
    Valores_Caixa: TIBStoredProc;
    Movimentos: TIBDataSet;
    MovimentosCNPJ: TIBStringField;
    MovimentosCONTA: TIntegerField;
    MovimentosDATA: TDateTimeField;
    MovimentosDOCUMENTO: TIBStringField;
    MovimentosHISTORICO: TIBStringField;
    MovimentosUSUARIO: TIntegerField;
    MovimentosVALOR: TFloatField;
    FecharCaixa: TIBStoredProc;
    Saidas: TIBQuery;
    SaidasDOCUMENTO: TIBStringField;
    SaidasHISTORICO: TIBStringField;
    SaidasVALOR: TFloatField;
    Vendas_Agrupadas: TIBQuery;
    Vendas_AgrupadasVENDEDOR: TIntegerField;
    Vendas_AgrupadasNOME: TIBStringField;
    Vendas_AgrupadasDESC_ACRES: TIBBCDField;
    Vendas_AgrupadasENTRADA: TIBBCDField;
    Vendas_AgrupadasDINHEIRO: TIBBCDField;
    Vendas_AgrupadasCHEQUE: TIBBCDField;
    Vendas_AgrupadasCARTAO: TIBBCDField;
    Vendas_AgrupadasTICKET: TIBBCDField;
    Vendas_AgrupadasTROCO: TIBBCDField;
    Vendas_AgrupadasTOTAL: TIBBCDField;
    Vendas_AgrupadasAVISTA: TFloatField;
    Vendas_AgrupadasAPRAZO: TFloatField;
    Vendas_AgrupadasLiquido: TFloatField;
    MovimentosTIPO: TIBStringField;
    CaixasTROCO_INICIAL: TFloatField;
    Troco_Inicial: TIBStoredProc;
    VendasAVISTA: TFloatField;
    VendasAPRAZO: TFloatField;
    VendasTROCO: TIBBCDField;
    SaidasTIPO: TIBStringField;
    MovimentosPESSOA_FJ: TIntegerField;
    MovimentosNOME: TIBStringField;
    SelPessoasFJ: TIBQuery;
    SelPessoasFJCODIGO: TIntegerField;
    SelPessoasFJNOME_RAZAO: TIBStringField;
    SelPessoasFJFONE: TIBStringField;
    SelPessoasFJPESSOA_FJ: TIntegerField;
    SelPessoasFJFANTASIA: TIBStringField;
    SelPessoasFJCPF_CGC: TIBStringField;
    SelPessoasFJBLOQUEADO: TIBStringField;
    SelPessoasFJCLASSIFICACAO: TIBStringField;
    SelPessoasFJUF: TIBStringField;
    SelPessoasFJEMPRESA: TIBStringField;
    Valida_Pessoa_Fj: TIBQuery;
    Valida_Pessoa_FjNOME: TIBStringField;
    Valida_Pessoa_FjUF: TIBStringField;
    Valida_Pessoa_FjCPF_CNPJ: TIBStringField;
    Valida_Pessoa_FjOBS: TBlobField;
    Valida_Pessoa_FjOBS2: TBlobField;
    Valida_Pessoa_FjCLASSIFICACAO: TIntegerField;
    SaidasPESSOA_FJ: TIntegerField;
    SaidasNOME: TIBStringField;
    CaixasPLANILHA: TIntegerField;
    CaixasVENDAS_VISTA: TFloatField;
    CaixasVENDAS_PRAZO: TFloatField;
    CaixasSALDO_PRAZO: TFloatField;
    CaixasSALDO_VISTA: TFloatField;
    CaixasACRESCIMOS: TFloatField;

    CaixasCARTAO: TFloatField;
    CaixasCHEQUE_PRAZO: TFloatField;
    CaixasDESCONTOS: TFloatField;

    CaixasJUROS: TFloatField;
    CaixasMOEDAS: TFloatField;
    CaixasNOTAS: TFloatField;
    CaixasOUTRAS_ENTRADAS: TFloatField;
    CaixasOUTRAS_SAIDAS: TFloatField;
    CaixasPRODUTOS: TFloatField;
    CaixasRECEBIMENTOS: TFloatField;
    CaixasSALDO: TFloatField;
    CaixasSANGRIA: TFloatField;
    CaixasTROCO: TFloatField;
    CaixasTROCO_VENDAS: TFloatField;
    CaixasPAGAMENTOS: TFloatField;
    CaixasENTRADAS: TFloatField;
    CaixasSAIDAS: TFloatField;
    CaixasDiferenca: TFloatField;
    Lista_Produtos_Caixa: TIBQuery;
    Lista_Produtos_CaixaNOME: TIBStringField;
    Lista_Produtos_CaixaTOTAL: TIBBCDField;
    Lista_Produtos_CaixaPRODUTO: TIBStringField;
    Lista_Produtos_CaixaQUANTIDADE_EXPOSTA: TIBBCDField;
    Lista_Produtos_CaixaQUANTIDADE: TIBBCDField;
    Lista_Produtos_CaixaDESCONTOS: TIBBCDField;
    CaixasSALDO_CHEQUE: TFloatField;
    CaixasSALDO_CHEQUE_CONC_DATA: TFloatField;
    SALDO_CONTAS_CAIXA: TIBQuery;
    SALDO_CONTAS_CAIXACONTA: TIntegerField;
    SALDO_CONTAS_CAIXANOME: TIBStringField;
    CaixasSALDO_CONTAS_BANCARIAS: TFloatField;
    SALDO_CONTAS_CAIXASOMAC: TIBBCDField;
    SALDO_CONTAS_CAIXASOMAD: TIBBCDField;
    CaixasSALDO_RECEBER: TFloatField;
    CaixasSALDO_PAGAR: TFloatField;
    ACOMPANHAMENTO_VENDAS: TIBQuery;
    ACOMPANHAMENTO_VENDASCAIXA: TDateTimeField;
    CaixasTURNO: TIntegerField;
    Caixas_UsuarioTURNO: TIntegerField;
    PROXIMO_TURNO: TIBStoredProc;
    Caixas_UsuarioATIVO: TIBStringField;
    Caixas_UsuarioDATA_ATIVACAO: TDateTimeField;
    Caixas_UsuarioDATA_DESATIVACAO: TDateTimeField;
    Trocas: TIBQuery;
    TrocasPESSOA_FJ: TIntegerField;
    TrocasCODIGO: TIntegerField;
    TrocasDATA: TDateTimeField;
    TrocasVALIDADE: TDateTimeField;
    TrocasTOTAL: TIBBCDField;
    TrocasTOTAL_2: TIBBCDField;
    TrocasENVIADA_CX: TIBStringField;
    TrocasFECHADO: TIBStringField;
    TrocasOBSERVACAO: TIBStringField;
    TrocasNOME_RAZAO: TIBStringField;
    TrocasNOME_FORMA: TIBStringField;
    TrocasNOME_VENDEDOR: TIBStringField;
    TrocasVENDEDOR: TIntegerField;
    TrocasVLR_TOTAL: TIBBCDField;
    TrocasVLR_TOTAL_2: TIBBCDField;
    TrocasDESC_ACRESC: TIBBCDField;
    TrocasDESC_ACRESC_2: TIBBCDField;
    TrocasCLIENTE: TIBStringField;
    TrocasPESO: TIBBCDField;
    TrocasVOLUME: TIBBCDField;
    TrocasFORMA: TIntegerField;
    TrocasENTRADA: TIBBCDField;
    TrocasDINHEIRO: TIBBCDField;
    TrocasCHEQUE: TIBBCDField;
    TrocasCARTAO: TIBBCDField;
    TrocasTICKET: TIBBCDField;
    ULTIMO_CAIXA: TIBQuery;
    ULTIMO_CAIXADATA: TDateField;
    ULTIMO_CAIXATURNO: TIntegerField;
    MovimentosTURNO: TSmallintField;
    Caixas_UsuarioUSR_CAIXA_GERAL: TIBStringField;
    Vendas_AgrupadasCOM_VISTA: TIBBCDField;
    Vendas_AgrupadasCOM_PRAZO: TIBBCDField;
    Vendas_AgrupadasCOMISSAO_VISTA: TFloatField;
    Vendas_AgrupadasCOMISSAO_PRAZO: TFloatField;
    Cheques: TIBQuery;
    ChequesBANCO: TIBStringField;
    ChequesCONTA: TIBStringField;
    ChequesCHEQUE: TIBStringField;
    ChequesVENDA: TIntegerField;
    ChequesEMISSAO: TDateTimeField;
    ChequesPRE_DATE: TDateTimeField;
    ChequesVALOR: TIBBCDField;
    ChequesJUROS: TIBBCDField;
    ChequesCONCILIADO: TIBStringField;
    ChequesPESSOA_FJ: TIntegerField;
    ChequesHISTORICO: TIBStringField;
    ChequesAGENCIA: TIBStringField;
    ChequesNOME: TIBStringField;
    ChequesFONE: TIBStringField;
    ChequesFAX: TIBStringField;
    ChequesCELULAR: TIBStringField;
    ChequesCPF_CGC: TIBStringField;
    ChequesDATA_CONCILIACAO: TDateTimeField;
    ChequesMOEDA1: TIBBCDField;
    ChequesMOEDA2: TIBBCDField;
    ChequesTIPO: TIBStringField;
    ChequesDATA_ACERTO: TDateTimeField;
    ChequesDATA_DEVOLUCAO: TDateTimeField;
    ChequesCODIGO_MOTIVO_DEVOLUCAO: TIntegerField;
    ChequesVEZES_DEVOLUCAO: TIntegerField;
    ChequesPLANILHA: TIntegerField;
    ChequesDIGITO_AGENCIA: TIBStringField;
    ChequesDIGITO_CHEQUE: TIBStringField;
    ChequesDATA_CAIXA: TDateTimeField;
    ChequesReceber: TIBQuery;
    ChequesReceberBANCO: TIBStringField;
    ChequesReceberCONTA: TIBStringField;
    ChequesReceberCHEQUE: TIBStringField;
    ChequesReceberVENDA: TIntegerField;
    ChequesReceberEMISSAO: TDateTimeField;
    ChequesReceberPRE_DATE: TDateTimeField;
    ChequesReceberVALOR: TIBBCDField;
    ChequesReceberJUROS: TIBBCDField;
    ChequesReceberCONCILIADO: TIBStringField;
    ChequesReceberPESSOA_FJ: TIntegerField;
    ChequesReceberHISTORICO: TIBStringField;
    ChequesReceberAGENCIA: TIBStringField;
    ChequesReceberNOME: TIBStringField;
    ChequesReceberFONE: TIBStringField;
    ChequesReceberFAX: TIBStringField;
    ChequesReceberCELULAR: TIBStringField;
    ChequesReceberCPF_CGC: TIBStringField;
    ChequesReceberDATA_CONCILIACAO: TDateTimeField;
    ChequesReceberMOEDA1: TIBBCDField;
    ChequesReceberMOEDA2: TIBBCDField;
    ChequesReceberTIPO: TIBStringField;
    ChequesReceberDATA_ACERTO: TDateTimeField;
    ChequesReceberDATA_DEVOLUCAO: TDateTimeField;
    ChequesReceberCODIGO_MOTIVO_DEVOLUCAO: TIntegerField;
    ChequesReceberVEZES_DEVOLUCAO: TIntegerField;
    ChequesReceberPLANILHA: TIntegerField;
    ChequesReceberDIGITO_AGENCIA: TIBStringField;
    ChequesReceberDIGITO_CHEQUE: TIBStringField;
    ChequesReceberDATA_CAIXA: TDateTimeField;
    Caixa_Resumo: TIBDataSet;
    Caixa_ResumoCNPJ: TIBStringField;
    Caixa_ResumoCAIXAS: TFloatField;
    Caixa_ResumoENTRADAS: TFloatField;
    Caixa_ResumoCHEQUE_DEVOLVIDO: TFloatField;
    Caixa_ResumoCHEQUE_PRAZO_ENT: TFloatField;
    Caixa_ResumoDINHEIRO: TFloatField;
    Caixa_ResumoCHEQUE_VISTA: TFloatField;
    Caixa_ResumoSAIDAS: TFloatField;
    Caixa_ResumoCHEQUE_PRAZO_SAI: TFloatField;
    Caixa_ResumoMOEDAS: TFloatField;
    Caixa_ResumoFECHADO: TIBStringField;
    Caixa_ResumoSALDO_ENTRADAS: TFloatField;
    Caixa_ResumoSALDO_SAIDAS: TFloatField;
    Caixa_ResumoSALDO: TFloatField;
    Caixa_ResumoBANCOS: TFloatField;
    VERIFICA_CAIXA_RESUMO: TIBQuery;
    VERIFICA_CAIXA_RESUMODATA: TDateField;
    Caixa_ResumoDATA: TDateTimeField;
    MovimentosResumo: TIBDataSet;
    MovimentosResumoCNPJ: TIBStringField;
    MovimentosResumoDATA: TDateTimeField;
    MovimentosResumoDOCUMENTO: TIBStringField;
    MovimentosResumoHISTORICO: TIBStringField;
    MovimentosResumoVALOR: TFloatField;
    MovimentosResumoTIPO: TIBStringField;
    MovimentosResumoCONTRA_PARTIDA: TIntegerField;
    MovimentosResumoNOME_CONTRAPARTIDA: TIBStringField;
    MovimentosResumoPESSOA_FJ: TIntegerField;
    MovimentosResumoNOME: TIBStringField;
    Soma_Movimentos: TIBQuery;
    Soma_MovimentosCREDITO: TIBBCDField;
    Soma_MovimentosDEBITO: TIBBCDField;
    FECHA_CAIXA_RESUMO: TIBStoredProc;
    Caixa_ResumoNOME: TIBStringField;
    Fluxo: TIBDataSet;
    FluxoCNPJ: TIBStringField;
    FluxoCONTA: TIntegerField;
    FluxoDATA: TDateTimeField;
    FluxoENTRADA_CHEQUE: TFloatField;
    FluxoENTRADA_ESTOQUE: TFloatField;
    FluxoENTRADA_PAGAR: TFloatField;
    FluxoENTRADA_RECEBER: TFloatField;
    FluxoSAIDA_CHEQUE: TFloatField;
    FluxoSAIDA_ESTOQUE: TFloatField;
    FluxoSAIDA_PAGAR: TFloatField;
    FluxoSAIDA_RECEBER: TFloatField;
    FluxoSALDO_CHEQUE: TFloatField;
    FluxoSALDO_ESTOQUE: TFloatField;
    FluxoSALDO_PAGAR: TFloatField;
    FluxoSALDO_RECEBER: TFloatField;
    FluxoUSUARIO: TIntegerField;
    FluxoTURNO: TIntegerField;
    FluxoFINAL_RECEBER: TFloatField;
    FluxoFINAL_CHEQUE: TFloatField;
    FluxoFINAL_PAGAR: TFloatField;
    FluxoFINAL_ESTOQUE: TFloatField;
    SALDO_FLUXO_CAIXA: TIBQuery;
    SALDO_FLUXO_CAIXASALDO_RECEBER: TIBBCDField;
    SALDO_FLUXO_CAIXASALDO_PAGAR: TIBBCDField;
    SALDO_FLUXO_CAIXASALDO_CHEQUE: TIBBCDField;
    SALDO_FLUXO_CAIXASALDO_ESTOQUE: TIBBCDField;
    SOMA_BAIXA_PAGAR_CAIXA: TIBQuery;
    SOMA_BAIXA_PAGAR_CAIXASOMA: TIBBCDField;
    SOMA_BAIXA_PAGAR_CAIXAJUROS: TIBBCDField;
    SOMA_BAIXA_PAGAR_CAIXADESCONTOS: TIBBCDField;
    SOMA_BAIXA_RECEBER_CAIXA: TIBQuery;
    SOMA_BAIXA_RECEBER_CAIXASOMA: TIBBCDField;
    SOMA_BAIXA_RECEBER_CAIXAJUROS: TIBBCDField;
    SOMA_BAIXA_RECEBER_CAIXADESCONTOS: TIBBCDField;
    ENTRADAS: TIBQuery;
    ENTRADASDOCUMENTO: TIBStringField;
    ENTRADASVALOR: TIBBCDField;
    ENTRADASPESSOA_FJ: TIntegerField;
    ENTRADASNOME: TIBStringField;
    FluxoACERTO_CHEQUE: TFloatField;
    FluxoDEVOLUCAO_CHEQUE: TFloatField;
    Cheques_Periodo: TIBQuery;
    Cheques_PeriodoBANCO: TIBStringField;
    Cheques_PeriodoCONTA: TIBStringField;
    Cheques_PeriodoCHEQUE: TIBStringField;
    Cheques_PeriodoVENDA: TIntegerField;
    Cheques_PeriodoEMISSAO: TDateTimeField;
    Cheques_PeriodoPRE_DATE: TDateTimeField;
    Cheques_PeriodoVALOR: TIBBCDField;
    Cheques_PeriodoJUROS: TIBBCDField;
    Cheques_PeriodoCONCILIADO: TIBStringField;
    Cheques_PeriodoPESSOA_FJ: TIntegerField;
    Cheques_PeriodoHISTORICO: TIBStringField;
    Cheques_PeriodoAGENCIA: TIBStringField;
    Cheques_PeriodoNOME: TIBStringField;
    Cheques_PeriodoFONE: TIBStringField;
    Cheques_PeriodoFAX: TIBStringField;
    Cheques_PeriodoCELULAR: TIBStringField;
    Cheques_PeriodoCPF_CGC: TIBStringField;
    Cheques_PeriodoDATA_CONCILIACAO: TDateTimeField;
    Cheques_PeriodoMOEDA1: TIBBCDField;
    Cheques_PeriodoMOEDA2: TIBBCDField;
    Cheques_PeriodoTIPO: TIBStringField;
    Cheques_PeriodoDATA_ACERTO: TDateTimeField;
    Cheques_PeriodoDATA_DEVOLUCAO: TDateTimeField;
    Cheques_PeriodoCODIGO_MOTIVO_DEVOLUCAO: TIntegerField;
    Cheques_PeriodoVEZES_DEVOLUCAO: TIntegerField;
    Cheques_PeriodoPLANILHA: TIntegerField;
    Cheques_PeriodoDIGITO_AGENCIA: TIBStringField;
    Cheques_PeriodoDIGITO_CHEQUE: TIBStringField;
    Cheques_PeriodoDATA_CAIXA: TDateTimeField;
    ChequesReceber_Periodo: TIBQuery;
    ChequesReceber_PeriodoBANCO: TIBStringField;
    ChequesReceber_PeriodoCONTA: TIBStringField;
    ChequesReceber_PeriodoCHEQUE: TIBStringField;
    ChequesReceber_PeriodoVENDA: TIntegerField;
    ChequesReceber_PeriodoEMISSAO: TDateTimeField;
    ChequesReceber_PeriodoPRE_DATE: TDateTimeField;
    ChequesReceber_PeriodoVALOR: TIBBCDField;
    ChequesReceber_PeriodoJUROS: TIBBCDField;
    ChequesReceber_PeriodoCONCILIADO: TIBStringField;
    ChequesReceber_PeriodoPESSOA_FJ: TIntegerField;
    ChequesReceber_PeriodoHISTORICO: TIBStringField;
    ChequesReceber_PeriodoAGENCIA: TIBStringField;
    ChequesReceber_PeriodoNOME: TIBStringField;
    ChequesReceber_PeriodoFONE: TIBStringField;
    ChequesReceber_PeriodoFAX: TIBStringField;
    ChequesReceber_PeriodoCELULAR: TIBStringField;
    ChequesReceber_PeriodoCPF_CGC: TIBStringField;
    ChequesReceber_PeriodoDATA_CONCILIACAO: TDateTimeField;
    ChequesReceber_PeriodoMOEDA1: TIBBCDField;
    ChequesReceber_PeriodoMOEDA2: TIBBCDField;
    ChequesReceber_PeriodoTIPO: TIBStringField;
    ChequesReceber_PeriodoDATA_ACERTO: TDateTimeField;
    ChequesReceber_PeriodoDATA_DEVOLUCAO: TDateTimeField;
    ChequesReceber_PeriodoCODIGO_MOTIVO_DEVOLUCAO: TIntegerField;
    ChequesReceber_PeriodoVEZES_DEVOLUCAO: TIntegerField;
    ChequesReceber_PeriodoPLANILHA: TIntegerField;
    ChequesReceber_PeriodoDIGITO_AGENCIA: TIBStringField;
    ChequesReceber_PeriodoDIGITO_CHEQUE: TIBStringField;
    ChequesReceber_PeriodoDATA_CAIXA: TDateTimeField;
    Vendas_Periodo: TIBQuery;
    Vendas_PeriodoCODIGO: TIntegerField;
    Vendas_PeriodoHISTORICO: TIBStringField;
    Vendas_PeriodoPESSOA_FJ: TIntegerField;
    Vendas_PeriodoVENDEDOR: TIntegerField;
    Vendas_PeriodoNATUREZA: TIntegerField;
    Vendas_PeriodoFORMA_PGTO: TIntegerField;
    Vendas_PeriodoNUM_NF: TIntegerField;
    Vendas_PeriodoNUM_CUPOM: TIntegerField;
    Vendas_PeriodoPROPRIEDADE: TIntegerField;
    Vendas_PeriodoCONVENIADO: TIntegerField;
    Vendas_PeriodoTIPO_DOCTO: TIBStringField;
    Vendas_PeriodoLOCAL_COBRANCA: TIntegerField;
    Vendas_PeriodoDESC_ACRES: TIBBCDField;
    Vendas_PeriodoENTRADA: TIBBCDField;
    Vendas_PeriodoDINHEIRO: TIBBCDField;
    Vendas_PeriodoCHEQUE: TIBBCDField;
    Vendas_PeriodoCARTAO: TIBBCDField;
    Vendas_PeriodoTICKET: TIBBCDField;
    Vendas_PeriodoTOTAL: TIBBCDField;
    Vendas_PeriodoOBSERVACAO: TIBStringField;
    Vendas_PeriodoVLR_PARC_LC: TIBBCDField;
    Vendas_PeriodoTERCEIRO: TIntegerField;
    Vendas_PeriodoCARGA: TIntegerField;
    Vendas_PeriodoVOLUME: TIBBCDField;
    Vendas_PeriodoPESO: TIBBCDField;
    Vendas_PeriodoREQUISICAO: TIBStringField;
    Vendas_PeriodoTIPO_VENDA: TIBStringField;
    Vendas_PeriodoNOME_CONSUMIDOR: TIBStringField;
    Vendas_PeriodoNOME: TIBStringField;
    Vendas_PeriodoORCAMENTO: TIntegerField;
    Vendas_PeriodoLiquido: TFloatField;
    Vendas_PeriodoAVISTA: TFloatField;
    Vendas_PeriodoAPRAZO: TFloatField;
    Vendas_PeriodoTROCO: TIBBCDField;
    Recebidas_Periodo: TIBQuery;
    Recebidas_PeriodoCODIGO: TIntegerField;
    Recebidas_PeriodoANO: TIntegerField;
    Recebidas_PeriodoPESSOA_FJ: TIntegerField;
    Recebidas_PeriodoDT_BAIXA: TDateField;
    Recebidas_PeriodoDT_EMISSAO: TDateField;
    Recebidas_PeriodoDT_VENCTO: TDateField;
    Recebidas_PeriodoDT_LANCTO: TDateField;
    Recebidas_PeriodoDOCTO: TIBStringField;
    Recebidas_PeriodoPARCELA: TIBStringField;
    Recebidas_PeriodoHISTORICO: TIBStringField;
    Recebidas_PeriodoHISTORICO_BX: TIBStringField;
    Recebidas_PeriodoVALOR: TIBBCDField;
    Recebidas_PeriodoVLR_BAIXA: TIBBCDField;
    Recebidas_PeriodoDESCONTOS: TIBBCDField;
    Recebidas_PeriodoVLR_PARCIAL: TIBBCDField;
    Recebidas_PeriodoJUROS: TIBBCDField;
    Recebidas_PeriodoTAXA_JUROS: TIBBCDField;
    Recebidas_PeriodoBOLETO: TIBStringField;
    Recebidas_PeriodoTIPO_JUROS: TIBStringField;
    Recebidas_PeriodoORIGEM: TIBStringField;
    Recebidas_PeriodoPLANILHA: TIntegerField;
    Recebidas_PeriodoAVISO: TIntegerField;
    Recebidas_PeriodoDT_AVISO: TDateField;
    Recebidas_PeriodoNOME: TIBStringField;
    Recebidas_PeriodoCPF_CGC: TIBStringField;
    Recebidas_PeriodoCODIGO_CR: TIntegerField;
    Recebidas_PeriodoANO_CR: TIntegerField;
    Recebidas_PeriodoJUROS_REC: TIBBCDField;
    Recebidas_PeriodoDESCONTOS_REC: TIBBCDField;
    Recebidas_PeriodoCODIGO_VN: TIntegerField;
    Recebidas_PeriodoANO_VN: TIntegerField;
    VendasMOV_CAIXA: TIBStringField;
    Ver_Faturas_Caixa: TIBQuery;
    Ver_Faturas_CaixaCODIGO: TIntegerField;
    Ver_Faturas_CaixaPESSOA_FJ: TIntegerField;
    Ver_Faturas_CaixaVALOR: TIBBCDField;
    Ver_Faturas_CaixaDESCONTO: TIBBCDField;
    Ver_Faturas_CaixaJUROS: TIBBCDField;
    Ver_Faturas_CaixaHISTORICO: TIBStringField;
    Ver_Faturas_CaixaNOME: TIBStringField;
    Ver_Faturas_CaixaENDERECO: TIBStringField;
    Ver_Faturas_CaixaNUMERO: TIBStringField;
    Ver_Faturas_CaixaCIDADE: TIBStringField;
    Ver_Faturas_CaixaBAIRRO: TIBStringField;
    Ver_Faturas_CaixaCEP: TIBStringField;
    Ver_Faturas_CaixaUF: TIBStringField;
    Ver_Faturas_CaixaAGRUPADORA: TIntegerField;
    Ver_Faturas_CaixaFONE: TIBStringField;
    Ver_Faturas_CaixaBANCO: TIBStringField;
    Ver_Faturas_CaixaBOLETO: TIBStringField;
    Ver_Faturas_CaixaNOME_BANCO: TIBStringField;
    Ver_Faturas_CaixaOBS: TIBStringField;
    Ver_Faturas_CaixaDUPLICATA: TIBStringField;
    Ver_Faturas_CaixaENVIADA: TIBStringField;
    Ver_Faturas_CaixaTIPO: TIBStringField;
    Ver_Faturas_CaixaCPF_CGC: TIBStringField;
    Ver_Faturas_CaixaORIGEM: TIBStringField;
    RecebidasFATURA: TIntegerField;
    VER_FIN_FATURAS_PARCIAL_CAIXA: TIBQuery;
    VER_FIN_FATURAS_PARCIAL_CAIXASEQUENCIA: TIntegerField;
    VER_FIN_FATURAS_PARCIAL_CAIXAHISTORICO: TIBStringField;
    VER_FIN_FATURAS_PARCIAL_CAIXAVALOR: TIBBCDField;
    VER_FIN_FATURAS_PARCIAL_CAIXAPLANILHA: TIntegerField;
    VER_FIN_FATURAS_PARCIAL_CAIXAFATURA: TIntegerField;
    VER_FIN_FATURAS_PARCIAL_CAIXANOME: TIBStringField;
    VER_FIN_FATURAS_PARCIAL_CAIXAORIGEM: TIBStringField;
    VER_FIN_FATURAS_PARCIAL_CAIXAJUROS: TIBBCDField;
    VER_FIN_FATURAS_PARCIAL_CAIXADESCONTOS: TIBBCDField;
    VER_FIN_FATURAS_PARCIAL_CAIXAPESSOA_FJ: TIntegerField;
    Vendas_Abertas: TIBQuery;
    Vendas_AbertasCODIGO: TIntegerField;
    Vendas_AbertasHISTORICO: TIBStringField;
    Vendas_AbertasPESSOA_FJ: TIntegerField;
    Vendas_AbertasVENDEDOR: TIntegerField;
    Vendas_AbertasNATUREZA: TIntegerField;
    Vendas_AbertasFORMA_PGTO: TIntegerField;
    Vendas_AbertasNUM_NF: TIntegerField;
    Vendas_AbertasNUM_CUPOM: TIntegerField;
    Vendas_AbertasPROPRIEDADE: TIntegerField;
    Vendas_AbertasCONVENIADO: TIntegerField;
    Vendas_AbertasTIPO_DOCTO: TIBStringField;
    Vendas_AbertasLOCAL_COBRANCA: TIntegerField;
    Vendas_AbertasDESC_ACRES: TIBBCDField;
    Vendas_AbertasENTRADA: TIBBCDField;
    Vendas_AbertasDINHEIRO: TIBBCDField;
    Vendas_AbertasCHEQUE: TIBBCDField;
    Vendas_AbertasCARTAO: TIBBCDField;
    Vendas_AbertasTICKET: TIBBCDField;
    Vendas_AbertasTOTAL: TIBBCDField;
    Vendas_AbertasOBSERVACAO: TIBStringField;
    Vendas_AbertasVLR_PARC_LC: TIBBCDField;
    Vendas_AbertasTERCEIRO: TIntegerField;
    Vendas_AbertasCARGA: TIntegerField;
    Vendas_AbertasVOLUME: TIBBCDField;
    Vendas_AbertasPESO: TIBBCDField;
    Vendas_AbertasREQUISICAO: TIBStringField;
    Vendas_AbertasTIPO_VENDA: TIBStringField;
    Vendas_AbertasNOME_CONSUMIDOR: TIBStringField;
    Vendas_AbertasNOME: TIBStringField;
    Vendas_AbertasORCAMENTO: TIntegerField;
    Vendas_AbertasLiquido: TFloatField;
    Vendas_AbertasAVISTA: TFloatField;
    Vendas_AbertasAPRAZO: TFloatField;
    Vendas_AbertasTROCO: TIBBCDField;
    Vendas_AbertasMOV_CAIXA: TIBStringField;
    Vendas_AbertasDATA: TDateTimeField;
    Ver_Faturas_CaixaDATA: TDateTimeField;
    Ver_Faturas_CaixaCOD_END: TIntegerField;
    Ver_Faturas_CaixaCOD_CID: TIntegerField;
    Ver_Faturas_CaixaCOD_BAI: TIntegerField;
    Ver_Faturas_CaixaVENCIMENTO: TDateTimeField;
    Vendas_Agrupadas_Periodo: TIBQuery;
    Vendas_AbertasENVIADA_CX: TIBStringField;
    Vendas_Canceladas: TIBQuery;
    Vendas_CanceladasCODIGO: TIntegerField;
    Vendas_CanceladasHISTORICO: TIBStringField;
    Vendas_CanceladasPESSOA_FJ: TIntegerField;
    Vendas_CanceladasVENDEDOR: TIntegerField;
    Vendas_CanceladasNATUREZA: TIntegerField;
    Vendas_CanceladasFORMA_PGTO: TIntegerField;
    Vendas_CanceladasNUM_NF: TIntegerField;
    Vendas_CanceladasNUM_CUPOM: TIntegerField;
    Vendas_CanceladasPROPRIEDADE: TIntegerField;
    Vendas_CanceladasCONVENIADO: TIntegerField;
    Vendas_CanceladasTIPO_DOCTO: TIBStringField;
    Vendas_CanceladasLOCAL_COBRANCA: TIntegerField;
    Vendas_CanceladasDESC_ACRES: TIBBCDField;
    Vendas_CanceladasENTRADA: TIBBCDField;
    Vendas_CanceladasDINHEIRO: TIBBCDField;
    Vendas_CanceladasCHEQUE: TIBBCDField;
    Vendas_CanceladasCARTAO: TIBBCDField;
    Vendas_CanceladasTICKET: TIBBCDField;
    Vendas_CanceladasTOTAL: TIBBCDField;
    Vendas_CanceladasOBSERVACAO: TIBStringField;
    Vendas_CanceladasVLR_PARC_LC: TIBBCDField;
    Vendas_CanceladasTERCEIRO: TIntegerField;
    Vendas_CanceladasCARGA: TIntegerField;
    Vendas_CanceladasVOLUME: TIBBCDField;
    Vendas_CanceladasPESO: TIBBCDField;
    Vendas_CanceladasREQUISICAO: TIBStringField;
    Vendas_CanceladasTIPO_VENDA: TIBStringField;
    Vendas_CanceladasNOME_CONSUMIDOR: TIBStringField;
    Vendas_CanceladasNOME: TIBStringField;
    Vendas_CanceladasORCAMENTO: TIntegerField;
    Vendas_CanceladasLiquido: TFloatField;
    Vendas_CanceladasAVISTA: TFloatField;
    Vendas_CanceladasAPRAZO: TFloatField;
    Vendas_CanceladasTROCO: TIBBCDField;
    Vendas_CanceladasMOV_CAIXA: TIBStringField;
    Vendas_CanceladasDATA_CANCELAMENTO: TDateTimeField;
    MovimentosNOME_CONTRAPARTIDA: TIBStringField;
    MovimentosCONTRA_PARTIDA: TIntegerField;
    Caixas_UsuarioCAIXA_EXPORADICO: TIBStringField;
    TrocasAVISTA: TFloatField;
    TrocasAPRAZO: TFloatField;
    TrocasLIQUIDO: TFloatField;
    Trocas_Periodo: TIBQuery;
    Trocas_PeriodoPESSOA_FJ: TIntegerField;
    Trocas_PeriodoCODIGO: TIntegerField;
    Trocas_PeriodoDATA: TDateTimeField;
    Trocas_PeriodoVALIDADE: TDateTimeField;
    Trocas_PeriodoTOTAL: TIBBCDField;
    Trocas_PeriodoTOTAL_2: TIBBCDField;
    Trocas_PeriodoENVIADA_CX: TIBStringField;
    Trocas_PeriodoFECHADO: TIBStringField;
    Trocas_PeriodoOBSERVACAO: TIBStringField;
    Trocas_PeriodoNOME_RAZAO: TIBStringField;
    Trocas_PeriodoNOME_FORMA: TIBStringField;
    Trocas_PeriodoNOME_VENDEDOR: TIBStringField;
    Trocas_PeriodoVENDEDOR: TIntegerField;
    Trocas_PeriodoVLR_TOTAL: TIBBCDField;
    Trocas_PeriodoVLR_TOTAL_2: TIBBCDField;
    Trocas_PeriodoDESC_ACRESC: TIBBCDField;
    Trocas_PeriodoDESC_ACRESC_2: TIBBCDField;
    Trocas_PeriodoCLIENTE: TIBStringField;
    Trocas_PeriodoPESO: TIBBCDField;
    Trocas_PeriodoVOLUME: TIBBCDField;
    Trocas_PeriodoFORMA: TIntegerField;
    Trocas_PeriodoENTRADA: TIBBCDField;
    Trocas_PeriodoDINHEIRO: TIBBCDField;
    Trocas_PeriodoCHEQUE: TIBBCDField;
    Trocas_PeriodoCARTAO: TIBBCDField;
    Trocas_PeriodoTICKET: TIBBCDField;
    Trocas_PeriodoAVISTA: TFloatField;
    Trocas_PeriodoAPRAZO: TFloatField;
    Trocas_PeriodoLIQUIDO: TFloatField;
    ACOMPANHAMENTO_VENDASVALOR: TFloatField;
    qryAux: TIBQuery;
    Caixas_Produtos: TFloatField;
    Caixas_Notas: TFloatField;
    Caixas_Entradas: TFloatField;
    Caixas_Saidas: TFloatField;
    Caixas_Diferenca: TFloatField;
    qryVendasADMCx: TIBQuery;
    qryVendasADMCxCODIGO: TIntegerField;
    qryVendasADMCxHISTORICO: TIBStringField;
    qryVendasADMCxPESSOA_FJ: TIntegerField;
    qryVendasADMCxVENDEDOR: TIntegerField;
    qryVendasADMCxNATUREZA: TIntegerField;
    qryVendasADMCxDESC_ACRES: TIBBCDField;
    qryVendasADMCxENTRADA: TIBBCDField;
    qryVendasADMCxDINHEIRO: TIBBCDField;
    qryVendasADMCxCHEQUE: TIBBCDField;
    qryVendasADMCxCARTAO: TIBBCDField;
    qryVendasADMCxTICKET: TIBBCDField;
    qryVendasADMCxTROCO: TIBBCDField;
    qryVendasADMCxTOTAL: TIBBCDField;
    qryVendasADMCxNOME: TIBStringField;
    qryVendasADMCxDOCTO: TIBStringField;
    qryVendasADMCxTOTAL_BRUTO: TIBBCDField;
    qryVendasADMCxLIQUIDO: TIBBCDField;
    qryVendasADMCxTIPO: TIBStringField;
    qryTrocasADMCx: TIBQuery;
    qryTrocasADMCxPESSOA_FJ: TIntegerField;
    qryTrocasADMCxCODIGO: TIntegerField;
    qryTrocasADMCxENVIADA_CX: TIBStringField;
    qryTrocasADMCxFECHADO: TIBStringField;
    qryTrocasADMCxOBSERVACAO: TIBStringField;
    qryTrocasADMCxNOME_RAZAO: TIBStringField;
    qryTrocasADMCxNOME_VENDEDOR: TIBStringField;
    qryTrocasADMCxVENDEDOR: TIntegerField;
    qryTrocasADMCxCLIENTE: TIBStringField;
    qryTrocasADMCxENTRADA: TIBBCDField;
    qryTrocasADMCxDINHEIRO: TIBBCDField;
    qryTrocasADMCxCHEQUE: TIBBCDField;
    qryTrocasADMCxCARTAO: TIBBCDField;
    qryTrocasADMCxTICKET: TIBBCDField;
    qryTrocasADMCxVISTA: TIBBCDField;
    qryTrocasADMCxPRAZO: TIBBCDField;
    qryTrocasADMCxTTL_ENTRADA: TIBBCDField;
    qryTrocasADMCxTTL_SAIDA: TIBBCDField;
    qryTrocasADMCxTTL_LIQUIDO: TIBBCDField;
    qryPagasADMCxCODIGO: TIntegerField;
    qryPagasADMCxPESSOA_FJ: TIntegerField;
    qryPagasADMCxDT_VENCTO: TDateField;
    qryPagasADMCxDOCTO: TIBStringField;
    qryPagasADMCxVALOR: TIBBCDField;
    qryPagasADMCxVLR_BAIXA: TIBBCDField;
    qryPagasADMCxDESCONTOS: TIBBCDField;
    qryPagasADMCxVLR_PARCIAL: TIBBCDField;
    qryPagasADMCxJUROS: TIBBCDField;
    qryEnt_SaiADMCx: TIBQuery;
    qryPagasADMCx: TIBQuery;
    qryEnt_SaiADMCxDOCUMENTO: TIBStringField;
    qryEnt_SaiADMCxHISTORICO: TIBStringField;
    qryEnt_SaiADMCxVALOR: TFloatField;
    qryEnt_SaiADMCxTIPO: TIBStringField;
    qryEnt_SaiADMCxPESSOA_FJ: TIntegerField;
    qryEnt_SaiADMCxNOME: TIBStringField;
    qryEnt_EstADMCx: TIBQuery;
    qryEnt_EstADMCxDOCUMENTO: TIBStringField;
    qryEnt_EstADMCxVALOR: TIBBCDField;
    qryEnt_EstADMCxNOME: TIBStringField;
    qryPagasADMCxNOME: TIBStringField;
    qryRecebidasADMCx: TIBQuery;
    qryRecebidasADMCxCODIGO: TIntegerField;
    qryRecebidasADMCxDT_VENCTO: TDateTimeField;
    qryRecebidasADMCxNOME: TIBStringField;
    qryRecebidasADMCxDOCTO: TIBStringField;
    qryRecebidasADMCxVALOR: TFloatField;
    qryRecebidasADMCxJUROS: TFloatField;
    qryRecebidasADMCxVLR_BAIXA: TFloatField;
    qryVendasADMCxteste: TFloatField;
    qryTrocasADMCxTeste: TFloatField;
    qryPagasADMCxteste: TFloatField;
    qryVndCancADMCx: TIBQuery;
    qryVndCancADMCxCODIGO: TIntegerField;
    qryVndCancADMCxHISTORICO: TIBStringField;
    qryVndCancADMCxPESSOA_FJ: TIntegerField;
    qryVndCancADMCxNOME_RAZAO: TIBStringField;
    qryVndCancADMCxVENDEDOR: TIntegerField;
    qryVndCancADMCxNUM_CUPOM: TIntegerField;
    qryVndCancADMCxNUM_NF: TIntegerField;
    qryResumoCaixa: TIBQuery;
    qryVendasADMCxVALE_TROCO: TIBBCDField;
    qryResumoCaixaDIN_VDVISTA: TIBBCDField;
    qryResumoCaixaDIN_VDPRAZO: TIBBCDField;
    qryResumoCaixaDIN_RECBTO: TIBBCDField;
    qryResumoCaixaCHVISTA_VDVISTA: TIBBCDField;
    qryResumoCaixaCHVISTA_VDPRAZO: TIBBCDField;
    qryResumoCaixaCHVISTA_RECBTO: TIBBCDField;
    qryResumoCaixaCHPRE_VDVISTA: TIBBCDField;
    qryResumoCaixaCHPRE_VDPRAZO: TIBBCDField;
    qryResumoCaixaCHPRE_RECBTO: TIBBCDField;
    qryResumoCaixaCRTVISTA_VDVISTA: TIBBCDField;
    qryResumoCaixaCRTVISTA_VDPRAZO: TIBBCDField;
    qryResumoCaixaCRTVISTA_RECBTO: TIBBCDField;
    qryResumoCaixaCRTPRE_VDVISTA: TIBBCDField;
    qryResumoCaixaCRTPRE_VDPRAZO: TIBBCDField;
    qryResumoCaixaCRTPRE_RECBTO: TIBBCDField;
    qryResumoCaixaTICKET_VDVISTA: TIBBCDField;
    qryResumoCaixaTICKET_VDPRAZO: TIBBCDField;
    qryResumoCaixaTICKET_RECBTO: TIBBCDField;
    qryResumoCaixaTOTAL_DINHEIRO: TIBBCDField;
    qryResumoCaixaTOTAL_CHEQUE_VISTA: TIBBCDField;
    qryResumoCaixaTOTAL_CHEQUE_PRE: TIBBCDField;
    qryResumoCaixaTOTAL_CARTAO_VISTA: TIBBCDField;
    qryResumoCaixaTOTAL_CARTAO_PRE: TIBBCDField;
    qryResumoCaixaTOTAL_TROCO: TIBBCDField;
    qryResumoCaixaTOTAL_VALE_TROCO: TIBBCDField;
    qryResumoCaixaTOTAL_GERAL: TIBBCDField;
    qryResumoCaixaTOTAL_CHEQUE: TIBBCDField;
    qryResumoCaixaTOTAL_CARTAO: TIBBCDField;
    qryResumoCaixaTOTAL_TICKET: TIBBCDField;
    qryResumoCaixaTOTAL_ENTCX: TIBBCDField;
    qryResumoCaixaTOTAL_SAIDACX: TIBBCDField;
    qryResumoCaixaTOTAL_VDVISTA: TIBBCDField;
    qryResumoCaixaTOTAL_VDPRAZO: TIBBCDField;
    qryResumoCaixaTOTAL_PARCELADO: TIBBCDField;
    qryResumoCaixaTOTAL_CAIXA: TIBBCDField;
    qryVendasADMCxAG: TIBQuery;
    qryVendasADMCxAGCARTAO: TIBBCDField;
    qryVendasADMCxAGCHEQUE: TIBBCDField;
    qryVendasADMCxAGDINHEIRO: TIBBCDField;
    qryVendasADMCxAGTICKET: TIBBCDField;
    qryVendasADMCxAGENTRADA: TIBBCDField;
    qryVendasADMCxAGDESC_ACRES: TIBBCDField;
    qryVendasADMCxAGTOTAL: TIBBCDField;
    qryVendasADMCxAGTOTAL_BRUTO: TIBBCDField;
    qryVendasADMCxAGLIQUIDO: TIBBCDField;
    qryVendasADMCxAGVALE_TROCO: TIBBCDField;
    qryVendasADMCxAGTROCO: TIBBCDField;
    qryVendasADMCxAGTIPO: TIBStringField;
    qryVendasADMCxAGNOME_VENDEDOR: TIBStringField;
    qryResumoCaixaTROCO_VDVISTA: TIBBCDField;
    qryResumoCaixaTROCO_VDPRAZO: TIBBCDField;
    qryResumoCaixaSALDO_ANTERIOR: TIBBCDField;
    qryResumoCaixaCP_SLD_ANT: TIBStringField;
    qryResumoCaixaAB_CXDINHEIRO: TIBBCDField;
    qryResumoCaixaAB_CXCHEQUE: TIBBCDField;
    qryResumoCaixaAB_CXTICKET: TIBBCDField;
    qryResumoCaixaAB_CXTOTAL: TIBBCDField;
    qryVendasADMCxNOME_VENDEDOR: TIBStringField;
    qryResumoCaixaAB_CXMOEDA: TIBBCDField;
    qryResumoCaixaAB_CXCHEQUE_PRAZO: TIBBCDField;
    Vendas_Agrupadas_PeriodoVLR_COMVISTA: TIBBCDField;
    Vendas_Agrupadas_PeriodoVLR_COMPRAZO: TIBBCDField;
    Vendas_Agrupadas_PeriodoCOMISSAO: TIBBCDField;
    Vendas_Agrupadas_PeriodoVISTA: TIBBCDField;
    Vendas_Agrupadas_PeriodoPRAZO: TIBBCDField;
    Vendas_Agrupadas_PeriodoTOTAL: TIBBCDField;
    Vendas_Agrupadas_PeriodoVENDEDOR: TIBStringField;
    qryResCxPeriodo: TIBQuery;
    qryResCxPeriodoDIN_VDVISTA: TIBBCDField;
    qryResCxPeriodoDIN_VDPRAZO: TIBBCDField;
    qryResCxPeriodoDIN_RECBTO: TIBBCDField;
    qryResCxPeriodoCHVISTA_VDVISTA: TIBBCDField;
    qryResCxPeriodoCHVISTA_VDPRAZO: TIBBCDField;
    qryResCxPeriodoCHVISTA_RECBTO: TIBBCDField;
    qryResCxPeriodoCHPRE_VDVISTA: TIBBCDField;
    qryResCxPeriodoCHPRE_VDPRAZO: TIBBCDField;
    qryResCxPeriodoCHPRE_RECBTO: TIBBCDField;
    qryResCxPeriodoCRTVISTA_VDVISTA: TIBBCDField;
    qryResCxPeriodoCRTVISTA_VDPRAZO: TIBBCDField;
    qryResCxPeriodoCRTVISTA_RECBTO: TIBBCDField;
    qryResCxPeriodoCRTPRE_VDVISTA: TIBBCDField;
    qryResCxPeriodoCRTPRE_VDPRAZO: TIBBCDField;
    qryResCxPeriodoCRTPRE_RECBTO: TIBBCDField;
    qryResCxPeriodoTICKET_VDVISTA: TIBBCDField;
    qryResCxPeriodoTICKET_VDPRAZO: TIBBCDField;
    qryResCxPeriodoTICKET_RECBTO: TIBBCDField;
    qryResCxPeriodoTOTAL_DINHEIRO: TIBBCDField;
    qryResCxPeriodoTOTAL_CHEQUE_VISTA: TIBBCDField;
    qryResCxPeriodoTOTAL_CHEQUE_PRE: TIBBCDField;
    qryResCxPeriodoTOTAL_CARTAO_VISTA: TIBBCDField;
    qryResCxPeriodoTOTAL_CARTAO_PRE: TIBBCDField;
    qryResCxPeriodoTOTAL_TROCO: TIBBCDField;
    qryResCxPeriodoTROCO_VDVISTA: TIBBCDField;
    qryResCxPeriodoTROCO_VDPRAZO: TIBBCDField;
    qryResCxPeriodoTOTAL_VALE_TROCO: TIBBCDField;
    qryResCxPeriodoTOTAL_GERAL: TIBBCDField;
    qryResCxPeriodoTOTAL_CHEQUE: TIBBCDField;
    qryResCxPeriodoTOTAL_CARTAO: TIBBCDField;
    qryResCxPeriodoTOTAL_TICKET: TIBBCDField;
    qryResCxPeriodoTOTAL_ENTCX: TIBBCDField;
    qryResCxPeriodoTOTAL_SAIDACX: TIBBCDField;
    qryResCxPeriodoTOTAL_VDVISTA: TIBBCDField;
    qryResCxPeriodoTOTAL_VDPRAZO: TIBBCDField;
    qryResCxPeriodoTOTAL_PARCELADO: TIBBCDField;
    qryResCxPeriodoTOTAL_CAIXA: TIBBCDField;
    qryResCxPeriodoSALDO_ANTERIOR: TIBBCDField;
    qryResCxPeriodoCP_SLD_ANT: TIBStringField;
    qryResCxPeriodoAB_CXDINHEIRO: TIBBCDField;
    qryResCxPeriodoAB_CXMOEDA: TIBBCDField;
    qryResCxPeriodoAB_CXCHEQUE: TIBBCDField;
    qryResCxPeriodoAB_CXCHEQUE_PRAZO: TIBBCDField;
    qryResCxPeriodoAB_CXTICKET: TIBBCDField;
    qryResCxPeriodoAB_CXTOTAL: TIBBCDField;
    MovimentosCENTRO_CUSTO: TIntegerField;
    Caixas_UsuarioCTB_FLUXO_CAIXA: TIBStringField;
    qryRecebidasADMCxCHEQUE_VISTA: TFloatField;
    qryRecebidasADMCxCHEQUE_PRAZO: TFloatField;
    qryRecebidasADMCxCARTAO: TFloatField;
    procedure Caixas_UsuarioAfterClose(DataSet: TDataSet);
    procedure Caixas_UsuarioAfterInsert(DataSet: TDataSet);
    procedure Caixas_UsuarioBeforeOpen(DataSet: TDataSet);
    procedure CaixasNewRecord(DataSet: TDataSet);
    procedure CaixasAfterInsert(DataSet: TDataSet);
    procedure CaixasUSUARIOValidate(Sender: TField);
    procedure VendasCalcFields(DataSet: TDataSet);
    procedure MovimentosBeforeOpen(DataSet: TDataSet);
    procedure MovimentosNewRecord(DataSet: TDataSet);
    procedure CaixasBeforePost(DataSet: TDataSet);
    procedure Vendas_AgrupadasCalcFields(DataSet: TDataSet);
    procedure CaixasDATAValidate(Sender: TField);
    procedure MovimentosPESSOA_FJValidate(Sender: TField);
    procedure CaixasCalcFields(DataSet: TDataSet);
    procedure Caixas_UsuarioNewRecord(DataSet: TDataSet);
    procedure CaixasTURNOValidate(Sender: TField);
    procedure Caixa_ResumoNewRecord(DataSet: TDataSet);
    procedure Caixa_ResumoCalcFields(DataSet: TDataSet);
    procedure MovimentosResumoBeforeOpen(DataSet: TDataSet);
    procedure MovimentosResumoNewRecord(DataSet: TDataSet);
    procedure MovimentosResumoPESSOA_FJValidate(Sender: TField);
    procedure FluxoNewRecord(DataSet: TDataSet);
    procedure FluxoCalcFields(DataSet: TDataSet);
    procedure SALDO_FLUXO_CAIXABeforeOpen(DataSet: TDataSet);
    procedure FluxoBeforeOpen(DataSet: TDataSet);
    procedure SOMA_BAIXA_PAGAR_CAIXABeforeOpen(DataSet: TDataSet);
    procedure Vendas_PeriodoCalcFields(DataSet: TDataSet);
    procedure Vendas_AbertasCalcFields(DataSet: TDataSet);
    procedure Vendas_CanceladasCalcFields(DataSet: TDataSet);
    procedure TrocasCalcFields(DataSet: TDataSet);
    procedure Trocas_PeriodoCalcFields(DataSet: TDataSet);
    procedure qryEnt_SaiADMCxTIPOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure qryEnt_SaiADMCxTIPOSetText(Sender: TField;
      const Text: String);
  private
    { Private declarations }
  public
      PROXTURNO: Integer;
    { Public declarations }
    //totalizadores para a listagem de caixa
    

    SALDO_ANTERIOR, SOMA_TROCO_INICIAL, Dinheiro, Cheque, Cartao, Ticket, Prazo, Saida, Troco: Real;
    SOMA_VENDAS_VISTA, SOMA_VENDAS_PRAZO, Saldo_Prazo, Saldo_Vista: Real;

    SOMA_OUT_SAIDAS, SOMA_OUT_ENTRADAS: Real;
    SOMA_PAGAS, SOMA_RECEBIDAS, SOMA_PRODUTOS, SOMA_DESCONTOS, SOMA_ACRESCIMOS,
    SOMA_JUROS, SOMA_TROCO, SOMA_CONTAS, SALDO_RECEBER, SALDO_PAGAR: Real;
    SOMA_ENT_TROCAS, SOMA_SAI_TROCAS, SOMA_ENTRADA_EST: Real;

    SOMA_BX_PAGAR, SOMA_BX_PAGAR_JUROS, SOMA_BX_PAGAR_DESCONTOS: REAL;
    SOMA_BX_RECEBER, SOMA_BX_RECEBER_JUROS, SOMA_BX_RECEBER_DESCONTOS: REAL;

    ENTRADA_RECEBER, ENTRADA_PAGAR, ENTRADA_ESTOQUE, ENTRADA_CHEQUE: REAL;

    Function Proc_Verifica_Caixa_Resumo ( Cnpj: String ):TDateTime;

    Function Proc_Ultimo_Caixa ( USUARIO: Integer; Conta: Integer ):TDateTime;

    //SALDO DO CAIXA
    Function Proc_Saldo_Caixa  ( USUARIO: Integer; Conta: Integer; Data: TDateTime; Turno: Integer ):Real;

    //Troco Inicial do Caixa
    Function Proc_Troco_Caixa  ( USUARIO: Integer; Conta: Integer; Data: TDateTime; Turno: Integer ):Real;

    //PROXIMO TURNO
    Function Prox_Turno  ( Data: TDateTime ):Integer;

    //CONTAS PAGAS PELO CAIXA
    Procedure Pagas_Caixa  ( Usuario: Integer; Data: TDateTime; Turno: Integer; Conta: Integer );

    //CONTAS RECEBIDAS PELO CAIXA
    Procedure Recebidas_Caixa  ( Usuario: Integer; Data: TDateTime; Turno: Integer; Conta: Integer );

    //VENDAS NO CAIXA
    Procedure Vendas_Caixa  ( Usuario: Integer; Data: TDateTime; Turno: Integer );

    //TROCAS NO CAIXA
    Procedure Trocas_Caixa ( Usuario: Integer; Data: TDateTime; Turno: Integer );

    //VALORES DO CAIXA
    procedure Proc_Valores_Caixa  ( USUARIO: Integer; Data: TDateTime; Turno: Integer );

    //PROCEDURE FECHAR CAIXA
    Procedure Fechar_Caixa  ( USUARIO: Integer; Conta: Integer; Data: TDateTime; saldo: Real; Planilha: Integer; Vista: Real; Prazo: Real; Turno: Integer );

    //SAIDAS DO CAIXA
    Procedure Saidas_Caixa ( Usuario: Integer; Data: TDateTime; Conta: Integer; Turno: Integer );

    //PRODUTOS NO CAIXA
    procedure Inicia_Produtos ( Usuario: Integer; Data: TDateTime; Conta: Integer; Turno: Integer );

    //BAIXA DE HAVER NO CAIXA
    Procedure Inicia_Contas ( Data: TDateTime );

    //SOMA RECEBER
    Procedure Soma_Receber ;

    //SOMA PAGAR
    Procedure Soma_Pagar;

    //Acompanhamento de Vendas
    Procedure Ver_Acompanhamento_Vendas ( Data: TDateTime );

    //CAIXA RESUMO
    Procedure Fechar_Caixa_Resumo  ( Data: TDateTime );

    //FLUXO DE CAIXA
    Procedure Fluxo_Caixa ;

    //ENTRADAS DE NOTAS DE PRODUTOS
    Procedure Entradas_Notas ( Usuario: Integer; Data: TDateTime; Conta: Integer; Turno: Integer );

  end;

var
  DmCaixa: TDmCaixa;

implementation

uses Application_DM, Funcoes, Procedures_DM, AberturaCaixas_Form,
  FecharCaixa_Form;

{$R *.DFM}

Procedure TDmCaixa.Ver_Acompanhamento_Vendas ( Data: TDateTime );
begin
     //
     ACOMPANHAMENTO_VENDAS.close ;

     ACOMPANHAMENTO_VENDAS.ParamByName ('CNPJ').ASSTRING := DMAPP.Cnpj ;
     ACOMPANHAMENTO_VENDAS.ParamByName ('DATA').ASDATE   := Data       ;

     ACOMPANHAMENTO_VENDAS.open  ;
end;

Procedure TDmCaixa.Soma_Receber;
begin
  DMProcs.Soma_Receber.ParamByName('CNPJ').asString      := DmApp.Cnpj;
  DMProcs.Soma_Receber.ExecProc;
  SALDO_RECEBER := DMProcs.Soma_Receber.ParamByName('SOMA').asFloat;
end;

Procedure TDmCaixa.Soma_Pagar;
begin
  DMProcs.Soma_Pagar.ParamByName('CNPJ').asString      := DmApp.Cnpj;
  DMProcs.Soma_Pagar.ExecProc;
  SALDO_PAGAR := DMProcs.Soma_Pagar.ParamByName('SOMA').asFloat;
end;

procedure TDmCaixa.Inicia_Contas ( Data: TDateTime );
Begin
     //Contas no Caixa
     SALDO_CONTAS_CAIXA.Close ;

     SALDO_CONTAS_CAIXA.ParamByName('CNPJ'  ).asString  := DmApp.Cnpj ;
     SALDO_CONTAS_CAIXA.ParamByName('DATA'  ).asDate    := Data       ;

     SALDO_CONTAS_CAIXA.Open  ;

     SALDO_CONTAS_CAIXA.DisableControls ;
     SALDO_CONTAS_CAIXA.First ;

     SOMA_CONTAS := 0;

     while not SALDO_CONTAS_CAIXA.eof do
     begin
          SOMA_CONTAS := SOMA_CONTAS + ( SALDO_CONTAS_CAIXASOMAC.VALUE - SALDO_CONTAS_CAIXASOMAD.VALUE );
          SALDO_CONTAS_CAIXA.Next ;
     end;

     SALDO_CONTAS_CAIXA.EnableControls ;
end;

Procedure TDmCaixa.Fluxo_Caixa ;
Var
   Receber, Pagar, Cheques, Estoque: Real;
Begin
     Receber := 0;
     Pagar   := 0;
     Cheques := 0;
     Estoque := 0;

     SALDO_FLUXO_CAIXA.Close ;

     SALDO_FLUXO_CAIXA.Open  ;

     Receber := SALDO_FLUXO_CAIXASALDO_RECEBER.VALUE ;
     Pagar   := SALDO_FLUXO_CAIXASALDO_PAGAR.VALUE   ;
     Cheques := SALDO_FLUXO_CAIXASALDO_CHEQUE.VALUE  ;
     Estoque := SALDO_FLUXO_CAIXASALDO_ESTOQUE.VALUE ;

     SALDO_FLUXO_CAIXA.Close ;

     If FrmFecharCaixas <> Nil
     then begin
          With FrmFecharCaixas do
          begin
               //BAIXAS NO PAGAR
               SOMA_BAIXA_PAGAR_CAIXA.Close ;
               SOMA_BAIXA_PAGAR_CAIXA.Open  ;

               SOMA_BX_PAGAR           := SOMA_BAIXA_PAGAR_CAIXASOMA.VALUE      ;
               SOMA_BX_PAGAR_JUROS     := SOMA_BAIXA_PAGAR_CAIXAJUROS.VALUE     ;
               SOMA_BX_PAGAR_DESCONTOS := SOMA_BAIXA_PAGAR_CAIXADESCONTOS.VALUE ;

               SOMA_BAIXA_PAGAR_CAIXA.Close ;

               //BAIXAS NO RECEBER
               SOMA_BAIXA_RECEBER_CAIXA.Close ;
               SOMA_BAIXA_RECEBER_CAIXA.Open  ;

               SOMA_BX_RECEBER           := SOMA_BAIXA_RECEBER_CAIXASOMA.VALUE      ;
               SOMA_BX_RECEBER_JUROS     := SOMA_BAIXA_RECEBER_CAIXAJUROS.VALUE     ;
               SOMA_BX_RECEBER_DESCONTOS := SOMA_BAIXA_RECEBER_CAIXADESCONTOS.VALUE ;
               SOMA_BAIXA_RECEBER_CAIXA.Close ;

               //ENTRADA NO PAGAR
               ENTRADA_RECEBER  := DMAPP.Soma_Entrada_Pag_Rec_Caixa ( DMAPP.DATACAIXA, 'REC' );

               ENTRADA_PAGAR    := DMAPP.Soma_Entrada_Pag_Rec_Caixa ( DMAPP.DATACAIXA, 'PGR' );

               ENTRADA_ESTOQUE  := 0;

               ENTRADA_CHEQUE   := 0;

               Fluxo.Edit ;

               FluxoSAIDA_PAGAR.value      := SOMA_BX_PAGAR   - SOMA_BX_PAGAR_JUROS    + SOMA_BX_PAGAR_DESCONTOS ;
               FluxoSAIDA_RECEBER.value    := SOMA_BX_RECEBER - SOMA_BX_RECEBER_JUROS  + SOMA_BX_RECEBER_DESCONTOS ;

               FluxoENTRADA_CHEQUE.Value   := 0;
               FluxoENTRADA_RECEBER.Value  := ENTRADA_RECEBER ;
               FluxoENTRADA_PAGAR.Value    := ENTRADA_PAGAR   ;
               FluxoENTRADA_ESTOQUE.Value  := 0;

               Fluxo.Post ;
          end;
     end;
end;

//ENTRADAS DE NOTAS DE PRODUTOS
Procedure TDmCaixa.Entradas_Notas ( Usuario: Integer; Data: TDateTime; Conta: Integer; Turno: Integer );
begin
     //Haver no Caixa
     ENTRADAS.Close ;

     ENTRADAS.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
     ENTRADAS.ParamByName('DATA' ).asDate      := Data       ;

     ENTRADAS.Open  ;

     ENTRADAS.DisableControls ;
     ENTRADAS.First ;

     SOMA_ENTRADA_EST := 0;

     while not ENTRADAS.eof do
     begin
          SOMA_ENTRADA_EST := SOMA_ENTRADA_EST + ENTRADASVALOR.Value;
          ENTRADAS.Next ;
     end;

     ENTRADAS.EnableControls ;
end;

procedure TDmCaixa.Inicia_Produtos ( Usuario: Integer; Data: TDateTime; Conta: Integer; Turno: Integer );
var
  i : integer;
Begin
     i := 0;
     Lista_Produtos_Caixa.Close ;
     Lista_Produtos_Caixa.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
     Lista_Produtos_Caixa.ParamByName('DATA' ).asDate      := Data       ;
     Lista_Produtos_Caixa.ParamByName('USUARIO').asInteger := Usuario    ;
     Lista_Produtos_Caixa.ParamByName('TURNO'  ).asInteger := Turno      ;

     Lista_Produtos_Caixa.Open  ;

     Lista_Produtos_Caixa.DisableControls ;
     SOMA_PRODUTOS := 0;
     Lista_Produtos_Caixa.First ;
     while not Lista_Produtos_Caixa.eof do
     begin
          try
            inc(i);
            if i = 377 then
              SOMA_PRODUTOS := SOMA_PRODUTOS + Lista_Produtos_CaixaTOTAL.Value
            else
              SOMA_PRODUTOS := SOMA_PRODUTOS + Lista_Produtos_CaixaTOTAL.Value;
            Lista_Produtos_Caixa.Next ;
          except
            showmessage(inttostr(i));
          end;
     end;

     Lista_Produtos_Caixa.EnableControls ;
end;



Procedure TDmCaixa.Pagas_Caixa ( Usuario: Integer; Data: TDateTime; Turno: Integer; Conta: Integer );
Begin
  //
  Pagas.Close ;

  Pagas.Params.Clear ;

  Pagas.Params.CreateParam ( FtString , 'CNPJ'    , PtInput  );
  Pagas.Params.CreateParam ( FtDate   , 'DATA'    , PtInput  );
  Pagas.Params.CreateParam ( FtInteger, 'USUARIO' , PtInput  );
  Pagas.Params.CreateParam ( FtInteger, 'TURNO'   , PtInput  );
  Pagas.Params.CreateParam ( FtInteger, 'CONTA'   , PtInput  );

  Pagas.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
  Pagas.ParamByName('DATA' ).asDate      := Data       ;
  Pagas.ParamByName('USUARIO').asInteger := Usuario    ;
  Pagas.ParamByName('TURNO'  ).asInteger := Turno      ;
  Pagas.ParamByName('CONTA'  ).asInteger := Conta      ;

  Pagas.Open;

  SOMA_PAGAS := 0;

  While Not Pagas.Eof do
  begin
       SOMA_PAGAS := SOMA_PAGAS + PagasVLR_BAIXA.Value;

       Pagas.Next ;
  end;
end;

Procedure TDmCaixa.Recebidas_Caixa ( Usuario: Integer; Data: TDateTime; Turno: Integer; Conta: Integer );
Begin
  //
  Recebidas.Close ;
  Recebidas.Params.Clear ;

  Recebidas.Params.CreateParam ( FtString , 'CNPJ'    , PtInput  );
  Recebidas.Params.CreateParam ( FtDate   , 'DATA'    , PtInput  );
  Recebidas.Params.CreateParam ( FtInteger, 'USUARIO' , PtInput  );
  Recebidas.Params.CreateParam ( FtInteger, 'TURNO'   , PtInput  );
  Recebidas.Params.CreateParam ( FtInteger, 'CONTA'   , PtInput  );

  Recebidas.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
  Recebidas.ParamByName('DATA' ).asDate      := Data       ;
  Recebidas.ParamByName('USUARIO').asInteger := Usuario    ;
  Recebidas.ParamByName('TURNO').asInteger   := Turno      ;
  Recebidas.ParamByName('CONTA').asInteger   := Conta      ;

  Recebidas.Open;


  //FATURAS
  Ver_Faturas_Caixa.Close ;

  Ver_Faturas_Caixa.ParamByName('CNPJ').asString      := DmApp.Cnpj ;
  Ver_Faturas_Caixa.ParamByName('DATA_CAIXA' ).asDate := Data       ;
  Ver_Faturas_Caixa.ParamByName('USR').asInteger      := Usuario    ;
  Ver_Faturas_Caixa.ParamByName('TURNO').asInteger    := Turno      ;
  Ver_Faturas_Caixa.ParamByName('CONTA').asInteger    := Conta      ;

  Ver_Faturas_Caixa.Open;

  SOMA_RECEBIDAS := 0;

  SOMA_JUROS := 0;

  SOMA_DESCONTOS := 0;

  While Not Recebidas.Eof do
  begin
       IF ( RECEBIDASFATURA.ISNULL ) OR ( RECEBIDASFATURA.VALUE <= 0 )
       THEN BEGIN
            SOMA_RECEBIDAS := SOMA_RECEBIDAS + RecebidasVLR_BAIXA.Value;

            SOMA_JUROS     := SOMA_JUROS + RecebidasJUROS.VALUE ;

            SOMA_DESCONTOS := SOMA_DESCONTOS + RecebidasDESCONTOS.VALUE ;
       END;

       Recebidas.Next ;
  end;

  While Not Ver_Faturas_Caixa.Eof do
  begin
       SOMA_RECEBIDAS := SOMA_RECEBIDAS + Ver_Faturas_CaixaVALOR.Value;

       SOMA_JUROS     := SOMA_JUROS + Ver_Faturas_CaixaJUROS.VALUE ;

       SOMA_DESCONTOS := SOMA_DESCONTOS + Ver_Faturas_CaixaDESCONTO.VALUE ;

       Ver_Faturas_Caixa.Next ;
  end;


  //FATURAS PARCIAIS
  VER_FIN_FATURAS_PARCIAL_CAIXA.Close ;

  VER_FIN_FATURAS_PARCIAL_CAIXA.ParamByName('CNPJ').asString      := DmApp.Cnpj ;
  VER_FIN_FATURAS_PARCIAL_CAIXA.ParamByName('DATA' ).asDate       := Data       ;
  VER_FIN_FATURAS_PARCIAL_CAIXA.ParamByName('CONTA').asInteger    := Conta      ;
  VER_FIN_FATURAS_PARCIAL_CAIXA.ParamByName('USUARIO').asInteger  := Usuario    ;
  VER_FIN_FATURAS_PARCIAL_CAIXA.ParamByName('TURNO').asInteger    := Turno      ;

  VER_FIN_FATURAS_PARCIAL_CAIXA.Open;

  While Not VER_FIN_FATURAS_PARCIAL_CAIXA.Eof do
  begin
       SOMA_RECEBIDAS := SOMA_RECEBIDAS + VER_FIN_FATURAS_PARCIAL_CAIXAVALOR.Value;

       SOMA_JUROS     := SOMA_JUROS + VER_FIN_FATURAS_PARCIAL_CAIXAJUROS.VALUE ;

       SOMA_DESCONTOS := SOMA_DESCONTOS + VER_FIN_FATURAS_PARCIAL_CAIXADESCONTOS.VALUE ;

       VER_FIN_FATURAS_PARCIAL_CAIXA.Next ;
  end;
end;

Procedure TDmCaixa.Vendas_Caixa ( Usuario: Integer; Data: TDateTime; Turno: Integer );
Begin
  //
  Vendas.Close ;

  Vendas.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
  Vendas.ParamByName('DATA' ).asDate      := Data       ;
  Vendas.ParamByName('USUARIO').asInteger := Usuario    ;
  Vendas.ParamByName('TURNO').asInteger   := Turno      ;

  Vendas.Open;

  SOMA_VENDAS_VISTA := 0;
  SOMA_VENDAS_PRAZO := 0;

  SOMA_ACRESCIMOS   := 0;

  SOMA_TROCO        := 0;

//  SOMA_DESCONTOS    := 0 ; REMOVIDO POIS TEM QUE SOMAR RECEBIDAS E DESCONTOS

  Vendas.DisableControls ;

  vendas.First ;

  While Not Vendas.Eof do
  begin
       //--so contabilizo as vendas que movimenta o financeiro, as bonificações sao desconsideradas - fabiano
       if VendasMov_caixa.value = 'S' then
       begin
         SOMA_VENDAS_VISTA := SOMA_VENDAS_VISTA + VendasAVISTA.VALUE ;
         SOMA_VENDAS_PRAZO := SOMA_VENDAS_PRAZO + VendasAPRAZO.VALUE ;

         If ARREDONDA(VendasDESC_ACRES.Value,2) > 0
         then begin
              Soma_Acrescimos := Soma_Acrescimos + ARREDONDA(VendasDESC_ACRES.Value,2) ;
         end
         else begin
              Soma_Descontos  := Soma_Descontos + ARREDONDA(VendasDESC_ACRES.Value,2) ;
         end;

         SOMA_TROCO := SOMA_TROCO + VendasTROCO.VALUE ;
       end;

       Vendas.next ;
  end;

  Vendas.EnableControls ;

  //
  Vendas_Agrupadas.Close ;

  Vendas_Agrupadas.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
  Vendas_Agrupadas.ParamByName('DATA' ).asDate      := Data       ;
  Vendas_Agrupadas.ParamByName('USUARIO').asInteger := Usuario    ;
  Vendas_Agrupadas.ParamByName('TURNO').asInteger   := Turno      ;

  Vendas_Agrupadas.Open;

  //
  Vendas_Abertas.Close ;
  Vendas_Abertas.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
  Vendas_Abertas.Open;

  Vendas_Canceladas.Close ;

  Vendas_Canceladas.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
  Vendas_Canceladas.ParamByName('DATA' ).asDate      := Data       ;
  Vendas_Canceladas.ParamByName('USUARIO').asInteger := Usuario    ;
  Vendas_Canceladas.ParamByName('TURNO').asInteger   := Turno      ;

  Vendas_Canceladas.Open;
end;

Procedure TDmCaixa.Saidas_Caixa ( Usuario: Integer; Data: TDateTime; Conta: Integer; Turno: Integer );
Begin
  //
  Saidas.Close ;
  Saidas.Params.Clear ;

  Saidas.Params.CreateParam ( FtString , 'CNPJ'    , PtInput  );
  Saidas.Params.CreateParam ( FtDate   , 'DATA'    , PtInput  );
  Saidas.Params.CreateParam ( FtInteger, 'USUARIO' , PtInput  );
  Saidas.Params.CreateParam ( FtInteger, 'CONTA'   , PtInput  );
  Saidas.Params.CreateParam ( FtInteger, 'TURNO'   , PtInput  );

  Saidas.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
  Saidas.ParamByName('DATA' ).asDate      := Data       ;
  Saidas.ParamByName('USUARIO').asInteger := Usuario    ;
  Saidas.ParamByName('CONTA'  ).asInteger := Conta      ;
  Saidas.ParamByName('TURNO'  ).asInteger := Turno      ;

  Saidas.Prepare;

  Saidas.Open;

  SOMA_OUT_SAIDAS := 0;

  While Not Saidas.Eof do
  begin
       IF SaidasTIPO.VALUE = 'C'
       THEN BEGIN
            SOMA_OUT_ENTRADAS := SOMA_OUT_ENTRADAS + SaidasValor.Value;
       END
       ELSE BEGIN
            SOMA_OUT_SAIDAS := SOMA_OUT_SAIDAS + SaidasValor.Value;
       END;

       Saidas.Next ;
  end;

end;

Procedure TDmCaixa.Trocas_Caixa ( Usuario: Integer; Data: TDateTime; Turno: Integer );
Begin
  //
  Trocas.Close ;

  Trocas.ParamByName('CNPJ'   ).asString    := DmApp.Cnpj ;
  Trocas.ParamByName('TROCA'  ).asInteger   := 0          ;
  Trocas.ParamByName('DATA'   ).asDate      := Data       ;
  Trocas.ParamByName('USUARIO').asInteger   := Usuario    ;
  Trocas.ParamByName('TURNO'  ).asInteger   := Turno      ;
  Trocas.ParamByName('OP'     ).asString    := 'S'        ;

  Trocas.Prepare;

  Trocas.Open;

  SOMA_ENT_TROCAS := 0;
  SOMA_SAI_TROCAS := 0;

  While Not Trocas.Eof do
  begin
       IF ARREDONDA(TrocasVLR_TOTAL.VALUE,2) > 0
       THEN BEGIN
            SOMA_ENT_TROCAS := SOMA_ENT_TROCAS + ARREDONDA(TrocasVLR_TOTAL.VALUE,2);
       END;

       IF ARREDONDA(TrocasVLR_TOTAL_2.VALUE,2) > 0
       THEN BEGIN
            SOMA_SAI_TROCAS := SOMA_SAI_TROCAS + ARREDONDA(TrocasVLR_TOTAL_2.VALUE,2);
       END;

       Trocas.Next ;
  end;
end;

//PROXIMO CAIXA
Function TDmCaixa.Prox_Turno ( Data: TDateTime ):Integer;
Begin
  //
  PROXIMO_TURNO.Params.Clear ;

  PROXIMO_TURNO.Params.CreateParam ( FtString , 'CNPJ'    , PtInput  );
  PROXIMO_TURNO.Params.CreateParam ( FtDate   , 'DATA'    , PtInput  );
  PROXIMO_TURNO.Params.CreateParam ( FtInteger, 'TURNO'   , PtOutPut );

  PROXIMO_TURNO.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
  PROXIMO_TURNO.ParamByName('DATA' ).asDate      := Data       ;

  PROXIMO_TURNO.ExecProc;

  IF NOT PROXIMO_TURNO.Params[2].IsNull
  THEN BEGIN
       Result := PROXIMO_TURNO.Params[2].Value;
  end
  ELSE BEGIN
       Result := 0;
  END;

  PROXIMO_TURNO.Close ;
end;

Function TDmCaixa.Proc_Saldo_Caixa  ( USUARIO: Integer; Conta: Integer; Data: TDateTime; Turno: Integer ):Real;
Begin
  //
  Saldo_Caixa.Params.Clear ;

  Saldo_Caixa.Params.CreateParam ( FtString , 'CNPJ'    , PtInput  );
  Saldo_Caixa.Params.CreateParam ( FtInteger, 'USUARIO' , PtInput  );
  Saldo_Caixa.Params.CreateParam ( FtInteger, 'CONTA'   , PtInput  );
  Saldo_Caixa.Params.CreateParam ( FtDate   , 'DATA'    , PtInput  );
  Saldo_Caixa.Params.CreateParam ( FtInteger, 'TURNO'   , PtInput  );
  Saldo_Caixa.Params.CreateParam ( FtFloat  , 'SALDO'   , PtOutPut );

  Saldo_Caixa.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
  Saldo_Caixa.ParamByName('USUARIO').asInteger := Usuario    ;
  Saldo_Caixa.ParamByName('CONTA').asInteger   := Conta      ;
  Saldo_Caixa.ParamByName('DATA' ).asDate      := Data       ;
  Saldo_Caixa.ParamByName('TURNO').asInteger   := Turno      ;

  Saldo_Caixa.ExecProc;

  IF NOT Saldo_Caixa.PARAMBYNAME('SALDO').IsNull
  THEN BEGIN
       Saldo_Anterior  := Saldo_Caixa.PARAMBYNAME('SALDO').Value;
       Result          := Saldo_Caixa.PARAMBYNAME('SALDO').Value;
  end
  ELSE BEGIN
       Saldo_Anterior  := 0;
       Result := 0;
  END;

  Saldo_Caixa.Close ;

end;

Function TDmCaixa.Proc_Troco_Caixa  ( USUARIO: Integer; Conta: Integer; Data: TDateTime; Turno: Integer ):Real;
Begin
  //
  Troco_Inicial.Params.Clear ;

    Troco_Inicial.Params.CreateParam ( FtString , 'CNPJ'    , PtInput  );
  Troco_Inicial.Params.CreateParam ( FtInteger, 'USUARIO' , PtInput  );
  Troco_Inicial.Params.CreateParam ( FtInteger, 'CONTA'   , PtInput  );
  Troco_Inicial.Params.CreateParam ( FtDate   , 'DATA'    , PtInput  );
  Troco_Inicial.Params.CreateParam ( FtInteger, 'TURNO'   , PtInput  );
  Troco_Inicial.Params.CreateParam ( FtFloat  , 'SALDO'   , PtOutPut );

  Troco_Inicial.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
  Troco_Inicial.ParamByName('USUARIO').asInteger := Usuario    ;
  Troco_Inicial.ParamByName('CONTA').asInteger   := Conta      ;
  Troco_Inicial.ParamByName('DATA' ).asDate      := Data       ;
  Troco_Inicial.ParamByName('TURNO').asInteger   := Turno      ;

  Troco_Inicial.ExecProc;

  IF NOT Troco_Inicial.PARAMBYNAME('SALDO').IsNull
  THEN BEGIN
       SOMA_TROCO_INICIAL  := Troco_Inicial.PARAMBYNAME('SALDO').Value;
       Result              := Troco_Inicial.PARAMBYNAME('SALDO').Value;
  end
  ELSE BEGIN
       SOMA_TROCO_INICIAL  := 0;
       Result := 0;
  END;

  Troco_Inicial.Close ;
end;

procedure TDmCaixa.Proc_Valores_Caixa  ( USUARIO: Integer; Data: TDateTime; Turno: Integer );
Begin
  //
  Valores_Caixa.Close ;
  Valores_Caixa.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
  Valores_Caixa.ParamByName('USUARIO').asInteger := Usuario    ;
  Valores_Caixa.ParamByName('DATA' ).asDate      := Data       ;
  Valores_Caixa.ParamByName('TURNO').asInteger   := Turno      ;
  Valores_Caixa.ExecProc;

  IF NOT Valores_Caixa.Parambyname('DINHEIRO').IsNull
  THEN
      Dinheiro := Valores_Caixa.Parambyname('DINHEIRO').Value
  ELSE
      Dinheiro := 0;

  IF NOT Valores_Caixa.Parambyname('CARTAO').IsNull
  THEN
      Cartao := Valores_Caixa.Parambyname('CARTAO').Value
  ELSE
      Cartao := 0;

  IF NOT Valores_Caixa.Parambyname('TICKET').IsNull THEN
    Ticket := Valores_Caixa.Parambyname('TICKET').Value
  ELSE
    Ticket := 0;

  IF NOT Valores_Caixa.Parambyname('CHEQUE').IsNull
  THEN
      Cheque := Valores_Caixa.Parambyname('CHEQUE').Value
  ELSE
      Cheque := 0;

  IF NOT Valores_Caixa.Parambyname('PRAZO').IsNull
  THEN
      Prazo := Valores_Caixa.Parambyname('PRAZO').Value
  ELSE
      Prazo := 0;

  IF NOT Valores_Caixa.Parambyname('TROCO').IsNull
  THEN
      Troco := Valores_Caixa.Parambyname('TROCO').Value
  ELSE
      Troco := 0;

  //Total a Prazo = Total das Vendas - A Vista
  Prazo := Prazo - Dinheiro - Cheque - Cartao - Ticket + Troco ;

  Valores_Caixa.Close ;
end;

Function TDmCaixa.Proc_Verifica_Caixa_Resumo ( Cnpj: String ):TDateTime;
Begin
  VERIFICA_CAIXA_RESUMO.Close ;
  //
  VERIFICA_CAIXA_RESUMO.ParamByName('CNPJ').asString     := Cnpj ;

  VERIFICA_CAIXA_RESUMO.Open;

  IF VERIFICA_CAIXA_RESUMODATA.IsNull
  THEN
      Result := 0
  ELSE
      Result := VERIFICA_CAIXA_RESUMODATA.value ;

  VERIFICA_CAIXA_RESUMO.Close ;
end;

Function TDmCaixa.Proc_Ultimo_Caixa ( USUARIO: Integer; Conta: Integer ):TDateTime;
Begin
  Ultimo_Caixa.Close ;

  //
  Ultimo_Caixa.ParamByName('CNPJ').asString     := DmApp.Cnpj          ;
  Ultimo_Caixa.ParamByName('USUARIO').asInteger := Usuario             ;
  Ultimo_Caixa.ParamByName('CONTA').asInteger   := Conta               ;
  Ultimo_Caixa.ParamByName('D'    ).asDate      := DmApp.Data_Servidor ;

  Ultimo_Caixa.Open;

  IF NOT ULTIMO_CAIXADATA.IsNull THEN
      Result := ULTIMO_CAIXADATA.Value
  ELSE
      Result := Date;

  IF NOT ULTIMO_CAIXATURNO.IsNull THEN
  BEGIN
       IF ULTIMO_CAIXATURNO.Value = 0 THEN
       BEGIN
            PROXTURNO := 1 ;
       END ELSE
       BEGIN
            IF ULTIMO_CAIXATURNO.Value = 99 THEN
            BEGIN
                PROXTURNO := 99;
            END ELSE
                PROXTURNO := ULTIMO_CAIXATURNO.Value + 1 ;
       END;
  END ELSE
      PROXTURNO := 1;

  Ultimo_Caixa.Close ;
end;

procedure TDmCaixa.Caixas_UsuarioAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TDmCaixa.Caixas_UsuarioAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmCaixa.Caixas_UsuarioBeforeOpen(DataSet: TDataSet);
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

procedure TDmCaixa.CaixasNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
     CaixasDINHEIRO.asfloat       := 0;
     CaixasCHEQUE.Value         := 0;
     CaixasTICKET.Value         := 0;
     CaixasSALDO_ANTERIOR.Value := 0;

     For I := 0 to Caixas.FieldCount - 1 do
     begin
          if Caixas.Fields.FIELDS[i].DataType = FtFloat
          then Begin
               Caixas.Fields[i].Value := 0;
          end;
     end;
end;

procedure TDmCaixa.CaixasAfterInsert(DataSet: TDataSet);
begin
     IF FrmAberturaCaixas <> nIL
     THEN BEGIN
          CaixasUSUARIO.Value  := DmApp.USR_CONECTADO         ;
          CaixasCONTA.Value    := Caixas_UsuarioCONTA.Value   ;
          CaixasCNPJ.Value     := DMApp.Cnpj                  ;
     END
     ELSE BEGIN
          CaixasCONTA.Value    := Caixas_UsuarioCONTA.Value   ;
          CaixasUSUARIO.Value  := Caixas_UsuarioUSUARIO.Value ;
          CaixasCNPJ.Value     := Caixas_UsuarioCNPJ.Value    ;
     END;
     if (DmApp.EXIBE_ACERTO = 'S') then
       CaixasPLANILHA.VALUE := DMApp.GerarCodigo('ACERTO',0 ) + 1
     else
       CaixasPLANILHA.VALUE := DMApp.GerarCodigo('PLANILHA', 0) + 1;
end;

procedure TDmCaixa.CaixasUSUARIOValidate(Sender: TField);
var
  ProxDataCX : string;
begin
  {   if (Caixas.state in [ dsinsert ]) then
     begin
          if (FrmAberturaCaixas.CmbUsuarioCx.Text<>'') then
          begin
            DmCaixa.Caixas_Usuario.Close;
            DmCaixa.Caixas_Usuario.ParamByName('cnpj').Value := DMApp.Cnpj;
            DmCaixa.Caixas_Usuario.Open;
            DmCaixa.Caixas_Usuario.Locate('USUARIO',DmCaixa.CaixasUSUARIO.Value,[]);

            if DmCaixa.Caixas_UsuarioCAIXA_EXPORADICO.Value = 'S' then
            begin
                CaixasDATA.value := date;
                MessageDlg ('Data do Caixa Exporadico. Pode ser definido outra data pelo usuário!', mtInformation, [MbOk], 0);
            end else
            begin
                //ULTIMO CAIXA ABERTO
                ProxDataCX := DateToStr(Proc_Ultimo_Caixa(CaixasUSUARIO.Value, Caixas_UsuarioCONTA.Value ));
                if ProxDataCX <> DateToStr(CaixasDATA.value) then
                begin
                  if( DmCaixa.Caixas_UsuarioCAIXA_EXPORADICO.Value = 'N' )then
                  begin
                    CaixasDATA.Value   := Proc_Ultimo_Caixa(CaixasUSUARIO.Value, Caixas_UsuarioCONTA.Value );
                    MessageDlg ('Data do Caixa definido pelo sistema "'+CaixasDATA.Text+'".'+ #13+ 'Caso deseja alterar a data manualmente defina no perfil do usuário de caixa!', mtInformation, [MbOk], 0);
                  end;
                end;
            end;
          end;
          //Captura o o Proximo Turno
          CaixasTURNO.Value  := PROXTURNO ;
     end;

     If DmaPP.Cx_Transp_Sld = 'S' THEN
     BEGIN
          //SALDO FINAL DO ULTIMO CAIXA
          CaixasSALDO_ANTERIOR.Value := Proc_Saldo_Caixa ( Caixas_UsuarioUSUARIO.Value, Caixas_UsuarioCONTA.Value, CaixasDATA.Value, CaixasTurno.Value);
     END;

     CaixasTROCO_INICIAL.Value := Proc_Troco_Caixa ( Caixas_UsuarioUSUARIO.Value, Caixas_UsuarioCONTA.Value, CaixasDATA.Value, CaixasTurno.Value);

     IF CaixasTURNO.VALUE = 100
     THEN BEGIN
          MessageDlg ('Todos os Turnos desta Data Já Foram Preenchidos, Verifique!', MtError, [MbOk], 0);
          Abort;
     END;
     }
end;

procedure TDmCaixa.VendasCalcFields(DataSet: TDataSet);
Var
   Total: Real;
begin
  Total := VendasTOTAL.VALUE + VendasDESC_ACRES.VALUE ;

  VendasAVISTA.VALUE  := VendasDINHEIRO.VALUE + VendasCARTAO.VALUE + VendasCHEQUE.VALUE + VendasTICKET.VALUE + VendasTROCO.VALUE ;
  VendasAPRAZO.Value  := TOTAL - VendasAVISTA.VALUE ;
  VendasLiquido.Value := Total ;
end;

procedure TDmCaixa.MovimentosBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBDataSet).ParamByName('CNPJ' ).asString     := DMApp.Cnpj          ;
     (DataSet as TIBDataSet).ParamByName('CONTA').asInteger    := DmApp.ContaCaixa    ;
     (DataSet as TIBDataSet).ParamByName('USUARIO').asInteger  := DmApp.UsuarioCaixa  ;
     (DataSet as TIBDataSet).ParamByName('TURNO').asInteger    := DmApp.TurnoCaixa    ;
     (DataSet as TIBDataSet).ParamByName('DATA' ).asDate       := DmApp.DataCaixa     ;
     (Dataset as TIBDataSet).Prepare;
end;

procedure TDmCaixa.MovimentosNewRecord(DataSet: TDataSet);
begin
     MovimentosCNPJ.Value    := DMApp.Cnpj         ;
     MovimentosCONTA.Value   := DmApp.ContaCaixa   ;
     MovimentosDATA.Value    := DmApp.DataCaixa    ;
     MovimentosUSUARIO.Value := DmApp.UsuarioCaixa ;
     MovimentosTURNO.Value   := DmApp.TurnoCaixa   ;
end;

Procedure TDmCaixa.Fechar_Caixa_Resumo  ( Data: TDateTime );
Begin
  //
  FECHA_CAIXA_RESUMO.Close ;

  FECHA_CAIXA_RESUMO.ParamByName('CNPJ').asString := DmApp.Cnpj ;
  FECHA_CAIXA_RESUMO.ParamByName('DATA' ).asDate  := Data       ;

  FECHA_CAIXA_RESUMO.ExecProc;

  FECHA_CAIXA_RESUMO.Close ;
end;

Procedure TDmCaixa.Fechar_Caixa  ( USUARIO: Integer; Conta: Integer; Data: TDateTime; Saldo: Real; Planilha: Integer; Vista: Real; Prazo: Real; Turno: Integer );
var
   Resultado: Integer;
Begin
  //
  FecharCaixa.Close ;
  FecharCaixa.Params.Clear ;

  FecharCaixa.Params.CreateParam ( FtString , 'CNPJ'    , PtInput  );
  FecharCaixa.Params.CreateParam ( FtInteger, 'USUARIO' , PtInput  );
  FecharCaixa.Params.CreateParam ( FtInteger, 'CONTA'   , PtInput  );
  FecharCaixa.Params.CreateParam ( FtDate   , 'DATA'    , PtInput  );
  FecharCaixa.Params.CreateParam ( FtInteger, 'TURNO'   , PtInput  );
  FecharCaixa.Params.CreateParam ( FtFloat  , 'SALDO'   , PtInput  );
  FecharCaixa.Params.CreateParam ( FtInteger, 'PLANILHA', PtInput  );
  FecharCaixa.Params.CreateParam ( FtFloat  , 'VISTA'   , PtInput  );
  FecharCaixa.Params.CreateParam ( FtFloat  , 'PRAZO'   , PtInput  );
  FecharCaixa.Params.CreateParam ( FtInteger, 'ACEITE'  , PtOutput );


  FecharCaixa.ParamByName('CNPJ').asString      := DmApp.Cnpj ;
  FecharCaixa.ParamByName('USUARIO').asInteger  := Usuario    ;
  FecharCaixa.ParamByName('CONTA').asInteger    := Conta      ;
  FecharCaixa.ParamByName('DATA' ).asDate       := Data       ;
  FecharCaixa.ParamByName('TURNO').asInteger    := Turno      ;
  FecharCaixa.ParamByName('SALDO' ).asFloat     := Saldo      ;
  FecharCaixa.ParamByName('PLANILHA').asInteger := Planilha   ;
  FecharCaixa.ParamByName('VISTA' ).asFloat     := Vista      ;
  FecharCaixa.ParamByName('PRAZO' ).asFloat     := Prazo      ;

  FecharCaixa.ExecProc;

  //
  Resultado := FecharCaixa.ParamByName('ACEITE').asInteger;

  If Resultado > 0
  then begin
       MessageDlg ('Existe(m) ' + IntToStr( Resultado ) + ' Caixa(s) Anterior(es) Aberto(s), Verifique!', MtError, [MbOk],0);
  end;

  FecharCaixa.Close ;
end;

procedure TDmCaixa.CaixasBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert
     Then
         if (DmApp.EXIBE_ACERTO = 'S') then
            CaixasPLANILHA.VALUE := DMApp.GerarCodigo('ACERTO',0 ) + 1
        else
         CaixasPLANILHA.Value := DMApp.GerarCodigo('PLANILHA', 1);

     If trim( Caixas_UsuarioCNPJ.Value ) <> ''
     then begin
          CaixasCONTA.Value    := Caixas_UsuarioCONTA.Value   ;
          CaixasUSUARIO.Value  := Caixas_UsuarioUSUARIO.Value ;
          CaixasCNPJ.Value     := Caixas_UsuarioCNPJ.Value    ;
     end;

end;

procedure TDmCaixa.Vendas_AgrupadasCalcFields(DataSet: TDataSet);
Var
   Total: Real;
begin
     Total := Vendas_AgrupadasTOTAL.VALUE + Vendas_AgrupadasDESC_ACRES.VALUE ;

     Vendas_AgrupadasLiquido.Value := Total ;

     Vendas_AgrupadasAVISTA.VALUE  := Vendas_AgrupadasDINHEIRO.VALUE + Vendas_AgrupadasCARTAO.VALUE + Vendas_AgrupadasCHEQUE.VALUE + Vendas_AgrupadasTICKET.VALUE + Vendas_AgrupadasTROCO.VALUE ;

     Vendas_AgrupadasAPRAZO.Value  := TOTAL - Vendas_AgrupadasAVISTA.VALUE ;

     Vendas_AgrupadasCOMISSAO_VISTA.VALUE := (Vendas_AgrupadasAVISTA.VALUE * Vendas_AgrupadasCOM_VISTA.VALUE )/100;

     Vendas_AgrupadasCOMISSAO_PRAZO.VALUE := (Vendas_AgrupadasAPRAZO.VALUE * Vendas_AgrupadasCOM_PRAZO.VALUE )/100;
end;

procedure TDmCaixa.CaixasDATAValidate(Sender: TField);
var
  ADate: TDateTime;
begin
     If Caixas.state in [ dsinsert, dsedit ]
     then begin
          {IF DayOfWeek(CaixasDATa.value) = 1   THEN
          BEGIN
               MessageDlg('Hoje é Domingo, Verifique!', mtWarning, [mbOK], 0);
          END;}
     end;
end;

procedure TDmCaixa.MovimentosPESSOA_FJValidate(Sender: TField);
begin
     Valida_Pessoa_Fj.Close ;

     Valida_Pessoa_Fj.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Pessoa_Fj.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Pessoa_Fj.Prepare ;
     Valida_Pessoa_Fj.Open ;

     If Valida_Pessoa_FjNOME.isNull
     then Begin
          //Verifica se Nao
          Showmessage ('Pessoa Inexistente!');
          Abort;
     end;

     If Not Valida_Pessoa_FjNOME.isNull
     then Begin
          MovimentosNOME.Value := Valida_Pessoa_FjNOME.Value ;
     end ;
end;

procedure TDmCaixa.CaixasCalcFields(DataSet: TDataSet);
begin
     CaixasENTRADAS.VALUE        :=
     CaixasTROCO_INICIAL.Value   +
     CaixasPRODUTOS.Value        +
     CaixasRECEBIMENTOS.Value    +
     CaixasOUTRAS_ENTRADAS.Value +

     CaixasACRESCIMOS.Value      +
     CaixasJUROS.Value           ;

     CaixasSAIDAS.VALUE          :=
     CaixasDINHEIRO.Value        +
     CaixasMOEDAS.Value          +
     CaixasTICKET.Value          +
     CaixasCHEQUE.Value          +
     CaixasCHEQUE_PRAZO.Value    +
     CaixasTROCO.Value           +
     Caixascartao.Value          +
     CaixasNOTAS.Value           +
     CaixasOUTRAS_SAIDAS.Value   +

     CaixasDESCONTOS.Value       +
     CaixasTROCO_VENDAS.Value    +
     CaixasPAGAMENTOS.Value      ;

     CaixasDiferenca.Value  := CaixasEntradas.Value - CaixasSaidas.Value ;

     //contornando a questão do caixa que precisa esconder os valores de vendas de bonificação
     //debitando do total, alteração solicitada dispet campo gradne - Fabiano
     qryAux.close;
     qryAux.sql.text := ' SELECT  SUM(vd.TOTAL+vd.DESC_ACRES) Total'+
                       ' FROM FAT_VENDAS vd'+
                       ' INNER JOIN est_natureza nat on (nat.codigo = vd.natureza)'+
                       ' WHERE vd.CNPJ = :CNPJ AND vd.USUARIO = :USUARIO'+
                       ' AND vd.DATA_CAIXA = :DATA  AND vd.TURNO = :TURNO'+
                       ' AND vd.FECHADA = ''S'' AND vd.ENVIADA_CX = ''S'''+
                       ' and nat.mov_caixa = ''N''';

     qryAux.ParamByName('CNPJ').value := DmApp.CNPJ;
     qryAux.ParamByName('USUARIO').value := DmApp.UsuarioCaixa;
     qryAux.ParamByName('DATA').value := DmApp.DataCaixa;
     qryAux.ParamByName('TURNO').value := DmApp.TurnoCaixa;
     qryAux.open;

     Caixas_Produtos.value := CaixasPRODUTOS.asfloat - qryAux.FieldByName('Total').asfloat;
     Caixas_Notas.value := CaixasNotas.asfloat;
     Caixas_Entradas.value := CaixasEntradas.asfloat - qryAux.FieldByName('Total').asfloat;
     Caixas_Saidas.value := CaixasSaidas.asfloat;
     Caixas_Diferenca.value := CaixasDiferenca.value  - qryAux.FieldByName('Total').asfloat;
     { Problema do saldo
     if (DmApp.Cx_Comp_Sld_Ant <> 'S') then
       CaixasSALDO_ANTERIOR.value := 0;{}


end;

procedure TDmCaixa.Caixas_UsuarioNewRecord(DataSet: TDataSet);
begin
     Caixas_UsuarioATIVO.Value := 'S' ;
     Caixas_UsuarioCAIXA_EXPORADICO.value := 'N';
     Caixas_UsuarioUSR_CAIXA_GERAL.value  := 'N';
     Caixas_UsuarioDATA_ATIVACAO.VALUE := DmApp.Data_Servidor ;
end;

procedure TDmCaixa.CaixasTURNOValidate(Sender: TField);
begin
 IF SENDER.VALUE = 0 THEN
 BEGIN
   MESSAGEDLG ('Todos os Turnos desta Data Já estão preenchidos, verifique!', mtinformation, [mbok], 0);
   Abort;
 END;
end;

procedure TDmCaixa.Caixa_ResumoNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
     Caixa_ResumoCAIXAS.Value           := 0;
     Caixa_ResumoENTRADAS.Value         := 0;
     Caixa_ResumoCHEQUE_DEVOLVIDO.Value := 0;
     Caixa_ResumoCHEQUE_PRAZO_ENT.Value := 0;
     Caixa_ResumoDINHEIRO.Value         := 0;
     Caixa_ResumoCHEQUE_VISTA.Value     := 0;
     Caixa_ResumoSAIDAS.Value           := 0;
     Caixa_ResumoCHEQUE_PRAZO_SAI.Value := 0;
     Caixa_ResumoMOEDAS.Value           := 0;

     Caixa_ResumoFECHADO.Value := 'N' ;
end;

procedure TDmCaixa.Caixa_ResumoCalcFields(DataSet: TDataSet);
begin
     Caixa_ResumoSALDO_ENTRADAS.Value    :=
     Caixa_ResumoCAIXAS.VALUE            +
     Caixa_ResumoENTRADAS.VALUE          +
     Caixa_ResumoCHEQUE_DEVOLVIDO.VALUE  +
     Caixa_ResumoCHEQUE_PRAZO_ENT.Value  ;

     Caixa_ResumoSALDO_SAIDAS.Value      :=
     Caixa_ResumoDINHEIRO.VALUE          +
     Caixa_ResumoCHEQUE_VISTA.VALUE      +
     Caixa_ResumoSAIDAS.VALUE            +
     Caixa_ResumoMOEDAS.VALUE            +
     Caixa_ResumoCHEQUE_PRAZO_SAI.Value  ;


     Caixa_ResumoSALDO.Value             := Caixa_ResumoSALDO_ENTRADAS.Value
                                         -  Caixa_ResumoSALDO_SAIDAS.Value ;

     Caixa_ResumoBANCOS.Value            := Caixa_ResumoDINHEIRO.VALUE +
                                            Caixa_ResumoCHEQUE_VISTA.VALUE ;
end;

procedure TDmCaixa.MovimentosResumoBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBDataSet).ParamByName('CNPJ' ).asString     := Caixa_ResumoCNPJ.Value  ;              ;
     (DataSet as TIBDataSet).ParamByName('DATA' ).asDate       := Caixa_ResumoDATA.Value  ;

     (Dataset as TIBDataSet).Prepare;
end;

procedure TDmCaixa.MovimentosResumoNewRecord(DataSet: TDataSet);
begin
     MovimentosResumoCNPJ.Value := Caixa_ResumoCNPJ.Value  ;
     MovimentosResumoDATA.Value := Caixa_ResumoDATA.VALUE  ;
end;

procedure TDmCaixa.MovimentosResumoPESSOA_FJValidate(Sender: TField);
begin
     Valida_Pessoa_Fj.Close ;

     Valida_Pessoa_Fj.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Pessoa_Fj.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Pessoa_Fj.Prepare ;
     Valida_Pessoa_Fj.Open ;

     If Valida_Pessoa_FjNOME.isNull
     then Begin
          //Verifica se Nao
          Showmessage ('Pessoa Inexistente!');
          Abort;
     end;

     If Not Valida_Pessoa_FjNOME.isNull
     then Begin
          MovimentosResumoNOME.Value := Valida_Pessoa_FjNOME.Value ;
     end ;
end;

procedure TDmCaixa.FluxoNewRecord(DataSet: TDataSet);
begin
    FluxoCNPJ.Value              := DMAPP.Cnpj         ;
    FluxoCONTA.Value             := DMAPP.ContaCaixa   ;
    FluxoDATA.Value              := DMAPP.DataCaixa    ;
    FluxoTURNO.Value             := DMAPP.TurnoCaixa   ;
    FluxoUSUARIO.Value           := DMAPP.UsuarioCaixa ;
    FluxoENTRADA_CHEQUE.Value    := 0;
    FluxoENTRADA_ESTOQUE.Value   := 0;
    FluxoENTRADA_PAGAR.Value     := 0;
    FluxoENTRADA_RECEBER.Value   := 0;
    FluxoSAIDA_CHEQUE.Value      := 0;
    FluxoSAIDA_ESTOQUE.Value     := 0;
    FluxoSAIDA_PAGAR.Value       := 0;
    FluxoSAIDA_RECEBER.Value     := 0;
    FluxoSALDO_CHEQUE.Value      := 0;
    FluxoSALDO_ESTOQUE.Value     := 0;
    FluxoSALDO_PAGAR.Value       := 0;
    FluxoSALDO_RECEBER.Value     := 0;
end;

procedure TDmCaixa.FluxoCalcFields(DataSet: TDataSet);
begin
     FluxoFINAL_RECEBER.Value := FluxoSALDO_RECEBER.Value + FluxoENTRADA_RECEBER.Value - FluxoSAIDA_RECEBER.Value;
     FluxoFINAL_PAGAR.Value   := FluxoSALDO_PAGAR.Value + FluxoENTRADA_PAGAR.Value - FluxoSAIDA_PAGAR.Value;
     FluxoFINAL_CHEQUE.Value  := FluxoSALDO_CHEQUE.Value + FluxoENTRADA_CHEQUE.Value - FluxoSAIDA_CHEQUE.Value + FluxoACERTO_CHEQUE.value - FluxoDEVOLUCAO_CHEQUE.value ;
     FluxoFINAL_ESTOQUE.Value := FluxoSALDO_ESTOQUE.Value + FluxoENTRADA_ESTOQUE.Value - FluxoSAIDA_ESTOQUE.Value;
end;

procedure TDmCaixa.SALDO_FLUXO_CAIXABeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ' ).asString     := DMApp.Cnpj          ;
     (DataSet as TIBQuery).ParamByName('CONTA').asInteger    := DmApp.ContaCaixa    ;
     (DataSet as TIBQuery).ParamByName('USUARIO').asInteger  := DmApp.UsuarioCaixa  ;
     (DataSet as TIBQuery).ParamByName('TURNO').asInteger    := DmApp.TurnoCaixa    ;
     (DataSet as TIBQuery).ParamByName('DATA' ).asDate       := DmApp.DataCaixa     ;

     (Dataset as TIBQuery).Prepare;
end;

procedure TDmCaixa.FluxoBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBDataSet).ParamByName('CNPJ' ).asString     := DMApp.Cnpj          ;
     (DataSet as TIBDataSet).ParamByName('CONTA').asInteger    := DmApp.ContaCaixa    ;
     (DataSet as TIBDataSet).ParamByName('USUARIO').asInteger  := DmApp.UsuarioCaixa  ;
     (DataSet as TIBDataSet).ParamByName('TURNO').asInteger    := DmApp.TurnoCaixa    ;
     (DataSet as TIBDataSet).ParamByName('DATA' ).asDate       := DmApp.DataCaixa     ;

     (Dataset as TIBDataSet).Prepare;
end;

procedure TDmCaixa.SOMA_BAIXA_PAGAR_CAIXABeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ' ).asString     := DMApp.Cnpj          ;
     (DataSet as TIBQuery).ParamByName('DATA' ).asDate       := DmApp.DataCaixa     ;

     (Dataset as TIBQuery).Prepare;
end;

procedure TDmCaixa.Vendas_PeriodoCalcFields(DataSet: TDataSet);
var
  Total: Real;
begin
  Total := Vendas_PeriodoTOTAL.VALUE + Vendas_PeriodoDESC_ACRES.VALUE ;
  Vendas_PeriodoAVISTA.VALUE := Vendas_PeriodoDINHEIRO.VALUE +
                                Vendas_PeriodoCARTAO.VALUE +
                                Vendas_PeriodoCHEQUE.VALUE +
                                Vendas_PeriodoTICKET.VALUE +
                                Vendas_PeriodoTROCO.VALUE ;
  Vendas_PeriodoAPRAZO.Value := TOTAL - Vendas_PeriodoAVISTA.VALUE ;
  Vendas_PeriodoLiquido.Value := Total ;
end;

procedure TDmCaixa.Vendas_AbertasCalcFields(DataSet: TDataSet);
Var
   Total: Real;
begin
     Total := Vendas_AbertasTOTAL.VALUE + Vendas_AbertasDESC_ACRES.VALUE ;

     Vendas_AbertasAVISTA.VALUE  := Vendas_AbertasDINHEIRO.VALUE + Vendas_AbertasCARTAO.VALUE + Vendas_AbertasCHEQUE.VALUE + Vendas_AbertasTICKET.VALUE + Vendas_AbertasTROCO.VALUE ;

     Vendas_AbertasAPRAZO.Value  := TOTAL - Vendas_AbertasAVISTA.VALUE ;

     Vendas_AbertasLiquido.Value := Total ;
end;

procedure TDmCaixa.Vendas_CanceladasCalcFields(DataSet: TDataSet);
Var
   Total: Real;
begin
     Total := Vendas_CanceladasTOTAL.VALUE + Vendas_CanceladasDESC_ACRES.VALUE ;

     Vendas_CanceladasAVISTA.VALUE  := Vendas_CanceladasDINHEIRO.VALUE + Vendas_CanceladasCARTAO.VALUE + Vendas_CanceladasCHEQUE.VALUE + Vendas_CanceladasTICKET.VALUE + Vendas_CanceladasTROCO.VALUE ;

     Vendas_CanceladasAPRAZO.Value  := TOTAL - Vendas_CanceladasAVISTA.VALUE ;

     Vendas_CanceladasLiquido.Value := Total ;
end;

procedure TDmCaixa.TrocasCalcFields(DataSet: TDataSet);
Var
   Total: Real;
begin       
  Total := (TrocasTotal_2.Value + TrocasDESC_ACRESC_2.Value) - (trocasTOTAL.VALUE + TrocasDESC_ACRESC.VALUE) ;

  trocasAVISTA.VALUE  := trocasDINHEIRO.VALUE + trocasCARTAO.VALUE + trocasCHEQUE.VALUE + trocasTICKET.VALUE ;//+ trocasTROCO.VALUE ;
  trocasAPRAZO.Value  := TOTAL - trocasAVISTA.VALUE ;
  trocasLiquido.Value := Total ;
end;

procedure TDmCaixa.Trocas_PeriodoCalcFields(DataSet: TDataSet);
Var
   Total: Real;
begin
  Total := (Trocas_PeriodoTotal_2.Value + Trocas_PeriodoDESC_ACRESC_2.Value) - (Trocas_PeriodoTOTAL.VALUE + Trocas_PeriodoDESC_ACRESC.VALUE) ;

  Trocas_PeriodoAVISTA.VALUE  := Trocas_PeriodoDINHEIRO.VALUE + Trocas_PeriodoCARTAO.VALUE + Trocas_PeriodoCHEQUE.VALUE + Trocas_PeriodoTICKET.VALUE ;//+ Trocas_PeriodoTROCO.VALUE ;
  Trocas_PeriodoAPRAZO.Value  := TOTAL - Trocas_PeriodoAVISTA.VALUE ;
  Trocas_PeriodoLiquido.Value := Total ;
end;

procedure TDmCaixa.qryEnt_SaiADMCxTIPOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.value = 'C' then
    Text := 'Crédito'
  else
    Text := 'Débito'
end;

procedure TDmCaixa.qryEnt_SaiADMCxTIPOSetText(Sender: TField;
  const Text: String);
begin
  if Text = 'Crédito' then
    Sender.value := 'C'
  else
    Sender.value := 'D'
end;

end.
