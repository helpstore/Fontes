 unit Financeiro_Dm2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBStoredProc, IBSQL, Variants, dxmdaset,
  RDprint;

type
  TdmFinanceiro2 = class(TDataModule)
    qryManBoletos: TIBQuery;
    qryManBoletosSAC_NOME: TIBStringField;
    qryManBoletosSAC_RUA: TIBStringField;
    qryManBoletosBLT_CONVENIO: TIBStringField;
    qryManBoletosSAC_COMPLEMENTO: TIBStringField;
    qryManBoletosSAC_NUM: TIBStringField;
    qryManBoletosSAC_EMAIL: TIBStringField;
    qryManBoletosSAC_CEP: TIBStringField;
    qryManBoletosSAC_CIDADE: TIBStringField;
    qryManBoletosSAC_UF: TIBStringField;
    qryManBoletosSAC_BAIRRO: TIBStringField;
    qryManBoletosSAC_PESSOA: TIBStringField;
    qryManBoletosSAC_CPF_CGC: TIBStringField;
    qryManBoletosBLT_AGENCIA: TIBStringField;
    qryManBoletosCED_CODIGOCED: TIntegerField;
    qryManBoletosCED_DIG_CODIGOCED: TIBStringField;
    qryManBoletosBLT_CARTEIRA: TIBStringField;
    qryManBoletosBLT_INSTRUCAO: TMemoField;
    qryManBoletosBLT_LAYOUT: TIntegerField;
    qryManBoletosBLT_DIG_CONTA: TIBStringField;
    qryManBoletosBLT_DIG_AGENCIA: TIBStringField;
    qryManBoletosBLT_CONTA: TIBStringField;
    qryManBoletosBLT_LOCAL_PAGTO: TIBStringField;
    qryManBoletosBLT_BANCO: TIntegerField;
    qryManBoletosBLT_ACEITE_DOCTO: TIBStringField;
    qryManBoletosBLT_DIAS_ABATIMENTO: TIntegerField;
    qryManBoletosBLT_DIAS_DESCONTO: TIntegerField;
    qryManBoletosBLT_DIAS_MORA_JUROS: TIntegerField;
    qryManBoletosBLT_MULTA: TIBBCDField;
    qryManBoletosBLT_DIAS_PROTESTO: TIntegerField;
    qryManBoletosBLT_PCT_ABATIMENTO: TIBBCDField;
    qryManBoletosBLT_PCT_DESCONTO: TIBBCDField;
    qryManBoletosBLT_VLR_DESPESA: TIBBCDField;
    qryManBoletosBLT_VLR_IOF: TIBBCDField;
    qryManBoletosBLT_VLR_MORA_JUROS: TIBBCDField;
    qryManBoletosBLT_VLR_OUTRAS_DESP: TIBBCDField;
    qryManBoletosBLT_VALOR: TIBBCDField;
    qryManBoletosBLT_DT_LANCTO: TDateField;
    qryManBoletosBLT_DT_VENCTO: TDateField;
    qryManBoletosBLT_NOME_BANCO: TIBStringField;
    qryManBoletosNOSSO_NUMERO: TLargeintField;
    qryManBoletosREC_DESCONTO: TIBBCDField;
    qryManBoletosREC_VLR_PARCIAL: TIBBCDField;
    qryManBoletosREC_DATA_ULT_BAIXA: TDateField;
    qryManBoletosBLT_NUM_IMP: TIntegerField;
    qryManBoletosTotal: TFloatField;
    qryManBoletosJuros: TFloatField;
    qryManBoletosCOD_RECEBER: TIntegerField;
    qryManBoletosPSA_CODIGO: TIntegerField;
    COM_PERFIL: TIBDataSet;
    COM_PERFILCNPJ: TIBStringField;
    COM_PERFILCODIGO: TIntegerField;
    COM_PERFILDESCRICAO: TIBStringField;
    dsLinkPerfil: TDataSource;
    COM_PERFIL_FAIXA: TIBDataSet;
    dsLinkPerfilFx: TDataSource;
    CM_PERFIL_FAIXA_DESC: TIBDataSet;
    CM_PERFIL_FAIXA_DESCCNPJ: TIBStringField;
    CM_PERFIL_FAIXA_DESCCODIGO: TIntegerField;
    CM_PERFIL_FAIXA_DESCCOD_PERFIL_FAIXA: TIntegerField;
    CM_PERFIL_FAIXA_DESCPCT_INICIAL: TFloatField;
    CM_PERFIL_FAIXA_DESCPCT_FINAL: TFloatField;
    CM_PERFIL_FAIXA_DESCPCT_VISTA: TFloatField;
    CM_PERFIL_FAIXA_DESCPCT_PRAZO: TFloatField;
    COM_PERFIL_FAIXACNPJ: TIBStringField;
    COM_PERFIL_FAIXACODIGO: TIntegerField;
    COM_PERFIL_FAIXACOD_PERFIL: TIntegerField;
    COM_PERFIL_FAIXAVLR_INICIAL: TFloatField;
    COM_PERFIL_FAIXAVLR_FINAL: TFloatField;
    dsLinkPerfilDesc: TDataSource;
    CM_PERFIL_FAIXA_PROD: TIBDataSet;
    CM_PERFIL_FAIXA_PRODCNPJ: TIBStringField;
    CM_PERFIL_FAIXA_PRODCODIGO: TIntegerField;
    CM_PERFIL_FAIXA_PRODCOD_PERFIL_FX_DESC: TIntegerField;
    CM_PERFIL_FAIXA_PRODCOD_PRODUTO: TIBStringField;
    CM_PERFIL_FAIXA_PRODPCT_PROD_VISTA: TFloatField;
    CM_PERFIL_FAIXA_PRODPCT_PROD_PRAZO: TFloatField;
    CM_COMISSAO: TIBDataSet;
    CM_COMISSAOCNPJ: TIBStringField;
    CM_COMISSAOCODIGO: TIntegerField;
    CM_COMISSAOCOD_VENDA: TIntegerField;
    CM_COMISSAOCOD_VENDEDOR: TIntegerField;
    dsLinkComissao: TDataSource;
    CM_COMISSAO_PARC: TIBDataSet;
    CM_COMISSAO_PARCCNPJ: TIBStringField;
    CM_COMISSAO_PARCCODIGO: TIntegerField;
    CM_COMISSAO_PARCCOD_COMISSAO: TIntegerField;
    CM_COMISSAO_PARCVLR_TOTAL: TFloatField;
    CM_COMISSAO_PARCPCT_PAGO: TFloatField;
    CM_COMISSAO_PARCPCT_LIBERADO: TFloatField;
    CM_COMISSAO_PARCQUITADO: TIBStringField;
    CM_COMISSAO_PARCCOD_RECEBER: TIntegerField;
    CM_COMISSAO_PARCANO: TIntegerField;
    CM_PERFIL_PAGTO: TIBDataSet;
    dsPerfilPagto: TDataSource;
    CM_PERFIL_PAGTO_FAIXA: TIBDataSet;
    CM_PERFIL_PAGTO_FAIXACNPJ: TIBStringField;
    CM_PERFIL_PAGTO_FAIXACODIGO: TIntegerField;
    CM_PERFIL_PAGTO_FAIXACOD_PERFIL_PAGTO: TIntegerField;
    CM_PERFIL_PAGTO_FAIXADIA_INICIAL: TIntegerField;
    CM_PERFIL_PAGTO_FAIXADIA_FINAL: TIntegerField;
    CM_PERFIL_PAGTO_FAIXAPCT_PAGTO: TFloatField;
    CM_PERFIL_FAIXA_PRODNOME: TIBStringField;
    lstPerfilCom: TIBQuery;
    COM_PERFILBASE_CALC: TSmallintField;
    CM_PERFIL_PAGTOCNPJ: TIBStringField;
    CM_PERFIL_PAGTOCODIGO: TIntegerField;
    CM_PERFIL_PAGTOPCT_ANT_PRAZO: TFloatField;
    lstPerfilComCNPJ: TIBStringField;
    lstPerfilComCODIGO: TIntegerField;
    lstPerfilComDESCRICAO: TIBStringField;
    lstPerfilComBASE_CALC: TSmallintField;
    dslstPerfil: TDataSource;
    Comissoes: TIBDataSet;
    ComissoesCODIGO: TIntegerField;
    ComissoesCOD_VENDEDOR: TIntegerField;
    ComissoesCOD_VENDA: TIntegerField;
    ComissoesDT_GERACAO: TDateTimeField;
    ComissoesNOME: TIBStringField;
    dsComissoes: TDataSource;
    dsLinkComParc: TDataSource;
    ComissoesParc: TIBDataSet;
    ComissoesParcCODIGO: TIntegerField;
    ComissoesParcCOD_RECEBER: TIntegerField;
    ComissoesParcPARC_CR: TIBStringField;
    ComissoesParcPCT_LIBERADO: TFloatField;
    ComissoesParcPCT_PAGO: TFloatField;
    ComissoesParcVLR_RECEBER: TFloatField;
    ComissoesParcVLR_TOTAL: TFloatField;
    dsComissaoParc: TDataSource;
    ComissoesCNPJ: TIBStringField;
    CM_COMISSAODT_GERACAO: TDateTimeField;
    CM_COMISSAOSTATUS: TIBStringField;
    GeraComissao: TIBStoredProc;
    ComissoesTOTAL: TFloatField;
    ComissoesPAGO: TFloatField;
    ComissoesLIBERADO: TFloatField;
    ComissoesParcVLR_LIBERADO: TFloatField;
    CM_COMISSAOPCT_ANTECIPACAO: TFloatField;
    ComissoesPCT_ANTECIPACAO: TFloatField;
    ComissoesCOD_TROCA: TIntegerField;
    qryBxReceber: TIBQuery;
    qryBxReceberCODIGO: TIntegerField;
    qryBxReceberVLR_BAIXA: TFloatField;
    qryBxReceberJUROS: TFloatField;
    qryBxReceberVLR_LIQUIDO: TFloatField;
    qryBxReceberDT_BAIXA: TDateTimeField;
    qryBxReceberDT_VENCTO: TDateTimeField;
    qryBxReceberAtraso: TIntegerField;
    qryReceber: TIBQuery;
    qryReceberCODIGO: TIntegerField;
    qryReceberVALOR: TFloatField;
    qryReceberVLR_PARCIAL: TFloatField;
    qryReceberDATA_ULT_BAIXA: TDateTimeField;
    qryReceberDT_EMISSAO: TDateTimeField;
    qryReceberDT_VENCTO: TDateTimeField;
    qryReceberVLR_ORIG_ALT: TIBStringField;
    ComissoesParcPESSOA_FJ: TIntegerField;
    qryBxReceberATRASO2: TFloatField;
    qryReceberSALDO_NOMINAL: TFloatField;
    qryPagar: TIBQuery;
    qryPagarTOTAL: TFloatField;
    qryPagarVENDEDOR: TIBStringField;
    GeraPagar: TIBStoredProc;
    SelVendedor: TIBQuery;
    SelVendedorCODIGO: TIntegerField;
    SelVendedorNOME: TIBStringField;
    dsSelVendedor: TDataSource;
    EstornaCom: TIBStoredProc;
    EstornaComParc: TIBStoredProc;
    SelVendedorcod_nome: TStringField;
    ExecAux: TIBSQL;
    qryPromissorias: TIBQuery;
    qryPromissoriaspc_valor_extenso: TStringField;
    qryPromissoriaspc_vencto_extenso: TStringField;
    qryPromissoriaspc_mes_extenso: TStringField;
    qryPromissoriasPSA_CODIGO: TIntegerField;
    qryPromissoriasVD_DATA: TDateField;
    qryPromissoriasVD_CODIGO: TIntegerField;
    qryPromissoriasPC_PARCELA: TIBStringField;
    qryPromissoriasPC_VALOR: TFloatField;
    qryPromissoriasPC_VENCTO: TDateField;
    qryPromissoriasPC_DIA: TIntegerField;
    qryPromissoriasPC_MES: TIntegerField;
    qryPromissoriasPC_ANO: TIntegerField;
    qryPromissoriasPSA_NOME: TIBStringField;
    qryPromissoriasPSA_ENDERECO: TIBStringField;
    qryPromissoriasPSA_BAIRRO: TIBStringField;
    qryPromissoriasPSA_CIDADE: TIBStringField;
    qryPromissoriasPSA_CNPJ: TIBStringField;
    qryPromissoriasPSA_RG_IE: TIBStringField;
    qryPromissoriasVD_COD_VENDEDOR: TIntegerField;
    qryPromissoriasPSA_FONE: TIBStringField;
    BAIXA_RECEBER_SELECAO_LOJA: TIBStoredProc;
    qryVerReceberLMT: TIBQuery;
    qryVerReceberLMTTotal: TFloatField;
    qryVerReceberLMTSelecao: TFloatField;
    qryVerReceberLMTJuros_Calculadors: TFloatField;
    qryVerReceberLMTTotal_Nominal: TFloatField;
    qryVerReceberLMTJuros_CalculadorsTotal_NominalJuros_Conta: TFloatField;
    qryVerReceberLMTCODIGO: TIntegerField;
    qryVerReceberLMTANO: TSmallintField;
    qryVerReceberLMTPESSOA_FJ: TIntegerField;
    qryVerReceberLMTDT_EMISSAO: TDateTimeField;
    qryVerReceberLMTDT_VENCTO: TDateTimeField;
    qryVerReceberLMTDT_LANCTO: TDateTimeField;
    qryVerReceberLMTDOCTO: TIBStringField;
    qryVerReceberLMTPARCELA: TIBStringField;
    qryVerReceberLMTHISTORICO: TIBStringField;
    qryVerReceberLMTVALOR: TIBBCDField;
    qryVerReceberLMTVLR_PARCIAL: TIBBCDField;
    qryVerReceberLMTJUROS_REC: TIBBCDField;
    qryVerReceberLMTDESCONTOS: TIBBCDField;
    qryVerReceberLMTBOLETO: TIBStringField;
    qryVerReceberLMTORIGEM: TIBStringField;
    qryVerReceberLMTCODIGO_VN: TIntegerField;
    qryVerReceberLMTANO_VN: TSmallintField;
    qryVerReceberLMTAVISO: TSmallintField;
    qryVerReceberLMTDT_AVISO: TDateTimeField;
    qryVerReceberLMTTIPO_DOCTO: TIBStringField;
    qryVerReceberLMTNUMDUPLICATA: TIntegerField;
    qryVerReceberLMTFATURA: TIntegerField;
    qryVerReceberLMTNUMBOLETO: TIntegerField;
    qryVerReceberLMTPARCIAL: TIBBCDField;
    qryVerReceberLMTJUROS_PARCIAL: TIBBCDField;
    qryVerReceberLMTDATA_ULT_BAIXA: TDateTimeField;
    qryVerReceberLMTCOBRADOR: TIntegerField;
    qryVerReceberLMTLOCAL: TIntegerField;
    qryVerReceberLMTARQ_MORTO: TIBStringField;
    qryVerReceberLMTAtraso: TIntegerField;
    qryVerReceberLMTJuros_Conta: TFloatField;
    qryVerReceberLMTNOME: TIBStringField;
    qryVerReceberLMTENDERECO: TIBStringField;
    qryVerReceberLMTNUMERO: TIBStringField;
    qryVerReceberLMTCIDADE: TIBStringField;
    qryVerReceberLMTBAIRRO: TIBStringField;
    qryVerReceberLMTCEP: TIBStringField;
    qryVerReceberLMTUF: TIBStringField;
    qryVerReceberLMTCOD_END: TIntegerField;
    qryVerReceberLMTCOD_CID: TIntegerField;
    qryVerReceberLMTCOD_BAI: TIntegerField;
    qryVerReceberLMTFONE: TIBStringField;
    qryVerReceberLMTCPF_CGC: TIBStringField;
    qryVerChequeLMT: TIBQuery;
    qryVerChequeLMTTROCA: TIntegerField;
    qryVerChequeLMTINDICE: TIBStringField;
    qryVerChequeLMTBANCO: TIBStringField;
    qryVerChequeLMTCONTA: TIBStringField;
    qryVerChequeLMTCHEQUE: TIBStringField;
    qryVerChequeLMTVENDA: TIntegerField;
    qryVerChequeLMTEMISSAO: TDateTimeField;
    qryVerChequeLMTPRE_DATE: TDateTimeField;
    qryVerChequeLMTVALOR: TFloatField;
    qryVerChequeLMTCONCILIADO: TIBStringField;
    qryVerChequeLMTHISTORICO: TIBStringField;
    qryVerChequeLMTAGENCIA: TIBStringField;
    qryVerChequeLMTDATA_CONCILIACAO: TDateTimeField;
    qryVerChequeLMTJUROS: TFloatField;
    qryVerChequeLMTTIPO: TIBStringField;
    qryVerChequeLMTDATA_ACERTO: TDateTimeField;
    qryVerChequeLMTPLANILHA: TIntegerField;
    qryVerChequeLMTDIGITO_AGENCIA: TIBStringField;
    qryVerChequeLMTDIGITO_CHEQUE: TIBStringField;
    qryVerChequeLMTDATA_DEVOLUCAO: TDateTimeField;
    qryVerChequeLMTVEZES_DEVOLUCAO: TIntegerField;
    qryVerChequeLMTPROCESSADO: TIBStringField;
    qryVerChequeLMTID: TIntegerField;
    qryVerChequeLMTMARCADO: TIBStringField;
    qryVerChequeLMTNOME: TIBStringField;
    qryVerChequeLMTFONE: TIBStringField;
    qryVerChequeLMTFAX: TIBStringField;
    qryVerChequeLMTCELULAR: TIBStringField;
    qryVerChequeLMTCPF_CGC: TIBStringField;
    qryVerChequeLMTRG_IE: TIBStringField;
    qryVerChequeLMTLOCAL_TRABALHO: TIBStringField;
    qryVerChequeLMTFONE_TRABALHO: TIBStringField;
    qryVerChequeLMTMOTIVO_DEVOLUCAO: TIBStringField;
    qryVerChequeLMTPESSOA_FJ: TIntegerField;
    qryVerChequeLMTCMC7: TIBStringField;
    qryVerChequeLMTDATA_REAPRES: TDateTimeField;
    qryVerChequeLMTTotal: TFloatField;
    qryVerRecLimite: TIBQuery;
    qryVerRecLimiteTotal: TFloatField;
    qryVerRecLimiteSelecao: TFloatField;
    qryVerRecLimiteJuros_Calculadors: TFloatField;
    qryVerRecLimiteTotal_Nominal: TFloatField;
    qryVerRecLimiteAtraso: TIntegerField;
    qryVerRecLimiteJuros_Conta: TFloatField;
    qryVerRecLimiteCODIGO: TIntegerField;
    qryVerRecLimiteANO: TSmallintField;
    qryVerRecLimitePESSOA_FJ: TIntegerField;
    qryVerRecLimiteDT_EMISSAO: TDateTimeField;
    qryVerRecLimiteDT_VENCTO: TDateTimeField;
    qryVerRecLimiteDT_LANCTO: TDateTimeField;
    qryVerRecLimiteDOCTO: TIBStringField;
    qryVerRecLimitePARCELA: TIBStringField;
    qryVerRecLimiteHISTORICO: TIBStringField;
    qryVerRecLimiteVALOR: TFloatField;
    qryVerRecLimiteVLR_PARCIAL: TFloatField;
    qryVerRecLimiteJUROS_REC: TFloatField;
    qryVerRecLimiteDESCONTOS: TFloatField;
    qryVerRecLimiteBOLETO: TIBStringField;
    qryVerRecLimiteORIGEM: TIBStringField;
    qryVerRecLimiteCODIGO_VN: TIntegerField;
    qryVerRecLimiteANO_VN: TSmallintField;
    qryVerRecLimiteAVISO: TIntegerField;
    qryVerRecLimiteDT_AVISO: TDateTimeField;
    qryVerRecLimiteSELECIONADO: TIBStringField;
    qryVerRecLimiteTIPO_DOCTO: TIBStringField;
    qryVerRecLimiteNUMBOLETO: TIntegerField;
    qryVerRecLimiteNUMDUPLICATA: TIntegerField;
    qryVerRecLimiteFATURA: TIntegerField;
    qryVerRecLimitePARCIAL: TFloatField;
    qryVerRecLimiteJUROS_PARCIAL: TFloatField;
    qryVerRecLimiteDATA_ULT_BAIXA: TDateTimeField;
    qryVerRecLimiteCOBRADOR: TIntegerField;
    qryVerRecLimiteLOCAL_COBRANCA: TIntegerField;
    qryVerRecLimiteARQ_MORTO: TIBStringField;
    qryVerChequePendencia: TIBQuery;
    qryVerChequePendenciaTROCA: TIntegerField;
    qryVerChequePendenciaINDICE: TIBStringField;
    qryVerChequePendenciaBANCO: TIBStringField;
    qryVerChequePendenciaCONTA: TIBStringField;
    qryVerChequePendenciaCHEQUE: TIBStringField;
    qryVerChequePendenciaVENDA: TIntegerField;
    qryVerChequePendenciaEMISSAO: TDateTimeField;
    qryVerChequePendenciaPRE_DATE: TDateTimeField;
    qryVerChequePendenciaVALOR: TFloatField;
    qryVerChequePendenciaCONCILIADO: TIBStringField;
    qryVerChequePendenciaHISTORICO: TIBStringField;
    qryVerChequePendenciaAGENCIA: TIBStringField;
    qryVerChequePendenciaDATA_CONCILIACAO: TDateTimeField;
    qryVerChequePendenciaJUROS: TFloatField;
    qryVerChequePendenciaTIPO: TIBStringField;
    qryVerChequePendenciaDATA_ACERTO: TDateTimeField;
    qryVerChequePendenciaPLANILHA: TIntegerField;
    qryVerChequePendenciaDIGITO_AGENCIA: TIBStringField;
    qryVerChequePendenciaDIGITO_CHEQUE: TIBStringField;
    qryVerChequePendenciaDATA_DEVOLUCAO: TDateTimeField;
    qryVerChequePendenciaVEZES_DEVOLUCAO: TIntegerField;
    qryVerChequePendenciaPROCESSADO: TIBStringField;
    qryVerChequePendenciaID: TIntegerField;
    qryVerChequePendenciaMARCADO: TIBStringField;
    qryVerChequePendenciaNOME: TIBStringField;
    qryVerChequePendenciaFONE: TIBStringField;
    qryVerChequePendenciaFAX: TIBStringField;
    qryVerChequePendenciaCELULAR: TIBStringField;
    qryVerChequePendenciaCPF_CGC: TIBStringField;
    qryVerChequePendenciaRG_IE: TIBStringField;
    qryVerChequePendenciaLOCAL_TRABALHO: TIBStringField;
    qryVerChequePendenciaFONE_TRABALHO: TIBStringField;
    qryVerChequePendenciaMOTIVO_DEVOLUCAO: TIBStringField;
    qryVerChequePendenciaPESSOA_FJ: TIntegerField;
    qryVerChequePendenciaCMC7: TIBStringField;
    qryVerChequePendenciaDATA_REAPRES: TDateTimeField;
    SelecionaCartao: TIBSQL;
    EstConciliaCartao: TIBStoredProc;
    lstPerfilComPagto: TIBQuery;
    lstPerfilComPagtoCNPJ: TIBStringField;
    lstPerfilComPagtoCODIGO: TIntegerField;
    lstPerfilComPagtoPCT_ANT_PRAZO: TFloatField;
    CM_PERFIL_PAGTONOME: TIBStringField;
    lstPerfilComPagtoNOME: TIBStringField;
    dslstPerfilComPagto: TDataSource;
    ComissoesParcSTATUS: TIBStringField;
    ComissoesParcPCT_LUCRO_ITEM: TFloatField;
    ComissoesParcCOD_PERFIL_PAGTO: TIntegerField;
    ComissoesPCT_LUCRO_ITEM: TFloatField;
    ComissoesCOD_PERFIL_PAGTO: TIntegerField;
    ComissoesSTATUS: TIBStringField;
    qryBxReceberDESCONTOS: TFloatField;
    qryBxReceberHISTORICO_BX: TIBStringField;
    qryBxReceberVALOR: TFloatField;
    qryBxReceberVLR_PARCIAL: TFloatField;
    Baixa_Receber_Convenio: TIBStoredProc;
    qryEstRecebidas: TIBQuery;
    qryEstCheques: TIBQuery;
    qryEstCartoes: TIBQuery;
    qryEstMovBanc: TIBQuery;
    qryEstRecebidasCODIGO: TIntegerField;
    qryEstRecebidasUSUARIO: TIntegerField;
    qryEstRecebidasDT_BAIXA: TDateTimeField;
    qryEstRecebidasHISTORICO_BX: TIBStringField;
    qryEstRecebidasVLR_BAIXA: TFloatField;
    qryEstRecebidasJUROS: TFloatField;
    qryEstRecebidasDESCONTOS: TFloatField;
    qryEstRecebidasPLANILHA: TIntegerField;
    qryEstRecebidasPESSOA_FJ: TIntegerField;
    qryEstRecebidasCONTA: TIntegerField;
    qryEstRecebidasTURNO: TIntegerField;
    qryEstChequesBANCO: TIBStringField;
    qryEstChequesCONTA: TIBStringField;
    qryEstChequesCHEQUE: TIBStringField;
    qryEstChequesEMISSAO: TDateTimeField;
    qryEstChequesPRE_DATE: TDateTimeField;
    qryEstChequesVALOR: TFloatField;
    qryEstChequesCONCILIADO: TIBStringField;
    qryEstChequesHISTORICO: TIBStringField;
    qryEstChequesAGENCIA: TIBStringField;
    qryEstChequesNOME: TIBStringField;
    qryEstChequesPLANILHA: TIntegerField;
    qryEstChequesDIGITO_CONTA: TIBStringField;
    qryEstCartoesCODIGO: TIntegerField;
    qryEstCartoesDATA: TDateTimeField;
    qryEstCartoesVALOR: TFloatField;
    qryEstCartoesNUM_CARTAO: TIBStringField;
    qryEstCartoesNUM_BANCO: TIBStringField;
    qryEstCartoesNUM_CONTA: TIBStringField;
    qryEstCartoesCONCILIADO: TIBStringField;
    qryEstCartoesTIPO_DOC: TIBStringField;
    qryEstCartoesTIPO: TIBStringField;
    qryEstCartoesPROCESSADO: TIBStringField;
    qryEstCartoesPLANILHA: TIntegerField;
    qryEstMovBancCODIGO: TIntegerField;
    qryEstMovBancDATA: TDateTimeField;
    qryEstMovBancTIPO: TIBStringField;
    qryEstMovBancHISTORICO: TIBStringField;
    qryEstMovBancVALOR: TFloatField;
    qryEstMovBancCONTA: TIntegerField;
    qryEstMovBancPLANILHA: TIntegerField;
    qryEstMovBancTIPO_LANCAMENTO: TIBStringField;
    qryEstChequesDIGITO_CHEQUE: TIBStringField;
    qryEstChequesPROCESSADO: TIBStringField;
    qryEstChequesDIGITO_AGENCIA: TIBStringField;
    qryEstChequesCMC7: TIBStringField;
    qryEstPlanilha: TIBQuery;
    qryEstPlanilhaVALOR: TFloatField;
    qryEstPlanilhaPLANILHA: TIntegerField;
    qryEstPlanilhaHISTORICO: TIBStringField;
    qryEstPlanilhaDATA: TDateTimeField;
    qryEstPlanilhaFAVORECIDO: TIBStringField;
    EstornaReceber: TIBStoredProc;
    qryEstChequesID: TIntegerField;
    qryEstChequesINDICE: TIBStringField;
    qryPromissoriasVD_NF: TIntegerField;
    QryMoedas: TIBQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    IntegerField2: TIntegerField;
    IBStringField1: TIBStringField;
    FloatField1: TFloatField;
    DateField2: TDateField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    IBStringField2: TIBStringField;
    IBStringField3: TIBStringField;
    IBStringField4: TIBStringField;
    IBStringField5: TIBStringField;
    IBStringField6: TIBStringField;
    IBStringField7: TIBStringField;
    IntegerField6: TIntegerField;
    IBStringField8: TIBStringField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    Moeda: TIBQuery;
    MoedaCODIGO: TIntegerField;
    MoedaNOME: TIBStringField;
    MoedaSIGLA: TIBStringField;
    Cotacoes: TIBDataSet;
    CotacoesCODIGO: TIntegerField;
    CotacoesCOD_MOEDA: TIntegerField;
    CotacoesMOEDA: TIBStringField;
    CotacoesSIGLA: TIBStringField;
    PCD_GERA_COTACOES: TIBStoredProc;
    MoedaUTILIZA_INDEXADOR: TIBStringField;
    CotacoesDATA: TDateField;
    SelMoedasCotacoes: TIBDataSet;
    SelMoedasCotacoesCODIGO: TIntegerField;
    SelMoedasCotacoesNOME: TIBStringField;
    SelMoedasCotacoesSIGLA: TIBStringField;
    SelMoedasCotacoesCOTACAO: TFloatField;
    AcertoReceber: TIBDataSet;
    AcertoReceberCNPJ: TIBStringField;
    AcertoReceberCODIGO: TIntegerField;
    AcertoReceberPESSOA_FJ: TIntegerField;
    AcertoReceberDT_EMISSAO: TDateTimeField;
    AcertoReceberDT_VENCTO: TDateTimeField;
    AcertoReceberDOCTO: TIBStringField;
    AcertoReceberPARCELA: TIBStringField;
    AcertoReceberVALOR: TFloatField;
    AcertoReceberVLR_PARCIAL: TFloatField;
    AcertoReceberCODIGO_VN: TIntegerField;
    AcertoReceberSELECIONADO: TIBStringField;
    AcertoReceberTIPO_DOCTO: TIBStringField;
    AcertoReceberJUROS_PARCIAL: TFloatField;
    AcertoReceberDATA_ULT_BAIXA: TDateTimeField;
    AcertoReceberARQ_MORTO: TIBStringField;
    AcertoReceberTAXA_JUROS: TFloatField;
    AcertoReceberCOD_INDEXADOR: TIntegerField;
    AcertoReceberIDX_DATABASE: TDateField;
    AcertoReceberIDX_COTACAO: TFloatField;
    AcertoReceberIDX_QTDE: TFloatField;
    AcertoReceberNOME: TIBStringField;
    AcertoReceberSldNominal: TFloatField;
    AcertoReceberJuros_Calculados: TFloatField;
    AcertoReceberTotal_Geral: TFloatField;
    AcertoReceberAtraso: TIntegerField;
    AcertoPagar: TIBDataSet;
    AcertoPagarAtraso: TIntegerField;
    AcertoPagarTotal_Geral: TFloatField;
    AcertoPagarJuros_Calculados: TFloatField;
    AcertoPagarSldNominal: TFloatField;
    AcertoPagarCNPJ: TIBStringField;
    AcertoPagarCODIGO: TIntegerField;
    AcertoPagarPESSOA_FJ: TIntegerField;
    AcertoPagarDT_EMISSAO: TDateTimeField;
    AcertoPagarDT_VENCTO: TDateTimeField;
    AcertoPagarDOCTO: TIBStringField;
    AcertoPagarPARCELA: TIBStringField;
    AcertoPagarVALOR: TFloatField;
    AcertoPagarVLR_PARCIAL: TFloatField;
    AcertoPagarCODIGO_VN: TIntegerField;
    AcertoPagarSELECIONADO: TIBStringField;
    AcertoPagarTIPO_DOCTO: TIBStringField;
    AcertoPagarDT_ULTIMA_BAIXA: TDateTimeField;
    AcertoPagarCOD_INDEXADOR: TIntegerField;
    AcertoPagarIDX_DATABASE: TDateField;
    AcertoPagarIDX_COTACAO: TFloatField;
    AcertoPagarIDX_QTDE: TFloatField;
    AcertoPagarNOME: TIBStringField;
    AcertoPagarACT_TOTAL_PAGAR: TFloatField;
    mtbAcertoReceber: TdxMemData;
    mtbAcertoReceberCODIGO: TIntegerField;
    mtbAcertoReceberTotal_Geral: TFloatField;
    mtbAcertoReceberPESSOA_FJ: TIntegerField;
    mtbAcertoReceberDT_EMISSAO: TDateField;
    mtbAcertoReceberDT_VENCTO: TDateField;
    mtbAcertoReceberDOCTO: TStringField;
    mtbAcertoReceberPARCELA: TStringField;
    mtbAcertoReceberVALOR: TFloatField;
    mtbAcertoReceberVLR_PARCIAL: TFloatField;
    mtbAcertoReceberCODIGO_VN: TIntegerField;
    mtbAcertoReceberSELECIONADO: TStringField;
    mtbAcertoReceberTIPO_DOCTO: TStringField;
    mtbAcertoReceberJUROS_PARCIAL: TFloatField;
    mtbAcertoReceberDATA_ULT_BAIXA: TDateField;
    mtbAcertoReceberARQ_MORTO: TStringField;
    mtbAcertoReceberTAXA_JUROS: TFloatField;
    mtbAcertoReceberCOD_INDEXADOR: TIntegerField;
    mtbAcertoReceberIDX_DATABASE: TDateField;
    mtbAcertoReceberIDX_COTACAO: TFloatField;
    mtbAcertoReceberIDX_QTDE: TFloatField;
    mtbAcertoReceberNOME: TStringField;
    mtbAcertoReceberSldNominal: TFloatField;
    mtbAcertoReceberJuros_Calculados: TFloatField;
    mtbAcertoReceberAtraso: TIntegerField;
    mtbAcertoPagar: TdxMemData;
    mtbAcertoPagarCODIGO: TIntegerField;
    mtbAcertoPagarTotal_Geral: TFloatField;
    mtbAcertoPagarPESSOA_FJ: TIntegerField;
    mtbAcertoPagarDT_EMISSAO: TDateField;
    mtbAcertoPagarDT_VENCTO: TDateField;
    mtbAcertoPagarDOCTO: TStringField;
    mtbAcertoPagarPARCELA: TStringField;
    mtbAcertoPagarVALOR: TFloatField;
    mtbAcertoPagarVLR_PARCIAL: TFloatField;
    mtbAcertoPagarCODIGO_VN: TIntegerField;
    mtbAcertoPagarSELECIONADO: TStringField;
    mtbAcertoPagarTIPO_DOCTO: TStringField;
    mtbAcertoPagarJUROS_PARCIAL: TFloatField;
    mtbAcertoPagarDATA_ULT_BAIXA: TDateField;
    mtbAcertoPagarARQ_MORTO: TStringField;
    mtbAcertoPagarTAXA_JUROS: TFloatField;
    mtbAcertoPagarCOD_INDEXADOR: TIntegerField;
    mtbAcertoPagarIDX_DATABASE: TDateField;
    mtbAcertoPagarIDX_COTACAO: TFloatField;
    mtbAcertoPagarIDX_QTDE: TFloatField;
    mtbAcertoPagarNOME: TStringField;
    mtbAcertoPagarSldNominal: TFloatField;
    mtbAcertoPagarJuros_Calculados: TFloatField;
    mtbAcertoPagarAtraso: TIntegerField;
    mtbAcertoReceberJuros: TFloatField;
    mtbAcertoReceberDesconto: TFloatField;
    mtbAcertoReceberVariacao: TFloatField;
    mtbAcertoReceberMultas: TFloatField;
    PCD_ACT_RECEBER: TIBStoredProc;
    PCD_ACT_PAGAR: TIBStoredProc;
    mtbAcertoReceberTotal_Baixar: TFloatField;
    mtbAcertoPagarTotal_Baixar: TFloatField;
    mtbAcertoPagarJUROS: TFloatField;
    mtbAcertoPagarVARIACAO: TFloatField;
    mtbAcertoPagarDESCONTO: TFloatField;
    mtbAcertoPagarMULTAS: TFloatField;
    mtbAcertoReceberold_Juros: TFloatField;
    mtbAcertoReceberold_Multa: TFloatField;
    mtbAcertoReceberold_Variacao: TFloatField;
    mtbAcertoReceberold_desconto: TFloatField;
    mtbAcertoReceberOld_Total_Baixar: TFloatField;
    AcertoReceberSALDO_MOEDA: TFloatField;
    mtbAcertoReceberSALDO_MOEDA: TFloatField;
    mtbAcertoPagarOld_Multa: TFloatField;
    mtbAcertoPagarOld_Juros: TFloatField;
    mtbAcertoPagarOld_Variacao: TFloatField;
    mtbAcertoPagarOld_Desconto: TFloatField;
    mtbAcertoPagarSALDO_MOEDA: TFloatField;
    QryVerCotacao: TIBQuery;
    QryVerCotacaoEXISTE: TIntegerField;
    AcertoReceberVARIACAO: TFloatField;
    AcertoPagarVARIACAO: TFloatField;
    Moeda2: TIBQuery;
    Moeda2CODIGO: TIntegerField;
    Moeda2SIGLA: TIBStringField;
    Moeda2NOME: TIBStringField;
    Moeda2UTILIZA_INDEXADOR: TIBStringField;
    CM2_FATURAMENTOS: TIBQuery;
    CM2_FATURAMENTOSCODIGO: TIntegerField;
    CM2_FATURAMENTOSNOME_RAZAO: TIBStringField;
    CM2_FATURAMENTOSTOTAL: TFloatField;
    CM2_FATURAMENTOSDESC_ACRES: TFloatField;
    CM2_FATURAMENTOSNATUREZA: TIntegerField;
    CM2_FATURAMENTOSCNPJ: TIBStringField;
    CM2_COMISSAO_PARC: TIBDataset;
    CM2_COMISSAO_PARCCNPJ: TIBStringField;
    CM2_COMISSAO_PARCCODIGO: TIntegerField;
    CM2_COMISSAO_PARCCOD_VENDA: TIntegerField;
    CM2_COMISSAO_PARCCOD_PESSOA: TIntegerField;
    CM2_COMISSAO_PARCCOD_RECEBER: TIntegerField;
    CM2_COMISSAO_PARCCOD_PAGAR: TIntegerField;
    CM2_COMISSAO_PARCVALOR: TFloatField;
    CM2_COMISSAO_PARCCM_PCT: TFloatField;
    CM2_COMISSAO_PARCDT_GERACAO: TDateField;
    CM2_COMISSAO_PARCSTATUS: TIBStringField;
    CM2_COMISSAO_PARCCOD_BX_RECEBER: TIntegerField;
    CM2_COMISSAO_PARCCOD_BX_PAGAR: TIntegerField;
    CM2_FATURAMENTOSTOTAL_LIQUIDO: TFloatField;
    CM2_FATURAMENTOSLUCRO_FATURAMENTO: TFloatField;
    CM2_FATURAMENTOSCOM_FATURAMENTO: TFloatField;
    CM2_FAT_ITENS: TIBDataSet;
    CM2_FAT_ITENSSEQUENCIA: TSmallintField;
    CM2_FAT_ITENSPRODUTO: TIBStringField;
    CM2_FAT_ITENSNOME: TIBStringField;
    CM2_FAT_ITENSPRC_UNITARIO: TFloatField;
    CM2_FAT_ITENSCUSTO_MEDIO: TFloatField;
    CM2_FAT_ITENSQUANTIDADE: TFloatField;
    CM2_FAT_ITENSDESP_OP: TFloatField;
    CM2_FAT_ITENSCUSTO_ITEM: TFloatField;
    CM2_FAT_ITENSLUCRO_UNITARIO: TFloatField;
    CM2_FAT_ITENSLUCRO_BRUTO: TFloatField;
    CM2_FAT_ITENSLUCRO_LIQUIDO: TFloatField;
    CM2_FAT_ITENSCOMISSAO_ITEM: TFloatField;
    CM2_FAT_ITENSCODIGO: TIntegerField;
    CM2_FAT_ITENS_AGENTES: TIBQuery;
    CM2_FAT_ITENS_AGENTESNOME_RAZAO: TIBStringField;
    CM2_FAT_ITENS_AGENTESCPF_CGC: TIBStringField;
    CM2_FAT_ITENS_AGENTESCNPJ: TIBStringField;
    CM2_FAT_ITENS_AGENTESCODIGO: TIntegerField;
    CM2_FAT_ITENS_AGENTESCOD_ITEM: TIntegerField;
    CM2_FAT_ITENS_AGENTESPRODUTO: TIBStringField;
    CM2_FAT_ITENS_AGENTESSEQUENCIA: TIntegerField;
    CM2_FAT_ITENS_AGENTESPESSOA_FJ: TIntegerField;
    CM2_FAT_ITENS_AGENTESPERCENTUAL: TFloatField;
    dsLinkAgentes: TDataSource;
    CM2_FAT_ITENSCNPJ: TIBStringField;
    CM2_FAT_ITENS_AGENTESCOMISSAO_ITEM: TFloatField;
    CM2_COMISSAO_PARCDT_FATURAMENTO: TDateField;
    CM2_COMISSAO_PARCDT_CX_FATURAMENTO: TDateTimeField;
    CM2_COMISSAO_PARCCLIENTE: TIBStringField;
    CM2_COMISSAO_PARCCOD_FORMA: TIntegerField;
    CM2_COMISSAO_PARCFORMA_PGTO: TIBStringField;
    CM2_COMISSAO_PARCAGENTE: TIBStringField;
    CM2_COMISSAO_PARCCFOP: TIBStringField;
    CM2_COMISSAO_PARCSELECIONADO: TIBStringField;
    QryQuitarComissoes: TIBQuery;
    QryQuitarComissoesCNPJ: TIBStringField;
    QryQuitarComissoesCODIGO: TIntegerField;
    QryQuitarComissoesVALOR: TFloatField;
    QryQuitarComissoesDT_GERACAO: TDateField;
    QryQuitarComissoesSTATUS: TIBStringField;
    QryQuitarComissoesAGENTE: TIBStringField;
    PCD_CM2_QUITAR_COMISSAO: TIBStoredProc;
    ACT_GERA_ACERTO: TIBDataSet;
    ACT_GERA_ACERTOCNPJ: TIBStringField;
    ACT_GERA_ACERTOCODIGO: TIntegerField;
    ACT_GERA_ACERTODATA: TDateField;
    ACT_GERA_ACERTODATA_CX: TDateField;
    ACT_GERA_ACERTOHISTORICO: TIBStringField;
    ACT_GERA_ACERTOUSUARIO: TIntegerField;
    ACT_GERA_ACERTOTIPO_ACERTO: TIntegerField;
    ACT_GERA_ACERTOVALOR_PAGAR: TFloatField;
    ACT_GERA_ACERTOVALOR_RECEBER: TFloatField;
    ACT_CFG_TITULO: TIBDataSet;
    ACT_CFG_TITULOCNPJ: TIBStringField;
    ACT_CFG_TITULOCODIGO: TIntegerField;
    ACT_CFG_TITULODATAINICIOVARIACAO: TDateField;
    ACT_CFG_TITULODATAFIMVARIACAO: TDateField;
    ACT_CFG_TITULOCOD_INDEXADOR: TIntegerField;
    ACT_CFG_TITULOQUANTIDADEINDEXADOR: TFloatField;
    ACT_CFG_TITULOJUROSIMPLES: TSmallintField;
    ACT_CFG_TITULOTAXAMULTA: TFloatField;
    ACT_CFG_TITULOCARENCIAMULTA: TIntegerField;
    ACT_CFG_TITULOTIPODESCONTO: TIntegerField;
    ACT_CFG_TITULOPERCDESCONTOANTECIPADO: TFloatField;
    ACT_CFG_TITULOPERCDESCONTOPONTUALIDADE: TFloatField;
    ACT_CFG_TITULOCOD_JURO_POS_FIXADO: TIntegerField;
    ACT_CFG_TITULODATAINICIOJUROS: TDateField;
    ACT_CFG_TITULOCARENCIAJUROS: TSmallintField;
    ACT_CFG_TITULOTAXARISCO: TFloatField;
    ACT_CFG_TITULOTAXAJUROS: TFloatField;
    ACT_CFG_TITULOVIGENCIA: TSmallintField;
    ACT_TITULO_GERADO: TIBDataSet;
    ACT_TITULO_GERADOCNPJ: TIBStringField;
    ACT_TITULO_GERADOCODIGO: TIntegerField;
    ACT_TITULO_GERADOCOD_ACERTOCONTA: TIntegerField;
    ACT_TITULO_GERADOCOD_RECEBER: TIntegerField;
    ACT_TITULO_GERADOCOD_PAGAR: TIntegerField;
    ACT_GERA_ACERTOPESSOA_RECIBO: TIntegerField;
    ChequeRec: TIBDataSet;
    ChequeRecCNPJ: TIBStringField;
    ChequeRecAGENCIA: TIBStringField;
    ChequeRecBANCO: TIBStringField;
    ChequeRecCHEQUE: TIBStringField;
    ChequeRecCONCILIADO: TIBStringField;
    ChequeRecCONTA: TIBStringField;
    ChequeRecEMISSAO: TDateTimeField;
    ChequeRecHISTORICO: TIBStringField;
    ChequeRecPESSOA_FJ: TIntegerField;
    ChequeRecPRE_DATE: TDateTimeField;
    ChequeRecVALOR: TFloatField;
    ChequeRecVENDA: TIntegerField;
    ChequeRecNOME: TIBStringField;
    ChequeRecDATA_CONCILIACAO: TDateTimeField;
    ChequeRecJUROS: TFloatField;
    ChequeRecMOEDA1: TFloatField;
    ChequeRecMOEDA2: TFloatField;
    ChequeRecTIPO: TIBStringField;
    ChequeRecDATA_ACERTO: TDateTimeField;
    ChequeRecDATA_CAIXA: TDateTimeField;
    ChequeRecUSUARIO: TIntegerField;
    ChequeRecDIGITO_AGENCIA: TIBStringField;
    ChequeRecDIGITO_CONTA: TIBStringField;
    ChequeRecDIGITO_CHEQUE: TIBStringField;
    ChequeRecORIGEM: TIBStringField;
    ChequeRecTURNO: TIntegerField;
    ChequeRecTROCA: TIntegerField;
    qryPromissoriasVD_CF: TIBStringField;
    QryActEstorno: TIBQuery;
    QryActEstornoCNPJ: TIBStringField;
    QryActEstornoCODIGO: TIntegerField;
    QryActEstornoDATA: TDateField;
    QryActEstornoDATA_CX: TDateField;
    QryActEstornoHISTORICO: TIBStringField;
    QryActEstornoCOD_USUARIO: TIntegerField;
    QryActEstornoVALOR_PAGAR: TFloatField;
    QryActEstornoVALOR_RECEBER: TFloatField;
    QryActEstornoCOD_PARCEIRO_RECIBO: TIntegerField;
    QryActEstornoUSUARIO: TIBStringField;
    QryActEstornoNOME_RAZAO: TIBStringField;
    QryActEstornoSALDO: TFloatField;
    QryActEstRecebida: TIBQuery;
    QryActEstRecebidaCODIGO: TIntegerField;
    QryActEstRecebidaANO: TIntegerField;
    QryActEstRecebidaCODIGO_CR: TIntegerField;
    QryActEstRecebidaANO_CR: TIntegerField;
    QryActEstRecebidaPESSOA_FJ: TIntegerField;
    QryActEstRecebidaDT_BAIXA: TDateField;
    QryActEstRecebidaDT_EMISSAO: TDateField;
    QryActEstRecebidaDT_VENCTO: TDateField;
    QryActEstRecebidaDT_LANCTO: TDateField;
    QryActEstRecebidaDOCTO: TIBStringField;
    QryActEstRecebidaPARCELA: TIBStringField;
    QryActEstRecebidaHISTORICO: TIBStringField;
    QryActEstRecebidaHISTORICO_BX: TIBStringField;
    QryActEstRecebidaVALOR: TIBBCDField;
    QryActEstRecebidaVLR_BAIXA: TIBBCDField;
    QryActEstRecebidaDESCONTOS: TIBBCDField;
    QryActEstRecebidaVLR_PARCIAL: TIBBCDField;
    QryActEstRecebidaJUROS: TIBBCDField;
    QryActEstRecebidaJUROS_REC: TIBBCDField;
    QryActEstRecebidaDESCONTOS_REC: TIBBCDField;
    QryActEstRecebidaTAXA_JUROS: TIBBCDField;
    QryActEstRecebidaORIGEM: TIBStringField;
    QryActEstRecebidaCODIGO_VN: TIntegerField;
    QryActEstRecebidaPLANILHA: TIntegerField;
    QryActEstRecebidaANO_VN: TIntegerField;
    QryActEstRecebidaAVISO: TIntegerField;
    QryActEstRecebidaDT_AVISO: TDateField;
    QryActEstRecebidaNOME: TIBStringField;
    QryActEstRecebidaENDERECO: TIBStringField;
    QryActEstRecebidaNUMERO: TIBStringField;
    QryActEstRecebidaCIDADE: TIBStringField;
    QryActEstRecebidaBAIRRO: TIBStringField;
    QryActEstRecebidaCEP: TIBStringField;
    QryActEstRecebidaUF: TIBStringField;
    QryActEstRecebidaCOD_END: TIntegerField;
    QryActEstRecebidaCOD_CID: TIntegerField;
    QryActEstRecebidaCOD_BAI: TIntegerField;
    QryActEstRecebidaFONE: TIBStringField;
    QryActEstRecebidaCPF_CGC: TIBStringField;
    QryActEstRecebidaNUMBOLETO: TIntegerField;
    QryActEstRecebidaFATURA: TIntegerField;
    QryActEstRecebidaNUMDUPLICATA: TIntegerField;
    QryActEstRecebidaTURNO: TIntegerField;
    QryActEstRecebidaLOCAL: TIBStringField;
    QryActEstRecebidaCOD_INDEXADOR: TIntegerField;
    QryActEstRecebidaIDX_DATABASE: TDateField;
    QryActEstRecebidaIDX_COTACAO: TIBBCDField;
    QryActEstRecebidaIDX_QTDE: TIBBCDField;
    QryActEstRecebidaTIPO_JUROS: TIBStringField;
    QryActEstRecebidaBOLETO: TIBStringField;
    QryActEstPagas: TIBQuery;
    QryActEstPagasCODIGO: TIntegerField;
    QryActEstPagasANO: TIntegerField;
    QryActEstPagasCODIGO_PGR: TIntegerField;
    QryActEstPagasANO_PG: TIntegerField;
    QryActEstPagasPESSOA_FJ: TIntegerField;
    QryActEstPagasDT_BAIXA: TDateField;
    QryActEstPagasDT_EMISSAO: TDateField;
    QryActEstPagasDT_VENCTO: TDateField;
    QryActEstPagasDT_LANCTO: TDateField;
    QryActEstPagasDOCTO: TIBStringField;
    QryActEstPagasPARCELA: TIBStringField;
    QryActEstPagasHISTORICO: TIBStringField;
    QryActEstPagasHISTORICO_BX: TIBStringField;
    QryActEstPagasVALOR: TIBBCDField;
    QryActEstPagasVLR_BAIXA: TIBBCDField;
    QryActEstPagasDESCONTOS: TIBBCDField;
    QryActEstPagasVLR_PARCIAL: TIBBCDField;
    QryActEstPagasJUROS: TIBBCDField;
    QryActEstPagasJUROS_PAG: TIBBCDField;
    QryActEstPagasDESCONTOS_PG: TIBBCDField;
    QryActEstPagasTAXA_JUROS: TIBBCDField;
    QryActEstPagasTIPO_JUROS: TIBStringField;
    QryActEstPagasORIGEM: TIBStringField;
    QryActEstPagasCODIGO_VN: TIntegerField;
    QryActEstPagasPLANILHA: TIntegerField;
    QryActEstPagasANO_VN: TIntegerField;
    QryActEstPagasAVISO: TIntegerField;
    QryActEstPagasDT_AVISO: TDateField;
    QryActEstPagasNOME: TIBStringField;
    QryActEstPagasENDERECO: TIBStringField;
    QryActEstPagasNUMERO: TIBStringField;
    QryActEstPagasCIDADE: TIBStringField;
    QryActEstPagasBAIRRO: TIBStringField;
    QryActEstPagasCEP: TIBStringField;
    QryActEstPagasUF: TIBStringField;
    QryActEstPagasCOD_END: TIntegerField;
    QryActEstPagasCOD_CID: TIntegerField;
    QryActEstPagasCOD_BAI: TIntegerField;
    QryActEstPagasFONE: TIBStringField;
    QryActEstPagasCPF_CGC: TIBStringField;
    QryActEstPagasNUMBOLETO: TIntegerField;
    QryActEstPagasFATURA: TIntegerField;
    QryActEstPagasNUMDUPLICATA: TIntegerField;
    QryActEstPagasTURNO: TIntegerField;
    QryActEstPagasLOCAL: TIBStringField;
    QryActEstPagasCOD_INDEXADOR: TIntegerField;
    QryActEstPagasIDX_DATABASE: TDateField;
    QryActEstPagasIDX_COTACAO: TIBBCDField;
    QryActEstPagasIDX_QTDE: TIBBCDField;
    QryActEstGeradas: TIBQuery;
    QryActEstGeradasCNPJ: TIBStringField;
    QryActEstGeradasBLT_NOSSO_NUM: TIBStringField;
    QryActEstGeradasCODIGO: TIntegerField;
    QryActEstGeradasANO: TSmallintField;
    QryActEstGeradasPESSOA_FJ: TIntegerField;
    QryActEstGeradasDT_EMISSAO: TDateTimeField;
    QryActEstGeradasDT_VENCTO: TDateTimeField;
    QryActEstGeradasDT_LANCTO: TDateTimeField;
    QryActEstGeradasDOCTO: TIBStringField;
    QryActEstGeradasPARCELA: TIBStringField;
    QryActEstGeradasHISTORICO: TIBStringField;
    QryActEstGeradasVALOR: TFloatField;
    QryActEstGeradasVLR_PARCIAL: TFloatField;
    QryActEstGeradasJUROS_REC: TFloatField;
    QryActEstGeradasDESCONTOS: TFloatField;
    QryActEstGeradasBOLETO: TIBStringField;
    QryActEstGeradasORIGEM: TIBStringField;
    QryActEstGeradasCODIGO_VN: TIntegerField;
    QryActEstGeradasANO_VN: TSmallintField;
    QryActEstGeradasAVISO: TIntegerField;
    QryActEstGeradasDT_AVISO: TDateTimeField;
    QryActEstGeradasSELECIONADO: TIBStringField;
    QryActEstGeradasFATURA: TIntegerField;
    QryActEstGeradasTIPO_DOCTO: TIBStringField;
    QryActEstGeradasNUMBOLETO: TIntegerField;
    QryActEstGeradasNUMDUPLICATA: TIntegerField;
    QryActEstGeradasNOME: TIBStringField;
    QryActEstGeradasDATA_ULT_BAIXA: TDateTimeField;
    QryActEstGeradasFLUXO_CAIXA: TDateTimeField;
    QryActEstGeradasLOCAL_COBRANCA: TIntegerField;
    QryActEstGeradasCOD_INDEXADOR: TIntegerField;
    QryActEstGeradasIDX_DATABASE: TDateField;
    QryActEstGeradasIDX_COTACAO: TFloatField;
    QryActEstGeradasIDX_QTDE: TFloatField;
    QryActEstGeradasARQUIVO_MORTO: TIBStringField;
    QryActEstGeradasCOD_CONFIG_TITULO: TIntegerField;
    QryActEstTGerados: TIBQuery;
    QryActEstTGeradosCODIGO: TIntegerField;
    QryActEstTGeradosPARCELA: TIBStringField;
    QryActEstTGeradosQTDE_MOEDA: TIBBCDField;
    QryActEstTGeradosVALOR: TIBBCDField;
    QryActEstTGeradosNOME_RAZAO: TIBStringField;
    QryActEstTGeradosCPF_CNPJ: TIBStringField;
    QryActEstTGeradosDT_VENCTO: TDateField;
    QryActEstTGeradosTIPO: TIBStringField;
    QryActEstTGeradosSTATUS: TIBStringField;
    QryActEstChGerados: TIBQuery;
    QryActEstChGeradosAGENCIA: TIBStringField;
    QryActEstChGeradosBANCO: TIBStringField;
    QryActEstChGeradosCHEQUE: TIBStringField;
    QryActEstChGeradosHISTORICO: TIBStringField;
    QryActEstChGeradosCONTA: TIBStringField;
    QryActEstChGeradosPRE_DATE: TDateTimeField;
    QryActEstChGeradosPESSOA_FJ: TIntegerField;
    QryActEstChGeradosNOME_RAZAO: TIBStringField;
    QryActEstChGeradosTIPO: TIBStringField;
    QryActEstMvtGerados: TIBQuery;
    QryActEstMvtGeradosCONTA: TIntegerField;
    QryActEstMvtGeradosBANCO: TIBStringField;
    QryActEstMvtGeradosCOD_DOC: TIBStringField;
    QryActEstMvtGeradosDATA: TDateTimeField;
    QryActEstMvtGeradosHISTORICO: TIBStringField;
    QryActEstMvtGeradosVALOR: TFloatField;
    QryActEstMvtGeradosTIPO: TIBStringField;
    QryActEstMvtGeradosNOME_BANCO: TIBStringField;
    QryActEstChGeradosNOME_BANCO: TIBStringField;
    QryActEstMvtGeradosCODIGO: TIntegerField;
    QryActEstChGeradosVALOR: TFloatField;
    EstornaAcertoContas: TIBStoredProc;
    QryActEstornoTIPO_ACERTO: TIBStringField;
    QryFluxoCaixa: TIBQuery;
    QryFluxoCaixaDATA: TDateField;
    QryFluxoCaixaTT_RECEBER_EFETIVO: TFloatField;
    QryFluxoCaixaTT_RECEBER_PREVISO: TFloatField;
    QryFluxoCaixaTT_PAGAR_EFETIVO: TFloatField;
    QryFluxoCaixaTT_PAGAR_PREVISTO: TFloatField;
    QryFluxoCaixaTT_SALDO_PREVISTO: TFloatField;
    QryFluxoCaixaTT_SALDO_EFETIVO: TFloatField;
    QryFlxRecPrevistas: TIBQuery;
    QryFlxRecPrevistasCODIGO: TIntegerField;
    QryFlxRecPrevistasDT_EMISSAO: TDateTimeField;
    QryFlxRecPrevistasDT_VENCTO: TDateTimeField;
    QryFlxRecPrevistasVALOR: TFloatField;
    QryFluxoCaixaE_CNPJ: TIBStringField;
    QryFlxRecPrevistasPARCEIRO: TIBStringField;
    QryFlxRecPrevistasTIPO: TIBStringField;
    QryFlxRecEfetivo: TIBQuery;
    QryFlxRecEfetivoCODIGO: TIntegerField;
    QryFlxRecEfetivoPARCEIRO: TIBStringField;
    QryFlxRecEfetivoDT_EMISSAO: TDateTimeField;
    QryFlxRecEfetivoDT_VENCTO: TDateTimeField;
    QryFlxRecEfetivoVALOR: TFloatField;
    QryFlxRecEfetivoTIPO: TIBStringField;
    QryFlxPagarPrevistas: TIBQuery;
    QryFlxPagarEfetivo: TIBQuery;
    QryFlxPagarPrevistasCODIGO: TIntegerField;
    QryFlxPagarPrevistasPARCEIRO: TIBStringField;
    QryFlxPagarPrevistasDT_EMISSAO: TDateTimeField;
    QryFlxPagarPrevistasDT_VENCTO: TDateTimeField;
    QryFlxPagarPrevistasVALOR: TFloatField;
    QryFlxPagarPrevistasTIPO: TIBStringField;
    QryFlxPagarEfetivoCODIGO: TIntegerField;
    QryFlxPagarEfetivoPARCEIRO: TIBStringField;
    QryFlxPagarEfetivoDT_EMISSAO: TDateTimeField;
    QryFlxPagarEfetivoDT_VENCTO: TDateTimeField;
    QryFlxPagarEfetivoTIPO: TIBStringField;
    QryFlxPagarEfetivoVALOR: TFloatField;
    QryFluxoCaixaSALDO_CAIXAS: TFloatField;
    QryFluxoCaixaSALDO_CONTAS: TFloatField;
    QryFluxoCaixaSALDO_INICIAL: TFloatField;
    mtbAcertoPagarOld_Total_Baixar: TFloatField;
    CotacoesVALOR: TFloatField;
    PCD_ESTORNA_PAGAR2: TIBStoredProc;
    CM2_COMISSAO_PARCNUM_NF: TIntegerField;
    CM2_COMISSAO_PARCTOTAL_PROVISIONADO: TFloatField;
    CM2_COMISSAO_PARCSALDO_COMISSAO: TFloatField;
    FolhaPagto: TIBDataSet;
    FolhaPagtoCNPJ: TIBStringField;
    FolhaPagtoCODIGO: TIntegerField;
    FolhaPagtoPESSOA_FJ: TIntegerField;
    FolhaPagtoDT_VENCTO: TDateField;
    FolhaPagtoDT_EMISSAO: TDateField;
    FolhaPagtoNDOCTO: TIBStringField;
    FolhaPagtoVALOR: TFloatField;
    FolhaPagtoPARCELA: TIBStringField;
    FolhaPagtoHISTORICO: TIBStringField;
    FolhaPagtoTIPO: TIBStringField;
    FolhaPagtoTIPO_MOVTO: TIntegerField;
    FolhaPagtoNOME: TIBStringField;
    TipoMovtoFolha: TIBDataSet;
    TipoMovtoFolhaCNPJ: TIBStringField;
    TipoMovtoFolhaCODIGO: TIntegerField;
    TipoMovtoFolhaDESCRICAO: TIBStringField;
    Impressora: TRDprint;
    procedure qryManBoletosBeforeOpen(DataSet: TDataSet);
    procedure qryManBoletosCalcFields(DataSet: TDataSet);
    procedure COM_PERFILBeforePost(DataSet: TDataSet);
    procedure COM_PERFILNewRecord(DataSet: TDataSet);
    procedure COM_PERFIL_FAIXANewRecord(DataSet: TDataSet);
    procedure CM_PERFIL_FAIXA_DESCNewRecord(DataSet: TDataSet);
    procedure CM_PERFIL_FAIXA_PRODNewRecord(DataSet: TDataSet);
    procedure COM_PERFILBASE_CALCGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure COM_PERFILBASE_CALCSetText(Sender: TField;
      const Text: String);
    procedure CM_COMISSAONewRecord(DataSet: TDataSet);
    procedure CM_PERFIL_PAGTO_FAIXANewRecord(DataSet: TDataSet);
    procedure CM_PERFIL_PAGTONewRecord(DataSet: TDataSet);
    procedure CM_PERFIL_FAIXA_DESCBeforePost(DataSet: TDataSet);
    procedure CM_PERFIL_PAGTO_FAIXABeforePost(DataSet: TDataSet);
    procedure ComissoesAfterOpen(DataSet: TDataSet);
    procedure CM_PERFIL_PAGTOBeforePost(DataSet: TDataSet);
    procedure qryBxReceberCalcFields(DataSet: TDataSet);
    procedure SelVendedorCalcFields(DataSet: TDataSet);
    procedure qryPromissoriasCalcFields(DataSet: TDataSet);
    procedure qryVerChequeLMTCalcFields(DataSet: TDataSet);
    procedure qryVerReceberLMTBeforeOpen(DataSet: TDataSet);
    procedure OnCalcDataSetReceber(DataSet: TDataSet);
    procedure RecibosAfterInsert(DataSet: TDataSet);
    procedure RecibosBeforeOpen(DataSet: TDataSet);
    procedure CotacoesNewRecord(DataSet: TDataSet);
    procedure AcertoReceberCalcFields(DataSet: TDataSet);
    procedure AcertoPagarCalcFields(DataSet: TDataSet);
    procedure mtbAcertoReceberJurosValidate(Sender: TField);
    procedure mtbAcertoReceberJurosChange(Sender: TField);
    procedure mtbAcertoReceberTotal_BaixarValidate(Sender: TField);
    procedure mtbAcertoPagarTotal_BaixarValidate(Sender: TField);
    procedure mtbAcertoPagarJUROSValidate(Sender: TField);
    procedure mtbAcertoPagarJUROSChange(Sender: TField);
    procedure CM2_COMISSAO_PARCBeforeOpen(DataSet: TDataSet);
    procedure mtbAcertoReceberSELECIONADOValidate(Sender: TField);
    procedure CM2_COMISSAO_PARCSTATUSGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FolhaPagtoPESSOA_FJValidate(Sender: TField);
    procedure FolhaPagtoTIPOValidate(Sender: TField);
    procedure FolhaPagtoBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure VerificaIntervalo(inicial,final : real);

  public
    { Public declarations }
    ReceberTotal_Selecionado, PagarTotal_Selecionado: Real;
    procedure ReceberDuplicata;
    Procedure Baixa_Receber(Codigo: Integer; Ano: Integer; Documento: String; Historico: String; Data_Baixa: TDateTime; Valor: Real; Juros: Real; Desconto: Real; Usuario: Integer; Cliente: Integer; Dinheiro: Real; Cheque: Real; Cartao:Real; Conta: Integer; Turno: Integer; Banco: Integer );

    Procedure Baixa_Receber_Selecao_ADM(Tipo: String; Cliente: Integer; Historico: String;Data_Ini: TDateTime; Data_Fim: TDateTime; Total: Real; Juros: Real; Desconto: Real; Usuario: Integer; Dinheiro, Cheque, Cartao: Real; Conta: Integer; Turno:Integer; Banco: Integer;Nome:string);
    Procedure Baixa_Receber_Selecao_Loja1 (Tipo: String; Cliente: Integer; Historico: String; Data_Baixa: TDateTime; Data_Ini: TDateTime; Data_Fim: TDateTime; Usuario: Integer; Dinheiro, Cheque, Cartao: Real; Conta: Integer; Turno:Integer; Banco: Integer; Desconto, Juros :Real; DIF_JUROS:Real;Docto: String;Troco:Real=0);
    Procedure Extorna_Receber_Integral(Codigo: Integer; Ano: Integer; Valor :Real);
    Procedure Extorna_Receber_Parcial(Codigo: Integer; Ano: Integer);
    Procedure Seleciona_Receber_Loja (Codigo: Integer; Ano: Integer; Selecionado: String; Valor, Juros: Real);
    Procedure Baixa_Receber_Convenios(Cliente: Integer; Historico: String; Data_Baixa: TDateTime; Data_Ini: TDateTime; Data_Fim: TDateTime; Total: Real; Juros: Real; Desconto: Real; Usuario: Integer; Dinheiro, Cheque, Cartao: Real; Conta: Integer; Turno: Integer; Banco: Integer );
    Procedure Seleciona_Cartao(Codigo: Integer;Selecionado: String);
    function VerificaReceber(codigo,pessoa_fj : integer):integer;//verifica dependencias relacionas a Ct. Receber
    function VerificaPagar(codigo,pessoa_fj : integer):integer;//verifica dependencias relacionas a Ct. Pagar
    Procedure Baixa_PAGAR(Codigo: Integer; Ano: Integer; Documento: String; Historico: String; Data_Baixa: TDateTime; Valor: Real; Juros: Real; Desconto: Real ; Usuario: Integer; Conta: Integer; Turno:Integer; BAnco: Integer; Cheque: Real; Fornecedor: Integer; Nome: String);
    function  Baixa_PAGAR_SELECAO(Tipo: String; Cliente: Integer; Historico: String; Data_Baixa: TDateTime; Data_Ini: TDateTime; Data_Fim: TDateTime; Total: Real; Juros: Real; Desconto: Real; Usuario: Integer; CONTA: INTEGER; Cheque: Real; Banco: String; Turno: Integer; Conta_Banco: Integer; Caixa :String; Nome: String; PctDesconto: Real=0): Integer ;
    procedure ImprimeReciboAcerto(Acerto: Integer);
  end;

var
  dmFinanceiro2: TdmFinanceiro2;

implementation

uses Application_DM, Funcoes, Procedures3_DM, Cheque_Financeiro_Form,
  Vendas_Dm, Procedures_DM, Procedures2_DM, Financeiro_Dm,
  Baixa_Receber_Multiplos_Parc_Form, SerieCustomizaveis_DM, Cartao_Venda_Form, Receber_Form,
  Relatorios_DM2, Cadastros_DM, SeriesCustomizaveis, Cheque_Contabilidade,
  Cadastros_Dm2, Act_Contas_Form, ConfiguraDuplicata_Form, Localizar_Conta,
  Plano_DM;

{$R *.DFM}

Procedure TDmFinanceiro2.Baixa_PAGAR(Codigo: Integer; Ano: Integer; Documento: String; Historico: String;
                                    Data_Baixa: TDateTime; Valor: Real; Juros: Real; Desconto: Real;
                                    Usuario: Integer; Conta: Integer; Turno: Integer; Banco: Integer;Cheque: Real; Fornecedor: Integer; Nome: String);
Var
   Planilha: Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        if (DmApp.EXIBE_ACERTO = 'S') then
          Planilha := DMApp.GerarCodigo('ACERTO',0 ) + 1
        else
          Planilha := DMApp.GerarCodigo('PLANILHA', 1);

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs = Nil Then
           DMProcs := TDMProcs.Create(Self);
        //
        DMProcs.Baixa_PAGAR.ParamByName('CNPJ').asString         := DmApp.Cnpj ;
        DMProcs.Baixa_PAGAR.ParamByName('CODPAG').asInteger      := Codigo     ;
        DMProcs.Baixa_PAGAR.ParamByName('ANOPAG').asInteger      := Ano        ;
        DMProcs.Baixa_PAGAR.ParamByName('HISTORICOBX').asString  := copy(Historico,1,100)  ;
        DMProcs.Baixa_PAGAR.ParamByName('USUARIO').asInteger     := Usuario    ;
        DMProcs.Baixa_PAGAR.ParamByName('DATA_BAIXA').asDate     := Data_Baixa ;
        DMProcs.Baixa_PAGAR.ParamByName('VALOR_BX').asFloat      := Valor      ;
        DMProcs.Baixa_PAGAR.ParamByName('JUROS').asFloat         := Juros      ;
        DMProcs.Baixa_PAGAR.ParamByName('DESCONTO').asFloat      := Desconto   ;
        DMProcs.Baixa_PAGAR.ParamByName('PLANILHA').asInteger    := Planilha   ;
        DMProcs.Baixa_PAGAR.ParamByName('CONTA'   ).asInteger    := Conta      ;
        DMProcs.Baixa_PAGAR.ParamByName('TURNO'   ).asInteger    := Turno      ;
        DMProcs.Baixa_PAGAR.ParamByName('BANCO'   ).asInteger    := Banco      ;
        DMProcs.Baixa_PAGAR.ExecProc;

        IF Arredonda(cheque,2) > 0 THEN
        BEGIN
          FrmCheque_Contabilidade := TFrmCheque_Contabilidade.create(Self);
          FrmCheque_Contabilidade.TotalDesdobrar := Arredonda(Cheque,2);
          FrmCheque_Contabilidade.Planilha := Planilha;
          FrmCheque_Contabilidade.SetFornecedor(Fornecedor);
          FrmCheque_Contabilidade.SetNome(nome);
          FrmCheque_Contabilidade.Data_Caixa := Data_Baixa;
          FrmCheque_Contabilidade.Usuario := Usuario;
          FrmCheque_Contabilidade.Conta := Conta ;
          FrmCheque_Contabilidade.Origem := 'PGR';
          FrmCheque_Contabilidade.Historico := historico;

          FrmCheque_Contabilidade.ShowModal;

          FrmCheque_Contabilidade.Free ;
          FrmCheque_Contabilidade := Nil ;
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

           If DmaPP.TransactionProc.InTransaction then
               DmApp.TransactionProc.Rollback ;
     end;
end;

Function TDmFinanceiro2.Baixa_PAGAR_SELECAO (Tipo: String; Cliente: Integer; Historico: String; Data_Baixa: TDateTime; Data_Ini: TDateTime; Data_Fim: TDateTime;
                                                     Total: Real; Juros: Real; Desconto: Real; Usuario: Integer; CONTA: INTEGER; Cheque: Real; Banco: String; Turno: Integer;
                                                      Conta_Banco: Integer; Caixa :String; Nome: String; PctDesconto: Real=0): Integer ;
Var
   Planilha: Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
          DmaPP.TransactionProc.StartTransaction ;

        if (DmApp.EXIBE_ACERTO = 'S') then
          Planilha := DMApp.GerarCodigo('ACERTO',0 ) + 1
        else
          Planilha := DMApp.GerarCodigo('PLANILHA', 1);

        if (Conta_Banco > 0) then
            Conta := Conta_Banco;

        DMProcs.Baixa_PAGAR_Selecao.ParamByName('CNPJ').asString         := DmApp.Cnpj ;      
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('TIPO').asString         := Tipo       ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('CLIENTE').asInteger     := Cliente    ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('HISTORICOBX').asString  := copy(Historico,1,100)  ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('USUARIO'   ).asInteger  := Usuario    ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('DATA_BAIXA').asDate     := Data_Baixa ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('DATA_INICIAL').asDate   := Data_Ini   ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('DATA_FINAL').asDate     := Data_Fim   ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('TOTAL').asFloat         := TOTAL      ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('JUROS').asFloat         := Juros      ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('DESCONTO').asFloat      := Desconto   ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('PLANILHA').asInteger    := Planilha   ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('CONTA'   ).asInteger    := Conta      ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('CHEQUE'  ).asFloat    := Cheque     ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('BANCO'   ).asString     := copy(Banco,1,3);
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('TURNO'   ).asInteger    := Turno      ;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('CONTA_BANCO').asInteger := Conta_Banco;
        DMProcs.Baixa_PAGAR_Selecao.ParamByName('CAIXA').Value := copy(Caixa,1,1);
        DMProcs.Baixa_PAGAR_Selecao.ExecProc;

        IF Arredonda(cheque,2) > 0 THEN
        BEGIN
          FrmCheque_Contabilidade := TFrmCheque_Contabilidade.create(Self);
          FrmCheque_Contabilidade.TotalDesdobrar := Arredonda(Cheque,2);
          FrmCheque_Contabilidade.Planilha := Planilha;
          FrmCheque_Contabilidade.SetFornecedor(cliente);
          FrmCheque_Contabilidade.SetNome(nome);
          FrmCheque_Contabilidade.Data_Caixa := Data_Baixa;
          FrmCheque_Contabilidade.Usuario := Usuario;
          FrmCheque_Contabilidade.Conta := Conta ;
          FrmCheque_Contabilidade.Origem := 'PGR';
          FrmCheque_Contabilidade.Historico := copy(Historico,1,100);

          FrmCheque_Contabilidade.ShowModal;

          FrmCheque_Contabilidade.Free ;
          FrmCheque_Contabilidade := Nil ;
        END;

        DmApp.TransactionProc.Commit ;
        result := Planilha ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;

procedure TDmFinanceiro2.ReceberDuplicata;
//Vencimento: TDateTime;
//NumDuplicata : Integer;
//DATA: TDateTime;
//Documento : String   ;
//VALOR     : REAL     ;
//RAZAO     : String   ;
//DOCUMENTOS: String   ;
//ENDERECO  : String   ;
//CEP       : String   ;
//NOMEBAIRRO: String   ;
//NOMECIDADE: String   ;
//UF        : String   ) ;
Var
   Documentos: String;
begin
     //Dados do Cliente
     dmFinanceiro.VerPessoa ( dmFinanceiro.Contas_ReceberPESSOA_FJ.Value );

     If dmFinanceiro.Contas_ReceberNUMDUPLICATA.Value <= 0
     then begin
          dmFinanceiro.Contas_Receber.Edit ;
          dmFinanceiro.Contas_ReceberNUMDUPLICATA.Value := DmApp.GerarCodigoDpl ;
          dmFinanceiro.Contas_Receber.Post ;
     end;

     Documentos := dmFinanceiro.Ver_PessoaCPF_CGC.VALUE ;

     With DmCadastros2 do
     begin
       Duplicata.Close;
       Duplicata.Open ;
       //Duplicata grafica
       if (DuplicataDPL_GRAFICA.asString = 'S') then
       begin
         if (FrmConfigurarDuplicatas = nil) then
          FrmConfigurarDuplicatas := TFrmConfigurarDuplicatas.Create(Self);

         FrmConfigurarDuplicatas.rptDuplicata.Template.DatabaseSettings.Name := dmapp.cnpj;
         FrmConfigurarDuplicatas.rptDuplicata.Template.LoadFromDatabase;


         SelDuplicatas.Close;
         SelDuplicatas.parambyname('cnpj').value := dmapp.cnpj;
         SelDuplicatas.parambyname('venda').value := dmFinanceiro.Contas_ReceberCODIGO_VN.value;
         SelDuplicatas.parambyname('cod_receber').value := dmFinanceiro.Contas_ReceberCODIGO.value;
         SelDuplicatas.parambyname('pessoa_fj').value := dmFinanceiro.Contas_ReceberPESSOA_FJ.value;
         SelDuplicatas.Open;
         //aqui boy
         FrmConfigurarDuplicatas.rptDuplicata.print;
         FrmConfigurarDuplicatas.Free;
         FrmConfigurarDuplicatas := nil;
         exit;
       end;
     end;

     If Length ( Documentos ) <= 11
     then begin
          Documentos := MascaraCpf ( Documentos );
     end
     else begin
          Documentos := MascaraCnpj ( Documentos );
     end;


     //Rg e Ie
     if trim( dmFinanceiro.Ver_PessoaRG_IE.Value ) <> ''
     then begin
          Documentos := Documentos + ' IE/RG= ' + dmFinanceiro.Ver_PessoaRG_IE.Value ;
     end;


     dmFinanceiro.ImprimeDuplicata (
                    dmFinanceiro.Contas_ReceberDT_VENCTO.value, //Vencimento: TDateTime;
                    dmFinanceiro.Contas_ReceberNUMDUPLICATA.text + ' ' + dmFinanceiro.Contas_ReceberPARCELA.VALUE,// NumDuplicata : String;
                    dmFinanceiro.Contas_ReceberDT_LANCTO.VALUE,//DATA: TDateTime;
                    'REC ' + dmFinanceiro.Contas_ReceberCODIGO.ASSTRING ,//Documento : String   ;
                    dmFinanceiro.Contas_ReceberTotal.VALUE,//VALOR     : REAL     ;
                    dmFinanceiro.Ver_PessoaNOME_RAZAO.VALUE,//RAZAO     : String   ;
                    Documentos,//DOCUMENTOS: String   ;
                    dmFinanceiro.Ver_PessoaENDERECO.VALUE + ' N,' + dmFinanceiro.Ver_PessoaNUMERO.VALUE,//ENDERECO  : String   ;
                    dmFinanceiro.Ver_PessoaCEP.Value,//CEP       : String   ;
                    dmFinanceiro.Ver_PessoaBAIRRO.Value,//NOMEBAIRRO: String   ;
                    dmFinanceiro.Ver_PessoaCIDADE.Value,//NOMECIDADE: String   ;
                    dmFinanceiro.Ver_PessoaUF.Value ,//UF        : String   ;
                    '',//LISTA     : String   ;
                    dmFinanceiro.Contas_ReceberCODIGO_VN.Value,//VENDA     : Integer  ;
                    dmFinanceiro.Contas_ReceberPessoa_Fj.Value//PESSOA_FJ : Integer
                    );
end;

Procedure TDmFinanceiro2.Baixa_Receber_Selecao_ADM(Tipo: String; Cliente: Integer; Historico: String;Data_Ini: TDateTime; Data_Fim: TDateTime; Total: Real; Juros: Real; Desconto: Real; Usuario: Integer; Dinheiro, Cheque, Cartao: Real; Conta: Integer; Turno:Integer; Banco: Integer;Nome:string);
Var
   Planilha: Integer;
   DtBaixa : TDate;
   Cpf_Cnpj : String;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        if (DmApp.EXIBE_ACERTO = 'S') then
          Planilha := DMApp.GerarCodigo('ACERTO',0 ) + 1
        else
          Planilha := DMApp.GerarCodigo('PLANILHA', 1);

        if (dmapp.Receber_Caixa = 'S') then
          DtBaixa := dmapp.DataCaixa
        else
          DtBaixa := dmApp.DataServidor;

        {Colocando todos na transação de procdimentos, exceto cheque, dinheiro, cartao}
        DMProcs3.Baixa_Receber_Selecao_ADM.transaction := DmaPP.TransactionProc;
        DMProcs.Cria_Recibo.transaction := DmaPP.TransactionProc;
        dmRelatorios2.QryRecibo.Close;
        dmRelatorios2.QryRecibo.transaction := DmaPP.TransactionProc;

        //validação para desdobramento de cartões e cheques, para o procedure inser_modulo do dmApp
        dmApp.commitar := false;
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('CNPJ').asString         := DmApp.Cnpj ;
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('CLIENTE').asInteger     := Cliente    ;
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('HISTORICOBX').asString  := copy(Historico,1,100)  ;
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('USUARIO'   ).asInteger  := Usuario    ;  //1
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('DATA_INICIAL').asDate   := Data_Ini   ;  //2
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('DATA_FINAL').asDate     := Data_Fim   ;  //'31/12/9999'
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('TOTAL').asFloat         := TOTAL      ;  //20
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('DINHEIRO').asFloat      := dinheiro   ;  //20
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('PLANILHA').asInteger    := Planilha   ;  //19481
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('CONTA').asInteger       := Conta      ;  //1
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('TURNO').asInteger       := Turno      ;  //1
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('BANCO').asInteger       := Banco      ;  //0
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('PDV').asstring       := 'N'      ;
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('DATA_BAIXA').asDate := DtBaixa;
        DMProcs3.Baixa_Receber_Selecao_ADM.ParamByName('DESCONTO').asFloat      := DESCONTO   ;
        DMProcs3.Baixa_Receber_Selecao_ADM.ExecProc;

        DMProcs.Cria_Recibo.ParamByName('CNPJ'      ).asString  := DmApp.Cnpj;
        DMProcs.Cria_Recibo.ParamByName('FAVORECIDO').asString  := Nome;
        DMProcs.Cria_Recibo.ParamByName('DT_VENCTO' ).asDate    := Date ;
        DMProcs.Cria_Recibo.ParamByName('DOCTO'     ).asString  := ' ';
        DMProcs.Cria_Recibo.ParamByName('DT_LANCTO' ).asDate    := Date ;
        DMProcs.Cria_Recibo.ParamByName('VALOR'     ).asFloat   := TOTAL;
        DMProcs.Cria_Recibo.ParamByName('HISTORICO' ).asString  := Copy(Historico,1,100) ;
        DMProcs.Cria_Recibo.ParamByName('IMPRESSO'  ).asString  := 'S'       ;
        DMProcs.Cria_Recibo.ParamByName('CPF_CNPJ'  ).asString  := ' ';
        DMProcs.Cria_Recibo.ParamByName('INTEGRAL'  ).asString  := 'N';
        DMProcs.Cria_Recibo.ParamByName('PESSOA_FJ' ).asInteger := Cliente;
        DMProcs.Cria_Recibo.ParamByName('PLANILHA' ).asInteger := Planilha;
        DMProcs.Cria_Recibo.ExecProc;

        If Arredonda(Cheque,2) > 0 then
        begin
          FrmCheque_Planilha := TFrmCheque_Planilha.Create(Self);

          FrmCheque_Planilha.TotalDesdobrar := Arredonda(Cheque,2) ;
          FrmCheque_Planilha.Planilha       := Planilha            ;
          FrmCheque_Planilha.Cliente        := Cliente             ;
          FrmCheque_Planilha.Data_Caixa     := DmApp.DataCaixa     ;
          FrmCheque_Planilha.Usuario        := DmApp.UsuarioCaixa  ;
          FrmCheque_Planilha.Origem         := 'REC'               ;

          FrmCheque_Planilha.ShowModal                             ;

          FrmCheque_Planilha.Free                                  ;
          FrmCheque_Planilha := Nil                                ;
        end;

        //Verifica se Deve Digitar Cartao na Venda
        if ((DmApp.DIG_CARTAO_VENDA = 'S') and (Cartao > 0)) then
        begin
          FrmCartao_Venda := TFrmCartao_Venda.Create(Self);
          FrmCartao_Venda.vlrCartao := Cartao;
          FrmCartao_Venda.Planilha :=  Planilha;
          FrmCartao_Venda.CodigoReceber := 1;
          FrmCartao_Venda.Pessoa := Cliente;
          FrmCartao_Venda.Nome := Nome;
          FrmCartao_Venda.lblTitulo.caption := 'Cartão Receber';
          FrmCartao_Venda.caption := 'Cartão Conta à Receber';
          FrmCartao_Venda.ShowModal;
          FrmCartao_Venda.Free ;
          FrmCartao_Venda := Nil;
        end;


        with DmSerie_Customizaveis do
        begin
          EdtRecibo.close;
          EdtRecibo.parambyname('cnpj').value := dmApp.cnpj;
          EdtRecibo.Open;

          FrmSeriesCustomizaveis := TFrmSeriesCustomizaveis.Create(Self);
          FrmSeriesCustomizaveis.rptRecibo.Template.DatabaseSettings.Name := EdtReciboCNPJ.asstring;
          FrmSeriesCustomizaveis.rptRecibo.Template.LoadFromDatabase;

          dmRelatorios2.QryRecibo.close;
          dmRelatorios2.QryRecibo.parambyname('cnpj').value := dmApp.cnpj;
          dmRelatorios2.QryRecibo.parambyname('codigo').value := PLANILHA;
          dmRelatorios2.QryRecibo.parambyname('reimpressao').value := 'N';
          dmRelatorios2.QryRecibo.Open;

          FrmSeriesCustomizaveis.rptRecibo.print;
          FrmSeriesCustomizaveis.free;
          FrmSeriesCustomizaveis :=  nil;
        end;

        If DmaPP.TransactionProc.InTransaction then
           DmaPP.TransactionProc.Commit ;

        If DmaPP.Transaction.InTransaction then
           DmApp.Transaction.CommitRetaining ;

     except
           on E:EDataBaseError Do
           begin
             If DmaPP.TransactionProc.InTransaction then
               DmApp.TransactionProc.Rollback ;

             If DmaPP.Transaction.InTransaction then
               DmApp.Transaction.RollbackRetaining ;

             Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + ' '),'Aviso',mb_iconerror+mb_ok);
           end
           Else
           Begin
             If DmaPP.TransactionProc.InTransaction then
               DmApp.TransactionProc.Rollback ;

             If DmaPP.Transaction.InTransaction then
               DmApp.Transaction.RollbackRetaining ;

             Application.Messagebox('Ocorreu um erro não identificado pelo Sistema ','Aviso',mb_iconerror+mb_ok);
           End;
     end;

     dmApp.commitar := true;
end;


Procedure TDmFinanceiro2.Baixa_Receber(Codigo: Integer; Ano: Integer; Documento: String; Historico: String; Data_Baixa: TDateTime; Valor: Real; Juros: Real; Desconto: Real; Usuario: Integer; Cliente: Integer; Dinheiro: Real; Cheque: Real; Cartao:Real; Conta: Integer; Turno: Integer; Banco: Integer );
Var
   Recibo, Planilha: Integer;
   Cpf_Cnpj: string;
   DtBaixa : TDATE;
   Total : real;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        if (DmApp.EXIBE_ACERTO = 'S') then
          Planilha := DMApp.GerarCodigo('ACERTO',0 ) + 1
        else
          Planilha := DMApp.GerarCodigo('PLANILHA', 1);

        {Colocando todos na transação de procdimentos, exceto cheque, dinheiro, cartao}
        DMProcs.Baixa_Receber.transaction := DmaPP.TransactionProc;
        DMProcs.Cria_Recibo.transaction := DmaPP.TransactionProc;
        dmRelatorios2.QryRecibo.Close;
        dmRelatorios2.QryRecibo.transaction := DmaPP.TransactionProc;

        //validação para desdobramento de cartões e cheques, para o procedure inser_modulo do dmApp
        dmApp.commitar := false;

        TOTAL := Valor + Juros - Desconto;
        DMProcs.Baixa_Receber.ParamByName('CNPJ').asString         := DmApp.Cnpj ;
        DMProcs.Baixa_Receber.ParamByName('CODREC').asInteger      := Codigo     ;
        DMProcs.Baixa_Receber.ParamByName('ANOREC').asInteger      := Ano        ;
        DMProcs.Baixa_Receber.ParamByName('HISTORICOBX').asString  := copy(Historico,1,100)  ;
        DMProcs.Baixa_Receber.ParamByName('USUARIO').asInteger     := Usuario    ;
        if (dmapp.Receber_Caixa = 'S') then
          DMProcs.Baixa_Receber.ParamByName('DATA_BAIXA').asDate     := dmapp.DataCaixa
        else
          DMProcs.Baixa_Receber.ParamByName('DATA_BAIXA').asDate     := dmApp.DataServidor;

        DMProcs.Baixa_Receber.ParamByName('VALOR_BX').asFloat      := Valor      ;
        DMProcs.Baixa_Receber.ParamByName('DINHEIRO').asFloat      :=  Dinheiro;
        DMProcs.Baixa_Receber.ParamByName('JUROS').asFloat         := Juros      ;
        DMProcs.Baixa_Receber.ParamByName('DESCONTO').asFloat      := Desconto   ;
        DMProcs.Baixa_Receber.ParamByName('PLANILHA').asInteger    := Planilha   ;
        DMProcs.Baixa_Receber.ParamByName('CONTA').asInteger       := Conta      ;
        DMProcs.Baixa_Receber.ParamByName('TURNO').asInteger       := Turno      ;
        DMProcs.Baixa_Receber.ParamByName('BANCO').asInteger       := Banco      ;
        DMProcs.Baixa_Receber.ExecProc;

        DMProcs.Cria_Recibo.ParamByName('CNPJ'      ).asString  := DmApp.Cnpj;
        DMProcs.Cria_Recibo.ParamByName('FAVORECIDO').asString  := dmFinanceiro.VerReceberADMNOME.value;
        DMProcs.Cria_Recibo.ParamByName('DT_VENCTO' ).asDate    := Date ;
        DMProcs.Cria_Recibo.ParamByName('DOCTO'     ).asString  := ' ';
        DMProcs.Cria_Recibo.ParamByName('DT_LANCTO' ).asDate    := Date ;
        DMProcs.Cria_Recibo.ParamByName('VALOR'     ).asFloat   := TOTAL;
        DMProcs.Cria_Recibo.ParamByName('HISTORICO' ).asString  := Copy(Historico,1,100) ;
        DMProcs.Cria_Recibo.ParamByName('IMPRESSO'  ).asString  := 'S'       ;
        DMProcs.Cria_Recibo.ParamByName('CPF_CNPJ'  ).asString  := ' ';
        DMProcs.Cria_Recibo.ParamByName('PESSOA_FJ' ).asInteger := dmFinanceiro.VerReceberADMPessoa_Fj.VALUe;
        DMProcs.Cria_Recibo.ParamByName('INTEGRAL'  ).asString  := 'S';
        DMProcs.Cria_Recibo.ParamByName('PLANILHA' ).asInteger := Planilha;
        DMProcs.Cria_Recibo.ExecProc;

        Recibo := DMProcs.Cria_Recibo.ParamByName('CODIGO').asInteger;
        If Arredonda(Cheque,2) > 0 then
        begin
          FrmCheque_Planilha := TFrmCheque_Planilha.Create(Self);
          FrmCheque_Planilha.TotalDesdobrar := Arredonda(Cheque,2) ;
          FrmCheque_Planilha.Planilha       := Planilha            ;
          FrmCheque_Planilha.Cliente        := Cliente             ;
          FrmCheque_Planilha.Data_Caixa     := DmApp.DataCaixa     ;
          FrmCheque_Planilha.Usuario        := DmApp.UsuarioCaixa  ;
          FrmCheque_Planilha.Origem         := 'REC'               ;

          FrmCheque_Planilha.ShowModal;

          FrmCheque_Planilha.Free     ;
          FrmCheque_Planilha := Nil   ;
        end;

        //Verifica se Deve Digitar Cartao na Venda
        if ((DmApp.DIG_CARTAO_VENDA = 'S') and (Cartao > 0)) then
        begin
          FrmCartao_Venda := TFrmCartao_Venda.Create(Self);
          FrmCartao_Venda.vlrCartao := Cartao;
          FrmCartao_Venda.CodigoReceber := 1;
          FrmCartao_Venda.Planilha :=  Planilha;
          FrmCartao_Venda.Pessoa := dmFinanceiro.Contas_ReceberPessoa_Fj.VALUe;
          FrmCartao_Venda.Nome := dmFinanceiro.Contas_ReceberNOME.value;
          FrmCartao_Venda.lblTitulo.caption := 'Cartão Receber';
          FrmCartao_Venda.caption := 'Cartão Conta à Receber';
          FrmCartao_Venda.ShowModal;
          FrmCartao_Venda.Free ;
          FrmCartao_Venda := Nil;
        end;

        with DmSerie_Customizaveis do
        begin
          if (TOTAL > 0) then
          begin
            EdtRecibo.close;
            EdtRecibo.parambyname('cnpj').value := dmApp.cnpj;
            EdtRecibo.Open;

            FrmSeriesCustomizaveis := TFrmSeriesCustomizaveis.Create(Self);
            FrmSeriesCustomizaveis.rptRecibo.Template.DatabaseSettings.Name := EdtReciboCNPJ.asstring;
            FrmSeriesCustomizaveis.rptRecibo.Template.LoadFromDatabase;
            //colocando na mesma transction, pois o recibo irá pegar da tabela recebidas

            dmRelatorios2.QryRecibo.close;
            dmRelatorios2.QryRecibo.parambyname('cnpj').value := dmApp.cnpj;
            dmRelatorios2.QryRecibo.parambyname('codigo').value := Planilha;
            dmRelatorios2.QryRecibo.parambyname('reimpressao').value := 'N';
            dmRelatorios2.QryRecibo.Open;

            FrmSeriesCustomizaveis.rptRecibo.print;
            FrmSeriesCustomizaveis.free;
            FrmSeriesCustomizaveis :=  nil;
          end;
        end;

        If DmaPP.TransactionProc.InTransaction then
           DmaPP.TransactionProc.Commit ;

        If DmaPP.Transaction.InTransaction then
           DmApp.Transaction.CommitRetaining ;
     except
           On E:EDataBaseError Do
           begin
             if DmaPP.TransactionProc.InTransaction then
               DmApp.TransactionProc.Rollback ;

             if DmaPP.Transaction.InTransaction then
               DmApp.Transaction.RollbackRetaining ;

             Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + ' '),'Aviso',mb_iconerror+mb_ok);
           end
           else
           begin
             If DmaPP.TransactionProc.InTransaction then
               DmApp.TransactionProc.Rollback ;

             If DmaPP.Transaction.InTransaction then
               DmApp.Transaction.RollbackRetaining ;

             Application.Messagebox('Ocorreu um erro não identificado pelo Sistema ','Aviso',mb_iconerror+mb_ok);
           end;

          If DmaPP.TransactionProc.InTransaction  then
           DmApp.TransactionProc.Rollback ;
     end;
     dmApp.commitar := true;
end;

Procedure TDmFinanceiro2.Baixa_Receber_Selecao_Loja1 (Tipo: String; Cliente: Integer; Historico: String; Data_Baixa: TDateTime; Data_Ini: TDateTime; Data_Fim: TDateTime; Usuario: Integer; Dinheiro, Cheque, Cartao: Real; Conta: Integer; Turno: Integer; Banco: Integer; Desconto, Juros :Real; DIF_JUROS:Real; Docto: String;Troco:Real=0);
Var
   Planilha: Integer;
   DtBaixa : TDate;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        if (DmApp.EXIBE_ACERTO = 'S') then
          Planilha := DMApp.GerarCodigo('ACERTO',0 ) + 1
        else
          Planilha := DMApp.GerarCodigo('PLANILHA', 1);

        {Colocando todos na transação de procdimentos, exceto cheque, dinheiro, cartao}
        BAIXA_RECEBER_SELECAO_LOJA.transaction := DmaPP.TransactionProc;
        DMProcs.Cria_Recibo.transaction := DmaPP.TransactionProc;
        dmRelatorios2.QryRecibo.Close;
        dmRelatorios2.QryRecibo.transaction := DmaPP.TransactionProc;

        if (dmapp.Receber_Caixa = 'S') then
          DtBaixa := dmapp.DataCaixa
        else
          DtBaixa := dmApp.DataServidor;

        //validação para desdobramento de cartões e cheques, para o procedure inser_modulo do dmApp
        dmApp.commitar := false;

        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('CNPJ').asString         := DmApp.Cnpj ;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('CLIENTE').asInteger     := Cliente    ;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('HISTORICOBX').asString  := copy(Historico,1,100)  ;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('USUARIO'   ).asInteger  := Usuario    ;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('DATA_INICIAL').asDate   := Data_Ini   ;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('DATA_FINAL').asDate     := Data_Fim   ;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('TOTAL').asFloat         := arredonda(Dinheiro + Cartao + Cheque,2);
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('DINHEIRO').asFloat      := DINHEIRO;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('PLANILHA').asInteger    := Planilha   ;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('CONTA').asInteger       := Conta      ;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('TURNO').asInteger       := Turno      ;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('BANCO').asInteger       := Banco      ;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('DESCONTO').AsFloat      := Desconto   ;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('JUROS').AsFloat         := Juros   ;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('TIPO').asString         := Tipo;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('DATA_BAIXA').asDate     := DtBaixa;
        BAIXA_RECEBER_SELECAO_LOJA.ParamByName('DIF_JUROS').AsFloat     := DIF_JUROS ;
        BAIXA_RECEBER_SELECAO_LOJA.ExecProc;

        DMProcs.Cria_Recibo.transaction := BAIXA_RECEBER_SELECAO_LOJA.transaction;
        DMProcs.Cria_Recibo.ParamByName('CNPJ'      ).asString  := DmApp.Cnpj;
        DMProcs.Cria_Recibo.ParamByName('FAVORECIDO').asString  := dmFinanceiro.VerReceberADMNOME.value;
        DMProcs.Cria_Recibo.ParamByName('DT_VENCTO' ).asDate    := Date ;
        DMProcs.Cria_Recibo.ParamByName('DOCTO'     ).asString  := ' ';
        DMProcs.Cria_Recibo.ParamByName('DT_LANCTO' ).asDate    := Date ;
        DMProcs.Cria_Recibo.ParamByName('VALOR'     ).asFloat   := arredonda(Dinheiro + Cartao + Cheque + Troco,2);
        DMProcs.Cria_Recibo.ParamByName('HISTORICO' ).asString  := Copy(Historico,1,100) ;
        DMProcs.Cria_Recibo.ParamByName('IMPRESSO'  ).asString  := 'S'       ;
        DMProcs.Cria_Recibo.ParamByName('INTEGRAL'  ).asString  := 'S';
        DMProcs.Cria_Recibo.ParamByName('CPF_CNPJ'  ).asString  := ' ';
        DMProcs.Cria_Recibo.ParamByName('PESSOA_FJ' ).asInteger := dmFinanceiro.VerReceberADMPessoa_Fj.VALUe;
        DMProcs.Cria_Recibo.ParamByName('PLANILHA' ).asInteger := Planilha;
        DMProcs.Cria_Recibo.ExecProc;

        If Arredonda(Cheque,2) > 0  then
        begin
          FrmCheque_Planilha := TFrmCheque_Planilha.Create(Self);
          FrmCheque_Planilha.TotalDesdobrar := Arredonda(Cheque,2) ;
          FrmCheque_Planilha.Planilha       := Planilha            ;
          FrmCheque_Planilha.Cliente        := Cliente             ;
          FrmCheque_Planilha.Data_Caixa     := DmApp.DataCaixa     ;
          FrmCheque_Planilha.Usuario        := DmApp.UsuarioCaixa  ;
          FrmCheque_Planilha.Origem         := 'REC'               ;

          FrmCheque_Planilha.ShowModal                             ;
          FrmCheque_Planilha.Free                                  ;
          FrmCheque_Planilha := Nil                                ;
        end;

        //Verifica se Deve Digitar Cartao na Venda
        if ((DmApp.DIG_CARTAO_VENDA = 'S') and (Cartao > 0)) then
        begin
          FrmCartao_Venda := TFrmCartao_Venda.Create(Self);
          FrmCartao_Venda.vlrCartao := Cartao;
          FrmCartao_Venda.CodigoReceber := 1;
          FrmCartao_Venda.Planilha := Planilha;
          FrmCartao_Venda.Pessoa := dmFinanceiro.VerReceberADMPessoa_Fj.VALUe;
          FrmCartao_Venda.Nome := dmFinanceiro.VerReceberADMNOME.value;
          FrmCartao_Venda.lblTitulo.caption := 'Cartão Receber';
          FrmCartao_Venda.caption := 'Cartão Conta a Receber';
          FrmCartao_Venda.ShowModal;
          FrmCartao_Venda.Free ;
          FrmCartao_Venda := Nil;
        end;

        with DmSerie_Customizaveis do
        begin
          EdtRecibo.close;
          EdtRecibo.parambyname('cnpj').value := dmApp.cnpj;
          EdtRecibo.Open;

          FrmSeriesCustomizaveis := TFrmSeriesCustomizaveis.Create(Self);
          FrmSeriesCustomizaveis.rptRecibo.Template.DatabaseSettings.Name := EdtReciboCNPJ.asstring;
          FrmSeriesCustomizaveis.rptRecibo.Template.LoadFromDatabase;

          dmRelatorios2.QryRecibo.close;
          dmRelatorios2.QryRecibo.parambyname('cnpj').value := dmApp.cnpj;
          dmRelatorios2.QryRecibo.parambyname('codigo').value := Planilha;
          dmRelatorios2.QryRecibo.parambyname('reimpressao').value := 'N';
          dmRelatorios2.QryRecibo.Open;

          FrmSeriesCustomizaveis.rptRecibo.print;
          FrmSeriesCustomizaveis.free;
          FrmSeriesCustomizaveis :=  nil;

        end;

        If DmaPP.TransactionProc.InTransaction then
           DmaPP.TransactionProc.Commit ;

        If DmaPP.Transaction.InTransaction then
           DmApp.Transaction.CommitRetaining ;

     except
       On E:EDataBaseError Do
       begin
         If DmaPP.TransactionProc.InTransaction then
           DmApp.TransactionProc.Rollback ;

         If DmaPP.Transaction.InTransaction then
           DmApp.Transaction.RollbackRetaining ;

         Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + ' '),'Aviso',mb_iconerror+mb_ok);
       end
       else
       Begin
         If DmaPP.TransactionProc.InTransaction then
           DmApp.TransactionProc.Rollback ;

         If DmaPP.Transaction.InTransaction then
           DmApp.Transaction.RollbackRetaining ;

         Application.Messagebox('Ocorreu um erro não identificado pelo Sistema ','Aviso',mb_iconerror+mb_ok);
       end;
     end;
     dmApp.commitar := true;
end;

Procedure TDmFinanceiro2.Baixa_Receber_Convenios(Cliente: Integer; Historico: String; Data_Baixa: TDateTime; Data_Ini: TDateTime; Data_Fim: TDateTime; Total: Real; Juros: Real; Desconto: Real; Usuario: Integer; Dinheiro, Cheque, Cartao: Real; Conta: Integer; Turno: Integer; Banco: Integer );
Var
   Planilha: Integer;
   DtBaixa : TDate;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        if (DmApp.EXIBE_ACERTO = 'S') then
          Planilha := DMApp.GerarCodigo('ACERTO',0 ) + 1
        else
          Planilha := DMApp.GerarCodigo('PLANILHA', 1);

        if (dmapp.Receber_Caixa = 'S') then
          DtBaixa := dmapp.DataCaixa
        else
          DtBaixa := dmApp.DataServidor;

        {Colocando todos na transação de procdimentos, exceto cheque, dinheiro, cartao}
        Baixa_Receber_Convenio.transaction := DmaPP.TransactionProc;
        DMProcs.Cria_Recibo.transaction := DmaPP.TransactionProc;
        dmRelatorios2.QryRecibo.Close;
        dmRelatorios2.QryRecibo.transaction := DmaPP.TransactionProc;

        //validação para desdobramento de cartões e cheques, para o procedure inser_modulo do dmApp
        dmApp.commitar := false;
        Baixa_Receber_Convenio.ParamByName('CNPJ'        ).asString   := DmApp.Cnpj ;
        Baixa_Receber_Convenio.ParamByName('CLIENTE'     ).asInteger  := Cliente    ;
        Baixa_Receber_Convenio.ParamByName('HISTORICOBX' ).asString   := copy(Historico,1,100);
        Baixa_Receber_Convenio.ParamByName('USUARIO'     ).asInteger  := Usuario    ;
        Baixa_Receber_Convenio.ParamByName('DATA_BAIXA'  ).asDate     := Data_Baixa ;
        Baixa_Receber_Convenio.ParamByName('DATA_INICIAL').asDate     := Data_Ini   ;
        Baixa_Receber_Convenio.ParamByName('DATA_FINAL'  ).asDate     := Data_Fim   ;
        Baixa_Receber_Convenio.ParamByName('TOTAL'       ).asFloat    := TOTAL      ;
        Baixa_Receber_Convenio.ParamByName('JUROS'       ).asFloat    := Juros      ;
        Baixa_Receber_Convenio.ParamByName('DESCONTO'    ).asFloat    := Desconto   ;
        Baixa_Receber_Convenio.ParamByName('PLANILHA'    ).asInteger  := Planilha   ;
        Baixa_Receber_Convenio.ParamByName('CONTA'       ).asInteger  := Conta      ;
        Baixa_Receber_Convenio.ParamByName('TURNO'       ).asInteger  := Turno      ;
        Baixa_Receber_Convenio.ParamByName('BANCO'       ).asInteger  := Banco      ;
        Baixa_Receber_Convenio.ExecProc;

        DMProcs.Cria_Recibo.ParamByName('CNPJ'      ).asString  := DmApp.Cnpj;
        DMProcs.Cria_Recibo.ParamByName('FAVORECIDO').asString  := dmFinanceiro.VerReceberConvenioNOME.value;
        DMProcs.Cria_Recibo.ParamByName('DT_VENCTO' ).asDate    := Date ;
        DMProcs.Cria_Recibo.ParamByName('DOCTO'     ).asString  := ' ';
        DMProcs.Cria_Recibo.ParamByName('DT_LANCTO' ).asDate    := Date ;
        DMProcs.Cria_Recibo.ParamByName('VALOR'     ).asFloat   := arredonda(Dinheiro + Cartao + Cheque,2);
        DMProcs.Cria_Recibo.ParamByName('HISTORICO' ).asString  := Copy(Historico,1,100) ;
        DMProcs.Cria_Recibo.ParamByName('IMPRESSO'  ).asString  := 'S'       ;
        DMProcs.Cria_Recibo.ParamByName('INTEGRAL'  ).asString  := 'S';
        DMProcs.Cria_Recibo.ParamByName('CPF_CNPJ'  ).asString  := ' ';
        DMProcs.Cria_Recibo.ParamByName('PESSOA_FJ' ).asInteger := dmFinanceiro.VerReceberConvenioPessoa_Fj.VALUe;
        DMProcs.Cria_Recibo.ParamByName('PLANILHA' ).asInteger := Planilha;
        DMProcs.Cria_Recibo.ExecProc;

        If Arredonda(Cheque,2) > 0
        then begin
             FrmCheque_Planilha := TFrmCheque_Planilha.Create(Self);

             FrmCheque_Planilha.TotalDesdobrar := Arredonda(Cheque,2) ;
             FrmCheque_Planilha.Planilha       := Planilha            ;
             FrmCheque_Planilha.Cliente        := Cliente             ;
             FrmCheque_Planilha.Data_Caixa     := DmaPP.DataCaixa     ;
             FrmCheque_Planilha.Usuario        := DmaPP.UsuarioCaixa  ;
             FrmCheque_Planilha.Origem         := 'REC'               ;

             FrmCheque_Planilha.ShowModal                             ;

             FrmCheque_Planilha.Free                                  ;
             FrmCheque_Planilha := Nil                                ;
        end;

        //Verifica se Deve Digitar Cartao na Venda
        if ((DmApp.DIG_CARTAO_VENDA = 'S') and (Cartao > 0)) then
        begin
          FrmCartao_Venda := TFrmCartao_Venda.Create(Self);
          FrmCartao_Venda.vlrCartao := Cartao;
          FrmCartao_Venda.CodigoReceber := 1;
          FrmCartao_Venda.Planilha :=  Planilha;
          FrmCartao_Venda.Pessoa := dmFinanceiro.VerReceberConvenioPessoa_Fj.VALUe;
          FrmCartao_Venda.Nome := dmFinanceiro.VerReceberConvenioNOME.value;
          FrmCartao_Venda.lblTitulo.caption := 'Cartão Receber';
          FrmCartao_Venda.caption := 'Cartão Conta a Receber';
          FrmCartao_Venda.ShowModal;
          FrmCartao_Venda.Free ;
          FrmCartao_Venda := Nil;
        end;


        with DmSerie_Customizaveis do
        begin
          EdtRecibo.close;
          EdtRecibo.parambyname('cnpj').value := dmApp.cnpj;
          EdtRecibo.Open;

          FrmSeriesCustomizaveis := TFrmSeriesCustomizaveis.Create(Self);
          FrmSeriesCustomizaveis.rptRecibo.Template.DatabaseSettings.Name := EdtReciboCNPJ.asstring;
          FrmSeriesCustomizaveis.rptRecibo.Template.LoadFromDatabase;

          dmRelatorios2.QryRecibo.close;
          dmRelatorios2.QryRecibo.transaction := Baixa_Receber_Convenio.transaction;
          dmRelatorios2.QryRecibo.parambyname('cnpj').value := dmApp.cnpj;
          dmRelatorios2.QryRecibo.parambyname('codigo').value := Planilha;
          dmRelatorios2.QryRecibo.parambyname('reimpressao').value := 'N';
          dmRelatorios2.QryRecibo.Open;

          FrmSeriesCustomizaveis.rptRecibo.print;
          FrmSeriesCustomizaveis.free;
          FrmSeriesCustomizaveis :=  nil;
        end;

        If DmaPP.TransactionProc.InTransaction then
           DmaPP.TransactionProc.Commit ;

        If DmaPP.Transaction.InTransaction then
           DmApp.Transaction.CommitRetaining ;

     except
        On E:EDataBaseError Do
        begin
          If DmaPP.TransactionProc.InTransaction then
            DmApp.TransactionProc.Rollback ;

          If DmaPP.Transaction.InTransaction then
            DmApp.Transaction.RollbackRetaining ;

          Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + ' '),'Aviso',mb_iconerror+mb_ok);
        end
        else
        Begin
          If DmaPP.TransactionProc.InTransaction then
            DmApp.TransactionProc.Rollback ;

          If DmaPP.Transaction.InTransaction then
            DmApp.Transaction.RollbackRetaining ;

          Application.Messagebox('Ocorreu um erro não identificado pelo Sistema ','Aviso',mb_iconerror+mb_ok);
        end;
     end;
     dmApp.commitar := true;
end;

procedure TdmFinanceiro2.qryManBoletosBeforeOpen(DataSet: TDataSet);
begin
  if (DataSet is TIBQuery) then
    TIBQuery(DataSet).ParamByName('cnpj').value := dmApp.cnpj
  else if (DataSet is TIBDataset) then
    TIBDataset(DataSet).ParamByName('cnpj').value := dmApp.cnpj;
end;

procedure TdmFinanceiro2.qryManBoletosCalcFields(DataSet: TDataSet);
var
  Data : TDate;
  Dias : Integer;
begin
  //Valor Restante é o valor total
   qryManBoletosTotal.Value   := qryManBoletosBLT_VALOR.Value -(qryManBoletosREC_VLR_PARCIAL.Value);

   //Verificando se a ultima baixa será utilizado como parâmetro para o calculo de juros
   if (qryManBoletosREC_Data_Ult_Baixa.value < qryManBoletosBLT_DT_VENCTO.value) then
     Data := qryManBoletosBLT_DT_VENCTO.Value
   else
     Data := qryManBoletosREC_Data_Ult_Baixa.Value;

   //Data_Servidor
   //Dias := trunc(DmaPP.DataCaixa - Data);
   Dias := trunc(DmaPP.Data_Servidor - Data);
   if Dias < 0 then
     Dias := 0;

   //se havemos de cobrar juros
   if ((Dias > 0) and (dias > dmapp.TOLERANCIA_JUROS)) then
     qryManBoletosJuros.Value := arredonda(CALCULAJUROS(Data,DmaPP.Data_Servidor,qryManBoletosTOTAL.Value,0 ),2)
   else
     qryManBoletosJuros.Value := 0;


   qryManBoletosTotal.value := arredonda(qryManBoletosTotal.value + qryManBoletosJuros.Value,2) ;
end;

procedure TdmFinanceiro2.COM_PERFILBeforePost(DataSet: TDataSet);
begin
  VerificaIntervalo(COM_PERFIL_FAIXAVLR_INICIAL.asFloat,COM_PERFIL_FAIXAVLR_Final.asFloat);
end;

procedure TdmFinanceiro2.COM_PERFILNewRecord(DataSet: TDataSet);
begin
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
end;

procedure TdmFinanceiro2.COM_PERFIL_FAIXANewRecord(DataSet: TDataSet);
var
  Aux : variant;
  sql : string;
begin
  //-------------------Setando CNPJ e Código do Perfil automaticamente---------------//
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
  Com_Perfil_FaixaCOD_PERFIL.value := Com_PerfilCODIGO.value;

  //----------------definindo automáticamento o valor inicial----------------------------//
  sql := ' select max(cm.vlr_final) from cm_perfil_faixa cm '+
         ' where cm.cnpj = '+QuotedStr(dmApp.cnpj)+' and cm.cod_perfil = '+COM_PERFIL_FAIXACOD_PERFIL.asString;
  Aux  := RetornaValor(sql,COM_PERFIL_FAIXA.Transaction);
  if VarIsNull(Aux) then
    Aux := 0
  else
    Aux := Aux + 0.01;

  COM_PERFIL_FAIXAVLR_INICIAL.VALUE := Aux;
end;

procedure TdmFinanceiro2.CM_PERFIL_FAIXA_DESCNewRecord(DataSet: TDataSet);
var
  sql : string;
  aux : variant;
begin
  //----------------Cnpj e Código da Faixa de Perfil automatico-----------------//
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
  Cm_Perfil_Faixa_DescCOD_PERFIL_FAIXA.Value := COM_PERFIL_FAIXACODIGO.value;

  //----------------definindo automáticamento o valor inicial----------------------------//
  sql := ' select max(cm.pct_final) from cm_perfil_faixa_desc cm '+
         ' where cm.cnpj = '+QuotedStr(dmApp.cnpj)+' and cm.COD_PERFIL_FAIXA = '+Cm_Perfil_Faixa_DescCOD_PERFIL_FAIXA.asString;

  Aux  := RetornaValor(sql,Cm_Perfil_Faixa_Desc.Transaction);
  if VarIsNull(Aux) then
    Aux := 0
  else
    Aux := Aux + 0.01;

  Cm_perfil_faixa_descPCT_INICIAL.VALUE := Aux;
end;

procedure TdmFinanceiro2.CM_PERFIL_FAIXA_PRODNewRecord(DataSet: TDataSet);
begin
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
  CM_PERFIL_FAIXA_PRODCOD_PERFIL_FX_DESC.value := CM_PERFIL_FAIXA_DESCCODIGO.value;
end;

procedure TdmFinanceiro2.COM_PERFILBASE_CALCGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 1 Then
     Text := 'Faturamento'
  else If Sender.Value = 2 Then
     Text := 'Lucro';
end;

procedure TdmFinanceiro2.COM_PERFILBASE_CALCSetText(Sender: TField;
  const Text: String);
begin
  If Text = 'Faturamento' Then
     Sender.Value := 1
  else If Text = 'Lucro' Then
     Sender.Value := 2;
end;

procedure TdmFinanceiro2.CM_COMISSAONewRecord(DataSet: TDataSet);
begin
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
end;

procedure TdmFinanceiro2.CM_PERFIL_PAGTO_FAIXANewRecord(DataSet: TDataSet);
var
  sql : string;
  aux : variant;
begin
  //--------------------------Campos Automático-----------------------------//
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
  CM_PERFIL_PAGTO_FAIXACOD_PERFIL_PAGTO.value := CM_PERFIL_PAGTOCODIGO.value;

  //----------------definindo automáticamento o valor inicial----------------------------//
  sql := ' select max(cm.dia_final) from cm_perfil_pagto_faixa cm '+
         ' where cm.cnpj = '+QuotedStr(dmApp.cnpj)+' and cm.cod_perfil_pagto = '+CM_PERFIL_PAGTO_FAIXACOD_PERFIL_PAGTO.asString;

  Aux  := RetornaValor(sql,CM_PERFIL_PAGTO_FAIXA.Transaction);
  if VarIsNull(Aux) then
    Aux := 0
  else
    Aux := Aux + 1;

  CM_PERFIL_PAGTO_FAIXADia_inicial.VALUE := Aux;
end;

procedure TdmFinanceiro2.CM_PERFIL_PAGTONewRecord(DataSet: TDataSet);
begin
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
end;

procedure TdmFinanceiro2.VerificaIntervalo(inicial, final: real);
begin
  if (inicial > final) then
  begin
    Application.MessageBox('Intervalo de de valores inválido','Aviso',mb_iconerror+mb_ok);
    abort;
    exit;
  end;
end;

procedure TdmFinanceiro2.CM_PERFIL_FAIXA_DESCBeforePost(DataSet: TDataSet);
begin
  VerificaIntervalo(CM_PERFIL_FAIXA_DESCPCT_INICIAL.asFloat,CM_PERFIL_FAIXA_DESCPCT_FINAL.asFloat);
end;

procedure TdmFinanceiro2.CM_PERFIL_PAGTO_FAIXABeforePost(
  DataSet: TDataSet);
begin
  VerificaIntervalo(CM_PERFIL_PAGTO_FAIXADIA_INICIAL.asFloat,CM_PERFIL_PAGTO_FAIXADIA_FINAL.asFloat);
end;

procedure TdmFinanceiro2.ComissoesAfterOpen(DataSet: TDataSet);
begin
  ComissoesParc.Close;
  ComissoesParc.Open;
end;

procedure TdmFinanceiro2.CM_PERFIL_PAGTOBeforePost(DataSet: TDataSet);
begin
  if ((CM_PERFIL_PAGTOPCT_ANT_PRAZO.value < 0) or (CM_PERFIL_PAGTOPCT_ANT_PRAZO.value > 100)) then
  begin
    Application.MessageBox('Percentual de antecipação inválido','Aviso',mb_iconerror+mb_ok);
    abort;
    exit;
  end;
end;

procedure TdmFinanceiro2.qryBxReceberCalcFields(DataSet: TDataSet);
begin
  if qryBxReceberAtraso2.value < 0 then
    qryBxReceberAtraso.value := 0
  else
    qryBxReceberAtraso.value := qryBxReceberAtraso2.asInteger;
end;

procedure TdmFinanceiro2.SelVendedorCalcFields(DataSet: TDataSet);
begin
  SelVendedorcod_nome.Value := SelVendedorCODIGO.asString +'-'+SelVendedorNOME.asString;
end;

procedure TdmFinanceiro2.qryPromissoriasCalcFields(DataSet: TDataSet);
var
  DtEst : string;
begin
  if (trim(TIBQuery(Dataset).FieldByName('pc_parcela').value) = '0') then
  begin
    TIBQuery(Dataset).FieldByName('pc_mes_extenso').value := 'Totalização';
    TIBQuery(Dataset).FieldByName('Pc_vencto_extenso').asString := 'Totalização' ;
    dmVendas.EXTENSO.Valor :=  TIBQuery(Dataset).FieldByName('PC_VALOR').asFloat;
    TIBQuery(Dataset).FieldByName('pc_valor_extenso').value := dmvendas.EXTENSO.Texto;
    exit;
  end;

  case TIBQuery(Dataset).FieldByName('PC_MES').asInteger of
      1 : TIBQuery(Dataset).FieldByName('pc_mes_extenso').value := 'Janeiro';
      2 : TIBQuery(Dataset).FieldByName('pc_mes_extenso').value  := 'Fevereiro';
      3 : TIBQuery(Dataset).FieldByName('pc_mes_extenso').value := 'Marco';
      4 : TIBQuery(Dataset).FieldByName('pc_mes_extenso').value := 'Abril';
      5 : TIBQuery(Dataset).FieldByName('pc_mes_extenso').value := 'Maio';
      6 : TIBQuery(Dataset).FieldByName('pc_mes_extenso').value := 'Junho';
      7 : TIBQuery(Dataset).FieldByName('pc_mes_extenso').value := 'Julho';
      8 : TIBQuery(Dataset).FieldByName('pc_mes_extenso').value := 'Agosto';
      9 : TIBQuery(Dataset).FieldByName('pc_mes_extenso').value := 'Setembro';
      10: TIBQuery(Dataset).FieldByName('pc_mes_extenso').value := 'Outubro';
      11: TIBQuery(Dataset).FieldByName('pc_mes_extenso').value := 'Novembro';
      12: TIBQuery(Dataset).FieldByName('pc_mes_extenso').value := 'Dezembro';
  end;

  //Vencimento por extenso
  CASE TIBQuery(Dataset).FieldByName('PC_dia').asInteger OF
    1:DtEst := 'Primeiro ';
    2:DtEst := 'Segundo ';
    3:DtEst := 'Terceiro ';
    4:DtEst := 'Quarto ';
    5:DtEst := 'Quinto ';
    6:DtEst := 'Sexto ';
    7:DtEst := 'Setimo ';
    8:DtEst := 'Oitavo ';
    9:DtEst := 'Nono ';
    10:DtEst := 'Decimo ';
    11:DtEst := 'Decimo Primeiro ';
    12:DtEst := 'Decimo Segundo ';
    13:DtEst := 'Decimo Terceiro ';
    14:DtEst := 'Decimo Quarto ';
    15:DtEst := 'Decimo Quinto ';
    16:DtEst := 'Decimo Sexto ';
    17:DtEst := 'Decimo Setimo ';
    18:DtEst := 'Decimo Oitavo ';
    19:DtEst := 'Decimo Nono ';
    20:DtEst := 'Vigesimo ';
    21:DtEst := 'Vigesimo Primeiro ';
    22:DtEst := 'Vigesimo Segundo ';
    23:DtEst := 'Vigesimo Terceiro ';
    24:DtEst := 'Vigesimo Quarto ';
    25:DtEst := 'Vigesimo Quinto ';
    26:DtEst := 'Vigesimo Sexto ';
    27:DtEst := 'Vigesimo Setimo ';
    28:DtEst := 'Vigesimo Oitavo ';
    29:DtEst := 'Vigesimo Nono ';
    30:DtEst := 'Trigesimo ';
    31:DtEst := 'Trigesimo Primeiro ';
  end;

  DtEst := DtEst + ' dia(s) do Mês de ' + TIBQuery(Dataset).FieldByName('pc_mes_extenso').asString+ ' do Ano de ' ;

  CASE TIBQuery(Dataset).FieldByName('PC_ano').asInteger OF
    2000: DtEst := DtEst + 'Dois Mil';
    2001: DtEst := DtEst + 'Dois Mil e Um';
    2002: DtEst := DtEst + 'Dois Mil e Dois';
    2003: DtEst := DtEst + 'Dois Mil e Tres';
    2004: DtEst := DtEst + 'Dois Mil e Quatro';
    2005: DtEst := DtEst + 'Dois Mil e Cinco';
    2006: DtEst := DtEst + 'Dois Mil e Seis';
    2007: DtEst := DtEst + 'Dois Mil e Sete';
    2008: DtEst := DtEst + 'Dois Mil e Oito';
    2009: DtEst := DtEst + 'Dois Mil e Nove';
    2010: DtEst := DtEst + 'Dois Mil e Dez';
    2011: DtEst := DtEst + 'Dois Mil e Onze';
    2012: DtEst := DtEst + 'Dois Mil e Doze';
  END;
  TIBQuery(Dataset).FieldByName('Pc_vencto_extenso').asString := DtEst;

  dmVendas.EXTENSO.Valor :=  TIBQuery(Dataset).FieldByName('PC_VALOR').asFloat;
  TIBQuery(Dataset).FieldByName('pc_valor_extenso').value := dmvendas.EXTENSO.Texto;
end;



Procedure TDmFinanceiro2.Extorna_Receber_Integral(Codigo: Integer; Ano: Integer; Valor: Real );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Extorna_Receber_Integral.ParamByName('CNPJ').asString        := DmApp.Cnpj ;
        DMProcs.Extorna_Receber_Integral.ParamByName('CODBX').asInteger      := Codigo     ;
        DMProcs.Extorna_Receber_Integral.ParamByName('ANOBX').asInteger      := Ano        ;
        DMProcs.Extorna_Receber_Integral.ParamByName('VLR_PARCIAL').asFloat        := Valor      ;

        DMProcs.Extorna_Receber_Integral.ExecProc;

        DmApp.TransactionProc.Commit ;
        DMApp.LOG_TRANSACOES (IntToStr(Codigo), 'EST-R' );
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback ;

     end;
end;

Procedure TDmFinanceiro2.Extorna_Receber_Parcial(Codigo: Integer; Ano: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Extorna_Receber_Parcial.ParamByName('CNPJ').asString        := DmApp.Cnpj ;
        DMProcs.Extorna_Receber_Parcial.ParamByName('CODBX').asInteger      := Codigo     ;
        DMProcs.Extorna_Receber_Parcial.ParamByName('ANOBX').asInteger      := Ano        ;

        DMProcs.Extorna_Receber_Parcial.ExecProc;
        DmApp.TransactionProc.Commit ;
        DMApp.LOG_TRANSACOES (IntToStr(Codigo), 'EST-R' );

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;
           DmApp.TransactionProc.Rollback ;
     end;
end;

Procedure TDmFinanceiro2.Seleciona_Cartao(Codigo: Integer;Selecionado: String);
var
  sel : string;
begin
  if (Selecionado = 'S') then
    sel := 'N'
  else
    sel := 'S';

  with dmFinanceiro2 do
  begin
    SelecionaCartao.parambyname('sel').value := sel;
    SelecionaCartao.parambyname('cnpj').value := dmApp.cnpj;
    SelecionaCartao.parambyname('codigo').value := codigo;
    SelecionaCartao.ExecQuery;
  end;

end;

Procedure TDmFinanceiro2.Seleciona_Receber_Loja(Codigo: Integer; Ano: Integer; Selecionado: String; Valor, Juros: Real );
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
        DMProcs2.Seleciona_Receber_Loja.ParamByName('CNPJ'  ).asString       := DmApp.Cnpj;
        DMProcs2.Seleciona_Receber_Loja.ParamByName('CODIGO').asInteger      := Codigo;
        DMProcs2.Seleciona_Receber_Loja.ParamByName('ANO'   ).asInteger      := Ano;
        DMProcs2.Seleciona_Receber_Loja.ParamByName('VALOR' ).asFloat        := Valor;
        DMProcs2.Seleciona_Receber_Loja.ParamByName('JUROS' ).asFloat        := Juros;

        if Selecionado = 'S' then
          DMProcs2.Seleciona_Receber_Loja.ParamByName('SEL').asString      := 'N'
        else
          DMProcs2.Seleciona_Receber_Loja.ParamByName('SEL').asString      := 'S';

        DMProcs2.Seleciona_Receber_Loja.ExecProc;
        //
        //
        DMProcs2.Free;
        DMProcs2 := Nil;

        DmaPP.TransactionProc.CommitRetaining;
     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
           End;

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;

procedure TdmFinanceiro2.qryVerChequeLMTCalcFields(DataSet: TDataSet);
begin
  qryVerChequeLMTTotal.Value := qryVerChequeLMTVALOR.Value + qryVerChequeLMTJuros.value;
end;

procedure TdmFinanceiro2.qryVerReceberLMTBeforeOpen(DataSet: TDataSet);
begin
  TIBQuery(DataSet).parambyname('cnpj').value := DmApp.Cnpj ;
end;

procedure TDmFinanceiro2.OnCalcDataSetReceber(DataSet: TDataSet);
Var
   Dias: Integer;
   Data : TDate;
   juros, VlrOriginal : Real;
begin
     {---------------Existem vários ONCalc identicos para cálculo de receber
     em vários dataset então decidi reuni-los --------------------/}

     //Valor Restante é o valor total
     TIBQuery(DataSet).FieldByName('Total').Value   := TIBQuery(DataSet).FieldByName('Valor').Value - (TIBQuery(DataSet).FieldByName('Vlr_Parcial').Value
                                                       + TIBQuery(DataSet).FieldByName('Descontos').VALUE) ;
     VlrOriginal := TIBQuery(DataSet).FieldByName('Total').Value;

     //Verificando se a ultima baixa será utilizado como parâmetro para o calculo de juros
     if (TIBQuery(DataSet).FieldByName('Data_Ult_Baixa').value < TIBQuery(DataSet).FieldByName('DT_VENCTO').value) then
       Data := TIBQuery(DataSet).FieldByName('DT_VENCTO').Value
     else
       Data := TIBQuery(DataSet).FieldByName('Data_Ult_Baixa').Value;

     //Data_Servidor
     //Dias := trunc(DmaPP.DataCaixa - Data);
     Dias := trunc(DmaPP.Data_Servidor - Data);
     if Dias < 0 then
       Dias := 0;

     TIBQuery(DataSet).FieldByName('ATRASO').Value := Dias ;

     //se havemos de cobrar juros
     if ((Dias > 0) and (dias > dmapp.TOLERANCIA_JUROS)) then
       TIBQuery(DataSet).FieldByName('Juros_Calculadors').Value := arredonda(CALCULAJUROS(Data,DmaPP.Data_Servidor,TIBQuery(DataSet).FieldByName('TOTAL').Value,0 ),2)
     else
       TIBQuery(DataSet).FieldByName('Juros_Calculadors').Value := 0;

     //Não sei pra que esse negócio..
     TIBQuery(DataSet).FieldByName('Selecao').Value := VlrOriginal + TIBQuery(DataSet).FieldByName('JUROS_PARCIAL').value ;

     //explicação deste codigo esta no oncalcfilelds de VerReceberAdm
     TIBQuery(DataSet).FieldByName('Total_Nominal').value := arredonda(TIBQuery(DataSet).FieldByName('Total').value
                                                            + TIBQuery(DataSet).FieldByName('Juros_Calculadors').Value,2) ;

     TIBQuery(DataSet).FieldByName('Juros_Conta').value := Arredonda(TIBQuery(DataSet).FieldByName('Juros_Calculadors').Value,2);
end;

function TdmFinanceiro2.VerificaPagar(codigo, pessoa_fj: integer): integer;
var
  sql: string;
  cont: variant;
begin
  sql := ' select count(*) from fin_baixas_pagar bx where bx.cnpj='+QuotedStr(dmApp.cnpj)+
         ' and bx.codigo_pg = '+IntToStr(codigo)+' and bx.pessoa_fj = '+IntToStr(pessoa_fj);

  cont := RetornaValor(sql);
  if varisnull(cont) then
    cont := 0;

  result := cont;
end;

function TdmFinanceiro2.VerificaReceber(codigo,
  pessoa_fj: integer): integer;
var
  sql: string;
  cont: variant;
begin
  sql := ' select count(*) from fin_baixas_receber bx where bx.cnpj='+QuotedStr(dmApp.cnpj)+
         ' and bx.codigo_cr = '+IntToStr(codigo)+' and bx.pessoa_fj = '+IntToStr(pessoa_fj);

  cont := RetornaValor(sql);
  if varisnull(cont) then
    cont := 0;

  result := cont;
end;


procedure TdmFinanceiro2.RecibosAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TdmFinanceiro2.RecibosBeforeOpen(DataSet: TDataSet);
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

procedure TdmFinanceiro2.CotacoesNewRecord(DataSet: TDataSet);
begin
  {CotacoesDATA.Value  := DmApp.Data_Servidor ;
  CotacoesSIGLA.Value := MoedaSIGLA.Value ;
  CotacoesVALOR.Value := 0;}
end;

procedure TdmFinanceiro2.AcertoReceberCalcFields(DataSet: TDataSet);
Var
   Dias: Integer ;
   juros, VlrOriginal: real;
   Data : TDate;
begin
     //Valor Restante é o valor total
     AcertoReceberSldNominal.Value   := AcertoReceberValor.Value - AcertoReceberVlr_Parcial.Value;


     //Verificando se a ultima baixa será utilizado como parâmetro para o calculo de juros
     if (AcertoReceberData_Ult_Baixa.value < AcertoReceberDT_VENCTO.value) then
       Data := AcertoReceberDT_VENCTO.Value
     else
       Data := AcertoReceberData_Ult_Baixa.Value;


     Dias := trunc(DmaPP.Data_Servidor - Data);
     if Dias < 0 then
       Dias := 0;

     AcertoReceberATRASO.Value := Dias ;

     //se havemos de cobrar juros
     if ((Dias > 0) and (dias > dmapp.TOLERANCIA_JUROS) and (AcertoReceberSldNominal.Value > 0)) then
       AcertoReceberJuros_Calculados.Value := arredonda(CALCULAJUROS(Data,DmaPP.Data_Servidor,AcertoReceberSldNominal.Value,0 ),2)
     else
       AcertoReceberJuros_Calculados.Value := 0;

     //explicação deste codigo esta no oncalcfilelds de VerReceberAdm
     AcertoReceberTotal_Geral.value := arredonda(AcertoReceberSldNominal.value + AcertoReceberJuros_Calculados.Value,2) ;
end;

procedure TdmFinanceiro2.AcertoPagarCalcFields(DataSet: TDataSet);
Var
   Dias: Integer ;
   juros, VlrOriginal: real;
   Data : TDate;
begin
     //Valor Restante é o valor total
     AcertoPagarSldNominal.Value   := AcertoPagarValor.Value - AcertoPagarVlr_Parcial.Value;

     //Verificando se a ultima baixa será utilizado como parâmetro para o calculo de juros
     if (AcertoPagarDT_ULTIMA_BAIXA.value < AcertoPagarDT_VENCTO.value) then
       Data := AcertoPagarDT_VENCTO.Value
     else
       Data := AcertoPagarDT_ULTIMA_BAIXA.Value;


     Dias := trunc(DmaPP.Data_Servidor - Data);
     if Dias < 0 then
       Dias := 0;

     AcertoPagarATRASO.Value := Dias ;

     //se havemos de cobrar juros
     if ((Dias > 0) and (dias > dmapp.TOLERANCIA_JUROS) and (AcertoPagarSldNominal.Value > 0)) then
       AcertoPagarJuros_Calculados.Value := arredonda(CALCULAJUROS(Data,DmaPP.Data_Servidor,AcertoPagarSldNominal.Value,0 ),2)
     else
       AcertoPagarJuros_Calculados.Value := 0;

     //explicação deste codigo esta no oncalcfilelds de VerReceberAdm
     AcertoPagarTotal_Geral.value := arredonda(AcertoPagarSldNominal.value + AcertoPagarJuros_Calculados.Value,2) ;
end;

procedure TdmFinanceiro2.mtbAcertoReceberJurosValidate(Sender: TField);
begin
  mtbAcertoReceberTotal_Geral.value := mtbAcertoReceberSldNominal.value + mtbAcertoReceberMultas.Value + mtbAcertoReceberVariacao.value
                                       + mtbAcertoReceberJuros.value - mtbAcertoReceberDesconto.value;

  mtbAcertoReceberTotal_Baixar.OnValidate := nil;
  if (mtbAcertoReceberSELECIONADO.Value = 'S') then
    frmAct_Contas.TotalReceber :=  frmAct_Contas.TotalReceber - mtbAcertoReceberTOTAL_Baixar.value;


 // frmAct_Contas.TotalReceber :=  frmAct_Contas.TotalReceber + mtbAcertoReceberTOTAL_Baixar.value;


  mtbAcertoReceberTotal_Baixar.value := mtbAcertoReceberSldNominal.value + mtbAcertoReceberMultas.Value + mtbAcertoReceberVariacao.value
                                       + mtbAcertoReceberJuros.value - mtbAcertoReceberDesconto.value;

  mtbAcertoReceberSELECIONADO.Value := 'S';
  frmAct_Contas.TotalReceber :=  frmAct_Contas.TotalReceber - mtbAcertoReceberOld_Total_Baixar.Value;
  frmAct_Contas.TotalReceber :=  frmAct_Contas.TotalReceber + mtbAcertoReceberTOTAL_Baixar.value;
  frmAct_Contas.lblReceber.Caption := FormatFloat('###,##0.00',frmAct_Contas.TotalReceber);
  frmAct_Contas.saldo := frmAct_Contas.TotalReceber - frmAct_Contas.TotalPagar;
  frmAct_Contas.lblSaldoVlr.Caption := FormatFloat('###,##0.00',(frmAct_Contas.Saldo ));
  mtbAcertoReceberTotal_Baixar.OnValidate := mtbAcertoReceberTotal_BaixarValidate;
end;

procedure TdmFinanceiro2.mtbAcertoReceberJurosChange(Sender: TField);
var
  VlrAcrescDescto : real;
begin
  VlrAcrescDescto := mtbAcertoReceberMultas.Value + mtbAcertoReceberVariacao.value
                                       + mtbAcertoReceberJuros.value - mtbAcertoReceberDesconto.value;

  if ((Sender.Value < 0) or (VlrAcrescDescto > mtbAcertoReceberTotal_Baixar.value)) then
  begin
    if (mtbAcertoReceberTotal_Baixar.value >0) then   //
    begin
      Application.MessageBox('O valor definido é inválido. Verifique','Aviso',mb_iconerror + mb_ok);
      Sender.Value := Sender.OldValue;
    end;
  end;
end;

procedure TdmFinanceiro2.mtbAcertoReceberTotal_BaixarValidate(
  Sender: TField);
var
  SaldoAcDec, PctAcerto, SaldoFinal, TotalGeral : real;
begin
  TotalGeral := mtbAcertoReceberSldNominal.value + mtbAcertoReceberOld_Multa.Value + mtbAcertoReceberOld_Variacao.value
                                       + mtbAcertoReceberOld_Juros.value - mtbAcertoReceberOld_Desconto.value;

  if ((TotalGeral <= 0) or (mtbAcertoReceberTotal_Baixar.value <= 0))then
    PctAcerto := 1
  else
    PctAcerto := (mtbAcertoReceberTotal_Baixar.value/TotalGeral);
  //-------Desabilitando o evento validate par a evitar stackoverflow- aqui maluco----------------
  mtbAcertoReceberMultas.OnValidate := nil;
  mtbAcertoReceberVariacao.OnValidate := nil;
  mtbAcertoReceberJuros.OnValidate := nil;
  mtbAcertoReceberDesconto.OnValidate := nil;
  mtbAcertoReceberMultas.OnChange := nil;
  mtbAcertoReceberVariacao.OnChange := nil;
  mtbAcertoReceberJuros.OnChange := nil;
  mtbAcertoReceberDesconto.OnChange := nil;



  frmAct_Contas.TotalReceber :=  frmAct_Contas.TotalReceber - mtbAcertoReceberOld_Total_Baixar.Value;
  frmAct_Contas.TotalReceber :=  frmAct_Contas.TotalReceber + mtbAcertoReceberTOTAL_Baixar.value;

  frmAct_Contas.lblReceber.Caption := FormatFloat('###,##0.00',frmAct_Contas.TotalReceber);
  frmAct_Contas.saldo := frmAct_Contas.TotalReceber - frmAct_Contas.TotalPagar;
  frmAct_Contas.lblSaldoVlr.Caption := FormatFloat('###,##0.00',(frmAct_Contas.Saldo ));
  mtbAcertoReceberOld_Total_Baixar.Value := mtbAcertoReceberTotal_Baixar.Value;

  mtbAcertoReceberMultas.Value := (mtbAcertoReceberOld_Multa.Value * PctAcerto);
  mtbAcertoReceberVariacao.value := (mtbAcertoReceberOld_Variacao.value * PctAcerto);
  mtbAcertoReceberJuros.value := (mtbAcertoReceberOld_Juros.value * PctAcerto);
  mtbAcertoReceberDesconto.value := (mtbAcertoReceberOld_Desconto.value * PctAcerto);
  mtbAcertoReceberSALDO_MOEDA.value := (mtbAcertoReceberSALDO_MOEDA.value * PctAcerto);


  mtbAcertoReceberTotal_Geral.Value := mtbAcertoReceberSldNominal.value + mtbAcertoReceberMultas.Value + mtbAcertoReceberVariacao.value
                                       + mtbAcertoReceberJuros.value - mtbAcertoReceberDesconto.value;
 //-------reabilitando o evento-----------------
  mtbAcertoReceberMultas.OnValidate := mtbAcertoReceberJurosValidate;
  mtbAcertoReceberVariacao.OnValidate := mtbAcertoReceberJurosValidate;
  mtbAcertoReceberJuros.OnValidate := mtbAcertoReceberJurosValidate;
  mtbAcertoReceberDesconto.OnValidate := mtbAcertoReceberJurosValidate;

  mtbAcertoReceberMultas.OnChange := mtbAcertoReceberJurosChange;
  mtbAcertoReceberVariacao.OnChange := mtbAcertoReceberJurosChange;
  mtbAcertoReceberJuros.OnChange := mtbAcertoReceberJurosChange;
  mtbAcertoReceberDesconto.OnChange := mtbAcertoReceberJurosChange;

  if mtbAcertoReceberTotal_Baixar.value > 0 then
    mtbAcertoReceberSelecionado.value := 'S'
  else
    mtbAcertoReceberSelecionado.value := 'N';
end;

procedure TdmFinanceiro2.mtbAcertoPagarTotal_BaixarValidate(
  Sender: TField);
var
  SaldoAcDec, PctAcerto, SaldoFinal, TotalGeral : real;
begin
  TotalGeral := mtbAcertoPagarSldNominal.value + mtbAcertoPagarOld_Multa.Value + mtbAcertoPagarOld_Variacao.value
                                       + mtbAcertoPagarOld_Juros.value - mtbAcertoPagarOld_Desconto.value;

  if ((TotalGeral <= 0) or (mtbAcertoPagarTotal_Baixar.value <= 0))then
    PctAcerto := 1
  else
    PctAcerto := (mtbAcertoPagarTotal_Baixar.value/TotalGeral);
  //-------Desabilitando o evento validate par a evitar stackoverflow-----------------
  mtbAcertoPagarMultas.OnValidate := nil;
  mtbAcertoPagarVariacao.OnValidate := nil;
  mtbAcertoPagarJuros.OnValidate := nil;
  mtbAcertoPagarDesconto.OnValidate := nil;
  mtbAcertoPagarMultas.OnChange := nil;
  mtbAcertoPagarVariacao.OnChange := nil;
  mtbAcertoPagarJuros.OnChange := nil;
  mtbAcertoPagarDesconto.OnChange := nil;


  frmAct_Contas.TotalPagar :=  frmAct_Contas.TotalPagar - mtbAcertoPagarOld_Total_Baixar.Value;
  frmAct_Contas.TotalPagar :=  frmAct_Contas.TotalPagar + mtbAcertoPagarTOTAL_Baixar.value;

  frmAct_Contas.lblPagar.Caption := FormatFloat('###,##0.00',frmAct_Contas.TotalPagar);
  frmAct_Contas.saldo := frmAct_Contas.TotalReceber - frmAct_Contas.TotalPagar;
  frmAct_Contas.lblSaldoVlr.Caption := FormatFloat('###,##0.00',(frmAct_Contas.Saldo ));
  mtbAcertoPagarOld_Total_Baixar.Value := mtbAcertoPagarTotal_Baixar.Value;

  mtbAcertoPagarMultas.Value := (mtbAcertoPagarOld_Multa.Value * PctAcerto);
  mtbAcertoPagarVariacao.value := (mtbAcertoPagarOld_Variacao.value * PctAcerto);
  mtbAcertoPagarJuros.value := (mtbAcertoPagarOld_Juros.value * PctAcerto);
  mtbAcertoPagarDesconto.value := (mtbAcertoPagarOld_Desconto.value * PctAcerto);
  mtbAcertoPagarSALDO_MOEDA.value := (mtbAcertoPagarSALDO_MOEDA.value * PctAcerto);

  mtbAcertoPagarTotal_Geral.Value := mtbAcertoPagarSldNominal.value + mtbAcertoPagarMultas.Value + mtbAcertoPagarVariacao.value
                                       + mtbAcertoPagarJuros.value - mtbAcertoPagarDesconto.value;
 //-------reabilitando o evento-----------------
  mtbAcertoPagarMultas.OnValidate := mtbAcertoPagarJurosValidate;
  mtbAcertoPagarVariacao.OnValidate := mtbAcertoPagarJurosValidate;
  mtbAcertoPagarJuros.OnValidate := mtbAcertoPagarJurosValidate;
  mtbAcertoPagarDesconto.OnValidate := mtbAcertoPagarJurosValidate;

  mtbAcertoPagarMultas.OnChange := mtbAcertoPagarJurosChange;
  mtbAcertoPagarVariacao.OnChange := mtbAcertoPagarJurosChange;
  mtbAcertoPagarJuros.OnChange := mtbAcertoPagarJurosChange;
  mtbAcertoPagarDesconto.OnChange := mtbAcertoPagarJurosChange;


  if mtbAcertoPagarTotal_Baixar.value > 0 then
    mtbAcertoPagarSelecionado.value := 'S'
  else
    mtbAcertoPagarSelecionado.value := 'N';

end;

procedure TdmFinanceiro2.mtbAcertoPagarJUROSValidate(Sender: TField);
begin
  mtbAcertoPagarTotal_Geral.value := mtbAcertoPagarSldNominal.value + mtbAcertoPagarMultas.Value + mtbAcertoPagarVariacao.value
                                     + mtbAcertoPagarJuros.value - mtbAcertoPagarDesconto.value;

  mtbAcertoPagarTotal_Baixar.OnValidate := nil;
  if (mtbAcertoPagarSELECIONADO.Value = 'S') then
    frmAct_Contas.TotalPagar :=  frmAct_Contas.TotalPagar - mtbAcertoPagarTOTAL_Baixar.value;

  mtbAcertoPagarSELECIONADO.value := 'S';
  mtbAcertoPagarTotal_Baixar.value := mtbAcertoPagarSldNominal.value + mtbAcertoPagarMultas.Value + mtbAcertoPagarVariacao.value
                                       + mtbAcertoPagarJuros.value - mtbAcertoPagarDesconto.value;

  frmAct_Contas.TotalPagar :=  frmAct_Contas.TotalPagar + mtbAcertoPagarTOTAL_Baixar.value;
  frmAct_Contas.lblPagar.Caption := FormatFloat('###,##0.00',frmAct_Contas.TotalPagar);
  frmAct_Contas.saldo := frmAct_Contas.TotalReceber - frmAct_Contas.TotalPagar;
  frmAct_Contas.lblSaldoVlr.Caption := FormatFloat('###,##0.00',(frmAct_Contas.Saldo ));

  mtbAcertoPagarTotal_Baixar.OnValidate := mtbAcertoPagarTotal_BaixarValidate;
end;

procedure TdmFinanceiro2.mtbAcertoPagarJUROSChange(Sender: TField);
var
  VlrAcrescDescto : real;
begin
  VlrAcrescDescto := mtbAcertoPagarMultas.Value + mtbAcertoPagarVariacao.value
                                       + mtbAcertoPagarJuros.value - mtbAcertoPagarDesconto.value;

  if ((Sender.Value < 0) or (VlrAcrescDescto > mtbAcertoPagarTotal_Baixar.value)) then
  begin
    if (mtbAcertoPagarTotal_Baixar.value >0) then
    begin
      Application.MessageBox('O valor definido é inválido. Verifique','Aviso',mb_iconerror + mb_ok);
      Sender.Value := Sender.OldValue;
    end;
  end;
end;

procedure TdmFinanceiro2.CM2_COMISSAO_PARCBeforeOpen(DataSet: TDataSet);
begin
  TIBDataSet(DataSet).parambyname('cnpj').value := DmApp.Cnpj ;
end;

procedure TdmFinanceiro2.ImprimeReciboAcerto(Acerto: Integer);
var
  Tipo : string;
begin
  // Imprimindo o recibo do acerto
    with DmSerie_Customizaveis do
    begin
      edtLayoutActRecibo.close;
      edtLayoutActRecibo.parambyname('cnpj').value := dmApp.cnpj;
      edtLayoutActRecibo.Open;

      FrmSeriesCustomizaveis := TFrmSeriesCustomizaveis.Create(Self);
      FrmSeriesCustomizaveis.rptAcerto.Template.DatabaseSettings.Name := edtLayoutActReciboCNPJ.asstring;;
      FrmSeriesCustomizaveis.rptAcerto.Template.LoadFromDatabase;

      with dmCadastros2 do
      begin
        QryAcerto.Close;
        QryAcerto.parambyname('cnpj').value := dmApp.cnpj;
        QryAcerto.parambyname('planilha').value := Acerto;
        QryAcerto.Open;

        if (QryAcertoSaldo.value > 0) then
          tipo := 'R'
        else
          tipo := 'P';

        QryActTTGerado.Close;
        QryActTTGerado.parambyname('cnpj').value := dmApp.cnpj;
        QryActTTGerado.parambyname('acerto').value := Acerto;
        QryActTTGerado.parambyname('tipo').value := Tipo;
        QryActTTGerado.Open;

        QryActCheques.close;
        QryActCheques.parambyname('cnpj').value := dmApp.cnpj;
        QryActCheques.parambyname('acerto').value := Acerto;
        QryActCheques.Open;

        QryActCartao.Close;
        QryActCartao.parambyname('cnpj').value := dmApp.cnpj;
        QryActCartao.parambyname('acerto').value := Acerto;
        QryActCartao.Open;

        QryActMovimento.Close;
        QryActMovimento.parambyname('cnpj').value := dmApp.cnpj;
        QryActMovimento.parambyname('acerto').value := Acerto;
        QryActMovimento.Open;
      end;

      FrmSeriesCustomizaveis.rptAcerto.print;
      FrmSeriesCustomizaveis.free;
      FrmSeriesCustomizaveis :=  nil;
    end;
end;

procedure TdmFinanceiro2.mtbAcertoReceberSELECIONADOValidate(
  Sender: TField);
begin
{   if ((mtbAcertoReceberSELECIONADO.Oldvalue = 'S') and (mtbAcertoReceberSELECIONADO.Newvalue = 'N')) then
     frmAct_Contas.TotalReceber :=  frmAct_Contas.TotalReceber - mtbAcertoReceberTOTAL_Baixar.value
   else
     if ((mtbAcertoReceberSELECIONADO.OldValue = 'N') and (mtbAcertoReceberSELECIONADO.NewValue = 'S')) then
       frmAct_Contas.TotalReceber :=  frmAct_Contas.TotalReceber + mtbAcertoReceberTOTAL_Baixar.value;  }
end;

procedure TdmFinanceiro2.CM2_COMISSAO_PARCSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   if (Sender.Value = 'F') then
     Text := 'Faturadas'
   else if (Sender.Value = 'L') then
     Text := 'Liberadas'
   else if (Sender.Value = 'L') then
     Text := 'Provisionadas';
end;

procedure TdmFinanceiro2.FolhaPagtoPESSOA_FJValidate(Sender: TField);
begin
   with dmFinanceiro do
   begin
     Valida_Cliente.Close ;
     Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;
     Valida_Cliente.Open ;

     If Valida_ClientePESSOA_FJ.isNull then
     begin
       Showmessage ('Cliente Inexistente!');
       Abort;
     end
     else
       FolhaPagtoNOME.Value := Valida_ClienteNOME.Value ;
   end;
end;

procedure TdmFinanceiro2.FolhaPagtoTIPOValidate(Sender: TField);
begin
  if (FolhaPagtoTIPO.Value = 'D') then
    FolhaPagtoVALOR.value := (FolhaPagtoVALOR.value * -1);
end;

procedure TdmFinanceiro2.FolhaPagtoBeforePost(DataSet: TDataSet);
begin
  if ((FolhaPagtoTIPO.Value = 'D') and (FolhaPagtoVALOR.Value > 0)) then
    FolhaPagtoVALOR.value := (FolhaPagtoVALOR.value * -1);

  with dmFinanceiro do
   begin
     Valida_Cliente.Close ;
     Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Cliente.ParamByName ('CODIGO').AsInteger := FolhaPagtoPESSOA_FJ.value ;
     Valida_Cliente.Open ;

     If Valida_ClientePESSOA_FJ.isNull then
     begin
       Showmessage ('Cliente Inexistente!');
       Abort;
     end
     else
       FolhaPagtoNOME.Value := Valida_ClienteNOME.Value ;
   end;
end;

end.


