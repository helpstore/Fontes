   unit Financeiro_Dm;

interface

uses
  Windows, Messages, SysUtils, Classes,IBSQL, Db, IBCustomDataSet,
  IBUpdateSQL, IBStoredProc,   RDprint, IBQuery,graphics, Controls, Forms, Dialogs, Variants,
  ACBrBase, ACBrExtenso;

type
  TDmFinanceiro = class(TDataModule)
    Contas_Receber: TIBDataSet;
    Contas_ReceberCODIGO: TIntegerField;
    Contas_ReceberANO: TSmallintField;
    Contas_ReceberPESSOA_FJ: TIntegerField;
    Contas_ReceberDT_EMISSAO: TDateTimeField;
    Contas_ReceberDT_VENCTO: TDateTimeField;
    Contas_ReceberDT_LANCTO: TDateTimeField;
    Contas_ReceberDOCTO: TIBStringField;
    Contas_ReceberPARCELA: TIBStringField;
    Contas_ReceberHISTORICO: TIBStringField;
    Contas_ReceberVALOR: TFloatField;
    Contas_ReceberBOLETO: TIBStringField;
    Contas_ReceberORIGEM: TIBStringField;
    Contas_ReceberCODIGO_VN: TIntegerField;
    Contas_ReceberANO_VN: TSmallintField;
    Contas_ReceberAVISO: TIntegerField;
    Contas_ReceberDT_AVISO: TDateTimeField;
    Contas_ReceberCNPJ: TIBStringField;
    VerReceber: TIBQuery;
    VerReceberCODIGO: TIntegerField;
    VerReceberANO: TSmallintField;
    VerReceberPESSOA_FJ: TIntegerField;
    VerReceberDOCTO: TIBStringField;
    VerReceberPARCELA: TIBStringField;
    VerReceberHISTORICO: TIBStringField;
    VerReceberVALOR: TIBBCDField;
    VerReceberBOLETO: TIBStringField;
    VerReceberORIGEM: TIBStringField;
    VerReceberCODIGO_VN: TIntegerField;
    VerReceberANO_VN: TSmallintField;
    VerReceberAVISO: TSmallintField;
    VerReceberNOME: TIBStringField;
    VerReceberENDERECO: TIBStringField;
    VerReceberNUMERO: TIBStringField;
    VerReceberCIDADE: TIBStringField;
    VerReceberBAIRRO: TIBStringField;
    VerReceberCEP: TIBStringField;
    VerReceberUF: TIBStringField;
    VerReceberCOD_END: TIntegerField;
    VerReceberCOD_CID: TIntegerField;
    VerReceberCOD_BAI: TIntegerField;
    Geral: TIBQuery;
    VerReceberFONE: TIBStringField;
    VerReceberCPF_CGC: TIBStringField;
    Baixas_Receber: TIBQuery;
    Baixas_ReceberCODIGO: TIntegerField;
    Baixas_ReceberCODIGO_CR: TIntegerField;
    Baixas_ReceberHISTORICO_BX: TIBStringField;
    Baixas_ReceberPLANILHA: TIntegerField;
    Baixas_ReceberTIPO_JUROS: TIBStringField;
    Baixas_ReceberPESSOA_FJ: TIntegerField;
    Baixas_ReceberDOCTO: TIBStringField;
    Baixas_ReceberPARCELA: TIBStringField;
    Baixas_ReceberHISTORICO: TIBStringField;
    Baixas_ReceberBOLETO: TIBStringField;
    Baixas_ReceberORIGEM: TIBStringField;
    Baixas_ReceberCODIGO_VN: TIntegerField;
    Baixas_ReceberAVISO: TIntegerField;
    Baixas_ReceberVALOR: TIBBCDField;
    Baixas_ReceberJUROS: TIBBCDField;
    Baixas_ReceberDESCONTOS: TIBBCDField;
    Baixas_ReceberTAXA_JUROS: TIBBCDField;
    Baixas_ReceberNOME: TIBStringField;
    Baixas_ReceberENDERECO: TIBStringField;
    Baixas_ReceberNUMERO: TIBStringField;
    Baixas_ReceberCIDADE: TIBStringField;
    Baixas_ReceberBAIRRO: TIBStringField;
    Baixas_ReceberCEP: TIBStringField;
    Baixas_ReceberUF: TIBStringField;
    Baixas_ReceberCOD_END: TIntegerField;
    Baixas_ReceberCOD_CID: TIntegerField;
    Baixas_ReceberCOD_BAI: TIntegerField;
    Baixas_ReceberFONE: TIBStringField;
    Baixas_ReceberCPF_CGC: TIBStringField;
    Baixas_ReceberTotal: TFloatField;
    Baixas_ReceberANO: TIntegerField;
    Baixas_ReceberANO_CR: TIntegerField;
    Baixas_ReceberANO_VN: TIntegerField;
    Contas_ReceberSELECIONADO: TIBStringField;
    VerReceberSELECIONADO: TIBStringField;
    Contas_ReceberVLR_PARCIAL: TFloatField;
    VerReceberVLR_PARCIAL: TIBBCDField;
    Baixas_ReceberVLR_PARCIAL: TIBBCDField;
    Contas_ReceberTotal: TFloatField;
    VerReceberTotal: TFloatField;
    Contas_ReceberJUROS_REC: TFloatField;
    VerReceberJUROS_REC: TIBBCDField;
    Baixas_ReceberJUROS_REC: TIBBCDField;
    VerReceberDESCONTOS: TIBBCDField;
    Contas_ReceberDESCONTOS: TFloatField;
    Baixas_ReceberDESCONTOS_REC: TIBBCDField;
    Baixas_ReceberVLR_BAIXA: TIBBCDField;
    Impressora: TRDprint;
    VerReceber_3meses: TIBQuery;
    Receber_Data: TIBQuery;
    Receber_Data_Analitico: TIBQuery;
    Receber_Data_AnaliticoSOMA: TIBBCDField;
    Receber_Data_AnaliticoPESSOA_FJ: TIntegerField;
    Receber_Data_AnaliticoNOME: TIBStringField;
    Receber_Data_AnaliticoENDERECO: TIBStringField;
    Receber_Data_AnaliticoNUMERO: TIBStringField;
    Receber_Data_AnaliticoCIDADE: TIBStringField;
    Receber_Data_AnaliticoBAIRRO: TIBStringField;
    Receber_Data_AnaliticoCEP: TIBStringField;
    Receber_Data_AnaliticoUF: TIBStringField;
    Receber_Data_AnaliticoCOD_END: TIntegerField;
    Receber_Data_AnaliticoCOD_CID: TIntegerField;
    Receber_Data_AnaliticoCOD_BAI: TIntegerField;
    Receber_Data_AnaliticoFONE: TIBStringField;
    Receber_Data_AnaliticoCPF_CGC: TIBStringField;
    Receber_Data_AnaliticoPORCENTAGEM: TIBBCDField;
    Contas_PAGAR: TIBDataSet;
    VerPAGAR: TIBQuery;
    VerPAGARCODIGO: TIntegerField;
    VerPAGARANO: TSmallintField;
    VerPAGARPESSOA_FJ: TIntegerField;
    VerPAGARDOCTO: TIBStringField;
    VerPAGARPARCELA: TIBStringField;
    VerPAGARHISTORICO: TIBStringField;
    VerPAGARVALOR: TIBBCDField;
    VerPAGARBOLETO: TIBStringField;
    VerPAGARORIGEM: TIBStringField;
    VerPAGARAVISO: TSmallintField;
    VerPAGARDT_AVISO: TDateField;
    VerPAGARNOME: TIBStringField;
    VerPAGARENDERECO: TIBStringField;
    VerPAGARNUMERO: TIBStringField;
    VerPAGARCIDADE: TIBStringField;
    VerPAGARBAIRRO: TIBStringField;
    VerPAGARCEP: TIBStringField;
    VerPAGARUF: TIBStringField;
    VerPAGARCOD_END: TIntegerField;
    VerPAGARCOD_CID: TIntegerField;
    VerPAGARCOD_BAI: TIntegerField;
    VerPAGARFONE: TIBStringField;
    VerPAGARCPF_CGC: TIBStringField;
    VerPAGARSELECIONADO: TIBStringField;
    VerPAGARVLR_PARCIAL: TIBBCDField;
    VerPAGARTotal: TFloatField;
    VerPAGARDESCONTOS: TIBBCDField;
    VerPAGARJUROS_PAG: TIBBCDField;
    VerPAGARCODIGO_ENT: TIntegerField;
    VerPAGARANO_ENT: TSmallintField;
    Baixas_PAGAR: TIBQuery;
    Baixas_PAGARCODIGO: TIntegerField;
    Baixas_PAGARHISTORICO_BX: TIBStringField;
    Baixas_PAGARPLANILHA: TIntegerField;
    Baixas_PAGARTIPO_JUROS: TIBStringField;
    Baixas_PAGARPESSOA_FJ: TIntegerField;
    Baixas_PAGARDOCTO: TIBStringField;
    Baixas_PAGARPARCELA: TIBStringField;
    Baixas_PAGARHISTORICO: TIBStringField;
    Baixas_PAGARBOLETO: TIBStringField;
    Baixas_PAGARORIGEM: TIBStringField;
    Baixas_PAGARAVISO: TIntegerField;
    Baixas_PAGARVALOR: TIBBCDField;
    Baixas_PAGARJUROS: TIBBCDField;
    Baixas_PAGARDESCONTOS: TIBBCDField;
    Baixas_PAGARTAXA_JUROS: TIBBCDField;
    Baixas_PAGARNOME: TIBStringField;
    Baixas_PAGARENDERECO: TIBStringField;
    Baixas_PAGARNUMERO: TIBStringField;
    Baixas_PAGARCIDADE: TIBStringField;
    Baixas_PAGARBAIRRO: TIBStringField;
    Baixas_PAGARCEP: TIBStringField;
    Baixas_PAGARUF: TIBStringField;
    Baixas_PAGARCOD_END: TIntegerField;
    Baixas_PAGARCOD_CID: TIntegerField;
    Baixas_PAGARCOD_BAI: TIntegerField;
    Baixas_PAGARFONE: TIBStringField;
    Baixas_PAGARCPF_CGC: TIBStringField;
    Baixas_PAGARTotal: TFloatField;
    Baixas_PAGARANO: TIntegerField;
    Baixas_PAGARVLR_PARCIAL: TIBBCDField;
    Baixas_PAGARVLR_BAIXA: TIBBCDField;
    Baixas_PAGARCODIGO_PG: TIntegerField;
    Baixas_PAGARANO_PG: TIntegerField;
    Baixas_PAGARJUROS_PAG: TIBBCDField;
    Baixas_PAGARDESCONTOS_PAG: TIBBCDField;
    Baixas_PAGARCODIGO_ENT: TIntegerField;
    Baixas_PAGARANO_ENT: TIntegerField;
    VerPAGAR_3meses: TIBQuery;
    VerReceber_3mesesCODIGO: TIntegerField;
    VerReceber_3mesesANO: TSmallintField;
    VerReceber_3mesesPESSOA_FJ: TIntegerField;
    VerReceber_3mesesDT_EMISSAO: TDateField;
    VerReceber_3mesesDT_VENCTO: TDateField;
    VerReceber_3mesesDT_LANCTO: TDateField;
    VerReceber_3mesesDOCTO: TIBStringField;
    VerReceber_3mesesPARCELA: TIBStringField;
    VerReceber_3mesesHISTORICO: TIBStringField;
    VerReceber_3mesesVALOR: TIBBCDField;
    VerReceber_3mesesVLR_PARCIAL: TIBBCDField;
    VerReceber_3mesesJUROS_REC: TIBBCDField;
    VerReceber_3mesesDESCONTOS: TIBBCDField;
    VerReceber_3mesesBOLETO: TIBStringField;
    VerReceber_3mesesORIGEM: TIBStringField;
    VerReceber_3mesesCODIGO_VN: TIntegerField;
    VerReceber_3mesesANO_VN: TSmallintField;
    VerReceber_3mesesAVISO: TSmallintField;
    VerReceber_3mesesDT_AVISO: TDateField;
    VerReceber_3mesesNOME: TIBStringField;
    VerReceber_3mesesENDERECO: TIBStringField;
    VerReceber_3mesesNUMERO: TIBStringField;
    VerReceber_3mesesCIDADE: TIBStringField;
    VerReceber_3mesesBAIRRO: TIBStringField;
    VerReceber_3mesesCEP: TIBStringField;
    VerReceber_3mesesUF: TIBStringField;
    VerReceber_3mesesCOD_END: TIntegerField;
    VerReceber_3mesesCOD_CID: TIntegerField;
    VerReceber_3mesesCOD_BAI: TIntegerField;
    VerReceber_3mesesFONE: TIBStringField;
    VerReceber_3mesesCPF_CGC: TIBStringField;
    VerReceber_3mesesSELECIONADO: TIBStringField;
    VerPAGAR_3mesesCODIGO: TIntegerField;
    VerPAGAR_3mesesANO: TSmallintField;
    VerPAGAR_3mesesPESSOA_FJ: TIntegerField;
    VerPAGAR_3mesesDT_EMISSAO: TDateField;
    VerPAGAR_3mesesDT_VENCTO: TDateField;
    VerPAGAR_3mesesDT_LANCTO: TDateField;
    VerPAGAR_3mesesDOCTO: TIBStringField;
    VerPAGAR_3mesesPARCELA: TIBStringField;
    VerPAGAR_3mesesHISTORICO: TIBStringField;
    VerPAGAR_3mesesVALOR: TIBBCDField;
    VerPAGAR_3mesesVLR_PARCIAL: TIBBCDField;
    VerPAGAR_3mesesJUROS_PAG: TIBBCDField;
    VerPAGAR_3mesesDESCONTOS: TIBBCDField;
    VerPAGAR_3mesesBOLETO: TIBStringField;
    VerPAGAR_3mesesORIGEM: TIBStringField;
    VerPAGAR_3mesesCODIGO_ENT: TIntegerField;
    VerPAGAR_3mesesANO_ENT: TSmallintField;
    VerPAGAR_3mesesAVISO: TSmallintField;
    VerPAGAR_3mesesDT_AVISO: TDateField;
    VerPAGAR_3mesesNOME: TIBStringField;
    VerPAGAR_3mesesENDERECO: TIBStringField;
    VerPAGAR_3mesesNUMERO: TIBStringField;
    VerPAGAR_3mesesCIDADE: TIBStringField;
    VerPAGAR_3mesesBAIRRO: TIBStringField;
    VerPAGAR_3mesesCEP: TIBStringField;
    VerPAGAR_3mesesUF: TIBStringField;
    VerPAGAR_3mesesCOD_END: TIntegerField;
    VerPAGAR_3mesesCOD_CID: TIntegerField;
    VerPAGAR_3mesesCOD_BAI: TIntegerField;
    VerPAGAR_3mesesFONE: TIBStringField;
    VerPAGAR_3mesesCPF_CGC: TIBStringField;
    VerPAGAR_3mesesSELECIONADO: TIBStringField;
    PAGAR_Data_Analitico: TIBQuery;
    PAGAR_Data_AnaliticoSOMA: TIBBCDField;
    PAGAR_Data_AnaliticoDATA: TDateField;
    PAGAR_Data_AnaliticoPESSOA_FJ: TIntegerField;
    PAGAR_Data_AnaliticoNOME: TIBStringField;
    PAGAR_Data_AnaliticoENDERECO: TIBStringField;
    PAGAR_Data_AnaliticoNUMERO: TIBStringField;
    PAGAR_Data_AnaliticoCIDADE: TIBStringField;
    PAGAR_Data_AnaliticoBAIRRO: TIBStringField;
    PAGAR_Data_AnaliticoCEP: TIBStringField;
    PAGAR_Data_AnaliticoUF: TIBStringField;
    PAGAR_Data_AnaliticoCOD_END: TIntegerField;
    PAGAR_Data_AnaliticoCOD_CID: TIntegerField;
    PAGAR_Data_AnaliticoCOD_BAI: TIntegerField;
    PAGAR_Data_AnaliticoFONE: TIBStringField;
    PAGAR_Data_AnaliticoCPF_CGC: TIBStringField;
    PAGAR_Data_AnaliticoPORCENTAGEM: TIBBCDField;
    Pagar_Data: TIBQuery;
    Pagar_DataSOMA: TIBBCDField;
    Pagar_DataDATA: TDateField;
    Pagar_DataPORCENTAGEM: TIBBCDField;
    VerFaturas: TIBQuery;
    VerFaturasCODIGO: TIntegerField;
    VerFaturasPESSOA_FJ: TIntegerField;
    VerFaturasVALOR: TIBBCDField;
    VerFaturasDESCONTO: TIBBCDField;
    VerFaturasJUROS: TIBBCDField;
    VerFaturasHISTORICO: TIBStringField;
    VerFaturasNOME: TIBStringField;
    VerFaturasENDERECO: TIBStringField;
    VerFaturasNUMERO: TIBStringField;
    VerFaturasCIDADE: TIBStringField;
    VerFaturasBAIRRO: TIBStringField;
    VerFaturasCEP: TIBStringField;
    VerFaturasUF: TIBStringField;
    VerFaturasCOD_END: TIntegerField;
    VerFaturasCOD_BAI: TIntegerField;
    VerFaturasCOD_CID: TIntegerField;
    VerFaturasFONE: TIBStringField;
    VerFaturasCPF_CGC: TIBStringField;
    VerFaturasTotal: TFloatField;
    Faturas: TIBDataSet;
    FaturasCNPJ: TIBStringField;
    FaturasCODIGO: TIntegerField;
    FaturasDATA: TDateTimeField;
    FaturasDESCONTO: TFloatField;
    FaturasHISTORICO: TIBStringField;
    FaturasJUROS: TFloatField;
    FaturasPESSOA_FJ: TIntegerField;
    FaturasVALOR: TFloatField;
    FaturasVENCIMENTO: TDateTimeField;
    Contas_ReceberFATURA: TIntegerField;
    FaturasTotal: TFloatField;
    VerReceberTIPO_DOCTO: TIBStringField;
    VerReceber_3mesesTIPO_DOCTO: TIBStringField;
    Contas_ReceberTIPO_DOCTO: TIBStringField;
    SelPessoasFJ: TIBQuery;
    SelPessoasFJCODIGO: TIntegerField;
    SelPessoasFJNOME_RAZAO: TIBStringField;
    SelPessoasFJFONE: TIBStringField;
    SelPessoasFJPESSOA_FJ: TIntegerField;
    SelPessoasFJFANTASIA: TIBStringField;
    SelPessoasFJCPF_CGC: TIBStringField;
    SelFornecedor: TIBQuery;
    SelFornecedorPESSOA_FJ: TIntegerField;
    SelFornecedorNOME_RAZAO: TIBStringField;
    SelFornecedorFONE: TIBStringField;
    SelFornecedorFANTASIA: TIBStringField;
    SelFornecedorCPF_CGC: TIBStringField;
    Faturas_Carregar: TIBQuery;
    Faturas_CarregarCODIGO: TIntegerField;
    Faturas_CarregarDATA: TDateTimeField;
    Faturas_CarregarFECHADA: TIBStringField;
    Faturas_CarregarPESSOA_FJ: TIntegerField;
    Faturas_CarregarUSUARIO: TIntegerField;
    Faturas_CarregarVENDEDOR: TIntegerField;
    Faturas_CarregarNUM_NF: TIntegerField;
    Faturas_CarregarORCAMENTO: TIntegerField;
    Faturas_CarregarNOME: TIBStringField;
    Faturas_CarregarDESC_ACRES: TIBBCDField;
    Faturas_CarregarTOTAL: TIBBCDField;
    Faturas_CarregarVOLUME: TIBBCDField;
    Faturas_CarregarPESO: TIBBCDField;
    SelPessoasFJBLOQUEADO: TIBStringField;
    SelPessoasFJCLASSIFICACAO: TIBStringField;
    Faturas_Carregadas: TIBQuery;
    Faturas_CarregadasCODIGO: TIntegerField;
    Faturas_CarregadasDATA: TDateTimeField;
    Faturas_CarregadasFECHADA: TIBStringField;
    Faturas_CarregadasPESSOA_FJ: TIntegerField;
    Faturas_CarregadasUSUARIO: TIntegerField;
    Faturas_CarregadasVENDEDOR: TIntegerField;
    Faturas_CarregadasNUM_NF: TIntegerField;
    Faturas_CarregadasORCAMENTO: TIntegerField;
    Faturas_CarregadasNOME: TIBStringField;
    Faturas_CarregadasDESC_ACRES: TIBBCDField;
    Faturas_CarregadasTOTAL: TIBBCDField;
    Faturas_CarregadasVOLUME: TIBBCDField;
    Faturas_CarregadasPESO: TIBBCDField;
    SelPessoasFJUF: TIBStringField;
    SelPessoasFJEMPRESA: TIBStringField;
    Baixas_PagarDT_BAIXA: TDateField;
    Baixas_PagarDT_EMISSAO: TDateField;
    Baixas_PagarDT_VENCTO: TDateField;
    Baixas_PagarDT_LANCTO: TDateField;
    Baixas_PagarDT_AVISO: TDateField;
    Baixas_ReceberDT_BAIXA: TDateField;
    Baixas_ReceberDT_EMISSAO: TDateField;
    Baixas_ReceberDT_VENCTO: TDateField;
    Baixas_ReceberDT_LANCTO: TDateField;
    Baixas_ReceberDT_AVISO: TDateField;
    SelCentro: TIBQuery;
    SelCentroCODIGO: TIntegerField;
    SelCentroNOME: TIBStringField;
    Contas_ReceberNUMBOLETO: TIntegerField;
    Contas_ReceberNOME: TIBStringField;
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
    Valida_Fornecedor: TIBQuery;
    Valida_FornecedorPESSOA_FJ: TIntegerField;
    Valida_FornecedorNOME: TIBStringField;
    SelFornecedorEMPRESA: TIBStringField;
    SelFornecedorCODIGO: TIntegerField;
    SelFornecedorUF: TIBStringField;
    VerPagarCENTRO_CUSTO: TIntegerField;
    VerPagarNOME_CENTRO: TIBStringField;
    Baixas_PagarCENTRO_CUSTO: TIntegerField;
    Baixas_PagarNOME_CENTRO: TIBStringField;
    FaturasNOME: TIBStringField;
    FaturasBAIXADA: TIBStringField;
    SelBoleto: TIBQuery;
    SelBoletoACEITE_ALT: TIntegerField;
    SelBoletoACEITE_DST: TIntegerField;
    SelBoletoBANCO: TIBStringField;
    SelBoletoDATA_ALT: TIntegerField;
    SelBoletoDATA_DST: TIntegerField;
    SelBoletoDOCUMENTO_ALT: TIntegerField;
    SelBoletoDOCUMENTO_DST: TIntegerField;
    SelBoletoDTPROCESSAMENTO_ALT: TIntegerField;
    SelBoletoDTPROCESSAMENTO_DST: TIntegerField;
    SelBoletoESPECIE_ALT: TIntegerField;
    SelBoletoESPECIE_DST: TIntegerField;
    SelBoletoINSTRUCOES_ALT: TIntegerField;
    SelBoletoINSTRUCOES_DST: TIntegerField;
    SelBoletoSACADO_ALT: TIntegerField;
    SelBoletoSACADO_DST: TIntegerField;
    SelBoletoTAMANHOPAGINA: TIntegerField;
    SelBoletoVALOR_ALT: TIntegerField;
    SelBoletoVALOR_DST: TIntegerField;
    SelBoletoVENCIMENTO_ALT: TIntegerField;
    SelBoletoVENCIMENTO_DST: TIntegerField;
    Boleto: TRDprint;
    SelPlano: TIBQuery;
    SelPlanoCNPJ: TIBStringField;
    SelPlanoCONTA: TIntegerField;
    SelPlanoCODIGO: TIBStringField;
    SelPlanoCONTAPAI: TIBStringField;
    SelPlanoNOME: TIBStringField;
    SelPlanoBANCO: TIBStringField;
    Contas_ReceberNUMDUPLICATA: TIntegerField;
    VerReceberNUMDUPLICATA: TIntegerField;
    VerReceberNUMBOLETO: TIntegerField;
    VerReceber_3mesesNUMDUPLICATA: TIntegerField;
    VerReceber_3mesesNUMBOLETO: TIntegerField;
    VerReceberConvenio: TIBQuery;
    VerReceberConvenioCODIGO: TIntegerField;
    VerReceberConvenioANO: TSmallintField;
    VerReceberConvenioPESSOA_FJ: TIntegerField;
    VerReceberConvenioDOCTO: TIBStringField;
    VerReceberConvenioPARCELA: TIBStringField;
    VerReceberConvenioHISTORICO: TIBStringField;
    VerReceberConvenioVALOR: TIBBCDField;
    VerReceberConvenioBOLETO: TIBStringField;
    VerReceberConvenioORIGEM: TIBStringField;
    VerReceberConvenioCODIGO_VN: TIntegerField;
    VerReceberConvenioANO_VN: TSmallintField;
    VerReceberConvenioAVISO: TSmallintField;
    VerReceberConvenioENDERECO: TIBStringField;
    VerReceberConvenioNUMERO: TIBStringField;
    VerReceberConvenioCIDADE: TIBStringField;
    VerReceberConvenioBAIRRO: TIBStringField;
    VerReceberConvenioCEP: TIBStringField;
    VerReceberConvenioUF: TIBStringField;
    VerReceberConvenioCOD_END: TIntegerField;
    VerReceberConvenioCOD_CID: TIntegerField;
    VerReceberConvenioCOD_BAI: TIntegerField;
    VerReceberConvenioFONE: TIBStringField;
    VerReceberConvenioCPF_CGC: TIBStringField;
    VerReceberConvenioSELECIONADO: TIBStringField;
    VerReceberConvenioVLR_PARCIAL: TIBBCDField;
    VerReceberConvenioTotal: TFloatField;
    VerReceberConvenioJUROS_REC: TIBBCDField;
    VerReceberConvenioDESCONTOS: TIBBCDField;
    VerReceberConvenioTIPO_DOCTO: TIBStringField;
    VerReceberConvenioNUMDUPLICATA: TIntegerField;
    VerReceberConvenioNUMBOLETO: TIntegerField;
    VerReceberConvenioCONVENIADO: TIntegerField;
    VerReceberConvenioNOMECONVENIADO: TIBStringField;
    VerReceberConvenioCPF_CGCCONVENIADO: TIBStringField;
    VerPagarDUPLICATA: TIBStringField;
    VerPagarCONFERIDA: TIBStringField;
    Baixas_PagarDUPLICATA: TIBStringField;
    Baixas_PagarCONFERIDA: TIBStringField;
    Baixas_ReceberFATURA: TIntegerField;
    Baixas_ReceberNUMBOLETO: TIntegerField;
    Baixas_ReceberNUMDUPLICATA: TIntegerField;
    Ficha_Venda: TIBQuery;
    Ficha_VendaPRODUTO: TIBStringField;
    Ficha_VendaGRUPO: TIntegerField;
    Ficha_VendaSEQUENCIA: TSmallintField;
    Ficha_VendaQUANTIDADE: TIBBCDField;
    Ficha_VendaPRC_UNITARIO: TIBBCDField;
    Ficha_VendaPRC_CUSTO: TIBBCDField;
    Ficha_VendaICM: TIBBCDField;
    Ficha_VendaICM_SUBS: TIBBCDField;
    Ficha_VendaIPI: TIBBCDField;
    Ficha_VendaVOLUME: TIBBCDField;
    Ficha_VendaPESO: TIBBCDField;
    Ficha_VendaDESCONTO: TIBBCDField;
    Ficha_VendaPORC_DESC: TIBBCDField;
    Ficha_VendaUNIDADE: TIBStringField;
    Ficha_VendaPRC_UNIT_ORIGINAL: TIBBCDField;
    Ficha_VendaNOME_PRODUTO: TIBStringField;
    Ficha_VendaALIQUOTA: TIBStringField;
    Ficha_VendaPRODUTOFIS: TIBStringField;
    Ficha_VendaNOME_FIS: TIBStringField;
    Ficha_VendaCTE: TIntegerField;
    Ficha_VendaCTIE: TIntegerField;
    Ficha_VendaORIGEM: TIntegerField;
    Ficha_VendaREDUCAO: TIntegerField;
    Ficha_VendaSUBUNIDADE: TIntegerField;
    Ficha_VendaTotal: TFloatField;
    FaturasBOLETO: TIBStringField;
    FaturasBANCO: TIBStringField;
    SelBanco: TIBQuery;
    SelBancoBOLETO: TIntegerField;
    SelBancoCODIGO: TIBStringField;
    SelBancoNOME: TIBStringField;
    VerFatura: TIBQuery;
    VerFaturaCODIGO: TIntegerField;
    VerFaturaPESSOA_FJ: TIntegerField;
    VerFaturaVALOR: TIBBCDField;
    VerFaturaDESCONTO: TIBBCDField;
    VerFaturaJUROS: TIBBCDField;
    VerFaturaHISTORICO: TIBStringField;
    VerFaturaNOME: TIBStringField;
    VerFaturaENDERECO: TIBStringField;
    VerFaturaNUMERO: TIBStringField;
    VerFaturaCIDADE: TIBStringField;
    VerFaturaBAIRRO: TIBStringField;
    VerFaturaCEP: TIBStringField;
    VerFaturaUF: TIBStringField;
    VerFaturaCOD_END: TIntegerField;
    VerFaturaCOD_BAI: TIntegerField;
    VerFaturaCOD_CID: TIntegerField;
    VerFaturaFONE: TIBStringField;
    VerFaturaCPF_CGC: TIBStringField;
    VerFaturaTotal: TFloatField;
    VerFaturaBOLETO: TIBStringField;
    VerFaturaBANCO: TIBStringField;
    VerReceberFATURA: TIntegerField;
    FaturasTIPO: TIBStringField;
    FaturasENVIADA: TIBStringField;
    VerFaturaTIPO: TIBStringField;
    VerFaturaENVIADA: TIBStringField;
    FaturasOBS: TIBStringField;
    VerFaturaOBS: TIBStringField;
    VERFATURASBAIXADAS: TIBQuery;
    VERFATURASBAIXADASCODIGO: TIntegerField;
    VERFATURASBAIXADASPESSOA_FJ: TIntegerField;
    VERFATURASBAIXADASDATA: TDateField;
    VERFATURASBAIXADASVALOR: TIBBCDField;
    VERFATURASBAIXADASDESCONTO: TIBBCDField;
    VERFATURASBAIXADASJUROS: TIBBCDField;
    VERFATURASBAIXADASVENCIMENTO: TDateField;
    VERFATURASBAIXADASHISTORICO: TIBStringField;
    VERFATURASBAIXADASNOME: TIBStringField;
    VERFATURASBAIXADASENDERECO: TIBStringField;
    VERFATURASBAIXADASNUMERO: TIBStringField;
    VERFATURASBAIXADASCIDADE: TIBStringField;
    VERFATURASBAIXADASBAIRRO: TIBStringField;
    VERFATURASBAIXADASCEP: TIBStringField;
    VERFATURASBAIXADASUF: TIBStringField;
    VERFATURASBAIXADASCOD_END: TIntegerField;
    VERFATURASBAIXADASCOD_BAI: TIntegerField;
    VERFATURASBAIXADASCOD_CID: TIntegerField;
    VERFATURASBAIXADASFONE: TIBStringField;
    VERFATURASBAIXADASCPF_CGC: TIBStringField;
    VERFATURASBAIXADASTotal: TFloatField;
    VERFATURASBAIXADASBOLETO: TIBStringField;
    VERFATURASBAIXADASBANCO: TIBStringField;
    VERFATURASBAIXADASTIPO: TIBStringField;
    VERFATURASBAIXADASENVIADA: TIBStringField;
    VERFATURASBAIXADASOBS: TIBStringField;
    Administradora: TIBDataSet;
    AdministradoraCNPJ: TIBStringField;
    AdministradoraCODIGO: TIntegerField;
    AdministradoraDIASREEMBOLSO: TIntegerField;
    AdministradoraNOME: TIBStringField;
    AdministradoraTAXA: TFloatField;
    Cheque: TIBDataSet;
    ChequeCNPJ: TIBStringField;
    ChequeAGENCIA: TIBStringField;
    ChequeBANCO: TIBStringField;
    ChequeCHEQUE: TIBStringField;
    ChequeCONCILIADO: TIBStringField;
    ChequeCONTA: TIBStringField;
    ChequeEMISSAO: TDateTimeField;
    ChequeHISTORICO: TIBStringField;
    ChequePESSOA_FJ: TIntegerField;
    ChequePRE_DATE: TDateTimeField;
    ChequeVALOR: TFloatField;
    ChequeVENDA: TIntegerField;
    ChequeNOME: TIBStringField;
    ChequeDATA_CONCILIACAO: TDateTimeField;
    Moeda: TIBDataSet;
    MoedaNOME: TIBStringField;
    MoedaSIGLA: TIBStringField;
    Cotacoes: TIBDataSet;
    CotacoesDATA: TDateTimeField;
    CotacoesSIGLA: TIBStringField;
    CotacoesVALOR: TFloatField;
    DsMoeda: TDataSource;
    ChequeTIPO: TIBStringField;
    ChequeDATA_ACERTO: TDateTimeField;
    AdministradoraTAXA_PARCELADO: TFloatField;
    AdministradoraTAXA_DEBITO: TFloatField;
    ChequePLANILHA: TIntegerField;
    Ver_Valores_Adicionais: TIBQuery;
    Ver_Valores_AdicionaisCNPJ: TIBStringField;
    Ver_Valores_AdicionaisCODIGO: TIntegerField;
    Ver_Valores_AdicionaisDOCUMENTO: TIBStringField;
    Ver_Valores_AdicionaisHISTORICO: TIBStringField;
    Ver_Valores_AdicionaisVALOR: TFloatField;
    Ver_NfCf_Venda: TIBStoredProc;
    SelFatura_Futura: TIBQuery;
    SelFatura_FuturaCODIGO: TIntegerField;
    SelFatura_FuturaFECHADA: TIBStringField;
    SelFatura_FuturaHISTORICO: TIBStringField;
    SelFatura_FuturaPESSOA_FJ: TIntegerField;
    SelFatura_FuturaUSUARIO: TIntegerField;
    SelFatura_FuturaVENDEDOR: TIntegerField;
    SelFatura_FuturaNUM_NF: TIntegerField;
    SelFatura_FuturaNUM_CUPOM: TIntegerField;
    SelFatura_FuturaNATUREZA: TIntegerField;
    SelFatura_FuturaTIPO_VENDA: TIBStringField;
    SelFatura_FuturaNOME_CONSUMIDOR: TIBStringField;
    SelFatura_FuturaORCAMENTO: TIntegerField;
    SelFatura_FuturaLOCAL: TIntegerField;
    SelFatura_FuturaTOTAL: TIBBCDField;
    SelFatura_FuturaDESC_ACRES: TIBBCDField;
    SelFatura_FuturaOBSERVACAO: TIBStringField;
    SelFatura_FuturaPESSOA_RAZAO: TIBStringField;
    SelFatura_FuturaNOME_NATUREZA: TIBStringField;
    SelFatura_FuturaENVIADA_CX: TIBStringField;
    SelFatura_FuturaFORMA_PGTO: TIntegerField;
    SelFatura_FuturaPROPRIEDADE: TIntegerField;
    SelFatura_FuturaCONVENIADO: TIntegerField;
    SelFatura_FuturaTIPO_DOCTO: TIBStringField;
    SelFatura_FuturaLOCAL_COBRANCA: TIntegerField;
    SelFatura_FuturaENTRADA: TIBBCDField;
    SelFatura_FuturaDINHEIRO: TIBBCDField;
    SelFatura_FuturaCHEQUE: TIBBCDField;
    SelFatura_FuturaCARTAO: TIBBCDField;
    SelFatura_FuturaTICKET: TIBBCDField;
    SelFatura_FuturaVLRLIQUIDO: TIBBCDField;
    SelFatura_FuturaVLR_PARC_LC: TIBBCDField;
    SelFatura_FuturaTERCEIRO: TIntegerField;
    SelFatura_FuturaCARGA: TIntegerField;
    SelFatura_FuturaVOLUME: TIBBCDField;
    SelFatura_FuturaPESO: TIBBCDField;
    SelFatura_FuturaREQUISICAO: TIBStringField;
    SelFatura_FuturaDESCRICAO: TBlobField;
    SelFatura_FuturaNOME_FORMA: TIBStringField;
    SelFatura_FuturaFATURA_FUTURA: TIBStringField;
    SelFatura_FuturaNOME_VENDEDOR: TIBStringField;
    SelFatura_FuturaCONTA_CAIXA: TIntegerField;
    SelFatura_FuturaCANCELADA: TIBStringField;
    SelFatura_FuturaBASE_ICM_SUBST: TIBBCDField;
    SelFatura_FuturaVALOR_ICM_SUBST: TIBBCDField;
    SelFatura_FuturaFRETE: TIBBCDField;
    SelFatura_FuturaSEGURO: TIBBCDField;
    SelFatura_FuturaDESPESAS: TIBBCDField;
    SelFatura_FuturaIPI: TIBBCDField;
    SelFatura_FuturaTOTAL_NOTA: TIBBCDField;
    SelFatura_FuturaSELECIONADA: TIBStringField;
    SelFatura_FuturaCPF_CGC: TIBStringField;
    Manutencao_Fatura: TIBQuery;
    UpdFatura: TIBUpdateSQL;
    Manutencao_FaturaCNPJ: TIBStringField;
    Manutencao_FaturaCODIGO: TIntegerField;
    Manutencao_FaturaDATA: TDateTimeField;
    Manutencao_FaturaDESCONTO: TFloatField;
    Manutencao_FaturaHISTORICO: TIBStringField;
    Manutencao_FaturaJUROS: TFloatField;
    Manutencao_FaturaPESSOA_FJ: TIntegerField;
    Manutencao_FaturaVALOR: TFloatField;
    Manutencao_FaturaVENCIMENTO: TDateTimeField;
    Manutencao_FaturaNOME: TIBStringField;
    Manutencao_FaturaBAIXADA: TIBStringField;
    Manutencao_FaturaBOLETO: TIBStringField;
    Manutencao_FaturaBANCO: TIBStringField;
    Manutencao_FaturaTIPO: TIBStringField;
    Manutencao_FaturaENVIADA: TIBStringField;
    Manutencao_FaturaOBS: TIBStringField;
    Manutencao_FaturaTotal: TFloatField;
    VerFaturasBANCO: TIBStringField;
    VerFaturasENVIADA: TIBStringField;
    VerFaturasTIPO: TIBStringField;
    VerFaturaAGRUPADORA: TIntegerField;
    VERFATURASBAIXADASAGRUPADORA: TIntegerField;
    Manutencao_FaturaAGRUPADORA: TIntegerField;
    VerFaturaNOME_BANCO: TIBStringField;
    Manutencao_FaturaDUPLICATA: TIBStringField;
    VERFATURASBAIXADASDUPLICATA: TIBStringField;
    VerFaturaDUPLICATA: TIBStringField;
    FaturasDUPLICATA: TIBStringField;
    VerReceberPARCIAL: TIBBCDField;
    VerFaturasNome_Banco: TStringField;
    VerFaturasSituacao: TStringField;
    VerFaturasDUPLICATA: TIBStringField;
    VerFaturasOBS: TIBStringField;
    Cheque_Ctb: TIBDataSet;
    Cheque_CtbCNPJ: TIBStringField;
    Cheque_CtbCONTA: TIntegerField;
    Cheque_CtbCONTABILIDADE: TIBStringField;
    Cheque_CtbDATA: TDateTimeField;
    Cheque_CtbHISTORICO: TIBStringField;
    Cheque_CtbIMPRESSO: TIBStringField;
    Cheque_CtbNOME: TIBStringField;
    Cheque_CtbORIGEM: TIBStringField;
    Cheque_CtbPESSOA_FJ: TIntegerField;
    Cheque_CtbPLANILHA: TIntegerField;
    Cheque_CtbVALOR: TFloatField;
    Conf_Cheque: TIBDataSet;
    Conf_ChequeALTURA: TIntegerField;
    Conf_ChequeANOALT: TIntegerField;
    Conf_ChequeANODST: TIntegerField;
    Conf_ChequeCIDALT: TIntegerField;
    Conf_ChequeCIDDST: TIntegerField;
    Conf_ChequeCONTA: TIntegerField;
    Conf_ChequeDESCRICAO: TIBStringField;
    Conf_ChequeDIAALT: TIntegerField;
    Conf_ChequeDIADST: TIntegerField;
    Conf_ChequeDISTANCIA: TIntegerField;
    Conf_ChequeEXTENSOALT: TIntegerField;
    Conf_ChequeEXTENSODST: TIntegerField;
    Conf_ChequeFAVALT: TIntegerField;
    Conf_ChequeFAVDST: TIntegerField;
    Conf_ChequeFAVORECIDO: TIBStringField;
    Conf_ChequeMESALT: TIntegerField;
    Conf_ChequeMESDST: TIntegerField;
    Conf_ChequeNOME: TIBStringField;
    Conf_ChequePRECISAO: TIBStringField;
    Conf_ChequeVALORALT: TIntegerField;
    Conf_ChequeVALORDST: TIntegerField;
    SelPlanoULTIMO_CHEQUE: TIntegerField;
    ChequeDIGITO_AGENCIA: TIBStringField;
    ChequeDIGITO_CHEQUE: TIBStringField;
    Motivo_Devolucao: TIBDataSet;
    Motivo_DevolucaoCNPJ: TIBStringField;
    Motivo_DevolucaoCODIGO: TIntegerField;
    Motivo_DevolucaoNOME: TIBStringField;
    SelMotivos: TIBQuery;
    SelMotivosCNPJ: TIBStringField;
    SelMotivosCODIGO: TIntegerField;
    SelMotivosNOME: TIBStringField;
    SelBoletoPORTA_IMPRESSORA: TIBStringField;
    Baixas_ReceberAtraso: TFloatField;
    Faturas_Parcial: TIBDataSet;
    Faturas_ParcialCNPJ: TIBStringField;
    Faturas_ParcialCODIGO: TIntegerField;
    Faturas_ParcialHISTORICO: TIBStringField;
    Faturas_ParcialSEQUENCIA: TIntegerField;
    Faturas_ParcialVALOR: TFloatField;
    Faturas_ParcialDATA_CAIXA: TDateTimeField;
    Faturas_ParcialUSUARIO: TIntegerField;
    Faturas_ParcialCONTA: TIntegerField;
    BAIXAS_PARCIAIS_FATURAS: TIBQuery;
    BAIXAS_PARCIAIS_FATURASSEQUENCIA: TIntegerField;
    BAIXAS_PARCIAIS_FATURASHISTORICO: TIBStringField;
    BAIXAS_PARCIAIS_FATURASVALOR: TIBBCDField;
    BAIXAS_PARCIAIS_FATURASUSUARIO: TIntegerField;
    BAIXAS_PARCIAIS_FATURASCONTA: TIntegerField;
    BAIXAS_PARCIAIS_FATURASPLANILHA: TIntegerField;
    Manutencao_FaturaDATA_BAIXA: TDateTimeField;
    Manutencao_FaturaUSUARIO: TIBStringField;
    VerReceberDT_EMISSAO: TDateTimeField;
    VerReceberDT_VENCTO: TDateTimeField;
    VerReceberDT_LANCTO: TDateTimeField;
    VerReceberDT_AVISO: TDateTimeField;
    SelFatura_FuturaDATA: TDateTimeField;
    SelFatura_FuturaDATA_CAIXA: TDateTimeField;
    ChequeDATA_CAIXA: TDateTimeField;
    ChequeUSUARIO: TIntegerField;
    BAIXAS_PARCIAIS_FATURASDATA_CAIXA: TDateTimeField;
    VerFaturaVALOR_ORIGINAL: TIBBCDField;
    VERFATURASBAIXADASVALOR_ORIGINAL: TIBBCDField;
    VerFaturasVALOR_ORIGINAL: TIBBCDField;
    FaturasVALOR_ORIGINAL: TFloatField;
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
    ChequeCOMPENSACAO: TIBStringField;
    ChequeDIGITO_CONTA: TIBStringField;
    VerPagarDT_EMISSAO: TDateTimeField;
    VerPagarDT_VENCTO: TDateTimeField;
    VerPagarDT_LANCTO: TDateTimeField;
    VerFaturaDATA: TDateTimeField;
    VerFaturaVENCIMENTO: TDateTimeField;
    VerFaturaDATA_BAIXA: TDateTimeField;
    DADOS_VENDA: TIBQuery;
    DADOS_VENDAVENDEDOR: TIntegerField;
    DADOS_VENDANUM_NF: TIntegerField;
    DADOS_VENDANUM_CUPOM: TIntegerField;
    DADOS_VENDATIPO_VENDA: TIBStringField;
    DADOS_VENDANOME_VENDEDOR: TIBStringField;
    VerReceberConvenioDT_EMISSAO: TDateTimeField;
    VerReceberConvenioDT_VENCTO: TDateTimeField;
    VerReceberConvenioDT_LANCTO: TDateTimeField;
    VerReceberConvenioDT_AVISO: TDateTimeField;
    VerReceberConvenioFATURA: TIntegerField;
    VerReceberConvenioPARCIAL: TIBBCDField;
    Manutencao_FaturaVALOR_ORIGINAL: TFloatField;
    BAIXAS_PARCIAIS_FATURASVALOR_ANTERIOR: TIBBCDField;
    BAIXAS_PARCIAIS_FATURASJUROS_RECEBIDOS: TIBBCDField;
    Manutencao_FaturaBAIXAS_PARCIAIS: TFloatField;
    BAIXAS_PARCIAIS_FATURASVALOR_ATUAL: TIBBCDField;
    VerReceberJUROS_PARCIAL: TIBBCDField;
    VerReceberSelecao: TFloatField;
    Manutencao_FaturaULTIMA_BX_PARCIAL: TDateTimeField;
    FaturasULTIMA_BX_PARCIAL: TDateTimeField;
    VerFaturasULTIMA_BX_PARCIAL: TDateTimeField;
    VerFaturasDATA: TDateTimeField;
    VerFaturasVENCIMENTO: TDateTimeField;
    VerFaturasDATA_BAIXA: TDateTimeField;
    Contas_ReceberDATA_ULT_BAIXA: TDateTimeField;
    VerReceberDATA_ULT_BAIXA: TDateTimeField;
    Contas_Pagas: TIBDataSet;
    Contas_PagasANO: TSmallintField;
    Contas_PagasANO_ENT: TSmallintField;
    Contas_PagasAVISO: TIntegerField;
    Contas_PagasBOLETO: TIBStringField;
    Contas_PagasCENTRO_CUSTO: TIntegerField;
    Contas_PagasCNPJ: TIBStringField;
    Contas_PagasCODIGO: TIntegerField;
    Contas_PagasCODIGO_ENT: TIntegerField;
    Contas_PagasCODIGO_PG: TIntegerField;
    Contas_PagasCONFERIDA: TIBStringField;
    Contas_PagasCONTA: TIntegerField;
    Contas_PagasDESCONTOS: TFloatField;
    Contas_PagasDESCONTOS_PAG: TFloatField;
    Contas_PagasDOCTO: TIBStringField;
    Contas_PagasDT_AVISO: TDateTimeField;
    Contas_PagasDT_BAIXA: TDateTimeField;
    Contas_PagasDT_EMISSAO: TDateTimeField;
    Contas_PagasDT_LANCTO: TDateTimeField;
    Contas_PagasDT_VENCTO: TDateTimeField;
    Contas_PagasDUPLICATA: TIBStringField;
    Contas_PagasHISTORICO: TIBStringField;
    Contas_PagasHISTORICO_BX: TIBStringField;
    Contas_PagasJUROS: TFloatField;
    Contas_PagasJUROS_PAG: TFloatField;
    Contas_PagasNOME: TIBStringField;
    Contas_PagasORIGEM: TIBStringField;
    Contas_PagasPARCELA: TIBStringField;
    Contas_PagasPESSOA_FJ: TIntegerField;
    Contas_PagasPLANILHA: TIntegerField;
    Contas_PagasTAXA_JUROS: TFloatField;
    Contas_PagasTIPO_JUROS: TIBStringField;
    Contas_PagasTOTAL_ENTRADA: TFloatField;
    Contas_PagasUSUARIO: TIntegerField;
    Contas_PagasVALOR: TFloatField;
    Contas_PagasVLR_BAIXA: TFloatField;
    Contas_PagasVLR_PARCIAL: TFloatField;
    Contas_PagasTotal: TFloatField;
    Contas_PagasANO_PG: TSmallintField;
    VerReceberJuros_Calculadors: TFloatField;
    VerReceberTotal_Nominal: TFloatField;
    Receber_Data_AnaliticoDATA: TDateTimeField;
    Cobranca: TIBDataSet;
    CobrancaCNPJ: TIBStringField;
    CobrancaCOBRAR_EM: TDateTimeField;
    CobrancaDATA_COBRANCA: TDateTimeField;
    CobrancaHISTORICO: TIBStringField;
    CobrancaMOTIVO: TIntegerField;
    CobrancaPAGO_EM: TDateTimeField;
    CobrancaNOME_MOTIVO: TIBStringField;
    CobrancaPESSOA_FJ: TIntegerField;
    Historico_Cobrancas: TIBQuery;
    Historico_CobrancasDATA_COBRANCA: TDateTimeField;
    Historico_CobrancasMOTIVO: TIntegerField;
    Historico_CobrancasCOBRAR_EM: TDateTimeField;
    Historico_CobrancasHISTORICO: TIBStringField;
    Historico_CobrancasPAGO_EM: TDateTimeField;
    Historico_CobrancasNOME_MOTIVO: TIBStringField;
    CobrancaCOBRADOR: TIntegerField;
    CobrancaNOME_COBRADOR: TIBStringField;
    Historico_CobrancasCOBRADOR: TIntegerField;
    Historico_CobrancasNOME_COBRADOR: TIBStringField;
    CobrancaRECEBER: TIntegerField;
    Consulta_Cobranca_Pessoa: TIBQuery;
    Consulta_Cobranca_PessoaSOMA: TIBBCDField;
    Consulta_Cobranca_PessoaNOME: TIBStringField;
    Consulta_Cobranca_PessoaENDERECO: TIBStringField;
    Consulta_Cobranca_PessoaNUMERO: TIBStringField;
    Consulta_Cobranca_PessoaCIDADE: TIBStringField;
    Consulta_Cobranca_PessoaBAIRRO: TIBStringField;
    Consulta_Cobranca_PessoaCEP: TIBStringField;
    Consulta_Cobranca_PessoaUF: TIBStringField;
    Consulta_Cobranca_PessoaCOD_END: TIntegerField;
    Consulta_Cobranca_PessoaCOD_CID: TIntegerField;
    Consulta_Cobranca_PessoaCOD_BAI: TIntegerField;
    Consulta_Cobranca_PessoaFONE: TIBStringField;
    Consulta_Cobranca_PessoaCPF_CGC: TIBStringField;
    Consulta_Cobranca_PessoaPORCENTAGEM: TIBBCDField;
    Consulta_Cobranca_PessoaDATA: TDateTimeField;
    Consulta_Cobranca_PessoaAGENDADO_PARA: TDateTimeField;
    Consulta_Cobranca_PessoaCOBRAR_EM: TDateTimeField;
    Consulta_Cobranca_PessoaMOTIVO: TIBStringField;
    Consulta_Cobranca_PessoaHISTORICO: TIBStringField;
    Consulta_Cobranca_PessoaCOBRADOR: TIntegerField;
    Consulta_Cobranca_PessoaNOME_COBRADOR: TIBStringField;
    Consulta_Cobranca_PessoaRECEBER: TIntegerField;
    Consulta_Cobranca_PessoaPESSOA_FJ: TIntegerField;
    Contas_ReceberJUROS_CALCULADOS: TFloatField;
    Contas_ReceberTOTAL_NOMINAL: TFloatField;
    ChequeDATA_DEVOLUCAO: TDateTimeField;
    ChequeMOTIVO_DEVOLUCAO: TIntegerField;
    ChequeVEZES_DEVOLUCAO: TIntegerField;
    ChequeORIGEM: TIBStringField;
    Faturas_Pcl: TIBDataSet;
    Faturas_PclCNPJ: TIBStringField;
    Faturas_PclCODIGO: TIntegerField;
    Faturas_PclDATA: TDateTimeField;
    Faturas_PclVALOR: TFloatField;
    VerFaturaUSUARIO: TIBStringField;
    VerFaturasUSUARIO2: TIBStringField;
    VER_FICHA_CLIENTE: TIBQuery;
    VER_FICHA_CLIENTECODIGO: TIntegerField;
    VER_FICHA_CLIENTEPESSOA_FJ: TIntegerField;
    VER_FICHA_CLIENTENOME_RAZAO: TIBStringField;
    VER_FICHA_CLIENTEFONE: TIBStringField;
    VER_FICHA_CLIENTEFANTASIA: TIBStringField;
    VER_FICHA_CLIENTECPF_CGC: TIBStringField;
    VER_FICHA_CLIENTEBLOQUEADO: TIBStringField;
    VER_FICHA_CLIENTECLASSIFICACAO: TIBStringField;
    VER_FICHA_CLIENTEUF: TIBStringField;
    VER_FICHA_CLIENTEVENDAS: TIBBCDField;
    VER_FICHA_CLIENTERECEBER: TIBBCDField;
    VER_FICHA_CLIENTEFATURAS: TIBBCDField;
    VER_FICHA_CLIENTECUPOM: TIBBCDField;
    VER_FICHA_CLIENTENOTAS: TIBBCDField;
    VER_FICHA_CLIENTETOTAL: TIBBCDField;
    Ver_Cartoes: TIBQuery;
    Ver_CartoesCODIGO: TIntegerField;
    Ver_CartoesDATA: TDateTimeField;
    Ver_CartoesUSUARIO: TIntegerField;
    Ver_CartoesCONTA: TIntegerField;
    Ver_CartoesCPF_CNPJ: TIBStringField;
    Ver_CartoesCLIENTE: TIBStringField;
    Ver_CartoesREEMBOLSO: TDateTimeField;
    Ver_CartoesADMINISTRADORA: TIntegerField;
    Ver_CartoesVALOR: TIBBCDField;
    Ver_CartoesNUM_CARTAO: TIBStringField;
    Ver_CartoesNUM_BANCO: TIBStringField;
    Ver_CartoesNUM_CONTA: TIBStringField;
    Ver_CartoesCONCILIADO: TIBStringField;
    Ver_CartoesTIPO_DOC: TIBStringField;
    Ver_CartoesDOCUMENTO: TIBStringField;
    Ver_CartoesVENDA: TIntegerField;
    Ver_CartoesPESSOA_FJ: TIntegerField;
    Ver_CartoesTIPO: TIBStringField;
    Ver_CartoesNUM_PARCELAS: TIntegerField;
    Ver_CartoesTAXA: TIBBCDField;
    Ver_CartoesNOME: TIBStringField;
    Ver_CartoesFONE: TIBStringField;
    Ver_CartoesFAX: TIBStringField;
    Ver_CartoesCELULAR: TIBStringField;
    Ver_CartoesCPF_CGC: TIBStringField;
    Ver_CartoesTURNO: TIntegerField;
    Ver_CartoesNOME_ADMINISTRADORA: TIBStringField;
    Ver_CartoesTAXA_PARCELADO: TIBBCDField;
    Ver_CartoesTAXA_DEBITO: TIBBCDField;
    Ver_CartoesVALOR_LIQ: TIBBCDField;
    VerReceberCOBRADOR: TIntegerField;
    VerReceberConvenioDATA_ULT_BAIXA: TDateTimeField;
    VerReceberConvenioCOBRADOR: TIntegerField;
    Ver_DadosFaturas: TIBQuery;
    Ver_DadosFaturasCODIGO: TIntegerField;
    Ver_DadosFaturasPESSOA_FJ: TIntegerField;
    Ver_DadosFaturasDATA: TDateTimeField;
    Ver_DadosFaturasVALOR: TIBBCDField;
    Ver_DadosFaturasVALOR_ORIGINAL: TIBBCDField;
    Ver_DadosFaturasDESCONTO: TIBBCDField;
    Ver_DadosFaturasJUROS: TIBBCDField;
    Ver_DadosFaturasVENCIMENTO: TDateTimeField;
    Ver_DadosFaturasHISTORICO: TIBStringField;
    Ver_DadosFaturasNOME: TIBStringField;
    Ver_DadosFaturasENDERECO: TIBStringField;
    Ver_DadosFaturasNUMERO: TIBStringField;
    Ver_DadosFaturasCIDADE: TIBStringField;
    Ver_DadosFaturasBAIRRO: TIBStringField;
    Ver_DadosFaturasCEP: TIBStringField;
    Ver_DadosFaturasUF: TIBStringField;
    Ver_DadosFaturasCOD_END: TIntegerField;
    Ver_DadosFaturasCOD_BAI: TIntegerField;
    Ver_DadosFaturasCOD_CID: TIntegerField;
    Ver_DadosFaturasFONE: TIBStringField;
    Ver_DadosFaturasCPF_CGC: TIBStringField;
    Ver_DadosFaturasBANCO: TIBStringField;
    Ver_DadosFaturasENVIADA: TIBStringField;
    Ver_DadosFaturasTIPO: TIBStringField;
    Ver_DadosFaturasDUPLICATA: TIBStringField;
    Ver_DadosFaturasOBS: TIBStringField;
    Ver_DadosFaturasDATA_BAIXA: TDateTimeField;
    Ver_DadosFaturasUSUARIO: TIBStringField;
    Ver_DadosFaturasULTIMA_BX_PARCIAL: TDateTimeField;
    Ver_DadosFaturasBAIXAS_PARCIAIS: TIBBCDField;
    Ver_DadosFaturasTOTAL: TFloatField;
    Ver_DadosFaturasSITUACAO: TStringField;
    Ver_DadosFaturasBAIXAS_PARCIAIS_DIA: TIBBCDField;
    Ver_DadosFaturasJUROS_DIA: TIBBCDField;
    Cartao: TIBDataSet;
    CartaoCNPJ: TIBStringField;
    CartaoCODIGO: TIntegerField;
    CartaoADMINISTRADORA: TIntegerField;
    CartaoCLIENTE: TIBStringField;
    CartaoCONCILIADO: TIBStringField;
    CartaoCONTA: TIntegerField;
    CartaoCPF_CNPJ: TIBStringField;
    CartaoDATA: TDateTimeField;
    CartaoDOCUMENTO: TIBStringField;
    CartaoNUM_BANCO: TIBStringField;
    CartaoNUM_CARTAO: TIBStringField;
    CartaoNUM_CONTA: TIBStringField;
    CartaoREEMBOLSO: TDateTimeField;
    CartaoTIPO_DOC: TIBStringField;
    CartaoUSUARIO: TIntegerField;
    CartaoVALOR: TFloatField;
    CartaoVENDA: TIntegerField;
    CartaoPESSOA_FJ: TIntegerField;
    CartaoTIPO: TIBStringField;
    CartaoNUM_PARCELAS: TIntegerField;
    CartaoTAXA: TFloatField;
    CartaoValor_Liquido: TFloatField;
    CartaoTURNO: TIntegerField;
    Valida_ClienteCPF_CNPJ: TIBStringField;
    CartaoDATA_CONCILIACAO: TDateTimeField;
    Faturas_ParcialJUROS_RECEBIDOS: TFloatField;
    Faturas_ParcialDESCONTOS_CONCEDIDOS: TFloatField;
    BAIXAS_PARCIAIS_FATURASDESCONTOS_CONCEDIDOS: TIBBCDField;
    CartaoPROCESSADO: TIBStringField;
    VerReceberATRASO: TIntegerField;
    Ver_Cobrancas_Periodo: TIBQuery;
    Ver_Cobrancas_PeriodoDATA_COBRANCA: TDateTimeField;
    Ver_Cobrancas_PeriodoCOBRAR_EM: TDateTimeField;
    Ver_Cobrancas_PeriodoMOTIVO: TIntegerField;
    Ver_Cobrancas_PeriodoHISTORICO: TIBStringField;
    Ver_Cobrancas_PeriodoPAGO_EM: TDateTimeField;
    Ver_Cobrancas_PeriodoNOME_MOTIVO: TIBStringField;
    Ver_Cobrancas_PeriodoCOBRADOR: TIntegerField;
    Ver_Cobrancas_PeriodoNOME_COBRADOR: TIBStringField;
    Ver_Cobrancas_PeriodoNOME: TIBStringField;
    Ver_Cobrancas_PeriodoPESSOA_FJ: TIntegerField;
    SelPessoasFJORDEM: TIntegerField;
    SelPessoasORDEM: TIntegerField;
    VER_DADOS_FATURA: TIBQuery;
    VER_DADOS_FATURACODIGO: TIntegerField;
    VER_DADOS_FATURAPESSOA_FJ: TIntegerField;
    VER_DADOS_FATURADATA: TDateTimeField;
    VER_DADOS_FATURAVALOR: TIBBCDField;
    VER_DADOS_FATURAVALOR_ORIGINAL: TIBBCDField;
    VER_DADOS_FATURADESCONTO: TIBBCDField;
    VER_DADOS_FATURAJUROS: TIBBCDField;
    VER_DADOS_FATURAJUROS_DIA: TIBBCDField;
    VER_DADOS_FATURAVENCIMENTO: TDateTimeField;
    VER_DADOS_FATURAULTIMA_BX_PARCIAL: TDateTimeField;
    VER_DADOS_FATURAHISTORICO: TIBStringField;
    VER_DADOS_FATURANOME: TIBStringField;
    VER_DADOS_FATURANOME_FANTASIA: TIBStringField;
    VER_DADOS_FATURACOMPRADOR: TIBStringField;
    VER_DADOS_FATURAFONE_COMPRADOR: TIBStringField;
    VER_DADOS_FATURAENDERECO: TIBStringField;
    VER_DADOS_FATURANUMERO: TIBStringField;
    VER_DADOS_FATURACIDADE: TIBStringField;
    VER_DADOS_FATURABAIRRO: TIBStringField;
    VER_DADOS_FATURACEP: TIBStringField;
    VER_DADOS_FATURAUF: TIBStringField;
    VER_DADOS_FATURAAGRUPADORA: TIntegerField;
    VER_DADOS_FATURADUPLICATA: TIBStringField;
    VER_DADOS_FATURABAIXAS_PARCIAIS: TIBBCDField;
    VER_DADOS_FATURABAIXAS_PARCIAIS_DIA: TIBBCDField;
    VER_DADOS_FATURAJUROS_CALCULADOS: TFloatField;
    VER_DADOS_FATURATOTAL_NOMINAL: TFloatField;
    SelListaFatura_Futura: TIBQuery;
    SelListaFatura_FuturaCODIGO: TIntegerField;
    SelListaFatura_FuturaDATA: TDateTimeField;
    SelListaFatura_FuturaFECHADA: TIBStringField;
    SelListaFatura_FuturaHISTORICO: TIBStringField;
    SelListaFatura_FuturaPESSOA_FJ: TIntegerField;
    SelListaFatura_FuturaUSUARIO: TIntegerField;
    SelListaFatura_FuturaVENDEDOR: TIntegerField;
    SelListaFatura_FuturaNUM_NF: TIntegerField;
    SelListaFatura_FuturaNUM_CUPOM: TIntegerField;
    SelListaFatura_FuturaNATUREZA: TIntegerField;
    SelListaFatura_FuturaTIPO_VENDA: TIBStringField;
    SelListaFatura_FuturaNOME_CONSUMIDOR: TIBStringField;
    SelListaFatura_FuturaORCAMENTO: TIntegerField;
    SelListaFatura_FuturaLOCAL: TIntegerField;
    SelListaFatura_FuturaTOTAL: TIBBCDField;
    SelListaFatura_FuturaDESC_ACRES: TIBBCDField;
    SelListaFatura_FuturaOBSERVACAO: TIBStringField;
    SelListaFatura_FuturaPESSOA_RAZAO: TIBStringField;
    SelListaFatura_FuturaNOME_NATUREZA: TIBStringField;
    SelListaFatura_FuturaENVIADA_CX: TIBStringField;
    SelListaFatura_FuturaFORMA_PGTO: TIntegerField;
    SelListaFatura_FuturaPROPRIEDADE: TIntegerField;
    SelListaFatura_FuturaCONVENIADO: TIntegerField;
    SelListaFatura_FuturaTIPO_DOCTO: TIBStringField;
    SelListaFatura_FuturaLOCAL_COBRANCA: TIntegerField;
    SelListaFatura_FuturaENTRADA: TIBBCDField;
    SelListaFatura_FuturaDINHEIRO: TIBBCDField;
    SelListaFatura_FuturaCHEQUE: TIBBCDField;
    SelListaFatura_FuturaCARTAO: TIBBCDField;
    SelListaFatura_FuturaTICKET: TIBBCDField;
    SelListaFatura_FuturaVLRLIQUIDO: TIBBCDField;
    SelListaFatura_FuturaVLR_PARC_LC: TIBBCDField;
    SelListaFatura_FuturaTERCEIRO: TIntegerField;
    SelListaFatura_FuturaCARGA: TIntegerField;
    SelListaFatura_FuturaVOLUME: TIBBCDField;
    SelListaFatura_FuturaPESO: TIBBCDField;
    SelListaFatura_FuturaREQUISICAO: TIBStringField;
    SelListaFatura_FuturaDESCRICAO: TBlobField;
    SelListaFatura_FuturaNOME_FORMA: TIBStringField;
    SelListaFatura_FuturaFATURA_FUTURA: TIBStringField;
    SelListaFatura_FuturaNOME_VENDEDOR: TIBStringField;
    SelListaFatura_FuturaCONTA_CAIXA: TIntegerField;
    SelListaFatura_FuturaCANCELADA: TIBStringField;
    SelListaFatura_FuturaBASE_ICM_SUBST: TIBBCDField;
    SelListaFatura_FuturaVALOR_ICM_SUBST: TIBBCDField;
    SelListaFatura_FuturaFRETE: TIBBCDField;
    SelListaFatura_FuturaSEGURO: TIBBCDField;
    SelListaFatura_FuturaDESPESAS: TIBBCDField;
    SelListaFatura_FuturaIPI: TIBBCDField;
    SelListaFatura_FuturaTOTAL_NOTA: TIBBCDField;
    SelListaFatura_FuturaDATA_CAIXA: TDateField;
    SelListaFatura_FuturaSELECIONADA: TIBStringField;
    VerPendencias: TIBQuery;
    VerPendenciasCODIGO: TIntegerField;
    VerPendenciasANO: TSmallintField;
    VerPendenciasPESSOA_FJ: TIntegerField;
    VerPendenciasDOCTO: TIBStringField;
    VerPendenciasPARCELA: TIBStringField;
    VerPendenciasHISTORICO: TIBStringField;
    VerPendenciasVALOR: TIBBCDField;
    VerPendenciasBOLETO: TIBStringField;
    VerPendenciasORIGEM: TIBStringField;
    VerPendenciasCODIGO_VN: TIntegerField;
    VerPendenciasANO_VN: TSmallintField;
    VerPendenciasAVISO: TSmallintField;
    VerPendenciasNOME: TIBStringField;
    VerPendenciasENDERECO: TIBStringField;
    VerPendenciasNUMERO: TIBStringField;
    VerPendenciasCIDADE: TIBStringField;
    VerPendenciasBAIRRO: TIBStringField;
    VerPendenciasCEP: TIBStringField;
    VerPendenciasUF: TIBStringField;
    VerPendenciasCOD_END: TIntegerField;
    VerPendenciasCOD_CID: TIntegerField;
    VerPendenciasCOD_BAI: TIntegerField;
    VerPendenciasFONE: TIBStringField;
    VerPendenciasCPF_CGC: TIBStringField;
    VerPendenciasSELECIONADO: TIBStringField;
    VerPendenciasVLR_PARCIAL: TIBBCDField;
    VerPendenciasTotal: TFloatField;
    VerPendenciasJUROS_REC: TIBBCDField;
    VerPendenciasDESCONTOS: TIBBCDField;
    VerPendenciasTIPO_DOCTO: TIBStringField;
    VerPendenciasNUMDUPLICATA: TIntegerField;
    VerPendenciasNUMBOLETO: TIntegerField;
    VerPendenciasFATURA: TIntegerField;
    VerPendenciasPARCIAL: TIBBCDField;
    VerPendenciasDT_EMISSAO: TDateTimeField;
    VerPendenciasDT_VENCTO: TDateTimeField;
    VerPendenciasDT_LANCTO: TDateTimeField;
    VerPendenciasDT_AVISO: TDateTimeField;
    VerPendenciasJUROS_PARCIAL: TIBBCDField;
    VerPendenciasSelecao: TFloatField;
    VerPendenciasDATA_ULT_BAIXA: TDateTimeField;
    VerPendenciasJuros_Calculadors: TFloatField;
    VerPendenciasTotal_Nominal: TFloatField;
    VerPendenciasCOBRADOR: TIntegerField;
    VerPendenciasATRASO: TIntegerField;
    FaturasORIGEM: TIBStringField;
    Manutencao_FaturaORIGEM: TIBStringField;
    ChequeTURNO: TIntegerField;
    Ver_Cartao: TIBQuery;
    Ver_CartaoADMINISTRADORA: TIntegerField;
    Ver_CartaoCLIENTE: TIBStringField;
    Ver_CartaoCNPJ: TIBStringField;
    Ver_CartaoCODIGO: TIntegerField;
    Ver_CartaoCONCILIADO: TIBStringField;
    Ver_CartaoCONTA: TIntegerField;
    Ver_CartaoCPF_CNPJ: TIBStringField;
    Ver_CartaoDATA: TDateTimeField;
    Ver_CartaoDOCUMENTO: TIBStringField;
    Ver_CartaoNUM_BANCO: TIBStringField;
    Ver_CartaoNUM_CARTAO: TIBStringField;
    Ver_CartaoNUM_CONTA: TIBStringField;
    Ver_CartaoREEMBOLSO: TDateTimeField;
    Ver_CartaoTIPO_DOC: TIBStringField;
    Ver_CartaoUSUARIO: TIntegerField;
    Ver_CartaoVALOR: TFloatField;
    Ver_CartaoVENDA: TIntegerField;
    Ver_CartaoPESSOA_FJ: TIntegerField;
    Ver_CartaoTIPO: TIBStringField;
    Ver_CartaoNUM_PARCELAS: TIntegerField;
    Ver_CartaoTAXA: TFloatField;
    Ver_CartaoTURNO: TIntegerField;
    Ver_CartaoDATA_CONCILIACAO: TDateTimeField;
    Ver_CartaoPROCESSADO: TIBStringField;
    Ver_CartaoValor_Liquido: TFloatField;
    Ver_CartoesPROCESSADO: TIBStringField;
    Contas_ReceberFLUXO_CAIXA: TDateTimeField;
    ChequeLOCAIS: TIntegerField;
    ChequeDESCRICAO_LOCAIS: TStringField;
    Historico_CobrancasNOME: TIBStringField;
    Historico_CobrancasDT_VENCTO: TDateTimeField;
    Historico_CobrancasDOCTO: TIBStringField;
    Historico_CobrancasVALOR: TIBBCDField;
    Historico_CobrancasCODIGO: TIntegerField;
    Historico_Cobrancas_Pcl: TIBQuery;
    Historico_Cobrancas_PclDATA_COBRANCA: TDateTimeField;
    Historico_Cobrancas_PclCOBRAR_EM: TDateTimeField;
    Historico_Cobrancas_PclMOTIVO: TIntegerField;
    Historico_Cobrancas_PclHISTORICO: TIBStringField;
    Historico_Cobrancas_PclPAGO_EM: TDateTimeField;
    Historico_Cobrancas_PclNOME_MOTIVO: TIBStringField;
    Historico_Cobrancas_PclCOBRADOR: TIntegerField;
    Historico_Cobrancas_PclNOME_COBRADOR: TIBStringField;
    Historico_Cobrancas_PclNOME: TIBStringField;
    Historico_Cobrancas_PclDT_VENCTO: TDateTimeField;
    Historico_Cobrancas_PclDOCTO: TIBStringField;
    Historico_Cobrancas_PclVALOR: TIBBCDField;
    Historico_Cobrancas_PclCODIGO: TIntegerField;
    Historico_CobrancasCOD_REC: TIntegerField;
    Ver_CartoesDESCONTO: TFloatField;
    CobrancaORIGEM: TIBStringField;
    Consulta_Cobranca_PessoaORIGEM: TIBStringField;
    ChequePROCESSADO: TIBStringField;
    Consulta_Cobranca_PessoaDOCTO: TIBStringField;
    Mensalidades: TIBDataSet;
    MensalidadesCNPJ: TIBStringField;
    MensalidadesFORMA_PAGTO: TIntegerField;
    MensalidadesNATUREZA: TIntegerField;
    MensalidadesPESSOA_FJ: TIntegerField;
    MensalidadesPRODUTO: TIBStringField;
    MensalidadesVALOR: TFloatField;
    MensalidadesVENDEDOR: TIntegerField;
    MensalidadesNOME: TIBStringField;
    MensalidadesVENCIMENTO: TIntegerField;
    VER_CLIENTE_DADOS: TIBQuery;
    VER_CLIENTE_DADOSCONJUGE: TIBStringField;
    VER_CLIENTE_DADOSPAI: TIBStringField;
    VER_CLIENTE_DADOSMAE: TIBStringField;
    Baixas_ReceberLOCAL: TIBStringField;
    SelVendedor: TIBQuery;
    SelVendedorCNPJ: TIBStringField;
    SelVendedorCODIGO: TIntegerField;
    SelVendedorNOME: TIBStringField;
    SelVendedorCOM_VISTA: TFloatField;
    SelVendedorCOM_PRAZO: TFloatField;
    SelVendedorPESSOA_FJ: TIntegerField;
    SelVendedorSENHA: TIBStringField;
    Baixas_Receber_Vendedor: TIBQuery;
    Baixas_Receber_VendedorCODIGO: TIntegerField;
    Baixas_Receber_VendedorANO: TSmallintField;
    Baixas_Receber_VendedorCODIGO_CR: TIntegerField;
    Baixas_Receber_VendedorANO_CR: TSmallintField;
    Baixas_Receber_VendedorDT_BAIXA: TDateField;
    Baixas_Receber_VendedorHISTORICO_BX: TIBStringField;
    Baixas_Receber_VendedorVLR_BAIXA: TIBBCDField;
    Baixas_Receber_VendedorJUROS: TIBBCDField;
    Baixas_Receber_VendedorDESCONTOS: TIBBCDField;
    Baixas_Receber_VendedorPLANILHA: TIntegerField;
    Baixas_Receber_VendedorTAXA_JUROS: TIBBCDField;
    Baixas_Receber_VendedorTIPO_JUROS: TIBStringField;
    Baixas_Receber_VendedorPESSOA_FJ: TIntegerField;
    Baixas_Receber_VendedorDT_EMISSAO: TDateField;
    Baixas_Receber_VendedorDT_VENCTO: TDateField;
    Baixas_Receber_VendedorDT_LANCTO: TDateField;
    Baixas_Receber_VendedorDOCTO: TIBStringField;
    Baixas_Receber_VendedorPARCELA: TIBStringField;
    Baixas_Receber_VendedorHISTORICO: TIBStringField;
    Baixas_Receber_VendedorVALOR: TIBBCDField;
    Baixas_Receber_VendedorVLR_PARCIAL: TIBBCDField;
    Baixas_Receber_VendedorJUROS_REC: TIBBCDField;
    Baixas_Receber_VendedorDESCONTOS_REC: TIBBCDField;
    Baixas_Receber_VendedorBOLETO: TIBStringField;
    Baixas_Receber_VendedorORIGEM: TIBStringField;
    Baixas_Receber_VendedorCODIGO_VN: TIntegerField;
    Baixas_Receber_VendedorANO_VN: TSmallintField;
    Baixas_Receber_VendedorAVISO: TSmallintField;
    Baixas_Receber_VendedorDT_AVISO: TDateField;
    Baixas_Receber_VendedorFATURA: TIntegerField;
    Baixas_Receber_VendedorNOME: TIBStringField;
    Baixas_Receber_VendedorNUMBOLETO: TIntegerField;
    Baixas_Receber_VendedorNUMDUPLICATA: TIntegerField;
    Baixas_Receber_VendedorLOCAL: TIBStringField;
    Baixas_Receber_VendedorVENDEDOR: TIntegerField;
    Baixas_Receber_VendedorNOME_VENDEDOR: TIBStringField;
    Baixas_Receber_VendedorATRASO: TIntegerField;
    Baixas_Receber_VendedorTOTAL: TFloatField;
    Baixas_Receber_VendedorCPF_CGC: TIBStringField;
    Baixas_Pagar_Hist: TIBQuery;
    Baixas_Pagar_HistCODIGO: TIntegerField;
    Baixas_Pagar_HistHISTORICO_BX: TIBStringField;
    Baixas_Pagar_HistPLANILHA: TIntegerField;
    Baixas_Pagar_HistTIPO_JUROS: TIBStringField;
    Baixas_Pagar_HistPESSOA_FJ: TIntegerField;
    Baixas_Pagar_HistDOCTO: TIBStringField;
    Baixas_Pagar_HistPARCELA: TIBStringField;
    Baixas_Pagar_HistHISTORICO: TIBStringField;
    Baixas_Pagar_HistBOLETO: TIBStringField;
    Baixas_Pagar_HistORIGEM: TIBStringField;
    Baixas_Pagar_HistAVISO: TIntegerField;
    Baixas_Pagar_HistVALOR: TIBBCDField;
    Baixas_Pagar_HistJUROS: TIBBCDField;
    Baixas_Pagar_HistDESCONTOS: TIBBCDField;
    Baixas_Pagar_HistTAXA_JUROS: TIBBCDField;
    Baixas_Pagar_HistNOME: TIBStringField;
    Baixas_Pagar_HistENDERECO: TIBStringField;
    Baixas_Pagar_HistNUMERO: TIBStringField;
    Baixas_Pagar_HistCIDADE: TIBStringField;
    Baixas_Pagar_HistBAIRRO: TIBStringField;
    Baixas_Pagar_HistCEP: TIBStringField;
    Baixas_Pagar_HistUF: TIBStringField;
    Baixas_Pagar_HistCOD_END: TIntegerField;
    Baixas_Pagar_HistCOD_CID: TIntegerField;
    Baixas_Pagar_HistCOD_BAI: TIntegerField;
    Baixas_Pagar_HistFONE: TIBStringField;
    Baixas_Pagar_HistCPF_CGC: TIBStringField;
    Baixas_Pagar_HistTotal: TFloatField;
    Baixas_Pagar_HistANO: TIntegerField;
    Baixas_Pagar_HistVLR_PARCIAL: TIBBCDField;
    Baixas_Pagar_HistVLR_BAIXA: TIBBCDField;
    Baixas_Pagar_HistCODIGO_PG: TIntegerField;
    Baixas_Pagar_HistANO_PG: TIntegerField;
    Baixas_Pagar_HistJUROS_PAG: TIBBCDField;
    Baixas_Pagar_HistDESCONTOS_PAG: TIBBCDField;
    Baixas_Pagar_HistCODIGO_ENT: TIntegerField;
    Baixas_Pagar_HistANO_ENT: TIntegerField;
    Baixas_Pagar_HistDT_BAIXA: TDateField;
    Baixas_Pagar_HistDT_EMISSAO: TDateField;
    Baixas_Pagar_HistDT_VENCTO: TDateField;
    Baixas_Pagar_HistDT_LANCTO: TDateField;
    Baixas_Pagar_HistDT_AVISO: TDateField;
    Baixas_Pagar_HistCENTRO_CUSTO: TIntegerField;
    Baixas_Pagar_HistNOME_CENTRO: TIBStringField;
    Baixas_Pagar_HistDUPLICATA: TIBStringField;
    Baixas_Pagar_HistCONFERIDA: TIBStringField;
    ENTRADAS_PERIODO: TIBQuery;
    ENTRADAS_PERIODODOCUMENTO: TIBStringField;
    ENTRADAS_PERIODOVALOR: TIBBCDField;
    ENTRADAS_PERIODOPESSOA_FJ: TIntegerField;
    ENTRADAS_PERIODONOME: TIBStringField;
    ENTRADAS_PERIODOHISTORICO: TIBStringField;
    ENTRADAS_PERIODOCENTRO_CUSTO: TIntegerField;
    ENTRADAS_PERIODONOME_CENTRO: TIBStringField;
    ENTRADAS_PERIODODATA_REF: TDateTimeField;
    Consulta_Cobranca_PessoaLANCAMENTO: TDateTimeField;
    VerCheque_Pago: TIBQuery;
    VerCheque_PagoBANCO: TIBStringField;
    VerCheque_PagoCONTA: TIBStringField;
    VerCheque_PagoCHEQUE: TIBStringField;
    VerCheque_PagoVENDA: TIntegerField;
    VerCheque_PagoVALOR: TIBBCDField;
    VerCheque_PagoCONCILIADO: TIBStringField;
    VerCheque_PagoPESSOA_FJ: TIntegerField;
    VerCheque_PagoHISTORICO: TIBStringField;
    VerCheque_PagoAGENCIA: TIBStringField;
    VerCheque_PagoNOME: TIBStringField;
    VerCheque_PagoFONE: TIBStringField;
    VerCheque_PagoFAX: TIBStringField;
    VerCheque_PagoCELULAR: TIBStringField;
    VerCheque_PagoCPF_CGC: TIBStringField;
    VerCheque_PagoTotal: TFloatField;
    VerCheque_PagoJUROS: TIBBCDField;
    VerCheque_PagoMOEDA1: TIBBCDField;
    VerCheque_PagoMOEDA2: TIBBCDField;
    VerCheque_PagoTIPO: TIBStringField;
    VerCheque_PagoPLANILHA: TIntegerField;
    VerCheque_PagoDIGITO_AGENCIA: TIBStringField;
    VerCheque_PagoDIGITO_CHEQUE: TIBStringField;
    VerCheque_PagoMOTIVO_DEVOLUCAO: TIBStringField;
    VerCheque_PagoCODIGO_MOTIVO_DEVOLUCAO: TIntegerField;
    VerCheque_PagoVEZES_DEVOLUCAO: TIntegerField;
    VerCheque_PagoEMISSAO: TDateTimeField;
    VerCheque_PagoPRE_DATE: TDateTimeField;
    VerCheque_PagoDATA_CONCILIACAO: TDateTimeField;
    VerCheque_PagoDATA_ACERTO: TDateTimeField;
    VerCheque_PagoDATA_DEVOLUCAO: TDateTimeField;
    VerCheque_PagoRG_IE: TIBStringField;
    VerCheque_PagoPROCESSADO: TIBStringField;
    CobrancaANO: TIntegerField;
    Consulta_Cobranca_PessoaANO: TIntegerField;
    Historico_CobrancasANO: TIntegerField;
    Historico_Cobrancas_PclANO: TIntegerField;
    Valida_FornecedorCONTABILIDADE: TIntegerField;
    VER_ABASTECIMENTOS: TIBQuery;
    VER_ABASTECIMENTOSCODIGO: TIntegerField;
    VER_ABASTECIMENTOSDATA: TDateTimeField;
    VER_ABASTECIMENTOSLITRAGEM: TIBBCDField;
    VER_ABASTECIMENTOSUNITARIO: TIBBCDField;
    VER_ABASTECIMENTOSVENCIMENTO: TDateTimeField;
    VER_ABASTECIMENTOSHISTORICO: TIBStringField;
    VER_ABASTECIMENTOSDATA_BAIXA: TDateTimeField;
    VER_ABASTECIMENTOSVALOR_BAIXA: TIBBCDField;
    VER_ABASTECIMENTOSPESSOA_FJ: TIntegerField;
    VER_ABASTECIMENTOSNOME: TIBStringField;
    VER_ABASTECIMENTOSDOCTO: TIBStringField;
    VER_ABASTECIMENTOSTOTAL: TFloatField;
    Baixas_Receber_Caixa: TIBQuery;
    Baixas_Receber_CaixaCODIGO: TIntegerField;
    Baixas_Receber_CaixaCODIGO_CR: TIntegerField;
    Baixas_Receber_CaixaHISTORICO_BX: TIBStringField;
    Baixas_Receber_CaixaPLANILHA: TIntegerField;
    Baixas_Receber_CaixaTIPO_JUROS: TIBStringField;
    Baixas_Receber_CaixaPESSOA_FJ: TIntegerField;
    Baixas_Receber_CaixaDOCTO: TIBStringField;
    Baixas_Receber_CaixaPARCELA: TIBStringField;
    Baixas_Receber_CaixaHISTORICO: TIBStringField;
    Baixas_Receber_CaixaBOLETO: TIBStringField;
    Baixas_Receber_CaixaORIGEM: TIBStringField;
    Baixas_Receber_CaixaCODIGO_VN: TIntegerField;
    Baixas_Receber_CaixaAVISO: TIntegerField;
    Baixas_Receber_CaixaVALOR: TIBBCDField;
    Baixas_Receber_CaixaJUROS: TIBBCDField;
    Baixas_Receber_CaixaDESCONTOS: TIBBCDField;
    Baixas_Receber_CaixaTAXA_JUROS: TIBBCDField;
    Baixas_Receber_CaixaNOME: TIBStringField;
    Baixas_Receber_CaixaENDERECO: TIBStringField;
    Baixas_Receber_CaixaNUMERO: TIBStringField;
    Baixas_Receber_CaixaCIDADE: TIBStringField;
    Baixas_Receber_CaixaBAIRRO: TIBStringField;
    Baixas_Receber_CaixaCEP: TIBStringField;
    Baixas_Receber_CaixaUF: TIBStringField;
    Baixas_Receber_CaixaCOD_END: TIntegerField;
    Baixas_Receber_CaixaCOD_CID: TIntegerField;
    Baixas_Receber_CaixaCOD_BAI: TIntegerField;
    Baixas_Receber_CaixaFONE: TIBStringField;
    Baixas_Receber_CaixaCPF_CGC: TIBStringField;
    Baixas_Receber_CaixaTotal: TFloatField;
    Baixas_Receber_CaixaANO: TIntegerField;
    Baixas_Receber_CaixaANO_CR: TIntegerField;
    Baixas_Receber_CaixaANO_VN: TIntegerField;
    Baixas_Receber_CaixaVLR_PARCIAL: TIBBCDField;
    Baixas_Receber_CaixaJUROS_REC: TIBBCDField;
    Baixas_Receber_CaixaDESCONTOS_REC: TIBBCDField;
    Baixas_Receber_CaixaVLR_BAIXA: TIBBCDField;
    Baixas_Receber_CaixaDT_BAIXA: TDateField;
    Baixas_Receber_CaixaDT_EMISSAO: TDateField;
    Baixas_Receber_CaixaDT_VENCTO: TDateField;
    Baixas_Receber_CaixaDT_LANCTO: TDateField;
    Baixas_Receber_CaixaDT_AVISO: TDateField;
    Baixas_Receber_CaixaFATURA: TIntegerField;
    Baixas_Receber_CaixaNUMBOLETO: TIntegerField;
    Baixas_Receber_CaixaNUMDUPLICATA: TIntegerField;
    Baixas_Receber_CaixaAtraso: TFloatField;
    Baixas_Receber_CaixaLOCAL: TIBStringField;
    Baixas_Receber_CaixaUSUARIO: TIntegerField;
    Local_Cobranca: TIBDataSet;
    Local_CobrancaCNPJ: TIBStringField;
    Local_CobrancaCODIGO: TIntegerField;
    Local_CobrancaNOME: TIBStringField;
    Contas_ReceberLOCAL_COBRANCA: TIntegerField;
    VerCheque_Magnetico: TIBQuery;
    VerCheque_MagneticoBANCO: TIBStringField;
    VerCheque_MagneticoCONTA: TIBStringField;
    VerCheque_MagneticoCHEQUE: TIBStringField;
    VerCheque_MagneticoVENDA: TIntegerField;
    VerCheque_MagneticoVALOR: TIBBCDField;
    VerCheque_MagneticoCONCILIADO: TIBStringField;
    VerCheque_MagneticoPESSOA_FJ: TIntegerField;
    VerCheque_MagneticoHISTORICO: TIBStringField;
    VerCheque_MagneticoAGENCIA: TIBStringField;
    VerCheque_MagneticoNOME: TIBStringField;
    VerCheque_MagneticoFONE: TIBStringField;
    VerCheque_MagneticoFAX: TIBStringField;
    VerCheque_MagneticoCELULAR: TIBStringField;
    VerCheque_MagneticoCPF_CGC: TIBStringField;
    VerCheque_MagneticoTotal: TFloatField;
    VerCheque_MagneticoJUROS: TIBBCDField;
    VerCheque_MagneticoMOEDA1: TIBBCDField;
    VerCheque_MagneticoMOEDA2: TIBBCDField;
    VerCheque_MagneticoTIPO: TIBStringField;
    VerCheque_MagneticoPLANILHA: TIntegerField;
    VerCheque_MagneticoDIGITO_AGENCIA: TIBStringField;
    VerCheque_MagneticoDIGITO_CHEQUE: TIBStringField;
    VerCheque_MagneticoMOTIVO_DEVOLUCAO: TIBStringField;
    VerCheque_MagneticoCODIGO_MOTIVO_DEVOLUCAO: TIntegerField;
    VerCheque_MagneticoVEZES_DEVOLUCAO: TIntegerField;
    VerCheque_MagneticoEMISSAO: TDateTimeField;
    VerCheque_MagneticoPRE_DATE: TDateTimeField;
    VerCheque_MagneticoDATA_CONCILIACAO: TDateTimeField;
    VerCheque_MagneticoDATA_ACERTO: TDateTimeField;
    VerCheque_MagneticoDATA_DEVOLUCAO: TDateTimeField;
    VerCheque_MagneticoRG_IE: TIBStringField;
    VerCheque_MagneticoPROCESSADO: TIBStringField;
    SelPlanoAGENCIA: TIBStringField;
    SelPlanoDV_AGENCIA: TIBStringField;
    SelPlanoCONTA_CORRENTE: TIBStringField;
    SelPlanoDV_CONTA_CORRENTE: TIBStringField;
    SelPlanoDV_AGENCIA_CONTA: TIBStringField;
    VerCheque_MagneticoCMC7: TIBStringField;
    ChequeCMC7: TIBStringField;
    Local_CobrancaENDERECO: TIBStringField;
    Local_CobrancaFONE: TIBStringField;
    Local_CobrancaCIDADE: TIBStringField;
    Local_CobrancaUF: TIBStringField;
    Local_CobrancaCODIGO_SCPC: TIBStringField;
    Local_CobrancaBAIRRO: TIBStringField;
    VerReceberLOCAL: TIntegerField;
    VerReceberConvenioLOCAL: TIntegerField;
    RecibosPagas: TIBDataSet;
    RecibosPagasCNPJ: TIBStringField;
    RecibosPagasCODIGO: TIntegerField;
    RecibosPagasDT_VENCTO: TDateTimeField;
    RecibosPagasDOCTO: TIBStringField;
    RecibosPagasDT_LANCTO: TDateTimeField;
    RecibosPagasVALOR: TFloatField;
    RecibosPagasHISTORICO: TIBStringField;
    RecibosPagasIMPRESSO: TIBStringField;
    RecibosPagasPESSOA_FJ: TIntegerField;
    RecibosPagasFAVORECIDO: TIBStringField;
    RecibosPagasFORNECEDOR: TIBStringField;
    RecibosPagasCPF_CGC: TIBStringField;
    spCriaReciboPagas: TIBStoredProc;
    Historico_Cobrancas_PclVENDA: TIntegerField;
    Historico_CobrancasVENDA: TIntegerField;
    Consulta_Cobranca_PessoaVENDA: TIntegerField;
    Consulta_Venda_Itens: TIBQuery;
    Consulta_Venda_ItensPRODUTO: TIBStringField;
    Consulta_Venda_ItensSEQUENCIA: TSmallintField;
    Consulta_Venda_ItensUNIDADE: TIBStringField;
    Consulta_Venda_ItensTotal: TFloatField;
    Consulta_Venda_ItensNOME_PRODUTO: TIBStringField;
    Consulta_Venda_ItensALIQUOTA: TIBStringField;
    Consulta_Venda_ItensORIGEM: TIntegerField;
    Consulta_Venda_ItensCTE: TIntegerField;
    Consulta_Venda_ItensCTIE: TIntegerField;
    Consulta_Venda_ItensREDUCAO: TIntegerField;
    Consulta_Venda_ItensPRODUTOFIS: TIBStringField;
    Consulta_Venda_ItensSUBUNIDADE: TIntegerField;
    Consulta_Venda_ItensNOME_FIS: TIBStringField;
    Consulta_Venda_ItensDESCONTO: TIBBCDField;
    Consulta_Venda_ItensICM: TIBBCDField;
    Consulta_Venda_ItensICM_SUBS: TIBBCDField;
    Consulta_Venda_ItensIPI: TIBBCDField;
    Consulta_Venda_ItensPESO: TIBBCDField;
    Consulta_Venda_ItensPORC_DESC: TIBBCDField;
    Consulta_Venda_ItensPRC_CUSTO: TIBBCDField;
    Consulta_Venda_ItensPRC_UNIT_ORIGINAL: TIBBCDField;
    Consulta_Venda_ItensPRC_UNITARIO: TIBBCDField;
    Consulta_Venda_ItensQUANTIDADE: TIBBCDField;
    Consulta_Venda_ItensVOLUME: TIBBCDField;
    Consulta_Venda_ItensCOMPLEMENTO: TIBStringField;
    Consulta_Venda_ItensSERVICO: TBlobField;
    Consulta_Venda_ItensQUANTIDADE_FIS: TIBBCDField;
    Consulta_Venda_ItensPRC_UNITARIO_FIS: TIBBCDField;
    Consulta_Venda_ItensTOTAL_FIS: TFloatField;
    SALDO_CONTAS: TIBQuery;
    SALDO_CONTASSALDO_INICIAL: TIBBCDField;
    SALDO_CONTASSALDO_LANCADAS: TIBBCDField;
    SALDO_CONTASSALDO_BAIXAS: TIBBCDField;
    SALDO_CONTASSALDO_FINAL: TIBBCDField;
    SALDO_CONTASORIGEM: TIBStringField;
    SelTipoDocto: TIBQuery;
    SelTipoDoctoCNPJ: TIBStringField;
    SelTipoDoctoSIGLA: TIBStringField;
    SelTipoDoctoNOME: TIBStringField;
    VerCheque: TIBDataSet;
    VerChequeBANCO: TIBStringField;
    VerChequeCONTA: TIBStringField;
    VerChequeCHEQUE: TIBStringField;
    VerChequeCONCILIADO: TIBStringField;
    VerChequeHISTORICO: TIBStringField;
    VerChequePRE_DATE: TDateTimeField;
    VerChequeAGENCIA: TIBStringField;
    VerChequeEMISSAO: TDateTimeField;
    VerChequeDATA_CONCILIACAO: TDateTimeField;
    VerChequeTIPO: TIBStringField;
    VerChequeDATA_ACERTO: TDateTimeField;
    VerChequePLANILHA: TIntegerField;
    VerChequeDIGITO_AGENCIA: TIBStringField;
    VerChequeDIGITO_CHEQUE: TIBStringField;
    VerChequeDATA_DEVOLUCAO: TDateTimeField;
    VerChequeVEZES_DEVOLUCAO: TIntegerField;
    VerChequePROCESSADO: TIBStringField;
    VerChequeID: TIntegerField;
    VerChequeMARCADO: TIBStringField;
    VerChequeNOME: TIBStringField;
    VerChequeFONE: TIBStringField;
    VerChequeFAX: TIBStringField;
    VerChequeCELULAR: TIBStringField;
    VerChequeCPF_CGC: TIBStringField;
    VerChequeRG_IE: TIBStringField;
    VerChequeLOCAL_TRABALHO: TIBStringField;
    VerChequeFONE_TRABALHO: TIBStringField;
    VerChequeMOTIVO_DEVOLUCAO: TIBStringField;
    VerChequetotal: TCurrencyField;
    VerChequeCMC7: TIBStringField;
    VerChequeDATA_REAPRES: TDateTimeField;
    qChequeRemessa: TIBDataSet;
    qChequeRemessaBANCO: TIBStringField;
    qChequeRemessaCHEQUE: TIBStringField;
    qChequeRemessaVENDA: TIntegerField;
    qChequeRemessaEMISSAO: TDateTimeField;
    qChequeRemessaPRE_DATE: TDateTimeField;
    qChequeRemessaVALOR: TFloatField;
    qChequeRemessaCONCILIADO: TIBStringField;
    qChequeRemessaHISTORICO: TIBStringField;
    qChequeRemessaAGENCIA: TIBStringField;
    qChequeRemessaDATA_CONCILIACAO: TDateTimeField;
    qChequeRemessaJUROS: TFloatField;
    qChequeRemessaTIPO: TIBStringField;
    qChequeRemessaDATA_ACERTO: TDateTimeField;
    qChequeRemessaPLANILHA: TIntegerField;
    qChequeRemessaDIGITO_AGENCIA: TIBStringField;
    qChequeRemessaDIGITO_CHEQUE: TIBStringField;
    qChequeRemessaDATA_DEVOLUCAO: TDateTimeField;
    qChequeRemessaVEZES_DEVOLUCAO: TIntegerField;
    qChequeRemessaPROCESSADO: TIBStringField;
    qChequeRemessaID: TIntegerField;
    qChequeRemessaMARCADO: TIBStringField;
    qChequeRemessaNOME: TIBStringField;
    qChequeRemessaFONE: TIBStringField;
    qChequeRemessaFAX: TIBStringField;
    qChequeRemessaCELULAR: TIBStringField;
    qChequeRemessaCPF_CGC: TIBStringField;
    qChequeRemessaRG_IE: TIBStringField;
    qChequeRemessaLOCAL_TRABALHO: TIBStringField;
    qChequeRemessaFONE_TRABALHO: TIBStringField;
    qChequeRemessaMOTIVO_DEVOLUCAO: TIBStringField;
    qChequeRemessaPESSOA_FJ: TIntegerField;
    qChequeRemessaCMC7: TIBStringField;
    qTotalRemessa: TIBDataSet;
    qTotalRemessaAPRAZO: TIBBCDField;
    qTotalRemessaDESCARTADOS: TIBBCDField;
    qTotalRemessaTOTAL: TIBBCDField;
    qTotalConc: TIBQuery;
    qTotalConcAVISTA: TIBBCDField;
    qTotalConcAPRAZO: TIBBCDField;
    qTotalConcDESCARTADOS: TIBBCDField;
    qTotalConcTOTAL: TIBBCDField;
    upChequeRemessa: TIBSQL;
    upReapresentaCheque: TIBSQL;
    upAcertaCheque: TIBSQL;
    upDesmarcarTodos: TIBSQL;
    upMarcarCheque: TIBSQL;
    qValidaAltCheque: TIBQuery;
    qValidaAltChequeCAIXAFECHADO: TIBStringField;
    Ver_Pessoa: TIBQuery;
    Ver_PessoaCODIGO: TIntegerField;
    Ver_PessoaNOME_RAZAO: TIBStringField;
    Ver_PessoaFANTASIA: TIBStringField;
    Ver_PessoaCOD_ATIVIDADE: TIntegerField;
    Ver_PessoaATIVIDADE: TIBStringField;
    Ver_PessoaCOD_ENDERECO: TIntegerField;
    Ver_PessoaENDERECO: TIBStringField;
    Ver_PessoaNUMERO: TIBStringField;
    Ver_PessoaCOMPLEMENTO: TIBStringField;
    Ver_PessoaCOD_BAIRRO: TIntegerField;
    Ver_PessoaBAIRRO: TIBStringField;
    Ver_PessoaCOD_CIDADE: TIntegerField;
    Ver_PessoaCIDADE: TIBStringField;
    Ver_PessoaUF: TIBStringField;
    Ver_PessoaCEP: TIBStringField;
    Ver_PessoaFONE: TIBStringField;
    Ver_PessoaFAX: TIBStringField;
    Ver_PessoaCELULAR: TIBStringField;
    Ver_PessoaPESSOA: TIBStringField;
    Ver_PessoaCPF_CGC: TIBStringField;
    Ver_PessoaCONTATO: TIBStringField;
    Ver_PessoaDT_NASCIMENTO: TDateTimeField;
    Ver_PessoaDT_CADASTRO: TDateTimeField;
    Ver_PessoaEMAIL: TIBStringField;
    Ver_PessoaOBS: TBlobField;
    Ver_PessoaINSC_MUNIC: TIBStringField;
    Ver_PessoaORDEM: TIntegerField;
    Ver_PessoaFONE_CLIENTE: TIBStringField;
    Ver_PessoaFONE_TRABALHO: TIBStringField;
    ChequeID: TIntegerField;
    SelClassificacao: TIBQuery;
    SelClassificacaoCNPJ: TIBStringField;
    SelClassificacaoCODIGO: TIntegerField;
    SelClassificacaoDIG_SENHA: TIBStringField;
    SelClassificacaoNOME: TIBStringField;
    Consulta_Cobranca_PessoaSELECIONADO: TIBStringField;
    VerChequeINDICE: TIBStringField;
    VerChequeVALOR: TFloatField;
    VerChequeJUROS: TFloatField;
    SelRegiao: TIBQuery;
    SelRegiaoCODIGO: TIntegerField;
    SelRegiaoNOME: TIBStringField;
    VerRecebidasConvenio: TIBQuery;
    VerRecebidasConvenioCODIGO: TIntegerField;
    VerRecebidasConvenioANO: TSmallintField;
    VerRecebidasConvenioPESSOA_FJ: TIntegerField;
    VerRecebidasConvenioDOCTO: TIBStringField;
    VerRecebidasConvenioPARCELA: TIBStringField;
    VerRecebidasConvenioHISTORICO: TIBStringField;
    VerRecebidasConvenioVALOR: TIBBCDField;
    VerRecebidasConvenioBOLETO: TIBStringField;
    VerRecebidasConvenioORIGEM: TIBStringField;
    VerRecebidasConvenioCODIGO_VN: TIntegerField;
    VerRecebidasConvenioANO_VN: TSmallintField;
    VerRecebidasConvenioAVISO: TSmallintField;
    VerRecebidasConvenioNOME: TIBStringField;
    VerRecebidasConvenioENDERECO: TIBStringField;
    VerRecebidasConvenioNUMERO: TIBStringField;
    VerRecebidasConvenioCIDADE: TIBStringField;
    VerRecebidasConvenioBAIRRO: TIBStringField;
    VerRecebidasConvenioCEP: TIBStringField;
    VerRecebidasConvenioUF: TIBStringField;
    VerRecebidasConvenioCOD_END: TIntegerField;
    VerRecebidasConvenioCOD_CID: TIntegerField;
    VerRecebidasConvenioCOD_BAI: TIntegerField;
    VerRecebidasConvenioFONE: TIBStringField;
    VerRecebidasConvenioCPF_CGC: TIBStringField;
    VerRecebidasConvenioVLR_PARCIAL: TIBBCDField;
    VerRecebidasConvenioTotal: TFloatField;
    VerRecebidasConvenioJUROS_REC: TIBBCDField;
    VerRecebidasConvenioDESCONTOS: TIBBCDField;
    VerRecebidasConvenioNUMDUPLICATA: TIntegerField;
    VerRecebidasConvenioNUMBOLETO: TIntegerField;
    VerRecebidasConvenioCONVENIADO: TIntegerField;
    VerRecebidasConvenioNOMECONVENIADO: TIBStringField;
    VerRecebidasConvenioCPF_CGCCONVENIADO: TIBStringField;
    VerRecebidasConvenioDT_EMISSAO: TDateTimeField;
    VerRecebidasConvenioDT_VENCTO: TDateTimeField;
    VerRecebidasConvenioDT_LANCTO: TDateTimeField;
    VerRecebidasConvenioDT_AVISO: TDateTimeField;
    VerRecebidasConvenioFATURA: TIntegerField;
    VerRecebidasConvenioPARCIAL: TIBBCDField;
    VerRecebidasConvenioCOBRADOR: TIntegerField;
    VerRecebidasConvenioLOCAL: TIntegerField;
    VerRecebidasConvenioVLR_BAIXA: TIBBCDField;
    VerRecebidasConvenioJUROS: TIBBCDField;
    VerChequeTROCA: TIntegerField;
    Local_CobrancaBANCO: TIBStringField;
    VerReceberADM: TIBQuery;
    VerReceberADMCODIGO: TIntegerField;
    VerReceberADMANO: TSmallintField;
    VerReceberADMPESSOA_FJ: TIntegerField;
    VerReceberADMDOCTO: TIBStringField;
    VerReceberADMPARCELA: TIBStringField;
    VerReceberADMHISTORICO: TIBStringField;
    VerReceberADMBOLETO: TIBStringField;
    VerReceberADMORIGEM: TIBStringField;
    VerReceberADMCODIGO_VN: TIntegerField;
    VerReceberADMANO_VN: TSmallintField;
    VerReceberADMAVISO: TSmallintField;
    VerReceberADMNOME: TIBStringField;
    VerReceberADMENDERECO: TIBStringField;
    VerReceberADMNUMERO: TIBStringField;
    VerReceberADMBAIRRO: TIBStringField;
    VerReceberADMCEP: TIBStringField;
    VerReceberADMUF: TIBStringField;
    VerReceberADMCOD_END: TIntegerField;
    VerReceberADMCOD_CID: TIntegerField;
    VerReceberADMCOD_BAI: TIntegerField;
    VerReceberADMFONE: TIBStringField;
    VerReceberADMSELECIONADO: TIBStringField;
    VerReceberADMJUROS_REC: TIBBCDField;
    VerReceberADMDESCONTOS: TIBBCDField;
    VerReceberADMTIPO_DOCTO: TIBStringField;
    VerReceberADMNUMDUPLICATA: TIntegerField;
    VerReceberADMNUMBOLETO: TIntegerField;
    VerReceberADMFATURA: TIntegerField;
    VerReceberADMPARCIAL: TIBBCDField;
    VerReceberADMDT_EMISSAO: TDateTimeField;
    VerReceberADMDT_VENCTO: TDateTimeField;
    VerReceberADMDT_LANCTO: TDateTimeField;
    VerReceberADMJUROS_PARCIAL: TIBBCDField;
    VerReceberADMLOCAL: TIntegerField;
    VerReceberADMDATA_ULT_BAIXA: TDateTimeField;
    VerReceberADMVALOR: TIBBCDField;
    VerReceberADMDT_AVISO: TDateTimeField;
    VerReceberADMVLR_PARCIAL: TIBBCDField;
    VerReceberADMSelecao: TFloatField;
    VerReceberADMJuros_Calculadors: TFloatField;
    VerReceberADMTotal_Nominal: TFloatField;
    VerReceberADMTotal: TFloatField;
    VerReceberADMAtraso: TIntegerField;
    VerReceberJuros_Conta: TFloatField;
    SelAgrupador: TIBQuery;
    SelAgrupadorCODIGO: TIntegerField;
    SelAgrupadorNOME: TIBStringField;
    VerReceberADMMulta: TFloatField;
    VerReceberADMJurosSozinho: TFloatField;
    SelPessoasENDERECO: TIBStringField;
    SelPessoasFJENDERECO: TIBStringField;
    VerReceberConvenioAtraso: TIntegerField;
    VerReceberConvenioJUROS_CALCULADORS: TFloatField;
    VerReceberConvenioTOTAL_NOMINAL: TFloatField;
    Consulta_Cobranca: TIBQuery;
    CobrancaINDICE: TIBStringField;
    edtCobranca_Listagem: TIBDataSet;
    IBStringField1: TIBStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IBStringField2: TIBStringField;
    IntegerField1: TIntegerField;
    DateTimeField3: TDateTimeField;
    IBStringField3: TIBStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IBStringField4: TIBStringField;
    IntegerField4: TIntegerField;
    IBStringField5: TIBStringField;
    IntegerField5: TIntegerField;
    IBStringField6: TIBStringField;
    qryListagemCheques: TIBQuery;
    qryListagemChequesCHEQUE: TIBStringField;
    qryListagemChequesNOME: TIBStringField;
    qryListagemChequesAGENCIA: TIBStringField;
    qryListagemChequesVALOR: TFloatField;
    qryListagemChequesPRE_DATE: TDateTimeField;
    qryListagemChequesCLIENTE: TIBStringField;
    AcertaJuros: TIBSQL;
    Contas_ReceberARQUIVO_MORTO: TIBStringField;
    upTrocaEstado: TIBSQL;
    VerPendenciasRel: TIBQuery;
    IntegerField6: TIntegerField;
    SmallintField1: TSmallintField;
    IntegerField7: TIntegerField;
    IBStringField7: TIBStringField;
    IBStringField8: TIBStringField;
    IBStringField9: TIBStringField;
    IBBCDField1: TIBBCDField;
    IBStringField10: TIBStringField;
    IBStringField11: TIBStringField;
    IntegerField8: TIntegerField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    IBStringField12: TIBStringField;
    IBStringField13: TIBStringField;
    IBStringField14: TIBStringField;
    IBStringField15: TIBStringField;
    IBStringField16: TIBStringField;
    IBStringField17: TIBStringField;
    IBStringField18: TIBStringField;
    IntegerField10: TIntegerField;
    IntegerField11: TIntegerField;
    IBStringField19: TIBStringField;
    IBStringField20: TIBStringField;
    IBStringField21: TIBStringField;
    IBBCDField2: TIBBCDField;
    FloatField1: TFloatField;
    IBBCDField3: TIBBCDField;
    IBBCDField4: TIBBCDField;
    IBStringField22: TIBStringField;
    IntegerField12: TIntegerField;
    IntegerField14: TIntegerField;
    IBBCDField5: TIBBCDField;
    DateTimeField4: TDateTimeField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    IBBCDField6: TIBBCDField;
    FloatField2: TFloatField;
    DateTimeField8: TDateTimeField;
    FloatField4: TFloatField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    VerPendenciasARQ_MORTO: TIBStringField;
    Receber_Data_AnaliticoARQ_MORTO: TIBStringField;
    VerReceberConvenioARQUIVO: TIBStringField;
    SelecionaConta: TIBSQL;
    Contas_ReceberJurosSozinho: TFloatField;
    Contas_ReceberMulta: TFloatField;
    VerReceberARQ_MORTO: TIBStringField;
    VerReceberADMCPF_CGC: TIBStringField;
    Ver_PessoaRG_IE: TIBStringField;
    VerChequePESSOA_FJ: TIntegerField;
    VerRecebidasConvenioDT_BAIXA: TDateTimeField;
    DesmarcaReceber: TIBSQL;
    AgendaCobranca: TIBSQL;
    InsereCobranca: TIBSQL;
    qryRelReceberClass: TIBQuery;
    qryRelReceberClassJuros_Calculadors: TFloatField;
    qryRelReceberClassTotal_Nominal: TFloatField;
    qryRelReceberClassJuros_Conta: TFloatField;
    qryRelReceberClassCODIGO: TIntegerField;
    qryRelReceberClassANO: TSmallintField;
    qryRelReceberClassPESSOA_FJ: TIntegerField;
    qryRelReceberClassDT_EMISSAO: TDateTimeField;
    qryRelReceberClassDT_VENCTO: TDateTimeField;
    qryRelReceberClassDT_LANCTO: TDateTimeField;
    qryRelReceberClassDOCTO: TIBStringField;
    qryRelReceberClassPARCELA: TIBStringField;
    qryRelReceberClassHISTORICO: TIBStringField;
    qryRelReceberClassVALOR: TIBBCDField;
    qryRelReceberClassVLR_PARCIAL: TIBBCDField;
    qryRelReceberClassJUROS_REC: TIBBCDField;
    qryRelReceberClassDESCONTOS: TIBBCDField;
    qryRelReceberClassBOLETO: TIBStringField;
    qryRelReceberClassORIGEM: TIBStringField;
    qryRelReceberClassCODIGO_VN: TIntegerField;
    qryRelReceberClassANO_VN: TSmallintField;
    qryRelReceberClassAVISO: TSmallintField;
    qryRelReceberClassDT_AVISO: TDateTimeField;
    qryRelReceberClassNOME: TIBStringField;
    qryRelReceberClassENDERECO: TIBStringField;
    qryRelReceberClassNUMERO: TIBStringField;
    qryRelReceberClassCIDADE: TIBStringField;
    qryRelReceberClassBAIRRO: TIBStringField;
    qryRelReceberClassCEP: TIBStringField;
    qryRelReceberClassUF: TIBStringField;
    qryRelReceberClassCOD_END: TIntegerField;
    qryRelReceberClassCOD_CID: TIntegerField;
    qryRelReceberClassCOD_BAI: TIntegerField;
    qryRelReceberClassFONE: TIBStringField;
    qryRelReceberClassCPF_CGC: TIBStringField;
    qryRelReceberClassSELECIONADO: TIBStringField;
    qryRelReceberClassTIPO_DOCTO: TIBStringField;
    qryRelReceberClassNUMDUPLICATA: TIntegerField;
    qryRelReceberClassFATURA: TIntegerField;
    qryRelReceberClassNUMBOLETO: TIntegerField;
    qryRelReceberClassPARCIAL: TIBBCDField;
    qryRelReceberClassJUROS_PARCIAL: TIBBCDField;
    qryRelReceberClassDATA_ULT_BAIXA: TDateTimeField;
    qryRelReceberClassCOBRADOR: TIntegerField;
    qryRelReceberClassLOCAL: TIntegerField;
    qryRelReceberClassCLASSE: TIntegerField;
    qryRelReceberClassARQUIVO: TIBStringField;
    qryRelReceberClassTotal: TFloatField;
    qryRelReceberVed: TIBQuery;
    qryRelReceberVedJuros_Calculadors: TFloatField;
    qryRelReceberVedTotal_Nominal: TFloatField;
    qryRelReceberVedJuros_Conta: TFloatField;
    qryRelReceberVedTotal: TFloatField;
    qryRelReceberVedCODIGO: TIntegerField;
    qryRelReceberVedANO: TSmallintField;
    qryRelReceberVedPESSOA_FJ: TIntegerField;
    qryRelReceberVedDT_EMISSAO: TDateTimeField;
    qryRelReceberVedDT_VENCTO: TDateTimeField;
    qryRelReceberVedDT_LANCTO: TDateTimeField;
    qryRelReceberVedDOCTO: TIBStringField;
    qryRelReceberVedPARCELA: TIBStringField;
    qryRelReceberVedHISTORICO: TIBStringField;
    qryRelReceberVedVALOR: TIBBCDField;
    qryRelReceberVedVLR_PARCIAL: TIBBCDField;
    qryRelReceberVedJUROS_REC: TIBBCDField;
    qryRelReceberVedDESCONTOS: TIBBCDField;
    qryRelReceberVedBOLETO: TIBStringField;
    qryRelReceberVedORIGEM: TIBStringField;
    qryRelReceberVedCODIGO_VN: TIntegerField;
    qryRelReceberVedANO_VN: TSmallintField;
    qryRelReceberVedAVISO: TSmallintField;
    qryRelReceberVedDT_AVISO: TDateTimeField;
    qryRelReceberVedNOME: TIBStringField;
    qryRelReceberVedENDERECO: TIBStringField;
    qryRelReceberVedNUMERO: TIBStringField;
    qryRelReceberVedCIDADE: TIBStringField;
    qryRelReceberVedBAIRRO: TIBStringField;
    qryRelReceberVedCEP: TIBStringField;
    qryRelReceberVedUF: TIBStringField;
    qryRelReceberVedCOD_END: TIntegerField;
    qryRelReceberVedCOD_CID: TIntegerField;
    qryRelReceberVedCOD_BAI: TIntegerField;
    qryRelReceberVedFONE: TIBStringField;
    qryRelReceberVedCPF_CGC: TIBStringField;
    qryRelReceberVedSELECIONADO: TIBStringField;
    qryRelReceberVedTIPO_DOCTO: TIBStringField;
    qryRelReceberVedNUMDUPLICATA: TIntegerField;
    qryRelReceberVedFATURA: TIntegerField;
    qryRelReceberVedNUMBOLETO: TIntegerField;
    qryRelReceberVedPARCIAL: TIBBCDField;
    qryRelReceberVedJUROS_PARCIAL: TIBBCDField;
    qryRelReceberVedDATA_ULT_BAIXA: TDateTimeField;
    qryRelReceberVedCOBRADOR: TIntegerField;
    qryRelReceberVedLOCAL: TIntegerField;
    qryRelReceberVedVENDEDOR: TIntegerField;
    qryRelReceberVedARQUIVO: TIBStringField;
    VerReceberADMARQ_MORTO: TIBStringField;
    qryVerFatPendencia: TIBQuery;
    qryVerFatPendenciaCODIGO: TIntegerField;
    qryVerFatPendenciaPESSOA_FJ: TIntegerField;
    qryVerFatPendenciaDATA: TDateTimeField;
    qryVerFatPendenciaVALOR: TIBBCDField;
    qryVerFatPendenciaVALOR_ORIGINAL: TIBBCDField;
    qryVerFatPendenciaDESCONTO: TIBBCDField;
    qryVerFatPendenciaJUROS: TIBBCDField;
    qryVerFatPendenciaVENCIMENTO: TDateTimeField;
    qryVerFatPendenciaULTIMA_BX_PARCIAL: TDateTimeField;
    qryVerFatPendenciaHISTORICO: TIBStringField;
    qryVerFatPendenciaNOME: TIBStringField;
    qryVerFatPendenciaNOME_FANTASIA: TIBStringField;
    qryVerFatPendenciaCOMPRADOR: TIBStringField;
    qryVerFatPendenciaFONE_COMPRADOR: TIBStringField;
    qryVerFatPendenciaENDERECO: TIBStringField;
    qryVerFatPendenciaNUMERO: TIBStringField;
    qryVerFatPendenciaCIDADE: TIBStringField;
    qryVerFatPendenciaBAIRRO: TIBStringField;
    qryVerFatPendenciaCEP: TIBStringField;
    qryVerFatPendenciaUF: TIBStringField;
    qryVerFatPendenciaCOD_END: TIntegerField;
    qryVerFatPendenciaCOD_CID: TIntegerField;
    qryVerFatPendenciaCOD_BAI: TIntegerField;
    qryVerFatPendenciaAGRUPADORA: TIntegerField;
    qryVerFatPendenciaFONE: TIBStringField;
    qryVerFatPendenciaBANCO: TIBStringField;
    qryVerFatPendenciaBOLETO: TIBStringField;
    qryVerFatPendenciaOBS: TIBStringField;
    qryVerFatPendenciaDUPLICATA: TIBStringField;
    qryVerFatPendenciaENVIADA: TIBStringField;
    qryVerFatPendenciaTIPO: TIBStringField;
    qryVerFatPendenciaNOME_BANCO: TIBStringField;
    qryVerFatPendenciaCPF_CGC: TIBStringField;
    qryVerFatPendenciaDATA_BAIXA: TDateTimeField;
    qryVerFatPendenciaUSUARIO: TIBStringField;
    qryVerFatPendenciaTotal: TFloatField;
    qryVerRecPendencia: TIBQuery;
    qryVerRecPendenciaCODIGO: TIntegerField;
    qryVerRecPendenciaANO: TSmallintField;
    qryVerRecPendenciaPESSOA_FJ: TIntegerField;
    qryVerRecPendenciaDT_EMISSAO: TDateTimeField;
    qryVerRecPendenciaDT_VENCTO: TDateTimeField;
    qryVerRecPendenciaDT_LANCTO: TDateTimeField;
    qryVerRecPendenciaDOCTO: TIBStringField;
    qryVerRecPendenciaPARCELA: TIBStringField;
    qryVerRecPendenciaHISTORICO: TIBStringField;
    qryVerRecPendenciaVALOR: TIBBCDField;
    qryVerRecPendenciaVLR_PARCIAL: TIBBCDField;
    qryVerRecPendenciaJUROS_REC: TIBBCDField;
    qryVerRecPendenciaDESCONTOS: TIBBCDField;
    qryVerRecPendenciaBOLETO: TIBStringField;
    qryVerRecPendenciaORIGEM: TIBStringField;
    qryVerRecPendenciaCODIGO_VN: TIntegerField;
    qryVerRecPendenciaANO_VN: TSmallintField;
    qryVerRecPendenciaAVISO: TSmallintField;
    qryVerRecPendenciaDT_AVISO: TDateTimeField;
    qryVerRecPendenciaNOME: TIBStringField;
    qryVerRecPendenciaENDERECO: TIBStringField;
    qryVerRecPendenciaNUMERO: TIBStringField;
    qryVerRecPendenciaCIDADE: TIBStringField;
    qryVerRecPendenciaBAIRRO: TIBStringField;
    qryVerRecPendenciaCEP: TIBStringField;
    qryVerRecPendenciaUF: TIBStringField;
    qryVerRecPendenciaCOD_END: TIntegerField;
    qryVerRecPendenciaCOD_CID: TIntegerField;
    qryVerRecPendenciaCOD_BAI: TIntegerField;
    qryVerRecPendenciaFONE: TIBStringField;
    qryVerRecPendenciaCPF_CGC: TIBStringField;
    qryVerRecPendenciaSELECIONADO: TIBStringField;
    qryVerRecPendenciaTIPO_DOCTO: TIBStringField;
    qryVerRecPendenciaNUMDUPLICATA: TIntegerField;
    qryVerRecPendenciaFATURA: TIntegerField;
    qryVerRecPendenciaNUMBOLETO: TIntegerField;
    qryVerRecPendenciaPARCIAL: TIBBCDField;
    qryVerRecPendenciaJUROS_PARCIAL: TIBBCDField;
    qryVerRecPendenciaDATA_ULT_BAIXA: TDateTimeField;
    qryVerRecPendenciaCOBRADOR: TIntegerField;
    qryVerRecPendenciaLOCAL: TIntegerField;
    qryVerRecPendenciaARQUIVO: TIBStringField;
    qryVerRecPendenciaTotal: TFloatField;
    VerReceberADMJuros_Conta: TFloatField;
    Receber_Data_AnaliticoCrack: TStringField;
    Receber_DataSOMA: TIBBCDField;
    Receber_DataDATA: TDateTimeField;
    Receber_DataPORCENTAGEM: TIBBCDField;
    qryRelReceberVedAtraso: TIntegerField;
    qryRelReceberClassAtraso: TIntegerField;
    qryRelReceberClassSelecao: TFloatField;
    qryRelReceberVedSelecao: TFloatField;
    qryLocalizaCob: TIBQuery;
    VerChequeCONTA_CONC: TIntegerField;
    qryImpBoleto: TIBQuery;
    qryImpBoletoCNPJ: TIBStringField;
    qryImpBoletoCODIGO: TIntegerField;
    qryImpBoletoANO: TSmallintField;
    qryImpBoletoPESSOA_FJ: TIntegerField;
    qryImpBoletoDT_EMISSAO: TDateTimeField;
    qryImpBoletoDT_VENCTO: TDateTimeField;
    qryImpBoletoDT_LANCTO: TDateTimeField;
    qryImpBoletoDOCTO: TIBStringField;
    qryImpBoletoPARCELA: TIBStringField;
    qryImpBoletoHISTORICO: TIBStringField;
    qryImpBoletoVALOR: TFloatField;
    qryImpBoletoVLR_PARCIAL: TFloatField;
    qryImpBoletoJUROS_REC: TFloatField;
    qryImpBoletoDESCONTOS: TFloatField;
    qryImpBoletoBOLETO: TIBStringField;
    qryImpBoletoORIGEM: TIBStringField;
    qryImpBoletoCODIGO_VN: TIntegerField;
    qryImpBoletoANO_VN: TSmallintField;
    qryImpBoletoAVISO: TIntegerField;
    qryImpBoletoDT_AVISO: TDateTimeField;
    qryImpBoletoSELECIONADO: TIBStringField;
    qryImpBoletoFATURA: TIntegerField;
    qryImpBoletoTIPO_DOCTO: TIBStringField;
    qryImpBoletoNUMBOLETO: TIntegerField;
    qryImpBoletoNOME: TIBStringField;
    qryImpBoletoNUMDUPLICATA: TIntegerField;
    qryImpBoletoMOEDA1: TFloatField;
    qryImpBoletoMOEDA2: TFloatField;
    qryImpBoletoPARCIAL: TFloatField;
    qryImpBoletoCODIGO_TRC: TIntegerField;
    qryImpBoletoJUROS_PARCIAL: TFloatField;
    qryImpBoletoDATA_ULT_BAIXA: TDateTimeField;
    qryImpBoletoCOBRADOR: TIntegerField;
    qryImpBoletoFLUXO_CAIXA: TDateTimeField;
    qryImpBoletoLOCAL_COBRANCA: TIntegerField;
    qryImpBoletoVLR_ORIG_ALT: TIBStringField;
    qryImpBoletoBLT_NOSSO_NUM: TIBStringField;
    qryImpBoletoBLT_BANCO: TIntegerField;
    qryImpBoletoBLT_REM_GERADA: TIBStringField;
    qryImpBoletoNDOC: TLargeintField;
    qryImpBoletoARQUIVO_MORTO: TIBStringField;
    qryImpBoletoTotal: TFloatField;
    qryImpBoletoJuros_Calculados: TFloatField;
    qryImpBoletoTotal_Nominal: TFloatField;
    VerPagarDT_ULTIMA_BAIXA: TDateField;
    qryVerPagarSel: TIBQuery;
    qryVerPagarSelCODIGO: TIntegerField;
    qryVerPagarSelANO: TSmallintField;
    qryVerPagarSelPESSOA_FJ: TIntegerField;
    qryVerPagarSelDT_EMISSAO: TDateTimeField;
    qryVerPagarSelDT_VENCTO: TDateTimeField;
    qryVerPagarSelDT_LANCTO: TDateTimeField;
    qryVerPagarSelDOCTO: TIBStringField;
    qryVerPagarSelPARCELA: TIBStringField;
    qryVerPagarSelHISTORICO: TIBStringField;
    qryVerPagarSelVALOR: TIBBCDField;
    qryVerPagarSelVLR_PARCIAL: TIBBCDField;
    qryVerPagarSelJUROS_PAG: TIBBCDField;
    qryVerPagarSelDESCONTOS: TIBBCDField;
    qryVerPagarSelBOLETO: TIBStringField;
    qryVerPagarSelORIGEM: TIBStringField;
    qryVerPagarSelCODIGO_ENT: TIntegerField;
    qryVerPagarSelANO_ENT: TSmallintField;
    qryVerPagarSelAVISO: TSmallintField;
    qryVerPagarSelDT_AVISO: TDateTimeField;
    qryVerPagarSelNOME: TIBStringField;
    qryVerPagarSelENDERECO: TIBStringField;
    qryVerPagarSelNUMERO: TIBStringField;
    qryVerPagarSelCIDADE: TIBStringField;
    qryVerPagarSelBAIRRO: TIBStringField;
    qryVerPagarSelCEP: TIBStringField;
    qryVerPagarSelUF: TIBStringField;
    qryVerPagarSelCOD_END: TIntegerField;
    qryVerPagarSelCOD_CID: TIntegerField;
    qryVerPagarSelCOD_BAI: TIntegerField;
    qryVerPagarSelFONE: TIBStringField;
    qryVerPagarSelCPF_CGC: TIBStringField;
    qryVerPagarSelSELECIONADO: TIBStringField;
    qryVerPagarSelCENTRO_CUSTO: TIntegerField;
    qryVerPagarSelNOME_CENTRO: TIBStringField;
    qryVerPagarSelDUPLICATA: TIBStringField;
    qryVerPagarSelCONFERIDA: TIBStringField;
    qryVerPagarSelDT_ULTIMA_BAIXA: TDateField;
    qryVerPagarSelTotal: TFloatField;
    Ver_NfCf_Venda1: TIBQuery;
    Ver_NfCf_Venda1NF: TIntegerField;
    Ver_NfCf_Venda1CF: TIntegerField;
    pcd_estorna_ch: TIBStoredProc;
    VerReceberConvenioNOME: TIBStringField;
    Cheque_CtbCHEQUE: TIntegerField;
    DesdChequeCtb: TIBDataSet;
    DesdChequeCtbCHEQUE: TIntegerField;
    DesdChequeCtbCNPJ: TIBStringField;
    DesdChequeCtbCONTA: TIntegerField;
    DesdChequeCtbCONTABILIDADE: TIBStringField;
    DesdChequeCtbDATA: TDateTimeField;
    DesdChequeCtbHISTORICO: TIBStringField;
    DesdChequeCtbIMPRESSO: TIBStringField;
    DesdChequeCtbNOME: TIBStringField;
    DesdChequeCtbORIGEM: TIBStringField;
    DesdChequeCtbPESSOA_FJ: TIntegerField;
    DesdChequeCtbPLANILHA: TIntegerField;
    DesdChequeCtbVALOR: TFloatField;
    DesdChequeCtbPRE_DATE: TDateTimeField;
    Cheque_CtbPRE_DATE: TDateTimeField;
    qryImpCheque: TIBQuery;
    qryImpChequeMES: TSmallintField;
    qryImpChequeANO: TSmallintField;
    qryImpChequeDIA: TSmallintField;
    qryImpChequeVALOR: TFloatField;
    qryImpChequeNOME: TIBStringField;
    qryImpChequeCIDADE: TIBStringField;
    DsImpCheque: TDataSource;
    Historico_CobrancasHR_COBRAR_EM: TTimeField;
    Historico_CobrancasHR_COBRANCA: TTimeField;
    Historico_Cobrancas_PclCOD_REC: TIntegerField;
    Historico_Cobrancas_PclHR_COBRAR_EM: TTimeField;
    Historico_Cobrancas_PclHR_COBRANCA: TTimeField;
    SelCobrador: TIBQuery;
    SelCobradorCNPJ: TIBStringField;
    SelCobradorCODIGO: TIntegerField;
    SelCobradorNOME: TIBStringField;
    SelCobradorINTERNO: TIBStringField;
    VerChequeFORNECEDOR: TIntegerField;
    VerChequeNOME_FORNECEDOR: TIBStringField;
    Consulta_CobrancaSOMA: TIBBCDField;
    Consulta_CobrancaINDICE: TIBStringField;
    Consulta_CobrancaDATA: TDateField;
    Consulta_CobrancaULTIMA_BAIXA: TDateField;
    Consulta_CobrancaPESSOA_FJ: TIntegerField;
    Consulta_CobrancaNOME: TIBStringField;
    Consulta_CobrancaENDERECO: TIBStringField;
    Consulta_CobrancaNUMERO: TIBStringField;
    Consulta_CobrancaENDERECO_TRABALHO: TIBStringField;
    Consulta_CobrancaCIDADE: TIBStringField;
    Consulta_CobrancaBAIRRO: TIBStringField;
    Consulta_CobrancaCEP: TIBStringField;
    Consulta_CobrancaUF: TIBStringField;
    Consulta_CobrancaCOD_END: TIntegerField;
    Consulta_CobrancaCOD_CID: TIntegerField;
    Consulta_CobrancaCOD_BAI: TIntegerField;
    Consulta_CobrancaNUMERO_TRABALHO: TIBStringField;
    Consulta_CobrancaFONE: TIBStringField;
    Consulta_CobrancaFAX: TIBStringField;
    Consulta_CobrancaCELULAR: TIBStringField;
    Consulta_CobrancaLOCAL_TRABALHO: TIBStringField;
    Consulta_CobrancaFONE_TRABALHO: TIBStringField;
    Consulta_CobrancaCPF_CGC: TIBStringField;
    Consulta_CobrancaAGENDADO_PARA: TDateTimeField;
    Consulta_CobrancaCOBRAR_EM: TDateTimeField;
    Consulta_CobrancaMOTIVO: TIBStringField;
    Consulta_CobrancaHISTORICO: TIBStringField;
    Consulta_CobrancaCOBRADOR: TIntegerField;
    Consulta_CobrancaCONTPAGAS: TIntegerField;
    Consulta_CobrancaCONTAGENDAMENTOS: TIntegerField;
    Consulta_CobrancaNOME_COBRADOR: TIBStringField;
    Consulta_CobrancaRECEBER: TIntegerField;
    Consulta_CobrancaANO: TIntegerField;
    Consulta_CobrancaDOCTO: TIBStringField;
    Consulta_CobrancaORIGEM: TIBStringField;
    Consulta_CobrancaLANCAMENTO: TDateTimeField;
    Consulta_CobrancaVENDA: TIntegerField;
    Consulta_CobrancaARQ_MORTO: TIBStringField;
    Consulta_CobrancaHR_COBRAR_EM: TTimeField;
    Consulta_CobrancaHR_COBRANCA: TTimeField;
    qryHistCobranca: TIBQuery;
    qryHistCobrancaDATA_COBRANCA: TDateTimeField;
    qryHistCobrancaMOTIVO: TIntegerField;
    qryHistCobrancaPESSOA_FJ: TIntegerField;
    qryHistCobrancaCODIGO: TIntegerField;
    qryHistCobrancaNOME: TIBStringField;
    qryHistCobrancaCOBRAR_EM: TDateTimeField;
    qryHistCobrancaHISTORICO: TIBStringField;
    qryHistCobrancaPAGO_EM: TDateTimeField;
    qryHistCobrancaNOME_MOTIVO: TIBStringField;
    qryHistCobrancaCOBRADOR: TIntegerField;
    qryHistCobrancaNOME_COBRADOR: TIBStringField;
    qryHistCobrancaDT_VENCTO: TDateTimeField;
    qryHistCobrancaDOCTO: TIBStringField;
    qryHistCobrancaVALOR: TIBBCDField;
    qryHistCobrancaCOD_REC: TIntegerField;
    qryHistCobrancaANO: TIntegerField;
    qryHistCobrancaVENDA: TIntegerField;
    Consulta_CobrancaLOCAL_COBRANCA: TIntegerField;
    qryRelReceber: TIBQuery;
    Contas_ReceberSALDO_DESCTO: TFloatField;
    VerReceberADMSALDO_DESCTO: TIBBCDField;
    Contas_ReceberBLT_NOSSO_NUM: TIBStringField;
    DesdChequeCtbNOMINAL: TIBStringField;
    Cheque_CtbNOMINAL: TIBStringField;
    Cheque_CtbExtenso: TStringField;
    CartaoPLANILHA: TIntegerField;
    Consulta_Cobranca_PessoaEMP_EMPRESA: TIBStringField;
    Consulta_Cobranca_PessoaEMP_CIDADE: TIBStringField;
    Consulta_Cobranca_PessoaEMP_CNPJ: TIBStringField;
    Consulta_Cobranca_PessoaEMP_ENDERECO: TIBStringField;
    Consulta_Cobranca_PessoaEMP_CEP: TIBStringField;
    Consulta_Cobranca_PessoaEMP_BAIRRO: TIBStringField;
    Consulta_Cobranca_PessoaEMP_FONE: TIBStringField;
    Consulta_Cobranca_PessoaULTIMA_BAIXA: TDateTimeField;
    Consulta_Cobranca_PessoaENDERECO_TRABALHO: TIBStringField;
    Consulta_Cobranca_PessoaNUMERO_TRABALHO: TIBStringField;
    Consulta_Cobranca_PessoaFAX: TIBStringField;
    Consulta_Cobranca_PessoaCELULAR: TIBStringField;
    Consulta_Cobranca_PessoaLOCAL_TRABALHO: TIBStringField;
    Consulta_Cobranca_PessoaFONE_TRABALHO: TIBStringField;
    Consulta_Cobranca_PessoaTOTALRECEBER: TIBBCDField;
    Consulta_Cobranca_PessoaVALOR: TIBBCDField;
    Consulta_Cobranca_PessoaDESCONTOS: TIBBCDField;
    Consulta_Cobranca_PessoaJUROS_REC: TIBBCDField;
    Consulta_Cobranca_PessoaVLR_PARCIAL: TIBBCDField;
    Consulta_Cobranca_PessoaREC_ANO_VN: TSmallintField;
    Consulta_Cobranca_PessoaREC_CODIGO_TRC: TIntegerField;
    Consulta_Cobranca_PessoaREC_CODIGO_VN: TIntegerField;
    Consulta_Cobranca_PessoaREC_DATA_ULT_BAIXA: TDateTimeField;
    Consulta_Cobranca_PessoaREC_DOCTO: TIBStringField;
    Consulta_Cobranca_PessoaREC_DT_AVISO: TDateTimeField;
    Consulta_Cobranca_PessoaREC_DT_EMISSAO: TDateTimeField;
    Consulta_Cobranca_PessoaREC_DT_LANCTO: TDateTimeField;
    Consulta_Cobranca_PessoaREC_HISTORICO: TIBStringField;
    Consulta_Cobranca_PessoaREC_JUROS_PARCIAL: TFloatField;
    Consulta_Cobranca_PessoaREC_JUROS_REC: TFloatField;
    Consulta_Cobranca_PessoaREC_ORIGEM: TIBStringField;
    Consulta_Cobranca_PessoaREC_PARCELA: TIBStringField;
    Consulta_Cobranca_PessoaREC_PARCIAL: TFloatField;
    Consulta_Cobranca_PessoaREC_TIPO_DOCTO: TIBStringField;
    Consulta_Cobranca_PessoaREC_VALOR: TFloatField;
    Consulta_Cobranca_PessoaREC_VALOR_NOMINAL: TFloatField;
    Consulta_Cobranca_PessoaREC_VLR_ORIG_ALT: TIBStringField;
    Consulta_Cobranca_PessoaREC_VLR_PARCIAL: TFloatField;
    Contas_ReceberNUM_NF: TIntegerField;
    Contas_ReceberNUM_CUPOM: TIntegerField;
    Consulta_CobrancaSELECIONADO: TIBStringField;
    Consulta_Cobranca_PessoaFANTASIA: TIBStringField;
    Consulta_Cobranca_PessoaRG_IE: TIBStringField;
    Consulta_Cobranca_PessoaDT_NASCIMENTO: TDateTimeField;
    Consulta_Cobranca_PessoaREC_DT_VENCTO: TDateField;
    Consulta_Cobranca_PessoaATRASO: TIntegerField;
    VerReceberADM2: TIBQuery;
    VerReceberADM2CODIGO: TIntegerField;
    VerReceberADM2ANO: TSmallintField;
    VerReceberADM2PESSOA_FJ: TIntegerField;
    VerReceberADM2DT_EMISSAO: TDateTimeField;
    VerReceberADM2DT_VENCTO: TDateTimeField;
    VerReceberADM2DT_LANCTO: TDateTimeField;
    VerReceberADM2DOCTO: TIBStringField;
    VerReceberADM2PARCELA: TIBStringField;
    VerReceberADM2HISTORICO: TIBStringField;
    VerReceberADM2VALOR: TIBBCDField;
    VerReceberADM2VLR_PARCIAL: TIBBCDField;
    VerReceberADM2JUROS_REC: TIBBCDField;
    VerReceberADM2DESCONTOS: TIBBCDField;
    VerReceberADM2BOLETO: TIBStringField;
    VerReceberADM2ORIGEM: TIBStringField;
    VerReceberADM2CODIGO_VN: TIntegerField;
    VerReceberADM2ANO_VN: TSmallintField;
    VerReceberADM2AVISO: TSmallintField;
    VerReceberADM2DT_AVISO: TDateTimeField;
    VerReceberADM2NOME: TIBStringField;
    VerReceberADM2ENDERECO: TIBStringField;
    VerReceberADM2NUMERO: TIBStringField;
    VerReceberADM2CIDADE: TIBStringField;
    VerReceberADM2BAIRRO: TIBStringField;
    VerReceberADM2CEP: TIBStringField;
    VerReceberADM2UF: TIBStringField;
    VerReceberADM2COD_END: TIntegerField;
    VerReceberADM2COD_CID: TIntegerField;
    VerReceberADM2COD_BAI: TIntegerField;
    VerReceberADM2FONE: TIBStringField;
    VerReceberADM2CPF_CGC: TIBStringField;
    VerReceberADM2SELECIONADO: TIBStringField;
    VerReceberADM2TIPO_DOCTO: TIBStringField;
    VerReceberADM2NUMDUPLICATA: TIntegerField;
    VerReceberADM2FATURA: TIntegerField;
    VerReceberADM2NUMBOLETO: TIntegerField;
    VerReceberADM2PARCIAL: TIBBCDField;
    VerReceberADM2JUROS_PARCIAL: TIBBCDField;
    VerReceberADM2DATA_ULT_BAIXA: TDateTimeField;
    VerReceberADM2COBRADOR: TIntegerField;
    VerReceberADM2LOCAL: TIntegerField;
    VerReceberADM2ARQ_MORTO: TIBStringField;
    VerReceberADM2SALDO_DESCTO: TIBBCDField;
    VerReceberADM2Selecao: TFloatField;
    VerReceberADM2Juros_Calculadors: TFloatField;
    VerReceberADM2Total_Nominal: TFloatField;
    VerReceberADM2Total: TFloatField;
    VerReceberADM2Atraso: TIntegerField;
    VerReceberADM2Multa: TFloatField;
    VerReceberADM2JurosSozinho: TFloatField;
    VerReceberADM2Juros_Conta: TFloatField;
    MoedaCODIGO: TIntegerField;
    Consulta_CobrancaMULTA: TIBBCDField;
    Consulta_CobrancaVLR_NOMINAL: TIBBCDField;
    Consulta_CobrancaVLR_BAIXADO: TIBBCDField;
    Consulta_CobrancaSALDO_NOMINAL: TIBBCDField;
    Consulta_CobrancaJUROS: TIBBCDField;
    Contas_ReceberCOD_INDEXADOR: TIntegerField;
    Contas_ReceberIDX_DATABASE: TDateField;
    Contas_ReceberIDX_COTACAO: TFloatField;
    Contas_ReceberIDX_QTDE: TFloatField;
    MoedaUTILIZA_INDEXADOR: TIBStringField;
    Baixas_ReceberTURNO: TIntegerField;
    VerReceberADMTAXA_JUROS: TIBBCDField;
    VerReceberADMCOD_INDEXADOR: TIntegerField;
    VerReceberADMIDX_DATABASE: TDateField;
    VerReceberADMIDX_COTACAO: TIBBCDField;
    VerReceberADMIDX_QTDE: TIBBCDField;
    VerPagarCOD_INDEXADOR: TIntegerField;
    VerPagarIDX_DATABASE: TDateField;
    VerPagarIDX_COTACAO: TIBBCDField;
    VerPagarIDX_QTDE: TIBBCDField;
    Baixas_PagarCOD_INDEXADOR: TIntegerField;
    Baixas_PagarIDX_DATABASE: TDateField;
    Baixas_PagarIDX_COTACAO: TIBBCDField;
    Baixas_PagarIDX_QTDE: TIBBCDField;
    Contas_Receber_Total_Geral_IDX: TFloatField;
    Baixas_ReceberCOD_INDEXADOR: TIntegerField;
    Baixas_ReceberIDX_DATABASE: TDateField;
    Baixas_ReceberIDX_COTACAO: TIBBCDField;
    Baixas_ReceberIDX_QTDE: TIBBCDField;
    VerCheque_PagoDATA_REAPRES: TDateField;
    Contas_ReceberCOD_CONFIG_TITULO: TIntegerField;
    Contas_PagarCNPJ: TIBStringField;
    Contas_PagarCODIGO_VN: TIntegerField;
    Contas_PagarCODIGO: TIntegerField;
    Contas_PagarANO: TSmallintField;
    Contas_PagarPESSOA_FJ: TIntegerField;
    Contas_PagarDT_EMISSAO: TDateTimeField;
    Contas_PagarDT_VENCTO: TDateTimeField;
    Contas_PagarDT_LANCTO: TDateTimeField;
    Contas_PagarDOCTO: TIBStringField;
    Contas_PagarPARCELA: TIBStringField;
    Contas_PagarHISTORICO: TIBStringField;
    Contas_PagarVALOR: TFloatField;
    Contas_PagarVLR_PARCIAL: TFloatField;
    Contas_PagarJUROS_PAG: TFloatField;
    Contas_PagarDESCONTOS: TFloatField;
    Contas_PagarBOLETO: TIBStringField;
    Contas_PagarORIGEM: TIBStringField;
    Contas_PagarCODIGO_ENT: TIntegerField;
    Contas_PagarANO_ENT: TSmallintField;
    Contas_PagarAVISO: TIntegerField;
    Contas_PagarDT_AVISO: TDateTimeField;
    Contas_PagarSELECIONADO: TIBStringField;
    Contas_PagarCENTRO_CUSTO: TIntegerField;
    Contas_PagarNOME: TIBStringField;
    Contas_PagarDUPLICATA: TIBStringField;
    Contas_PagarCONFERIDA: TIBStringField;
    Contas_PagarTOTAL_ENTRADA: TFloatField;
    Contas_PagarPLANILHA: TIntegerField;
    Contas_PagarFLUXO_CAIXA: TDateTimeField;
    Contas_PagarCONTABILIDADE: TIntegerField;
    Contas_PagarDT_ULTIMA_BAIXA: TDateTimeField;
    Contas_PagarTIPO_DOCTO: TIBStringField;
    Contas_PagarCOD_INDEXADOR: TIntegerField;
    Contas_PagarIDX_DATABASE: TDateField;
    Contas_PagarIDX_COTACAO: TFloatField;
    Contas_PagarIDX_QTDE: TFloatField;
    Contas_PagarCOD_CONFIG_TITULO: TIntegerField;
    Contas_PagarTotal: TFloatField;
    Contas_Pagar_Total_Geral_IDX: TFloatField;
    Contas_PagarNOME_RAZAO: TIBStringField;
    Contas_PagarVALOR_EXTENSO: TIBStringField;
    Contas_ReceberVALOR_EXTENSO: TIBStringField;
    Baixas_ReceberNUM_CF: TIntegerField;
    Baixas_ReceberNUM_NF: TIntegerField;
    Extenso: TACBrExtenso;
    Contas_ReceberCONTA_CORRENTE: TIntegerField;
    Contas_ReceberCOD_CONTRATO: TIntegerField;
    Contas_ReceberCTR_DESCRICAO: TIBStringField;
    Contas_PagarCTR_DESCRICAO: TIBStringField;
    Contas_PagarCOD_CONTRATO: TIntegerField;
    Contas_PagarCC_DESCRICAO: TIBStringField;
    Contas_PagarNOME_TIPO_DOCTO: TIBStringField;

    procedure Contas_ReceberAfterClose(DataSet: TDataSet);
    procedure LancaCartao;
    procedure Contas_ReceberAfterInsert(DataSet: TDataSet);
    procedure Contas_ReceberBeforeOpen(DataSet: TDataSet);
    procedure Contas_ReceberBeforePost(DataSet: TDataSet);
    procedure Contas_ReceberNewRecord(DataSet: TDataSet);
    procedure Contas_ReceberDT_VENCTOValidate(Sender: TField);
    procedure Baixas_ReceberCalcFields(DataSet: TDataSet);
    procedure Contas_ReceberCalcFields(DataSet: TDataSet);
    procedure VerReceberCalcFields(DataSet: TDataSet);
    procedure Contas_PAGARCalcFields(DataSet: TDataSet);
    procedure Contas_PAGARNewRecord(DataSet: TDataSet);
    procedure VerPAGARCalcFields(DataSet: TDataSet);
    procedure Baixas_PAGARCalcFields(DataSet: TDataSet);

    //relatorios
    procedure ImpressoraBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure IncLinha;

    

    Procedure ImprimeDuplicata(Vencimento: TDateTime; NumDuplicata : String; DATA: TDateTime; Documento : String   ;
              VALOR     : REAL     ; RAZAO     : String   ; DOCUMENTOS: String   ;
              ENDERECO  : String   ; CEP       : String   ; NOMEBAIRRO: String   ; NOMECIDADE: String   ;
              UF        : String   ; LISTA     : String   ; Venda     : Integer  ; PESSOA_FJ : Integer  ) ;

    procedure VerPessoa (Codigo: Integer);
    procedure VerCliente(Codigo: Integer);

    //RECEBER
    procedure CabecalhoReceber(Sender: TObject; Pagina: Integer);
    procedure CabecalhoReceberData(Sender: TObject; Pagina: Integer);
    procedure CabecalhoRecebidas(Sender: TObject; Pagina: Integer);
    procedure CabecalhoCentro(Sender: TObject; Pagina: Integer);
    procedure CabecalhoPagarCentro(Sender: TObject; Pagina: Integer);
    procedure CabecalhoFatura(Sender: TObject; Pagina: Integer);
    procedure CabecalhoImprimeFatura(Sender: TObject; Pagina: Integer);
    procedure Marca_Todos_Receber ( Ini, Fim: TDateTime; Pessoa: Integer; Tipo: String; Caixa: TDateTime );

    procedure IMPRIMERECEBER;
    procedure ImprimeBoletosPeriodo;

    procedure IMPRIMERECIBO ( Codigo: Integer; Favorecido: String; Dt_Vencto: TDateTime; Docto: String;
    Dt_Lancto: TDateTime; Valor: Real; Historico: String;
    Cpf_Cnpj: String; Pessoa_Fj:Integer; Empresa: String );

    Procedure Autenticar (Texto: String);

{    procedure IMPRIMERECIBOPAGAR ( Codigo: Integer; Favorecido: String; Dt_Vencto: TDateTime; Docto: String;
    Dt_Lancto: TDateTime; Valor: Real; Historico: String;
    Cpf_Cnpj: String; Pessoa_Fj:Integer; Empresa: String );}

    procedure Cria_Recibo( Favorecido: String; Dt_Vencto: TDateTime; Docto: String;
    Dt_Lancto: TDateTime; Valor: Real; Historico: String;
    Cpf_Cnpj: String; Pessoa_Fj:Integer );

    procedure RECEBERALFABETICO ;
    procedure IMPRIMEBAIXARECEBER ;
    procedure RECEBIDASALFABETICO;


    procedure Seleciona3Meses ;
    //function  Soma_Receber_3Meses (Data: TDate): Real;
    //function  Soma_Receber_2Meses (Data: TDate): Real;

 //   procedure Previsaofinanceira;
    procedure IMPRIMERECEBERPREVISAO;

    procedure SelecionaLancamentoRec ;
    procedure SelecionaVencimentoRec ;

    function  Soma_Receber          : Real;
    Procedure Seleciona_Receber      (Codigo: Integer; Ano: Integer; Selecionado: String);
    Procedure Sel_Rec_Convenio_Periodo ( Cliente : Integer; Inicial: TDateTime; Final: TDateTime );

    Procedure Valor_Adicional_Fatura ( Codigo: Integer; Documento: String; Historico: String; Valor: Real );
    Function  Agrupa_Faturas     ( Origem: Integer; Destino : Integer ):String;
    Procedure Extorna_Faturas    ( Codigo: Integer );
    Procedure Extorna_NotaFatura ( Codigo: Integer ; Ano: Integer; Fatura: Integer );
    Procedure Transfere_NotaFatura ( Codigo: Integer ; Ano: Integer; Fatura, Destino: Integer );
    Function  Recalcula_Fatura   ( Fatura: Integer ):Real;

    procedure IMPRIMEPROTOCOLO      ( Vias: Integer     );
    procedure IMPRIMEFATURA         ( Vias: Integer     );
    procedure IMPRIMEFATURARECEBIDA ( Vias: Integer     );
    procedure EXTORNA_FATURA        ( Codigo: Integer   );

    //PAGAR
    procedure CabecalhoPAGAR(Sender: TObject; Pagina: Integer);
    procedure CabecalhoPagas(Sender: TObject; Pagina: Integer);
    procedure IMPRIMEPAGAR;
    procedure IMPRIMEPAGARCCU;

    procedure IMPRIMEBAIXAPAGAR ;
    procedure IMPRIMEBAIXACENTRO;


//    procedure PAGARALFABETICO;
    procedure PAGASALFABETICO;

  
    procedure PAGASCENTRO ;

    Procedure Seleciona_PAGAR       (Codigo: Integer; Ano: Integer; Selecionado: String);
    Function  Soma_PAGAR            : Real;

    procedure SelecionaLancamentoPgr ;
    procedure SelecionaVencimentoPgr ;
    procedure VerFaturasCalcFields(DataSet: TDataSet);
    procedure FaturasCalcFields(DataSet: TDataSet);
    procedure Contas_ReceberPESSOA_FJValidate(Sender: TField);
    procedure Contas_PagarPESSOA_FJValidate(Sender: TField);
    procedure Contas_ReceberBeforeEdit(DataSet: TDataSet);
    procedure VerReceberConvenioCalcFields(DataSet: TDataSet);
    procedure verreceberbefor(Sender: TObject);
    procedure Ficha_VendaCalcFields(DataSet: TDataSet);
    procedure FaturasNewRecord(DataSet: TDataSet);
    procedure AdministradoraNewRecord(DataSet: TDataSet);
    procedure ChequeAfterInsert(DataSet: TDataSet);
    procedure ChequeNewRecord(DataSet: TDataSet);
    procedure ChequePESSOA_FJValidate(Sender: TField);
    procedure VerChequeCalcFields(DataSet: TDataSet);
    procedure ChequeTIPOGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure ChequeTIPOSetText(Sender: TField; const Text: String);
    procedure ChequeAfterPost(DataSet: TDataSet);
    procedure FaturasPESSOA_FJValidate(Sender: TField);
    procedure Manutencao_FaturaCalcFields(DataSet: TDataSet);
    procedure Manutencao_FaturaNewRecord(DataSet: TDataSet);
    procedure Manutencao_FaturaPESSOA_FJValidate(Sender: TField);
    procedure VERFATURASBAIXADASCalcFields(DataSet: TDataSet);
    procedure VerFaturaCalcFields(DataSet: TDataSet);
    procedure Motivo_DevolucaoAfterInsert(DataSet: TDataSet);
    procedure Contas_PagarAfterPost(DataSet: TDataSet);
    procedure Manutencao_FaturaAfterInsert(DataSet: TDataSet);
    procedure Manutencao_FaturaBeforePost(DataSet: TDataSet);
    procedure Cheque_CtbPESSOA_FJValidate(Sender: TField);
    procedure Cheque_CtbNewRecord(DataSet: TDataSet);
    procedure Cheque_CtbAfterPost(DataSet: TDataSet);
    procedure Cheque_CtbBeforePost(DataSet: TDataSet);
    procedure Contas_PagarBeforePost(DataSet: TDataSet);
    procedure Contas_PagarCENTRO_CUSTOValidate(Sender: TField);
    procedure Contas_ReceberDOCTOValidate(Sender: TField);
    procedure Contas_PagasAfterInsert(DataSet: TDataSet);
    procedure Contas_PagasBeforePost(DataSet: TDataSet);
    procedure Contas_PagasCalcFields(DataSet: TDataSet);
    procedure Contas_PagasPESSOA_FJValidate(Sender: TField);
    procedure Contas_PagasCENTRO_CUSTOValidate(Sender: TField);
    procedure Contas_PagarAfterEdit(DataSet: TDataSet);
    procedure Cheque_CtbAfterEdit(DataSet: TDataSet);
    procedure Motivo_CobrancaBeforePost(DataSet: TDataSet);
    procedure CobrancaAfterInsert(DataSet: TDataSet);
    procedure CobrancaNewRecord(DataSet: TDataSet);
    procedure CobrancaCOBRADORValidate(Sender: TField);
    procedure Faturas_PclAfterInsert(DataSet: TDataSet);
    procedure Faturas_PclNewRecord(DataSet: TDataSet);
    procedure Ver_CartoesCalcFields(DataSet: TDataSet);
    procedure Ver_DadosFaturasCalcFields(DataSet: TDataSet);
    procedure CartaoAfterInsert(DataSet: TDataSet);
    procedure CartaoBeforePost(DataSet: TDataSet);
    procedure CartaoCalcFields(DataSet: TDataSet);
    procedure CartaoNewRecord(DataSet: TDataSet);
    procedure CartaoADMINISTRADORAValidate(Sender: TField);
    procedure CartaoPESSOA_FJValidate(Sender: TField);
    procedure VER_DADOS_FATURACalcFields(DataSet: TDataSet);
    procedure VerPendenciasCalcFields(DataSet: TDataSet);
    procedure Ver_CartaoCalcFields(DataSet: TDataSet);
    procedure ChequeCalcFields(DataSet: TDataSet);
    procedure MensalidadesAfterInsert(DataSet: TDataSet);
    procedure MensalidadesPESSOA_FJValidate(Sender: TField);
    procedure Baixas_Receber_VendedorCalcFields(DataSet: TDataSet);
    procedure Baixas_Pagar_HistCalcFields(DataSet: TDataSet);
    procedure Contas_ReceberBeforeDelete(DataSet: TDataSet);
    procedure Contas_PagarBeforeDelete(DataSet: TDataSet);
    procedure ChequeBeforeDelete(DataSet: TDataSet);
    procedure Cheque_CtbBeforeDelete(DataSet: TDataSet);
    procedure AbastecimentosPESSOA_FJValidate(Sender: TField);
    procedure Baixas_Receber_CaixaCalcFields(DataSet: TDataSet);
    procedure VerCheque_MagneticoCalcFields(DataSet: TDataSet);
    procedure Local_CobrancaBeforePost(DataSet: TDataSet);
    procedure RecibosPagasAfterInsert(DataSet: TDataSet);
    procedure RecibosPagasBeforePost(DataSet: TDataSet);
    procedure RecibosPagasBeforeOpen(DataSet: TDataSet);
    procedure ChequeBeforeEdit(DataSet: TDataSet);
    procedure IBDataSet1CalcFields(DataSet: TDataSet);
    procedure VerChequeBeforeOpen(DataSet: TDataSet);
    procedure qTotalConcBeforeOpen(DataSet: TDataSet);
    procedure qChequeRemessaBeforeOpen(DataSet: TDataSet);
    procedure qValidaAltChequeBeforeOpen(DataSet: TDataSet);
    procedure CobrancaPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);

    procedure VerRecebidasConvenioCalcFields(DataSet: TDataSet);
    procedure VerReceberADMBeforeOpen(DataSet: TDataSet);
    procedure VerReceberADMCalcFields(DataSet: TDataSet);
    procedure VerReceberADMAfterClose(DataSet: TDataSet);
    procedure VerReceberAfterOpen(DataSet: TDataSet);
    procedure Consulta_Cobranca1BeforeOpen(DataSet: TDataSet);
    procedure Contas_PagarDOCTOValidate(Sender: TField);
    procedure Consulta_CobrancaBeforeOpen(DataSet: TDataSet);
    procedure qryVerFatPendenciaCalcFields(DataSet: TDataSet);
    procedure qryVerRecPendenciaCalcFields(DataSet: TDataSet);
    procedure OnCalcDataSetReceber(DataSet: TDataSet);
    procedure Receber_Data_AnaliticoCalcFields(DataSet: TDataSet);
    procedure qryImpBoletoCalcFields(DataSet: TDataSet);
    procedure qryVerPagarSelCalcFields(DataSet: TDataSet);
    procedure DesdChequeCtbAfterPost(DataSet: TDataSet);
    procedure DesdChequeCtbNewRecord(DataSet: TDataSet);
    procedure DesdChequeCtbCONTAValidate(Sender: TField);
    procedure Consulta_Cobranca3CalcFields(DataSet: TDataSet);
    procedure Cheque_CtbNOMINALGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Cheque_CtbNOMINALSetText(Sender: TField; const Text: String);

  private
    { Private declarations }
    Ven_Limite_Tempo   : Integer   ;
    Ven_Limite_Credito : Real      ;
    ESTADO_CTB         : Char      ;

  public
    { Public declarations }

    //RECEBER
    Procedure Baixa_Abastecimentos    (Codigo: Integer; Data: TDateTime; Valor: Real );


    Procedure Desvincula_Rec_Fatura   (Codigo: Integer; Ano: Integer );

    Procedure Baixa_Receber_Selecao      (Tipo: String; Cliente: Integer; Historico: String; Data_Baixa: TDateTime; Data_Ini: TDateTime; Data_Fim: TDateTime; Total: Real; Juros: Real; Desconto: Real; Usuario: Integer; Dinheiro, Cheque, Cartao: Real; Conta: Integer; Turno:Integer; Banco: Integer );
    Procedure Baixa_Receber_Selecao_Pdv  (Tipo: String; Cliente: Integer; Historico: String; Data_Baixa: TDateTime; Data_Ini: TDateTime; Data_Fim: TDateTime; Total: Real; Juros: Real; Desconto: Real; Usuario: Integer; Dinheiro, Cheque, Cartao: Real; Conta: Integer; Turno:Integer; Banco: Integer );
    Procedure Baixa_Receber_Parcial   (Codigo: Integer; Ano: Integer; Documento: String; Historico: String; Data_Baixa: TDateTime; Valor: Real; Juros: Real; Desconto: Real ; Usuario: Integer; Cliente:Integer; Cheque: Real; Conta: Integer; Turno:Integer; Banco: Integer );

    procedure SelecionaReceberFaturaBaixada (Fatura: Integer; Estado: String; Total: Real ) ;
    Procedure Insere_NotaFatura ( Codigo: Integer ; Ano: Integer; Fatura: Integer );

    //PAGAR

    Procedure Baixa_PAGAR_Parcial   (Codigo: Integer; Ano: Integer; Documento: String; Historico: String; Data_Baixa: TDateTime; Valor: Real; Juros: Real; Desconto: Real ; Usuario: Integer; Conta: Integer; Turno:Integer; BAnco: Integer; Cheque: Real; Fornecedor: Integer; Nome: String);
    Procedure Extorna_PAGAR         (Codigo: Integer; Ano: Integer);
    Procedure Extorna_PAGAR_Parcial (Codigo: Integer; Ano: Integer; Valor :Real);

    Procedure Insere_Cheque( CHEQUE: Integer; CONTA: Integer; DATA: TDateTime;
                             Valor: Real; HISTORICO: String; Impresso: String; PESSOA_FJ: Integer;
                             ORIGEM: String; PLANILHA: Integer; CONTABILIDADE: String;
                             NOME: String);

    procedure Cria_ReciboPagar(Dt_Vencto: TDateTime; Docto: String;
          Dt_Lancto: TDateTime; Valor: Real; Historico: String; Pessoa_Fj:Integer );

    //FATURA
  end;

var
  DmFinanceiro: TDmFinanceiro;
  Linha, Pagina: Integer;
  Str: String ;
  Bloqueado, Classificacao: String[1];
  Clas: Integer;
  Dig_Senha, NomeClas: String;

const

  SelectVerCheque = 'select c.fornecedor, c.nome_fornecedor, c.troca, c.indice, c.BANCO, c.CONTA, c.CHEQUE, c.VENDA, c.EMISSAO, c.PRE_DATE, ' +
                'c.VALOR, c.CONCILIADO, c.HISTORICO, c.AGENCIA, c.DATA_CONCILIACAO, ' +
                'c.JUROS, c.TIPO, c.DATA_ACERTO, c.PLANILHA, c.DIGITO_AGENCIA, '+
                'c.DIGITO_CHEQUE, c.DATA_DEVOLUCAO,  c.VEZES_DEVOLUCAO, ' +
                'c.PROCESSADO, c.ID, c.MARCADO, case upper(p.nome_razao) when '+''''+'CONSUMIDOR'+''''+
                ' then c.nome else p.nome_razao end NOME, '+
                'p.fone, p.fax, p.celular, p.cpf_cgc, p.rg_ie, cl.local_trabalho, '+
                'cl.fone_trabalho, d.nome Motivo_Devolucao , c.pessoa_fj, c.cmc7, c.data_reapres, c.conta_conc '+
                'from FIN_CHEQUES c '+
                'inner join glo_pessoas_fj p on (p.codigo = c.pessoa_fj and p.cnpj = c.cnpj) '+
                'left join glo_clientes cl on (cl.pessoa_fj = p.codigo and cl.cnpj = c.cnpj) '+
                'left join fin_motivo_devolucao d on (d.codigo = c.motivo_devolucao and d.cnpj = c.cnpj) '+
                'where c.cnpj = :cnpj ';



implementation

uses Application_DM,
     Cadastros_DM,
     Procedures_DM,
     Funcoes,
     Filtra_Receber_Form,
     Filtra_Receber_Previsao_Form,
     MensagemFaturamento_Form,
     MensagemClassificacao_Form,
     Localizar_Conta,
     Plano_DM,
     Procedures2_DM,
     Cheque_Financeiro_Form,
     Tipo_Impressora_Form,
     Cheque_Manual_Form,
     Cheque_Ctb_Form,
     Procedures3_DM,
     ConsultaCobrancas_Form,
     ListagemCobrancas_Form,
     ConsultaCobrancas_Pessoa_Form,
     Fatura_Parcelas_Form,
     Procedures4_DM,

      Procedures5_DM, Vendas_Dm, Cartao_Venda_Form,
  Receber_Parcelamento_Form, ImprimeBoleto, Cheque_Contabilidade,
  Financeiro_Dm2, Cadastros_Dm2, Filtra_Pagar_Form, Relatorios_DM2 ,
  ConfiguraDuplicata_Form;

{$R *.DFM}

{procedure TDmFinanceiro.PrevisaoFinanceira;
Var
   TotalReceber, TotalCheques, Total3Meses, Total2Meses, TotalPerdidas: Real;
   Porc3Meses, Porc2Meses, PorcAVencer: Real;
begin
     Application.CreateForm(TFrmFiltraReceberPrevisao, FrmFiltraReceberPrevisao);
     If FrmFiltraReceberPrevisao.Showmodal = MrOk
     then begin
          //SOMA O TOTAL DAS CONTAS A RECEBER
          IMPRESSORA.TitulodoRelatorio := 'PREVISAO FINANCEIRA' ;

          TotalReceber := Soma_Receber        ;
          Total3Meses  := Soma_Receber_3Meses (FrmFiltraReceberPrevisao.DATA.Date);
          Total2Meses  := Soma_Receber_2Meses (FrmFiltraReceberPrevisao.DATA.Date);

          //PORCENTAGENS DOS TOTAIS
          If TotalReceber > 0
          then begin
               Porc3Meses  := ( Total3Meses * 100 )/TotalReceber ;
               Porc2Meses  := ( Total2Meses * 100 )/TotalReceber ;
               PorcAVencer := 100 - Porc3Meses - Porc2Meses      ;
          end
          else begin
               Porc3Meses  := 0 ;
               Porc2Meses  := 0 ;
               PorcAVencer := 0 ;
          end;

          TotalReceber := TotalReceber - Total3Meses - Total2Meses ;

          //SELECIONA O CONTAS A RECEBER QUE AINDA NAO VENCEU
          VERRECEBER.Close ;
          VERRECEBER.SQL.text := ' SELECT * FROM VER_RECEBER_PREVISAO ( :CNPJ, :DATA ) ORDER BY NOME, PESSOA_FJ ';
          VERRECEBER.ParamByName('DATA').AsDate := FrmFiltraReceberPrevisao.DATA.Date ;
          VERRECEBER.Open ;

          PAGINA     := 1;
          LINHA      := 5;

          IMPRESSORA.OnNewPage := cabecalhoreceber ;
          IMPRESSORA.ABRIR;

          //IMPRIME OS VALORES DA PREVISAO 3 MESES E 2 MESES

          //A VENCER
          IMPRESSORA.impf(linha, 01, 'TOTAL DE CONTAS A VENCER' ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALRECEBER );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //TOTAL A RECEBER
          IMPRESSORA.impf(linha,50, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', PorcAVencer );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //TOTAL A RECEBER
          IMPRESSORA.impf(linha, 72, '% ' + STR ,[comp17]);
//3MESES
          INCLINHA;

          IMPRESSORA.impf(linha, 01, 'TOTAL DE CONTAS COM VENCIMENTO SUPERIOR A 3 MESES' ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL3MESES );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;
          //TOTAL 3 MESES
          IMPRESSORA.impf(linha,50, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', PORC3MESES );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;
          //TOTAL 3 MESES
          IMPRESSORA.impf(linha, 72, '% ' + STR ,[comp17]);

//2 MESES
          INCLINHA;

          IMPRESSORA.impf(linha, 01, 'TOTAL DE CONTAS COM VENCIMENTO SUPERIOR A 2 MESES E INFERIOR A 3 MESES' ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL2MESES );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //TOTAL 2 MESES
          IMPRESSORA.impf(linha,50, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', PORC2MESES );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;
          //TOTAL 3 MESES
          IMPRESSORA.impf(linha, 72, '% ' + STR ,[comp17]);

          INCLINHA ;
          INCLINHA ;

          //IMPRIME O CONTAS A RECEBER A VENCER
          IMPRIMERECEBERPREVISAO ;
     END;
     FrmFiltraReceberPrevisao.free ;
     FrmFiltraReceberPrevisao := Nil ;
END;}

procedure TDmFinanceiro.IMPRIMERECEBERPREVISAO;
VAR
   IMP, STR         : STRING;
   JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD           : INTEGER;
begin
     TOTAL      := 0;//TOTAL DO CLIENTE
     TOTALGERAL := 0;//TOTAL DAS CONTAS
     JUROSGERAL := 0;//VALOR DOS JUROS

     IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

     WHILE NOT VERRECEBER.Eof DO
     BEGIN
          INCLINHA;

          IF IMP = 'N'
          THEN BEGIN
               IMPRESSORA.impf(LINHA,01,INTTOSTR(VERRECEBERPESSOA_FJ.Value) + '-'+ VERRECEBERNOME.Value , [comp17]);

               If length(VERRECEBERCPF_CGC.Value) <= 11
               then
                   IMPRESSORA.impf(LINHA,50, MASCARACPF(VERRECEBERCPF_CGC.Value) , [comp17])
               else
                   IMPRESSORA.impf(LINHA,50, MASCARACNPJ(VERRECEBERCPF_CGC.Value) , [comp17]);

               IMP := 'S' ;

               //ULTIMO CODIGO IMPRESSO
               ULTCOD := VERRECEBERPESSOA_FJ.VALUE ;

               TOTAL := 0;//TOTAL DO CLIENTE

               INCLINHA ;
          END;
          //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
          //lancamento
          IMPRESSORA.impf(linha,01,DATETOSTR(VerReceberDT_LANCTO.Value ),[comp17]);

          //Documento
          IMPRESSORA.impf(linha,08, VerReceberDOCTO.Value ,[comp17]);

          //VENCIMENTO
          IMPRESSORA.impf(linha,22, DATETOSTR(VerReceberDT_VENCTO.Value ) ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00',VERRECEBERTOTAL.Value );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha,50, STR ,[comp17]);

          JUROS := CalculaJuros(VerReceberDT_VENCTO.VALUE, DmApp.data_Servidor, VERRECEBERTOTAL.VALUE,0);

          STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha,62, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', JUROS + VERRECEBERTOTAL.Value);
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha,73, STR ,[comp17]);

          TOTAL      := TOTAL + VERRECEBERTOTAL.Value + JUROS;
          TOTALGERAL := TOTALGERAL + VERRECEBERTOTAL.Value + JUROS ;
          JUROSGERAL := JUROSGERAL + JUROS ;

          VERRECEBER.NEXT ;

          IF (( ULTCOD <> VERRECEBERPESSOA_FJ.VALUE )AND(NOT VERRECEBER.EOF))
          THEN BEGIN
               INCLINHA;

                STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                WHILE LENGTH(STR) < 12 DO
                BEGIN
                     STR := ' ' + STR ;
                END;

                IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

                INCLINHA;

                IMPRESSORA.impf(linha,55, ' TOTAL CLIENTE' ,[comp17]);

                IMPRESSORA.impf(linha,73, STR ,[comp17]);

                INCLINHA;

                IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                IMP := 'N' ;
          END
          ELSE BEGIN
               IF (VERRECEBER.EOF)
               THEN BEGIN
                    INCLINHA;

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

                    INCLINHA;

                    IMPRESSORA.impf(linha,55, ' TOTAL CLIENTE' ,[comp17]);

                    IMPRESSORA.impf(linha,73, STR ,[comp17]);

                    INCLINHA;

                    IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;
               END;
          END;
     END;

     INCLINHA;

     STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

     WHILE LENGTH(STR) < 12 DO
     BEGIN
          STR := ' ' + STR ;
     END;

     IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

     INCLINHA;

     IMPRESSORA.impf(linha,56, ' TOTAL GERAL' ,[comp17]);

     IMPRESSORA.impf(linha,73, STR ,[comp17]);

     IMPRESSORA.FECHAR;
end;

procedure TDmFinanceiro.RECEBERALFABETICO ;
Var
   TotalReceber, TotalCheques, TotalPerdidas: Real;
begin
     Application.CreateForm(TFrmFiltraContasReceber, FrmFiltraContasReceber);

     //CADASTROS DE PESSOAS
     SelPessoasFJ.Open ;

     If FrmFiltraContasReceber.Showmodal = MrOk
     then begin
          //SOMA O TOTAL DAS CONTAS A RECEBER
          IMPRESSORA.TitulodoRelatorio := 'RECEBER ALFABETICO' ;

          //SELECIONA O CONTAS A RECEBER QUE AINDA NAO VENCEU
          VERRECEBER.Close ;
          VERRECEBER.SQL.CLEAR ;
          VERRECEBER.Params.CLEAR ;

          VERRECEBER.Params.CreateParam ( FtDate, 'DINI', PtInput );
          VERRECEBER.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          VERRECEBER.SQL.ADD ( ' SELECT * FROM VER_RECEBER_VENCIMENTO ( :CNPJ, :DINI, :DFIM ) ' );

          IF TRIM(FrmFiltraContasReceber.CmbPessoa.TEXT) <> ''
          THEN BEGIN
               VERRECEBER.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

               VERRECEBER.SQL.Add (' Where PESSOA_FJ = :INI ');

               VERRECEBER.ParamByName ('INI').asInteger := FrmFiltraContasReceber.CmbPessoa.LookupKeyValue ;
          END;

          VERRECEBER.ParamByName ( 'DINI' ).AsDate := FrmFiltraContasReceber.INI.Date ;
          VERRECEBER.ParamByName ( 'DFIM' ).AsDate := FrmFiltraContasReceber.FIM.Date ;

          VERRECEBER.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ, DT_VENCTO ' );

          VERRECEBER.Prepare ;
          VERRECEBER.Open ;

          //IMPRIME O CONTAS A RECEBER A VENCER
          IMPRIMERECEBER ;
     END;
     SelPessoasFJ.Close ;

     FrmFiltraContasReceber.free ;
     FrmFiltraContasReceber := Nil ;
END;

procedure TDmFinanceiro.RECEBIDASALFABETICO ;
Var
   TotalReceber, TotalCheques, TotalPerdidas: Real;
begin
     Try
        Application.CreateForm(TFrmFiltraContasReceber, FrmFiltraContasReceber);

        //CADASTROS DE PESSOAS
        SelPessoasFJ.Open ;

        If FrmFiltraContasReceber.Showmodal = MrOk
        then begin
             //SOMA O TOTAL DAS CONTAS A RECEBER
             IMPRESSORA.TitulodoRelatorio := 'RECEBIDAS ALFABETICO' ;

             BAIXAS_RECEBER.Close ;
             BAIXAS_RECEBER.SQL.CLEAR ;
             BAIXAS_RECEBER.Params.CLEAR ;

             BAIXAS_RECEBER.Params.CreateParam ( FtDate, 'DINI', PtInput );
             BAIXAS_RECEBER.Params.CreateParam ( FtDate, 'DFIM', PtInput );

             BAIXAS_RECEBER.SQL.ADD ( ' SELECT * FROM VER_BAIXA_RECEBER_BAIXA ( :CNPJ, :DINI, :DFIM ) ' );

             IF TRIM(FrmFiltraContasReceber.CmbPessoa.TEXT) <> ''
             THEN BEGIN
                  BAIXAS_RECEBER.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

                  BAIXAS_RECEBER.SQL.Add (' Where PESSOA_FJ = :INI ');

                  BAIXAS_RECEBER.ParamByName ('INI').asInteger := FrmFiltraContasReceber.CmbPessoa.LookupKeyValue ;
             END;

             BAIXAS_RECEBER.ParamByName ( 'DINI' ).AsDate := FrmFiltraContasReceber.INI.Date ;
             BAIXAS_RECEBER.ParamByName ( 'DFIM' ).AsDate := FrmFiltraContasReceber.FIM.Date ;

             BAIXAS_RECEBER.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ, DT_BAIXA ' );

             BAIXAS_RECEBER.Prepare ;
             BAIXAS_RECEBER.Open ;

             //IMPRIME O CONTAS A RECEBER A VENCER
             IMPRIMEBAIXARECEBER ;
        END;

        SelPessoasFJ.Close ;

        FrmFiltraContasReceber.free ;
        FrmFiltraContasReceber := Nil ;
     Except
        FrmFiltraContasReceber.free ;
        FrmFiltraContasReceber := Nil ;
     end;
END;

procedure TDmFinanceiro.PAGASALFABETICO ;
Var
   TotalPAGAR, TotalCheques, TotalPerdidas: Real;
   Cont: Integer ;
begin
     Application.CreateForm(TFrmFiltraContasPAGAR, FrmFiltraContasPAGAR);

     //CADASTROS DE PESSOAS
     SelFornecedor.Open ;
     SelCentro.Open ;

     If FrmFiltraContasPAGAR.Showmodal = MrOk
     then begin
          //SOMA O TOTAL DAS CONTAS A PAGAR
          IMPRESSORA.TitulodoRelatorio := 'PAGAS ALFABETICO' ;

          BAIXAS_PAGAR.Close ;
          BAIXAS_PAGAR.SQL.CLEAR ;
          BAIXAS_PAGAR.Params.CLEAR ;

          BAIXAS_PAGAR.Params.CreateParam ( FtDate, 'DINI', PtInput );
          BAIXAS_PAGAR.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          BAIXAS_PAGAR.SQL.ADD ( ' SELECT * FROM VER_BAIXA_PAGAR_BAIXA ( :CNPJ, :DINI, :DFIM ) ' );

          IF TRIM(FrmFiltraContasPAGAR.CmbPessoa.TEXT) <> ''
          THEN BEGIN
               BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

               BAIXAS_PAGAR.SQL.Add (' Where PESSOA_FJ = :INI ');

               BAIXAS_PAGAR.ParamByName ('INI').asInteger := FrmFiltraContasPAGAR.CmbPessoa.LookupKeyValue ;
               Cont := 1;
          END;

          IF TRIM(FrmFiltraContasPAGAR.CmbCentro.TEXT) <> ''
          THEN BEGIN
               If Cont = 0
               then begin
                    VERPAGAR.Params.CreateParam ( FtInteger, 'CCU', PtInputOutPut );

                    VERPAGAR.SQL.Add (' Where CENTRO_CUSTO = :CCU ');

                    VERPAGAR.ParamByName ('CCU').asInteger := FrmFiltraContasPAGAR.CmbCentro.LookupKeyValue ;
               end
               else begin
                    VERPAGAR.Params.CreateParam ( FtInteger, 'CCU', PtInputOutPut );

                    VERPAGAR.SQL.Add (' and CENTRO_CUSTO = :CCU ');

                    VERPAGAR.ParamByName ('CCU').asInteger := FrmFiltraContasPAGAR.CmbCentro.LookupKeyValue ;
               end;
          END;

          BAIXAS_PAGAR.ParamByName ( 'DINI' ).AsDate := FrmFiltraContasPAGAR.INI.Date ;
          BAIXAS_PAGAR.ParamByName ( 'DFIM' ).AsDate := FrmFiltraContasPAGAR.FIM.Date ;

          BAIXAS_PAGAR.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ ' );

          BAIXAS_PAGAR.Prepare ;
          BAIXAS_PAGAR.Open ;

          //IMPRIME O CONTAS A PAGAR A VENCER
          IMPRIMEBAIXAPAGAR ;
     END;

     SelFornecedor.Close ;
     SelCentro.Close     ;

     FrmFiltraContasPAGAR.free ;
     FrmFiltraContasPAGAR := Nil ;
END;

procedure TDmFinanceiro.PAGASCENTRO ;
Var
   TotalPAGAR, TotalCheques, TotalPerdidas: Real;
   Cont: Integer;
begin
     Application.CreateForm(TFrmFiltraContasPAGAR, FrmFiltraContasPAGAR);

     //CADASTROS DE PESSOAS
     SelFornecedor.Open ;
     SelCentro.Open ;

     If FrmFiltraContasPAGAR.Showmodal = MrOk
     then begin
          //SOMA O TOTAL DAS CONTAS A PAGAR
          IMPRESSORA.TitulodoRelatorio := 'PAGAS POR CENTRO DE CUSTO' ;

          BAIXAS_PAGAR.Close ;
          BAIXAS_PAGAR.SQL.CLEAR ;
          BAIXAS_PAGAR.Params.CLEAR ;

          BAIXAS_PAGAR.Params.CreateParam ( FtDate, 'DINI', PtInput );
          BAIXAS_PAGAR.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          BAIXAS_PAGAR.SQL.ADD ( ' SELECT * FROM VER_BAIXA_PAGAR_BAIXA ( :CNPJ, :DINI, :DFIM ) ' );

          IF TRIM(FrmFiltraContasPAGAR.CmbPessoa.TEXT) <> ''
          THEN BEGIN
               BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

               BAIXAS_PAGAR.SQL.Add (' Where PESSOA_FJ = :INI ');

               BAIXAS_PAGAR.ParamByName ('INI').asInteger := FrmFiltraContasPAGAR.CmbPessoa.LookupKeyValue ;

               Cont := 1;
          END;

          IF TRIM(FrmFiltraContasPAGAR.CmbCentro.TEXT) <> ''
          THEN BEGIN
               If Cont = 0
               then begin
                    VERPAGAR.Params.CreateParam ( FtInteger, 'CCU', PtInputOutPut );

                    VERPAGAR.SQL.Add (' Where CENTRO_CUSTO = :CCU ');

                    VERPAGAR.ParamByName ('CCU').asInteger := FrmFiltraContasPAGAR.CmbCentro.LookupKeyValue ;
               end
               else begin
                    VERPAGAR.Params.CreateParam ( FtInteger, 'CCU', PtInputOutPut );

                    VERPAGAR.SQL.Add (' and CENTRO_CUSTO = :CCU ');

                    VERPAGAR.ParamByName ('CCU').asInteger := FrmFiltraContasPAGAR.CmbCentro.LookupKeyValue ;
               end;
          END;

          BAIXAS_PAGAR.ParamByName ( 'DINI' ).AsDate := FrmFiltraContasPAGAR.INI.Date ;
          BAIXAS_PAGAR.ParamByName ( 'DFIM' ).AsDate := FrmFiltraContasPAGAR.FIM.Date ;

          BAIXAS_PAGAR.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ ' );

          BAIXAS_PAGAR.Prepare ;
          BAIXAS_PAGAR.Open ;

          //IMPRIME O CONTAS A PAGAS POR CENTRO
          IMPRIMEBAIXACENTRO ;
     END;

     SelFornecedor.Close ;
     SelCentro.Close ;

     FrmFiltraContasPAGAR.free ;
     FrmFiltraContasPAGAR := Nil ;
END;

{function TDmFinanceiro.Soma_Receber_3Meses (Data: TDateTime): Real;
VAR
   VANO, VMES, VDIA: WORD;
begin
     DECODEDATE( DATA, VANO, VMES, VDIA );

     IF (VMES = 3)
     THEN BEGIN
          VMES := 12 ;
          VANO := VANO - 1 ;
     END
     ELSE BEGIN
          IF (VMES = 2)
          THEN BEGIN
               VMES := 11 ;
               VANO := VANO - 1 ;
          END
          ELSE BEGIN
               IF (VMES = 1)
               THEN BEGIN
                    VMES := 10 ;
                    VANO := VANO - 1 ;
               END
               ELSE BEGIN
                    VMES := VMES - 3 ;
               END
          END
     END ;

     DATA := ENCODEDATE (VANO, VMES, VDIA );

  //
  //
  DMProcs.Soma_Receber_3Meses.ParamByName('CNPJ').asString      := DmApp.Cnpj;
  DMProcs.Soma_Receber_3Meses.ParamByName('DATA').asDate        := Data;

  DMProcs.Soma_Receber_3Meses.ExecProc;
  //
  Result := DMProcs.Soma_Receber_3Meses.ParamByName('SOMA').asFloat;
  //
end;

function TDmFinanceiro.Soma_Receber_2Meses (Data: TDateTime): Real;
VAR
   VANO, VMES, VDIA: WORD;
   INICIAL, FINAL  : TDateTime;
begin
     //INICIAL
     DECODEDATE( DATA, VANO, VMES, VDIA );

     IF (VMES = 3)
     THEN BEGIN
          VMES := 12 ;
          VANO := VANO - 1 ;
     END
     ELSE BEGIN
          IF (VMES = 2)
          THEN BEGIN
               VMES := 11 ;
               VANO := VANO - 1 ;
          END
          ELSE BEGIN
               IF (VMES = 1)
               THEN BEGIN
                    VMES := 10 ;
                    VANO := VANO - 1 ;
               END
               ELSE BEGIN
                    VMES := VMES - 3 ;
               END
          END
     END ;

     Inicial := ENCODEDATE(VANO, VMES, VDIA);

     Final   := DATA ;

  //
  //
  DMProcs.Soma_Receber_2Meses.ParamByName('CNPJ').asString      := DmApp.Cnpj;
  DMProcs.Soma_Receber_2Meses.ParamByName('INI' ).asDate        := Inicial   ;
  DMProcs.Soma_Receber_2Meses.ParamByName('FIM' ).asDate        := Final     ;

  DMProcs.Soma_Receber_2Meses.ExecProc;
  //
  Result := DMProcs.Soma_Receber_2Meses.ParamByName('SOMA').asFloat;
  //
end;}

procedure TDmFinanceiro.Cria_Recibo (Favorecido: String; Dt_Vencto: TDateTime; Docto: String;
          Dt_Lancto: TDateTime; Valor: Real; Historico: String;
          Cpf_Cnpj: String; Pessoa_Fj:Integer );
Var
   Codigo: Integer;
Begin

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Cria_Recibo.ParamByName('CNPJ'      ).asString  := DmApp.Cnpj;
        DMProcs.Cria_Recibo.ParamByName('FAVORECIDO').asString  := Favorecido;
        DMProcs.Cria_Recibo.ParamByName('DT_VENCTO' ).asDate    := Dt_Vencto ;
        DMProcs.Cria_Recibo.ParamByName('DOCTO'     ).asString  := Copy(Docto,1,20);
        DMProcs.Cria_Recibo.ParamByName('DT_LANCTO' ).asDate    := Dt_Lancto ;
        DMProcs.Cria_Recibo.ParamByName('VALOR'     ).asFloat   := Valor     ;
        DMProcs.Cria_Recibo.ParamByName('HISTORICO' ).asString  := Copy(Historico,1,100) ;
        DMProcs.Cria_Recibo.ParamByName('IMPRESSO'  ).asString  := 'S'       ;
        DMProcs.Cria_Recibo.ParamByName('CPF_CNPJ'  ).asString  := Copy(Cpf_Cnpj,1,14)  ;
        DMProcs.Cria_Recibo.ParamByName('PESSOA_FJ' ).asInteger := Pessoa_Fj ;
        DMProcs.Cria_Recibo.ExecProc;
        Codigo := DMProcs.Cria_Recibo.ParamByName('CODIGO').asInteger;

        imprimerecibo (Codigo, Favorecido, Dt_Vencto, Docto,
                       Dt_Lancto, Valor, Historico,
                       Cpf_Cnpj, Pessoa_Fj,'' );
end;

function TDmFinanceiro.Soma_Receber : Real;
begin
  //
  //
  DMProcs.Soma_Receber.ParamByName('CNPJ').asString      := DmApp.Cnpj;

  DMProcs.Soma_Receber.ExecProc;
  //
  Result := DMProcs.Soma_Receber.ParamByName('SOMA').asFloat;
  //
end;

Procedure TDmFinanceiro.Insere_Cheque( CHEQUE: Integer; CONTA: Integer; DATA: TDateTime;
                             Valor: Real; HISTORICO: String; Impresso: String; PESSOA_FJ: Integer;
                             ORIGEM: String; PLANILHA: Integer; CONTABILIDADE: String;
                             NOME: String);
Begin
     //Cria um Arquivo de Cheque
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        If DMProcs2 = Nil Then
        DMProcs2 := TDMProcs2.Create(Self);

        //
        DMProcs2.Insere_Cheque.ParamByName('CNPJ'         ).asString   := DmApp.Cnpj;
        DMProcs2.Insere_Cheque.ParamByName('CHEQUE'       ).asInteger  := Cheque    ;
        DMProcs2.Insere_Cheque.ParamByName('CONTA'        ).asInteger  := Conta     ;
        DMProcs2.Insere_Cheque.ParamByName('DATA'         ).asDate     := Data      ;
        DMProcs2.Insere_Cheque.ParamByName('VALOR'        ).asFloat    := Valor     ;
        DMProcs2.Insere_Cheque.ParamByName('HISTORICO'    ).asString   := copy(Historico,1,100) ;
        DMProcs2.Insere_Cheque.ParamByName('IMPRESSO'     ).asString   := 'N'       ;
        DMProcs2.Insere_Cheque.ParamByName('PESSOA_FJ'    ).asInteger  := Pessoa_Fj ;
        DMProcs2.Insere_Cheque.ParamByName('ORIGEM'       ).asString   := Origem    ;
        DMProcs2.Insere_Cheque.ParamByName('PLANILHA'     ).asInteger  := Planilha  ;
        DMProcs2.Insere_Cheque.ParamByName('NOME'         ).asString   := Nome      ;

        If Planilha > 0
        then begin
             DMProcs2.Insere_Cheque.ParamByName('CONTABILIDADE').asString   := 'S'  ;
        end
        else begin
             DMProcs2.Insere_Cheque.ParamByName('CONTABILIDADE').asString   := 'N'  ;
        end;

        DMProcs2.Insere_Cheque.ExecProc;
        //
        DMProcs2.Insere_Cheque.Close ;

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

Procedure TDmFinanceiro.Marca_Todos_Receber ( Ini, Fim: TDateTime; Pessoa: Integer; Tipo: String; Caixa: TDateTime );

Begin
     //Cria um Arquivo de Cheque
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        if Tipo = 'Lancamento'
        then
            DMProcs3.MARCA_RECEBER_BAIXA.StoredProcName := 'MARCA_RECEBER_LANCAMENTO_BAIXA'
        else
            DMProcs3.MARCA_RECEBER_BAIXA.StoredProcName := 'MARCA_RECEBER_VENCIMENTO_BAIXA';

        DMProcs3.MARCA_RECEBER_BAIXA.ParamByName('CNPJ'       ).asString   := DmApp.Cnpj;
        DMProcs3.MARCA_RECEBER_BAIXA.ParamByName('DINI'       ).asDate     := Ini       ;
        DMProcs3.MARCA_RECEBER_BAIXA.ParamByName('DFIM'       ).asDate     := Fim       ;
        DMProcs3.MARCA_RECEBER_BAIXA.ParamByName('PESSOA_FJ'  ).asInteger  := Pessoa    ;
        DMProcs3.MARCA_RECEBER_BAIXA.ParamByName('DATA_BAIXA' ).asDate     := Caixa     ;

        DMProcs3.MARCA_RECEBER_BAIXA.ExecProc;
        //
        DMProcs3.MARCA_RECEBER_BAIXA.Close   ;

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

function TDmFinanceiro.Soma_PAGAR : Real;
begin
  DMProcs.Soma_PAGAR.ParamByName('CNPJ').asString      := DmApp.Cnpj;
  DMProcs.Soma_PAGAR.ExecProc;
  Result := DMProcs.Soma_PAGAR.ParamByName('SOMA').asFloat;
end;

procedure TDmFinanceiro.SelecionaVencimentoRec ;
begin
     Application.CreateForm(TFrmFiltraContasReceber, FrmFiltraContasReceber);
     If FrmFiltraContasReceber.Showmodal = MrOk
     then begin
          VERRECEBER.Close ;
          VERRECEBER.SQL.CLEAR ;
          VERRECEBER.Params.CLEAR ;

          VERRECEBER.Params.CreateParam ( FtDate, 'DINI', PtInput );
          VERRECEBER.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          VERRECEBER.SQL.ADD ( ' SELECT * FROM VER_RECEBER_VENCIMENTO ( :CNPJ, :DINI, :DFIM ) ' );

          VERRECEBER.ParamByName ( 'DINI' ).AsDate := FrmFiltraContasReceber.INI.Date ;
          VERRECEBER.ParamByName ( 'DFIM' ).AsDate := FrmFiltraContasReceber.FIM.Date ;

          IF FrmFiltraContasReceber.CmbPessoa.TEXT <> ''
          THEN BEGIN
               VERRECEBER.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

               VERRECEBER.SQL.Add (' Where PESSOA_FJ = :INI ');

               VERRECEBER.ParamByName ('INI').asInteger := FrmFiltraContasReceber.CmbPessoa.LookupKeyValue ;
          END;

          VERRECEBER.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ ' );

          VERRECEBER.Prepare ;
          VERRECEBER.Open ;
     END;
END;

procedure TDmFinanceiro.SelecionaVencimentoPgr ;
var
   Cont: Integer;
begin
     Application.CreateForm(TFrmFiltraContasPAGAR, FrmFiltraContasPAGAR);
     If FrmFiltraContasPAGAR.Showmodal = MrOk
     then begin
          VERPAGAR.Close ;
          VERPAGAR.SQL.CLEAR ;
          VERPAGAR.Params.CLEAR ;

          VERPAGAR.Params.CreateParam ( FtDate, 'DINI', PtInput );
          VERPAGAR.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          VERPAGAR.SQL.ADD ( ' SELECT * FROM VER_PAGAR_VENCIMENTO ( :CNPJ, :DINI, :DFIM ) ' );

          VERPAGAR.ParamByName ( 'DINI' ).AsDate := FrmFiltraContasPAGAR.INI.Date ;
          VERPAGAR.ParamByName ( 'DFIM' ).AsDate := FrmFiltraContasPAGAR.FIM.Date ;

          IF FrmFiltraContasPAGAR.CmbPessoa.TEXT <> ''
          THEN BEGIN
               VERPAGAR.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

               VERPAGAR.SQL.Add (' Where PESSOA_FJ = :INI ');

               VERPAGAR.ParamByName ('INI').asInteger := FrmFiltraContasPAGAR.CmbPessoa.LookupKeyValue ;
               Cont := 1;
          END;

          IF TRIM(FrmFiltraContasPAGAR.CmbCentro.TEXT) <> ''
          THEN BEGIN
               If Cont = 0
               then begin
                    VERPAGAR.Params.CreateParam ( FtInteger, 'CCU', PtInputOutPut );

                    VERPAGAR.SQL.Add (' Where CENTRO_CUSTO = :CCU ');

                    VERPAGAR.ParamByName ('CCU').asInteger := FrmFiltraContasPAGAR.CmbCentro.LookupKeyValue ;
               end
               else begin
                    VERPAGAR.Params.CreateParam ( FtInteger, 'CCU', PtInputOutPut );

                    VERPAGAR.SQL.Add (' and CENTRO_CUSTO = :CCU ');

                    VERPAGAR.ParamByName ('CCU').asInteger := FrmFiltraContasPAGAR.CmbCentro.LookupKeyValue ;
               end;
          END;

          VERPAGAR.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ ' );

          VERPAGAR.Prepare ;
          VERPAGAR.Open ;
     END;
END;


procedure TDmFinanceiro.Seleciona3Meses ;
begin
     Application.CreateForm(TFrmFiltraContasReceber, FrmFiltraContasReceber);
     If FrmFiltraContasReceber.Showmodal = MrOk
     then begin
          VERRECEBER_3MESES.Close ;
          VERRECEBER_3MESES.SQL.CLEAR ;
          VERRECEBER_3MESES.Params.CLEAR ;

          VERRECEBER_3MESES.Params.CreateParam ( FtDate, 'DATA', PtInput );

          VERRECEBER_3MESES.SQL.ADD ( ' SELECT * FROM VER_RECEBER_3MESES ( :CNPJ, :DATA ) ' );

          VERRECEBER_3MESES.ParamByName ( 'DATA' ).AsDate := FrmFiltraContasReceber.INI.Date ;

          IF FrmFiltraContasReceber.CmbPessoa.TEXT <> ''
          THEN BEGIN
               VERRECEBER_3MESES.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

               VERRECEBER_3MESES.SQL.Add (' Where PESSOA_FJ = :INI ');

               VERRECEBER_3MESES.ParamByName ('INI').asInteger := FrmFiltraContasReceber.CmbPessoa.LookupKeyValue ;
          END;

          VERRECEBER_3MESES.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ ' );

          VERRECEBER_3MESES.Prepare ;
          VERRECEBER_3MESES.Open ;
     END;
END;

procedure TDmFinanceiro.SelecionaLancamentoRec ;
begin
     Application.CreateForm(TFrmFiltraContasReceber, FrmFiltraContasReceber);
     If FrmFiltraContasReceber.Showmodal = MrOk
     then begin
          VERRECEBER.Close ;
          VERRECEBER.SQL.CLEAR ;
          VERRECEBER.Params.CLEAR ;

          VERRECEBER.Params.CreateParam ( FtDate, 'DINI', PtInput );
          VERRECEBER.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          VERRECEBER.SQL.ADD ( ' SELECT * FROM VER_RECEBER_LANCAMENTO ( :CNPJ, :DINI, :DFIM ) ' );

          VERRECEBER.ParamByName ( 'DINI' ).AsDate := FrmFiltraContasReceber.INI.Date ;
          VERRECEBER.ParamByName ( 'DFIM' ).AsDate := FrmFiltraContasReceber.FIM.Date ;

          IF FrmFiltraContasReceber.CmbPessoa.TEXT <> ''
          THEN BEGIN
               VERRECEBER.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

               VERRECEBER.SQL.Add (' Where PESSOA_FJ = :INI ');

               VERRECEBER.ParamByName ('INI').asInteger := FrmFiltraContasReceber.CmbPessoa.LookupKeyValue ;
          END;

          VERRECEBER.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ ' );

          VERRECEBER.Prepare ;
          VERRECEBER.Open ;
     end;
     FrmFiltraContasReceber.Free ;
     FrmFiltraContasReceber := Nil ;
END;

procedure TDmFinanceiro.SelecionaLancamentoPgr ;
var
   Cont : Integer;
begin
     Application.CreateForm(TFrmFiltraContasPAGAR, FrmFiltraContasPAGAR);
     If FrmFiltraContasPAGAR.Showmodal = MrOk
     then begin
          VERPAGAR.Close ;
          VERPAGAR.SQL.CLEAR ;
          VERPAGAR.Params.CLEAR ;

          VERPAGAR.Params.CreateParam ( FtDate, 'DINI', PtInput );
          VERPAGAR.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          VERPAGAR.SQL.ADD ( ' SELECT * FROM VER_PAGAR_LANCAMENTO ( :CNPJ, :DINI, :DFIM ) ' );

          VERPAGAR.ParamByName ( 'DINI' ).AsDate := FrmFiltraContasPAGAR.INI.Date ;
          VERPAGAR.ParamByName ( 'DFIM' ).AsDate := FrmFiltraContasPAGAR.FIM.Date ;

          IF FrmFiltraContasPAGAR.CmbPessoa.TEXT <> ''
          THEN BEGIN
               VERPAGAR.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

               VERPAGAR.SQL.Add (' Where PESSOA_FJ = :INI ');

               VERPAGAR.ParamByName ('INI').asInteger := FrmFiltraContasPAGAR.CmbPessoa.LookupKeyValue ;
               Cont := 1;
          END;

          IF TRIM(FrmFiltraContasPAGAR.CmbCentro.TEXT) <> ''
          THEN BEGIN
               If Cont = 0
               then begin
                    VERPAGAR.Params.CreateParam ( FtInteger, 'CCU', PtInputOutPut );

                    VERPAGAR.SQL.Add (' Where CENTRO_CUSTO = :CCU ');

                    VERPAGAR.ParamByName ('CCU').asInteger := FrmFiltraContasPAGAR.CmbCentro.LookupKeyValue ;
               end
               else begin
                    VERPAGAR.Params.CreateParam ( FtInteger, 'CCU', PtInputOutPut );

                    VERPAGAR.SQL.Add (' and CENTRO_CUSTO = :CCU ');

                    VERPAGAR.ParamByName ('CCU').asInteger := FrmFiltraContasPAGAR.CmbCentro.LookupKeyValue ;
               end;
          END;

          VERPAGAR.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ ' );

          VERPAGAR.Prepare ;
          VERPAGAR.Open ;
     end;
     FrmFiltraContasPAGAR.Free ;
     FrmFiltraContasPAGAR := Nil ;
END;

procedure TDmFinanceiro.IncLinha;
begin
  Linha := Linha + 1;
  If Linha > 62 then
   Impressora.NovaPagina ;
end;

Procedure TDmFinanceiro.Extorna_PAGAR (Codigo: Integer; Ano: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;


        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Extorna_PAGAR.ParamByName('CNPJ').asString        := DmApp.Cnpj ;
        DMProcs.Extorna_PAGAR.ParamByName('CODBX').asInteger      := Codigo     ;
        DMProcs.Extorna_PAGAR.ParamByName('ANOBX').asInteger      := Ano        ;

        DMProcs.Extorna_PAGAR.ExecProc;
        DmApp.TransactionProc.Commit ;
        DMApp.LOG_TRANSACOES(IntToStr(Codigo), 'EST-P' );
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


Procedure TDmFinanceiro.Extorna_PAGAR_Parcial (Codigo: Integer; Ano: Integer; Valor: Real );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Extorna_PAGAR_Parcial.ParamByName('CNPJ').asString        := DmApp.Cnpj ;
        DMProcs.Extorna_PAGAR_Parcial.ParamByName('CODBX').asInteger      := Codigo     ;
        DMProcs.Extorna_PAGAR_Parcial.ParamByName('ANOBX').asInteger      := Ano        ;
        DMProcs.Extorna_PAGAR_Parcial.ParamByName('VALOR').asFloat        := Valor      ;

        DMProcs.Extorna_PAGAR_Parcial.ExecProc;
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
           DmApp.TransactionProc.Rollback ;
     end;
end;

procedure TDmFinanceiro.Baixa_Receber_Selecao (Tipo: String; Cliente: Integer; Historico: String; Data_Baixa: TDateTime; Data_Ini: TDateTime; Data_Fim: TDateTime; Total: Real; Juros: Real; Desconto: Real; Usuario: Integer; Dinheiro, Cheque, Cartao: Real; Conta: Integer; Turno:Integer; Banco: Integer );
Var
   Planilha: Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        if (DmApp.EXIBE_ACERTO = 'S') then
          Planilha := DMApp.GerarCodigo('ACERTO',0 ) + 1
        else
          Planilha := DMApp.GerarCodigo('PLANILHA', 1);

        DMProcs.Baixa_Receber_Selecao.ParamByName('CNPJ').asString         := DmApp.Cnpj ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('TIPO').asString         := Tipo       ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('CLIENTE').asInteger     := Cliente    ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('HISTORICOBX').asString  := copy(Historico,1,100)  ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('USUARIO'   ).asInteger  := Usuario    ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('DATA_BAIXA').asDate     := Data_Baixa ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('DATA_INICIAL').asDate   := Data_Ini   ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('DATA_FINAL').asDate     := Data_Fim   ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('TOTAL').asFloat         := TOTAL      ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('JUROS').asFloat         := Juros      ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('DESCONTO').asFloat      := Desconto   ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('PLANILHA').asInteger    := Planilha   ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('CONTA').asInteger       := Conta      ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('TURNO').asInteger       := Turno      ;
        DMProcs.Baixa_Receber_Selecao.ParamByName('BANCO').asInteger       := Banco      ;

        DMProcs.Baixa_Receber_Selecao.ExecProc;

        If Arredonda(Cheque,2) > 0
        then begin
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

        If DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.Commit ;

     except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           End
           Else
           Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema na baixa por seleção!',MtError,[MbOk],0);
           End;

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;

Procedure TDmFinanceiro.Baixa_Receber_Selecao_Pdv (Tipo: String; Cliente: Integer; Historico: String; Data_Baixa: TDateTime;
Data_Ini: TDateTime; Data_Fim: TDateTime; Total: Real; Juros: Real; Desconto: Real; Usuario: Integer; Dinheiro, Cheque, Cartao: Real; Conta: Integer; Turno:Integer; Banco: Integer );
Var
   Planilha: Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        if (DmApp.EXIBE_ACERTO = 'S') then
          Planilha  := DMApp.GerarCodigo('ACERTO',0 ) + 1
        else
          Planilha := DMApp.GerarCodigo('PLANILHA', 1);


        DMProcs3.Baixa_Receber_Selecao_Pdv.ParamByName('CNPJ').asString         := DmApp.Cnpj ;
        DMProcs3.Baixa_Receber_Selecao_Pdv.ParamByName('CLIENTE').asInteger     := Cliente    ;
        DMProcs3.Baixa_Receber_Selecao_Pdv.ParamByName('HISTORICOBX').asString  := copy(Historico,1,100)  ;
        DMProcs3.Baixa_Receber_Selecao_Pdv.ParamByName('USUARIO'   ).asInteger  := Usuario    ;
        DMProcs3.Baixa_Receber_Selecao_Pdv.ParamByName('DATA_BAIXA').asDate     := Data_Baixa ;
        DMProcs3.Baixa_Receber_Selecao_Pdv.ParamByName('DATA_INICIAL').asDate   := Data_Ini   ;
        DMProcs3.Baixa_Receber_Selecao_Pdv.ParamByName('DATA_FINAL').asDate     := Data_Fim   ;
        DMProcs3.Baixa_Receber_Selecao_Pdv.ParamByName('TOTAL').asFloat         := TOTAL      ;
        DMProcs3.Baixa_Receber_Selecao_Pdv.ParamByName('PLANILHA').asInteger    := Planilha   ;
        DMProcs3.Baixa_Receber_Selecao_Pdv.ParamByName('CONTA').asInteger       := Conta      ;
        DMProcs3.Baixa_Receber_Selecao_Pdv.ParamByName('TURNO').asInteger       := Turno      ;
        DMProcs3.Baixa_Receber_Selecao_Pdv.ParamByName('BANCO').asInteger       := Banco      ;
        DMProcs3.Baixa_Receber_Selecao_Pdv.ParamByName('PDV').value       := 'S';

        DMProcs3.Baixa_Receber_Selecao_Pdv.ExecProc;

        If Arredonda(Cheque,2) > 0
        then begin
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



        If DmaPP.TransactionProc.InTransaction
        then
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

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;

Procedure TDmFinanceiro.Sel_Rec_Convenio_Periodo ( Cliente : Integer; Inicial: TDateTime; Final: TDateTime );
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
        DMProcs2.SELECIONA_REC_CONVENIO_PERIODO.ParamByName('CNPJ'        ).asString   := DmApp.Cnpj ;
        DMProcs2.SELECIONA_REC_CONVENIO_PERIODO.ParamByName('CONVENIO'    ).asInteger  := Cliente    ;
        DMProcs2.SELECIONA_REC_CONVENIO_PERIODO.ParamByName('INICIAL'     ).asDate     := Inicial    ;
        DMProcs2.SELECIONA_REC_CONVENIO_PERIODO.ParamByName('FINAL'       ).asDate     := Final      ;

        DMProcs2.SELECIONA_REC_CONVENIO_PERIODO.ExecProc;

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

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;

Procedure TDmFinanceiro.Extorna_Fatura ( Codigo: Integer );
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
        DMProcs2.Extorna_Fatura.ParamByName('CNPJ'   ).asString   := DmApp.Cnpj ;
        DMProcs2.Extorna_Fatura.ParamByName('FATURA' ).asInteger  := Codigo     ;

        DMProcs2.Extorna_Fatura.ExecProc;

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

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;



Function TDmFinanceiro.Agrupa_Faturas ( Origem: Integer; Destino: Integer ):String;
Var
   Mensagem: String;
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
        DMProcs2.Agrupa_Fatura.ParamByName('CNPJ'       ).asString   := DmApp.Cnpj ;
        DMProcs2.Agrupa_Fatura.ParamByName('ORIGEM'     ).asInteger  := Origem     ;
        DMProcs2.Agrupa_Fatura.ParamByName('DESTINO'    ).asInteger  := Destino    ;

        DMProcs2.Agrupa_Fatura.ExecProc;

        Mensagem := DMProcs2.Agrupa_Fatura.ParamByName('MENSAGEM').AsString;

        //
        DMProcs2.Free;
        DMProcs2 := Nil;
        DmApp.TransactionProc.Commit ;

        Result := Mensagem ;

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

Function TDmFinanceiro.Recalcula_Fatura ( Fatura: Integer ):Real;
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
        DMProcs2.Recalcula_Fatura.ParamByName('CNPJ'       ).asString   := DmApp.Cnpj ;
        DMProcs2.Recalcula_Fatura.ParamByName('FATURA'     ).asInteger  := Fatura     ;

        DMProcs2.Recalcula_Fatura.ExecProc;

        Result := DMProcs2.Recalcula_Fatura.ParamByName('SOMA').AsFloat;

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

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;


Procedure TDmFinanceiro.Valor_Adicional_Fatura ( Codigo: Integer; Documento: String; Historico: String; Valor: Real );
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
        DMProcs2.Valor_Adiconal_Fatura.ParamByName('CNPJ'      ).asString  := DmApp.Cnpj    ;
        DMProcs2.Valor_Adiconal_Fatura.ParamByName('CODIGO'    ).asInteger := Codigo        ;
        DMProcs2.Valor_Adiconal_Fatura.ParamByName('DOCUMENTO' ).asString  := Documento     ;
        DMProcs2.Valor_Adiconal_Fatura.ParamByName('HISTORICO' ).asString  := Historico     ;
        DMProcs2.Valor_Adiconal_Fatura.ParamByName('VALOR'     ).asFloat   := Valor         ;

        DMProcs2.Valor_Adiconal_Fatura.ExecProc ;

        DMProcs2.Valor_Adiconal_Fatura.Close ;
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

           If DmaPP.TransactionProc.InTransaction  then
               DmApp.TransactionProc.Rollback ;
     end;
end;

Procedure TDmFinanceiro.Extorna_Faturas ( Codigo: Integer );
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
        DMProcs2.Extorna_Faturas.ParamByName('CNPJ'      ).asString  := DmApp.Cnpj    ;
        DMProcs2.Extorna_Faturas.ParamByName('FATURA'    ).asInteger := Codigo        ;

        DMProcs2.Extorna_Faturas.ExecProc ;

        DMProcs2.Extorna_Faturas.Close ;
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

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;

           MESSAGEDLG('Erro ao Estorna a Fatura!', MtError, [MbOk],0);
     end;
end;

Procedure TDmFinanceiro.Extorna_NotaFatura ( Codigo: Integer; Ano: Integer; Fatura: Integer );
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
        DMProcs2.Extorna_NotaFatura.ParamByName('CNPJ'      ).asString  := DmApp.Cnpj    ;
        DMProcs2.Extorna_NotaFatura.ParamByName('CODIGO'    ).asInteger := Codigo        ;
        DMProcs2.Extorna_NotaFatura.ParamByName('ANO'       ).asInteger := Ano           ;
        DMProcs2.Extorna_NotaFatura.ParamByName('FATURA'    ).asInteger := Fatura        ;

        DMProcs2.Extorna_NotaFatura.ExecProc ;

        DMProcs2.Extorna_NotaFatura.Close ;
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

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;

Procedure TDmFinanceiro.Transfere_NotaFatura ( Codigo: Integer; Ano: Integer; Fatura, Destino: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs3.TRANSFERE_NOTAFATURA.ParamByName('CNPJ'      ).asString  := DmApp.Cnpj    ;
        DMProcs3.TRANSFERE_NOTAFATURA.ParamByName('CODIGO'    ).asInteger := Codigo        ;
        DMProcs3.TRANSFERE_NOTAFATURA.ParamByName('ANO'       ).asInteger := Ano           ;
        DMProcs3.TRANSFERE_NOTAFATURA.ParamByName('FATURA'    ).asInteger := Fatura        ;
        DMProcs3.TRANSFERE_NOTAFATURA.ParamByName('DESTINO'   ).asInteger := Destino       ;

        DMProcs3.TRANSFERE_NOTAFATURA.ExecProc ;

        DMProcs3.TRANSFERE_NOTAFATURA.Close ;
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

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;


procedure TDmFinanceiro.SelecionaReceberFaturaBaixada ( Fatura: Integer; Estado: String; Total: Real ) ;
begin
     Baixas_Receber.Close ;

     Baixas_Receber.SQL.CLEAR ;
     Baixas_Receber.Params.CLEAR ;

     Baixas_Receber.Params.CreateParam ( FtString , 'CNPJ', PtInput );
     Baixas_Receber.Params.CreateParam ( FtInteger, 'FAT' , PtInput );

     Baixas_Receber.SQL.ADD ( ' SELECT * FROM VER_BAIXA_RECEBER_FATURA ( :CNPJ, :FAT ) ' );

     Baixas_Receber.ParamByName ( 'FAT' ).AsInteger := Fatura ;

     Baixas_Receber.Prepare ;
     Baixas_Receber.Open ;

END;



Procedure TDmFinanceiro.Desvincula_Rec_Fatura (Codigo: Integer; Ano: Integer );
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
        DMProcs4.DESVINCULA_RECEBER_FATURA.ParamByName('CNPJ').asString         := DmApp.Cnpj ;
        DMProcs4.DESVINCULA_RECEBER_FATURA.ParamByName('RECEBER').asInteger     := Codigo     ;
        DMProcs4.DESVINCULA_RECEBER_FATURA.ParamByName('ANO'   ).asInteger      := Ano        ;

        DMProcs4.DESVINCULA_RECEBER_FATURA.ExecProc;

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

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;

Procedure TDmFinanceiro.Baixa_Abastecimentos (Codigo: Integer; Data: TDateTime; Valor: Real );
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
        DMProcs4.BAIXA_ABASTECIMENTOS_AVULSOS.ParamByName('CNPJ'  ).asString     := DmApp.Cnpj ;
        DMProcs4.BAIXA_ABASTECIMENTOS_AVULSOS.ParamByName('CODIGO').asInteger    := Codigo     ;
        DMProcs4.BAIXA_ABASTECIMENTOS_AVULSOS.ParamByName('DATA'  ).asDate       := Data       ;
        DMProcs4.BAIXA_ABASTECIMENTOS_AVULSOS.ParamByName('VALOR' ).asFloat      := Valor      ;

        DMProcs4.BAIXA_ABASTECIMENTOS_AVULSOS.ExecProc;

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

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;



Procedure TDmFinanceiro.Baixa_Receber_Parcial (Codigo: Integer; Ano: Integer; Documento: String; Historico: String; Data_Baixa: TDateTime; Valor: Real; Juros: Real; Desconto: Real; Usuario: Integer; Cliente: Integer; Cheque: Real; Conta: Integer; Turno: Integer; Banco: Integer );
Var
   Planilha: Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        if (DmApp.EXIBE_ACERTO = 'S') then
          Planilha  := DMApp.GerarCodigo('ACERTO',0 ) + 1
        else
          Planilha := DMApp.GerarCodigo('PLANILHA', 1);

        DMProcs.Baixa_Receber_Parcial.ParamByName('CNPJ').asString         := DmApp.Cnpj ;
        DMProcs.Baixa_Receber_Parcial.ParamByName('CODREC').asInteger      := Codigo     ;
        DMProcs.Baixa_Receber_Parcial.ParamByName('ANOREC').asInteger      := Ano        ;
        DMProcs.Baixa_Receber_Parcial.ParamByName('HISTORICOBX').asString  := copy(Historico,1,100)  ;
        DMProcs.Baixa_Receber_Parcial.ParamByName('USUARIO').asInteger     := Usuario    ;
        DMProcs.Baixa_Receber_Parcial.ParamByName('DATA_BAIXA').asDate     := Data_Baixa ;
        DMProcs.Baixa_Receber_Parcial.ParamByName('VLR_PARCIAL').asFloat   := Valor      ;
        DMProcs.Baixa_Receber_Parcial.ParamByName('JUROS').asFloat         := Juros      ;
        DMProcs.Baixa_Receber_Parcial.ParamByName('DESCONTO').asFloat      := Desconto   ;
        DMProcs.Baixa_Receber_Parcial.ParamByName('PLANILHA').asInteger    := Planilha   ;
        DMProcs.Baixa_Receber_Parcial.ParamByName('CONTA').asInteger       := Conta      ;
        DMProcs.Baixa_Receber_Parcial.ParamByName('TURNO').asInteger       := Turno      ;
        DMProcs.Baixa_Receber_Parcial.ParamByName('BANCO').asInteger       := Banco      ;

        DMProcs.Baixa_Receber_Parcial.ExecProc;

        If Arredonda(Cheque,2) > 0
        then begin
             FrmCheque_Planilha := TFrmCheque_Planilha.Create(Self);

             FrmCheque_Planilha.TotalDesdobrar := Arredonda(Cheque,2)   ;
             FrmCheque_Planilha.Planilha       := Planilha              ;
             FrmCheque_Planilha.Cliente        := Cliente               ;
             FrmCheque_Planilha.Data_Caixa     := DmApp.DataCaixa       ;
             FrmCheque_Planilha.Usuario        := DmApp.UsuarioCaixa    ;
             FrmCheque_Planilha.Origem         := 'REC'               ;

             FrmCheque_Planilha.ShowModal                               ;

        end;

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

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;

Procedure TDmFinanceiro.Baixa_PAGAR_PARCIAL (Codigo: Integer; Ano: Integer; Documento: String; Historico: String;
                                             Data_Baixa: TDateTime; Valor: Real; Juros: Real; Desconto: Real;
                                             Usuario: Integer; Conta: Integer; Turno: Integer; Banco: Integer;
                                             Cheque: Real; Fornecedor: Integer; Nome: String);
Var
   Planilha: Integer;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
          DmaPP.TransactionProc.StartTransaction ;
        if (DmApp.EXIBE_ACERTO = 'S') then
          Planilha  := DMApp.GerarCodigo('ACERTO',0 ) + 1
        else
          Planilha := DMApp.GerarCodigo('PLANILHA', 1);
        DMProcs.Baixa_PAGAR_Parcial.ParamByName('CNPJ').asString         := DmApp.Cnpj ;
        DMProcs.Baixa_PAGAR_Parcial.ParamByName('CODPAG').asInteger      := Codigo     ;
        DMProcs.Baixa_PAGAR_Parcial.ParamByName('ANOPAG').asInteger      := Ano        ;
        DMProcs.Baixa_PAGAR_Parcial.ParamByName('HISTORICOBX').asString  := copy(Historico,1,100)  ;
        DMProcs.Baixa_PAGAR_Parcial.ParamByName('USUARIO').asInteger     := Usuario    ;
        DMProcs.Baixa_PAGAR_Parcial.ParamByName('DATA_BAIXA').asDate     := Data_Baixa ;
        DMProcs.Baixa_PAGAR_Parcial.ParamByName('VLR_BX_PARCIAL').asFloat   := Valor      ;
        DMProcs.Baixa_PAGAR_Parcial.ParamByName('JUROS').asFloat         := Juros      ;
        DMProcs.Baixa_PAGAR_Parcial.ParamByName('DESCONTO').asFloat      := Desconto   ;
        DMProcs.Baixa_PAGAR_Parcial.ParamByName('PLANILHA').asInteger    := Planilha   ;
        DMProcs.Baixa_PAGAR_Parcial.ParamByName('CONTA').asInteger       := Conta      ;
        DMProcs.Baixa_PAGAR_Parcial.ParamByName('TURNO').asInteger       := Turno      ;
        DMProcs.Baixa_PAGAR_Parcial.ParamByName('BANCO').asInteger       := Banco      ;
        DMProcs.Baixa_PAGAR_Parcial.ExecProc;

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

           If DmaPP.TransactionProc.InTransaction   then
               DmApp.TransactionProc.Rollback ;
     end;
end;

procedure TDmFinanceiro.Contas_ReceberAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TDmFinanceiro.Contas_ReceberAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmFinanceiro.Contas_ReceberBeforeOpen(DataSet: TDataSet);
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

procedure TDmFinanceiro.Contas_ReceberBeforePost(DataSet: TDataSet);
var
  sql,motivo : string;
  cont : integer;
begin
  motivo := 'Registro gerado automaticamente pelo sistema.';
  //----------------Validação para evitar alterãções indevidas em campos chaves do C. Receber----------------//
  //Obs.: Esta sendo realizada pela aplicação por conta de alguns processos do BD que inviabilizam a validação
  //por triguer, para que isso se torne possivel precisaremos alterar a estrutura do Contas à Receber, algo
  //que não irá ocorrer po hora..

  cont := dmFinanceiro2.VerificaReceber(Contas_ReceberCODIGO.value,Contas_ReceberPESSOA_FJ.OldValue);
  if (cont > 0) then
    motivo := 'Existem movimentos de baixa relacionados ao registro.';

  //Registros lançados manualmente e que não possuem nenhuma baixa registrada, podem ser "alterados"
  if ((Contas_ReceberVALOR.OldValue <> Contas_ReceberVALOR.NewValue) and (Contas_ReceberVALOR.OldValue <> 0)) then
  begin
    if ((Contas_ReceberOrigem.value <> 'MAN') or (cont > 0)) then
    begin
      Application.MessageBox(Pchar(Motivo+#13+'Valor nominal não pode ser alterado.'),'Aviso',mb_ok+mb_iconerror);
      abort;
    end;
  end;

  if ((Contas_ReceberPESSOA_FJ.OldValue <> Contas_ReceberPESSOA_FJ.NewValue) and (Contas_ReceberPESSOA_FJ.OldValue <> 0)) then
  begin
    if ((Contas_ReceberOrigem.value <> 'MAN') or (cont > 0)) then
    begin
      Application.MessageBox(Pchar(Motivo+#13+'Proprietário não pode ser alterado'),'Aviso',mb_ok+mb_iconerror);
      abort;
    end;
  end;

  Contas_ReceberANO.Value := Year(Contas_ReceberDT_EMISSAO.Value);

  dmapp.Extenso.Valor :=Contas_ReceberVALOR.Value;
  Contas_ReceberVALOR_EXTENSO.value := dmapp.Extenso.texto;

  If Dataset.State = dsInsert Then
    Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);
end;

procedure TDmFinanceiro.Contas_ReceberNewRecord(DataSet: TDataSet);
begin
     Contas_ReceberANO.Value        := 0    ;
     Contas_ReceberDT_EMISSAO.Value := DmApp.Data_Servidor ;
     Contas_ReceberDT_LANCTO.Value  := DmApp.Data_Servidor ;
     Contas_ReceberVALOR.Value      := 0    ;
     Contas_ReceberORIGEM.Value     := 'MAN';
     Contas_ReceberSELECIONADO.Value:= 'N'  ;
     Contas_ReceberVLR_PARCIAL.VALUE:= 0    ;
     Contas_ReceberJUROS_REC.VALUE  := 0    ;
     Contas_ReceberDESCONTOS.VALUE  := 0    ;
     Contas_ReceberBOLETO.Value     := 'N'  ;

     If dmapp.UsuarioCaixa > 0
     then begin
          Contas_ReceberFLUXO_CAIXA.VALUE := dmApp.DataCaixa ;
     end
     else begin
          Contas_ReceberFLUXO_CAIXA.VALUE := DmApp.Data_Servidor ;
     end;
end;

procedure TDmFinanceiro.Contas_ReceberDT_VENCTOValidate(Sender: TField);
var
  Data, DataServer: string;
begin
//  if DmApp.Data_Servidor > Sender  then
//    Application.MessageBox(Pchar('A data digitada '+QuotedStr(FormatDateTime('dd/mm/yyyy',Sender.Value))+' é menor que a data do sistema '+QuotedStr(FormatDateTime('dd/mm/yyyy',DmApp.Data_Servidor))),'Aviso', mb_ok+mb_iconinformation);
end;

procedure TDmFinanceiro.Baixas_ReceberCalcFields(DataSet: TDataSet);
begin
     Baixas_ReceberAtraso.value := Baixas_ReceberDT_BAIXA.value - Baixas_ReceberDT_VENCTO.value ;
     Baixas_ReceberTotal.Value  := Baixas_ReceberVLR_BAIXA.VALUE ;
end;

Procedure TDmFinanceiro.Seleciona_Receber(Codigo: Integer; Ano: Integer; Selecionado: String );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Seleciona_Receber.ParamByName('CNPJ'  ).asString       := DmApp.Cnpj ;
        DMProcs.Seleciona_Receber.ParamByName('CODIGO').asInteger      := Codigo     ;
        DMProcs.Seleciona_Receber.ParamByName('ANO'   ).asInteger      := Ano        ;

        IF Selecionado = 'S'
        THEN
            DMProcs.Seleciona_Receber.ParamByName('SEL').asString      := 'N'
        ELSE
            DMProcs.Seleciona_Receber.ParamByName('SEL').asString      := 'S';

        DMProcs.Seleciona_Receber.ExecProc;
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

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;

Procedure TDmFinanceiro.Seleciona_PAGAR(Codigo: Integer; Ano: Integer; Selecionado: String );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Seleciona_PAGAR.ParamByName('CNPJ'  ).asString       := DmApp.Cnpj ;
        DMProcs.Seleciona_PAGAR.ParamByName('CODIGO').asInteger      := Codigo     ;
        DMProcs.Seleciona_PAGAR.ParamByName('ANO'   ).asInteger      := Ano        ;

        IF Selecionado = 'S'
        THEN
            DMProcs.Seleciona_PAGAR.ParamByName('SEL').asString      := 'N'
        ELSE
            DMProcs.Seleciona_PAGAR.ParamByName('SEL').asString      := 'S';

        DMProcs.Seleciona_PAGAR.ExecProc;
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

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;

procedure TDmFinanceiro.Contas_ReceberCalcFields(DataSet: TDataSet);
var
  dias : integer;
  Data : Tdate;
  VlrOriginal : Real;
begin
  Contas_ReceberTotal.Value := Contas_ReceberValor.Value - (Contas_ReceberVlr_Parcial.Value - Contas_ReceberDescontos.value);
  Contas_Receber_Total_Geral_IDX.value := Contas_ReceberTotal.Value;

  VlrOriginal := Contas_ReceberTotal.Value;

  if (Contas_ReceberData_Ult_Baixa.value < Contas_ReceberDT_VENCTO.value) then
    Data := Contas_ReceberDT_VENCTO.Value
  else
    Data := Contas_ReceberData_Ult_Baixa.Value;

  Dias := trunc(DmaPP.Data_Servidor - Data);

  if Dias < 0 then
    Dias := 0;

  if ((Dias > 0) and (dias > dmapp.TOLERANCIA_JUROS)) then
    Contas_ReceberJuros_Calculados.Value := arredonda(CALCULAJUROS(Data,DmaPP.Data_Servidor,Contas_ReceberTOTAL.Value,0 ),2)
  else
    Contas_ReceberJuros_Calculados.Value := 0;

  Contas_ReceberTotal_Nominal.value := VlrOriginal + Contas_ReceberJuros_Calculados.Value ;
end;

procedure TDmFinanceiro.VerReceberCalcFields(DataSet: TDataSet);
Var
   Dias: Integer;
   Data : TDate;
   juros, VlrOriginal : Real;
begin
     //---------------VER RECEBER É USADO NO PDV--------------------/
     //Valor Restante é o valor total
     VerReceberTotal.Value   := VerReceberValor.Value - (VerReceberVlr_Parcial.Value + VerReceberDescontos.VALUE) ;
     VlrOriginal := VerReceberTotal.Value;
     //Verificando se a ultima baixa será utilizado como parâmetro para o calculo de juros
     if (VerReceberData_Ult_Baixa.value < VerReceberDT_VENCTO.value) then
       Data := VerReceberDT_VENCTO.Value
     else
       Data := VerReceberData_Ult_Baixa.Value;
//     Dias := trunc(DmaPP.DataCaixa - Data);
     Dias := trunc(DmaPP.Data_Servidor - Data);
     if Dias < 0 then
       Dias := 0;

     VerReceberATRASO.Value := Dias ;

     //se havemos de cobrar juros
     if ((Dias > 0) and (dias > dmapp.TOLERANCIA_JUROS)) then
     begin
       //       VerReceberJuros_Calculadors.Value := arredonda(CALCULAJUROS(Data,DmaPP.DataCaixa,VerReceberTOTAL.Value,0 ),2);
       VerReceberJuros_Calculadors.Value := arredonda(CALCULAJUROS(Data,DmaPP.Data_Servidor,VerReceberTOTAL.Value,0 ),2);
       //aplicando o valor de multa no total
      //VerReceberTotal.Value := arredonda(VerReceberTotal.Value + ( DmApp.MULTA_FINANCEIRA * VerReceberTotal.Value)/100,2);
     end
     else
       VerReceberJuros_Calculadors.Value := 0;

     //Não sei pra que esse negócio..
     VerReceberSelecao.Value := VlrOriginal + VerReceberJUROS_PARCIAL.value ;

     //explicação deste codigo esta no oncalcfilelds de VerReceberAdm
     VerReceberTotal_Nominal.value := arredonda(VerReceberTotal.value + VerReceberJuros_Calculadors.Value,2) ;
     VerReceberJuros_Conta.value := Arredonda(VerReceberJuros_Calculadors.Value,2);
end;

procedure TDmFinanceiro.ImpressoraBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
     // Rodapé...
     IMPRESSORA.impf(63,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(64,01,dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
      
end;

procedure TDmFinanceiro.CabecalhoReceber(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(02,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio ,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(now),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);

     IMPRESSORA.impf(05,01,'LANC   DOCUMENTO     VENCTO             ATRASO     VALOR       JUROS      TOTAL',[Normal]);

     inc(pagina);
     linha  := 6;
end;

procedure TDmFinanceiro.CabecalhoPAGAR(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio ,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(now),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);

     IMPRESSORA.impf(05,01,'LANC   DOCUMENTO     VENCTO             ATRASO     VALOR       JUROS      TOTAL',[Normal]);

     inc(pagina);
     linha  := 6;
end;

procedure TDmFinanceiro.CabecalhoReceberData(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(02,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio ,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(now),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);

     IMPRESSORA.impf(05,01,'DATA',[COMP17]);
     IMPRESSORA.impf(05,20,'       TOTAL',[COMP17]);
     IMPRESSORA.impf(05,35,'PORCENTAGEM',[COMP17]);


     inc(pagina);
     linha  := 6;
end;


procedure TDmFinanceiro.CabecalhoRecebidas(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio ,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(now),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);

     IMPRESSORA.impf(05,01,'LANC',[COMP17]);
     IMPRESSORA.impf(05,08,'DOCUMENTO',[COMP17]);
     IMPRESSORA.impf(05,22,'VENCTO',[COMP17]);
     IMPRESSORA.impf(05,32,'BAIXA',[COMP17]);
     IMPRESSORA.impf(05,50,'   DESCONTO',[COMP17]);
     IMPRESSORA.impf(05,62,'      JUROS',[COMP17]);
     IMPRESSORA.impf(05,73,'      TOTAL',[COMP17]);

     inc(pagina);
     linha  := 6;
end;

procedure TDmFinanceiro.CabecalhoCentro(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio ,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(now),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);

     IMPRESSORA.impf(05,01,'FORNECEDOR',[COMP17]);
     IMPRESSORA.impf(05,20,'LANC',[COMP17]);
     IMPRESSORA.impf(05,27,'DOCUMENTO',[COMP17]);
     IMPRESSORA.impf(05,37,'VENCTO',[COMP17]);
     IMPRESSORA.impf(05,44,'BAIXA',[COMP17]);
     IMPRESSORA.impf(05,51,'BAIXA',[COMP17]);
     IMPRESSORA.impf(05,60,'  DESCONTO',[COMP17]);
     IMPRESSORA.impf(05,67,'     JUROS',[COMP17]);
     IMPRESSORA.impf(05,74,'     TOTAL',[COMP17]);

     inc(pagina);
     linha  := 6;
end;

procedure TDmFinanceiro.CabecalhoPagarCentro(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio ,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(now),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);

     IMPRESSORA.impf(05,01,'FORNECEDOR',[COMP17]);
     IMPRESSORA.impf(05,20,'LANC',[COMP17]);
     IMPRESSORA.impf(05,28,'DOCUMENTO',[COMP17]);
     IMPRESSORA.impf(05,38,'VENCTO',[COMP17]);
     IMPRESSORA.impf(05,54,'       VALOR',[COMP17]);
     IMPRESSORA.impf(05,73,'       TOTAL',[COMP17]);

     inc(pagina);
     linha  := 6;
end;

procedure TDmFinanceiro.CabecalhoPagas(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio ,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(now),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);

     IMPRESSORA.impf(05,01,'LANC',[COMP17]);
     IMPRESSORA.impf(05,08,'DOCUMENTO',[COMP17]);
     IMPRESSORA.impf(05,18,'VENCTO',[COMP17]);
     IMPRESSORA.impf(05,25,'BAIXA',[COMP17]);
     IMPRESSORA.impf(05,33,'HISTORICO',[COMP17]);
     IMPRESSORA.impf(05,57,'  DESCONTO',[COMP17]);
     IMPRESSORA.impf(05,65,'     JUROS',[COMP17]);
     IMPRESSORA.impf(05,74,'     TOTAL',[COMP17]);

     inc(pagina);
     linha  := 6;
end;

procedure TDmFinanceiro.IMPRIMERECEBER;
VAR
   IMP, STR         : STRING;
   JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD           : INTEGER;
begin
     PAGINA     := 1;
     LINHA      := 5;

     IMPRESSORA.OnNewPage := cabecalhoreceber ;
     IMPRESSORA.ABRIR;

     TOTAL      := 0;//TOTAL DO CLIENTE
     TOTALGERAL := 0;//TOTAL DAS CONTAS
     JUROSGERAL := 0;//VALOR DOS JUROS

     IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

     WHILE NOT VERRECEBER.Eof DO
     BEGIN
          INCLINHA;

          IF IMP = 'N'
          THEN BEGIN
               IMPRESSORA.impf(LINHA,01,INTTOSTR(VERRECEBERPESSOA_FJ.Value) + '-'+ VERRECEBERNOME.Value , [comp17]);

               If length(VERRECEBERCPF_CGC.Value) <= 11
               then
                   IMPRESSORA.impf(LINHA,50,MASCARACPF(VERRECEBERCPF_CGC.Value) , [comp17])
               ELSE
                   IMPRESSORA.impf(LINHA,50,MASCARACNPJ(VERRECEBERCPF_CGC.Value) , [comp17]);

               IMP := 'S' ;

               //ULTIMO CODIGO IMPRESSO
               ULTCOD := VERRECEBERPESSOA_FJ.VALUE ;

               TOTAL := 0;//TOTAL DO CLIENTE

               INCLINHA ;
          END;
          //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
          //lancamento
          IMPRESSORA.impf(linha,01,DATETOSTR(VerReceberDT_LANCTO.Value ),[comp17]);

          //Documento
          IMPRESSORA.impf(linha,08, VerReceberDOCTO.Value ,[comp17]);

          //VENCIMENTO
          IMPRESSORA.impf(linha,22, DATETOSTR(VerReceberDT_VENCTO.Value ) ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00',VERRECEBERTOTAL.Value );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha,50, STR ,[comp17]);

          JUROS := CalculaJuros(VerReceberDT_VENCTO.VALUE, DATE, VERRECEBERTOTAL.VALUE,0);

          STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha,62, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', JUROS + VERRECEBERTOTAL.Value);
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha,73, STR ,[comp17]);

          TOTAL      := TOTAL + VERRECEBERTOTAL.Value + JUROS;
          TOTALGERAL := TOTALGERAL + VERRECEBERTOTAL.Value + JUROS ;
          JUROSGERAL := JUROSGERAL + JUROS ;

          VERRECEBER.NEXT ;

          IF (( ULTCOD <> VERRECEBERPESSOA_FJ.VALUE )AND(NOT VERRECEBER.EOF))
          THEN BEGIN
               INCLINHA;

               STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

               INCLINHA;

               IMPRESSORA.impf(linha,55, ' TOTAL CLIENTE' ,[comp17]);

               IMPRESSORA.impf(linha,73, STR ,[comp17]);

               INCLINHA;

               IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

               IMP := 'N' ;
          END
          ELSE BEGIN
               IF (VERRECEBER.EOF)
               THEN BEGIN
                    INCLINHA;

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

                    INCLINHA;

                    IMPRESSORA.impf(linha,55, ' TOTAL CLIENTE' ,[comp17]);

                    IMPRESSORA.impf(linha,73, STR ,[comp17]);

                    INCLINHA;

                    IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;
               END;
          END;
     END;

     INCLINHA;

     STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

     WHILE LENGTH(STR) < 12 DO
     BEGIN
          STR := ' ' + STR ;
     END;

     IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

     INCLINHA;

     IMPRESSORA.impf(linha,56, ' TOTAL GERAL' ,[comp17]);

     IMPRESSORA.impf(linha,73, STR ,[comp17]);

     IMPRESSORA.FECHAR;
end;

procedure TDmFinanceiro.IMPRIMEPAGAR;
VAR
   IMP, STR         : STRING;
   JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD           : INTEGER;
begin
     PAGINA     := 1;
     LINHA      := 5;

     IMPRESSORA.OnNewPage := cabecalhoPAGAR ;
     IMPRESSORA.ABRIR;

     TOTAL      := 0;//TOTAL DO CLIENTE
     TOTALGERAL := 0;//TOTAL DAS CONTAS
     JUROSGERAL := 0;//VALOR DOS JUROS

     IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

     WHILE NOT VERPAGAR.Eof DO
     BEGIN
          INCLINHA;

          IF IMP = 'N'
          THEN BEGIN
               IMPRESSORA.impf(LINHA,01,INTTOSTR(VERPAGARPESSOA_FJ.Value) + '-'+ VERPAGARNOME.Value , [comp17]);
               IMPRESSORA.impf(LINHA,50,VERPAGARCPF_CGC.Value , [comp17]);

               IMP := 'S' ;

               //ULTIMO CODIGO IMPRESSO
               ULTCOD := VERPAGARPESSOA_FJ.VALUE ;

               TOTAL := 0;//TOTAL DO CLIENTE

               INCLINHA ;
          END;
          //BLOCO DE IMPRESSAO DO CONTAS A PAGAR
          //lancamento
          IMPRESSORA.impf(linha,01,DATETOSTR(VerPAGARDT_LANCTO.Value ),[comp17]);

          //Documento
          IMPRESSORA.impf(linha,08, VerPAGARDOCTO.Value ,[comp17]);

          //VENCIMENTO
          IMPRESSORA.impf(linha,22, DATETOSTR(VerPAGARDT_VENCTO.Value ) ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00',VERPAGARTOTAL.Value );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha,50, STR ,[comp17]);

          JUROS := CalculaJuros(VerPAGARDT_VENCTO.VALUE, DmApp.Data_Servidor, VERPAGARTOTAL.VALUE,0);

          STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha,62, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', JUROS + VERPAGARTOTAL.Value);
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha,73, STR ,[comp17]);

          TOTAL      := TOTAL + VERPAGARTOTAL.Value + JUROS;
          TOTALGERAL := TOTALGERAL + VERPAGARTOTAL.Value + JUROS ;
          JUROSGERAL := JUROSGERAL + JUROS ;

          VERPAGAR.NEXT ;

          IF (( ULTCOD <> VERPAGARPESSOA_FJ.VALUE )AND(NOT VERPAGAR.EOF))
          THEN BEGIN
               INCLINHA;

               STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

               INCLINHA;

               IMPRESSORA.impf(linha,55, ' TOTAL CLIENTE' ,[comp17]);

               IMPRESSORA.impf(linha,73, STR ,[comp17]);

               INCLINHA;

               IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

               IMP := 'N' ;
          END
          ELSE BEGIN
               IF (VERPAGAR.EOF)
               THEN BEGIN
                    INCLINHA;

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

                    INCLINHA;

                    IMPRESSORA.impf(linha,55, ' TOTAL CLIENTE' ,[comp17]);

                    IMPRESSORA.impf(linha,73, STR ,[comp17]);

                    INCLINHA;

                    IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;
               END;
          END;
     END;

     INCLINHA;

     STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

     WHILE LENGTH(STR) < 12 DO
     BEGIN
          STR := ' ' + STR ;
     END;

     IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

     INCLINHA;

     IMPRESSORA.impf(linha,56, ' TOTAL GERAL' ,[comp17]);

     IMPRESSORA.impf(linha,73, STR ,[comp17]);

     IMPRESSORA.FECHAR;
end;

procedure TDmFinanceiro.IMPRIMEPAGARCCU;
VAR
   IMP, STR         : STRING;
   JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD           : INTEGER;
begin
     PAGINA     := 1;
     LINHA      := 5;

     IMPRESSORA.TitulodoRelatorio := 'CONTAS A PAGAR POR CENTRO' ;
     IMPRESSORA.OnNewPage := CabecalhoPagarCentro ;
     IMPRESSORA.ABRIR;

     TOTAL      := 0;//TOTAL DO CLIENTE
     TOTALGERAL := 0;//TOTAL DAS CONTAS
     JUROSGERAL := 0;//VALOR DOS JUROS

     IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CENTRO DE CUSTO

     WHILE NOT VERPAGAR.Eof DO
     BEGIN
          INCLINHA;

          IF IMP = 'N'
          THEN BEGIN
               IMPRESSORA.impf(LINHA,01,INTTOSTR(VERPAGARCENTRO_CUSTO.Value) + '-'+ VERPAGARNOME_CENTRO.Value , [comp17]);

               IMP := 'S' ;

               //ULTIMO CODIGO IMPRESSO
               ULTCOD := VERPAGARCENTRO_CUSTO.VALUE ;

               TOTAL := 0;//TOTAL DO CENTRO-

               INCLINHA ;
          END;
          //BLOCO DE IMPRESSAO DO CONTAS A PAGAR
          //NOME
          IMPRESSORA.impf(linha,01, COPy(VerPAGARNOME.Value,1,20) ,[comp17]);

          //lancamento
          IMPRESSORA.impf(linha,20,DATETOSTR(VerPAGARDT_LANCTO.Value ),[comp17]);

          //Documento
          IMPRESSORA.impf(linha,28, VerPAGARDOCTO.Value ,[comp17]);

          //VENCIMENTO
          IMPRESSORA.impf(linha,38, DATETOSTR(VerPAGARDT_VENCTO.Value ) ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00',VERPAGARTOTAL.Value );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha, 54, STR ,[comp17]);

//          JUROS := CalculaJuros(VerPAGARDT_VENCTO.VALUE, DmApp.Data_Servidor, VERPAGARTOTAL.VALUE,0);
          JUROS := 0;

          STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha,62, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', JUROS + VERPAGARTOTAL.Value);
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha,73, STR ,[comp17]);

          TOTAL      := TOTAL + VERPAGARTOTAL.Value + JUROS;
          TOTALGERAL := TOTALGERAL + VERPAGARTOTAL.Value + JUROS ;
          JUROSGERAL := JUROSGERAL + JUROS ;

          VERPAGAR.NEXT ;

          IF (( ULTCOD <> VERPAGARCENTRO_CUSTO.VALUE )AND(NOT VERPAGAR.EOF))
          THEN BEGIN
               INCLINHA;

               STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

               INCLINHA;

               IMPRESSORA.impf(linha,55, ' TOTAL CENTRO' ,[comp17]);

               IMPRESSORA.impf(linha,73, STR ,[comp17]);

               INCLINHA;

               IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

               IMP := 'N' ;
          END
          ELSE BEGIN
               IF (VERPAGAR.EOF)
               THEN BEGIN
                    INCLINHA;

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

                    INCLINHA;

                    IMPRESSORA.impf(linha,55, ' TOTAL CENTRO' ,[comp17]);

                    IMPRESSORA.impf(linha,73, STR ,[comp17]);

                    INCLINHA;

                    IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;
               END;
          END;
     END;

     INCLINHA;

     STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

     WHILE LENGTH(STR) < 12 DO
     BEGIN
          STR := ' ' + STR ;
     END;

     IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

     INCLINHA;

     IMPRESSORA.impf(linha,56, ' TOTAL GERAL' ,[comp17]);

     IMPRESSORA.impf(linha,73, STR ,[comp17]);

     IMPRESSORA.FECHAR;
end;

procedure TDmFinanceiro.IMPRIMERECIBO
  ( Codigo: Integer; Favorecido: String; Dt_Vencto: TDateTime; Docto: String;
    Dt_Lancto: TDateTime; Valor: Real; Historico: String;
    Cpf_Cnpj: String; Pessoa_Fj:Integer; Empresa: String );
VAR
   NUMRECIBO, AUX, MESEXT, STR, STR1, STR2, STR3  : STRING;
   Int_Retorno, DIA, MES, ANO:WORD ;
begin
     FAVORECIDO := FAVORECIDO + ' - ' + INTTOSTR(PESSOA_FJ);

     IF DMAPP.FOLHA_RECIBO = '36'
     THEN BEGIN
           BEGIN
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

               IMPRESSORA.impf(15, 01,'CGC/CPF ' + CPF_CNPJ , [comp17]);

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

               If trim(Empresa) <> ''
               then begin
                    IMPRESSORA.impf(LINHA,01,'----------------------------------------' ,[comp17]);

                    LINHA := LINHA + 1;

                    Str := Empresa ;

                    IMPRESSORA.impf(LINHA,01, Str,[comp17]);
               end
               else begin

                    IMPRESSORA.impf(LINHA,01,'----------------------------------------' ,[comp17]);

                    LINHA := LINHA + 1;

                    Str := dmapp.nome ;

                    IMPRESSORA.impf(LINHA,01, Str,[comp17]);

                    LINHA := LINHA + 1;

                    IMPRESSORA.impf(LINHA,01, MascaraCnpj(dmapp.cnpj),[comp17]);
               end;

               IMPRESSORA.FECHAR;

               IMPRESSORA.OnBeforeNewPage := ImpressoraBeforeNewPage ;

               IMPRESSORA.TamanhoQteLinhas := 66 ;
          END;
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

          IMPRESSORA.OpcoesPreview.Preview := TRUE ;

          IMPRESSORA.ABRIR;

          IF TRIM(EMPRESA) = ''
          THEN BEGIN
               IMPRESSORA.impf(03,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

               IMPRESSORA.impf(04,01,DmApp.Nome ,[COMP12, NEGRITO]);

               IMPRESSORA.impf(05,01,DmApp.ENDER + ', BAIRRO = ' + DMAPP.BAIRRO,[COMP17, NEGRITO]);

               IMPRESSORA.impf(06,01,DmApp.CIDADE,[COMP17, NEGRITO]);

               IMPRESSORA.impf(07,01,'FONE ' + DmApp.FONE + ' FAX ' + DMAPP.FAX,[COMP17, NEGRITO]);

               STR :=  INTTOSTR(CODIGO) ;
               WHILE LENGTH(STR) < 6 DO
               BEGIN
                    STR := '0' + STR ;
               END;

               IMPRESSORA.impf(08, 01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
          END
          ELSE BEGIN
               IMPRESSORA.impf(03,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

               IMPRESSORA.impf(06,30,'R E C I B O',[EXPANDIDO, NEGRITO]);

               IMPRESSORA.impf(08, 01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
          END;

          IMPRESSORA.impf(10, 01,'RECIBO N => ' + STR, [comp12, NEGRITO]);

          IMPRESSORA.impf(12, 01,'RECIBI(EMOS) DE  ' + FAVORECIDO + ', CGC/CPF ' + CPF_CNPJ , [comp17]);

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

          If trim(Empresa) <> ''
          then begin
               Str := Empresa ;

               While Length(Str) < 42
               do begin
                  Str := ' ' + Str + ' ' ;
               end;

               IMPRESSORA.impf(21,30, Str,[comp17]);
          end
          else begin
               Str := dmapp.nome ;

               While Length(Str) < 42
               do begin
                  Str := ' ' + Str + ' ' ;
               end;

               IMPRESSORA.impf(21,30, Str,[comp17]);
               IMPRESSORA.impf(22,38, MascaraCnpj(dmapp.cnpj),[comp17]);
          end;

          IMPRESSORA.impf(24,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

          IMPRESSORA.FECHAR;

          IMPRESSORA.OnBeforeNewPage := ImpressoraBeforeNewPage ;

          IMPRESSORA.TamanhoQteLinhas := 66 ;

          IMPRESSORA.NumerodeCopias := 1 ;
     END;
end;




procedure TDmFinanceiro.IMPRIMEBAIXARECEBER;
VAR
   IMP, STR         : STRING;
   DESCONTOS, DESCONTOGERAL, JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD           : INTEGER;
begin
     PAGINA     := 1;
     LINHA      := 5;

     IMPRESSORA.OnNewPage := cabecalhorecebidas ;
     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL         := 0;//TOTAL DO CLIENTE
          TOTALGERAL    := 0;//TOTAL DAS CONTAS
          JUROSGERAL    := 0;//VALOR DOS JUROS
          JUROS         := 0;//VALOR DOS JUROS POR CLIENTE
          DESCONTOS     := 0;//DESCONTO POR CLIENTE
          DESCONTOGERAL := 0;//DESCONTO GERAL

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          WHILE NOT BAIXAS_RECEBER.Eof DO
          BEGIN
               INCLINHA;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORA.impf(LINHA,01,INTTOSTR(BAIXAS_RECEBERPESSOA_FJ.Value) + '-'+ BAIXAS_RECEBERNOME.Value , [comp17]);
                    IMPRESSORA.impf(LINHA,50,BAIXAS_RECEBERCPF_CGC.Value , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := BAIXAS_RECEBERPESSOA_FJ.VALUE ;

                    TOTAL     := 0;//TOTAL DO CLIENTE
                    JUROS     := 0;
                    DESCONTOS := 0;

                    INCLINHA ;
               END;
               //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
               //lancamento
               IMPRESSORA.impf(linha,01,DATETOSTR(BAIXAS_RECEBERDT_LANCTO.Value ),[comp17]);

               //Documento
               IMPRESSORA.impf(linha,08, BAIXAS_RECEBERDOCTO.Value ,[comp17]);

               //VENCIMENTO
               IMPRESSORA.impf(linha,22, DATETOSTR(BAIXAS_RECEBERDT_VENCTO.Value ) ,[comp17]);

               //PAGAMENTO
               IMPRESSORA.impf(linha,32, DATETOSTR(BAIXAS_RECEBERDT_BAIXA.Value ) ,[comp17]);

               //DESCONTO
               STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_ReceberDESCONTOS.Value );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               IMPRESSORA.impf(linha,50, STR ,[comp17]);

               DESCONTOS := DESCONTOS + BAIXAS_RECEBERDESCONTOS.Value ;

               //JUROS COBRADOS
               JUROS := JUROS + Baixas_ReceberJUROS.VALUE ;

               STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_ReceberJUROS.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //JUROS
               IMPRESSORA.impf(linha,62, STR ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', BAIXAS_RECEBERVLR_BAIXA.Value);
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORA.impf(linha,73, STR ,[comp17]);

               TOTAL         := TOTAL         + BAIXAS_RECEBERVLR_BAIXA.Value  ;
               TOTALGERAL    := TOTALGERAL    + BAIXAS_RECEBERVLR_BAIXA.Value  ;
               JUROSGERAL    := JUROSGERAL    + Baixas_ReceberJUROS.VALUE      ;
               DESCONTOGERAL := DESCONTOGERAL + BAIXAS_RECEBERDESCONTOS.Value  ;

               BAIXAS_RECEBER.NEXT ;

               IF (( ULTCOD <> BAIXAS_RECEBERPESSOA_FJ.VALUE )AND(NOT BAIXAS_RECEBER.EOF))
               THEN BEGIN
                    INCLINHA;

                    IMPRESSORA.impf(linha,32, ' TOTAL CLIENTE' ,[comp17]);

                    IMPRESSORA.impf(linha,50, '-------------' ,[comp17]);
                    IMPRESSORA.impf(linha,62, '-------------' ,[comp17]);
                    IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

                    INCLINHA;

                    //DESCONTOS
                    STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOS );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha, 50, STR ,[comp17]);

                    //JUROS
                    STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha, 62, STR ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha,73, STR ,[comp17]);

                    INCLINHA;

                    IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;

                    JUROS     := 0;
                    DESCONTOS := 0;
                    TOTAL     := 0;
               END
               ELSE BEGIN
                    IF (BAIXAS_RECEBER.EOF)
                    THEN BEGIN
                         INCLINHA;

                         IMPRESSORA.impf(linha,32, ' TOTAL CLIENTE' ,[comp17]);

                         IMPRESSORA.impf(linha,50, '-------------' ,[comp17]);
                         IMPRESSORA.impf(linha,62, '-------------' ,[comp17]);
                         IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

                         INCLINHA;

                         //DESCONTOS
                         STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOS );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(linha, 50, STR ,[comp17]);

                         //JUROS
                         STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(linha, 62, STR ,[comp17]);

                         //TOTAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(linha,73, STR ,[comp17]);

                         INCLINHA;

                         IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                         IMP := 'N' ;
                    END;
               END;
          END;

          INCLINHA;

          IMPRESSORA.impf(linha,32, ' TOTAL GERAL' ,[comp17]);

          IMPRESSORA.impf(linha,50, '-------------' ,[comp17]);
          IMPRESSORA.impf(linha,62, '-------------' ,[comp17]);
          IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

          INCLINHA;


          //DESCONTOS
          STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(linha, 50, STR ,[comp17]);

          //JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(linha, 62, STR ,[comp17]);

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(linha, 73, STR ,[comp17]);

          IMPRESSORA.FECHAR;
     END;
end;

procedure TDmFinanceiro.IMPRIMEBAIXAPAGAR;
VAR
   IMP, STR         : STRING;
   DESCONTOS, DESCONTOGERAL, JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD           : INTEGER;
begin
     PAGINA     := 1;
     LINHA      := 5;

     IMPRESSORA.OnNewPage := cabecalhoPagas ;
     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL         := 0;//TOTAL DO CLIENTE
          TOTALGERAL    := 0;//TOTAL DAS CONTAS
          JUROSGERAL    := 0;//VALOR DOS JUROS
          JUROS         := 0;//VALOR DOS JUROS POR CLIENTE
          DESCONTOS     := 0;//DESCONTO POR CLIENTE
          DESCONTOGERAL := 0;//DESCONTO GERAL

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          WHILE NOT BAIXAS_PAGAR.Eof DO
          BEGIN
               INCLINHA;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORA.impf(LINHA,01,INTTOSTR(BAIXAS_PAGARPESSOA_FJ.Value) + '-'+ BAIXAS_PAGARNOME.Value , [comp17]);

                    IF LENGTH(BAIXAS_PAGARCPF_CGC.Value) = 14
                    THEN BEGIN
                         IMPRESSORA.impf(LINHA,50, MASCARACPF(BAIXAS_PAGARCPF_CGC.Value) , [comp17]);
                    END
                    ELSE BEGIN
                         IMPRESSORA.impf(LINHA,50, MASCARACNPJ(BAIXAS_PAGARCPF_CGC.Value) , [comp17]);
                    END;

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := BAIXAS_PAGARPESSOA_FJ.VALUE ;

                    TOTAL     := 0;//TOTAL DO CLIENTE
                    JUROS     := 0;
                    DESCONTOS := 0;

                    INCLINHA ;
               END;

               //BLOCO DE IMPRESSAO DO CONTAS A PAGAR

               //lancamento
               IMPRESSORA.impf(linha,01, DATETOSTR(BAIXAS_PAGARDT_LANCTO.Value ),[comp17]);

               //Documento
               IMPRESSORA.impf(linha,08, copy(BAIXAS_PAGARDOCTO.Value,1,15) ,[comp17]);

               //VENCIMENTO
               IMPRESSORA.impf(linha, 18, DATETOSTR(BAIXAS_PAGARDT_VENCTO.Value ) ,[comp17]);

               //PAGAMENTO
               IMPRESSORA.impf(linha, 25, DATETOSTR(BAIXAS_PAGARDT_BAIXA.Value ) ,[comp17]);

               //HISTORICO
               IMPRESSORA.impf(linha, 33, COPY(BAIXAS_PAGARHISTORICO_BX.Value,1,39),[comp17]);

               //DESCONTO
               STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_PAGARDESCONTOS.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               IMPRESSORA.impf(linha, 57, STR ,[comp17]);

               DESCONTOS := DESCONTOS + BAIXAS_PAGARDESCONTOS.Value ;

               //JUROS COBRADOS
               JUROS := JUROS + Baixas_PAGARJUROS.VALUE ;

               STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_PAGARJUROS.VALUE );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //JUROS
               IMPRESSORA.impf(linha, 65, STR ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', BAIXAS_PAGARVLR_BAIXA.Value);
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORA.impf(linha, 74, STR ,[comp17]);

               TOTAL         := TOTAL         + BAIXAS_PAGARVLR_BAIXA.Value  ;
               TOTALGERAL    := TOTALGERAL    + BAIXAS_PAGARVLR_BAIXA.Value  ;
               JUROSGERAL    := JUROSGERAL    + Baixas_PAGARJUROS.VALUE      ;
               DESCONTOGERAL := DESCONTOGERAL + BAIXAS_PAGARDESCONTOS.Value  ;

               BAIXAS_PAGAR.NEXT ;

               IF (( ULTCOD <> BAIXAS_PAGARPESSOA_FJ.VALUE )AND(NOT BAIXAS_PAGAR.EOF))
               THEN BEGIN
                    INCLINHA;

                    IMPRESSORA.impf(linha,33, ' TOTAL FORNECEDOR' ,[comp17]);

                    IMPRESSORA.impf(linha,57, '----------' ,[comp17]);
                    IMPRESSORA.impf(linha,65, '----------' ,[comp17]);
                    IMPRESSORA.impf(linha,74, '----------' ,[comp17]);

                    INCLINHA;

                    //DESCONTOS
                    STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOS );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha, 57, STR ,[comp17]);

                    //JUROS
                    STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha, 65, STR ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha,74, STR ,[comp17]);

                    INCLINHA;

                    IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;

                    JUROS     := 0;
                    DESCONTOS := 0;
                    TOTAL     := 0;
               END
               ELSE BEGIN
                    IF (BAIXAS_PAGAR.EOF)
                    THEN BEGIN
                         INCLINHA;

                         IMPRESSORA.impf(linha,33, ' TOTAL FORNECEDOR' ,[comp17]);
                         IMPRESSORA.impf(linha,57, '----------' ,[comp17]);
                         IMPRESSORA.impf(linha,65, '----------' ,[comp17]);
                         IMPRESSORA.impf(linha,74, '----------' ,[comp17]);

                         INCLINHA;

                         //DESCONTOS
                         STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOS );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(linha, 57, STR ,[comp17]);

                         //JUROS
                         STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(linha, 65, STR ,[comp17]);

                         //TOTAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(linha,74, STR ,[comp17]);

                         INCLINHA;

                         IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                         IMP := 'N' ;
                    END;
               END;
          END;

          INCLINHA;

          IMPRESSORA.impf(linha,33, ' TOTAL GERAL' ,[comp17]);

          IMPRESSORA.impf(linha,57, '----------' ,[comp17]);
          IMPRESSORA.impf(linha,65, '----------' ,[comp17]);
          IMPRESSORA.impf(linha,74, '----------' ,[comp17]);

          INCLINHA;


          //DESCONTOS
          STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(linha, 57, STR ,[comp17]);

          //JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(linha, 65, STR ,[comp17]);

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(linha, 74, STR ,[comp17]);

          IMPRESSORA.FECHAR;
     END;
end;

procedure TDmFinanceiro.IMPRIMEBAIXACENTRO;
VAR
   IMP, STR         : STRING;
   DESCONTOS, DESCONTOGERAL, JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD           : INTEGER;
begin
     PAGINA     := 1;
     LINHA      := 5;

     IMPRESSORA.OnNewPage := cabecalhoCentro ;
     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL         := 0;//TOTAL DO CLIENTE
          TOTALGERAL    := 0;//TOTAL DAS CONTAS
          JUROSGERAL    := 0;//VALOR DOS JUROS
          JUROS         := 0;//VALOR DOS JUROS POR CLIENTE
          DESCONTOS     := 0;//DESCONTO POR CLIENTE
          DESCONTOGERAL := 0;//DESCONTO GERAL

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          WHILE NOT BAIXAS_PAGAR.Eof DO
          BEGIN
               INCLINHA;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORA.impf(LINHA,01,INTTOSTR(BAIXAS_PAGARCENTRO_CUSTO.Value) + '-'+ BAIXAS_PAGARNOME_CENTRO.Value , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := BAIXAS_PAGARCENTRO_CUSTO.VALUE ;

                    TOTAL     := 0;//TOTAL DO CLIENTE
                    JUROS     := 0;
                    DESCONTOS := 0;

                    INCLINHA ;
               END;

               //BLOCO DE IMPRESSAO DO CONTAS A PAGAR

               //lancamento
               IMPRESSORA.impf(linha, 01, COPY(Baixas_PagarNOME.VALUE, 1, 20),[comp17]);

               //lancamento
               IMPRESSORA.impf(linha, 20, DATETOSTR(BAIXAS_PAGARDT_LANCTO.Value ),[comp17]);

               //Documento
               IMPRESSORA.impf(linha, 28, BAIXAS_PAGARDOCTO.Value ,[comp17]);

               //VENCIMENTO
               IMPRESSORA.impf(linha, 38, DATETOSTR(BAIXAS_PAGARDT_VENCTO.Value ) ,[comp17]);

               //PAGAMENTO
               IMPRESSORA.impf(linha, 46, DATETOSTR(BAIXAS_PAGARDT_BAIXA.Value ) ,[comp17]);

               //DESCONTO
               STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_PAGARDESCONTOS.Value );
               WHILE LENGTH(STR) < 8 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               IMPRESSORA.impf(linha, 54, STR ,[comp17]);

               DESCONTOS := DESCONTOS + BAIXAS_PAGARDESCONTOS.Value ;

               //JUROS COBRADOS
               JUROS := JUROS + Baixas_PAGARJUROS.VALUE ;

               STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_PAGARJUROS.VALUE );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //JUROS
               IMPRESSORA.impf(linha, 62, STR ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', BAIXAS_PAGARVLR_BAIXA.Value);
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORA.impf(linha, 73, STR ,[comp17]);

               TOTAL         := TOTAL         + BAIXAS_PAGARVLR_BAIXA.Value  ;
               TOTALGERAL    := TOTALGERAL    + BAIXAS_PAGARVLR_BAIXA.Value  ;
               JUROSGERAL    := JUROSGERAL    + Baixas_PAGARJUROS.VALUE      ;
               DESCONTOGERAL := DESCONTOGERAL + BAIXAS_PAGARDESCONTOS.Value  ;

               BAIXAS_PAGAR.NEXT ;

               IF (( ULTCOD <> BAIXAS_PAGARCENTRO_CUSTO.VALUE )AND(NOT BAIXAS_PAGAR.EOF))
               THEN BEGIN
                    INCLINHA;

                    IMPRESSORA.impf(linha,32, ' TOTAL CENTRO' ,[comp17]);

                    IMPRESSORA.impf(linha,54, '-------------' ,[comp17]);
                    IMPRESSORA.impf(linha,62, '-------------' ,[comp17]);
                    IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

                    INCLINHA;

                    //DESCONTOS
                    STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOS );

                    WHILE LENGTH(STR) < 8 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha, 54, STR ,[comp17]);

                    //JUROS
                    STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha, 62, STR ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha,73, STR ,[comp17]);

                    INCLINHA;

                    IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;

                    JUROS     := 0;
                    DESCONTOS := 0;
                    TOTAL     := 0;
               END
               ELSE BEGIN
                    IF (BAIXAS_PAGAR.EOF)
                    THEN BEGIN
                         INCLINHA;

                         IMPRESSORA.impf(linha,32, ' TOTAL CENTRO' ,[comp17]);

                         IMPRESSORA.impf(linha,54, '-------------' ,[comp17]);
                         IMPRESSORA.impf(linha,62, '-------------' ,[comp17]);
                         IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

                         INCLINHA;

                         //DESCONTOS
                         STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOS );

                         WHILE LENGTH(STR) < 8 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(linha, 54, STR ,[comp17]);

                         //JUROS
                         STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(linha, 62, STR ,[comp17]);

                         //TOTAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(linha,73, STR ,[comp17]);

                         INCLINHA;

                         IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                         IMP := 'N' ;
                    END;
               END;
          END;

          INCLINHA;

          IMPRESSORA.impf(linha,32, ' TOTAL GERAL' ,[comp17]);

          IMPRESSORA.impf(linha,54, '-------------' ,[comp17]);
          IMPRESSORA.impf(linha,62, '-------------' ,[comp17]);
          IMPRESSORA.impf(linha,73, '-------------' ,[comp17]);

          INCLINHA;


          //DESCONTOS
          STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOGERAL );

          WHILE LENGTH(STR) < 8 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(linha, 54, STR ,[comp17]);

          //JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(linha, 62, STR ,[comp17]);

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(linha, 73, STR ,[comp17]);

          IMPRESSORA.FECHAR;
     END;
end;


procedure TDmFinanceiro.Contas_PAGARCalcFields(DataSet: TDataSet);
begin
  Contas_PAGARTotal.Value := Contas_PAGARValor.Value - Contas_PAGARVlr_Parcial.Value - Contas_PagarDESCONTOS.value + Contas_PagarJUROS_PAG.value ;
  Contas_Pagar_Total_Geral_IDX.value := Contas_PAGARValor.Value - Contas_PAGARVlr_Parcial.Value - Contas_PagarDESCONTOS.value + Contas_PagarJUROS_PAG.value ;
end;

procedure TDmFinanceiro.Contas_PAGARNewRecord(DataSet: TDataSet);
begin
     Contas_PAGARANO.Value         := 0    ;
     Contas_PAGARVALOR.Value       := 0    ;
     Contas_PAGARORIGEM.Value      := 'MAN';
     Contas_PAGARSELECIONADO.Value := 'N'  ;
     Contas_PAGARVLR_PARCIAL.VALUE := 0    ;
     Contas_PAGARJUROS_PAG.VALUE   := 0    ;
     Contas_PAGARDESCONTOS.VALUE   := 0    ;
     Contas_PAGARBOLETO.Value      := 'N'  ;
     Contas_PagarCONFERIDA.Value   := 'N'  ;

     ESTADO_CTB := 'I' ;

     If dmapp.UsuarioCaixa > 0
     then begin
          Contas_PagarFLUXO_CAIXA.VALUE := dmApp.DataCaixa ;
          Contas_PAGARDT_EMISSAO.Value  := DmApp.DataCaixa ;
          Contas_PAGARDT_LANCTO.Value   := DmApp.DataCaixa ;
     end
     else begin
          Contas_PagarFLUXO_CAIXA.VALUE := DmApp.Data_Servidor ;
          Contas_PAGARDT_EMISSAO.Value  := DmApp.Data_Servidor ;
          Contas_PAGARDT_LANCTO.Value   := DmApp.Data_Servidor ;
     end;
end;

procedure TDmFinanceiro.VerPAGARCalcFields(DataSet: TDataSet);
begin
  VerPAGARTotal.Value := VerPAGARValor.Value - (VerPAGARVlr_Parcial.Value + VerPAGARDescontos.VALUE);
end;

procedure TDmFinanceiro.Baixas_PAGARCalcFields(DataSet: TDataSet);
begin
  Baixas_PAGARTotal.Value := Baixas_PAGARVLR_BAIXA.VALUE;
end;

procedure TDmFinanceiro.VerFaturasCalcFields(DataSet: TDataSet);
Var
   Situacao: String;
begin
     VerFaturaSTotal.Value := VerFaturaSVALOR.value + VerFaturaSJUROS.value - VerFaturaSDESCONTO.Value ;

     If UPPERCASE(VerFaturasTIPO.Value) = 'DESCONTADA'
     THEN BEGIN
          Situacao := 'DESCONTADA' ;
     END;

     If UPPERCASE(VerFaturasTIPO.Value) = 'CARTEIRA'
     THEN BEGIN
          Situacao := 'CARTEIRA';

          IF VerFaturasENVIADA.VALUE = 'S'
          THEN BEGIN
               Situacao := Situacao + ' ENVIADA' ;
          END;

          IF TRIM(VerFaturasDUPLICATA.VALUE)<> ''
          THEN BEGIN
               Situacao := VerFaturasDUPLICATA.VALUE ;
          END;
     END;

     If UPPERCASE(VerFaturasTIPO.Value) = 'PROTOCOLO'
     THEN BEGIN
          Situacao := 'PROTOCOLO';

          IF TRIM(VerFaturasOBS.VALUE) <> ''
          THEN BEGIN
               SITUACAO := SITUACAO + ' ' + TRIM(VerFaturasOBS.VALUE);
          END;
     END;

     VerFaturasSituacao.Value := Situacao ;
end;

procedure TDmFinanceiro.FaturasCalcFields(DataSet: TDataSet);
begin
     FaturasTotal.Value := FaturasVALOR.value + FaturasJUROS.value - FaturasDESCONTO.Value ;
end;

procedure TDmFinanceiro.Contas_ReceberPESSOA_FJValidate(Sender: TField);
begin
     Valida_Cliente.Close ;

     Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Cliente.Prepare ;
     Valida_Cliente.Open ;

     If Valida_ClientePESSOA_FJ.isNull
     then Begin
          Showmessage ('Cliente Inexistente!');
          Abort;
     end;

     If Not Valida_ClienteLIMITE_TEMPO.isNull
     then Begin
          Ven_Limite_Tempo  := Valida_ClienteLIMITE_TEMPO.Value ;
     end
     else begin
          Ven_Limite_Tempo  := 0 ;
     end;

     If Not Valida_ClienteLIMITE_CREDITO.isNull
     then Begin
          Ven_Limite_Credito  := Valida_ClienteLIMITE_CREDITO.Value ;
     end
     else begin
          ven_Limite_Credito  := 0 ;
     end;

     If Not Valida_ClienteCLASSIF.isNull
     Then Begin
          Classificacao  := Valida_ClienteCLASSIF.Value ;
     end
     else begin
          Classificacao  := 'B' ;
     end;

     If Not Valida_ClienteBLOQUEADO.isNull
     then Begin
          Bloqueado  := Valida_ClienteBLOQUEADO.Value ;
     end
     else begin
          Bloqueado  := 'N' ;
     end;

     If Not Valida_ClienteOBS.isNull
     then Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.DSource.DataSet := Valida_Cliente ;
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
     end;

     If Not Valida_ClienteCLASSIFICACAO.isNull
     then Begin
          Clas := Valida_ClienteCLASSIFICACAO.Value ;

          //Confere se a Classificacao Pede Senha
          Geral.Close ;
          Geral.Sql.Clear ;
          Geral.Params.Clear ;

          Geral.Params.CreateParam ( FtString , 'E', PtInput );
          Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

          Geral.Sql.Add (' Select Nome, Dig_Senha from Glo_Classificacao Where Codigo = :C and CNPJ = :E ');

          Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
          Geral.ParamByName ('C').AsInteger := Clas         ;

          Geral.Prepare ;
          Geral.Open ;

          If Not Geral.Fields[0].isNull
          then Begin
               NomeClas := Geral.Fields[0].Value ;
          end
          Else
              NomeClas := 'Não Informada';

          If Not Geral.Fields[1].isNull
          then Begin
               Dig_Senha := Geral.Fields[1].Value ;
          end
          else begin
               Dig_Senha := 'N' ;
          end;

          Geral.Close ;

          Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

          FrmMensagemClassificacao.MEMO.Lines.Add (NomeClas);

          If Dig_Senha = 'S'
          Then Begin
               FrmMensagemClassificacao.EdSenha.Visible := true ;
               FrmMensagemClassificacao.Label6.Visible  := true ;
               //Se o Nível ou a Classificacao exigir senha e não foi digitada
               if FrmMensagemClassificacao.Showmodal = MrCancel
               then Begin
                    MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
                    Abort ;
               end;
          end
          else begin
               FrmMensagemClassificacao.EdSenha.Visible := false ;
               FrmMensagemClassificacao.Label6.Visible  := false ;
               FrmMensagemClassificacao.Showmodal ;
          end;

          FrmMensagemClassificacao.Free ;
          FrmMensagemClassificacao := Nil;
     end;

     If Not Valida_ClienteNOME.isNull
     then Begin
          Contas_ReceberNOME.Value := Valida_ClienteNOME.Value ;
     end ;
end;

procedure TDmFinanceiro.Contas_PagarPESSOA_FJValidate(Sender: TField);
begin
     Valida_Fornecedor.Close ;

     Valida_Fornecedor.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Fornecedor.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Fornecedor.Prepare ;
     Valida_Fornecedor.Open ;

     If Valida_FornecedorPESSOA_FJ.isNull
     then Begin
          Showmessage ('Fornecedor Inexistente!');
          Abort;
     end;

     If Not Valida_FornecedorNOME.isNull
     then Begin
          Contas_PagarNOME.Value := Valida_FornecedorNOME.Value ;

          Contas_PagarCONTABILIDADE.VALUE := Valida_FornecedorCONTABILIDADE.VALUE ;
     end;
end;

procedure TDmFinanceiro.Contas_ReceberBeforeEdit(DataSet: TDataSet);
begin
     If Contas_ReceberFATURA.Value > 0
     then begin
          MessageDlg ('Esta Nota Esta Faturada, por Tanto Não Pode Ser Alterada!', MtError, [MbOk],0);
          Abort ;
     end;
end;

Procedure TDmFinanceiro.ImprimeDuplicata(
Vencimento: TDateTime;
NumDuplicata : String;
DATA: TDateTime;
Documento : String   ;
VALOR     : REAL     ;
RAZAO     : String   ;
DOCUMENTOS: String   ;
ENDERECO  : String   ;
CEP       : String   ;
NOMEBAIRRO: String   ;
NOMECIDADE: String   ;
UF        : String   ;
LISTA     : String   ;
VENDA     : Integer  ;
PESSOA_FJ : Integer
 ) ;
var
   Aux, Aux1, Aux2: String ;
   Dia, Mes, Ano: String;
   D, M, A: WORD;
   CPF_CNPJ: String;
Begin
     With DmCadastros2 do
     begin
          DecodeDate(DATA, A, M, D);

          Dia := IntToStr( D );
          Mes := MesExtenso  ( M );
          Ano := IntToStr ( A );

          DmCadastros2.Duplicata.Open ;

          Boleto.TamanhoQteLinhas := DmCadastros2.DuplicataTAMANHOPAGINA.Value ;

          If ( TRIM(DmCadastros2.DuplicataPORTA_IMPRESSORA.Value) <> '' )
          THEN BEGIN
               Boleto.PortaComunicacao  := trim(DmCadastros2.DuplicataPORTA_IMPRESSORA.Value) ;
               boleto.SetPrinterbyPorta ((DmCadastros2.DuplicataPORTA_IMPRESSORA.Value)) ;
          END;

          DmFinanceiro.Boleto.ABRIR  ;

          If Venda > 0
          then
              DmFinanceiro.Boleto.ImpF(DuplicataVENDA_ALT.Value, DuplicataVENDA_DST.VALUE , 'CTRL ' + IntToStr(Venda), [comp17, NEGRITO]);

          //Vencimento
          DmFinanceiro.Boleto.ImpF(DuplicataVENCIMENTO_ALT.Value, DuplicataVENCIMENTO_DST.VALUE , DateToStr(Vencimento), [comp17, NEGRITO]);

          //DATA EXTENSO
          DmFinanceiro.Boleto.ImpF(DuplicataDATA_ALT.Value, DuplicataDATA_DST.VALUE , DIA + ' de ' + MES + ', ' + ANO, [comp17, NEGRITO]);

          //DOCUMENTO
          DmFinanceiro.Boleto.ImpF(DuplicataDOCUMENTO_ALT.Value, DuplicataDOCUMENTO_DST.VALUE , Documento + ' DPL ' + (NumDuplicata), [comp17]);

          //VALOR
          DmFinanceiro.Boleto.ImpVal(DuplicataVALOR_ALT.Value, DuplicataVALOR_DST.VALUE ,'###,###,##0.00', Valor, [comp17,NEGRITO]);

          //DOCUMENTOS LISTADOS NA DUPLICATA
          IF TRIM(COPY ( LISTA, 1,60 )) <> ''
          THEN BEGIN
               DmFinanceiro.Boleto.ImpF(DuplicataINSTRUCOES_ALT.Value , DuplicataINSTRUCOES_DST.VALUE , COPY(LISTA,1,60) , [comp17]);
          END;

          IF TRIM(COPY ( LISTA, 61,120 )) <> ''
          THEN BEGIN
               DmFinanceiro.Boleto.ImpF(DuplicataINSTRUCOES_ALT.Value  + 1, DuplicataINSTRUCOES_DST.VALUE , COPY(LISTA,61,120) , [comp17]);
          END;

          IF TRIM(COPY ( LISTA, 121,180 )) <> ''
          THEN BEGIN
               DmFinanceiro.Boleto.ImpF(DuplicataINSTRUCOES_ALT.Value  + 2, DuplicataINSTRUCOES_DST.VALUE , COPY(LISTA,121,180) , [comp17]);
          END;

          DmFinanceiro.Boleto.ImpF(DuplicataSACADO_ALT.Value, DuplicataSACADO_DST.VALUE , RAZAO + ' - COD = ' + INTTOSTR(PESSOA_FJ) , [comp17, negrito]);
          DmFinanceiro.Boleto.ImpF(DuplicataSACADO_ALT.Value + 2, DuplicataSACADO_DST.VALUE , ENDERECO + '   CEP ' + CEP, [comp17, negrito]);
          DmFinanceiro.Boleto.ImpF(DuplicataSACADO_ALT.Value + 4, DuplicataSACADO_DST.VALUE , NOMECIDADE + '    BAIRRO ' + NOMEBAIRRO + '    UF ' + UF, [comp17, negrito]);
          DmFinanceiro.Boleto.ImpF(DuplicataSACADO_ALT.Value + 6, DuplicataSACADO_DST.VALUE , DOCUMENTOS, [comp17, negrito]);

          DmFinanceiro.EXTENSO.Valor := VALOR ;

          Aux :=  '( ' + DmFinanceiro.Extenso.texto + ' )' ;

          While Length(Aux) <= 120 do
          begin
               Aux := Aux + '*' ;
          end;

          Aux1 := Copy (Aux,1,60);
          Aux2 := Copy (Aux,61,120);

          DmFinanceiro.Boleto.ImpF(DuplicataEXTENSO_ALT.Value, DuplicataEXTENSO_DST.VALUE , AUX1, [comp17, NEGRITO]);
          DmFinanceiro.Boleto.ImpF(DuplicataEXTENSO_ALT.Value+1, DuplicataEXTENSO_DST.VALUE , AUX2, [comp17, NEGRITO]);
     end;

     DmCadastros2.Duplicata.Close ;
     DmFinanceiro.Boleto.OpcoesPreview.Preview := true;
     DmFinanceiro.Boleto.FECHAR ;

end;



procedure TDmFinanceiro.VerPessoa (Codigo: Integer);
begin
     //Dados da Pessoa
     Ver_Pessoa.Close ;

     Ver_Pessoa.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Ver_Pessoa.ParamByName ('COD').AsInteger    := Codigo       ;

     Ver_Pessoa.Prepare ;

     Ver_Pessoa.Open ;
end;

procedure TDmFinanceiro.VerCliente (Codigo: Integer);
begin
     //Dados da Pessoa
     VER_CLIENTE_DADOS.Close ;

     VER_CLIENTE_DADOS.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     VER_CLIENTE_DADOS.ParamByName ('CODIGO').AsInteger := Codigo       ;

     VER_CLIENTE_DADOS.Prepare ;

     VER_CLIENTE_DADOS.Open ;
end;

procedure TDmFinanceiro.ImprimeBoletosPeriodo;
begin
  //
end;




procedure TDmFinanceiro.VerReceberConvenioCalcFields(DataSet: TDataSet);
var
  VlrOriginal: Currency;
  Dias: Integer;
  Data : Tdate;
begin
     VerReceberConvenioTotal.Value := VerReceberConvenioValor.Value - (VerReceberConvenioVlr_Parcial.Value + VerReceberConvenioDescontos.VALUE);

     VlrOriginal := VerReceberConvenioTotal.Value;

     //Verificando se a ultima baixa será utilizado como parâmetro para o calculo de juros
     if (VerReceberConvenioDATA_ULT_BAIXA.value < VerReceberConvenioDT_VENCTO.Value) then
       Data := VerReceberConvenioDT_VENCTO.Value
     else
       Data := VerReceberConvenioData_Ult_Baixa.Value;

     Dias := trunc(DmaPP.DataCaixa - Data);
//     Dias := trunc(DmaPP.Data_Servidor - Data);
     if Dias < 0 then
       Dias := 0;

     VerReceberConvenioATRASO.Value := Dias ;

     //se havemos de cobrar juros

     if ((Dias > 0) and (dias > dmapp.TOLERANCIA_JUROS)) then
     begin
      VerReceberConvenioJuros_Calculadors.Value := arredonda(CALCULAJUROS(Data,DmaPP.DataCaixa,VerReceberConvenioTOTAL.Value,0 ),2)
      // VerReceberConvenioJuros_Calculadors.Value := arredonda(CALCULAJUROS(Data,DmaPP.Data_Servidor,VerReceberConvenioTOTAL.Value,0 ),2)
     end
     else
       VerReceberConvenioJuros_Calculadors.Value := 0;

     //explicação deste codigo esta no oncalcfilelds de VerReceberAdm
     VerReceberConvenioTotal_Nominal.value := arredonda(VerReceberConvenioTotal.value + VerReceberConvenioJuros_Calculadors.Value,2) ;
end;

procedure TDmFinanceiro.verreceberbefor(Sender: TObject);
begin
     IniciaComponentesDm ( Self as TDataModule );
end;

procedure TDmFinanceiro.Ficha_VendaCalcFields(DataSet: TDataSet);
begin
     Ficha_VendaTotal.value := Ficha_VendaQUANTIDADE.Value * ( Ficha_VendaPRC_UNITARIO.Value - Ficha_VendaDESCONTO.Value );
end;


procedure TDmFinanceiro.CabecalhoFatura(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio ,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(DATE),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);

     IMPRESSORA.impf(05,01,'PROTOCOLO..=> ' + VerFaturaCODIGO.Text ,[COMP17, Negrito]);

     IF LENGTH(VerFaturaCPF_CGC.VALUE) <= 11
     THEN BEGIN
          IMPRESSORA.impf(06,01,'CLIENTE....=> ' + VerFaturaPESSOA_FJ.TEXT + '-' + VerFaturaNOME.VALUE + ' / CPF/CNPJ ' + MASCARACPF(VerFaturaCPF_CGC.VALUE)  ,[COMP17, Negrito]);
     END
     ELSE BEGIN
          IMPRESSORA.impf(06,01,'CLIENTE....=> ' + VerFaturaPESSOA_FJ.TEXT + '-' + VerFaturaNOME.VALUE + ' / CPF/CNPJ ' + MASCARACNPJ(VerFaturaCPF_CGC.VALUE)  ,[COMP17, Negrito]);
     END;

     IMPRESSORA.impf(07,01,'EMISSAO....=> ' + VerFaturaDATA.TEXT + ' - COBRADOR ..=> '+ VerFaturaOBS.VALUE  ,[COMP17, Negrito]);

     IMPRESSORA.impf(08,01,'===============================================================================',[Normal]);

     IMPRESSORA.impf(09,01,'DOCUMENTO',[COMP17]);
     IMPRESSORA.impf(09,15,'EMISSAO',[COMP17]);
     IMPRESSORA.impf(09,25,'VENCTO',[COMP17]);
     IMPRESSORA.impf(09,35,'NF',[COMP17]);
     IMPRESSORA.impf(09,42,'CUPOM',[COMP17]);
     IMPRESSORA.impf(09,73,'       TOTAL',[COMP17]);

     inc(pagina);
     linha  := 10;
end;

procedure TDmFinanceiro.CabecalhoImprimeFatura(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio ,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(DATE),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);

     IMPRESSORA.impf(05,01,'PROTOCOLO..=> ' + Manutencao_FaturaCODIGO.Text ,[COMP17, Negrito]);

     IF LENGTH(Ver_PessoaCPF_CGC.VALUE) <= 11
     THEN BEGIN
          IMPRESSORA.impf(06,01,'CLIENTE....=> ' + Manutencao_FaturaPESSOA_FJ.TEXT + '-' + Manutencao_FaturaNOME.VALUE + ' / CPF/CNPJ ' + MASCARACPF(Ver_PessoaCPF_CGC.VALUE)  ,[COMP17, Negrito]);
     END
     ELSE BEGIN
          IMPRESSORA.impf(06,01,'CLIENTE....=> ' + Manutencao_FaturaPESSOA_FJ.TEXT + '-' + Manutencao_FaturaNOME.VALUE + ' / CPF/CNPJ ' + MASCARACNPJ(Ver_PessoaCPF_CGC.VALUE)  ,[COMP17, Negrito]);
     END;

     IMPRESSORA.impf(07,01,'EMISSAO....=> ' + Manutencao_FaturaDATA.TEXT + ' - COBRADOR ..=> '+ Manutencao_FaturaOBS.VALUE  ,[COMP17, Negrito]);

     IMPRESSORA.impf(08,01,'===============================================================================',[Normal]);

     IMPRESSORA.impf(09,01,'DOCUMENTO',[COMP17]);
     IMPRESSORA.impf(09,15,'EMISSAO',[COMP17]);
     IMPRESSORA.impf(09,25,'VENCTO',[COMP17]);
     IMPRESSORA.impf(09,35,'NF',[COMP17]);
     IMPRESSORA.impf(09,42,'CUPOM',[COMP17]);
     IMPRESSORA.impf(09,73,'       TOTAL',[COMP17]);

     inc(pagina);
     linha  := 10;
end;

procedure TDmFinanceiro.IMPRIMEPROTOCOLO ( VIAS: INTEGER );
VAR
   IMP, STR         : STRING ;
   NF, CF           : INTEGER;
   TOTAL, ADICIONAL : Real   ;
begin
     If DmApp.Sel_Impressora = 'S'
     THEN BEGIN
          FrmTipoImpressora := TFrmTipoImpressora.Create(Self);
          FrmTipoImpressora.Showmodal ;

          If FrmTipoImpressora.CkMatricial.Checked 
          then begin
               IMPRESSORA.impressora := epson ;
          end
          else begin
               IMPRESSORA.impressora := Grafico ;
          end;

          FrmTipoImpressora.Free ;
          FrmTipoImpressora := Nil ;
     end;

     PAGINA     := 1;
     LINHA      := 5;

     IMPRESSORA.NumerodeCopias := ( VIAS );

     IMPRESSORA.OnNewPage       := cabecalhoFatura ;
     IMPRESSORA.OnBeforeNewPage := NIL             ;

     IMPRESSORA.TitulodoRelatorio := 'IMPRESSAO DE FATURA';

     IMPRESSORA.ABRIR;

     TOTAL := 0;//TOTAL DO CLIENTE

     VERRECEBER.First ;

     WHILE NOT VERRECEBER.Eof DO
     BEGIN
          //DOCUMENTO
          IMPRESSORA.impf(linha, 01, VerReceberDOCTO.VALUE,[comp17]);

          //lancamento
          IMPRESSORA.impf(linha, 15, DATETOSTR(VerFaturaDATA.Value ),[comp17]);

          //VENCIMENTO
          IMPRESSORA.impf(linha, 25, DATETOSTR(VerFaturaVENCIMENTO.Value) ,[comp17]);

          //NUMERO DA NOTA E NUMERO DO CUPOM
          If VerReceberCODIGO_VN.Value > 0
          THEN BEGIN
               Ver_NfCf_Venda.Close ;

               Ver_NfCf_Venda.ParamByName('CNPJ').asString      := DmApp.Cnpj;
               Ver_NfCf_Venda.ParamByName('CODIGO').asInteger   := VerReceberCODIGO_VN.Value ;
               Ver_NfCf_Venda.ParamByName('SERIE').value   := '';
               Ver_NfCf_Venda.ExecProc;
               //
               NF := Ver_NfCf_Venda.ParamByName('NF').asInteger;
               CF := Ver_NfCf_Venda.ParamByName('CF').asInteger;

               //NF
               IMPRESSORA.impf(linha, 35, INTTOSTR(NF) ,[comp17]);

               //CF
               IMPRESSORA.impf(linha, 42, INTTOSTR(CF) ,[comp17]);

               Ver_NfCf_Venda.Close ;
          END;

          STR :=  FORMATFLOAT ('###,###,##0.00', VerReceberTotal.Value);
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha, 73, STR ,[comp17]);

          TOTAL         := TOTAL  + VerReceberTotal.Value  ;

          VERRECEBER.NEXT ;

          INCLINHA;
     END;

     INCLINHA;

     //Imprime os Valores Adicionais
     ADICIONAL := 0;//TOTAL DO CLIENTE

     WHILE NOT Ver_Valores_Adicionais.Eof DO
     BEGIN
          //DOCUMENTO
          IMPRESSORA.impf(linha, 01, Ver_Valores_AdicionaisDOCUMENTO.VALUE,[comp17]);

          //HISTORICO
          IMPRESSORA.impf(linha, 15, Ver_Valores_AdicionaisHISTORICO.VALUE,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Valores_AdicionaisVALOR.Value);
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha, 73, STR ,[comp17]);

          ADICIONAL    := ADICIONAL  + Ver_Valores_AdicionaisValor.Value  ;

          Ver_Valores_Adicionais.NEXT ;

          INCLINHA;
     END;


     TOTAL := TOTAL + ADICIONAL ;

     IMPRESSORA.impf(linha, 73, '-------------' ,[comp17]);

     INCLINHA;

     IMPRESSORA.impf(linha,01, 'ASSINATURA:.....................................' ,[comp17]);

     //TOTAL
     STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

     WHILE LENGTH(STR) < 12 DO
     BEGIN
          STR := ' ' + STR ;
     END;

     IMPRESSORA.impf(linha, 73, STR ,[comp17]);

     INCLINHA;
     INCLINHA;

     IMPRESSORA.impf(linha,01, 'DATA PARA RECEBIMENTO:....../....../............' ,[comp17]);

     INCLINHA;

     IMPRESSORA.impf(LINHA,01,'===============================================================================',[normal]);

     IMPRESSORA.FECHAR;

     VERRECEBER.CLOSE ;
end;

procedure TDmFinanceiro.IMPRIMEFATURA ( VIAS: INTEGER );
VAR
   IMP, STR         : STRING ;
   NF, CF           : INTEGER;
   TOTAL, ADICIONAL : Real   ;
begin
     PAGINA     := 1;
     LINHA      := 5;

     IMPRESSORA.NumerodeCopias := ( VIAS );

     IMPRESSORA.OnNewPage       := cabecalhoImprimeFatura ;
     IMPRESSORA.OnBeforeNewPage := NIL             ;

     VERPESSOA ( Manutencao_FaturaPESSOA_FJ.VALUE );

     IMPRESSORA.ABRIR;

     TOTAL := 0;//TOTAL DO CLIENTE

     VERRECEBER.DisableControls ;

     VERRECEBER.First ;

     WHILE NOT VERRECEBER.Eof DO
     BEGIN
          //DOCUMENTO
          IMPRESSORA.impf(linha, 01, VerReceberDOCTO.VALUE,[comp17]);

          //lancamento
          IMPRESSORA.impf(linha, 15, DATETOSTR(VerFaturaDATA.Value ),[comp17]);

          //VENCIMENTO
          IMPRESSORA.impf(linha, 25, DATETOSTR(VerFaturaVENCIMENTO.Value) ,[comp17]);

          //NUMERO DA NOTA E NUMERO DO CUPOM
          If VerReceberCODIGO_VN.Value > 0 THEN
          BEGIN
               Ver_NfCf_Venda.Close;
               Ver_NfCf_Venda.ParamByName('CNPJ').asString      := DmApp.Cnpj;
               Ver_NfCf_Venda.ParamByName('CODIGO').asInteger   := VerReceberCODIGO_VN.Value ;
               Ver_NfCf_Venda.ParamByName('SERIE').value   := '';
               Ver_NfCf_Venda.ExecProc;
               //
               NF := Ver_NfCf_Venda1.ParamByName('NF').asInteger;
               CF := Ver_NfCf_Venda1.ParamByName('CF').asInteger;

               //NF
               IMPRESSORA.impf(linha, 35, INTTOSTR(NF) ,[comp17]);

               //CF
               IMPRESSORA.impf(linha, 42, INTTOSTR(CF) ,[comp17]);

               Ver_NfCf_Venda.Close ;
          END;

          STR :=  FORMATFLOAT ('###,###,##0.00', VerReceberTotal.Value);
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha, 73, STR ,[comp17]);

          TOTAL         := TOTAL  + VerReceberTotal.Value  ;

          VERRECEBER.NEXT ;

          INCLINHA;
     END;

     INCLINHA;

     //Imprime os Valores Adicionais
     ADICIONAL := 0;//TOTAL DO CLIENTE

     WHILE NOT Ver_Valores_Adicionais.Eof DO
     BEGIN
          //DOCUMENTO
          IMPRESSORA.impf(linha, 01, Ver_Valores_AdicionaisDOCUMENTO.VALUE,[comp17]);

          //HISTORICO
          IMPRESSORA.impf(linha, 15, Ver_Valores_AdicionaisHISTORICO.VALUE,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Valores_AdicionaisVALOR.Value);
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha, 73, STR ,[comp17]);

          ADICIONAL    := ADICIONAL  + Ver_Valores_AdicionaisValor.Value  ;

          Ver_Valores_Adicionais.NEXT ;

          INCLINHA;
     END;


     TOTAL := TOTAL + ADICIONAL ;

     IMPRESSORA.impf(linha, 73, '-------------' ,[comp17]);

     INCLINHA;

     IMPRESSORA.impf(linha,01, 'ASSINATURA:.....................................' ,[comp17]);

     //TOTAL
     STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

     WHILE LENGTH(STR) < 12 DO
     BEGIN
          STR := ' ' + STR ;
     END;

     IMPRESSORA.impf(linha, 73, STR ,[comp17]);

     INCLINHA;
     INCLINHA;

     IMPRESSORA.impf(linha,01, 'DATA PARA RECEBIMENTO:....../....../............' ,[comp17]);

     INCLINHA;

     IMPRESSORA.impf(LINHA,01,'===============================================================================',[normal]);

     IMPRESSORA.FECHAR;

     VERRECEBER.EnableControls ;

     Ver_Pessoa.Close ;
end;

procedure TDmFinanceiro.IMPRIMEFATURARECEBIDA ( VIAS: INTEGER );
VAR
   IMP, STR         : STRING ;
   NF, CF           : INTEGER;
   TOTAL, ADICIONAL : Real   ;
begin
     PAGINA     := 1;
     LINHA      := 5;

     IMPRESSORA.NumerodeCopias := ( VIAS );

     IMPRESSORA.OnNewPage       := cabecalhoImprimeFatura ;
     IMPRESSORA.OnBeforeNewPage := NIL             ;

     VERPESSOA ( Manutencao_FaturaPESSOA_FJ.VALUE );

     IMPRESSORA.ABRIR;

     TOTAL := 0;//TOTAL DO CLIENTE

     Baixas_Receber.DisableControls ;

     Baixas_Receber.First ;

     WHILE NOT Baixas_Receber.Eof DO
     BEGIN
          //DOCUMENTO
          IMPRESSORA.impf(linha, 01, Baixas_ReceberDOCTO.VALUE,[comp17]);

          //lancamento
          IMPRESSORA.impf(linha, 15, DATETOSTR(VerFaturaDATA.Value ),[comp17]);

          //VENCIMENTO
          IMPRESSORA.impf(linha, 25, DATETOSTR(VerFaturaVENCIMENTO.Value) ,[comp17]);

          //NUMERO DA NOTA E NUMERO DO CUPOM
          If Baixas_ReceberCODIGO_VN.Value > 0
          THEN BEGIN
               Ver_NfCf_Venda.Close ;

               Ver_NfCf_Venda.ParamByName('CNPJ').asString      := DmApp.Cnpj;
               Ver_NfCf_Venda.ParamByName('CODIGO').asInteger   := Baixas_ReceberCODIGO_VN.Value ;
               Ver_NfCf_Venda.ParamByName('SERIE').value   := '';
               Ver_NfCf_Venda.ExecProc;
               //
               NF := Ver_NfCf_Venda.ParamByName('NF').asInteger;
               CF := Ver_NfCf_Venda.ParamByName('CF').asInteger;

               //NF
               IMPRESSORA.impf(linha, 35, INTTOSTR(NF) ,[comp17]);

               //CF
               IMPRESSORA.impf(linha, 42, INTTOSTR(CF) ,[comp17]);

               Ver_NfCf_Venda.Close ;
          END;

          STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_ReceberTotal.Value);
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha, 73, STR ,[comp17]);

          TOTAL         := TOTAL  + Baixas_ReceberTotal.Value  ;

          Baixas_Receber.NEXT ;

          INCLINHA;
     END;

     INCLINHA;

     //Imprime os Valores Adicionais
     ADICIONAL := 0;//TOTAL DO CLIENTE

     WHILE NOT Ver_Valores_Adicionais.Eof DO
     BEGIN
          //DOCUMENTO
          IMPRESSORA.impf(linha, 01, Ver_Valores_AdicionaisDOCUMENTO.VALUE,[comp17]);

          //HISTORICO
          IMPRESSORA.impf(linha, 15, Ver_Valores_AdicionaisHISTORICO.VALUE,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Valores_AdicionaisVALOR.Value);
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          //VALOR
          IMPRESSORA.impf(linha, 73, STR ,[comp17]);

          ADICIONAL    := ADICIONAL  + Ver_Valores_AdicionaisValor.Value  ;

          Ver_Valores_Adicionais.NEXT ;

          INCLINHA;
     END;


     TOTAL := TOTAL + ADICIONAL ;

     IMPRESSORA.impf(linha, 73, '-------------' ,[comp17]);

     INCLINHA;

     //TOTAL
     STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

     //VALOR
     IMPRESSORA.impf(linha, 73, STR ,[comp17]);

     IMPRESSORA.FECHAR;

     Baixas_Receber.EnableControls ;

     Ver_Pessoa.Close ;
end;

procedure TDmFinanceiro.FaturasNewRecord(DataSet: TDataSet);
begin
     FaturasENVIADA.Value := 'N'   ;
     FaturasORIGEM.Value  := 'MAN' ;
end;

procedure TDmFinanceiro.AdministradoraNewRecord(DataSet: TDataSet);
begin
     AdministradoraTAXA.Value           := 0;
     AdministradoraTAXA_DEBITO.Value    := 0;
     AdministradoraTAXA_PARCELADO.Value := 0;
     AdministradoraTAXA.Value           := 0;
     AdministradoraDIASREEMBOLSO.Value  := 0;
end;

procedure TDmFinanceiro.ChequeAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmFinanceiro.ChequeNewRecord(DataSet: TDataSet);
begin
     ChequeVALOR.Value      := 0    ;
     ChequeCONCILIADO.Value := 'N'  ;
     ChequeEMISSAO.Value    := DmApp.DataCaixa ;
     ChequeTIPO.Value       := 'NO' ;
     ChequePROCESSADO.Value := 'N'  ;

     IF DMAPP.TurnoCaixa > 0  then
         ChequeTURNO.VALUE := DMAPP.TurnoCaixa ;

     If FrmCheque_Planilha <> Nil
     then begin
          ChequePESSOA_FJ.Value  := FrmCheque_Planilha.Cliente    ;
          ChequePLANILHA.Value   := FrmCheque_Planilha.Planilha   ;
          ChequeDATA_CAIXA.Value := FrmCheque_Planilha.Data_Caixa ;
          ChequeUSUARIO.Value    := FrmCheque_Planilha.Usuario    ;
          ChequeORIGEM.Value     := FrmCheque_Planilha.Origem     ;
     end;
end;

procedure TDmFinanceiro.ChequePESSOA_FJValidate(Sender: TField);
begin
     Valida_Cliente.Close ;

     Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Cliente.Prepare ;
     Valida_Cliente.Open ;

     If Valida_ClientePESSOA_FJ.isNull
     then Begin
         if  application.messagebox('Esta pessoa não esta cadastrada com cliente. Deseja continuar?','Aviso', mb_iconquestion + MB_YESNO) = id_no then
          Abort;
     end;

     If Not Valida_ClienteOBS.isNull
     then Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.DSource.DataSet := Valida_Cliente ;
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
     end;

     If Not Valida_ClienteCLASSIFICACAO.isNull
     then Begin
          Clas := Valida_ClienteCLASSIFICACAO.Value ;

          //Confere se a Classificacao Pede Senha
          Geral.Close ;
          Geral.Sql.Clear ;
          Geral.Params.Clear ;

          Geral.Params.CreateParam ( FtString , 'E', PtInput );
          Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

          Geral.Sql.Add (' Select Nome, Dig_Senha from Glo_Classificacao Where Codigo = :C and CNPJ = :E ');

          Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
          Geral.ParamByName ('C').AsInteger := Clas         ;

          Geral.Prepare ;
          Geral.Open ;

          If Not Geral.Fields[0].isNull
          then Begin
               NomeClas := Geral.Fields[0].Value ;
          end
          Else
              NomeClas := 'Não Informada';

          If Not Geral.Fields[1].isNull
          then Begin
               Dig_Senha := Geral.Fields[1].Value ;
          end
          else begin
               Dig_Senha := 'N' ;
          end;

          Geral.Close ;

          Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

          FrmMensagemClassificacao.MEMO.Lines.Add (NomeClas);

          If Dig_Senha = 'S'
          Then Begin
               FrmMensagemClassificacao.EdSenha.Visible := true ;
               FrmMensagemClassificacao.Label6.Visible  := true ;
               //Se o Nível ou a Classificacao exigir senha e não foi digitada
               if FrmMensagemClassificacao.Showmodal = MrCancel
               then Begin
                    MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
                    Abort ;
               end;
          end
          else begin
               FrmMensagemClassificacao.EdSenha.Visible := false ;
               FrmMensagemClassificacao.Label6.Visible  := false ;
               FrmMensagemClassificacao.Showmodal ;
          end;

          FrmMensagemClassificacao.Free ;
          FrmMensagemClassificacao := Nil;
     end;

     If Not Valida_ClienteNOME.isNull
     then Begin
          CHEQUENOME.Value := Valida_ClienteNOME.Value ;
     end ;

     If FrmCheque_Pre <> Nil
     Then begin
          If Sender.Value = 1
          then begin
               FrmCheque_Pre.EdNome.Enabled := True ;
               FrmCheque_Pre.EdNome.SetFocus ;
          end
          else begin
               FrmCheque_Pre.EdNome.Enabled := False ;
               FrmCheque_Pre.cmbBanco.SetFocus ;
          end;
     end;
end;

procedure TDmFinanceiro.VerChequeCalcFields(DataSet: TDataSet);
begin
  VerChequeTotal.Value := VerChequeVALOR.Value + VerChequeJuros.value;
end;

procedure TDmFinanceiro.ChequeTIPOGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'NO' Then
    Text := 'Normal';
  If Sender.Value = 'DE' Then
    Text := 'Devolvido';
  If Sender.Value = 'CA' Then
    Text := 'Cartorio';
  If Sender.Value = 'AC' Then
    Text := 'Acertado';
  If Sender.Value = 'CO' Then
    Text := 'Cobranca';
end;

procedure TDmFinanceiro.ChequeTIPOSetText(Sender: TField; const Text: String);
begin
     If Text = 'Normal' Then
     Sender.Value := 'NO';
     If Text = 'Devolvido' Then
     Sender.Value := 'DE';
     If Text = 'Cartorio' Then
     Sender.Value := 'CA';
     If Text = 'Acertado' Then
     Sender.Value := 'AC';
     If Text = 'Cobranca' Then
     Sender.Value := 'CO';
end;

procedure TDmFinanceiro.ChequeAfterPost(DataSet: TDataSet);
Var
   Aux: Real;
begin
     If FrmCheque_Planilha <> Nil
     then begin
          Aux := 0;

          Cheque.DisableControls ;

          Cheque.First ;

          While Not Cheque.Eof do
          begin
               Aux := Aux + Chequevalor.value ;
               Cheque.Next;
          end;

          Cheque.EnableControls ;

          FrmCheque_Planilha.EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);

          FrmCheque_Planilha.Acumulado := Aux ;
     end;

end;

procedure TDmFinanceiro.FaturasPESSOA_FJValidate(Sender: TField);
begin
     Valida_Cliente.Close ;

     Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Cliente.Prepare ;
     Valida_Cliente.Open ;

     If Valida_ClientePESSOA_FJ.isNull
     then Begin
          Showmessage ('Cliente Inexistente!');
          Abort;
     end;

     If Not Valida_ClienteLIMITE_TEMPO.isNull
     then Begin
          Ven_Limite_Tempo  := Valida_ClienteLIMITE_TEMPO.Value ;
     end
     else begin
          Ven_Limite_Tempo  := 0 ;
     end;

     If Not Valida_ClienteLIMITE_CREDITO.isNull
     then Begin
          Ven_Limite_Credito  := Valida_ClienteLIMITE_CREDITO.Value ;
     end
     else begin
          ven_Limite_Credito  := 0 ;
     end;

     If Not Valida_ClienteCLASSIF.isNull
     Then Begin
          Classificacao  := Valida_ClienteCLASSIF.Value ;
     end
     else begin
          Classificacao  := 'B' ;
     end;

     If Not Valida_ClienteBLOQUEADO.isNull
     then Begin
          Bloqueado  := Valida_ClienteBLOQUEADO.Value ;
     end
     else begin
          Bloqueado  := 'N' ;
     end;

     If Not Valida_ClienteOBS.isNull
     then Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.DSource.DataSet := Valida_Cliente ;
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
     end;

     If Not Valida_ClienteCLASSIFICACAO.isNull
     then Begin
          Clas := Valida_ClienteCLASSIFICACAO.Value ;

          //Confere se a Classificacao Pede Senha
          Geral.Close ;
          Geral.Sql.Clear ;
          Geral.Params.Clear ;

          Geral.Params.CreateParam ( FtString , 'E', PtInput );
          Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

          Geral.Sql.Add (' Select Nome, Dig_Senha from Glo_Classificacao Where Codigo = :C and CNPJ = :E ');

          Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
          Geral.ParamByName ('C').AsInteger := Clas         ;

          Geral.Prepare ;
          Geral.Open ;

          If Not Geral.Fields[0].isNull
          then Begin
               NomeClas := Geral.Fields[0].Value ;
          end
          Else
              NomeClas := 'Não Informada';

          If Not Geral.Fields[1].isNull
          then Begin
               Dig_Senha := Geral.Fields[1].Value ;
          end
          else begin
               Dig_Senha := 'N' ;
          end;

          Geral.Close ;

          Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

          FrmMensagemClassificacao.MEMO.Lines.Add (NomeClas);

          If Dig_Senha = 'S'
          Then Begin
               FrmMensagemClassificacao.EdSenha.Visible := true ;
               FrmMensagemClassificacao.Label6.Visible  := true ;
               //Se o Nível ou a Classificacao exigir senha e não foi digitada
               if FrmMensagemClassificacao.Showmodal = MrCancel
               then Begin
                    MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
                    Abort ;
               end;
          end
          else begin
               FrmMensagemClassificacao.EdSenha.Visible := false ;
               FrmMensagemClassificacao.Label6.Visible  := false ;
               FrmMensagemClassificacao.Showmodal ;
          end;

          FrmMensagemClassificacao.Free ;
          FrmMensagemClassificacao := Nil;
     end;

     If Not Valida_ClienteNOME.isNull
     then Begin
          FaturasNOME.Value := Valida_ClienteNOME.Value ;
     end ;
end;

procedure TDmFinanceiro.Manutencao_FaturaCalcFields(DataSet: TDataSet);
begin
     Manutencao_FaturaTotal.Value := Manutencao_FaturaVALOR.value + Manutencao_FaturaJUROS.value - Manutencao_FaturaDESCONTO.Value ;
end;

procedure TDmFinanceiro.Manutencao_FaturaNewRecord(DataSet: TDataSet);
begin
     Manutencao_FaturaENVIADA.Value := 'N'  ;
     Manutencao_FaturaBAIXADA.Value := 'N'  ;
     Manutencao_FaturaVALOR.Value   := 0    ;
     Manutencao_FaturaJUROS.Value   := 0    ;
     Manutencao_FaturaDESCONTO.Value:= 0    ;
     Manutencao_FaturaORIGEM.Value  := 'MAN';
end;

procedure TDmFinanceiro.Manutencao_FaturaPESSOA_FJValidate(Sender: TField);
begin
     Valida_Cliente.Close ;

     Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Cliente.Prepare ;
     Valida_Cliente.Open ;

     If Valida_ClientePESSOA_FJ.isNull
     then Begin
          Showmessage ('Cliente Inexistente!');
          Abort;
     end;

     If Not Valida_ClienteLIMITE_TEMPO.isNull
     then Begin
          Ven_Limite_Tempo  := Valida_ClienteLIMITE_TEMPO.Value ;
     end
     else begin
          Ven_Limite_Tempo  := 0 ;
     end;

     If Not Valida_ClienteLIMITE_CREDITO.isNull
     then Begin
          Ven_Limite_Credito  := Valida_ClienteLIMITE_CREDITO.Value ;
     end
     else begin
          ven_Limite_Credito  := 0 ;
     end;

     If Not Valida_ClienteCLASSIF.isNull
     Then Begin
          Classificacao  := Valida_ClienteCLASSIF.Value ;
     end
     else begin
          Classificacao  := 'B' ;
     end;

     If Not Valida_ClienteBLOQUEADO.isNull
     then Begin
          Bloqueado  := Valida_ClienteBLOQUEADO.Value ;
     end
     else begin
          Bloqueado  := 'N' ;
     end;

     If Not Valida_ClienteOBS.isNull
     then Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.DSource.DataSet := Valida_Cliente ;
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
     end;

     If Not Valida_ClienteCLASSIFICACAO.isNull
     then Begin
          Clas := Valida_ClienteCLASSIFICACAO.Value ;

          //Confere se a Classificacao Pede Senha
          Geral.Close ;
          Geral.Sql.Clear ;
          Geral.Params.Clear ;

          Geral.Params.CreateParam ( FtString , 'E', PtInput );
          Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

          Geral.Sql.Add (' Select Nome, Dig_Senha from Glo_Classificacao Where Codigo = :C and CNPJ = :E ');

          Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
          Geral.ParamByName ('C').AsInteger := Clas         ;

          Geral.Prepare ;
          Geral.Open ;

          If Not Geral.Fields[0].isNull
          then Begin
               NomeClas := Geral.Fields[0].Value ;
          end
          Else
              NomeClas := 'Não Informada';

          If Not Geral.Fields[1].isNull
          then Begin
               Dig_Senha := Geral.Fields[1].Value ;
          end
          else begin
               Dig_Senha := 'N' ;
          end;

          Geral.Close ;

          Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

          FrmMensagemClassificacao.MEMO.Lines.Add (NomeClas);

          If Dig_Senha = 'S'
          Then Begin
               FrmMensagemClassificacao.EdSenha.Visible := true ;
               FrmMensagemClassificacao.Label6.Visible  := true ;
               //Se o Nível ou a Classificacao exigir senha e não foi digitada
               if FrmMensagemClassificacao.Showmodal = MrCancel
               then Begin
                    MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
                    Abort ;
               end;
          end
          else begin
               FrmMensagemClassificacao.EdSenha.Visible := false ;
               FrmMensagemClassificacao.Label6.Visible  := false ;
               FrmMensagemClassificacao.Showmodal ;
          end;

          FrmMensagemClassificacao.Free ;
          FrmMensagemClassificacao := Nil;
     end;

     If Not Valida_ClienteNOME.isNull
     then Begin
          Manutencao_FaturaNOME.Value := Valida_ClienteNOME.Value ;
     end ;
end;

procedure TDmFinanceiro.VERFATURASBAIXADASCalcFields(DataSet: TDataSet);
begin
     VERFATURASBAIXADASTotal.Value := VERFATURASBAIXADASVALOR.value + VERFATURASBAIXADASJUROS.value - VERFATURASBAIXADASDESCONTO.Value ;
end;

procedure TDmFinanceiro.VerFaturaCalcFields(DataSet: TDataSet);
begin
     VerFaturaTotal.Value := VerFaturaVALOR.value + VerFaturaJUROS.value - VerFaturaDESCONTO.Value ;
end;


procedure TDmFinanceiro.Motivo_DevolucaoAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmFinanceiro.Contas_PagarAfterPost(DataSet: TDataSet);
Var
   Hist: String;
begin
     ESTADO_CTB := 'N' ;
end;

procedure TDmFinanceiro.Manutencao_FaturaAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
     Dataset.Fields[1].Value := DMApp.GerarCodigo('FATURA', 0) + 1;
end;

procedure TDmFinanceiro.Manutencao_FaturaBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert
     Then
         Dataset.Fields[1].Value := DMApp.GerarCodigo('FATURA', 1);
end;

procedure TDmFinanceiro.Cheque_CtbPESSOA_FJValidate(Sender: TField);
begin
     Valida_Fornecedor.Close ;
     Valida_Fornecedor.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Fornecedor.ParamByName ('CODIGO').AsInteger := Sender.Value ;
     Valida_Fornecedor.Open ;

     If Valida_FornecedorPESSOA_FJ.isNull then
     Begin
          Showmessage ('Fornecedor Inexistente!');
          Abort;
     end;

     If Not Valida_FornecedorNOME.isNull then
       CHEQUE_CTBNOME.Value := Valida_FornecedorNOME.Value;

end;

procedure TDmFinanceiro.Cheque_CtbNewRecord(DataSet: TDataSet);
begin
  if FrmCheques_Ctb <> nil then
  begin
    if FrmCheques_Ctb.CmbConta.Text = '' then
    begin
      MessageDlg('Selecione a Conta!', mtError, [mbOK], 0);
      FrmCheques_Ctb.CmbConta.SetFocus ;
      Abort ;
    end
    else
    begin
      Cheque_CtbCONTA.value    := SelPlanoCONTA.value ;
      Cheque_CtbIMPRESSO.value := 'N' ;
      Cheque_CtbORIGEM.VALUE   := 'M' ;
    end;

    if (DmApp.EXIBE_ACERTO = 'S') then
      Cheque_ctbPLANILHA.Value := DMApp.GerarCodigo('ACERTO',0 ) + 1
    else
      Cheque_ctbPLANILHA.Value := DMApp.GerarCodigo('PLANILHA', 1) ;
    Cheque_ctbCHEQUE.Value   := DmApp.Ultimo_Cheque ( Cheque_CtbCONTA.Value ) + 1;
  end;
  estado_ctb := 'I';
end;

procedure TDmFinanceiro.Cheque_CtbAfterPost(DataSet: TDataSet);
begin
     ESTADO_CTB := 'N';
end;

procedure TDmFinanceiro.Cheque_CtbBeforePost(DataSet: TDataSet);
begin
     //Atualiza o Ultimo Cheque
     DmaPP.Atualiza_Ultimo_Cheque (Cheque_CtbCONTA.VALUE, Cheque_CtbCHEQUE.VALUE );
end;

procedure TDmFinanceiro.Contas_PagarBeforePost(DataSet: TDataSet);
var
  sql,motivo : string;
  cont : integer;
begin
  Contas_PAGARANO.Value := Year(Contas_PAGARDT_EMISSAO.Value);

  motivo := 'Registro gerado automaticamente pelo sistema.';
  //----------------Validação para evitar alterãções indevidas em campos chaves do C. Receber----------------//
  //Obs.: Esta sendo realizada pela aplicação por conta de alguns processos do BD que inviabilizam a validação
  //por triguer, para que isso se torne possivel precisaremos alterar a estrutura do Contas à Receber, algo
  //que não irá ocorrer po hora..

  cont := dmFinanceiro2.VerificaPagar(Contas_PagarCODIGO.value,Contas_PagarPESSOA_FJ.OldValue);
  if (cont > 0) then
    motivo := 'Existem movimentos de baixa relacionados ao registro.';

  //Registros lançados manualmente e que não possuem nenhuma baixa registrada, podem ser "alterados"
  if ((Contas_PagarVALOR.OldValue <> Contas_PagarVALOR.NewValue) and (Contas_PagarVALOR.OldValue <> 0)) then
  begin
    if (cont > 0) then
    begin
      Application.MessageBox(Pchar(Motivo+#13+'Valor nominal não pode ser alterado.'),'Aviso',mb_ok+mb_iconerror);
      abort;
    end
    else if ((Contas_PagarOrigem.value <> 'MAN') and (DmApp.ALTERA_VLR_CNT_PAGAR <> 'S')) then
    begin
      Application.MessageBox(Pchar(Motivo+#13+'Valor nominal não pode ser alterado.'),'Aviso',mb_ok+mb_iconerror);
      abort;
    end;
  end;

  if ((Contas_PagarPESSOA_FJ.OldValue <> Contas_PagarPESSOA_FJ.NewValue) and (Contas_PagarPESSOA_FJ.OldValue <> 0)) then
  begin
    if ((cont > 0)) then
    begin
      Application.MessageBox(Pchar(Motivo+#13+'Proprietário não pode ser alterado'),'Aviso',mb_ok+mb_iconerror);
      abort;
    end
    else if ((Contas_PagarOrigem.value <> 'MAN') and (DmApp.ALTERA_VLR_CNT_PAGAR <> 'S')) then
    begin
      Application.MessageBox(Pchar(Motivo+#13+'Proprietário não pode ser alterado'),'Aviso',mb_ok+mb_iconerror);
      abort;
    end;
  end;

  Contas_PagarANO.Value := Year(Contas_PagarDT_EMISSAO.Value);
  dmapp.Extenso.Valor := Contas_PagarVALOR.Value;
  Contas_PagarVALOR_EXTENSO.value := dmapp.Extenso.texto;

  If Dataset.State = dsInsert Then
    Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);
end;

procedure TDmFinanceiro.Contas_PagarCENTRO_CUSTOValidate(Sender: TField);
begin
     IF SENDER.VALUE = 1 then
         EXIT ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select * FROM FIN_CENTRO_CUSTO Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          SENDER.VALUE := 1;
     end;
end;

procedure TDmFinanceiro.Contas_ReceberDOCTOValidate(Sender: TField);
begin
     //
     IF ((DMAPP.CONF_DUPLIC_REC = 'S' ) AND ( Contas_Receber.STATE IN [ DSINSERT ] ))
     THEN BEGIN
          If DmaPP.Confere_Docto_Receber ( Contas_ReceberTIPO_DOCTO.VALUE, Contas_ReceberDOCTO.VALUE ) > 0
          THEN BEGIN
          IF MESSAGEDLG ( 'Documento Duplicado, Confirmar?', MtInformation, [mbok, mbcancel], 0 ) <> MrOk
          then
              abort;
          END;
     END;
end;

procedure TDmFinanceiro.Contas_PagasAfterInsert(DataSet: TDataSet);
Var
   I: Integer;
BEGIN
     Contas_PagasCNPJ.Value := DMApp.Cnpj;

     Contas_PagasCODIGO_PG.Value := DMApp.GerarCodigo('Contas_Pagar', 0) + 1;

     Contas_PagasCODIGO.Value := DMApp.GerarCodigo('BAIXA_PAGAR', 0) + 1;

     if (DmApp.EXIBE_ACERTO = 'S') then
      Contas_PagasPLANILHA.Value := DMApp.GerarCodigo('ACERTO',0 ) + 1
    else
      Contas_PagasPLANILHA.Value  := DMApp.GerarCodigo('PLANILHA', 0) + 1;

     Contas_PagasANO.Value       := strtoint(copy(datetostr(DMAPP.Data_Servidor),7,4));

     Contas_PagasANO_PG.Value    := strtoint(copy(datetostr(DMAPP.Data_Servidor),7,4));

     Contas_PagasHISTORICO_BX.Value := 'BAIXA MANUAL';

     Contas_PagasORIGEM.VALUE       := 'MAN' ;

     Contas_PagasTAXA_JUROS.VALUE   := 0;

     Contas_PagasTIPO_JUROS.VALUE   := 'C' ;

     Contas_PagasCONFERIDA.VALUE    := 'N' ;

     Contas_PagasDT_LANCTO.Value    := DMAPP.Data_Servidor ;

     Contas_PagasDT_EMISSAO.Value   := DMAPP.Data_Servidor ;

     Contas_PagasBOLETO.VALUE       := 'N' ;

     Contas_PagasUSUARIO.value      := DmApp.UsuarioCaixa ;

     For I := 0 to Contas_Pagas.FieldCount - 1 do
     begin
          if ( Contas_Pagas.Fields.FIELDS[i].DataType = FtFloat ) or
          ( Contas_Pagas.Fields.FIELDS[i].DataType = FtBCD )
          then Begin
               Contas_Pagas.Fields[i].Value := 0;
          end;
     end;
end;

procedure TDmFinanceiro.Contas_PagasBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert
     Then begin
          Contas_PagasCODIGO_PG.Value := DMApp.GerarCodigo('Contas_Pagar', 1);

          Contas_PagasCODIGO.Value := DMApp.GerarCodigo('BAIXA_PAGAR', 1);

          if (DmApp.EXIBE_ACERTO = 'S') then
            Contas_PagasPLANILHA.Value := DMApp.GerarCodigo('ACERTO',0 ) + 1
          else
            Contas_PagasPLANILHA.Value  := DMApp.GerarCodigo('PLANILHA', 1);

          Contas_PagasVLR_BAIXA.value := Contas_PagasVALOR.VALUE         ;
     end;
end;

procedure TDmFinanceiro.Contas_PagasCalcFields(DataSet: TDataSet);
begin
     Contas_PagasTotal.Value := Contas_PagasValor.Value - Contas_PagasVlr_Parcial.Value ;
end;

procedure TDmFinanceiro.Contas_PagasPESSOA_FJValidate(Sender: TField);
begin
     Valida_Fornecedor.Close ;

     Valida_Fornecedor.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Fornecedor.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Fornecedor.Prepare ;
     Valida_Fornecedor.Open ;

     If Valida_FornecedorPESSOA_FJ.isNull
     then Begin
          Showmessage ('Fornecedor Inexistente!');
          Abort;
     end;

     If Not Valida_FornecedorNOME.isNull
     then Begin
          Contas_PagasNOME.Value := Valida_FornecedorNOME.Value ;
     end ;
end;

procedure TDmFinanceiro.Contas_PagasCENTRO_CUSTOValidate(Sender: TField);
begin
     IF SENDER.VALUE = 1
     THEN
         EXIT ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select * FROM FIN_CENTRO_CUSTO Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          SENDER.VALUE := 1;
     end;
end;

procedure TDmFinanceiro.Contas_PagarAfterEdit(DataSet: TDataSet);
begin
     ESTADO_CTB := 'A' ;
end;

procedure TDmFinanceiro.Cheque_CtbAfterEdit(DataSet: TDataSet);
begin
     ESTADO_CTB := 'A' ;
end;

procedure TDmFinanceiro.Motivo_CobrancaBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert  Then
        Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);
end;

procedure TDmFinanceiro.CobrancaAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmFinanceiro.CobrancaNewRecord(DataSet: TDataSet);
begin
     IF FrmManutencaoCobranca <> nIL
     THEN BEGIN
          CobrancaDATA_COBRANCA.Value := DmApp.Data_Servidor              ;
          CobrancaPESSOA_FJ.Value     := FrmManutencaoCobranca.PESSOA_FJ  ;
          CobrancaCOBRADOR.Value      := FrmManutencaoCobranca.CodCobrador   ;
          CobrancaRECEBER.Value       := FrmManutencaoCobranca.CODRECEBER ;
          CobrancaORIGEM.Value        := FrmManutencaoCobranca.ORIGEM     ;
          CobrancaANO.Value           := FrmManutencaoCobranca.ANORECEBER ;
     END;

     IF FrmListagemCobranca <> nIL
     THEN BEGIN
          CobrancaDATA_COBRANCA.Value := DmApp.Data_Servidor              ;
          CobrancaPESSOA_FJ.Value     := FrmListagemCobranca.PESSOA_FJ    ;
          CobrancaCOBRADOR.Value      := FrmListagemCobranca.Cobrador     ;
          CobrancaRECEBER.Value       := FrmListagemCobranca.CODRECEBER   ;
          CobrancaORIGEM.Value        := FrmListagemCobranca.ORIGEM       ;
          CobrancaANO.Value           := FrmListagemCobranca.ANORECEBER   ;
     END;

     IF FrmManutencaoCobrancaPessoa <> nIL
     THEN BEGIN
          CobrancaDATA_COBRANCA.Value := DmApp.Data_Servidor ;
          CobrancaPESSOA_FJ.Value     := FrmManutencaoCobrancaPessoa.Pessoa_Fj  ;
          CobrancaCOBRADOR.Value      := FrmManutencaoCobrancaPessoa.Cobrador   ;
          CobrancaRECEBER.Value       := FrmManutencaoCobrancaPessoa.CODRECEBER ;
          CobrancaORIGEM.Value        := FrmManutencaoCobrancaPessoa.ORIGEM     ;
          CobrancaANO.Value           := FrmManutencaoCobrancaPessoa.ANORECEBER ;
     END;
end;

procedure TDmFinanceiro.CobrancaCOBRADORValidate(Sender: TField);
begin
     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select NOME FROM FIN_COBRADOR Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Not Geral.Fields[0].isNull
     then Begin
          CobrancaNOME_COBRADOR.VALUE := Geral.Fields[0].value ;
     end;
end;

procedure TDmFinanceiro.Faturas_PclAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmFinanceiro.Faturas_PclNewRecord(DataSet: TDataSet);
begin
     If FrmFatura_Parcelas <> Nil
     then Begin
          Faturas_PclCODIGO.Value := FrmFatura_Parcelas.Codigo ;
     end;
end;

procedure TDmFinanceiro.Ver_CartoesCalcFields(DataSet: TDataSet);
begin
     //VALOR LIQUIDO
     IF UPPERCASE(Ver_CartoesTIPO.VALUE) = 'CRE'
     THEN BEGIN
          Ver_CartoesVALOR_LIQ.VALUE := Ver_CartoesVALOR.VALUE - ( Ver_CartoesVALOR.VALUE * Ver_CartoesTAXA.VALUE ) / 100 ;

          Ver_CartoesDESCONTO.VALUE  := ( Ver_CartoesVALOR.VALUE * Ver_CartoesTAXA.VALUE ) / 100 ;
     END
     ELSE BEGIN
          IF UPPERCASE(Ver_CartoesTIPO.VALUE) = 'DEB'
          THEN BEGIN
               Ver_CartoesVALOR_LIQ.VALUE := Ver_CartoesVALOR.VALUE - ( Ver_CartoesVALOR.VALUE * Ver_CartoesTAXA_DEBITO.VALUE ) / 100 ;

               Ver_CartoesDESCONTO.VALUE  := ( Ver_CartoesVALOR.VALUE * Ver_CartoesTAXA_DEBITO.VALUE ) / 100 ;
          END
          ELSE BEGIN
               Ver_CartoesVALOR_LIQ.VALUE := Ver_CartoesVALOR.VALUE - ( Ver_CartoesVALOR.VALUE * Ver_CartoesTAXA_PARCELADO.VALUE ) / 100 ;

               Ver_CartoesDESCONTO.VALUE  := ( Ver_CartoesVALOR.VALUE * Ver_CartoesTAXA_PARCELADO.VALUE ) / 100 ;
          END;
     END;
end;

procedure TDmFinanceiro.Ver_DadosFaturasCalcFields(DataSet: TDataSet);
Var
   Situacao: String;
begin
     Ver_DadosFaturasTotal.Value := Ver_DadosFaturasVALOR.value + Ver_DadosFaturasJUROS.value - Ver_DadosFaturasDESCONTO.Value ;

     If UPPERCASE(Ver_DadosFaturasTIPO.Value) = 'DESCONTADA'
     THEN BEGIN
          Situacao := 'DESCONTADA' ;
     END;

     If UPPERCASE(Ver_DadosFaturasTIPO.Value) = 'CARTEIRA'
     THEN BEGIN
          Situacao := 'CARTEIRA';

          IF Ver_DadosFaturasENVIADA.VALUE = 'S'
          THEN BEGIN
               Situacao := Situacao + ' ENVIADA' ;
          END;

          IF TRIM(Ver_DadosFaturasDUPLICATA.VALUE)<> ''
          THEN BEGIN
               Situacao := Ver_DadosFaturasDUPLICATA.VALUE ;
          END;
     END;

     If UPPERCASE(Ver_DadosFaturasTIPO.Value) = 'PROTOCOLO'
     THEN BEGIN
          Situacao := 'PROTOCOLO';

          IF TRIM(Ver_DadosFaturasOBS.VALUE) <> ''
          THEN BEGIN
               SITUACAO := SITUACAO + ' ' + TRIM(Ver_DadosFaturasOBS.VALUE);
          END;
     END;

     Ver_DadosFaturasSituacao.Value := Situacao ;
end;

procedure TDmFinanceiro.CartaoAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
     Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('CARTAO'), 0) + 1;
     CartaoNUM_PARCELAS.Value:= 1;
end;

procedure TDmFinanceiro.CartaoBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert Then
        Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('CARTAO'), 1);
end;

procedure TDmFinanceiro.CartaoCalcFields(DataSet: TDataSet);
begin
     If CartaoTAXA.Value > 0
     then begin
          CartaoValor_Liquido.Value := CartaoVALOR.Value - ( (CartaoVALOR.Value * CartaoTAXA.Value)/100);
     end
     else begin
          CartaoValor_Liquido.Value := CartaoVALOR.Value ;
     end;
end;

procedure TDmFinanceiro.CartaoNewRecord(DataSet: TDataSet);
begin
     CartaoUSUARIO.Value    := DmApp.UsuarioCaixa  ;
     CartaoCONTA.VALUE      := DmApp.ContaCaixa    ;
     CartaoVALOR.Value      := 0                   ;
     CartaoPESSOA_FJ.Value  := 1                   ;
     CartaoCONCILIADO.Value := 'N'                 ;
     CartaoCONCILIADO.Value := 'N'                 ;
     CartaoDATA.Value       := DmApp.DataCaixa     ;
     CartaoPROCESSADO.Value := 'N'                 ;
end;

procedure TDmFinanceiro.CartaoADMINISTRADORAValidate(Sender: TField);
begin
     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select DIASREEMBOLSO, TAXA From FIN_ADMINISTRADORA Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Not Geral.Fields[0].isNull
     then Begin
          CartaoREEMBOLSO.Value := CartaoDATA.Value + Geral.Fields[0].Value ;
     END;
end;

procedure TDmFinanceiro.CartaoPESSOA_FJValidate(Sender: TField);
begin
     If (not ( Cartao.State in [ DsInsert, DsEdit] )) or ( CartaoPessoa_Fj.IsNull )
     then
         Exit;

     Valida_Cliente.Close ;

     Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Cliente.Prepare ;
     Valida_Cliente.Open ;

     If Valida_ClientePESSOA_FJ.isNull
     then Begin
          Showmessage ('Cliente Inexistente!');
          Abort;
     end;

     If Not Valida_ClienteNOME.isNull
     then Begin
          CartaoCLIENTE.Value := Valida_ClienteNOME.Value ;
     end ;

     If Not Valida_ClienteCPF_CNPJ.isNull
     then Begin
          CartaoCPF_CNPJ.Value := Valida_ClienteCPF_CNPJ.Value ;
     end ;

     Valida_Cliente.Close ;
end;

procedure TDmFinanceiro.VER_DADOS_FATURACalcFields(DataSet: TDataSet);
begin
     if VER_DADOS_FATURAULTIMA_BX_PARCIAL.IsNull
     then begin
          IF ( VER_DADOS_FATURAVENCIMENTO.Value < DmApp.Data_Servidor ) AND ( VER_DADOS_FATURAVALOR.Value > 0 )
          THEN BEGIN
               VER_DADOS_FATURAJUROS_CALCULADOS.Value := CALCULAJUROS( VER_DADOS_FATURAVENCIMENTO.Value, DmApp.Data_Servidor, VER_DADOS_FATURAVALOR.Value,0 )
          END
          ELSE BEGIN
               VER_DADOS_FATURAJUROS_CALCULADOS.Value := 0;
          END;
     end
     else begin
          IF ( VER_DADOS_FATURAVENCIMENTO.Value < DmApp.Data_Servidor ) AND ( VER_DADOS_FATURAVALOR.Value > 0 )
          THEN BEGIN
               VER_DADOS_FATURAJUROS_CALCULADOS.Value := CALCULAJUROS( VER_DADOS_FATURAULTIMA_BX_PARCIAL.Value, DmApp.Data_Servidor, VER_DADOS_FATURAVALOR.Value,0 )
          END
          ELSE BEGIN
               VER_DADOS_FATURAJUROS_CALCULADOS.Value := 0;
          END;
     end;

     VER_DADOS_FATURATotal_Nominal.value := VER_DADOS_FATURAVALOR.value + VER_DADOS_FATURAJuros_Calculados.Value ;
end;

procedure TDmFinanceiro.VerPendenciasCalcFields(DataSet: TDataSet);
Var
   Dias: Integer ;
   VlrOriginal : Real;
   Data : TDate;
begin
     VerPendenciasTotal.Value := VerPendenciasValor.Value - (VerPendenciasVlr_Parcial.Value - VerPendenciasDescontos.VALUE);
     VlrOriginal := VerPendenciasTotal.Value;

     if (VerPendenciasData_Ult_Baixa.value < VerPendenciasDT_VENCTO.value) then
       Data := VerPendenciasDT_VENCTO.Value
     else
       Data := VerPendenciasData_Ult_Baixa.Value;

     //Dias := trunc(DmaPP.DataCaixa - Data);
     Dias := trunc(DmaPP.Data_Servidor - Data);
     if Dias < 0 then
       Dias := 0;

    if ((Dias > 0) and (dias > dmapp.TOLERANCIA_JUROS)) then
    begin
    //  VerPendenciasJuros_Calculadors.Value := arredonda(CALCULAJUROS(Data,DmaPP.DataCaixa,VerPendenciasTOTAL.Value,0 ),2);
      VerPendenciasJuros_Calculadors.Value := arredonda(CALCULAJUROS(Data,DmaPP.Data_Servidor,VerPendenciasTOTAL.Value,0 ),2);
       //aplicando o valor de multa no total
      //Contas_ReceberTotal.Value := arredonda(Contas_ReceberTotal.Value + ( DmApp.MULTA_FINANCEIRA * Contas_ReceberTotal.Value)/100,2);
    end
    else
       VerPendenciasJuros_Calculadors.Value := 0;

    VerPendenciasTotal_Nominal.value := VlrOriginal + VerPendenciasJuros_Calculadors.Value ;
    VerPendenciasATRASO.Value := Dias ;

end;

procedure TDmFinanceiro.Ver_CartaoCalcFields(DataSet: TDataSet);
begin
     If Ver_CartaoTAXA.Value > 0
     then begin
          Ver_CartaoValor_Liquido.Value := Ver_CartaoVALOR.Value - ARREDONDA(( ( Ver_CartaoVALOR.Value * Ver_CartaoTAXA.Value ) / 100),2);
     end
     else begin
          Ver_CartaoValor_Liquido.Value := Ver_CartaoVALOR.Value ;
     end;
end;

procedure TDmFinanceiro.ChequeCalcFields(DataSet: TDataSet);
Var
   TEXTO: STRING;
   {
    OS LOCAIS DEVERAO SER OBTIDOS POR PG
    PEGAR A SOMATORIA E IR SUBTRAINDO DO <= PROXIMO NUMERO NA SEGUENCIA

    1 2 4 8 16 32 64 128

    1   = NO NORMAL
    2   = DE DEVOLVIDO 1 VEZ
    4   = CR CARTORIO
    8   = PT PROTESTO
    16  = SR SERASA
    32  = SP SPC
    64  = JU JURIDICO
    128 = CO COBRANCA
   }
begin
     Texto := '' ;


     ChequeDESCRICAO_LOCAIS.VALUE := TEXTO ;
end;

procedure TDmFinanceiro.MensalidadesAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmFinanceiro.MensalidadesPESSOA_FJValidate(Sender: TField);
begin
     Valida_Cliente.Close ;

     Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Cliente.Prepare ;
     Valida_Cliente.Open ;

     If Valida_ClientePESSOA_FJ.isNull
     then Begin
          Showmessage ('Cliente Inexistente!');
          Abort;
     end;

     If Not Valida_ClienteOBS.isNull
     then Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.DSource.DataSet := Valida_Cliente ;
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
     end;

     If Not Valida_ClienteCLASSIFICACAO.isNull
     then Begin
          Clas := Valida_ClienteCLASSIFICACAO.Value ;

          //Confere se a Classificacao Pede Senha
          Geral.Close ;
          Geral.Sql.Clear ;
          Geral.Params.Clear ;

          Geral.Params.CreateParam ( FtString , 'E', PtInput );
          Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

          Geral.Sql.Add (' Select Nome, Dig_Senha from Glo_Classificacao Where Codigo = :C and CNPJ = :E ');

          Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
          Geral.ParamByName ('C').AsInteger := Clas         ;

          Geral.Prepare ;
          Geral.Open ;

          If Not Geral.Fields[0].isNull
          then Begin
               NomeClas := Geral.Fields[0].Value ;
          end
          Else
              NomeClas := 'Não Informada';

          If Not Geral.Fields[1].isNull
          then Begin
               Dig_Senha := Geral.Fields[1].Value ;
          end
          else begin
               Dig_Senha := 'N' ;
          end;

          Geral.Close ;

          Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

          FrmMensagemClassificacao.MEMO.Lines.Add (NomeClas);

          If Dig_Senha = 'S'
          Then Begin
               FrmMensagemClassificacao.EdSenha.Visible := true ;
               FrmMensagemClassificacao.Label6.Visible  := true ;
               //Se o Nível ou a Classificacao exigir senha e não foi digitada
               if FrmMensagemClassificacao.Showmodal = MrCancel
               then Begin
                    MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
                    Abort ;
               end;
          end
          else begin
               FrmMensagemClassificacao.EdSenha.Visible := false ;
               FrmMensagemClassificacao.Label6.Visible  := false ;
               FrmMensagemClassificacao.Showmodal ;
          end;

          FrmMensagemClassificacao.Free ;
          FrmMensagemClassificacao := Nil;
     end;

     If Not Valida_ClienteNOME.isNull
     then Begin
          MensalidadesNOME.Value := Valida_ClienteNOME.Value ;
     end ;
end;

procedure TDmFinanceiro.Baixas_Receber_VendedorCalcFields( DataSet: TDataSet);
begin
     Baixas_Receber_VendedorAtraso.value := TRUNC(Baixas_Receber_VendedorDT_BAIXA.value - Baixas_Receber_VendedorDT_VENCTO.value);

     Baixas_Receber_VendedorTotal.Value  := Baixas_Receber_VendedorVLR_BAIXA.VALUE ;
end;

procedure TDmFinanceiro.Baixas_Pagar_HistCalcFields(DataSet: TDataSet);
begin
     Baixas_Pagar_HistTotal.Value := Baixas_Pagar_HistVLR_BAIXA.VALUE ;
end;

procedure TDmFinanceiro.Contas_ReceberBeforeDelete(DataSet: TDataSet);
begin
  if (dmFinanceiro2.VerificaReceber(Contas_ReceberCODIGO.value,Contas_ReceberPESSOA_FJ.Value) > 0) then
  begin
    Application.MessageBox(Pchar('Impossível excluir:'+#13+'Existem movimentos de baixa relacionados ao registro'),'Aviso',mb_ok+mb_iconerror);
    abort;
  end;
  DMApp.LOG_TRANSACOES ( Contas_ReceberDOCTO.TEXT, 'REC' );
end;

procedure TDmFinanceiro.Contas_PagarBeforeDelete(DataSet: TDataSet);
begin
  if (dmFinanceiro2.VerificaPagar(Contas_PagarCODIGO.value,Contas_PagarPESSOA_FJ.Value) > 0) then
  begin
    Application.MessageBox(Pchar('Impossível excluir:'+#13+'Existem movimentos de baixa relacionados ao registro'),'Aviso',mb_ok+mb_iconerror);
    abort;
  end;

  DMApp.LOG_TRANSACOES ( Contas_PagarDOCTO.TEXT, 'PGR' );
end;

procedure TDmFinanceiro.ChequeBeforeDelete(DataSet: TDataSet);
begin
  DMApp.LOG_TRANSACOES ( ChequeCHEQUE.TEXT, 'CHQ' );
end;

procedure TDmFinanceiro.Cheque_CtbBeforeDelete(DataSet: TDataSet);
begin
     DMApp.LOG_TRANSACOES ( Cheque_CtbCHEQUE.TEXT, 'CHQ' );
end;

procedure TDmFinanceiro.AbastecimentosPESSOA_FJValidate(Sender: TField);
begin
     Valida_Cliente.Close ;

     Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Cliente.ParamByName ('CODIGO').AsInteger := Sender.Value ;

     Valida_Cliente.Prepare ;
     Valida_Cliente.Open ;

     If Valida_ClientePESSOA_FJ.isNull
     then Begin
          Showmessage ('Cliente Inexistente!');
          Abort;
     end;

     If Not Valida_ClienteLIMITE_TEMPO.isNull
     then Begin
          Ven_Limite_Tempo  := Valida_ClienteLIMITE_TEMPO.Value ;
     end
     else begin
          Ven_Limite_Tempo  := 0 ;
     end;

     If Not Valida_ClienteLIMITE_CREDITO.isNull
     then Begin
          Ven_Limite_Credito  := Valida_ClienteLIMITE_CREDITO.Value ;
     end
     else begin
          ven_Limite_Credito  := 0 ;
     end;

     If Not Valida_ClienteCLASSIF.isNull
     Then Begin
          Classificacao  := Valida_ClienteCLASSIF.Value ;
     end
     else begin
          Classificacao  := 'B' ;
     end;

     If Not Valida_ClienteBLOQUEADO.isNull
     then Begin
          Bloqueado  := Valida_ClienteBLOQUEADO.Value ;
     end
     else begin
          Bloqueado  := 'N' ;
     end;

     If Not Valida_ClienteOBS.isNull
     then Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.DSource.DataSet := Valida_Cliente ;
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
     end;

     If Not Valida_ClienteCLASSIFICACAO.isNull
     then Begin
          Clas := Valida_ClienteCLASSIFICACAO.Value ;

          //Confere se a Classificacao Pede Senha
          Geral.Close ;
          Geral.Sql.Clear ;
          Geral.Params.Clear ;

          Geral.Params.CreateParam ( FtString , 'E', PtInput );
          Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

          Geral.Sql.Add (' Select Nome, Dig_Senha from Glo_Classificacao Where Codigo = :C and CNPJ = :E ');

          Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
          Geral.ParamByName ('C').AsInteger := Clas         ;

          Geral.Prepare ;
          Geral.Open ;

          If Not Geral.Fields[0].isNull
          then Begin
               NomeClas := Geral.Fields[0].Value ;
          end
          Else
              NomeClas := 'Não Informada';

          If Not Geral.Fields[1].isNull
          then Begin
               Dig_Senha := Geral.Fields[1].Value ;
          end
          else begin
               Dig_Senha := 'N' ;
          end;

          Geral.Close ;

          Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

          FrmMensagemClassificacao.MEMO.Lines.Add (NomeClas);

          If Dig_Senha = 'S'
          Then Begin
               FrmMensagemClassificacao.EdSenha.Visible := true ;
               FrmMensagemClassificacao.Label6.Visible  := true ;
               //Se o Nível ou a Classificacao exigir senha e não foi digitada
               if FrmMensagemClassificacao.Showmodal = MrCancel
               then Begin
                    MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
                    Abort ;
               end;
          end
          else begin
               FrmMensagemClassificacao.EdSenha.Visible := false ;
               FrmMensagemClassificacao.Label6.Visible  := false ;
               FrmMensagemClassificacao.Showmodal ;
          end;

          FrmMensagemClassificacao.Free ;
          FrmMensagemClassificacao := Nil;
     end;

end;

procedure TDmFinanceiro.Baixas_Receber_CaixaCalcFields(DataSet: TDataSet);
begin
     Baixas_Receber_CaixaAtraso.value := Baixas_Receber_CaixaDT_BAIXA.value - Baixas_Receber_CaixaDT_VENCTO.value ;
     Baixas_Receber_CaixaTotal.Value  := Baixas_Receber_CaixaVLR_BAIXA.VALUE ;
end;

procedure TDmFinanceiro.VerCheque_MagneticoCalcFields(DataSet: TDataSet);
begin
     VerCheque_MagneticoTotal.Value := VerCheque_MagneticoVALOR.Value + VerCheque_MagneticoJuros.value;
end;

procedure TDmFinanceiro.Local_CobrancaBeforePost(DataSet: TDataSet);
begin
  If Dataset.State = dsInsert  Then
     Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase(Dataset.Name), 1);
end;

procedure TDmFinanceiro.RecibosPagasAfterInsert(DataSet: TDataSet);
begin
  RecibosPagasCNPJ.Value := DMApp.Cnpj;
  RecibosPagasIMPRESSO.Value := 'N';
  RecibosPagasCODIGO.Value := DMApp.GerarCodigo('RECIBOPAGAS', 0) + 1;
end;

procedure TDmFinanceiro.RecibosPagasBeforePost(DataSet: TDataSet);
begin
  if RecibosPagas.State = dsInsert then
    RecibosPagasCODIGO.Value := DMApp.GerarCodigo('RECIBOPAGAS', 1);
end;

procedure TDmFinanceiro.Cria_ReciboPagar(Dt_Vencto: TDateTime;
  Docto: String; Dt_Lancto: TDateTime; Valor: Real; Historico: String;
  Pessoa_Fj: Integer);
Var
   Favorecido, Cpf_Cnpj: String;
   Codigo : Integer;
begin
  if Application.MessageBox('Gerar Recibo para o Pagamento?','Opção',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = mryes then
    with spCriaReciboPagas do
    begin
      ParamByName('cnpj').Value := DMApp.Cnpj;
      ParamByName('dt_vencto').Value := Dt_Vencto;
      ParamByName('docto').Value := Docto;
      ParamByName('dt_lancto').Value := Dt_Lancto;
      ParamByName('valor').Value := valor;
      ParamByName('historico').Value := Historico;
      ParamByName('impresso').Value := 'N';
      ParamByName('pessoa_fj').Value := Pessoa_Fj;
      ExecProc;
      if parambyname('Codigo').isnull
      then
          Codigo := 0
      else
          Codigo := parambyname('Codigo').Value ;

      Close ;

      Transaction.CommitRetaining;

      if Application.MessageBox('Imprimir Recibo?','Opção',MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = mryes then
        begin
             Ver_Pessoa.Close ;

             VerPessoa( Pessoa_Fj )  ;
             Favorecido := Ver_Pessoanome_razao.Value ;
             Cpf_Cnpj   := Ver_PessoaCPF_CGC.Value    ;

             dmRelatorios2.ImprimeReciboPagar
             (
              Codigo, DmApp.Nome, Dt_Vencto, Docto, Dt_Lancto, Valor, Historico,
              Cpf_Cnpj, Pessoa_Fj, Favorecido
             );


             Ver_Pessoa.close ;
        end;
    end;
end;

procedure TDmFinanceiro.RecibosPagasBeforeOpen(DataSet: TDataSet);
begin
  RecibosPagas.ParamByName('cnpj').Value := DMApp.Cnpj;
end;




procedure TDmFinanceiro.ChequeBeforeEdit(DataSet: TDataSet);
begin
  qValidaAltCheque.Open;
  if qValidaAltChequeCAIXAFECHADO.Value = 'S' then
  begin
    ChequePESSOA_FJ.ReadOnly := True;
    ChequeVALOR.ReadOnly := True;
  end
  else begin
    ChequePESSOA_FJ.ReadOnly := False;
    ChequeVALOR.ReadOnly := False;
  end;
  qValidaAltCheque.Close;
end;

procedure TDmFinanceiro.IBDataSet1CalcFields(DataSet: TDataSet);
begin
  VerChequeTotal.Value := VerChequeVALOR.Value + VerChequeJuros.value;
end;

procedure TDmFinanceiro.qChequeRemessaBeforeOpen(DataSet: TDataSet);
begin
  VerCheque.ParamByName('cnpj').Value := DMApp.Cnpj;
end;

procedure TDmFinanceiro.qTotalConcBeforeOpen(DataSet: TDataSet);
begin
  TIBQuery(DataSet).ParamByName('cnpj').Value := DMApp.Cnpj;
end;

procedure TDmFinanceiro.VerChequeBeforeOpen(DataSet: TDataSet);
begin
  TIBDataSet(DataSet).ParamByName('cnpj').Value := dmApp.Cnpj;
end;

procedure TDmFinanceiro.qValidaAltChequeBeforeOpen(DataSet: TDataSet);
begin
  TIBQuery(DataSet).ParamByName('cnpj').Value := DMApp.Cnpj;
  TIBQuery(DataSet).ParamByName('banco').Value := ChequeBANCO.Value;
  TIBQuery(DataSet).ParamByName('conta').Value := ChequeCONTA.Value;
  TIBQuery(DataSet).ParamByName('cheque').Value := ChequeCHEQUE.Value;
end;

procedure TDmFinanceiro.CobrancaPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
begin
     IF UPPERCASE(COPY(( EDatabaseError(E).MESSAGE ),1,34)) = 'VIOLATION OF PRIMARY OR UNIQUE KEY'
     THEN BEGIN
          ShowMessage('Já Existe um Agendamento para esta Data, Verifique!');
          Action:= daAbort;
     END;
end;



procedure TDmFinanceiro.VerRecebidasConvenioCalcFields(DataSet: TDataSet);
begin
     VerRecebidasConvenioTotal.Value := VerRecebidasConvenioValor.Value - VerRecebidasConvenioVlr_Parcial.Value +
     VerRecebidasConvenioJUROS_REC.VALUE - VerRecebidasConvenioDescontos.VALUE ;
end;

Procedure TDmFinanceiro.Insere_NotaFatura ( Codigo: Integer; Ano: Integer; Fatura: Integer );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction then
            DmaPP.TransactionProc.StartTransaction ;

        //
        If DMProcs5 = Nil Then
          DMProcs5 := TDMProcs5.Create(Self);

        DMProcs5.Insere_Nota_Fatura.transaction := DmaPP.TransactionProc;
        DMProcs5.Insere_Nota_Fatura.ParamByName('CNPJ').asString  := DmApp.Cnpj    ;
        DMProcs5.Insere_Nota_Fatura.ParamByName('CODIGO').asInteger := Codigo;
        DMProcs5.Insere_Nota_Fatura.ParamByName('ANO').asInteger := Ano;
        DMProcs5.Insere_Nota_Fatura.ParamByName('FATURA').asInteger := Fatura;
        DMProcs5.Insere_Nota_Fatura.ExecProc ;
        DmApp.TransactionProc.Commit;

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

           If DmaPP.TransactionProc.InTransaction
           then
               DmApp.TransactionProc.Rollback ;
     end;
end;

procedure TDmFinanceiro.VerReceberADMBeforeOpen(DataSet: TDataSet);
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

procedure TDmFinanceiro.VerReceberADMCalcFields(DataSet: TDataSet);
Var
   Dias: Integer ;
   juros, VlrOriginal: real;
   Data : TDate;
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

//     Dias := trunc(DmaPP.DataCaixa - Data);
     Dias := trunc(DmaPP.Data_Servidor - Data);
     if Dias < 0 then
       Dias := 0;

     TIBQuery(DataSet).FieldByName('ATRASO').Value := Dias ;

     //se havemos de cobrar juros
     if ((Dias > 0) and (dias > dmapp.TOLERANCIA_JUROS) and (VlrOriginal > 0)) then
     begin //Data_Servidor
       TIBQuery(DataSet).FieldByName('Juros_Calculadors').Value := arredonda(CALCULAJUROS(Data,DmaPP.Data_Servidor,TIBQuery(DataSet).FieldByName('TOTAL').Value,0 ),2);
       //aplicando o valor de multa no total
      //VerReceberTotal.Value := arredonda(VerReceberTotal.Value + ( DmApp.MULTA_FINANCEIRA * VerReceberTotal.Value)/100,2);
     end
     else
       TIBQuery(DataSet).FieldByName('Juros_Calculadors').Value := 0;
                                                                                   //aqui não pode ser o juros calculadors
     //Não sei pra que esse negócio..
     TIBQuery(DataSet).FieldByName('Selecao').Value := VlrOriginal + TIBQuery(DataSet).FieldByName('JUROS_PARCIAL').asfloat ;

     //explicação deste codigo esta no oncalcfilelds de VerReceberAdm
     TIBQuery(DataSet).FieldByName('Total_Nominal').value := arredonda(TIBQuery(DataSet).FieldByName('Total').value
                                                            + TIBQuery(DataSet).FieldByName('JUROS_PARCIAL').asfloat,2) ;

     TIBQuery(DataSet).FieldByName('Juros_Conta').value := Arredonda(TIBQuery(DataSet).FieldByName('JUROS_PARCIAL').asfloat,2);
//
end;

procedure TDmFinanceiro.VerReceberADMAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TDmFinanceiro.LancaCartao;
begin
  IF DmApp.DIG_CARTAO_VENDA = 'S' THEN
  BEGIN
      FrmCartao_Venda := TFrmCartao_Venda.Create(Self);
      FrmCartao_Venda.ShowModal;
      FrmCartao_Venda.Free ;
      FrmCartao_Venda := Nil;
  END;
end;

procedure TDmFinanceiro.VerReceberAfterOpen(DataSet: TDataSet);
begin
 // showmessage('Conta:'+VerReceberCodigo.asstring+' Vlr:'+floattostr(VerREceberJuros_Parcial.value));
end;

procedure TDmFinanceiro.Consulta_Cobranca1BeforeOpen(DataSet: TDataSet);
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

procedure TDmFinanceiro.Autenticar(Texto: String);
Var
   Int_Retorno: Integer;
   Str_Vias, Str_Texto_Autenticacao, Str_Tempo_Espera: String;
begin
end;

procedure TDmFinanceiro.Contas_PagarDOCTOValidate(Sender: TField);
begin
     //
     IF (( Contas_PagarPESSOA_FJ.value > 0 ) and ( FrmReceberParcelamento = nil ))
     THEN BEGIN
          If DmaPP.Confere_Docto_Pagar ( Contas_PagarDOCTO.value, Contas_PagarPESSOA_FJ.value, Contas_PagarCODIGO.VALUE, Contas_PagarANO.VALUE ) > 0
          THEN BEGIN
          IF MESSAGEDLG ( 'Documento Duplicado, Confirmar?', MtInformation, [mbok, mbcancel], 0 ) <> MrOk
          then
              abort;
          END;
     END;

end;

procedure TDmFinanceiro.Consulta_CobrancaBeforeOpen(DataSet: TDataSet);
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

procedure TDmFinanceiro.qryVerFatPendenciaCalcFields(DataSet: TDataSet);
begin
  qryVerFatPendenciaTotal.Value := qryVerFatPendenciaVALOR.value + qryVerFatPendenciaJUROS.value - qryVerFatPendenciaDESCONTO.Value;
end;

procedure TDmFinanceiro.qryVerRecPendenciaCalcFields(DataSet: TDataSet);
begin
  qryVerRecPendenciaTotal.Value   := qryVerRecPendenciaValor.Value - (qryVerRecPendenciaVlr_Parcial.Value + qryVerRecPendenciaDescontos.VALUE);
end;

procedure TDmFinanceiro.OnCalcDataSetReceber(DataSet: TDataSet);
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

procedure TDmFinanceiro.Receber_Data_AnaliticoCalcFields(DataSet: TDataSet);
var
  VlrOriginal: Currency;
  Dias: Integer;
  Data : Tdate;
begin
 {VlrOriginal := Receber_Data_AnaliticoSoma.Value;

  //Verificando se a ultima baixa será utilizado como parâmetro para o calculo de juros
     Dias := trunc(DmaPP.DataCaixa - Data);
     if Dias < 0 then
       Dias := 0;

     VerReceberConvenioATRASO.Value := Dias ;

     //se havemos de cobrar juros
     if ((Dias > 0) and (dias > dmapp.TOLERANCIA_JUROS)) then
       VerReceberConvenioJuros_Calculadors.Value := arredonda(CALCULAJUROS(Data,DmaPP.DataCaixa,VerReceberConvenioTOTAL.Value,0 ),2)
     else
       VerReceberConvenioJuros_Calculadors.Value := 0;

     //explicação deste codigo esta no oncalcfilelds de VerReceberAdm
     VerReceberConvenioTotal_Nominal.value := arredonda(VerReceberConvenioTotal.value + VerReceberConvenioJuros_Calculadors.Value,2) ;}

end;

procedure TDmFinanceiro.qryImpBoletoCalcFields(DataSet: TDataSet);
var
  dias : integer;
  Data : Tdate;
  VlrOriginal : Real;
begin
     qryImpBoletoTotal.Value := qryImpBoletoValor.Value - (qryImpBoletoVlr_Parcial.Value - qryImpBoletoDescontos.VALUE);
     VlrOriginal := qryImpBoletoTotal.Value;

     if (qryImpBoletoData_Ult_Baixa.value < qryImpBoletoDT_VENCTO.value) then
       Data := qryImpBoletoDT_VENCTO.Value
     else
       Data := qryImpBoletoData_Ult_Baixa.Value;

//     Dias := trunc(DmaPP.DataCaixa - Data);
     Dias := trunc(DmaPP.Data_Servidor - Data);
     if Dias < 0 then
       Dias := 0;

    if ((Dias > 0) and (dias > dmapp.TOLERANCIA_JUROS)) then
    begin
   // qryImpBoletoJuros_Calculados.Value := arredonda(CALCULAJUROS(Data,DmaPP.DataCaixa,qryImpBoletoTOTAL.Value,0 ),2);
      qryImpBoletoJuros_Calculados.Value := arredonda(CALCULAJUROS(Data,DmaPP.Data_Servidor,qryImpBoletoTOTAL.Value,0 ),2);
      //aplicando o valor de multa no total
      //qryImpBoletoTotal.Value := arredonda(qryImpBoletoTotal.Value + ( DmApp.MULTA_FINANCEIRA * qryImpBoletoTotal.Value)/100,2);
    end
    else
       qryImpBoletoJuros_Calculados.Value := 0;

    qryImpBoletoTotal_Nominal.value := VlrOriginal + qryImpBoletoJuros_Calculados.Value ;
end;

procedure TDmFinanceiro.qryVerPagarSelCalcFields(DataSet: TDataSet);
var
  Data : TDate;
  Juros, Total : Currency;
begin
  qryVerPagarSelTotal.Value := qryVerPagarSelValor.Value;
end;

procedure TDmFinanceiro.DesdChequeCtbAfterPost(DataSet: TDataSet);
begin
  ESTADO_CTB := 'N';
end;

procedure TDmFinanceiro.DesdChequeCtbNewRecord(DataSet: TDataSet);
begin
  DesdChequeCtbCONTA.value    := SelPlanoCONTA.value ;
  DesdChequeCtbORIGEM.VALUE   := 'M' ;
  DesdChequeCtbNOMINAL.VALUE  := 'S' ;
  DesdChequeCtbCNPJ.Value     := DMApp.Cnpj
end;

procedure TDmFinanceiro.DesdChequeCtbCONTAValidate(Sender: TField);
var
  UltCheque : Variant;
begin
  UltCheque := RetornaValor('select ultimo_cheque from ctb_planoconta p where p.cnpj ='+
                            QuotedStr(DMApp.cnpj)+' and p.conta ='+IntToStr(Sender.Value),dmapp.TransactionAux);

  if not(VarIsNull(UltCheque)) then
    DesdChequeCtbCHEQUE.value := UltCheque + 1;
end;

procedure TDmFinanceiro.Consulta_Cobranca3CalcFields(DataSet: TDataSet);
begin
//  Consulta_Cobranca3TOTAL.value := Consulta_Cobranca3SOMA.value;
end;

procedure TDmFinanceiro.Cheque_CtbNOMINALGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (sender.Value = 'S') then
    text := 'Sim'
  else
    text := 'Não';
end;

procedure TDmFinanceiro.Cheque_CtbNOMINALSetText(Sender: TField;
  const Text: String);
begin
  if (text = 'Sim') then
    sender.Value := 'S'
  else
    sender.Value := 'N';
end;

end.
