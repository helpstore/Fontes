 unit Pdv_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, Serial, IBQuery, ExtCtrls, IBStoredProc, RDprint,
    Printers, IBSQL, variants, ppDB, ppParameter,
  ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDBPipe, ppModule, daDataModule, dxmdaset, ACBrBase,
  ACBrExtenso;

type
   TAliquotas= array [0..6]   of String[5];
   TTexto2   = array [0..2]   of char;
   TTexto3   = array [0..3]   of char;
   TTexto4   = array [0..4]   of char;
   TTexto5   = array [0..5]   of char;
   TTexto6   = array [0..6]   of char;
   TTexto7   = array [0..7]   of char;
   TTexto8   = array [0..8]   of char;
   TTexto15  = array [0..15]  of char;
   TTexto18  = array [0..18]  of char;
   TTexto20  = array [0..20]  of char;
   TTexto30  = array [0..30]  of char;
   TTexto40  = array [0..40]  of char;
   TTexto48  = array [0..48]  of char;
   TTexto50  = array [0..50]  of char;
   TTexto70  = array [0..70]  of char;
   TTexto80  = array [0..80]  of char;
   TTexto120 = array [0..120] of char;
   TTexto160 = array [0..160] of char;
   TTexto200 = array [0..200] of char;
   TTexto255 = array [0..255] of char;
   TTexto300 = array [0..300] of char;
   TPontoFlutuante = array [0..16] of char;
   TInteiro = array [0..5] of char;
   TTributacao = array [0..4] of char;
   TData = array [0..7] of char;
   THora = array [0..5] of char;
   TBooleano = char;  // 0 = Falso e 1 = Verdadeiro
   TAcresDesc = char; //
   TPercValor = char; // 0 indica Percentual e 1 indica valor

type
  TDmPdv = class(TDataModule)
    DsPdv: TDataSource;
    Pdv_Itens: TIBDataSet;
    Pdv_ItensCNPJ: TIBStringField;
    Pdv_ItensCODIGO: TIntegerField;
    Pdv_ItensDESCONTO: TFloatField;
    Pdv_ItensPRC_CUSTO: TFloatField;
    Pdv_ItensPRC_UNIT_ORIGINAL: TFloatField;
    Pdv_ItensPRC_UNITARIO: TFloatField;
    Pdv_ItensPRODUTO: TIBStringField;
    Pdv_ItensQUANTIDADE: TFloatField;
    Pdv_ItensSEQUENCIA: TSmallintField;
    Pdv_ItensALIQUOTA: TIBStringField;
    Geral: TIBQuery;
    Captura: TTimer;
    Pdv_ItensTotal: TFloatField;
    Leitor: TSerialPort;
    Balanca: TSerialPort;
    Pdv: TIBDataSet;
    PdvCARTAO: TFloatField;
    PdvCHEQUE: TFloatField;
    PdvCNPJ: TIBStringField;
    PdvCODIGO: TIntegerField;
    PdvUSUARIO: TIntegerField;
    Empresa: TIBQuery;
    EmpresaCNPJ: TIBStringField;
    EmpresaPDV_MSG1: TIBStringField;
    EmpresaPDV_MSG2: TIBStringField;
    EmpresaPDV_MSG3: TIBStringField;
    EmpresaPDV_MSG4: TIBStringField;
    EmpresaPDV_MSG5: TIBStringField;
    EmpresaMENS_ECF: TIBStringField;
    EmpresaFONE: TIBStringField;
    EmpresaFAX: TIBStringField;
    PessoaCpf: TIBQuery;
    PessoaCpfCODIGO: TIntegerField;
    PessoaCpfNOME_RAZAO: TIBStringField;
    PessoaCpfFANTASIA: TIBStringField;
    PessoaCpfCOD_ATIVIDADE: TIntegerField;
    PessoaCpfATIVIDADE: TIBStringField;
    PessoaCpfCOD_ENDERECO: TIntegerField;
    PessoaCpfENDERECO: TIBStringField;
    PessoaCpfNUMERO: TIBStringField;
    PessoaCpfCOMPLEMENTO: TIBStringField;
    PessoaCpfCOD_BAIRRO: TIntegerField;
    PessoaCpfBAIRRO: TIBStringField;
    PessoaCpfCOD_CIDADE: TIntegerField;
    PessoaCpfCIDADE: TIBStringField;
    PessoaCpfUF: TIBStringField;
    PessoaCpfCEP: TIBStringField;
    PessoaCpfFONE: TIBStringField;
    PessoaCpfFAX: TIBStringField;
    PessoaCpfCELULAR: TIBStringField;
    PessoaCpfPESSOA: TIBStringField;
    PessoaCpfCPF_CGC: TIBStringField;
    PessoaCpfRG_IE: TIBStringField;
    PessoaCpfCONTATO: TIBStringField;
    PessoaCpfDT_NASCIMENTO: TDateTimeField;
    PessoaCpfDT_CADASTRO: TDateTimeField;
    PessoaCpfEMAIL: TIBStringField;
    PessoaCpfOBS: TBlobField;
    PessoaCpfINSC_MUNIC: TIBStringField;
    PessoaNome: TIBQuery;
    PessoaNomeCODIGO: TIntegerField;
    PessoaNomeNOME_RAZAO: TIBStringField;
    PessoaNomeFANTASIA: TIBStringField;
    PessoaNomeCOD_ATIVIDADE: TIntegerField;
    PessoaNomeATIVIDADE: TIBStringField;
    PessoaNomeCOD_ENDERECO: TIntegerField;
    PessoaNomeENDERECO: TIBStringField;
    PessoaNomeNUMERO: TIBStringField;
    PessoaNomeCOMPLEMENTO: TIBStringField;
    PessoaNomeCOD_BAIRRO: TIntegerField;
    PessoaNomeBAIRRO: TIBStringField;
    PessoaNomeCOD_CIDADE: TIntegerField;
    PessoaNomeCIDADE: TIBStringField;
    PessoaNomeUF: TIBStringField;
    PessoaNomeCEP: TIBStringField;
    PessoaNomeFONE: TIBStringField;
    PessoaNomeFAX: TIBStringField;
    PessoaNomeCELULAR: TIBStringField;
    PessoaNomePESSOA: TIBStringField;
    PessoaNomeCPF_CGC: TIBStringField;
    PessoaNomeRG_IE: TIBStringField;
    PessoaNomeCONTATO: TIBStringField;
    PessoaNomeDT_NASCIMENTO: TDateTimeField;
    PessoaNomeDT_CADASTRO: TDateTimeField;
    PessoaNomeEMAIL: TIBStringField;
    PessoaNomeOBS: TBlobField;
    PessoaNomeINSC_MUNIC: TIBStringField;
    PessoaCod: TIBQuery;
    PessoaCodCODIGO: TIntegerField;
    PessoaCodNOME_RAZAO: TIBStringField;
    PessoaCodFANTASIA: TIBStringField;
    PessoaCodCOD_ATIVIDADE: TIntegerField;
    PessoaCodATIVIDADE: TIBStringField;
    PessoaCodCOD_ENDERECO: TIntegerField;
    PessoaCodENDERECO: TIBStringField;
    PessoaCodNUMERO: TIBStringField;
    PessoaCodCOMPLEMENTO: TIBStringField;
    PessoaCodCOD_BAIRRO: TIntegerField;
    PessoaCodBAIRRO: TIBStringField;
    PessoaCodCOD_CIDADE: TIntegerField;
    PessoaCodCIDADE: TIBStringField;
    PessoaCodUF: TIBStringField;
    PessoaCodCEP: TIBStringField;
    PessoaCodFONE: TIBStringField;
    PessoaCodFAX: TIBStringField;
    PessoaCodCELULAR: TIBStringField;
    PessoaCodPESSOA: TIBStringField;
    PessoaCodCPF_CGC: TIBStringField;
    PessoaCodRG_IE: TIBStringField;
    PessoaCodCONTATO: TIBStringField;
    PessoaCodDT_NASCIMENTO: TDateTimeField;
    PessoaCodDT_CADASTRO: TDateTimeField;
    PessoaCodEMAIL: TIBStringField;
    PessoaCodOBS: TBlobField;
    PessoaCodINSC_MUNIC: TIBStringField;
    VerProduto: TIBQuery;
    VerProdutoPRC_REPOS: TIBBCDField;
    VerProdutoPRC_VENDA: TIBBCDField;
    VerProdutoVOLUME: TIBBCDField;
    VerProdutoPESO_LIQ: TIBBCDField;
    VerProdutoUNIDADE: TIBStringField;
    VerProdutoNOME: TIBStringField;
    VerProdutoATIVO: TIBStringField;
    VerProdutoALIQUOTA_ECF: TIBStringField;
    VerProdutoPESAVEL: TIBStringField;
    ConsultaProd: TIBQuery;
    ConsultaProdPRC_REPOS: TIBBCDField;
    ConsultaProdPRC_VENDA: TIBBCDField;
    ConsultaProdVOLUME: TIBBCDField;
    ConsultaProdPESO_LIQ: TIBBCDField;
    ConsultaProdUNIDADE: TIBStringField;
    ConsultaProdNOME: TIBStringField;
    ConsultaProdATIVO: TIBStringField;
    ConsultaProdALIQUOTA_ECF: TIBStringField;
    ConsultaProdPESAVEL: TIBStringField;
    PessoaCpfBLOQUEADO: TIBStringField;
    PessoaNomeBLOQUEADO: TIBStringField;
    PessoaCodBLOQUEADO: TIBStringField;
    PessoaCpfASSINA_NOTA: TIBStringField;
    PessoaNomeASSINA_NOTA: TIBStringField;
    PessoaCodASSINA_NOTA: TIBStringField;
    PessoaCheque: TIBQuery;
    PessoaChequeCODIGO: TIntegerField;
    PessoaChequeNOME_RAZAO: TIBStringField;
    PessoaChequeFANTASIA: TIBStringField;
    PessoaChequeCOD_ATIVIDADE: TIntegerField;
    PessoaChequeATIVIDADE: TIBStringField;
    PessoaChequeCOD_ENDERECO: TIntegerField;
    PessoaChequeENDERECO: TIBStringField;
    PessoaChequeNUMERO: TIBStringField;
    PessoaChequeCOMPLEMENTO: TIBStringField;
    PessoaChequeCOD_BAIRRO: TIntegerField;
    PessoaChequeBAIRRO: TIBStringField;
    PessoaChequeCOD_CIDADE: TIntegerField;
    PessoaChequeCIDADE: TIBStringField;
    PessoaChequeUF: TIBStringField;
    PessoaChequeCEP: TIBStringField;
    PessoaChequeFONE: TIBStringField;
    PessoaChequeFAX: TIBStringField;
    PessoaChequeCELULAR: TIBStringField;
    PessoaChequePESSOA: TIBStringField;
    PessoaChequeCPF_CGC: TIBStringField;
    PessoaChequeRG_IE: TIBStringField;
    PessoaChequeCONTATO: TIBStringField;
    PessoaChequeDT_NASCIMENTO: TDateTimeField;
    PessoaChequeDT_CADASTRO: TDateTimeField;
    PessoaChequeEMAIL: TIBStringField;
    PessoaChequeOBS: TBlobField;
    PessoaChequeINSC_MUNIC: TIBStringField;
    PessoaChequeBLOQUEADO: TIBStringField;
    PessoaChequeASSINA_NOTA: TIBStringField;
    CANCELA_ITEM_GENERICO_PDV: TIBStoredProc;
    PdvPESSOA_FJ: TIntegerField;
    PdvNOME: TIBStringField;
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
    Ver_PessoaRG_IE: TIBStringField;
    Ver_PessoaCONTATO: TIBStringField;
    Ver_PessoaDT_NASCIMENTO: TDateTimeField;
    Ver_PessoaDT_CADASTRO: TDateTimeField;
    Ver_PessoaEMAIL: TIBStringField;
    Ver_PessoaOBS: TBlobField;
    Ver_PessoaINSC_MUNIC: TIBStringField;
    PdvFECHADA: TIBStringField;
    PdvVENDEDOR: TIntegerField;
    PdvNATUREZA: TIntegerField;
    PdvENVIADA_CX: TIBStringField;
    PdvFORMA_PGTO: TIntegerField;
    PdvNUM_NF: TIntegerField;
    PdvNUM_CUPOM: TIntegerField;
    PdvPROPRIEDADE: TIntegerField;
    PdvCONVENIADO: TIntegerField;
    PdvDESC_ACRES: TFloatField;
    PdvENTRADA: TFloatField;
    PdvVLR_PARC_LC: TFloatField;
    PdvTIPO_VENDA: TIBStringField;
    PdvNOME_CONSUMIDOR: TIBStringField;
    PdvTOTAL_NOTA: TFloatField;
    PdvSELECIONADA: TIBStringField;
    PdvUF: TIBStringField;
    PdvVALIDADE: TDateTimeField;
    PdvDATA_CAIXA: TDateTimeField;
    Pdv_ItensNOME_PRODUTO: TIBStringField;
    PdvDINHEIRO: TFloatField;
    PdvTICKET: TFloatField;
    PdvTOTAL: TFloatField;
    PdvTROCO: TFloatField;
    PdvCANCELADA: TIBStringField;
    Pdv_ItensUNIDADE: TIBStringField;
    Pdv_ItensSUBUNIDADE: TIntegerField;
    SelVendedorPdv: TIBQuery;
    SelVendedorPdvCNPJ: TIBStringField;
    SelVendedorPdvCODIGO: TIntegerField;
    SelVendedorPdvNOME: TIBStringField;
    SelVendedorPdvCOM_VISTA: TFloatField;
    SelVendedorPdvCOM_PRAZO: TFloatField;
    SelVendedorPdvPESSOA_FJ: TIntegerField;
    SelVendedorPdvSENHA: TIBStringField;
    PdvNOME_VENDEDOR: TIBStringField;
    PdvCONS_REV: TIBStringField;
    Pdv_ItensGRADE: TIBStringField;
    Pdv_ItensNUMERO: TIBStringField;
    Lista_Grades: TIBQuery;
    Lista_GradesGRADE: TIBStringField;
    Lista_GradesMATERIAL: TIntegerField;
    Lista_GradesCOR: TIntegerField;
    Lista_GradesESTOQUE: TIBBCDField;
    Lista_GradesNOME_MATERIAL: TIBStringField;
    Lista_GradesNOME_COR: TIBStringField;
    Lista_GradesPERFIL: TIntegerField;
    Lista_GradesNOME_PERFIL: TIBStringField;
    Lista_GradesNUMERO: TIBStringField;
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
    ChequeJUROS: TFloatField;
    ChequeMOEDA1: TFloatField;
    ChequeMOEDA2: TFloatField;
    ChequeTIPO: TIBStringField;
    ChequeDATA_ACERTO: TDateTimeField;
    ChequeDATA_CAIXA: TDateTimeField;
    ChequeUSUARIO: TIntegerField;
    ChequeDIGITO_AGENCIA: TIBStringField;
    ChequeDIGITO_CONTA: TIBStringField;
    ChequeDIGITO_CHEQUE: TIBStringField;
    ChequeORIGEM: TIBStringField;
    ChequeTURNO: TIntegerField;
    Valida_ClienteSENHA_PDV: TIBStringField;
    PdvDOCUMENTOS_CONSUMIDOR: TIBStringField;
    PdvENDERECO_CONSUMIDOR: TIBStringField;
    VerProdutoNEG_QTDADE_2: TIBStringField;
    VerProdutoVALIDADE: TIntegerField;
    PdvCIDADE_CONSUMIDOR: TIBStringField;
    ULTIMAS_VENDAS: TIBQuery;
    ULTIMAS_VENDASCODIGO: TIntegerField;
    ULTIMAS_VENDASDATA: TDateTimeField;
    ULTIMAS_VENDASDINHEIRO: TIBBCDField;
    ULTIMAS_VENDASCHEQUE: TIBBCDField;
    ULTIMAS_VENDASCARTAO: TIBBCDField;
    ULTIMAS_VENDASTICKET: TIBBCDField;
    ULTIMAS_VENDASCONVENIO: TIBBCDField;
    ULTIMAS_VENDASDESCONTO: TIBBCDField;
    ULTIMAS_VENDASTOTAL: TIBBCDField;
    ULTIMAS_VENDASPRODUTO: TIBStringField;
    ULTIMAS_VENDASNOME_PRODUTO: TIBStringField;
    ULTIMAS_VENDASQUANTIDADE: TIBBCDField;
    ULTIMAS_VENDASUNITARIO: TIBBCDField;
    PdvFONE_CONSUMIDOR: TIBStringField;
    PdvBAIRRO_CONSUMIDOR: TIBStringField;
    Print: TRDprint;
    SelNatureza: TIBQuery;
    SelNaturezaCODIGO: TIntegerField;
    SelNaturezaNOME: TIBStringField;
    SelNaturezaCNPJ: TIBStringField;
    SelNaturezaINTERESTADUAL: TIBStringField;
    PdvVlrAcrescimo: TFloatField;
    SelMesasPdv: TIBQuery;
    PdvMESA: TIntegerField;
    TransfereMesas: TIBSQL;
    qryMesaDestino: TIBQuery;
    qryMesaDestinoMAX: TSmallintField;
    qryMesaDestinoNEWCODIGO: TIntegerField;
    qryTransfereMesas: TIBQuery;
    qryTransfereMesasCODIGO: TIntegerField;
    qryTransfereMesasSEQUENCIA: TSmallintField;
    SelMesasPdvCODIGO: TIntegerField;
    SelMesasPdvCODIGO_2: TIBStringField;
    SelMesasPdvTOTAL: TFloatField;
    SelMesasPdvCNPJ: TIBStringField;
    Pdv_ItensICM: TFloatField;
    Pdv_ItensICM_SUBS: TFloatField;
    Pdv_ItensIPI: TFloatField;
    Pdv_ItensVOLUME: TFloatField;
    Pdv_ItensPESO: TFloatField;
    Pdv_ItensPORC_DESC: TFloatField;
    Pdv_ItensPRODUTOFIS: TIBStringField;
    Pdv_ItensNOME_FIS: TIBStringField;
    Pdv_ItensCTE: TIntegerField;
    Pdv_ItensCTIE: TIntegerField;
    Pdv_ItensORIGEM: TIntegerField;
    Pdv_ItensREDUCAO: TIntegerField;
    Pdv_ItensTOTAL_DIGITADO: TFloatField;
    Pdv_ItensVENDEDOR: TIntegerField;
    Pdv_ItensFRACIONADO: TIBStringField;
    Pdv_ItensMENSAGEM_REDUCAO: TIBStringField;
    Pdv_ItensBASECALCULOICM: TFloatField;
    Pdv_ItensBASECALCULOSUBSTITUICAO: TFloatField;
    Pdv_ItensALIQUOTA_EST: TFloatField;
    Pdv_ItensALIQUOTA_INT: TFloatField;
    Pdv_ItensCFOP: TIntegerField;
    Pdv_ItensCOMPLEMENTO: TIBStringField;
    Pdv_ItensNOME_VENDEDOR: TIBStringField;
    Pdv_ItensSERVICO: TBlobField;
    Pdv_ItensLINHA_ABASTECIMENTO: TIntegerField;
    Pdv_ItensCONTADOR_ARQUIVO: TIntegerField;
    Pdv_ItensQUANTIDADE_FIS: TFloatField;
    Pdv_ItensPRC_UNITARIO_FIS: TFloatField;
    Pdv_ItensLOTE: TIBStringField;
    Pdv_ItensCODIGO_LOTE: TIntegerField;
    Pdv_ItensUTILIZA_LOTE: TIBStringField;
    Pdv_ItensCOM_GERADA: TIBStringField;
    PdvHISTORICO: TIBStringField;
    PdvTIPO_DOCTO: TIBStringField;
    PdvLOCAL_COBRANCA: TIntegerField;
    PdvOBSERVACAO: TIBStringField;
    PdvTERCEIRO: TIntegerField;
    PdvCARGA: TIntegerField;
    PdvVOLUME: TFloatField;
    PdvPESO: TFloatField;
    PdvREQUISICAO: TIBStringField;
    PdvDESCRICAO: TBlobField;
    PdvORCAMENTO: TIntegerField;
    PdvLOCAL: TIntegerField;
    PdvCONTA_CAIXA: TIntegerField;
    PdvBASE_ICM: TFloatField;
    PdvICM: TFloatField;
    PdvBASE_ICM_SUBST: TFloatField;
    PdvVALOR_ICM_SUBST: TFloatField;
    PdvFRETE: TFloatField;
    PdvSEGURO: TFloatField;
    PdvDESPESAS: TFloatField;
    PdvIPI: TFloatField;
    PdvAPRAZO: TFloatField;
    PdvDUPLICATA: TIntegerField;
    PdvBANCO: TIBStringField;
    PdvRECEBIDAS: TFloatField;
    PdvCONTROLA_PLACA: TIBStringField;
    PdvCONTROLA_KM: TIBStringField;
    PdvASSINA_NOTA: TIBStringField;
    PdvKM_ATUAL: TFloatField;
    PdvNOME_PROPRIEDADE: TIBStringField;
    PdvNOME_NATUREZA: TIBStringField;
    PdvNOME_TERCEIRO: TIBStringField;
    PdvNOME_FORMA: TIBStringField;
    PdvMEDIA_KM: TFloatField;
    PdvTURNO: TIntegerField;
    PdvHORA: TTimeField;
    PdvNAO_COBR_JUR_ATE: TIntegerField;
    PdvSERIE: TIBStringField;
    PdvDESCONTOS_CONCEDIDOS: TFloatField;
    PdvNOME_CONVENIO: TIBStringField;
    PdvDT_EMISSAO_AGRUPADA: TDateTimeField;
    PdvTRANSPORTADORA: TIntegerField;
    PdvDATA_CANCELAMENTO: TDateTimeField;
    PdvTOTAL_FISCAL: TFloatField;
    PdvIRRF: TFloatField;
    PdvINSS: TFloatField;
    PdvPIS_COFINS_CSLL: TFloatField;
    PdvISS: TFloatField;
    PdvVALE_TROCO: TIBStringField;
    PdvPGTO_FRETE: TIBStringField;
    PdvDESCTO_RES: TFloatField;
    PdvCOMPROMETER_ESTOQUE: TIBStringField;
    Pdv_ItensTotal_Fiscal: TFloatField;
    Pdv_ItensPeso_Total: TFloatField;
    Pdv_ItensVolume_Total: TFloatField;
    PdvDATA: TDateField;
    PdvID_AGRUPADOR: TIntegerField;
    PdvDESCTO_ICMS: TFloatField;
    PdvPCT_DESCTO_ICMS: TFloatField;
    PdvNF_AGRUPADA: TIBStringField;
    PdvTRP_QTDE: TFloatField;
    PdvTRP_ESPECIE: TIBStringField;
    PdvTRP_PESO_BRUTO: TFloatField;
    PdvTRP_PESO_LIQUIDO: TFloatField;
    PdvTRP_NUMERO: TIBStringField;
    PdvTRP_MARCA: TIntegerField;
    PdvTRP_NOME: TIBStringField;
    PdvSTATUS_CARREGAMENTO: TIntegerField;
    PdvORDEM_CARGA: TIntegerField;
    PdvENTREGA_FUTURA: TIBStringField;
    PdvPCT_COMISSAO: TFloatField;
    PdvCENTRO_CUSTO: TIntegerField;
    PdvES: TIBStringField;
    PdvGERA_FINANCEIRO: TIBStringField;
    QryIndices: TIBQuery;
    QryIndicesNOME: TIBStringField;
    QryIndicesSIGLA: TIBStringField;
    PdvNFE_CHAVE: TIBStringField;
    PdvNFE_SELECIONADO: TIBStringField;
    PdvDT_PREV_ENTREGA: TDateField;
    PdvCOD_INDEXADOR: TIntegerField;
    PdvIDX_DATABASE: TDateField;
    PdvIDX_COTACAO: TFloatField;
    PdvIDX_QTDE: TFloatField;
    PdvCOD_CONFIGTITULO: TIntegerField;
    PdvNFE_VALIDADA: TIBStringField;
    PdvNFE_ASSINADA: TIBStringField;
    PdvNFE_TRANSMITIDA: TIBStringField;
    PdvNFE_AUTORIZADA: TIBStringField;
    PdvNFE_DANFE_IMPRESSO: TIBStringField;
    QryIndicesCODIGO: TIntegerField;
    QryIndicesTOTAL: TFloatField;
    QryIndicesCOTACAO: TFloatField;
    Comandas: TIBDataSet;
    ComandasCNPJ: TIBStringField;
    ComandasCODIGO: TIntegerField;
    ComandasPRODUTO: TIBStringField;
    ComandasQUANTIDADE: TFloatField;
    ComandasPRECO_UNITARIO: TFloatField;
    ComandasTOTAL: TFloatField;
    ComandasDATA: TDateField;
    ComandasCOMANDA: TIntegerField;
    ComandasNOME_PRODUTO: TIBStringField;
    VALOR: TACBrExtenso;
    procedure Pdv_ItensAfterInsert(DataSet: TDataSet);
    procedure PdvAfterClose(DataSet: TDataSet);
    procedure PdvAfterInsert(DataSet: TDataSet);
    procedure PdvBeforeOpen(DataSet: TDataSet);
    procedure PdvBeforePost(DataSet: TDataSet);
    procedure Pdv_ItensCalcFields(DataSet: TDataSet);
    procedure Pdv_ItensNewRecord(DataSet: TDataSet);
    procedure Pdv_ItensPRODUTOValidate(Sender: TField);
    procedure PdvNewRecord(DataSet: TDataSet);
    procedure CapturaTimer(Sender: TObject);
    procedure LeitorAfterReceive(Sender: TObject; data: String);
    procedure Pdv_ItensAfterPost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure BalancaAfterReceive(Sender: TObject; data: String);
    procedure PdvTROCOValidate(Sender: TField);
    procedure PdvPESSOA_FJValidate(Sender: TField);
    procedure PdvVENDEDORValidate(Sender: TField);
    procedure Pdv_ItensGRADEValidate(Sender: TField);
    procedure Pdv_ItensNUMEROValidate(Sender: TField);
    procedure ChequeAfterDelete(DataSet: TDataSet);
    procedure ChequeAfterInsert(DataSet: TDataSet);
    procedure ChequeAfterPost(DataSet: TDataSet);
    procedure ChequeNewRecord(DataSet: TDataSet);
    procedure Pdv_ItensBeforePost(DataSet: TDataSet);
    procedure Pdv_ItensCFOPValidate(Sender: TField);
    procedure Pdv_ItensBeforeOpen(DataSet: TDataSet);

  private
    { Private declarations }
    function TrataLeitor(data: String):String;
    function TrataLeitorB(data: String):Extended;
    function VerificaDigito(data: String): String;

    procedure ZerarLogo ;
    procedure Calcular_ItensPDV;
  public
    { Public declarations }
    PdvQuantidade           : Extended ;
    TotalCupom              : Extended ;
    DesctoCpCanc             : Extended ;
    ConsultandoPreco        : Boolean  ;
    ProdBalanca             : Boolean  ;
    MesaAberta              : Boolean  ;
    Iniciado                : Boolean  ;
    Concedido_desc_Especial : Boolean  ;
    Cliente_Desc_Especial   : Integer  ;

    Razao, Endereco, NomeCidade, NomeBairro, EstadoCep, NumeroFone: String;
    Ven_Limite_Tempo        : Integer;
    Ven_Limite_Credito      : Real   ;
    Modo_Insercao           : Boolean;

    procedure Altera_Produtos_Pdv(Codigo: String);
    procedure MensagemDaruma ( Str: String );
    procedure AtualizaValores( Final: String );
    procedure AtualizaValoresNFISCAL( Final: String );
    procedure AbreCupomEpson(Mensagem: String);
    procedure FormaPagamentoEpson ( NomeForma, Valor: String );
    procedure FechaCupomEpson(Mensagem: String);
    procedure SetText(Codigo1: String);

    procedure MensagemPromocional;
    procedure Imprime ( Texto: String; Opcao: String );
    Procedure ZerarPaineis ;
    procedure VerPessoa (Codigo: Integer);
    Function  LancarConvenio ( Codigo: Integer; Valor: Real ): Boolean;

    ////Cupom Fiscal////
    procedure AbrePorta;
    Function  AlinhaEsquerda ( Str: String; Num: Integer ): String;
    Function  AlinhaDireita  ( Str: String; Num: Integer ): String;
    Function  ValoresNumericosCupom ( Str: String; ZeroEsquerda: String ): String;
    Function  ValoresNumericosCupomB ( Str: String; ZeroEsquerda: String ): String;
    procedure ImPrimeItem ( Codigo: String; Nome: String; Aliquota: String; Quantidade: Real; Unitario: Real; Unidade: String );
    procedure VendeItemEpson ( Codigo, Nome, Qntde, vlrunit, Total: String );
    procedure CalculaImpostosPDV;

    Function  AbreCupomFiscal: Integer ;
    Function  TotalizaCupom : Boolean  ;
    function  TrataErroCupom( Retorno: Integer; Local: String ): Integer;
    procedure CancelaItem(Item: Integer; Produto: String; Quantidade, Unitario: Real; Unidade, Nome: String );
    procedure CancelarCupomFiscal;
    procedure AbrirGaveta;
    procedure AcrescrimoDesconto ;
    procedure Sangria ( Valor: Real );
    procedure Suprimento ( Valor: Real );

    procedure Aliquotas;
    procedure ArredondaTrunca(Tipo: String);
    procedure TrataAliquotas( Aliquotas: String);
    function  UltimoCupom: String;

    procedure LeituraX;
    procedure LeituraZ;

    procedure Cancela_Item_Generico ( Cupom: Integer; Produto: String );

    //Fiscais
    procedure ImPrimeConvenio_Nao_Fiscal ;
    procedure ImPrimeConvenio_Contra_Vale_Cheque   ( Valor_Cheque  , Valor_Vale: Real );
    procedure ImPrimeConvenio_Contra_Vale_Ticket   ( Valor_Ticket  , Valor_Vale: Real );

    //Não Fiscais
    procedure ImPrimeVenda    ;
    procedure ImPrimeConvenio ;

    procedure VendeItemDar32Dll ( Str_Codigo: String; Str_Descricao: String; Str_Aliquota: String;
    Str_Tipo_de_Quantidade: String; Str_Quantidade: String; Int_Casas_Decimais: Integer;
    Str_Valor_Unitario: String; Str_Tipo_de_Desconto: String; Str_Valor_do_Desconto: String);
  end;

var
   F: Text;
   DmPdv: TDmPdv;
   Lendo, Lendob: Boolean ;
   Msg: String;
   Ret, MsgCont, LinhaEpson : Integer;
   i: Longint;
   FezAcrescimoDesconto: Boolean;
   L1, L2, L3, L4, L5, L6, L7, L8, L9, L10, L11: String ;
   ConfereAliquotas : TAliquotas;
   Bal, Lei: TCommPort;
   UsaBalanca : Boolean ;

   ProdutoCancelado, NomeCancelado, UnidadeCancelado: String;
   UnitarioCancelado, QuantidadeCancelado: Real;
   SequenciaCancelado: Integer;

   Documentos, Doctos, IERG : String;





implementation

uses Application_DM,
     Pdv_Frm,
     Funcoes,
     AcrDescPdv_Form,
     ConveniadoPdv_Form,
     UnitarioPdv_Form,
     EntraDataPdv_Form,
     ConsultaProdPdv_Form,
     SenhaGerencialPdv_Form,
     ConveniadoCheque_Form,
     Entra_Data_Cheque_Form,
     MensagemFaturamento_Form,
     MensagemClassificacao_Form,
     Localizar_Grade_Pdv,
     Cheque_Pdv_Form,
     Cartao_Venda_Form,
     EnviaCaixa_FRel,
     Vendas_Dm,
     CadastrarProduto_Pdv,
     Financeiro_Dm,
     VerificaLimiteCredito_Form,
     Ultimas_Vendas_Form, Cadastros_DM, Vendas_DM2, SerieCustomizaveis_DM,
  SeriesCustomizaveis;

{$R *.DFM}

procedure TDmPdv.MensagemDaruma ( Str: String );
begin
     if Trim( Str ) <> ''
     then
         MensagemPdv( Str );
end;

Function TDmPdv.LancarConvenio ( Codigo: Integer; Valor: Real ): Boolean;
begin
     //Cupom Nominal
     FrmConveniadoPdv := TFrmConveniadoPdv.Create(Self);

     FrmConveniadoPdv.Venda_Prazo := true ;

     If FrmConveniadoPdv.showmodal = mrok
     then begin
          if FrmConveniadoPdv.Cliente > 0
          then begin
               DmPdv.Pdv_Itens.DataSource := Nil ;

               If not (DmPdv.Pdv.state in [ dsinsert, dsedit ])
               then begin
                    DmPdv.Pdv.edit ;
               end;

               DmPdv.PdvPESSOA_FJ.value := FrmConveniadoPdv.Cliente ;

               FrmPdv.LblNominal.Caption       := 'Nominal a ' + DmPdv.PdvNOME.Value ;

               // essa porcaria ta fazendo da pau quando salva a venda
               //DmPdv.Pdv_Itens.DataSource := DmPdv.DsPdv ;

               DmPdv.Pdv.Post ;

               //LANCA NA PROCEDURE DO CONVENIO
               if DmApp.PDV_FAT_FIM_MES = 'S' then
                 begin
                   DmApp.Lanca_Convenio_Pdv
                   (
                   CODIGO,
                   FrmConveniadoPdv.Cliente,
                   Valor,
                   UltimoDiaMes(DmApp.DataCaixa),
                   DmApp.DataCaixa,
                   'ECF ' + INTTOSTR(CODIGO) + ' LANCADO EM ' + DATETOSTR(DmApp.DataCaixa)
                   );
                 end
               else
                 begin
                   DmApp.Lanca_Convenio_Pdv
                   (
                   CODIGO,
                   FrmConveniadoPdv.Cliente,
                   Valor,
                   DmApp.DataCaixa + 30,
                   DmApp.DataCaixa,
                   'ECF ' + INTTOSTR(CODIGO) + ' LANCADO EM ' + DATETOSTR(DmApp.DataCaixa)
                   );
                 end;

               result := true ;
          end
          else
              result := False ;
     end
     else
         result := False ;

     FrmConveniadoPdv.Free   ;
     FrmConveniadoPdv := Nil ;
end;

procedure TDmPdv.VerPessoa (Codigo: Integer);
begin
     //Dados da Pessoa
     Ver_Pessoa.Close ;

     Ver_Pessoa.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     Ver_Pessoa.ParamByName ('COD').AsInteger    := Codigo       ;

     Ver_Pessoa.Prepare ;

     Ver_Pessoa.Open ;

     IF Ver_PessoaCodigo.VALUE <> 1
     Then begin
          Razao        := Ver_PessoaCodigo.Text + '-' + Ver_PessoaNOME_RAZAO.Value  ;
          Endereco     := Ver_PessoaENDERECO.Value + ', N ' + Ver_PessoaNUMERO.Value ;
          NomeCidade   := Ver_PessoaCIDADE.Value;
          NomeBairro   := Ver_PessoaBAIRRO.Value;
          EstadoCep    := Ver_PessoaUF.Value + '   ,CEP ' + Ver_PessoaCEP.Value;
          NumeroFone   := Ver_PessoaFONE.Value + '/' + Ver_PessoaFAX.Value;

          If Length(Ver_PessoaCPF_CGC.Value) > 11
          then begin
               Doctos  := mascaracnpj(Ver_PessoaCPF_CGC.Value);
          end
          else begin
               Doctos  := mascaracpf(Ver_PessoaCPF_CGC.Value);
          end;

          IERG         := Ver_PessoaRG_IE.Value + ' IM ' + Ver_PessoaINSC_MUNIC.Value;
     end
     else begin
          Razao        := Ver_PessoaCodigo.Text + '-' + PdvNOME_CONSUMIDOR.Value  ;
          Endereco     := PdvENDERECO_CONSUMIDOR.value ;
          NomeCidade   := PdvCIDADE_CONSUMIDOR.Value;
          NomeBairro   := PdvBAIRRO_CONSUMIDOR.value;
          EstadoCep    := dmapp.UF + '   ,CEP ' + dmapp.CEP;
          NumeroFone   := PdvFONE_CONSUMIDOR.value;

          Doctos       := (PdvDOCUMENTOS_CONSUMIDOR.Value);
          IERG         := '';
     end;
end;

procedure TDmPdv.Cancela_Item_Generico ( Cupom: Integer; Produto: String );
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
        CANCELA_ITEM_GENERICO_PDV.ParamByName('CNPJ'  ).asString  := DmApp.Cnpj    ;
        CANCELA_ITEM_GENERICO_PDV.ParamByName('CODIGO').asString  := Produto ;
        CANCELA_ITEM_GENERICO_PDV.ParamByName('CUPOM' ).asInteger := Cupom   ;

        CANCELA_ITEM_GENERICO_PDV.ExecProc;
        //
        SequenciaCancelado  := CANCELA_ITEM_GENERICO_PDV.ParamByName('SEQUENCIA').AsInteger;

        ProdutoCancelado    := CANCELA_ITEM_GENERICO_PDV.ParamByName('PRODUTO').AsString;
        NomeCancelado       := CANCELA_ITEM_GENERICO_PDV.ParamByName('NOME'   ).AsString;
        UnidadeCancelado    := CANCELA_ITEM_GENERICO_PDV.ParamByName('UNIDADE').AsString;

        UnitarioCancelado   := CANCELA_ITEM_GENERICO_PDV.ParamByName('PRC_UNITARIO').AsFloat;
        QuantidadeCancelado := CANCELA_ITEM_GENERICO_PDV.ParamByName('QUANTIDADE'  ).AsFloat;

        CANCELA_ITEM_GENERICO_PDV.Close ;

        //
        DmApp.TransactionProc.Commit ;

     except
           DmApp.TransactionProc.Rollback ;
     end;
end;

Procedure TDmPdv.ZerarPaineis ;
Begin
     //Zerando os Paineis
     FrmPdv.PnDescricao.Caption := 'Descrição do Produto';
     FrmPdv.PNQNTDE.Caption     := '0,00';
     FrmPdv.PNUNITARIO.Caption  := '0,00';
     FrmPdv.PnTotal.Caption     := '0,00';
     FrmPdv.lblnominal.Caption  := 'Nominal a';

end;

Function TDmPdv.ValoresNumericosCupom ( Str: String; ZeroEsquerda: String ): String;
Var
   Numerico2, Numerico: String;
Begin
     Numerico := Str;

     //Tira os Pontos Antes da ,
     I := 1;

     //Inicializa
     Numerico2 := '' ;

     Repeat
           If COPY ( Numerico, I, 1 ) <> '.'
           Then Begin
                Numerico2 := Numerico2 + COPY ( Numerico, I, 1 );
           end;
           I := I + 1;
     Until ( I = 17 );

     Numerico := Numerico2;

     If ZeroEsquerda = 'S'
     then begin
          While Length(Numerico) < 16
          do begin
             Numerico := '0' + Numerico ;
          end;
     end;

     Numerico2 := '' ;

     I := 1;

     Repeat
           If COPY ( Numerico, I, 1 ) <> ','
           Then Begin
                Numerico2 := Numerico2 + COPY ( Numerico, I, 1 );
           End
           else Begin
                Numerico2 := Numerico2 + '.';
           end;
           I := I + 1;
     Until ( I = 17 );

     Result := Numerico2;
end;

Function TDmPdv.AlinhaEsquerda ( Str: String; Num: Integer ): String;
Var
   Numerico2, Numerico: String;
Begin
     Numerico := Str;

     //Tira os Pontos Antes da ,
     I := 1;

     //Inicializa
     Numerico2 := '' ;

     Repeat
           If COPY ( Numerico, I, 1 ) <> '.'
           Then Begin
                Numerico2 := Numerico2 + COPY ( Numerico, I, 1 );
           end;
           I := I + 1;
     Until ( I = 17 );

     Numerico := Numerico2;

     While Length(Numerico) < Num
     do begin
        Numerico := ' ' + Numerico ;
     end;

     Numerico2 := '' ;

     I := 1;

     Repeat
           If COPY ( Numerico, I, 1 ) <> ','
           Then Begin
                Numerico2 := Numerico2 + COPY ( Numerico, I, 1 );
           End
           else Begin
                Numerico2 := Numerico2 + '.';
           end;
           I := I + 1;
     Until ( I = 13 );

     Result := Numerico2;
end;

Function TDmPdv.AlinhaDireita ( Str: String; Num: Integer ): String;
Var
   Numerico: String;
Begin
     Numerico := Str;

     While Length(Numerico) < Num
     do begin
        Numerico :=  Numerico + ' ';
     end;

     Result := Numerico;
end;

Function TDmPdv.ValoresNumericosCupomB ( Str: String; ZeroEsquerda: String ): String;
Var
   Numerico2, Numerico: String;
Begin
     Numerico := Str;

     //Tira os Pontos Antes da ,
     I := 1;

     //Inicializa
     Numerico2 := '' ;

     Repeat
           If COPY ( Numerico, I, 1 ) <> '.'
           Then Begin
                Numerico2 := Numerico2 + COPY ( Numerico, I, 1 );
           end;
           I := I + 1;
     Until ( I = 17 );

     Numerico := Numerico2;

     If ZeroEsquerda = 'S'
     then begin
          While Length(Numerico) < 16
          do begin
             Numerico := '0' + Numerico ;
          end;
     end;

     Numerico2 := '' ;

     I := 1;

     Repeat
           If COPY ( Numerico, I, 1 ) <> ','
           Then Begin
                Numerico2 := Numerico2 + COPY ( Numerico, I, 1 );
           End
           else Begin
                Numerico2 := Numerico2 + '.';
           end;
           I := I + 1;
     Until ( I = 17 );

     Result := Numerico2;
end;

procedure TDmPdv.MensagemPromocional;
Var
   Len: Integer;
begin
     if Trim (Msg) = ''
     then begin
          Empresa.Close ;

          Empresa.Open ;

          If MsgCont = 1
          then begin
               If Not EmpresaPDV_MSG1.IsNull
               then
                   Msg := EmpresaPDV_MSG1.Value ;
          end;

          If MsgCont = 2
          then begin
               If Not EmpresaPDV_MSG2.IsNull
               then
                   Msg := EmpresaPDV_MSG2.Value ;
          end;

          If MsgCont = 3
          then begin
               If Not EmpresaPDV_MSG3.IsNull
               then
                   Msg := EmpresaPDV_MSG3.Value ;
          end;

          If MsgCont = 4
          then begin
               If Not EmpresaPDV_MSG4.IsNull
               then
                   Msg := EmpresaPDV_MSG4.Value ;
          end;

          If MsgCont = 5
          then begin
               If Not EmpresaPDV_MSG5.IsNull
               then
                   Msg := EmpresaPDV_MSG5.Value ;
          end;

          If Trim( Msg ) = ''
          then
              Msg := 'Obrigado Volte Sempre!' ;

          MsgCont := MsgCont + 1;

          If MsgCont > 5
          Then
              MsgCont := 1;
     end;

     Repeat
           Msg := Msg + ' ' ;
     until Length(Msg) >= 85 ;

     Len := Length(msg);

     Msg := '  ' + copy(Msg,1, len - 2 );

     FrmPdv.MENSAGEM.Caption := Msg ;
     FrmPdv.MENSAGEM.Update ;
end;

procedure TDmPdv.Imprime( Texto: String; Opcao: String);
Begin
     If Opcao = 'NOVO' //Novo Cupom Fiscal
     then begin
          L1 :='<BR>';
          L2 :='<BR>';
          L3 :='<BR>';
          L4 :='<BR>';
          L5 :='<BR>';

///          IF DmaPP.PDV_OBRIGA_QTDE = 'S'
//          THEN BEGIN
               //PREENCHE O CABECALHO
               L6  := '<FONT  size="14" color="#000000" face="Arial Black"><B><P align="center">' + DmApp.Nome + '</P></B></FONT>' ;

               L7  := '<B><FONT color="#F8CE00"  size="14" face="Times New Roman"><P align="center">' + Trim(Cumprimento())+ ', Sejam Bem Vindos!' + '</P></FONT></B>' ;

               L8  := '<br>' ;

               L9  := '<FONT  size="12" color="#FFFFFF" face="Arial Black"><B><P align="center">Cupom Fiscal Nº </B>' + IntToStr(PdvCODIGO.Value)+ '</P></B></FONT>' ;

               L10 := '<FONT  size="12" color="#F8CE00" face="Arial Black"><B><P align="center"> LOCAL ' + IntToStr(PdvVENDEDOR.VALUE)+ '</P></B></FONT>' ;

               L11 := '<br>' ;
{          END
          ELSE BEGIN
               IF PDVVENDEDOR.Value <= 1
               THEN BEGIN
                    L6 :='<BR>';

                    //PREENCHE O CABECALHO
                    L7 := '<FONT  size="14" color="#000000" face="Arial Black"><B><P align="center">' + DmApp.Nome + '</P></B></FONT>' ;

                    L8 := '<B><FONT color="#F8CE00"  size="14" face="Times New Roman"><P align="center">' + Trim(Cumprimento())+ ', Sejam Bem Vindos!' + '</P></FONT></B>' ;

                    L9 := '<br>' ;

                    L10 := '<FONT  size="12" color="#FFFFFF" face="Arial Black"><B><P align="center">Cupom Fiscal Nº </B>' + IntToStr(PdvCODIGO.Value)+ '</P></B></FONT>' ;

                    L11 := '<br>' ;
               END
               ELSE BEGIN
                    //PREENCHE O CABECALHO
                    L6  := '<FONT  size="14" color="#000000" face="Arial Black"><B><P align="center">' + DmApp.Nome + '</P></B></FONT>' ;

                    L7  := '<B><FONT color="#F8CE00"  size="14" face="Times New Roman"><P align="center">' + Trim(Cumprimento())+ ', Sejam Bem Vindos!' + '</P></FONT></B>' ;

                    L8  := '<br>' ;

                    L9  := '<FONT  size="12" color="#FFFFFF" face="Arial Black"><B><P align="center">Cupom Fiscal Nº </B>' + IntToStr(PdvCODIGO.Value)+ '</P></B></FONT>' ;

                    L10 := '<FONT  size="12" color="#F8CE00" face="Arial Black"><B><P align="center"> LOCAL ' + IntToStr(PdvVENDEDOR.VALUE)+ '</P></B></FONT>' ;

                    L11 := '<br>' ;
               END;
          END;
}
     end;

     If Opcao = 'CODIGO' //Codigo e Nome do Produto
     then begin
          L1 := L2;
          L2 := L3;
          L3 := L4;
          L4 := L5;
          L5 := L6;
          L6 := L7;
          L7 := L8;
          L8 := L9;
          L9 := L10;
          L10 := L11;
          L11 := Texto;
     end;

     If Opcao = 'QNTDE' //Codigo e Nome do Produto
     then begin
          L1 := L2;
          L2 := L3;
          L3 := L4;
          L4 := L5;
          L5 := L6;
          L6 := L7;
          L7 := L8;
          L8 := L9;
          L9 := L10;
          L10 := L11;
          L11 := Texto;
     end;

     FrmPdv.lista.Caption := L1 + L2 + L3 + L4 + L5 + L6 + L7 + L8 + L9 + L10 + L11  ;

     FrmPdv.Lista.Refresh;
end;

procedure TDmPdv.Pdv_ItensAfterInsert(DataSet: TDataSet);
begin
     Pdv_ItensCNPJ.Value   := PdvCNPJ.Value   ;
     Pdv_ItensCODIGO.Value := PdvCODIGO.Value ;
     ProdBalanca           := False           ;

     With FrmPdv do     
     begin
       EdDigitacao.clear ;
     end;
end;

procedure TDmPdv.PdvAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;

  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TDmPdv.PdvAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
     Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('VENDAS'), 1);

     With FrmPdv do
     begin
          //Acumula o Total do Cupom Fiscal
          TotalCupom            := 0;
          DesctoCpCanc          := 0;

          lblnominal.Caption := 'Nominal a';

          //Verifica se Tem que Totalizar Acréscimo e Desconto
          FezAcrescimoDesconto  := False ;

          STatus.Caption := 'Abrindo Cupom, Por Favor Aguarde!' ;

          STatus.Refresh ;

          If DmApp.Pdv_Ecf = 'S'
          Then begin
             { If AbreCupomFiscal <> 0
              then begin
                   FrmPdv.STatus.Caption := 'Aguardando Comandos' ;

                   Abort ;
              end;}
          end
          Else
              ZerarLogo ;

          Imprime ('', 'NOVO');

          STatus.Caption := 'Pronto Para Leitura!' ;

          STatus.Refresh ;

          EdDigitacao.Enabled := true ;

          Lista.Update;

          EdDigitacao.SetFocus ;
     end;

end;

procedure TDmPdv.PdvBeforeOpen(DataSet: TDataSet);
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

procedure TDmPdv.PdvBeforePost(DataSet: TDataSet);
begin
//     If Dataset.State = dsInsert Then
//        Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('VENDAS'), 1);
end;

procedure TDmPdv.Pdv_ItensCalcFields(DataSet: TDataSet);
var
  fValor : real;
begin
  //impressora daruma trunca os valores
  if (UpperCase(DmaPP.Pdv_Modelo) = UpperCase('Dar32DLL')) then
  begin
    fValor := (Pdv_ItensQUANTIDADE.Value * (Pdv_ItensPRC_UNITARIO.Value - Pdv_ItensDESCONTO.Value)) * 100;
    Pdv_ItensTotal.value := (trunc(fValor)/100);
  end
  else
    Pdv_ItensTotal.value := arredonda(Pdv_ItensQUANTIDADE.Value * (Pdv_ItensPRC_UNITARIO.Value - Pdv_ItensDESCONTO.Value), 2);

  Pdv_ItensTOTAL_FISCAL.VALUE := Pdv_ItensQUANTIDADE_FIS.VALUE * Pdv_ItensPRC_UNITARIO_FIS.VALUE ;
  Pdv_ItensPeso_Total.Value   := Pdv_ItensQUANTIDADE.Value * Pdv_ItensPeso.Value ;
  Pdv_ItensVolume_Total.Value := Pdv_ItensQUANTIDADE.Value * Pdv_ItensVolume.Value;
//     CalculaImpostosPDV;
end;

procedure TDmPdv.Pdv_ItensNewRecord(DataSet: TDataSet);
begin
     Pdv_ItensGRADE.value         := '0';
     Pdv_ItensNUMERO.value        := '0';
     Pdv_ItensQUANTIDADE.Value    := 0;
     Pdv_ItensPRC_UNITARIO.Value  := 0;
     Pdv_ItensPRC_CUSTO.Value     := 0;
     Pdv_ItensDESCONTO.Value      := 0;
     Pdv_ItensUNIDADE.Value       := 'UN';
     Pdv_ItensIPI.Value           := 0;
     Pdv_ItensICM.Value           := 0;
     Pdv_ItensSequencia.Value     := Pdv_Itens.RecordCount + 1;//no triguer before insert eu acho a verdadeira sequencia
     usaBalanca                   := False;
     ProdBalanca                  := False;
     Pdv_ItensSUBUNIDADE.Value    := 1;
     Pdv_ItensCFOP.Value          := PDVNATUREZA.Value;
end;

procedure TDmPdv.Pdv_ItensPRODUTOValidate(Sender: TField);
Var
   fTotal2, Codigo, Descricao, Unitario, Quantidade, Total, Linha, Item: String;
   PedidoBalanca: pchar;
   OldTransmitEvent : TNotifyTXEvent;
   Vezes: Integer;
   VALOR, DESCONTO_ESPECIAL: REAL;
   fTotal : Real;
   Teste : Byte;
   Teste2 : integer;
   //dados para leitura de balança
   BAL_BITSPORSEGUNDO, BAL_BITSDADOS,
   BAL_PARIDADE,BAL_BITSPARADA,BAL_FLUXO,PORTABALANCA : string;
begin
     If Sender.IsNull Then
         Exit ;

     Pdv_ItensICM.Value           := 0;
     VerProduto.Close ;
     VerProduto.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     VerProduto.ParamByName ('C').AsString  := Sender.Value;
     VerProduto.Open ;

     with dmVendas do
     begin
       Valida_Produto.Close;
       Valida_Produto.parambyname('CNPJ').value := DmApp.Cnpj;
       Valida_Produto.parambyname('PRODUTO').value := Sender.Value;
       Valida_Produto.ParamByName('VENDEDOR').AsInteger    := 0;
       Valida_Produto.Open;

       If Not Valida_ProdutoCTE.IsNull then
         Pdv_ItensCTE.Value := Valida_ProdutoCTE.value
       else
         Pdv_ItensCTE.Value := 1 ;

       If Not Valida_ProdutoCTIE.IsNull then
         Pdv_ItensCTIE.Value := Pdv_ItensCTIE.value
       else
         Pdv_ItensCTIE.Value := 1 ;
     end;

     //-------------- Produto Em Branco ----------------------------------------
     If VerProdutoNOME.isNull then
     Begin
          Beep ;
          If not Modo_Insercao then
          begin
               MensagemPdv ('Produto Inexistente!');
               FrmPdv.EdDigitacao.SelectAll ;
               Lendo := False ;
               Lendob := False ;
               Modo_Insercao := false ;
               FrmPdv.LblInsercao.visible := false ;
               Abort;
          end
          //--------- Produto Não Existe ---------------------------------------
          else begin
               Frm_CadastrarProdutosPdv := TFrm_CadastrarProdutosPdv.Create(Self);

               Frm_CadastrarProdutosPdv.EdCodigo.Text  := Sender.value ;
               Frm_CadastrarProdutosPdv.EDCODIGO2.Text := Sender.value ;

               Frm_CadastrarProdutosPdv.Showmodal ;
               Frm_CadastrarProdutosPdv.free      ;
               Frm_CadastrarProdutosPdv := Nil    ;

               FrmPdv.EdDigitacao.SelectAll ;
               Lendo := False ;
               Lendob := False ;
               Modo_Insercao := false ;

               FrmPdv.LblInsercao.visible := false ;

               Abort ;
          end;
     end
     //-------------------------------------------------------------------------
     else begin
          Pdv_ItensPRC_CUSTO.Value := arredonda(VerProdutoPRC_REPOS.Value, 2) ;

          IF (( Sender.Value = '1' ) and ( Not ProdBalanca )) Then
          Begin
               FrmUnitarioPdv := TFrmUnitarioPdv.Create(Self);
               IF FrmUnitarioPdv.Showmodal = MrOk THEN
               BEGIN
                   Pdv_ItensPRC_UNIT_ORIGINAL.Value := arredonda(FrmUnitarioPdv.Vlr,2)  ;
                   Pdv_ItensPRC_UNITARIO.Value      := arredonda(FrmUnitarioPdv.Vlr,2)  ;
               END ELSE
                   ABORT ;
               FrmUnitarioPdv.Free ;
               FrmUnitarioPdv := Nil ;
          end
          Else Begin
                //===========================================================================
                //------------ PREÇO DO PRODUTO SEM PREÇO DE VENDA OU ZERADO ----------------
                //===========================================================================
                if ( arredonda(VerProdutoPRC_VENDA.Value, 2) <= 0 ) or ( VerProdutoPRC_VENDA.IsNull ) then
                begin
                        FrmUnitarioPdv := TFrmUnitarioPdv.Create(Self);
                        IF FrmUnitarioPdv.Showmodal = MrOk THEN
                        BEGIN
                             Pdv_ItensPRC_UNIT_ORIGINAL.Value  := arredonda(FrmUnitarioPdv.Vlr,2) ;
                             Pdv_ItensPRC_UNITARIO.Value       := arredonda(FrmUnitarioPdv.Vlr,2) ;
                        END ELSE
                             ABORT ;

                        FrmUnitarioPdv.Free ;
                        FrmUnitarioPdv := Nil ;
                end
                else begin
                    if not ProdBalanca then
                    begin
                        //===========================================================================
                        //------------ VERIFICA SE HÁ PROMOÇÃO --------------------------------------
                        //===========================================================================
                        VALOR := 0;
                        IF dmapp.DataCaixa > STRTODATE('01/01/2005') THEN
                            Valor :=  dmapp.Verifica_Promocao ( Sender.value, dmapp.DataCaixa )
                        ELSE
                            Valor :=  dmapp.Verifica_Promocao ( Sender.value, PdvDATA.VALUE );

                        //===========================================================================
                        //------------ PREÇO ESPECIAL -----------------------------------------------
                        //===========================================================================
                        if PdvPESSOA_FJ.value <> 1 THEN//CLIENTE CONSUMIDOR
                        BEGIN
                            DESCONTO_ESPECIAL := DmApp.Verifica_Preco_Especial( Sender.value, PdvPESSOA_FJ.value );
                            //Seta o Parametro para Desconto Especial
                            //pois uma venda com Desconto Especial Nao pode ser alterada
                            Concedido_desc_Especial := True ;
                            Cliente_Desc_Especial   := PdvPESSOA_FJ.value ;
                        END ELSE
                            DESCONTO_ESPECIAL := 0;

                        Pdv_ItensPRC_UNITARIO.Value      := arredonda(VerProdutoPRC_VENDA.Value - ((VerProdutoPRC_VENDA.Value * DESCONTO_ESPECIAL)/100), 2) ;
                        Pdv_ItensPRC_UNIT_ORIGINAL.Value := arredonda(VerProdutoPRC_VENDA.Value - ((VerProdutoPRC_VENDA.Value * DESCONTO_ESPECIAL)/100), 2) ;



                        //===========================================================================
                        //------------ PROMOÇÃO DE PRODUTO ------------------------------------------
                        //===========================================================================
                        //se o preço da promoção for menor que preço especial, então passa a valer o preço da promoção
                        if ((valor < Pdv_ItensPRC_UNITARIO.Value) and (valor > 0) and (PdvPESSOA_FJ.value = 1)) then
                        begin
                            Pdv_ItensPRC_UNITARIO.Value      := valor;
                            Pdv_ItensPRC_UNIT_ORIGINAL.Value := valor;
                        end;


                        
                    end else
                      Pdv_ItensPRC_UNIT_ORIGINAL.Value := arredonda(Pdv_ItensPRC_UNITARIO.Value, 2) ;

               end;
          end;

          //VERIFICA A GRADE E O NUMERO
          Lista_Grades.Close ;
          Lista_Grades.ParamByName ( 'CNPJ'    ).AsString := DmApp.Cnpj   ;
          Lista_Grades.ParamByName ( 'PRODUTO' ).AsString := Sender.Value ;
          Lista_Grades.Prepare ;
          Lista_Grades.Open ;

          Lista_Grades.FetchAll ;

          IF Lista_Grades.RecordCount > 0 THEN
          BEGIN
               //Chama a Tela Para Localizar Naturezas
               Application.CreateForm(TFrm_Localizar_Grades_Pdv, Frm_Localizar_Grades_Pdv);

               if ( Frm_Localizar_Grades_Pdv.showmodal = mrOk ) Then
               Begin
                    Pdv_ItensGRADE.Value  := (Frm_Localizar_Grades_Pdv.CampTrecho);
                    Pdv_ItensNUMERO.Value := (Frm_Localizar_Grades_Pdv.Numero    );
               end
               else begin
                    MessageDlg( 'Selecione Uma Grade!', MtError, [Mbok], 0);
                    Abort;
               end;

               Frm_Localizar_Grades_Pdv.free   ;
               Frm_Localizar_Grades_Pdv := Nil ;

               Pdv_ItensNOME_PRODUTO.Value  := VerProdutoNOME.Value + ' ->> G ' + Pdv_ItensGRADE.Value + ' N ' + Pdv_ItensNUMERO.Value ;
          end
          Else begin
               Pdv_ItensNOME_PRODUTO.Value  := VerProdutoNOME.Value  ;
          end;

          Pdv_ItensUNIDADE.Value       := 'UN';

          Pdv_ItensALIQUOTA.Value      := TRIM(VerProdutoALIQUOTA_ECF.Value) ;

          //PRODUTO PESAVEL
          If VerProdutoPESAVEL.Value = 'S' then
          begin
               Vezes := 0 ;
               Try
                  Repeat
                        with DMApp do
                        begin
                              //Identificando a porta, e setando em tempo de execução se estiver no Perfil
                              if Perfil_ComputadorPORTABALANCA.AsString <> '' then
                              begin
                                    if Perfil_ComputadorPORTABALANCA.AsString = 'COM1' then
                                      balanca.CommPort := cpCOM1
                                    else if Perfil_ComputadorPORTABALANCA.AsString = 'COM2' then
                                      balanca.CommPort := cpCOM2
                                    else if Perfil_ComputadorPORTABALANCA.AsString = 'COM3' then
                                      balanca.CommPort := cpCOM3
                                    else if Perfil_ComputadorPORTABALANCA.AsString = 'COM4' then
                                      balanca.CommPort := cpCOM4;
                              end;

                              //BaudRate da Porta Serial
                              if trim(Perfil_ComputadorBAL_BITSPORSEGUNDO.AsString) <> '' then
                              begin
                                    if trim(Perfil_ComputadorBAL_BITSPORSEGUNDO.AsString) = '2400' then
                                      balanca.BaudRate := br2400
                                    else if trim(Perfil_ComputadorBAL_BITSPORSEGUNDO.AsString) = '4800' then
                                      balanca.BaudRate := br4800
                                    else if trim(Perfil_ComputadorBAL_BITSPORSEGUNDO.AsString) = '9600' then
                                      balanca.BaudRate := br9600
                                    else if trim(Perfil_ComputadorBAL_BITSPORSEGUNDO.AsString) = '14400' then
                                      balanca.BaudRate := br14400
                                    else if trim(Perfil_ComputadorBAL_BITSPORSEGUNDO.AsString) = '19200' then
                                      balanca.BaudRate := br19200
                                    else if trim(Perfil_ComputadorBAL_BITSPORSEGUNDO.AsString) = '38400' then
                                      balanca.BaudRate := br38400
                                    else if trim(Perfil_ComputadorBAL_BITSPORSEGUNDO.AsString) = '56000' then
                                      balanca.BaudRate := br56000;
                              end;

                              //Data Bits da Porta Serial
                              if Perfil_ComputadorBAL_BITSDADOS.AsString <> '' then
                              begin
                                    if trim(Perfil_ComputadorBAL_BITSDADOS.AsString) = '4' then
                                      balanca.DataBits := db4
                                    else if trim(Perfil_ComputadorBAL_BITSDADOS.AsString) = '5' then
                                      balanca.DataBits := db5
                                    else if trim(Perfil_ComputadorBAL_BITSDADOS.AsString) = '6' then
                                      balanca.DataBits := db6
                                    else if trim(Perfil_ComputadorBAL_BITSDADOS.AsString) = '7' then
                                      balanca.DataBits := db7
                                    else if trim(Perfil_ComputadorBAL_BITSDADOS.AsString) = '8' then
                                      balanca.DataBits := db8;
                              end;

                          //Paridade dos bits
                          if Perfil_ComputadorBAL_PARIDADE.AsString <> '' then
                          begin
                            if trim(Perfil_ComputadorBAL_PARIDADE.AsString) = 'Even' then
                              balanca.ParityType := pcEven
                            else if trim(Perfil_ComputadorBAL_PARIDADE.AsString) = 'Odd' then
                              balanca.ParityType := pcOdd
                            else if trim(Perfil_ComputadorBAL_PARIDADE.AsString) = 'Mark' then
                              balanca.ParityType := pcMark
                            else if trim(Perfil_ComputadorBAL_PARIDADE.AsString) = 'Space' then
                              balanca.ParityType := pcSpace
                            else if trim(Perfil_ComputadorBAL_PARIDADE.AsString) = 'Nenhum' then
                              balanca.ParityType := TParityType(pcNone);
                          end;

                          //Bits de Parada
                          if Perfil_ComputadorBAL_BITSPARADA.AsString <> '' then
                          begin
                            if trim(Perfil_ComputadorBAL_BITSPARADA.AsString) = '1' then
                              balanca.StopBits := sbOne
                            else if trim(Perfil_ComputadorBAL_BITSPARADA.AsString) = '1,5' then
                              balanca.StopBits := sbOnePtFive
                            else if trim(Perfil_ComputadorBAL_BITSPARADA.AsString) = '2' then
                              balanca.StopBits := sbTwo;
                          end;

                          //Fluxo da Porta
                          if Perfil_ComputadorBAL_FLUXO.AsString <> '' then
                          begin
                            if trim(Perfil_ComputadorBAL_FLUXO.AsString) = 'XON_XOFF' then
                              balanca.flowControl := fcXON_XOFF
                            else if trim(Perfil_ComputadorBAL_FLUXO.AsString) = 'RTS_CTS' then
                              balanca.flowControl := fcRTS_CTS
                            else if trim(Perfil_ComputadorBAL_FLUXO.AsString) = 'DSR_DTR' then
                              balanca.flowControl := fsDSR_DTR
                            else if trim(Perfil_ComputadorBAL_FLUXO.AsString) = 'Nenhum' then
                              balanca.flowControl := fcNone;
                          end;
                        end;

                        //PedidoBalanca := pchar('$05');
                        PedidoBalanca := pchar('$' + char(05));

                        //Envia Comando para a Balanca
                        //reconfigurando em tempo de execução
                        with Balanca do
                        begin
                          CommPort := cpCOM1;
                          FlowControl := fcXON_XOFF;
                        end;
                        Balanca.SendData(PedidoBalanca, Length(Pchar(PedidoBalanca)));

                        //Send in the carriage return.
                        OldTransmitEvent := Balanca.AfterReceive;
                        Balanca.AfterReceive := nil;
                        Balanca.SendData((chr(13)), 1);
                        Balanca.AfterReceive := OldTransmitEvent;

                        //Esperar a Resposta da Balanca...eeee negócio lento viu
                        sleep (120);

                        Balanca.getdata;

                        //Libera os Dados da Balanca
                        Balanca.FlushRX;

                        //Mostra a Quantidade na Tela
                        FrmPdv.PNQNTDE.Caption       := formatfloat('###,###,##0.000 Kg', arredonda(Pdv_ItensQUANTIDADE.Value, 3)) ;

                        Vezes := Vezes + 1;
                  until ( arredonda(Pdv_ItensQUANTIDADE.Value, 3) > 0 ) or ( Vezes > 3 );

                  If arredonda(Pdv_ItensQUANTIDADE.Value, 3) <= 0 then
                  begin
                       Beep ;
                       Abort ;
                  end;
               except
                     Beep ;
                     MensagemPdv('Erro ao Ler a Balança');
                     Abort ;
               end;
          end
          else begin
               If UsaBalanca
               then begin
                    FrmPdv.PNQNTDE.Caption      := formatfloat('###,###,##0.000  ', arredonda(Pdv_ItensQUANTIDADE.Value, 3)) ;
               end
               else begin
                    IF PdvQuantidade > 0
                    THEN BEGIN
                         FrmPdv.PNQNTDE.Caption      := formatfloat('###,###,##0.000  ', arredonda(PdvQuantidade, 3)) ;
                         Pdv_ItensQUANTIDADE.Value   := arredonda(PdvQuantidade, 3) ;
                    END
                    ELSE BEGIN
                         FrmPdv.PNQNTDE.Caption      := '1,000  ' ;
                         Pdv_ItensQUANTIDADE.Value   := 1;
                    end;
               END;
          end;

          If arredonda(Pdv_ItensPRC_UNITARIO.Value,2) > arredonda(DmApp.PDV_UNITARIO,2)
          then begin
               FrmSenhaGerencial := TFrmSenhaGerencial.Create(Self);

               IF FrmSenhaGerencial.Showmodal = MrOk
               THEN BEGIN
                    IF FrmSenhaGerencial.Valor.Text <> DmApp.Pdv_Senha
                    then begin
                         MensagemPdv ('Senha Incorreta!');
                         Abort ;
                    end;
               END
               ELSE
                   ABORT ;

               FrmSenhaGerencial.Free ;
               FrmSenhaGerencial := Nil ;
          end;

          //truncando valores daruma..
          if (UpperCase(DmaPP.Pdv_Modelo) = UpperCase('Dar32DLL')) then
          begin
            //Gambiarra da grande pra resolver o pau do delphi de divisão .. multiplicação..
            fTotal := ((Pdv_ItensQUANTIDADE.asFloat * Pdv_ItensPRC_UNITARIO.asFloat) * 100);
            TotalCupom := TotalCupom + (trunc(fTotal)/100);
          end
          else
            TotalCupom := TotalCupom + arredonda((Pdv_ItensQUANTIDADE.Value * Pdv_ItensPRC_UNITARIO.Value), 2);

          With FrmPdv DO
          BEGIN
               PnDescricao.Caption   := Pdv_ItensNOME_PRODUTO.Value ;
               PNUNITARIO.Caption    := formatfloat('###,###,##0.00  ', arredonda(Pdv_ItensPRC_UNITARIO.Value,2)) ;
               PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', arredonda(TotalCupom, 2));// - DesctoCpCanc,2)) ;
               EdDigitacao.Text      := Sender.Value;

               Codigo      := Trim(Sender.Value);

               While Length ( Codigo ) <= 15 do
                    Codigo := '0' + Codigo ;

               Descricao   := Pdv_ItensNOME_PRODUTO.Value;

               While Length ( Descricao ) <= 60 do
                    Descricao := Descricao + ' ';

               Item := formatfloat('###,###,##0  ', Pdv_ItensSequencia.Value );

               While Length ( Item ) <= 30 do
                    Item := ' ' + Item ;

               Unitario    := formatfloat('###,###,##0.00  ', arredonda(Pdv_ItensPRC_UNITARIO.Value,2));

               While Length ( Unitario ) <= 30 do
                    Unitario := ' ' + Unitario ;

               Quantidade  := formatfloat('###,###,##0.000  ', arredonda(Pdv_ItensQUANTIDADE.Value,3) );

               While Length ( Quantidade ) <= 30 do
                    Quantidade := ' ' + Quantidade ;

               //truncando valores daruma.. aqui mano
               if (UpperCase(DmaPP.Pdv_Modelo) = UpperCase('Dar32DLL')) then
               begin
                     fTotal := ((Pdv_ItensQUANTIDADE.asFloat * Pdv_ItensPRC_UNITARIO.asFloat) * 100);
                     fTotal := (trunc(fTotal)/100);
                     Total       := formatfloat('###,###,##0.00  ', fTotal);
               end
               else
                     Total       := formatfloat('###,###,##0.00  ', arredonda(Pdv_ItensPRC_UNITARIO.Value * Pdv_ItensQUANTIDADE.Value,2)) ;

               While Length ( Total ) <= 30 do
                    Total := ' ' + Total ;

               Linha := Codigo + '       ' + Descricao ;
               Imprime ('<B><P align="left"><FONT color="#000000">'+ Linha +'</FONT></P></B><br>', 'CODIGO');
               Linha := Item + Quantidade + ' X ' + Unitario + Total ;
               Imprime ('<B><P align="left"><FONT color="#F8CE00">'+ Linha +'</FONT></P></B><br>', 'QNTDE');
          END;
     end;
end;

procedure TDmPdv.PdvNewRecord(DataSet: TDataSet);
begin
     FrmPdv.PnDescricao.Caption := Trim(Cumprimento());
     if DmApp.LOCAL_FATURA = 'C'
     then begin
          Pdvdata.value      := DmApp.DataServidor ;
          PdvUSUARIO.Value   := 0 ;
     end
     else begin
          PdvDATA.Value      := DmApp.DataCaixa    ;
          PdvUSUARIO.Value   := DmApp.UsuarioCaixa ;
     end;
     PdvCANCELADA.Value      := 'N'   ;
     PdvDINHEIRO.Value       := 0     ;
     PdvCHEQUE.Value         := 0     ;
     PdvCartao.Value         := 0     ;
     PdvVLR_PARC_LC.Value    := 0     ;
     PdvTicket.Value         := 0     ;
     PdvDESC_ACRES.Value     := 0     ;
     PdvTROCO.Value          := 0     ;
     PdvNATUREZA.VALUE       := DMAPP.PDVNATUREZA ;
     PdvVENDEDOR.Value       := 1     ;
     PdvFORMA_PGTO.Value     := 1     ;
     PdvPESSOA_FJ.VALUE      := 1     ;
     PdvSELECIONADA.VALUE    := 'N '  ;
     PdvFECHADA.VALUE        := 'N'   ;
     PdvENVIADA_CX.VALUE     := 'N'   ;
     PdvCONS_REV.Value       := 'C'   ;
     PdvTIPO_VENDA.Value     := 'Ven' ;
     Concedido_desc_Especial := False ;
     Cliente_Desc_Especial   := 0     ;
     PdvVlrAcrescimo.Value := dmapp.TAXA_ACRESC_PDV;
end;

procedure TDmPdv.CapturaTimer(Sender: TObject);
begin
     IF INICIADO
     THEN BEGIN
          //Atualiza a Hora do Caixa
          FrmPdv.LBLHORA.Caption := TimeTOsTR(Now);
          FrmPdv.LBLHORA.Refresh ;

          IF DmApp.LEITORPORTA <> '' THEN
          BEGIN
            with DMApp do
            begin
              //Identificando a porta, e setando em tempo de execução se estiver no Perfil
              if Perfil_ComputadorPORTALEITOR.AsString <> '' then
              begin
                if Perfil_ComputadorPORTALEITOR.AsString = 'COM1' then
                  Leitor.CommPort := cpCOM1
                else if Perfil_ComputadorPORTALEITOR.AsString = 'COM2' then
                  Leitor.CommPort := cpCOM2
                else if Perfil_ComputadorPORTALEITOR.AsString = 'COM3' then
                  Leitor.CommPort := cpCOM3
                else if Perfil_ComputadorPORTALEITOR.AsString = 'COM4' then
                  Leitor.CommPort := cpCOM4;
              end;

              //BaudRate da Porta Serial
              if trim(Perfil_ComputadorLET_BITSPORSEGUNDO.AsString) <> '' then
              begin
                if trim(Perfil_ComputadorLET_BITSPORSEGUNDO.AsString) = '2400' then
                  Leitor.BaudRate := br2400
                else if trim(Perfil_ComputadorLET_BITSPORSEGUNDO.AsString) = '4800' then
                  Leitor.BaudRate := br4800
                else if trim(Perfil_ComputadorLET_BITSPORSEGUNDO.AsString) = '9600' then
                  Leitor.BaudRate := br9600
                else if trim(Perfil_ComputadorLET_BITSPORSEGUNDO.AsString) = '14400' then
                  Leitor.BaudRate := br14400
                else if trim(Perfil_ComputadorLET_BITSPORSEGUNDO.AsString) = '19200' then
                  Leitor.BaudRate := br19200
                else if trim(Perfil_ComputadorLET_BITSPORSEGUNDO.AsString) = '38400' then
                  Leitor.BaudRate := br38400
                else if trim(Perfil_ComputadorLET_BITSPORSEGUNDO.AsString) = '56000' then
                  Leitor.BaudRate := br56000;
              end;

              //Data Bits da Porta Serial
              if Perfil_ComputadorLET_BITSDADOS.AsString <> '' then
              begin
                if trim(Perfil_ComputadorLET_BITSDADOS.AsString) = '4' then
                  Leitor.DataBits := db4
                else if trim(Perfil_ComputadorLET_BITSDADOS.AsString) = '5' then
                  Leitor.DataBits := db5
                else if trim(Perfil_ComputadorLET_BITSDADOS.AsString) = '6' then
                  Leitor.DataBits := db6
                else if trim(Perfil_ComputadorLET_BITSDADOS.AsString) = '7' then
                  Leitor.DataBits := db7
                else if trim(Perfil_ComputadorLET_BITSDADOS.AsString) = '8' then
                  Leitor.DataBits := db8;
              end;

                  //Paridade dos bits
              if Perfil_ComputadorLET_PARIDADE.AsString <> '' then
              begin
                if trim(Perfil_ComputadorLET_PARIDADE.AsString) = 'Even' then
                  Leitor.ParityType := pcEven
                else if trim(Perfil_ComputadorLET_PARIDADE.AsString) = 'Odd' then
                  Leitor.ParityType := pcOdd
                else if trim(Perfil_ComputadorLET_PARIDADE.AsString) = 'Mark' then
                  Leitor.ParityType := pcMark
                else if trim(Perfil_ComputadorLET_PARIDADE.AsString) = 'Space' then
                  Leitor.ParityType := pcSpace
                else if trim(Perfil_ComputadorLET_PARIDADE.AsString) = 'Nenhum' then
                  Leitor.ParityType := TParityType(pcNone);
              end;

              //Bits de Parada
              if Perfil_ComputadorLET_BITSPARADA.AsString <> '' then
              begin
                if trim(Perfil_ComputadorLET_BITSPARADA.AsString) = '1' then
                  Leitor.StopBits := sbOne
                else if trim(Perfil_ComputadorLET_BITSPARADA.AsString) = '1,5' then
                  Leitor.StopBits := sbOnePtFive
                else if trim(Perfil_ComputadorLET_BITSPARADA.AsString) = '2' then
                  Leitor.StopBits := sbTwo;
              end;

              //Fluxo da Porta
              if Perfil_ComputadorLET_FLUXO.AsString <> '' then
              begin
                if trim(Perfil_ComputadorLET_FLUXO.AsString) = 'XON_XOFF' then
                   Leitor.flowControl := fcXON_XOFF
                else if trim(Perfil_ComputadorLET_FLUXO.AsString) = 'RTS_CTS' then
                   Leitor.flowControl := fcRTS_CTS
                else if trim(Perfil_ComputadorLET_FLUXO.AsString) = 'DSR_DTR' then
                   Leitor.flowControl := fsDSR_DTR
                else if trim(Perfil_ComputadorLET_FLUXO.AsString) = 'Nenhum' then
                   Leitor.flowControl := fcNone;
                end;
              end;

              Leitor.getdata;
               // You should consider adding a property to 'AutoFlush' on
               // getdata.
              Leitor.FlushRX;
              Leitor.FlushTX;
          END;

          MensagemPromocional ;
     END;
end;

procedure TDmPdv.LeitorAfterReceive(Sender: TObject; data: String);
Var
   Str: String;
begin
     Try
        if ( data <> '' )
        then begin
             If ( ConsultandoPreco )  AND ( FrmConsultaProdPdv <> Nil )
             then begin
                  Str := TrataLeitor (Data);

                  FrmConsultaProdPdv.EdDigitacao.Text := Str ;
                  FrmConsultaProdPdv.ActBusca.Execute ;
             end
             else begin
                  If ( frmpdv.CupomAberto )
                  then begin
                       If Not Lendo
                       then begin
                            Lendo := True ;

                            If Not ( Pdv_Itens.state in [ dsinsert, dsedit ] )
                            then begin
                                 Pdv_Itens.Insert ;
                            END;

                            Str := TrataLeitor (Data);

                            Str := FrmPdv.UtilizaBalanca ( Str );

                            Pdv_ItensPRODUTO.Value := Str ;
                            Pdv_Itens.Post ;
                            Lendo := False ;
                       end ;
                  end;

                  If ( not frmpdv.CupomAberto )
                  then begin
                       FrmPdv.AbreCupom.Execute ;

                       If Not Lendo
                       then begin
                            Lendo := True ;

                            If Not ( Pdv_Itens.state in [ dsinsert, dsedit ] )
                            then begin
                                 Pdv_Itens.Insert ;
                            END;

                            Str := TrataLeitor (Data);
                            Pdv_ItensPRODUTO.Value := Str ;
                            Pdv_Itens.Post ;
                            Lendo := False ;
                       end ;
                  end;
             end;
        end;
     except
           Lendo := False ;
     end;
end;

function TDmPdv.TrataLeitor(data: String): String;
Var
   Str: String;
   I, Len: Integer;
begin
     Str := Trim(Data) ;

     Len := Length(Str);

     I := 1;

     Len := 0;

     REPEAT
          //NUMEROS SAO DE 48 ate 57 ASCII
          if ( VerificaDigito(COPY(STR,I,1)) = 'N' ) and ( len = 0 )
          then
              Len := I ;

          I := I + 1;
     UNTIL (I > LENGTH(Str)) OR (Len > 0);

     If Len > 0
     then
         Str := Copy ( Str, 1, Len - 1 );

     Result := Str ;
end;

function TDmPdv.TrataLeitorb(data: String): Extended;
Var
   Str: String;
   I, Len: Integer;
begin
     Str := Trim(Data) ;

     Len := Length(Str);

     I := 1;

     Len := 0;

     REPEAT
          //NUMEROS SAO DE 48 ate 57 ASCII
          if ( VerificaDigito(COPY(STR,I,1)) = 'N' ) and ( len = 0 )
          then
              Len := I ;

          I := I + 1;
     UNTIL (I > LENGTH(Str)) OR (Len > 0);

     If Len > 0
     then begin
          Str := Copy ( Str, 1, Len - 1 );

          Str := Copy ( Str, 1, 2 ) + ',' + Copy ( Str, 3, 3 );
     end
     else begin
          Str := '0';
     end;


     Result := StrToFloat(Str) ;
end;

function TDmPdv.VerificaDigito(data: String): String;
begin
     if Data = '1'
     then begin
          Result := 'S';
     end
     else begin
          if Data ='2'
          then begin
               Result := 'S';
          end
          else begin
               if Data = '3'
               then begin
                    Result := 'S';
               end
               else begin
                    if Data = '4'
                    then begin
                         Result := 'S';
                    end
                    else begin
                         if Data = '5'
                         then begin
                              Result := 'S';
                         end
                         else begin
                              if Data = '6'
                              then begin
                                   Result := 'S';
                              end
                              else begin
                                   if Data = '7'
                                   then begin
                                        Result := 'S';
                                   end
                                   else begin
                                        if Data = '8'
                                        then begin
                                             Result := 'S';
                                        end
                                        else begin
                                             if Data = '9'
                                             then begin
                                                  Result := 'S';
                                             end
                                             else begin
                                                  if Data = '0'
                                                  then begin
                                                       Result := 'S';
                                                  end
                                                  else begin
                                                       Result := 'N';
                                                  end;
                                             end;
                                        end;
                                   end;
                              end;
                         end;
                    end;
               end;
          end;
     end;
end;

procedure TDmPdv.Pdv_ItensAfterPost(DataSet: TDataSet);
var
  TotalItems : Variant;
  Sql : string;
begin
  sql := 'select count(*) from fat_vendas_itens fti where fti.codigo = ';
  PdvQuantidade := 0;
  //ImprimeItem
  If DmApp.Pdv_Ecf = 'S' Then
  //  ImprimeItem (Pdv_ItensPRODUTO.Value, Pdv_ItensNOME_PRODUTO.Value, Pdv_ItensALIQUOTA.Value, Pdv_ItensQUANTIDADE.Value, Pdv_ItensPRC_UNITARIO.Value, Pdv_ItensUNIDADE.Value ) ;

  Calcular_ItensPDV;
  FrmPdv.EdDigitacao.SetFocus;
  Pdv_Itens.Insert ;
end;

procedure TDmPdv.DataModuleDestroy(Sender: TObject);
begin
     If DmApp.Pdv_Ecf = 'S' Then
     begin
         { If DmaPP.Pdv_Modelo = 'Sweda' then
               Ret := TrataErroCupom ( AFRAC_FecharPorta, 'Fechado Porta'  ) ;

          If DmaPP.Pdv_Modelo = 'Bematech' then
               Funcoes.FechaPortaSerial ;

          If DmaPP.Pdv_Modelo = 'Dar32Dll' then
               Ret := Daruma_FI_FechaPortaSerial ;}
     end;

     if Leitor.ClosePort then
     begin
          beep;
          MensagemPdv('Erro ao Fechar a Porta Leitor');
     end;

    if Balanca.ClosePort then
    begin
         beep;
         MensagemPdv('Erro ao Fechar a Porta Balanca');
    end;
end;

procedure TDmPdv.ArredondaTrunca(Tipo: String);
var
   Metodo: array[0..5] of char;
Begin
end;

procedure TDmPdv.AtualizaValores ( Final: String );
Var
   Total: Extended ;
   retorno: array[0..16] of char;
   Aux, Aux2: String;
   Len, I: Integer;
begin
     If DmaPP.Pdv_Modelo = 'Sweda'     then
     begin
          {If ( DmApp.Pdv_Ecf = 'S' ) and ( Final = 'S' )
          then begin
               retorno:=#0;

               AFRAC_LerInformacaoImpressora('001', Retorno);

               Aux  := (strpas(retorno));

               Len  := Length(Aux);

               Aux2 := '' ;

               i := 0;

               While I <= Len do
               begin
                    If Copy ( Aux, I, 1 ) <> '.'
                    then
                        Aux2 := Aux2 + Copy ( Aux, I, 1 )
                    else
                        Aux2 := Aux2 + ',' ;

                    I := I + 1
               end;

               Total := StrToFloat(Aux2) ;

               If Pdv_Itens.state in [ dsinsert, dsedit ]
               then BEGIN
                    If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
                    and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
                    and ( Pdv_ItensQUANTIDADE.Value > 0     )
                    and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
                    and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
                    then begin
                         Pdv_Itens.Post ;
                    end
                    else begin
                         Pdv_Itens.Cancel ;
                    end;
               END;

               If Pdv.State in [ dsinsert, dsedit ]
               then begin
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end
               else begin
                    Pdv.edit ;
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end;

               FRMPDV.PNTOTAL.Caption  := formatfloat('###,###,##0.00  ', arredonda(Total - DesctoCpCanc,2)) ;
          end
          else}
          begin
               If Pdv_Itens.state in [ dsinsert, dsedit ]
               then begin
                    If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
                    and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
                    and ( Pdv_ItensQUANTIDADE.Value > 0     )
                    and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
                    and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
                    then begin
                         Pdv_Itens.Post ;
                    end
                    else begin
                         Pdv_Itens.Cancel ;
                    end;
               end;

               Pdv_Itens.DisableControls ;

               Pdv_Itens.First ;

               Total := 0;

               Total := Total + Arredonda(PdvDESC_ACRES.Value,2) ;

               while not Pdv_Itens.Eof do
               begin
                    Total := Total + arredonda(Pdv_ItensTotal.Value,2) ;

                    Pdv_Itens.Next ;
               end;

               Pdv_Itens.EnableControls ;

               If Pdv.State in [ dsinsert, dsedit ]
               then begin
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end
               else begin
                    Pdv.edit ;
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end;
               FRMPDV.PNTOTAL.Caption  := formatfloat('###,###,##0.00  ', arredonda(Total - DesctoCpCanc,2)) ;
          end;

          TotalCupom := arredonda(Total, 2) ;

          FrmPdv.PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', arredonda(TotalCupom - DesctoCpCanc, 2)) ;
     end;

     If DmaPP.Pdv_Modelo = 'Bematech'
     then begin
          If ( DmApp.Pdv_Ecf = 'S' ) and ( Final = 'S' )
          then begin
               Aux  := Funcoes.SubtotalCupom ;

               Len  := Length(Aux);

               Aux2 := COPY ( AUX, 1, LEN - 2 ) ;

               AUX2 := AUX2 + ',' ;

               AUX2 := AUX2 + COPY ( AUX, LEN - 1, 3 );

               i := 0;

               Total := StrToFloat(Aux2) ;

               If Pdv_Itens.state in [ dsinsert, dsedit ]
               then BEGIN
                    If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
                    and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
                    and ( Pdv_ItensQUANTIDADE.Value > 0     )
                    and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
                    and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
                    then begin
                         Pdv_Itens.Post ;
                    end
                    else begin
                         Pdv_Itens.Cancel ;
                    end;
               END;

               If Pdv.State in [ dsinsert, dsedit ]
               then begin
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end
               else begin
                    Pdv.edit ;
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end;

               FRMPDV.PNTOTAL.Caption  := formatfloat('###,###,##0.00  ', arredonda(Total,2))//- DesctoCpCanc,2)) ;
          end
          else begin
               If Pdv_Itens.state in [ dsinsert, dsedit ]
               then begin
                    If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
                    and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
                    and ( Pdv_ItensQUANTIDADE.Value > 0     )
                    and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
                    and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
                    then begin
                         Pdv_Itens.Post ;
                    end
                    else begin
                         Pdv_Itens.Cancel ;
                    end;
               end;

               Pdv_Itens.DisableControls ;

               Pdv_Itens.First ;

               Total := 0;

               Total := Total + Arredonda(PdvDESC_ACRES.Value,2) ;

               while not Pdv_Itens.Eof do
               begin
                    Total := Total + arredonda(Pdv_ItensTotal.Value,2) ;

                    Pdv_Itens.Next ;
               end;

               Pdv_Itens.EnableControls ;

               If Pdv.State in [ dsinsert, dsedit ]
               then begin
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end
               else begin
                    Pdv.edit ;
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end;
               FRMPDV.PNTOTAL.Caption  := formatfloat('###,###,##0.00  ', arredonda(Total - DesctoCpCanc,2)) ;
          end;

          TotalCupom := arredonda(Total, 2) ;

          //No momento do fechamento do cupom o vlr. de total já possui desconto aplicado portanto não preciso calcular
          if (Final = 'N') then //novamente
            FrmPdv.PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', arredonda(TotalCupom - DesctoCpCanc, 2))
          else
            FrmPdv.PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', arredonda(TotalCupom,2))
     end;

     If DmaPP.Pdv_Modelo = 'Daruma'
     then begin
          If ( DmApp.Pdv_Ecf = 'S' ) and ( Final = 'S' )
          then begin
               Aux  := Funcoes.SubtotalCupom ;

               Total := StrToFloat(Aux) ;

               If Pdv_Itens.state in [ dsinsert, dsedit ]
               then BEGIN
                    If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
                    and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
                    and ( Pdv_ItensQUANTIDADE.Value > 0     )
                    and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
                    and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
                    then begin
                         Pdv_Itens.Post ;
                    end
                    else begin
                         Pdv_Itens.Cancel ;
                    end;
               END;

               If Pdv.State in [ dsinsert, dsedit ]
               then begin
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end
               else begin
                    Pdv.edit ;
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end;

               FRMPDV.PNTOTAL.Caption := formatfloat('###,###,##0.00  ', arredonda(Total- DesctoCpCanc,2)) ;
          end
          else begin
               If Pdv_Itens.state in [ dsinsert, dsedit ]
               then begin
                    If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
                    and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
                    and ( Pdv_ItensQUANTIDADE.Value > 0     )
                    and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
                    and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
                    then begin
                         Pdv_Itens.Post ;
                    end
                    else begin
                         Pdv_Itens.Cancel ;
                    end;
               end;

               Pdv_Itens.DisableControls ;

               Pdv_Itens.First ;

               Total := 0;

               Total := Total + Arredonda(PdvDESC_ACRES.Value,2) ;

               while not Pdv_Itens.Eof do
               begin
                    Total := Total + arredonda(Pdv_ItensTotal.Value,2) ;

                    Pdv_Itens.Next ;
               end;

               Pdv_Itens.EnableControls ;

               If Pdv.State in [ dsinsert, dsedit ]
               then begin
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end
               else begin
                    Pdv.edit ;
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end;

               FRMPDV.PNTOTAL.Caption  := formatfloat('###,###,##0.00  ', arredonda(Total- DesctoCpCanc,2)) ;
          end;
     end;

     If DmaPP.Pdv_Modelo = 'Dar32DLL'
     then begin
          {If ( DmApp.Pdv_Ecf = 'S' ) and ( Final = 'S' )
          then begin
               SetLength (Aux,14);

               Daruma_FI_SubTotal (Aux) ;

               Len  := Length(Aux);

               Aux := Copy ( Aux, 1, len - 2 ) + ',' + Copy ( Aux, Len - 1, 2 );

               Total := StrToFloat(Aux) ;

               If Pdv_Itens.state in [ dsinsert, dsedit ]
               then BEGIN
                    If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
                    and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
                    and ( Pdv_ItensQUANTIDADE.Value > 0     )
                    and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
                    and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
                    then begin
                         Pdv_Itens.Post ;
                    end
                    else begin
                         Pdv_Itens.Cancel ;
                    end;
               END;

               If Pdv.State in [ dsinsert, dsedit ]
               then begin
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end
               else begin
                    Pdv.edit ;
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end;

               if (Final = 'N') then //novamente
                FrmPdv.PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', arredonda(Total - DesctoCpCanc, 2))
              else
                FrmPdv.PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', arredonda(Total,2));
          end
          else} begin
               If Pdv_Itens.state in [ dsinsert, dsedit ]
               then begin
                    If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
                    and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
                    and ( Pdv_ItensQUANTIDADE.Value > 0     )
                    and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
                    and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
                    then begin
                         Pdv_Itens.Post ;
                    end
                    else begin
                         Pdv_Itens.Cancel ;
                    end;
               end;

               Pdv_Itens.DisableControls ;

               Pdv_Itens.First ;

               Total := 0;

               Total := Total + Arredonda(PdvDESC_ACRES.Value,2) ;

               while not Pdv_Itens.Eof do
               begin
                    Total := Total + arredonda(Pdv_ItensTotal.Value,2) ;

                    Pdv_Itens.Next ;
               end;

               Pdv_Itens.EnableControls ;

               If Pdv.State in [ dsinsert, dsedit ]
               then begin
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end
               else begin
                    Pdv.edit ;
                    PdvTOTAL.Value := arredonda(Total,2) ;
                    Pdv.Post ;
               end;

               //No momento do fechamento do cupom o vlr. de total já possui desconto aplicado portanto não preciso calcular
              if (Final = 'N') then //novamente
                FrmPdv.PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', arredonda(Total - DesctoCpCanc, 2))
              else
                FrmPdv.PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', arredonda(Total,2));
          end;
     end;

     If ( DmaPP.Pdv_Modelo = 'Epson' ) or ( DmaPP.Pdv_Modelo = 'Texto' ) OR ( DmaPP.Pdv_Modelo = 'DS300' )
     then begin
          If Pdv_Itens.state in [ dsinsert, dsedit ]
          then begin
               If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
               and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
               and ( Pdv_ItensQUANTIDADE.Value > 0     )
               and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
               and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
               then begin
                    Pdv_Itens.Post ;
               end
               else begin
                    Pdv_Itens.Cancel ;
               end;
          end;

          Pdv_Itens.DisableControls ;

          Pdv_Itens.First ;

          Total := 0;

          Total := Total + Arredonda(PdvDESC_ACRES.Value,2) ;

          while not Pdv_Itens.Eof do
          begin
               Total := Total + arredonda(Pdv_ItensTotal.Value,2) ;

               Pdv_Itens.Next ;
          end;

          Pdv_Itens.EnableControls ;

          If Pdv.State in [ dsinsert, dsedit ]
          then begin
               PdvTOTAL.Value := arredonda(Total,2) ;
               Pdv.Post ;
          end
          else begin
               Pdv.edit ;
               PdvTOTAL.Value := arredonda(Total,2) ;
               Pdv.Post ;
          end;

          TotalCupom := arredonda(Total, 2) ;
          if (Final = 'N') then //novamente
             FrmPdv.PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', arredonda(TotalCupom - DesctoCpCanc, 2))
          else
             FrmPdv.PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', arredonda(TotalCupom,2));
     end;
  end;

procedure TDmPdv.AtualizaValoresNFiscal ( Final: String );
Var
   Total: Extended ;
   retorno: array[0..16] of char;
   Aux, Aux2: String;
   Len, I: Integer;
begin
     If ( DmaPP.Pdv_Modelo = 'Epson' ) or ( DmaPP.Pdv_Modelo = 'Texto' ) or ( DmApp.Pdv_modelo = 'DS300' )
     then begin
          If Pdv_Itens.state in [ dsinsert, dsedit ]
          then begin
               If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
               and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
               and ( Pdv_ItensQUANTIDADE.Value > 0     )
               and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
               and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
               then begin
                    Pdv_Itens.Post ;
               end
               else begin
                    Pdv_Itens.Cancel ;
               end;
          end;

          Pdv_Itens.DisableControls ;

          Pdv_Itens.Close ;

          Pdv_Itens.Open  ;

          Pdv_Itens.First ;

          Total := 0;

          Total := Total + Arredonda(PdvDESC_ACRES.Value,2) ;

          while not Pdv_Itens.Eof do
          begin
               Total := Total + arredonda(Pdv_ItensTotal.Value,2) ;

               Pdv_Itens.Next ;
          end;

          Pdv_Itens.EnableControls ;

          If Pdv.State in [ dsinsert, dsedit ]
          then begin
               PdvTOTAL.Value := arredonda(Total,2) ;
               Pdv.Post ;
          end
          else begin
               Pdv.edit ;
               PdvTOTAL.Value := arredonda(Total,2) ;
               Pdv.Post ;
          end;

          TotalCupom := arredonda(Total, 2) ;

          FrmPdv.PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', arredonda(TotalCupom,2));// - DesctoCpCanc, 2)) ;
     end;
end;

procedure TDmPdv.BalancaAfterReceive(Sender: TObject; data: String);
Var
   Qntde: Extended;
begin
     TRY
        if ( data <> '' )
        then begin
             If ( frmpdv.CupomAberto )
             then begin
                  If Not Lendob
                  then begin
                       Lendob := True ;
                       Qntde := TrataLeitorB (Data);
                       Pdv_ItensQUANTIDADE.Value := arredonda(Qntde, 3) ;
                       Lendob := False ;
                  end ;
             end;
        end;
     EXCEPT
           LendoB := False ;
     END;
end;

procedure TDmPdv.PdvTROCOValidate(Sender: TField);
Var
   Vlr: Extended ;
begin
          Vlr := PdvTroco.Value ;

          If Vlr < 0
          then begin
               FrmPdv.Status.Caption := 'Saldo ' + formatfloat('###,###,##0.00  ', Vlr );
               Vlr := Vlr * -1 ;
          end;

          If Vlr > 0
          then
              FrmPdv.Status.Caption := 'Trôco ' + formatfloat('###,###,##0.00  ', Vlr )
end;

/////*********CUPOM FISCAL***********////////
procedure TDmPdv.AbrePorta;
var
   porta : TTexto20;
Begin
     IF (DmApp.PDV_PORTA)= 'COM1'
     THEN BEGIN
          Porta := 'COM1';
     END
     ELSE BEGIN
          IF (DmApp.PDV_PORTA)= 'COM2'
          THEN BEGIN
               Porta := 'COM2';
          END;
     END;

     If DmaPP.Pdv_Modelo = 'Sweda'
     then begin
          //
//          Ret := TrataErroCupom ( AFRAC_AbrirPorta(Porta), 'Abrindo Porta');

          Aliquotas ;
     end ;

     If DmaPP.Pdv_Modelo = 'Bematech'
     then begin
          //
//          Funcoes.AbrePorta ;
     end ;

     If DmaPP.Pdv_Modelo = 'Dar32DLL'
     then begin
          //
//          Ret := TrataErroCupom ( Daruma_FI_AbrePortaSerial(), 'Abrindo Porta');
     end ;

end;

Function TDmPdv.AbreCupomFiscal:Integer;
Begin
     zerarLogo ;

     If DmApp.Pdv_Ecf = 'S'
     Then begin
       {   If DmaPP.Pdv_Modelo = 'Sweda'
          then begin
               Result := TrataErroCupom ( AFRAC_AbrirCupom, 'Abrindo Cupom Fiscal');
          end;

          If DmaPP.Pdv_Modelo = 'Dar32DLL'
          then begin
               Result := TrataErroCupom ( Daruma_FI_AbreCupom(Mascaracnpj(DmApp.Cnpj)), 'Abrindo Cupom Fiscal');
          end;

          If DmaPP.Pdv_Modelo = 'Bematech'
          then begin
               Funcoes.AbreCupomFiscal ;
               RESULT := 0;
          end;

          If DmaPP.Pdv_Modelo = 'Daruma'
          then begin
               CUPOMFISCAL.AbrirCupom ;
               mensagemdaruma ( CUPOMFISCAL.mensagemimpressora );
               Result := 0;
          end;

          If (DmaPP.Pdv_Modelo = 'Epson') or (DmaPP.Pdv_Modelo = 'Texto')
          then begin
               AbreCupomEpson ('');

               Result := 0;
          end;  }
     end
     ELSE BEGIN
          If DmaPP.Pdv_Modelo = 'Epson'
          then begin
               Result := 0;
          end
          else
              Result := 1;
     END
end;

procedure TDmPdv.CancelarCupomFiscal;
Begin
     zerarlogo ;

     If frmpdv.CupomAberto
     then begin
          If (Pdv_Itens.State in [ dsinsert, dsedit ])
          then
              Pdv_Itens.Cancel ;

          If not(Pdv.State in [ dsinsert, dsedit ])
          then Begin
               Pdv.Edit ;
               PdvCANCELADA.Value := 'S'  ;
               Pdv.Post ;
          end
          else begin
//               Pdv.Last ;
               Pdv.Edit ;
               PdvCANCELADA.Value := 'S'  ;
               Pdv.Post ;
          end;
     end
     else begin
//          Pdv.Last ;
          Pdv.Edit ;
          PdvCANCELADA.Value := 'S'  ;
          Pdv.Post ;
     end;

     With FrmPdv do
     Begin
          //Inicia PAINEIS
          PNQNTDE.Caption       := formatfloat('###,###,##0.00  ', 0  ) ;
          PNUNITARIO.Caption    := formatfloat('###,###,##0.00  ', 0  ) ;
          PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', 0  ) ;
          EdDigitacao.Clear ;
          Lista.caption := '' ;
          PnDescricao.Caption := Trim(Cumprimento());

          STatus.Caption := 'Aguardando Comandos' ;
          STatus.Refresh ;

          EdDigitacao.Enabled := false ;

          CupomAberto := False ;
     end;

     If DmApp.Pdv_Ecf = 'S'
     Then Begin
         { If DmaPP.Pdv_Modelo = 'Sweda'
          then begin
               Ret := TrataErroCupom ( AFRAC_CancelarCupom('000000'), 'Cancelando Cupom');
          end;

          If DmaPP.Pdv_Modelo = 'Dar32DLL'
          then begin
               Ret := TrataErroCupom ( Daruma_FI_CancelaCupom, 'Cancelando Cupom');
          end;

          If DmaPP.Pdv_Modelo = 'Bematech'
          then begin
               Funcoes.CancelaCupom ;
          end;

          If DmaPP.Pdv_Modelo = 'Daruma'
          then begin
               CUPOMFISCAL.CancelarCupom ;
               mensagemdaruma ( CUPOMFISCAL.mensagemimpressora );
          end;}
     end;
     DMApp.Transaction.CommitRetaining;
end;

procedure TDmPdv.Sangria(Valor: Real);
begin
     If DmApp.Pdv_Ecf = 'S'
     Then begin
         { //Sangria na Impressora Fiscal
          If DmaPP.Pdv_Modelo = 'Sweda'
          then begin

          end;

          If DmaPP.Pdv_Modelo = 'Dar32DLL'
          then begin
               Ret := TrataErroCupom ( Daruma_FI_Sangria( pchar( Formatfloat('###,##0.00', valor) ) ), 'Sangria');
          end;

          If DmaPP.Pdv_Modelo = 'Bematech'
          then begin
               IRetorno := Bematech_FI_Sangria(pchar( Formatfloat('###,##0.00', valor)));
               Analisa_iRetorno(iRetorno);
               Retorno_Impressora(iRetorno);
          end;

          If DmaPP.Pdv_Modelo = 'Daruma'
          then begin

          end; }
     end;
end;

procedure TDmPdv.Suprimento(Valor: Real);
begin
   {  If DmApp.Pdv_Ecf = 'S'
     Then begin
          //Sangria na Impressora Fiscal
          If DmaPP.Pdv_Modelo = 'Sweda'
          then begin

          end;

          If DmaPP.Pdv_Modelo = 'Dar32DLL'
          then begin
               Ret := TrataErroCupom ( Daruma_FI_Suprimento( pchar( Formatfloat('###,##0.00', valor) ) ), 'Sangria');
          end;

          If DmaPP.Pdv_Modelo = 'Bematech'
          then begin
               IRetorno := Bematech_FI_Suprimento(pchar( Formatfloat('###,##0.00', valor)));
               Analisa_iRetorno(iRetorno);
               Retorno_Impressora(iRetorno);
          end;

          If DmaPP.Pdv_Modelo = 'Daruma'
          then begin

          end;
     end;  }
end;

procedure TDmPdv.AbrirGaveta;
Begin
     If DmApp.Pdv_Ecf = 'S'
     Then begin
        {  If DmaPP.Pdv_Modelo = 'Sweda'
          then begin
               Ret := TrataErroCupom ( AFRAC_AbrirGaveta, 'Abrindo Gaveta');
          end;

          If DmaPP.Pdv_Modelo = 'Dar32DLL'
          then begin
               Ret := TrataErroCupom ( Daruma_FI_AcionaGaveta, 'Abrindo Gaveta');
          end;

          If DmaPP.Pdv_Modelo = 'Bematech'
          then begin
               Funcoes.AbreGaveta ;
          end;

          If DmaPP.Pdv_Modelo = 'Daruma'
          then begin
               CUPOMFISCAL.AbrirGaveta ;
               mensagemdaruma ( CUPOMFISCAL.mensagemimpressora );
          end; }
     end;
end;

procedure TDmPdv.TrataAliquotas( Aliquotas: String);
var
   retorno: String;
   Len, I, Y: Integer ;
begin
     Aliquotas := Trim ( Aliquotas );

     Len := Length(Aliquotas);

     //Captura as Aliquotas para analise
     I := 4 ;
     Y := 0 ;
     Repeat
           Retorno := Copy ( Aliquotas, I, 4 );

           If Trim ( Retorno ) <> ''
           then begin
                ConfereAliquotas[Y] := 'M' + Retorno ;
           end;

           I := I + 7;
           Y := Y + 1;
     until ( Trim (Retorno) = '' )
end;

procedure TDmPdv.Aliquotas;
var
   retorno: array[0..512] of char;
   I: Integer;
begin
end;

procedure TDmPdv.AcrescrimoDesconto;
Var
   Tipo, Forma, AD: Char     ;
   Valor          : Extended ;
   ValorStr       : String   ;
Begin
     If DmApp.Pdv_Ecf = 'S'
     Then Begin
        {  If DmaPP.Pdv_Modelo = 'Sweda'
          then begin
               //Criar Formulario
               FrmAcrescimoDescontoPdv := TFrmAcrescimoDescontoPdv.Create(Self);

               If FrmAcrescimoDescontoPdv.Showmodal = MROK Then
               Begin
                    //0 = Acréscimo
                    //1 = Desconto
                    //0 = Porcentagem
                    //1 = Valor
                    FezAcrescimoDesconto := true ;

                    Valor := FrmAcrescimoDescontoPdv.Valor.Value ;

                    If (Pdv_Itens.State in [ dsinsert, dsedit ]) then
                        Pdv_Itens.Cancel ;

                    If not(Pdv.State in [ dsinsert, dsedit ]) then
                        Pdv.Edit ;

                    if Valor > 0 then
                      PdvDESC_ACRES.Value:= -1 * Valor
                    else
                      PdvDESC_ACRES.Value:= Valor;
                                 Pdv.Post ;
                 Valor := Valor ;
                 TotalCupom := ARREDONDA(TotalCupom - Valor,2) ;
                 Tipo := '1';

                    //Atualiza os Valores do Cupom
                 AtualizaValores('N');
                 FrmPdv.PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', arredonda(TotalCupom - DesctoCpCanc,2)) ;
                 ValorStr := Formatfloat ('###,###,##0.00', arredonda(Valor,2));
                 ValorStr := ValoresNumericosCupom ( ValorStr, 'N' );
                 Forma := '1' ;//Sempre Será Por Valor
              //   Ret := TrataErroCupom ( AFRAC_AcrescimoDescontoCupom(pchar(Tipo),'1', Pchar(ValorStr),''),'Acréscimo/Desconto');
               end;

               //liberar Formulario
               FrmAcrescimoDescontoPdv.Free   ;
               FrmAcrescimoDescontoPdv := Nil ;
          end;  }
     end;
end;

procedure TDmPdv.CancelaItem(Item: Integer; Produto: String; Quantidade, Unitario: Real; Unidade, Nome: String );
var
   aux: String;
begin
     If ( Pdv_Itens.State in [ dsinsert, dsedit ] )
     THEN BEGIN
          Pdv_Itens.CANCEL ;
     END;

     If DmaPP.Pdv_Modelo = 'Sweda'
     then begin
          If Item = 0
          then begin
               aux:=IntToStr( Item );

               While Length(Aux) < 2 do
               begin
                    Aux := '0' + Aux ;
               end;

             //  Ret := TrataErroCupom ( AFRAC_CancelarItem(Pchar(aux)), 'Cancelamento de Item');

               If Ret <> 0
               then
                   Exit ;

               If ( Pdv_Itens.State in [ dsinsert, dsedit ] )
               THEN BEGIN
                    If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
                    and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
                    and ( Pdv_ItensQUANTIDADE.Value > 0     )
                    and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
                    and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
                    then begin
                         Pdv_Itens.Post ;
                    end
                    else begin
                         Pdv_Itens.Cancel ;
                    end;
               END;

               Imprime ('<B><P align="left"><FONT color="#FFFF00">'+ 'Item Cancelado => ' + Pdv_ItensPRODUTO.Value + '-' + Pdv_ItensNOME_PRODUTO.Value + '</FONT></P></B><br>', 'QNTDE');

               //Apaga O último Ítem
               Pdv_Itens.Delete ;
          end
          else begin
               aux:=IntToStr( Item );

               While Length(Aux) < 2 do
               begin
                    Aux := '0' + Aux ;
               end;

//               Ret := TrataErroCupom ( AFRAC_CancelarItem(Pchar(aux)), 'Cancelamento de Item');

               If Ret <> 0
               then
                   Exit ;

               Imprime ('<B><P align="left"><FONT color="#FFFF00">'+ 'Item Cancelado => ' + Produto + '-' + Nome + '</FONT></P></B><br>', 'QNTDE');
          end;

          //Atualiza os Valores do Cupom
          AtualizaValores ('N');
     end;

     If DmaPP.Pdv_Modelo = 'Dar32DLL'
     then begin
          If Item = 0
          then begin
               aux:=IntToStr( Item );

               While Length(Aux) < 2 do
               begin
                    Aux := '0' + Aux ;
               end;

         //      Ret := TrataErroCupom ( Daruma_FI_CancelaItemAnterior(), 'Cancelamento de Item');

               If Ret <> 0
               then
                   Exit ;

               If ( Pdv_Itens.State in [ dsinsert, dsedit ] )
               THEN BEGIN
                    If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
                    and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
                    and ( Pdv_ItensQUANTIDADE.Value > 0     )
                    and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
                    and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
                    then begin
                         Pdv_Itens.Post ;
                    end
                    else begin
                         Pdv_Itens.Cancel ;
                    end;
               END;

               Imprime ('<B><P align="left"><FONT color="#FFFF00">'+ 'Item Cancelado => ' + Pdv_ItensPRODUTO.Value + '-' + Pdv_ItensNOME_PRODUTO.Value + '</FONT></P></B><br>', 'QNTDE');

               //Apaga O último Ítem
               Pdv_Itens.Delete ;
          end
          else begin
               aux:=IntToStr( Item );

               While Length(Aux) < 2 do
               begin
                    Aux := '0' + Aux ;
               end;

              // Ret := TrataErroCupom ( Daruma_FI_CancelaItemGenerico(Pchar(aux)), 'Cancelamento de Item');

               If Ret <> 0
               then
                   Exit ;

               Imprime ('<B><P align="left"><FONT color="#FFFF00">'+ 'Item Cancelado => ' + Produto + '-' + Nome + '</FONT></P></B><br>', 'QNTDE');
          end;

          //Atualiza os Valores do Cupom
          AtualizaValores ('N');
     end;


     If DmaPP.Pdv_Modelo = 'Bematech'
     then begin
          If Item = 0
          then begin //CANCELA O ULTIMO ITEM
               Funcoes.CancelaItemAterior ;

               If ( Pdv_Itens.State in [ dsinsert, dsedit ] )
               THEN BEGIN
                    If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
                    and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
                    and ( Pdv_ItensQUANTIDADE.Value > 0     )
                    and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
                    and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
                    then begin
                         Pdv_Itens.Post ;
                    end
                    else begin
                         Pdv_Itens.Cancel ;
                    end;
               END;

               Imprime ('<B><P align="left"><FONT color="#FFFF00">'+ 'Item Cancelado => ' + Pdv_ItensPRODUTO.Value + '-' + Pdv_ItensNOME_PRODUTO.Value + '</FONT></P></B><br>', 'QNTDE');

               //Apaga O último Ítem
               Pdv_Itens.Delete ;
          END
          ELSE BEGIN
               Funcoes.CancelaItemGenerico ( Item ) ;

               Imprime ('<B><P align="left"><FONT color="#FFFF00">'+ 'Item Cancelado => ' + Produto + '-' + Nome + '</FONT></P></B><br>', 'QNTDE');
          END;

          //Atualiza os Valores do Cupom
          AtualizaValores ('N');
     end;

     If DmaPP.Pdv_Modelo = 'Daruma'
     then begin
          If Item = 0
          then begin //CANCELA O ULTIMO ITEM


               If ( Pdv_Itens.State in [ dsinsert, dsedit ] )
               THEN BEGIN
                    If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
                    and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
                    and ( Pdv_ItensQUANTIDADE.Value > 0     )
                    and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
                    and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
                    then begin
                         Pdv_Itens.Post ;
                    end
                    else begin
                         Pdv_Itens.Cancel ;
                    end;
               END;

               Imprime ('<B><P align="left"><FONT color="#FFFF00">'+ 'Item Cancelado => ' + Pdv_ItensPRODUTO.Value + '-' + Pdv_ItensNOME_PRODUTO.Value + '</FONT></P></B><br>', 'QNTDE');

               //Apaga O último Ítem
               Pdv_Itens.Delete ;
          END
          ELSE BEGIN

               Imprime ('<B><P align="left"><FONT color="#FFFF00">'+ 'Item Cancelado => ' + Produto + '-' + Nome + '</FONT></P></B><br>', 'QNTDE');
          END;

          //Atualiza os Valores do Cupom
          AtualizaValores ('N');
     end;

     If ( DmaPP.Pdv_Modelo = 'Epson' ) OR ( DmaPP.Pdv_Modelo = 'Texto' ) or ( DmApp.Pdv_Modelo = 'DS300' )
     then begin
          If Item = 0
          then begin //CANCELA O ULTIMO ITEM
               If ( Pdv_Itens.State in [ dsinsert, dsedit ] )
               THEN BEGIN
                    If ( trim(Pdv_ItensPRODUTO.Value) <> '' )
                    and ( Pdv_ItensPRC_UNITARIO.Value > 0   )
                    and ( Pdv_ItensQUANTIDADE.Value > 0     )
                    and ( trim (Pdv_ItensNOME_PRODUTO.Value ) <> '' )
                    and ( trim (Pdv_ItensALIQUOTA.Value ) <> '' )
                    then begin
                         Pdv_Itens.Post ;
                    end
                    else begin
                         Pdv_Itens.Cancel ;
                    end;
               END;

               Imprime ('<B><P align="left"><FONT color="#FFFF00">'+ 'Item Cancelado => ' + Pdv_ItensPRODUTO.Value + '-' + Pdv_ItensNOME_PRODUTO.Value + '</FONT></P></B><br>', 'QNTDE');

               //Apaga O último Ítem
               Pdv_Itens.Delete ;
          END
          ELSE
          BEGIN
            IF Pdv_itens.locate ('SEQUENCIA', ITEM,[]) THEN
               Pdv_Itens.Delete ;

            Imprime ('<B><P align="left"><FONT color="#FFFF00">'+ 'Item Cancelado => ' + Produto + '-' + Nome + '</FONT></P></B><br>', 'QNTDE');
          END;

          //Atualiza os Valores do Cupom
          AtualizaValoresNFISCAL ('N');
     end;
end;

Function TDmPdv.TotalizaCupom: Boolean ;
Var
   Forma, Valor, Codigo: STring;
   liquido: array[0..20] of char;
   coo: TTexto4;
   Nome, Aux, Linha1, Linha2:String ;
   Cupom, Cliente: Integer;
   LEN, DIA_PREF_FAT, DIA_LANC, MES_LANC, ANO_LANC: word ;
   VENCTO: TDateTime ;
   SAI: BOOLEAN;

   Chq, DvAgencia, DvCheque, DvConta, NumBanco, NumAgencia, NumConta: String;

   Tipo_Vale, Docs, Num_Cupom : String;

   Imprime: Boolean ;

   VALOR_VALE, CARTAOAUX: Real ;

   Cheque_Prazo, Vale_Ticket, Vale_Convenio: Boolean ;
   Pedido : Variant;
Begin

     VALOR_VALE := 0;

     Cheque_Prazo := False ;

     Vale_Ticket := false ;

     Vale_Convenio := true ;

     //Encerra a Venda
     if DmApp.LOCAL_FATURA = 'C'
     then begin
          If Arredonda(PdvVLR_PARC_LC.Value,2) > 0
          then begin
               //Pega Informações do Cliente de Convenio
               FrmConveniadoPdv := TFrmConveniadoPdv.Create(Self);

               FrmConveniadoPdv.Venda_Prazo := true ;

               If FrmConveniadoPdv.Showmodal = MROK
               Then Begin
                    Cliente := FrmConveniadoPdv.Cliente ;
               end;

               FrmConveniadoPdv.free   ;
               FrmConveniadoPdv := Nil ;

               //Anotando na Venda o Cliente do Cheque
               IF not ( PDV.STATE IN [ DSINSERT, DSEDIT ] )
               THEN
                   Pdv.Edit ;

               PdvPESSOA_FJ.value := Cliente ;

               Result := true ;
          end
          else
              Result := true ;
     end
     else begin
          If Arredonda(PdvVLR_PARC_LC.Value,2) > 0
          then begin
               //Lancar Convenio
               if DmApp.Perfil_ComputadorPDV_CONTRA_VALE.value = 'S'
               Then begin
                    Valor_Vale := -1 * PdvTROCO.Value ;

                    if valor_vale > 0
                    then
                        Vale_Convenio := true ;

                    if not LANCARCONVENIO ( PdvCodigo.Value, Arredonda(PdvVLR_PARC_LC.Value,2) )
                    then begin
                         result := false ;
                         exit ;
                    end
                    else
                        result := true ;
               end
               else begin
                    if not LANCARCONVENIO ( PdvCodigo.Value, Arredonda(PdvVLR_PARC_LC.Value,2) )
                    then begin
                         result := false ;
                         exit ;
                    end
                    else
                        result := true ;
               end;
          end
          else
              result := true ;
     end;

     Imprime := FALSE ;

     //Abrir a Gaveta
     AbrirGaveta;

     If (FezAcrescimoDesconto) or (PdvDESC_ACRES.Value > 0)
     Then begin
          liquido:=#0;


     end;

     If ((DmaPP.Pdv_Modelo = 'Dar32DLL') and (dmApp.BCH_ATIVO <> 'S'))
     then begin
          liquido:=#0;

       //   Ret := TrataErroCupom (Daruma_FI_IniciaFechamentoCupom( 'D', '$', pchar('0,00') ),'Fechando Formas de Pagamento');
     end;

     If ((DmaPP.Pdv_Modelo = 'Bematech') and (dmApp.BCH_ATIVO <> 'S'))
     then begin
          Funcoes.IniciaFechamentoCupom ('D', '$', '0,00' );
     END;

     If DmaPP.Pdv_Modelo = 'Daruma'
     then begin
     END;

     {If ( DmaPP.Pdv_Modelo = 'Epson' ) or ( DmaPP.Pdv_Modelo = 'Texto' )
     then begin
     END;}

     If Arredonda(PdvDINHEIRO.Value,2) > 0
     then begin
          If ((DmaPP.Pdv_Modelo = 'Sweda') and (dmApp.BCH_ATIVO <> 'S'))
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvDINHEIRO.Value,2));

               Valor := ValoresNumericosCupom ( Valor, 'N' );

         //      Ret   := TrataErroCupom ( AFRAC_FormaPagamento('DINHEIRO','00', pchar(Valor), ''), ' Forma Dinheiro');
          end;

          If ((DmaPP.Pdv_Modelo = 'Dar32DLL') and (dmApp.BCH_ATIVO <> 'S'))
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvDINHEIRO.Value,2));

               Valor := ValoresNumericosCupom ( Valor, 'N' );

            //   Ret   := TrataErroCupom ( Daruma_FI_EfetuaFormaPagamento( pchar( 'DINHEIRO' ), pchar(Valor) ), ' Forma Dinheiro');
          end;

          If ((DmaPP.Pdv_Modelo = 'Bematech') and (dmApp.BCH_ATIVO <> 'S'))
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvDINHEIRO.Value,2));

               Funcoes.FormaPagamento ( 'DINHEIRO', Valor );
          end;

          If ( DmaPP.Pdv_Modelo = 'Texto' )
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvDINHEIRO.Value,2));

               FormaPagamentoEpson ( 'DINHEIRO', Valor );
          end;

          If DmaPP.Pdv_Modelo = 'Daruma'
          then begin
          end;
     end;

     If Arredonda(PdvCHEQUE.Value,2) > 0
     then begin
          If DmaPP.Pdv_Modelo = 'Sweda'
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvCHEQUE.Value,2));

               Valor := ValoresNumericosCupom ( Valor, 'N' );

         //      Ret   := TrataErroCupom ( AFRAC_FormaPagamento('CHEQUE','01', pchar(Valor), ''), ' Forma Cheque');
          end;

          If DmaPP.Pdv_Modelo = 'Dar32DLL'
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvCHEQUE.Value,2));

               Valor := ValoresNumericosCupom ( Valor, 'N' );

         //      Ret   := TrataErroCupom ( Daruma_FI_EfetuaFormaPagamento( pchar( 'CHEQUE' ), pchar(Valor) ), ' Forma Cheque');
          end;

          If ( DmaPP.Pdv_Modelo = 'Texto' )
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvCHEQUE.Value,2));

               FormaPagamentoEpson ( 'CHEQUE', Valor );
          end;

          If DmaPP.Pdv_Modelo = 'Bematech'
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvCHEQUE.Value,2));

               Funcoes.FormaPagamento ( 'CHEQUE', Valor );
          end;

          If DmaPP.Pdv_Modelo = 'Daruma'
          then begin
          end;
     end;

     If Arredonda(PdvTICKET.Value,2) > 0
     then begin
          If DmaPP.Pdv_Modelo = 'Sweda'
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvTICKET.Value,2));

               Valor := ValoresNumericosCupom ( Valor, 'N' );

           //    Ret   := TrataErroCupom ( AFRAC_FormaPagamento('TICKET','03', pchar(Valor), ''), ' Forma Ticket');
          end;

          If DmaPP.Pdv_Modelo = 'Dar32DLL'
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvTICKET.Value,2));

               Valor := ValoresNumericosCupom ( Valor, 'N' );

           //    Ret   := TrataErroCupom ( Daruma_FI_EfetuaFormaPagamento( pchar( 'TICKET' ), pchar(Valor) ), ' Forma Ticket');
          end;

          If ( DmaPP.Pdv_Modelo = 'Texto' )
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvCARTAO.Value,2));

               FormaPagamentoEpson ( 'CARTAO', Valor );
          end;

          If DmaPP.Pdv_Modelo = 'Bematech'
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvTICKET.Value,2));

               Funcoes.FormaPagamento ( 'TICKET', Valor );
          end;

          If DmaPP.Pdv_Modelo = 'Daruma'
          then begin
          end;

          //VERIFICA SE TEM VALE TROCO AQUI
          if ( DMAPP.Perfil_ComputadorPDV_CONTRA_VALE.VALUE = 'S' )
          then begin
               Valor_Vale := -1 * DmPdv.Pdvtroco.Value ;
               Vale_Ticket := True ;
          end;
     end;

     If Arredonda(PdvVLR_PARC_LC.Value,2) > 0
     then begin
          If DmaPP.Pdv_Modelo = 'Sweda'
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvVLR_PARC_LC.Value,2));

               Valor := ValoresNumericosCupom ( Valor, 'N' );

          //     Ret   := TrataErroCupom ( AFRAC_FormaPagamento('CONVENIO', '', pchar(Valor), ''), ' Forma Convênio');
          End;

          If DmaPP.Pdv_Modelo = 'Dar32DLL'
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvVLR_PARC_LC.Value,2));

               Valor := ValoresNumericosCupom ( Valor, 'N' );

          //     Ret   := TrataErroCupom ( Daruma_FI_EfetuaFormaPagamento( pchar( 'CONVENIO' ), pchar(Valor) ), ' Forma Convênio');
          end;

          If ( DmaPP.Pdv_Modelo = 'Texto' )
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvVLR_PARC_LC.Value,2));

               FormaPagamentoEpson ( 'DINHEIRO', Valor );
          end;

          If DmaPP.Pdv_Modelo = 'Bematech'
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvVLR_PARC_LC.Value,2));

               Funcoes.FormaPagamento ( 'CONVENIO', Valor );
          end;

          If DmaPP.Pdv_Modelo = 'Daruma'
          then begin
          end;

          Imprime := True ;
     end;

     If ( Arredonda(PdvCARTAO.Value,2) > 0 ) and ( TRIM(DmApp.DIRETORIO_TEF) = ''  )
     then begin
          If DmaPP.Pdv_Modelo = 'Sweda'
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvCARTAO.Value,2));

               Valor := ValoresNumericosCupom ( Valor, 'N' );

            //   Ret   := TrataErroCupom ( AFRAC_FormaPagamento('CARTAO','02', pchar(Valor), ''), ' Forma Cartão');
          end;

          If DmaPP.Pdv_Modelo = 'Dar32DLL'
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvCARTAO.Value,2));

               Valor := ValoresNumericosCupom ( Valor, 'N' );

         //      Ret   := TrataErroCupom ( Daruma_FI_EfetuaFormaPagamento( pchar( 'CARTAO' ), pchar(Valor) ), ' Forma Cartao');
          end;

          If ( DmaPP.Pdv_Modelo = 'Texto' )
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvCARTAO.Value,2));

               FormaPagamentoEpson ( 'CARTAO', Valor );
          end;

          If DmaPP.Pdv_Modelo = 'Bematech'
          then begin
               Valor := Formatfloat ('###,###,##0.00', Arredonda(PdvCARTAO.Value,2));

               Funcoes.FormaPagamento ( 'CARTAO', Valor );
          end;

          If DmaPP.Pdv_Modelo = 'Daruma'
          then begin
          end;
     end;

     //Número de controle de pedidos para o restaurando do shoping
     if DMApp.CONTROLE_PEDIDO_RESTAURANTE = 'S' then
     begin
        Pedido := RetornaValor('SELECT GEN_ID(GNR_CONTROLE_PEDIDO_RESTAURANTE, 1) FROM RDB$DATABASE');
        Pedido := ' PDD:'+VarToStr(Pedido);
     end
     else
      Pedido := '';

     Linha1 := DmApp.PDV_MENSAGEM  ; //aqui


     If DmaPP.Pdv_Modelo = 'Bematech'
     then begin
          Linha1 := Linha1 + PEDIDO ;

          Linha1 := Linha1 + ' -  ' + IntToStr(DmApp.usuariocaixa) + '-' + DmApp.NomeCaixa ;

          If PdvPessoa_Fj.Value > 0
          then begin
               Linha1 := Completa(Linha1, ' ', 48 );

               VerPessoa ( PdvPessoa_Fj.Value );

               IF ( PdvNOME_CONSUMIDOR.VALUE <> '' ) AND ( UPPERCASE(PdvNOME_CONSUMIDOR.VALUE) <> 'CONSUMIDOR' )
               AND ( PdvPESSOA_FJ.VALUE = 1 )
               THEN BEGIN
                    //NOME
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(PdvNOME_CONSUMIDOR.VALUE,1,48), ' ', 48 );

                    //ENDERECO
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(PdvENDERECO_CONSUMIDOR.VALUE,1,48), ' ', 48 );

                    //CIDADE
                    Docs := '';
                                                       //aqui
                    Linha1 := Linha1 + Completa ( COPY(PdvCIDADE_CONSUMIDOR.VALUE + ' UF: '+ DMAPP.UF,1,48), ' ', 48 );

                    //BAIRRO
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(PdvBAIRRO_CONSUMIDOR.VALUE + ' FONE: ' + PdvFONE_CONSUMIDOR.VALUE,1,48), ' ', 48 );

                    //DOCUMENTOS
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY('CPF ' + PdvDOCUMENTOS_CONSUMIDOR.VALUE,1,48) , ' ', 48 );
               END
               ELSE BEGIN
                    //NOME
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(Razao,1,48), ' ', 48 );

                    //ENDERECO
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(Endereco,1,48), ' ', 48 );

                    //CIDADE
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(NomeCidade + ' UF: '+ EstadoCep,1,48), ' ', 48 );

                    //BAIRRO
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(NomeBairro + ' FONE: ' + NumeroFone,1,48), ' ', 48 );

                    //DOCUMENTOS
                    Docs := '';

                    IF LENGTH(TRIM(DOCTOS))<= 14
                    THEN BEGIN
                         Linha1 := Linha1 + Completa ( COPY('CPF ' + Doctos + ' RG: ' + IERG,1,48), ' ', 48 );
                    END
                    ELSE BEGIN
                         Linha1 := Linha1 + Completa ( COPY('CNPJ ' + Doctos + ' IE: ' + IERG,1,48), ' ', 48 );
                    END;
               END;
          end;
          Funcoes.FechaCupom ( Linha1 );
     END;

     If (DmaPP.Pdv_Modelo = 'Epson') or (DmaPP.Pdv_Modelo = 'Texto')
     then begin
          If PdvPessoa_Fj.Value > 0
          then begin
               Linha1 := Completa(Linha1, ' ', 48 );

               VerPessoa ( PdvPessoa_Fj.Value );

               IF ( PdvNOME_CONSUMIDOR.VALUE <> '' ) AND ( UPPERCASE(PdvNOME_CONSUMIDOR.VALUE) <> 'CONSUMIDOR' )
               AND ( PdvPESSOA_FJ.VALUE = 1 )
               THEN BEGIN
                    //NOME
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(PdvNOME_CONSUMIDOR.VALUE,1,48), ' ', 48 );

                    //ENDERECO
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(PdvENDERECO_CONSUMIDOR.VALUE,1,48), ' ', 48 );

                    //CIDADE
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(DMAPP.CIDADE + ' UF: '+ DMAPP.UF,1,48), ' ', 48 );

                    //BAIRRO
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(DMAPP.BAIRRO + ' FONE: ' + DMAPP.FONE,1,48), ' ', 48 );

                    //DOCUMENTOS
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY('CPF ' + PdvDOCUMENTOS_CONSUMIDOR.VALUE,1,48) , ' ', 48 );
               END
               ELSE BEGIN
                    //NOME
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(Razao,1,48), ' ', 48 );

                    //ENDERECO
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(Endereco,1,48), ' ', 48 );

                    //CIDADE
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(NomeCidade + ' UF: '+ EstadoCep,1,48), ' ', 48 );

                    //BAIRRO
                    Docs := '';

                    Linha1 := Linha1 + Completa ( COPY(NomeBairro + ' FONE: ' + NumeroFone,1,48), ' ', 48 );

                    //DOCUMENTOS
                    Docs := '';

                    IF LENGTH(TRIM(DOCTOS))<= 14
                    THEN BEGIN
                         Linha1 := Linha1 + Completa ( COPY('CPF ' + Doctos + ' RG: ' + IERG,1,48), ' ', 48 );
                    END
                    ELSE BEGIN
                         Linha1 := Linha1 + Completa ( COPY('CNPJ ' + Doctos + ' IE: ' + IERG,1,48), ' ', 48 );
                    END;
               END;
          end;

          IF (DmaPP.Pdv_Modelo = 'Texto')
          Then
              FechaCupomEpson ( Linha1 );
     END;

     If DmaPP.Pdv_Modelo = 'Daruma'
     then begin
          If PdvPessoa_Fj.Value > 0
          then begin
               VerPessoa ( PdvPessoa_Fj.Value );

               IF ( PdvNOME_CONSUMIDOR.VALUE <> '' ) AND ( UPPERCASE(PdvNOME_CONSUMIDOR.VALUE) <> 'CONSUMIDOR' )
               AND ( PdvPESSOA_FJ.VALUE = 1 )
               THEN BEGIN
                    //NOME
                    Docs := '';

               END;
          end;


     END;

     If DmaPP.Pdv_Modelo = 'Dar32DLL'
     then begin
          If PdvPessoa_Fj.Value > 0
          then begin
               VerPessoa ( PdvPessoa_Fj.Value );

               //DOCUMENTOS
               Docs := '';

               IF TRIM( DOCS ) = ''
               THEN
                   DOCS := '0';
          end
          Else begin
               Razao := 'Consumidor' ;
               Endereco := '';

               IF TRIM( DOCS ) = ''
               THEN
                   DOCS := '0';
          end;


          //QDO TEM TEF A IDENTIFICAÇÃO É AUTOMATICA
          IF ( TRIM(DmApp.DIRETORIO_TEF) = '' )
          THEN BEGIN
               IF ( PdvNOME_CONSUMIDOR.VALUE <> '' ) AND ( UPPERCASE(PdvNOME_CONSUMIDOR.VALUE) <> 'CONSUMIDOR' )
               AND ( PdvPESSOA_FJ.VALUE = 1 )
               THEN BEGIN
         //           TrataErroCupom ( Daruma_FI_IdentificaConsumidor( pchar( COPY(PdvNOME_CONSUMIDOR.VALUE,1,42) ), pchar( COPY(PdvENDERECO_CONSUMIDOR.VALUE,1,42) ), pchar( COPY('CPF ' + PdvDOCUMENTOS_CONSUMIDOR.VALUE ,1,42) ) ), 'Mensagem do Cupom');
               END
               ELSE BEGIN
         //           TrataErroCupom ( Daruma_FI_IdentificaConsumidor( pchar( COPY(Razao,1,42) ), pchar( COPY(Endereco,1,42) ), pchar( COPY('CPF ' + Doctos + ' RG: ' + IERG,1,42) ) ), 'Mensagem do Cupom');
               END;
          END;


              { If trim(DmApp.PDV_MENSAGEM) <> ''
               then
                   TrataErroCupom ( Daruma_FI_TerminaFechamentoCupom( ( DmApp.PDV_MENSAGEM + Pedido + IntToStr(DmApp.usuariocaixa) + '-' + DmApp.NomeCaixa)), 'Fechando Cupom')
               else
                   TrataErroCupom ( Daruma_FI_TerminaFechamentoCupom( ( 'OBRIGADO VOLTE SEMPRE!'+Pedido )), 'Fechando Cupom');    }
          
     END;

     //CHEQUES

     If (( Arredonda(PdvCHEQUE.Value,2) > 0 ) OR  (Arredonda(PdvCARTAO.Value,2) > 0)) then
     begin
          //Pega Informações do Cliente de Cheque
          FrmConveniadoPdv := TFrmConveniadoPdv.Create(Self);
          If FrmConveniadoPdv.Showmodal = MROK Then
          Begin
               Coo := '';

               //023 retorna o numero do ultimo cupom
               //retorna o numero do ultimo cupom
               If DmaPP.Pdv_Modelo = 'Dar32DLL' then
               begin
                 SetLength (Num_Cupom,6);
              //   Ret   := TrataErroCupom ( Daruma_FI_NumeroCupom(Num_Cupom), 'Buscando Nº do Cupom');
               end;

               //023 retorna o numero do ultimo cupom
               If DmaPP.Pdv_Modelo = 'Bematech' then
                 Ret   := Funcoes.NumeroUltimoCupom ;

               //023 retorna o numero do ultimo cupom
               If DmaPP.Pdv_Modelo = 'Daruma' then
               begin
               end;

               Cliente := FrmConveniadoPdv.Cliente ;
               //Anotando na Venda o Cliente do Cheque
               IF not ( PDV.STATE IN [ DSINSERT, DSEDIT ] ) THEN
                   Pdv.Edit ;

               PdvPESSOA_FJ.value := Cliente ;

               //LANCA O CHEQUE
               If trim((strpas(Coo))) <> '' then
                 Cupom := StrToInt(strpas(Coo))
               else if Trim(Num_Cupom) <> '' then
                 Cupom := StrtoInt (Trim(Num_Cupom))
               else
                 Cupom := PdvCodigo.Value;

               if ((DmApp.DIG_CHEQUE_VENDA = 'S') and (Arredonda(PdvCHEQUE.Value,2) > 0)) then
               begin
                 FrmCheque_Pdv := TFrmCheque_Pdv.Create(Self);
                 FrmCheque_Pdv.ShowModal;
                 FrmCheque_Pdv.Free ;
                 FrmCheque_Pdv := Nil;
                 Cheque_Prazo := DmApp.Cheque_Prazo ;
               end;

               if ((DmApp.DIG_CARTAO_VENDA = 'S') and (Arredonda(PdvCARTAO.Value,2) > 0)) then
               begin
                 FrmCartao_Venda := TFrmCartao_Venda.Create(Self);
                 FrmCartao_Venda.VlrCartao := PdvCARTAO.Value;
                 FrmCartao_Venda.Venda := true;
                 FrmCartao_Venda.CodigoVenda  := PdvCODIGO.Value;
                 FrmCartao_Venda.Data := dmApp.DataCaixa;

                 FrmCartao_Venda.ShowModal;
                 FrmCartao_Venda.Free ;
                 FrmCartao_Venda := Nil;
               end;

               Valor_Vale := -1 * DmPdv.Pdvtroco.Value ;
          end;

          FrmConveniadoPdv.Free ;
          FrmConveniadoPdv := Nil;
          PessoaCPF.Close ;
          PessoaNome.Close ;
          PessoaCod.Close ;
     end;


     IF ( PDV.STATE IN [ DSINSERT, DSEDIT ] ) THEN
         PDV.POST ;

     //ENVIA PARA O CAIXA
     Codigo := DmaPP.Envia_Caixa_Pdv ( DmApp.Cnpj, PdvCODIGO.Value );

     //Encerra a Venda
     if DmApp.LOCAL_FATURA = 'C'
     then begin
          FRelEnviaCaixa              := TFRelEnviaCaixa.Create(Self);
          FRelEnviaCaixa.PedidoNumero := PdvCODIGO.Value   ;
          FRelEnviaCaixa.Tipo         := 'FATURA' ;
          //FECHADO A VENDA
          FRelEnviaCaixa.Showmodal ;
     end
     else
     begin
          //se existe troco em vale cadastrando o tipo de vale dado na venda
          if Valor_Vale > 0 then
          begin
              if Cheque_Prazo then
                Tipo_Vale := 'C'
              else if Vale_Ticket then
                Tipo_Vale := 'T'
              else if  Vale_Convenio then
                Tipo_Vale := 'V'
              else
                Tipo_Vale := '';
          end;
          DmApp.Encerra_Venda(DmApp.Cnpj, PdvCODIGO.value, DmApp.DataCaixa, DmApp.UsuarioCaixa, DmApp.ContaCaixa, DmApp.TurnoCaixa,Tipo_Vale);
     end;

     ZerarPaineis ;

     IF ((( Arredonda(PdvVLR_PARC_LC.Value,2) > 0 ) and (( DmaPP.PDV_ECF <> 'S' )
     OR (DMAPP.Perfil_ComputadorTIPO_IMP_PDV.VALUE = 'DS300'))) AND (DmApp.PDV_IMP_CONVENIO = 'S'))
     THEN BEGIN
          if DMAPP.Perfil_ComputadorPDV_CONFIRMA_IMPRESSAO.value = 'S' Then
          begin
            if messagedlg('Confirma a Impressão da Fatura?', mtConfirmation,[mbok, mbcancel],0) = mrok then
              ImprimeConvenio;
          end
          else
            ImprimeConvenio;
     END ;

     //AQUI SERÁ VERIFICADO PARAMETRO PARA SABER SE IMPRIME O COMPROVANTE PARA VENDAS A VISTA TBM NA DS300
     IF
     (   ( Arredonda(PdvVLR_PARC_LC.Value,2) = 0 )
     and ( DmaPP.PDV_ECF <> 'S' )
     And (DMAPP.Perfil_ComputadorTIPO_IMP_PDV.VALUE = 'DS300')
     and (DMAPP.Perfil_ComputadorPDV_CONFIRMA_IMPRESSAO_VISTA.value = 'S')
     )
     THEN BEGIN
          if messagedlg('Confirma a Impressão da Fatura?', mtConfirmation,[mbok, mbcancel],0) = mrok then
              ImprimeConvenio;
     END ;


     IF (( Arredonda(PdvVLR_PARC_LC.Value,2) > 0 ) and (( DmApp.PDV_ECF = 'S' ) and (DMAPP.Perfil_ComputadorPDV_EMITE_COMPROVANTE_NF.VALUE = 'S')))
     THEN BEGIN
          ImprimeConvenio_Nao_Fiscal  ;
     END ;

      IF ( DMAPP.IMP_ITENS_PDV = 'S' )   THEN
     BEGIN
       if DMAPP.Perfil_ComputadorPDV_CONFIRMA_IMPRESSAO.value = 'S' Then
       begin
          if messagedlg('Confirma a Impressão?', mtConfirmation,[mbok, mbcancel],0) = mrok  then
           Imprimevenda ;
       end
       else
        ImprimeVenda;
     END ;

     //IMPRIME O CONTRA VALE DO CHEQUE
     IF (( DMAPP.Perfil_ComputadorPDV_CONTRA_VALE.VALUE = 'S' ) AND ( VALOR_VALE > 0 ) AND ( Cheque_Prazo )) THEN
         ImPrimeConvenio_Contra_Vale_Cheque ( Arredonda(PdvCHEQUE.Value,2), Valor_Vale );

     //IMPRIME O CONTRA VALE DO TICKET
     IF (( DMAPP.Perfil_ComputadorPDV_CONTRA_VALE.VALUE = 'S' ) AND ( VALOR_VALE > 0 ) AND ( Vale_Ticket )) THEN
         ImPrimeConvenio_Contra_Vale_Ticket ( Arredonda(PdvTICKET.Value,2), Valor_Vale );

end;

procedure TDmPdv.ImPrimeVenda ;
Var
   LinhaPdv: Integer;
   Aux, CODPEDIDO: String ;
   Total   : Real   ;
Begin
     //Número de controle de pedidos para o restaurando do shoping   boy
     if DMApp.CONTROLE_PEDIDO_RESTAURANTE = 'S' then
     begin
        CODPedido := RetornaValor('SELECT GEN_ID(GNR_CONTROLE_PEDIDO_RESTAURANTE, 0) FROM RDB$DATABASE');
        CODPedido := ' PDD:'+VarToStr(CODPedido);
     end
     else
      CODPedido := '';

     total := 0;

     IF TRIM(DmApp.Perfil_ComputadorPORTA_PDV.VALUE  ) <> ''
     THEN BEGIN
          SetDefaultPrinter( DmApp.Perfil_ComputadorPORTA_PDV.VALUE )       ;
          Print.SetPrinterbyPorta ( DmApp.Perfil_ComputadorPORTA_PDV.VALUE );
          Print.PortaComunicacao := DmApp.Perfil_ComputadorPORTA_PDV.VALUE  ;
     END;

     IF DMAPP.Perfil_ComputadorTIPO_IMP_PDV.VALUE = 'Texto'
     THEN BEGIN
          Pdv_Itens.FetchAll ;

          Print.TamanhoQteLinhas := 33 + Pdv_Itens.RecordCount ;

          Print.OpcoesPreview.Preview := false ;

          print.abrir ;

          Print.ImpF(02, 01, DMAPP.Nome,[COMP17]  );

          Print.ImpF(03, 01, DMAPP.ENDER,[COMP17]  );

          Print.ImpF(04, 01, 'FONE ' + DmApp.FONE,[COMP17]   );

          Print.ImpF(05, 01, Replicate('-', 40),[COMP17]  );

          Print.ImpF(06, 01, 'VENDA No ' + PdvCODIGO.TEXT,[COMP17]);

          Print.ImpF(06, 13, ' TICKET DO CLIENTE',[COMP17] );

          Print.ImpF(07, 01, '2a VIA - CLIENTE       1a VIA - EMPRESA',[COMP17] );

          Print.ImpF(08, 01, Replicate('-', 40),[COMP17]  );

          Print.ImpF(09, 01, 'CLIENTE: ' + copy(PdvPESSOA_FJ.text + '-' + PdvNOME.VALUE,1,30),[COMP17]);

          Print.ImpF(10, 01, 'DATA   : ' + PdvDATA.TEXT  + ' VEND:' +  COPY(PdvNOME_VENDEDOR.TEXT,1,15) ,[COMP17]);

          Print.ImpF(11, 01,  'VALOR  : ',[COMP17]  );

          IF PDVVLR_PARC_LC.VALUE > 0
          THEN
              Print.ImpF(11, 15,  PDVVLR_PARC_LC.text,[COMP17]  )
          ELSE
              Print.ImpF(11, 15,  PdvTOTAL.text,[COMP17]  );

          Print.ImpF(12, 01, 'HORA   : ' + TIMETOSTR(TIME) + CODPEDIDO,[COMP17]  );

          //IMPRIME OS ITENS
          Pdv_Itens.FIRST ;

          Print.ImpF(13, 01, Replicate('-', 40),[COMP17]  );

          LinhaPdv := 14 ;

          WHILE NOT Pdv_Itens.EOF DO
          BEGIN
               AUX := '' ;

               AUX := ALINHADIREITA(copy(copy(Pdv_ItensPRODUTO.value, 1, 6) + copy ( Pdv_ItensNOME_PRODUTO.Value, 1, 19),1,21),21);

               AUX := AUX + AlinhaEsquerda ( Pdv_ItensQUANTIDADE.TEXT   , 6  );

               AUX := AUX + AlinhaEsquerda ( Pdv_ItensPRC_UNITARIO.TEXT , 6  );

               AUX := AUX + AlinhaEsquerda ( Pdv_ItensTOTAL.TEXT        , 7  );

               TOTAL := TOTAL + Pdv_ItensTOTAL.VALUE ;

               Print.ImpF(LinhaPdv, 01, aux,[COMP17] );

               LinhaPdv := LinhaPdv + 1;

               Pdv_Itens.next ;
          END;

          LinhaPdv := LinhaPdv + 1;

          Print.ImpF(LinhaPdv, 01, Replicate('-', 40) ,[COMP17] );

          LinhaPdv := LinhaPdv + 1;

          AUX := '' ;

          AUX := ALINHADIREITA('',21);

          AUX := AUX + AlinhaEsquerda ( 'TOTAL' , 6 );

          AUX := AUX + AlinhaEsquerda ( '' , 6 );

          AUX := AUX + AlinhaEsquerda ( FORMATFLOAT('##0.00', TOTAL), 7 );

          Print.ImpF(LinhaPdv, 01, aux,[COMP17] );

          LinhaPdv := LinhaPdv + 1;

          LinhaPdv := LinhaPdv + 1;

          Print.ImpF(LinhaPdv, 01, Replicate('-', 40),[COMP17]  );

          LinhaPdv := LinhaPdv + 1;

          Print.ImpF(LinhaPdv, 01, PdvNOME.VALUE,[COMP17] );

          LinhaPdv := LinhaPdv + 1;

          Print.ImpF(LinhaPdv, 01, '',[COMP17] );

          LinhaPdv := LinhaPdv + 1;

          Print.ImpF(LinhaPdv, 01, '',[COMP17] );

          LinhaPdv := LinhaPdv + 1;

          Print.ImpF(LinhaPdv, 01, '',[COMP17] );

          LinhaPdv := LinhaPdv + 1;

          Print.ImpF(LinhaPdv, 01, '',[COMP17] );

          LinhaPdv := LinhaPdv + 1;

          Print.ImpF(LinhaPdv, 01, '_',[COMP17] );
     END
     else if DMAPP.Perfil_ComputadorTIPO_IMP_PDV.VALUE = 'MP20MI' then
     begin
       dmCadastros.serie.close;
       dmCadastros.serie.parambyname('cnpj').value := dmapp.cnpj;
       dmCadastros.serie.open;

       DMCadastros.EdtSerieNF.close;
       DMCadastros.EdtSerieNF.parambyname('cnpj').value := dmapp.cnpj;
       DMCadastros.EdtSerieNF.open;

       FrmPdv.rptSerieNF.Template.DatabaseSettings.Name := dmapp.cnpj;
       FrmPdv.rptSerieNF.Template.LoadFromDatabase;

       DmVendas2.qrySeriesNF.Close;
       DmVendas2.qrySeriesNF.sql.clear;
       DmVendas2.qrySeriesNF.sql.text :=' select * from PCD_IMPRIME_SERIE_NF(:venda,:cnpj)';
       DmVendas2.qrySeriesNF.ParamByName('cnpj').value := dmApp.cnpj;
       DmVendas2.qrySeriesNF.ParamByName('venda').value := PdvCODIGO.asInteger;
       DmVendas2.qrySeriesNF.open;

       DMCadastros.QryIndices.close;
       DMCadastros.QryIndices.parambyname('venda').value := PdvCODIGO.asInteger;
       DMCadastros.QryIndices.parambyname('data').value := dmApp.Datacaixa;
       DMCadastros.QryIndices.parambyname('total').value := DmVendas2.qrySeriesNFTOTAL.value;
       DMCadastros.QryIndices.open;

       FrmPdv.rptSerieNF.print;
       with FrmPdv do
       begin


         {rptSerieNF.Template.DatabaseSettings.DataPipeline := ppLayout;
         rptSerieNF.Template.DatabaseSettings.NameField := 'CNPJ';
         rptSerieNF.Template.DatabaseSettings.TemplateField := 'CONFIG_SERIE_NF';


         rptSerieNF.print;   }

       end;
     end
     ELSE BEGIN
          Pdv_Itens.FetchAll ;

          Print.TamanhoQteLinhas := 27 + Pdv_Itens.RecordCount ;

          Print.OpcoesPreview.Preview := false ;

          print.abrir ;

          Print.Imp(02, 01, DMAPP.Nome  );

          Print.Imp(03, 01, DMAPP.ENDER  );

          Print.Imp(04, 01, 'FONE ' + DmApp.FONE   );

          Print.Imp(05, 01, Replicate('-', 40)  );

          Print.Imp(06, 01, 'VENDA No ' + PdvCODIGO.TEXT);

          Print.Imp(06, 21, '   TICKET DO CLIENTE' );

          Print.Imp(07, 01, '2a VIA - CLIENTE       1a VIA - EMPRESA' );

          Print.Imp(08, 01, Replicate('-', 40)  );

          Print.Imp(09, 01, 'CLIENTE: ' + copy(PdvPESSOA_FJ.text + '-' + PdvNOME.VALUE,1,30));

          Print.Imp(10, 01, 'DATA   : ' + PdvDATA.TEXT  + ' VEND : ' +  PdvVENDEDOR.TEXT );

          Print.Imp(11, 01,  'VALOR  : '  );

          IF PDVVLR_PARC_LC.VALUE > 0
          THEN
              Print.Imp(11, 15,  PDVVLR_PARC_LC.text  )
          ELSE
              Print.Imp(11, 15,  PdvTOTAL.text  );

          Print.Imp(12, 01, 'HORA   : ' + TIMETOSTR(TIME) + CODPEDIDO );

          If ( Pdv_Itens.state in [ dsinsert, dsedit ] )
          then
            Pdv_Itens.cancel ;

          //IMPRIME OS ITENS
          Pdv_Itens.FIRST ;

          Print.Imp(13, 01, Replicate('-', 40)  );

          LinhaPdv := 14 ;

          WHILE NOT Pdv_Itens.EOF DO
          BEGIN
               AUX := '' ;

               AUX := ALINHADIREITA(copy(copy(Pdv_ItensPRODUTO.value, 1, 6) + copy ( Pdv_ItensNOME_PRODUTO.Value, 1, 19),1,21),21);

               AUX := AUX + AlinhaEsquerda ( Pdv_ItensQUANTIDADE.TEXT   , 6  );

               AUX := AUX + AlinhaEsquerda ( Pdv_ItensPRC_UNITARIO.TEXT , 6  );

               AUX := AUX + AlinhaEsquerda ( Pdv_ItensTOTAL.TEXT        , 7  );

               TOTAL := TOTAL + Pdv_ItensTOTAL.VALUE ;

               Print.Imp(LinhaPdv, 01, aux );

               LinhaPdv := LinhaPdv + 1;

               Pdv_Itens.next ;
          END;

          LinhaPdv := LinhaPdv + 1;

          Print.Imp(LinhaPdv, 01, Replicate('-', 40)  );

          LinhaPdv := LinhaPdv + 1;

          AUX := '' ;

          AUX := ALINHADIREITA('',21);

          AUX := AUX + AlinhaEsquerda ( 'TOTAL' , 6  );

          AUX := AUX + AlinhaEsquerda ( '' , 6  );

          AUX := AUX + AlinhaEsquerda ( FORMATFLOAT('##0.00', TOTAL), 7 );

          Print.Imp(LinhaPdv, 01, aux );

          LinhaPdv := LinhaPdv + 1;

          LinhaPdv := LinhaPdv + 1;

          Print.Imp(LinhaPdv, 01, Replicate('-', 40)  );

          LinhaPdv := LinhaPdv + 1;

          Print.Imp(LinhaPdv, 01, PdvNOME.VALUE );

          Print.Imp(LinhaPdv, 01, '' );

          Print.Imp(LinhaPdv, 01, '' );

          LinhaPdv := LinhaPdv + 1;

          Print.Imp(LinhaPdv, 01, '_' );

          LinhaPdv := LinhaPdv + 1;

          IF DmApp.PDV_IMP_END_PRAZO = 'S'
          THEN BEGIN
               VerPessoa ( PdvPESSOA_FJ.Value );

               Print.Imp(linhapdv, 01, Copy(Endereco  ,1,40) );
               LinhaPdv := LinhaPdv + 1;
               Print.Imp(linhapdv, 01, Copy(NomeBairro,1,40) );
               LinhaPdv := LinhaPdv + 1;
               Print.Imp(linhapdv, 01, Copy(NumeroFone,1,40) );
               LinhaPdv := LinhaPdv + 1;
               Print.Imp(linhapdv, 01, '' );
               LinhaPdv := LinhaPdv + 1;
               Print.Imp(linhapdv, 01, '' );
               LinhaPdv := LinhaPdv + 1;
               LinhaPdv := LinhaPdv + 1;
               Print.Imp(linhapdv, 01, '_' );
          END;

     END;

     if DMAPP.Perfil_ComputadorTIPO_IMP_PDV.VALUE <> 'MP20MI' then
     begin
       print.OpcoesPreview.Preview := true;
       Print.Fechar;
       print.OpcoesPreview.Preview := false;
     end;
End;

procedure TDmPdv.ImPrimeConvenio ;
Var
   Aux: String;
   Int_Retorno: Integer;
Begin
     if (DmApp.IMP_CONVENIO_GRAF = 'S') then
     begin
       with DmSerie_Customizaveis do
       begin
         edtLayoutConvenio.close;
         edtLayoutConvenio.parambyname('cnpj').value := dmapp.cnpj;
         edtLayoutConvenio.open;
       end;


{       FrmSeriesCustomizaveis := TFrmSeriesCustomizaveis.Create(Self);
       FrmSeriesCustomizaveis.rtpConvenio.DataPipeline := FrmSeriesCustomizaveis.ppConvenio;
       FrmSeriesCustomizaveis.ppConvenio.DataSource := DmVendas2.dsQrySeriesNF;
       DmVendas2.dsQrySeriesNF.DataSet := dmVendas2.qrySeriesNF;

       FrmSeriesCustomizaveis.rtpConvenio.Template.DatabaseSettings.DataPipeline := FrmSeriesCustomizaveis.ppLayoutConvenio;
       FrmSeriesCustomizaveis.ppLayoutConvenio.DataSource := DmSerie_Customizaveis.dsLayoutConvenio;

       FrmSeriesCustomizaveis.rtpConvenio.Template.DatabaseSettings.Name := dmapp.cnpj;
       FrmSeriesCustomizaveis.rtpConvenio.Template.LoadFromDatabase;}

//       FrmPdv.rtpConvenio2.DataPipeline := FrmPdv.ppConvenio;
//       FrmPdv.ppConvenio.DataSource := DmVendas2.dsQrySeriesNF;
//       DmVendas2.dsQrySeriesNF.DataSet := dmVendas2.qrySeriesNF;

//       FrmPdv.rtpConvenio2.Template.DatabaseSettings.DataPipeline := FrmPdv.ppLayoutConvenio;
//       FrmPdv.ppLayoutConvenio.DataSource := DmSerie_Customizaveis.dsLayoutConvenio;

       FrmPdv.rtpConvenio2.Template.DatabaseSettings.Name := dmapp.cnpj;
       FrmPdv.rtpConvenio2.Template.LoadFromDatabase;


       with dmVendas2 do
       begin
         qrySeriesNF.Close;
         qrySeriesNF.sql.clear;
         qrySeriesNF.sql.text :=' select * from PCD_IMPRIME_SERIE_NF(:venda,:cnpj)';
         qrySeriesNF.ParamByName('cnpj').value := dmApp.cnpj;
         qrySeriesNF.ParamByName('venda').value := PdvCODIGO.asInteger;
         qrySeriesNF.open;
       end;

       FrmPdv.rtpConvenio2.print;
//       FrmSeriesCustomizaveis.rtpConvenio.print;
       exit;
     end;

     BEGIN
          IF TRIM(DmApp.Perfil_ComputadorPORTA_PDV.VALUE  ) <> ''
          THEN BEGIN
               SetDefaultPrinter( DmApp.Perfil_ComputadorPORTA_PDV.VALUE )       ;
               Print.SetPrinterbyPorta ( DmApp.Perfil_ComputadorPORTA_PDV.VALUE );
               Print.PortaComunicacao := DmApp.Perfil_ComputadorPORTA_PDV.VALUE  ;
          END;

          IF DmApp.PDV_IMP_END_PRAZO = 'S'
          THEN BEGIN
               Print.TamanhoQteLinhas := 27;
          END
          ELSE BEGIN
               Print.TamanhoQteLinhas := 29;
          END;

          print.OpcoesPreview.Preview := False ;

          print.abrir ;

          Print.Imp(02, 01, DMAPP.Nome  );

          Print.Imp(03, 01, DMAPP.ENDER  );

          Print.Imp(04, 01, ' FONE ' + DmApp.FONE   );

          Print.Imp(05, 01, Replicate('-', 40)  );

          Print.Imp(06, 01, 'VENDA No ' + PdvCODIGO.TEXT);

          Print.Imp(06, 21, '   TICKET DO CLIENTE' );

          Print.Imp(07, 01, '2a VIA - CLIENTE       1a VIA - EMPRESA' );

          Print.Imp(08, 01, Replicate('-', 40)  );

          Print.Imp(09, 01, 'CLIENTE: ' + copy(PdvPESSOA_FJ.text + '-' + PdvNOME.VALUE,1,30));

          Print.Imp(10, 01, 'DATA   : ' + PdvDATA.TEXT  );

          Print.Imp(11, 01,  'VALOR  : '  );

          Print.Imp(11, 15,  PDVVLR_PARC_LC.text  );

          Print.Imp(12, 01, 'HORA   : ' + TIMETOSTR(TIME)  );

          Print.Imp(16, 01, Replicate('-', 40)  );

          Print.Imp(17, 01, PdvNOME.VALUE );

          IF DmApp.PDV_IMP_END_PRAZO = 'S'
          THEN BEGIN
               VerPessoa ( PdvPESSOA_FJ.Value );

               Print.Imp(18, 01, Copy(Endereco  ,1,40) );
               Print.Imp(19, 01, Copy(NomeBairro,1,40) );
               Print.Imp(20, 01, Copy(NumeroFone,1,40) );

               Print.Imp(21, 01, '' );

               Print.Imp(22, 01, '' );

               Print.Imp(24, 01, '_' );
          END
          ELSE BEGIN
               Print.Imp(18, 01, '' );

               Print.Imp(19, 01, '' );

               Print.Imp(21, 01, '_' );
          END;

          Print.Fechar ;
     END;
End;

procedure TDmPdv.ImPrimeConvenio_Contra_Vale_Cheque ( Valor_Cheque, Valor_Vale: Real );
Var
  Texto, Str_Numero_do_Cupom: String;
Begin
     Str_Numero_do_Cupom := UltimoCupom ;

     If DmaPP.Pdv_Modelo = 'Bematech'
     THEN BEGIN
          //IMPRESSAO DO CONTRA VALE QUE FICA NO CAIXA
     {    Ret := Bematech_FI_AbreComprovanteNaoFiscalVinculado
          ( pchar( 'CHEQUE' ),              //gambiarra pra imprimir os trem
          pchar( formatfloat('###,##0.00', (Valor_Cheque)) ),
          pchar( Str_Numero_do_Cupom ) ); }

          //MONTANDO O TEXTO DO CUPOM NAO FISCAL
          TEXTO := '' ;
          TEXTO := TEXTO + '---1º VIA COMPROVANTE NÃO FISCAL VINCULADO------' ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  CONTRA VALE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('CONTRA VALE DE COMPRA NO CHEQUE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALOR DO VALE: ' + FORMATFLOAT('###,##0.00', Valor_Vale), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;
       //   Ret := Bematech_FI_UsaComprovanteNaoFiscalVinculado(pchar(COPY(Texto,1,618)));


          //MONTANDO O TEXTO DO CUPOM NAO FISCAL
          TEXTO := '' ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + '---2º VIA COMPROVANTE NÃO FISCAL VINCULADO------' ;
          TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  VALE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALE DO CLIENTE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALOR DO VALE: ' + FORMATFLOAT('###,##0.00', Valor_Vale), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;
      //    Ret := Bematech_FI_UsaComprovanteNaoFiscalVinculado(pchar(COPY(Texto,1,618)));
      //    Ret := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
     END;

     If DmaPP.Pdv_Modelo = 'Dar32DLL'
     THEN BEGIN
          //IMPRESSAO DO CONTRA VALE QUE FICA NO CAIXA
        {  Ret := Daruma_FI_AbreComprovanteNaoFiscalVinculado
          ( pchar( 'CHEQUE' ),              //gambiarra pra imprimir os trem
          pchar( formatfloat('###,##0.00', (Valor_Cheque)) ),
          pchar( Str_Numero_do_Cupom ) );}

          //MONTANDO O TEXTO DO CUPOM NAO FISCAL
          TEXTO := '' ;
          TEXTO := TEXTO + '---1º VIA COMPROVANTE NÃO FISCAL VINCULADO------' ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  CONTRA VALE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('CONTRA VALE DE COMPRA NO CHEQUE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALOR DO VALE: ' + FORMATFLOAT('###,##0.00', Valor_Vale), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;
       //   Ret := Daruma_FI_UsaComprovanteNaoFiscalVinculado(pchar(COPY(Texto,1,618)));

          //MONTANDO O TEXTO DO CUPOM NAO FISCAL
          TEXTO := '';
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + '---2º VIA COMPROVANTE NÃO FISCAL VINCULADO------' ;
          TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  VALE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALE DO CLIENTE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALOR DO VALE: ' + FORMATFLOAT('###,##0.00', Valor_Vale), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;
       {   Ret := Daruma_FI_UsaComprovanteNaoFiscalVinculado(pchar(COPY(Texto,1,618)));
          Ret := Daruma_FI_FechaComprovanteNaoFiscalVinculado();   }
     END;
End;

procedure TDmPdv.ImPrimeConvenio_Contra_Vale_Ticket ( Valor_Ticket, Valor_Vale: Real );
Var
  Texto, Str_Numero_do_Cupom: String;
Begin
     Str_Numero_do_Cupom := UltimoCupom ;

     If DmaPP.Pdv_Modelo = 'Bematech'
     THEN BEGIN
          //IMPRESSAO DO CONTRA VALE QUE FICA NO CAIXA
       {   Ret := Bematech_FI_AbreComprovanteNaoFiscalVinculado
          ( pchar( 'TICKET' ),
          pchar( formatfloat('###,##0.00', (Valor_Ticket)) ),
          pchar( Str_Numero_do_Cupom ) ); }

          //MONTANDO O TEXTO DO CUPOM NAO FISCAL
          TEXTO := '' ;
          TEXTO := TEXTO + '---1º VIA COMPROVANTE NÃO FISCAL VINCULADO------' ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  CONTRA VALE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('CONTRA VALE DE COMPRA NO TICKET', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALOR DO VALE: ' + FORMATFLOAT('###,##0.00', Valor_Vale), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;
      //    Ret := Bematech_FI_UsaComprovanteNaoFiscalVinculado(pchar(COPY(Texto,1,618)));

          TEXTO := '';
          //MONTANDO O TEXTO DO CUPOM NAO FISCAL
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + '---2º VIA COMPROVANTE NÃO FISCAL VINCULADO------' ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  VALE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALE DO CLIENTE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALOR DO VALE: ' + FORMATFLOAT('###,##0.00', Valor_Vale), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;
   {       Ret := Bematech_FI_UsaComprovanteNaoFiscalVinculado(pchar(COPY(Texto,1,618)));
          Ret := Bematech_FI_FechaComprovanteNaoFiscalVinculado();  }
     END;

     If DmaPP.Pdv_Modelo = 'Dar32DLL'
     THEN BEGIN
          //IMPRESSAO DO CONTRA VALE QUE FICA NO CAIXA
      {    Ret := Daruma_FI_AbreComprovanteNaoFiscalVinculado
          ( pchar( 'TICKET' ),              //gambiarra pra imprimir os trem
          pchar( formatfloat('###,##0.00', (Valor_Ticket)) ),
          pchar( Str_Numero_do_Cupom ) );}

          //MONTANDO O TEXTO DO CUPOM NAO FISCAL
          TEXTO := '' ;
          TEXTO := TEXTO + '---1º VIA COMPROVANTE NÃO FISCAL VINCULADO------' ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  CONTRA VALE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('CONTRA VALE DE COMPRA NO TICKET', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALOR DO VALE: ' + FORMATFLOAT('###,##0.00', Valor_Vale), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;
     //     Ret := Daruma_FI_UsaComprovanteNaoFiscalVinculado(pchar(COPY(Texto,1,618)));

          //MONTANDO O TEXTO DO CUPOM NAO FISCAL
          TEXTO := '' ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + '---2º VIA COMPROVANTE NÃO FISCAL VINCULADO------' ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  VALE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALE DO CLIENTE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALOR DO VALE: ' + FORMATFLOAT('###,##0.00', Valor_Vale), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;
     {     Ret := Daruma_FI_UsaComprovanteNaoFiscalVinculado(pchar(COPY(Texto,1,618)));
          Ret := Daruma_FI_FechaComprovanteNaoFiscalVinculado();     }
     END;
End;

procedure TDmPdv.ImPrimeConvenio_Nao_Fiscal ;
Var
  Texto, Str_Numero_do_Cupom: String;
Begin
     Str_Numero_do_Cupom := UltimoCupom ;

     If DmaPP.Pdv_Modelo = 'Dar32DLL'
     THEN BEGIN
       {   Ret := Daruma_FI_AbreComprovanteNaoFiscalVinculado
          ( pchar( 'CONVENIO' ),
          pchar( formatfloat('###,##0.00', PDVVLR_PARC_LC.value ) ),
          pchar( Str_Numero_do_Cupom ) );}

          //MONTANDO O TEXTO DO CUPOM NAO FISCAL
          TEXTO := '' ;
          TEXTO := TEXTO + COMPLETA(DMAPP.NOME, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(DMAPP.ENDER, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(DmApp.FONE, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  TICKET DO CLIENTE', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALOR : ' + PDVVLR_PARC_LC.text, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;

         // Ret := Daruma_FI_UsaComprovanteNaoFiscalVinculado( pchar( Texto ) );

          //IMPRIME O CONTRA VALE DO CONVENIO
          IF (( DMAPP.Perfil_ComputadorPDV_CONTRA_VALE.VALUE = 'S' ) and ( arredonda(PdvTROCO.VALUE, 2) <> 0 ))
          THEN BEGIN
              TEXTO := '';
              TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
              //MONTANDO O TEXTO DO CUPOM NAO FISCAL
              TEXTO := TEXTO + '---1º VIA COMPROVANTE NÃO FISCAL VINCULADO------' ;
              TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  CONTRA VALE', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('CONTRA VALE DE COMPRA NO CONVENIO', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('VALOR DO VALE: ' + FORMATFLOAT('###,##0.00', -1 * PdvTROCO.VALUE), ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;
             // Ret := Daruma_FI_UsaComprovanteNaoFiscalVinculado(pchar(COPY(Texto,1,618)));

              //MONTANDO O TEXTO DO CUPOM NAO FISCAL
              TEXTO := '';
              TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
              TEXTO := TEXTO + '---2º VIA COMPROVANTE NÃO FISCAL VINCULADO------' ;
              TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  VALE', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('VALE DO CLIENTE', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('VALOR DO VALE: ' + FORMATFLOAT('###,##0.00', -1 * PdvTROCO.VALUE), ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;
              //Ret := Daruma_FI_UsaComprovanteNaoFiscalVinculado(pchar(COPY(Texto,1,618)));
          END;

        //  Ret := Daruma_FI_FechaComprovanteNaoFiscalVinculado();
     END;

     If DmaPP.Pdv_Modelo = 'Bematech'
     THEN BEGIN
        {  Ret := Bematech_FI_AbreComprovanteNaoFiscalVinculado
          ( pchar( 'CONVENIO' ),
          pchar( formatfloat('###,##0.00', PDVVLR_PARC_LC.value ) ),
          pchar( Str_Numero_do_Cupom ) );    }

          //MONTANDO O TEXTO DO CUPOM NAO FISCAL
          TEXTO := '' ;
          TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  NOTA PROMISSORIA', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('CLIENTE: ' + copy(PdvPESSOA_FJ.text + '-' + PdvNOME.VALUE,1,48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('VALOR : ' + PDVVLR_PARC_LC.text, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
          TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;
         // Ret := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( Texto ) );

          //IMPRIME O CONTRA VALE DO CONVENIO
          IF (( DMAPP.Perfil_ComputadorPDV_CONTRA_VALE.VALUE = 'S' ) and ( arredonda(PdvTROCO.VALUE, 2) <> 0 ))
          THEN BEGIN
              TEXTO := '';
              //MONTANDO O TEXTO DO CUPOM NAO FISCAL
              TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
              TEXTO := TEXTO + '---1º VIA COMPROVANTE NÃO FISCAL VINCULADO------' ;
              TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  CONTRA VALE', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('CONTRA VALE DE COMPRA NO CONVENIO', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('VALOR DO VALE: ' + FORMATFLOAT('###,##0.00', -1 * PdvTROCO.VALUE), ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;
           //   Ret := Bematech_FI_UsaComprovanteNaoFiscalVinculado(pchar(COPY(Texto,1,618)));

              //MONTANDO O TEXTO DO CUPOM NAO FISCAL
              TEXTO := '';
              TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
              TEXTO := TEXTO + '---2º VIA COMPROVANTE NÃO FISCAL VINCULADO------' ;
              TEXTO := TEXTO + COMPLETA('VENDA No ' + PdvCODIGO.TEXT + '  VALE', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('VALE DO CLIENTE', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('DATA   : ' + PdvDATA.TEXT, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('VALOR DO VALE: ' + FORMATFLOAT('###,##0.00', -1 * PdvTROCO.VALUE), ' ', 48) ;
              TEXTO := TEXTO + COMPLETA('', ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(Replicate('-', 48), ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(PdvNOME.VALUE, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(Endereco, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(NomeBairro, ' ', 48) ;
              TEXTO := TEXTO + COMPLETA(Doctos, ' ', 48) ;
            //  Ret := Bematech_FI_UsaComprovanteNaoFiscalVinculado(pchar(COPY(Texto,1,618)));
          END;

        //  Ret := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
     END;
End;

procedure TDmPdv.ImPrimeItem ( Codigo: String; Nome: String; Aliquota: String; Quantidade: Real; Unitario: Real; Unidade: String );
VAR
   Achou, Tributacao, Item, VlrUnit, Total, Numerico, Qntde, Aux, Desc: String;
   I: Integer;
   liquido:  array[0..20] of char;
begin
     With FrmPdv do
     begin
          EdDigitacao.clear ;
     end;

     If DmaPP.Pdv_Modelo = 'Sweda'
     then begin
          Codigo := Copy ( Codigo, 1, 13 );

          WHILE LENGTH(Codigo) < 13 DO
          BEGIN
               Codigo := '0' + Codigo ;
          END;

          Nome := Copy ( Nome, 1, 23 );

          WHILE LENGTH(Nome) < 23 DO
          BEGIN
               Nome := ' ' + Nome ;
          END;

          //QUANTIDADE
          Qntde   := ValoresNumericosCupom ( FORMATFLOAT('###,###,##0.000', Quantidade ),'S') ;

          //VALOR UNITARIO
          VlrUnit := ValoresNumericosCupom ( FORMATFLOAT('###,###,##0.00', Unitario   ),'S');

          Unidade := Copy( Unidade, 1,2 );

          While Length(Unidade) < 2 do
          begin
               Unidade := Unidade + ' ';
          end;

          //VALOR TOTAL
          liquido:=#0;

          //   liquido := pchar(ValoresNumericosCupom ( FORMATFLOAT('###,###,##0.00', Unitario * Quantidade ),'S'));

          IF (Trim(Aliquota) = 'T1')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T01;
          END;

          IF (Trim(Aliquota) = 'T2')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T02;
          END;

          IF (Trim(Aliquota) = 'T3')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T03;
          END;

          IF (Trim(Aliquota) = 'T4')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T04;
          END;

          IF (Trim(Aliquota) = 'T5')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T05;
          END;

          IF (Trim(Aliquota) = 'T6')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T06;
          END;

          IF (Trim(Aliquota) = 'FF')
          THEN BEGIN
               Tributacao := 'MFFF';
          END;

          IF (Trim(Aliquota) = 'II')
          THEN BEGIN
               Tributacao := 'MIII';
          END;

          Achou := 'S' ;

          I := 0 ;

          Repeat
                If Tributacao = ConfereAliquotas[I]
                then Begin
                     Achou := 'S' ;
                end
                else begin
                     if ( Tributacao = 'MIII' ) OR ( Tributacao = 'MFFF' )
                     then begin
                          Achou := 'S' ;
                     end
                     else
                         Achou := 'N' ;
                end;

                I := I + 1;
          Until (Achou = 'S') OR ( I > 5 );

          If Achou = 'N'
          THEN
              Tributacao := ConfereAliquotas[I];

        //  Ret := TrataErroCupom ( Afrac_VenderItem(pchar(Codigo),pchar(nome),pchar(qntde), pchar(vlrunit),'0','0', '00000000000', Liquido, PCHAR(Tributacao), PChar(Unidade), '0'), 'Imprimindo Itens');
     end;

     If DmaPP.Pdv_Modelo = 'Dar32DLL'
     then begin
          Codigo := Copy ( Codigo, 1, 13 );

          WHILE LENGTH(Codigo) < 13 DO
          BEGIN
               Codigo := '0' + Codigo ;
          END;

          Nome := Copy ( Nome, 1, 29 );

          WHILE LENGTH(Nome) < 29 DO
          BEGIN
               Nome := ' ' + Nome ;
          END;

          //QUANTIDADE
          Qntde   := FORMATFLOAT('###,###,##0.000', Quantidade ) ;

          //VALOR UNITARIO
          VlrUnit := FORMATFLOAT('###,###,##0.00', Unitario );

          Unidade := Copy( Unidade, 1,2 );

          While Length(Unidade) < 2 do
          begin
               Unidade := Unidade + ' ';
          end;

          //VALOR TOTAL
          liquido:=#0;

          //   liquido := pchar(ValoresNumericosCupom ( FORMATFLOAT('###,###,##0.00', Unitario * Quantidade ),'S'));

          IF (Trim(Aliquota) = 'T1')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T01;
          END;

          IF (Trim(Aliquota) = 'T2')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T02;
          END;

          IF (Trim(Aliquota) = 'T3')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T03;
          END;

          IF (Trim(Aliquota) = 'T4')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T04;
          END;

          IF (Trim(Aliquota) = 'T5')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T05;
          END;

          IF (Trim(Aliquota) = 'T6')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T06;
          END;

          IF (Trim(Aliquota) = 'FF')
          THEN BEGIN
               Tributacao := DMAPP.PDV_FF ;
          END;

          IF (Trim(Aliquota) = 'II')
          THEN BEGIN
               Tributacao := DMAPP.PDV_II ;
          END;

          If Pos ( 'T', Tributacao) > 0
          THEN
              Tributacao := Tributacao + '0' ;

          Achou := 'S' ;

          VendeItemDar32Dll
          (
           CODIGO, NOME, TRIBUTACAO, 'F', Qntde, 2 ,VlrUnit, '$', '0,00'
          );
     end;

     If DmaPP.Pdv_Modelo = 'Bematech'
     then begin
          Codigo := Copy ( Codigo, 1, 13 );

          WHILE LENGTH(Codigo) < 13 DO
          BEGIN
               Codigo := '0' + Codigo ;
          END;

          Nome := Copy ( Nome, 1, 23 );

          WHILE LENGTH(Nome) < 23 DO
          BEGIN
               Nome := ' ' + Nome ;
          END;

          //QUANTIDADE
          Qntde   :=   FORMATFLOAT('###,###,##0.000', Quantidade ) ;

          //VALOR UNITARIO
          VlrUnit :=   FORMATFLOAT('###,###,##0.000', Unitario   );

          Unidade := Copy( Unidade, 1,2 );

          While Length(Unidade) < 2 do
          begin
               Unidade := Unidade + ' ';
          end;

          //VALOR TOTAL
          liquido:=#0;

          //   liquido := pchar(ValoresNumericosCupom ( FORMATFLOAT('###,###,##0.00', Unitario * Quantidade ),'S'));

          IF (Trim(Aliquota) = 'T1')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T01;
          END;

          IF (Trim(Aliquota) = 'T2')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T02;
          END;

          IF (Trim(Aliquota) = 'T3')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T03;
          END;

          IF (Trim(Aliquota) = 'T4')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T04;
          END;

          IF (Trim(Aliquota) = 'T5')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T05;
          END;

          IF (Trim(Aliquota) = 'T6')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T06;
          END;

          IF (Trim(Aliquota) = 'FF')
          THEN BEGIN
               Tributacao := 'FF';
          END;

          IF (Trim(Aliquota) = 'II')
          THEN BEGIN
               Tributacao := 'II';
          END;

          Achou := 'S' ;

          I := 0 ;

          Repeat
                If Tributacao = ConfereAliquotas[I]
                then Begin
                     Achou := 'S' ;
                end
                else begin
                     if ( Tributacao = 'MIII' ) OR ( Tributacao = 'MFFF' )
                     then begin
                          Achou := 'S' ;
                     end
                     else
                         Achou := 'N' ;
                end;

                I := I + 1;
          Until (Achou = 'S') OR ( I > 5 );

          Tributacao := trim( Tributacao );

          Funcoes.VendeItem ( Codigo, Nome, Tributacao, 'F', Qntde, 3, vlrunit, '$', '0' );
     end;

     If DmaPP.Pdv_Modelo = 'Texto'
     then begin
          Codigo := Copy ( Codigo, 1, 13 );

          WHILE LENGTH(Codigo) < 13 DO
          BEGIN
               Codigo := '0' + Codigo ;
          END;

          Nome := Copy ( Nome, 1, 23 );

          WHILE LENGTH(Nome) < 23 DO
          BEGIN
               Nome := ' ' + Nome ;
          END;

          //QUANTIDADE
          Qntde   :=   FORMATFLOAT('###,###,##0.000', Quantidade ) ;

          //VALOR UNITARIO
          VlrUnit :=   FORMATFLOAT('###,###,##0.000', Unitario   );

          //TOTAL
          Total :=  FORMATFLOAT('###,###,##0.000', Unitario * Quantidade  );

          Unidade := Copy( Unidade, 1,2 );

          While Length(Unidade) < 2 do
          begin
               Unidade := Unidade + ' ';
          end;

          VendeItemEpson ( Codigo, Nome, Qntde, vlrunit, Total );
     end;

     If DmaPP.Pdv_Modelo = 'Daruma'
     then begin
          Codigo := Copy ( Codigo, 1, 13 );

          WHILE LENGTH(Codigo) < 13 DO
          BEGIN
               Codigo := '0' + Codigo ;
          END;

          Nome := Copy ( Nome, 1, 30 );

          WHILE LENGTH(Nome) < 30 DO
          BEGIN
               Nome := ' ' + Nome ;
          END;

          Unidade := Copy( Unidade, 1,2 );

          While Length(Unidade) < 2 do
          begin
               Unidade := Unidade + ' ';
          end;

          //VALOR TOTAL
          liquido:=#0;

          IF (Trim(Aliquota) = 'T1')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T01;
          END;

          IF (Trim(Aliquota) = 'T2')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T02;
          END;

          IF (Trim(Aliquota) = 'T3')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T03;
          END;

          IF (Trim(Aliquota) = 'T4')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T04;
          END;

          IF (Trim(Aliquota) = 'T5')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T05;
          END;

          IF (Trim(Aliquota) = 'T6')
          THEN BEGIN
               Tributacao := DMAPP.PDV_T06;
          END;

          IF (Trim(Aliquota) = 'FF')
          THEN BEGIN
               Tributacao := 'FF';
          END;

          IF (Trim(Aliquota) = 'II')
          THEN BEGIN
               Tributacao := 'II';
          END;

          Achou := 'S' ;

          I := 0 ;

          Repeat
                If Tributacao = ConfereAliquotas[I]
                then Begin
                     Achou := 'S' ;
                end
                else begin
                     if ( Tributacao = 'MIII' ) OR ( Tributacao = 'MFFF' )
                     then begin
                          Achou := 'S' ;
                     end
                     else
                         Achou := 'N' ;
                end;

                I := I + 1;
          Until (Achou = 'S') OR ( I > 5 );

          Tributacao := trim( Tributacao );

     end;

     If Ret = 0
     then
         AtualizaValores ('N') ;
end;

procedure TDmPdv.LeituraX;
begin
  //pedindo senha gerencial
      IF DmApp.PEDE_SEN_GER_CX = 'S' then
      begin
        FrmSenhaGerencial := TFrmSenhaGerencial.Create(Self);

        IF FrmSenhaGerencial.Showmodal = MrOk  THEN
        BEGIN
          IF FrmSenhaGerencial.Valor.Text <> DmApp.Pdv_Senha  then
          begin
            MensagemPdv ('Senha Incorreta!');
            Abort ;
            exit
          end
          else
          begin
            FrmSenhaGerencial.free ;
            FrmSenhaGerencial := nil;
          end;
        end
        else
        begin
          FrmSenhaGerencial.free ;
          FrmSenhaGerencial := nil;
          ABORT ;
          exit
        end;
      end;



     If DmaPP.Pdv_Modelo = 'Dar32DLL'
     then begin
      //    Ret := TrataErroCupom ( Daruma_FI_LeituraX(), 'Leitura X');
     END;

     If DmaPP.Pdv_Modelo = 'Bematech'
     then begin
          Funcoes.LeituraX ;
     END;

     If DmaPP.Pdv_Modelo = 'Daruma'
     then begin
     END;
end;

procedure TDmPdv.LeituraZ;
Var
   Str, Data: String;
begin
     If DmaPP.Pdv_Modelo = 'Sweda'
     then begin
          FrmEntraPeriodoPdv := TFrmEntraPeriodoPdv.Create(Self);

          If FrmEntraPeriodoPdv.Showmodal = MROK
          Then Begin
               Str  := DateToStr( FrmEntraPeriodoPdv.Data.Date );

               Data := Copy(Str, 1, 2 ) + Copy(Str, 4, 2 ) + Copy(Str, 7, 4 );

             //  Ret  := TrataErroCupom ( AFRAC_ReducaoZ(Pchar(Data)), 'Leitura Z');
          end;
          FrmEntraPeriodoPdv.Free ;
          FrmEntraPeriodoPdv := Nil ;
     end;

     If DmaPP.Pdv_Modelo = 'Dar32DLL'
     then begin
     //     Ret  := TrataErroCupom ( Daruma_FI_ReducaoZ(' ', ' '), 'Leitura Z');
     end;

     If DmaPP.Pdv_Modelo = 'Bematech'
     then begin
          Funcoes.ReducaoZ ;
     end;

     If DmaPP.Pdv_Modelo = 'Daruma'
     then begin
     end;
end;

Function TDmPdv.TrataErroCupom( Retorno: Integer; Local: String ): Integer;
Var
   Str : String;
   codigoErro: ttexto4;
   mensagem, acao: ttexto200;
begin
     if DmaPP.Pdv_Modelo = 'Sweda'
     Then begin
          codigoerro:=#0;
          mensagem:=#0;
          acao:=#0;


          if StrPas(codigoerro) <> '0000'
          then begin
               Showmessage('Mensagem erro: '+strpas(codigoerro)+' '+strpas(mensagem) + ' ' + Local );
          end
          else begin

               Str := '' ;

               If Retorno = 0 //Tudo Ok
               then begin
                    Result := 0 ;
                    exit ;
               end;

               Case Retorno of
               001 : Str := ' Cupom fiscal não aberto.';
               002 : Str := ' Dia já encerrado. ' ;
               003 : Str := ' Item não registrado no cupom fiscal. ' ;
               004 : Str := ' Acréscimo ou desconto não registrado no cupom fiscal (fechamento de . ' ;
               005 : Str := ' Já houve desconto/acréscimo para este item. ' ;
               006 : Str := ' Acréscimo/desconto não fechado. ' ;
               007 : Str := ' Pagamento não realizado. ' ;
               008 : Str := ' Pagamento não completado. ' ;
               009 : Str := ' Cupom fiscal já aberto. ' ;
               010 : Str := ' Alíquota informada não cadastrada ou fora da faixa. ' ;
               011 : Str := ' Tipo da situação tributária inválido. ' ;
               012 : Str := ' Forma de Pagamento não Cadastrada. ' ;
               013 : Str := ' Preço total igual a zero. ' ;
               014 : Str := ' Desconto maior ou igual ao valor do cupom. ' ;
               015 : Str := ' Quantidade excede ao limite permitido. ' ;
               016 : Str := ' Preço unitário excede ao limite permitido. ' ;
               017 : Str := ' Preço total excede ao limite permitido. ' ;
               018 : Str := ' Cupom já cancelado. ' ;
               019 : Str := ' Último documento não é um cupom fiscal. ' ;
               020 : Str := ' Tempo de tolerância para Redução Z excedido. ' ;
               021 : Str := ' Excedeu à quantidade de autenticações permitida. ' ;
               022 : Str := ' Troco não permitido para esta forma de pagamento. ' ;
               023 : Str := ' Limite de itens do cupom fiscal excedido. ' ;
               024 : Str := ' Limite de linhas para mensagem publicitária excedido. ' ;
               025 : Str := ' Impossível realizar troco. (não foi feito reforço)'  ;
               026 : Str := ' Cupom finalizado com total nulo. ' ;
               027 : Str := ' Cupom anterior não pode ser cancelado. ' ;
               028 : Str := ' Cupom já totalizado. ' ;
               029 : Str := ' Necessário totalizar cupom antes de fechar. ' ;
               030 : Str := ' Troco não realizado. ' ;
               031 : Str := ' Necessário programar legenda. ' ;
               032 : Str := ' Acréscimo inválido. ' ;
               033 : Str := ' Desconto inválido. ' ;
               034 : Str := ' Repetição de desconto inválida. ' ;
               035 : Str := ' IOF não habilitado em MIT. ' ;
               036 : Str := ' Não permitido desconto em ISSQN. ' ;
               100 : Str := ' Cupom não vinculado não aberto. ' ;
               101 : Str := ' Cupom não vinculado sendo emitido. ' ;
               102 : Str := ' Comando não permitido durante cupom não fiscal não vinculado. ' ;
               103 : Str := ' Necessário abrir cupom não fiscal. ' ;
               104 : Str := ' Já houve lançamento em acumulador positivo. ' ;
               105 : Str := ' Já houve lançamento em acumulador negativo. ' ;
               150 : Str := ' Cupom vinculado não aberto. ' ;
               151 : Str := ' Cupom vinculado sendo emitido. ' ;
               152 : Str := ' Não há cupom vinculado para ser emitido. ' ;
               153 : Str := ' Cupom vinculado pendente. Pendências precisam ser emitidas.' ;
               154 : Str := ' Excesso de cupons vinculados pendentes (máximo 30 pendências). ' ;
               155 : Str := ' Não existem vínculos programados na impressora. ' ;
               156 : Str := ' Excedeu número de vias. ' ;
               157 : Str := ' COO não existe. ' ;
               200 : Str := ' Relatório Gerencial não aberto. ' ;
               201 : Str := ' Relatório Gerencial sendo emitido. ' ;
               202 : Str := ' Relatório Gerencial não cadastrado (novo convênio). ' ;
               250 : Str := ' Redução Z já emitida. Impressora inoperante até 0:00 h.' ;
               251 : Str := ' É necessário executar redução Z. ' ;
               252 : Str := ' Dia já aberto. ' ;
               253 : Str := ' Dia não aberto. ' ;
               254 : Str := ' Necessário executar Leitura X. ' ;
               255 : Str := ' Posição da tabela de alíquotas já ocupada. ' ;
               256 : Str := ' A tabela de pagamentos não foi inicializada na impressora. ' ;
               300 : Str := ' Autenticação não permitida. ' ;
               301 : Str := ' Excedeu às repetições de autenticação. ' ;
               350 : Str := ' Entrada no horário de verão não pode provocar mudança de data. ' ;
               351 : Str := ' Não foi emitida Redução Z. ' ;
               352 : Str := ' O relógio já está em horário de verão. ' ;
               353 : Str := ' O relógio não está em horário de verão. ' ;
               354 : Str := ' Não é possível ajustar um horário inferior ao da redução Z. ' ;
               355 : Str := ' Excedeu o tempo de execução do comando. ' ;
               356 : Str := ' Data inválida. ' ;
               357 : Str := ' Hora inválida. ' ;
               358 : Str := ' Ajuste de hora diário já foi realizado. ' ;
               400 : Str := ' Porta não aberta. ' ;
               401 : Str := ' Erro na comunicação serial. ' ;
               402 : Str := ' Detectado algum problema na impressora (paper jam, sobretensão, etc). ' ;
               403 : Str := ' Erro Time Out Computador não consegue estabelecer comunicação. ' ;
               450 : Str := ' Fim de papel. ' ;
               451 : Str := ' Papel acabando. ' ;
               500 : Str := ' Cheque não inserido. ' ;
               501 : Str := ' Não permitido na impressão de cheque. ' ;
               502 : Str := ' Cheque: parâmetro fora de faixa. ' ;
               503 : Str := ' Cheque: erro no campo valor. ' ;
               504 : Str := ' Cheque: erro no campo local de emissão. ' ;
               505 : Str := ' Cheque: erro no formato do pacote. ' ;
               506 : Str := ' Cheque: erro no campo data. ' ;
               507 : Str := ' Cheque: erro no campo favorecido. ' ;
               508 : Str := ' Cheque: erro no campo 1 ª linha de comentário. ' ;
               509 : Str := ' Cheque: erro no campo 2 ª linha de comentário. ' ;
               510 : Str := ' Cheque: número de caracteres das 2 linhas de comentários somados superior a 120. ' ;
               511 : Str := ' Cheque: soma dos deslocamentos verticais superior a DLSV. ' ;
               512 : Str := ' Cheque: valor não pode ser impresso nas dimensões especificadas. ' ;
               513 : Str := ' Cheque: valor por extenso não pode ser impresso nas dimensões especificadas. ' ;
               514 : Str := ' Cheque: favorecido não pode ser impresso nas dimensões especificadas. ' ;
               515 : Str := ' Cheque: data e local não podem ser impressos nas dimensões especificadas. ' ;
               516 : Str := ' Cheque: 1 ª linha de comentário não pode ser impressa nas dimensões especificadas. ' ;
               517 : Str := ' Cheque: 2 ª linha de comentário não pode ser impressa nas dimensões especificadas. ' ;
               518 : Str := ' Cheque: caractere de preenchimento inválido. ' ;
               519 : Str := ' Cheque: primeira linha de extenso em branco. ' ;
               520 : Str := ' Está em estado de impressão de cheque. ' ;
               521 : Str := ' Não está em estado de impressão de cheque. ' ;
               522 : Str := ' Necessário inserir cheque. ' ;
               523 : Str := ' Erro de leitura de CMC7. ' ;
               524 : Str := ' Banco não cadastrado. ' ;
               525 : Str := ' Erro cadastro dos bancos. Arquivo BANCO ou equivalente. ' ;
               526 : Str := ' Excedeu o tamanho do extenso. ' ;
               527 : Str := ' Moeda não cadastrada. ' ;
               528 : Str := ' Usuário deve virar o cheque para realizar impressão no verso. ' ;
               800 : Str := ' Intervalo inconsistente. ' ;
               801 : Str := ' A string TOTAL não é aceita. ' ;
               802 : Str := ' Argumentos inválidos. ' ;
               803 : Str := ' Comando inexistente. ' ;
               804 : Str := ' Sintaxe de comando errada. ' ;
               805 : Str := ' Comando desabilitado. ' ;
               806 : Str := ' Comando só aceito em intervenção fiscal. ' ;
               807 : Str := ' Comando enviado fora da seqüência lógica da impressora. ' ;
               808 : Str := ' Atributo de formatação inválido. ' ;
               809 : Str := ' Função não implementada. ' ;
               810 : Str := ' Parâmetro não aceito pelo ecf. ' ;
               811 : Str := ' Informação não disponibilizada pelo ecf. ' ;
          end ;

          If Trim(Str) <> ''
          then
              Showmessage (Str + ' ' + Local );
          end;
     end
     else
         Retorno := 0;


     Result := Retorno ;
end;

procedure TDmPdv.PdvPESSOA_FJValidate(Sender: TField);
Var
   Clas: Integer;
   NomeClas, Dig_Senha: String ;
   Resultado: Boolean ;
begin
     //verificando se o cliente selecionado é diferente do Cliente que foi dado desconto especial para ele no
     //desdobramento de cada item
     If (( Cliente_Desc_Especial > 0 ) and ( Sender.value <> Cliente_Desc_Especial ))
     then begin
          MENSAGEMPDV ('O Cliente não pode ser Alterado - Desc. Especial!');
          Abort;
     end;

     If (not ( Pdv.State in [ DsInsert, DsEdit] )) or ( PdvPessoa_Fj.IsNull )
     then
         Exit;

     Valida_Cliente.Close ;

     Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
     Valida_Cliente.ParamByName ('CODIGO').AsInteger := PdvPessoa_Fj.Value ;

     Valida_Cliente.Prepare ;
     Valida_Cliente.Open ;

     If PdvPESSOA_FJ.isNull
     then Begin
          PdvPessoa_Fj.Value := 1 ;
          MENSAGEMPDV ('Cliente Inexistente!');
          Abort;
     end;

     If Not Valida_ClienteUF.isNull then
       PdvUF.Value  := Valida_ClienteUF.Value
     else
       PdvUF.Value  := DmApp.UF ;


     If Not Valida_ClienteNOME.isNull
     then Begin
          PdvNOME.Value := Valida_ClienteNOME.Value ;
     end ;

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

     If Not Valida_ClienteOBS.isNull
     then Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.DSource.DataSet := Valida_Cliente;
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
     end
     else begin
          If Not Valida_ClienteOBS2.isNull
          then Begin
               Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
               FrmMensagemFaturamento.DSource.DataSet := Valida_Cliente;
               FrmMensagemFaturamento.dxDBMemo1.DataField := 'OBS2' ;

               FrmMensagemFaturamento.Showmodal ;
               FrmMensagemFaturamento.Free ;
               FrmMensagemFaturamento  := Nil;
          end;
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

          If (( Dig_Senha = 'S' ) and ( PdvVLR_PARC_LC.value > 0 ))
          Then Begin
               FrmMensagemClassificacao.EdSenha.Visible := true ;
               FrmMensagemClassificacao.Label6.Visible  := true ;
               //Se o Nível ou a Classificacao exigir senha e não foi digitada
               if FrmMensagemClassificacao.Showmodal = MrCancel
               then Begin
                    MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
                    Sender.Clear ;
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

     //Verifica se Pede Senha no PDV
     IF TRIM(Valida_ClienteSENHA_PDV.VALUE) <> ''
     THEN BEGIN
          Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

          FrmMensagemClassificacao.MEMO.Lines.Add ('SENHA PDV');
          FrmMensagemClassificacao.Senha_Cliente_Pdv := Valida_ClienteSENHA_PDV.VALUE ;

          FrmMensagemClassificacao.EdSenha.Visible := true ;
          FrmMensagemClassificacao.Label6.Visible  := true ;
          //Se o Nível ou a Classificacao exigir senha e não foi digitada
          if FrmMensagemClassificacao.Showmodal = MrCancel
          then Begin
               MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
               Sender.value := 1 ;
               Abort ;
          end;

          FrmMensagemClassificacao.Free ;
          FrmMensagemClassificacao := Nil;
     END;

     //LISTA AS ULTIMAS VENDAS NA TELA
     IF (( SENDER.VALUE > 1 ) AND ( DMAPP.ConfiguracoesPDV_VER_ULTIMAS_VENDAS.VALUE = 'S'))
     THEN BEGIN
          With DmPdv do
          Begin
               Ultimas_Vendas.Close ;
               Ultimas_Vendas.ParamByName('CNPJ'   ).AsString  := DmApp.Cnpj ;
               Ultimas_Vendas.ParamByName('CLIENTE').AsInteger := Sender.value ;

               Ultimas_Vendas.Close ;

               Ultimas_Vendas.Open ;
          end;

          Application.CreateForm(TFrmUltimas_Vendas, FrmUltimas_Vendas);

          FrmUltimas_Vendas.Showmodal ;

          FrmUltimas_Vendas.Free ;
          FrmUltimas_Vendas := Nil;

          DmPdv.Ultimas_Vendas.Close ;
     END;

     If ((( Ven_Limite_Credito > 0 ) or ( Ven_Limite_Tempo > 0 )) and ( PdvVLR_PARC_LC.value > 0 ))
     then begin
          //Verifica os Limites de Crédito ( Tempo e Valor )
          If Not DmApp.Verifica_Limite_Pdv ( DmApp.Cnpj, PdvPESSOA_FJ.Value, PdvNOME.Value, Ven_Limite_Tempo, Ven_Limite_Credito, PdvDATA.Value, PdvVLR_PARC_LC.value )
          then Begin
               FrmLimitesCreditos := TFrmLimitesCreditos.Create(Self);
               FrmLimitesCreditos.Codigo := PdvPESSOA_FJ.Value ;
               FrmLimitesCreditos.Nome   := PdvNOME.Value ;
               FrmLimitesCreditos.LBLLIMITE.Caption := 'Limite de Crédito ' + Formatfloat('R$ ###,###,##0.00', Credito) + '  Limite de Tempo ' + inttostr(Tempo);
               FrmLimitesCreditos.Compra_Atual      := PdvVLR_PARC_LC.value ;

               FrmLimitesCreditos.Showmodal ;

               If FrmLimitesCreditos.Autorizou
               then begin
                    Resultado := true ;
               end
               else begin
                    Resultado := false ;
               end;

               if not Resultado
               then begin
                    MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
                    Sender.Value := 1 ;
                    Abort ;
               end;
          end
     end;
end;

procedure TDmPdv.PdvVENDEDORValidate(Sender: TField);
begin
     If Sender.IsNull
     Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select Codigo, Senha, Nome From Fat_Vendedor Where Codigo = :C and CNPJ = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          Showmessage ('Vendedor Inexistente!');
          Abort;
     end
     else begin
          PDVNOME_VENDEDOR.Value := Geral.Fields[2].Value ;
     end;
     Geral.Close ;
end;

procedure TDmPdv.Pdv_ItensGRADEValidate(Sender: TField);
begin
     If sender.value <> '0'
     then begin
          GERAL.Close;
          GERAL.Sql.Clear;

          GERAL.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'P'   , PtInput ) ;
          GERAL.Params.CreateParam ( FtString,  'G'   , PtInput ) ;

          GERAL.Sql.Add (' Select * From EST_PRODUTOS_GRADES Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G ');

          GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
          GERAL.ParamByName ('P'   ).AsString  := Pdv_ItensPRODUTO.Value ;
          GERAL.ParamByName ('G'   ).AsString  := Sender.value ;

          GERAL.open;

          IF GERAL.FIELDS[0].ISNULL
          THEN BEGIN
               MessageDlg('Grade não Cadastrada, Verifique!',MtError,[MbOk],0);
               Abort;
          END;
     end;
end;

procedure TDmPdv.Pdv_ItensNUMEROValidate(Sender: TField);
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

          GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj             ;
          GERAL.ParamByName ('P'   ).AsString  := Pdv_ItensPRODUTO.Value ;
          GERAL.ParamByName ('G'   ).AsString  := Pdv_ItensGRADE.value   ;
          GERAL.ParamByName ('N'   ).AsString  := Sender.Value           ;

          GERAL.open;

          IF GERAL.FIELDS[0].ISNULL
          THEN BEGIN
               MessageDlg('Número Inexistente nesta Grade, Verifique!',MtError,[MbOk],0);
               Abort;
          END;
     end;
end;

procedure TDmPdv.ChequeAfterDelete(DataSet: TDataSet);
Var
   Aux: Real;
begin
     If FrmCheque_Pdv <> Nil
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

          FrmCheque_Pdv.EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);

          FrmCheque_Pdv.Acumulado := Aux ;
     end;
end;

procedure TDmPdv.ChequeAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TDmPdv.ChequeAfterPost(DataSet: TDataSet);
Var
   Aux: Real;
begin
     If FrmCheque_Pdv <> Nil
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

          FrmCheque_Pdv.EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);

          FrmCheque_Pdv.Acumulado := Aux ;
     end;
end;

procedure TDmPdv.ChequeNewRecord(DataSet: TDataSet);
begin
     If Dmapp.TurnoCaixa > 0
     then
         ChequeTURNO.VALUE := dmapp.TurnoCaixa ;

     ChequeVALOR.Value     := Arredonda( PdvCHEQUE.Value - FrmCheque_Pdv.Acumulado,2);
     ChequeVENDA.Value     := PdvCODIGO.Value    ;
     ChequePESSOA_FJ.Value := PdvPESSOA_FJ.Value ;
     ChequeCONCILIADO.Value:= 'N'                         ;
     ChequeEMISSAO.Value   := PdvDATA.Value      ;
     ChequeTIPO.Value      := 'NO'                        ;
     ChequeDATA_CAIXA.Value:= DmApp.DataCaixa             ;
     ChequeUSUARIO.Value   := DmApp.UsuarioCaixa          ;

     If TRIM(PdvNOME.vALUE) <> ''
     THEN BEGIN
          ChequeHISTORICO.Value := PdvNOME.Value  ;
     END;
end;

procedure TDmPdv.ZerarLogo;
begin
  // if fileexists(DMAPP.FOTO1) then
  // FrmPdv.Lista.Background.LoadFromFile (DMAPP.FOTO1);
end;

procedure TDmPdv.VendeItemDar32Dll ( Str_Codigo: String; Str_Descricao: String; Str_Aliquota: String;
    Str_Tipo_de_Quantidade: String; Str_Quantidade: String; Int_Casas_Decimais: Integer;
    Str_Valor_Unitario: String; Str_Tipo_de_Desconto: String; Str_Valor_do_Desconto: String);
begin
{     Str_Codigo      := INPUTBOX(Str_Codigo,'',Str_Codigo);
     Str_Descricao   := INPUTBOX(Str_Descricao,'',Str_Descricao);
     Str_Aliquota    := INPUTBOX( Str_Aliquota ,'',Str_Aliquota) ;
     Str_Tipo_de_Quantidade := INPUTBOX(Str_Tipo_de_Quantidade,'',Str_Tipo_de_Quantidade) ;
     Str_Quantidade  := INPUTBOX(  Str_Quantidade,'',Str_Quantidade);
     Str_Valor_Unitario :=  INPUTBOX(Str_Valor_Unitario,'',Str_Valor_Unitario);
     Str_Tipo_de_Desconto := INPUTBOX(Str_Tipo_de_Desconto,'',Str_Tipo_de_Desconto);
     Str_Valor_do_Desconto := INPUTBOX(Str_Valor_do_Desconto,'',Str_Valor_do_Desconto);
}
//     Str_Descricao := COPY(TRIM(Str_Descricao),1, 7);

    { Daruma_FI_VendeItem
     (
     pchar( Str_Codigo ),
     pchar( Str_Descricao),
     pchar( Str_Aliquota ),
     pchar( Str_Tipo_de_Quantidade ),
     pchar( Str_Quantidade ),
     Int_Casas_Decimais,
     pchar( Str_Valor_Unitario ),
     pchar( Str_Tipo_de_Desconto ),
     pchar( Str_Valor_do_Desconto )
     );  }
end;


function TDmPdv.UltimoCupom: String;
Var
   Coo: TTexto6;
   Cupom: String;
   Aux: Integer;
begin
     Coo := '';

     //retorna o numero do ultimo cupom
     If DmaPP.Pdv_Modelo = 'Dar32DLL'
     then begin
          SetLength (Cupom,6);
        //  Ret   := TrataErroCupom ( Daruma_FI_NumeroCupom(Cupom), 'Buscando Nº do Cupom');

          Aux := strtoint(CUPOM);

          AUX := AUX - 1;

          Cupom := inttostr(AUX);

          result := Cupom ;
     end;

     //023 retorna o numero do ultimo cupom
     If DmaPP.Pdv_Modelo = 'Bematech'
     then begin
          Cupom := inttostr(Funcoes.NumeroUltimoCupom) ;
          result := Cupom ;
     end;

     //023 retorna o numero do ultimo cupom
     If DmaPP.Pdv_Modelo = 'Daruma'
     then begin
     end;
end;

procedure TDmPdv.Altera_Produtos_Pdv ( Codigo: String );
begin
     //BUSCA OS VALORES DO PRODUTO
     VerProduto.Close ;

     VerProduto.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     VerProduto.ParamByName ('C').AsString  := Codigo       ;

     VerProduto.Prepare ;
     VerProduto.Open ;

     If VerProdutoNOME.isNull
     then Begin
          MensagemPdv ('Produto Inexistente!');
          FrmPdv.EdDigitacao.SelectAll ;
          Lendo := False ;
          Lendob := False ;
          Modo_Insercao := false ;

          FrmPdv.LblInsercao.visible := false ;
          FrmPdv.Alterando_Produto := false ;

          Abort;
     end
     else begin
          Frm_CadastrarProdutosPdv := TFrm_CadastrarProdutosPdv.Create(Self);

          Frm_CadastrarProdutosPdv.EdCodigo.Text      := codigo ;
          Frm_CadastrarProdutosPdv.EDCODIGO2.Text     := codigo ;
          Frm_CadastrarProdutosPdv.EdNome.Text        := VerProdutoNOME.value ;
          Frm_CadastrarProdutosPdv.EDVALOR.Value      := VerProdutoPRC_VENDA.value ;
          Frm_CadastrarProdutosPdv.EDVALIDADE.Value   := 0;

          IF VerProdutoNEG_QTDADE_2.VALUE = 'S'
          THEN
              Frm_CadastrarProdutosPdv.EDNEGATIVO.Checked := TRUE
          ELSE
              Frm_CadastrarProdutosPdv.EDNEGATIVO.Checked := FALSE;

          Frm_CadastrarProdutosPdv.EDECF.Text         := VerProdutoALIQUOTA_ECF.value ;

          IF VerProdutoPESAVEL.value = 'S'
          THEN
              Frm_CadastrarProdutosPdv.EDPESAVEL.Checked  := TRUE
          ELSE
              Frm_CadastrarProdutosPdv.EDPESAVEL.Checked  := FALSE;

          Frm_CadastrarProdutosPdv.edcodigo.enabled := false ;

          Frm_CadastrarProdutosPdv.Showmodal ;
          Frm_CadastrarProdutosPdv.free      ;
          Frm_CadastrarProdutosPdv := Nil    ;

          FrmPdv.EdDigitacao.SelectAll ;
          Lendo := False ;
          Lendob := False ;
          Modo_Insercao := false ;

          FrmPdv.LblInsercao.visible := false ;
          FrmPdv.Alterando_Produto := false ;
     end;

     VerProduto.Close ;
end;


procedure TDmPdv.AbreCupomEpson(Mensagem: String);
begin
     Print.UsaGerenciadorImpr := False ;

     Print.TamanhoQteLinhas := 6 ;

     Print.OpcoesPreview.Preview := FALSE ;

     print.abrir ;

     Print.Imp(02, 01, DMAPP.Nome  );

     Print.Imp(03, 01, DMAPP.ENDER  );

     Print.Imp(04, 01, ' FONE ' + DmApp.FONE   );

     Print.Imp(05, 01, Replicate('-', 40)  );

     Print.Imp(06, 01, 'VENDA No ' + PdvCODIGO.TEXT);

     Print.Imp(06, 21, '   TICKET DO CLIENTE' );

     LinhaEpson := 7;

     print.Fechar ;
end;

procedure TDmPdv.FechaCupomEpson(Mensagem: String);
begin
     Print.TamanhoQteLinhas := 2 ;

     Print.OpcoesPreview.Preview := FALSE ;

     print.Abrir ;

     LinhaEpson := LinhaEpson + 2;

     Print.Imp(LinhaEpson, 01, Mensagem  );

     print.Fechar ;

     CloseFile(F);
end;

procedure TDmPdv.FormaPagamentoEpson(NomeForma, Valor: String);
Var
   Str: String;
begin
     Print.TamanhoQteLinhas := 1 ;

     Print.OpcoesPreview.Preview := FALSE ;

     print.Abrir ;

     Str := Valor;

     while length(Str) < 12 do
     begin
          Str := ' ' + Str;
     end;

     Print.Imp(LinhaEpson, 40, NomeForma + ' ' + Str );

     LinhaEpson := LinhaEpson + 1;

     print.Fechar ;
end;

procedure TDmPdv.VendeItemEpson(Codigo, Nome, Qntde, vlrunit, Total: String);
Var
   Str: String;
begin
     Print.TamanhoQteLinhas := 1 ;

     Print.OpcoesPreview.Preview := FALSE ;

     print.Abrir ;

     Str := Qntde;

     while length(Str) < 10 do
     begin
          Str := ' ' + Str;
     end;

     Qntde := Str;

     Str := VlrUnit;

     while length(Str) < 10 do
     begin
          Str := ' ' + Str;
     end;

     VlrUnit := Str;

     Str := Total;

     while length(Str) < 10 do
     begin
          Str := ' ' + Str;
     end;

     Total := Str;

     Print.Imp(LinhaEpson, 01, Codigo + ' ' + Nome +  '  ' + Qntde + ' ' + VlrUnit + ' ' + Total );

     LinhaEpson := LinhaEpson + 1;

     print.Fechar ;
end;

procedure TDmPdv.CalculaImpostosPDV;
Var
   VALOR1, VALOR2, ICMSUBSTITUICAO, BASECALCULOICM, BASECALCULOSUBSTITUICAO: Real;
   MENSAGEMREDUCAO: String;
Begin
     MensagemReducao := '' ;

     BASECALCULOICM          := 0;
     BASECALCULOSUBSTITUICAO := 0;
     ICMSUBSTITUICAO         := 0;

     //CALCULA AS BASES DE CALCULO DE ICMS E SUBSTITUICAO TRIBUTARIA
     If uppercase(PDVUF.Value) = uppercase(DmApp.Uf)
     Then begin
          //ESTADUAL
          IF (( Pdv_ItensCTE.Value = 1 ) or ( Pdv_ItensCTE.Value = 6 ))//integral
          then begin
               IF Dmapp.DIF_FIS_FISC = 'S'
               THEN BEGIN
                    BASECALCULOICM := BASECALCULOICM + Pdv_ItensTotal_Fiscal.Value ;
               END
               ELSE BEGIN
                    BASECALCULOICM := BASECALCULOICM + Pdv_ItensTotal.Value ;
               END;
          end ;

          IF ( Pdv_ItensCTE.Value = 2 ) OR ( Pdv_ItensCTE.Value = 5 ) or ( Pdv_ItensCTE.Value = 3 ) //Base de Calculo Reduzida
          then begin
               //BUSCAR O VALOR DA REDUCAO
               dmvendas.SelReducao.Close ;
               dmvendas.SelReducao.ParamByName ( 'CODIGO' ).AsInteger := Pdv_ItensReducao.Value ;
               dmvendas.SelReducao.Open  ;

               If dmvendas.SelReducaoPERC_ESTADUAL.IsNull
               then begin
                    IF (( Pdv_ItensCTE.Value <> 5 ) and ( Pdv_ItensCTE.Value <> 3 )) //PRODUTOS DIFERIDOS NAO TEM BASE DE CALCULO
                    THEN BEGIN
                         IF Dmapp.DIF_FIS_FISC = 'S'
                         THEN BEGIN
                              BASECALCULOICM := BASECALCULOICM + Pdv_ItensTotal_FISCAL.Value ;
                         END
                         ELSE BEGIN
                              BASECALCULOICM := BASECALCULOICM + Pdv_ItensTotal.Value ;
                         END;
                    END;
               end
               else begin
                    IF (( Pdv_ItensCTE.Value <> 5 ) and ( Pdv_ItensCTE.Value <> 3 )) //PRODUTOS DIFERIDOS NAO TEM BASE DE CALCULO
                    THEN BEGIN
                         IF Dmapp.DIF_FIS_FISC = 'S'
                         THEN BEGIN
                              BASECALCULOICM  := BASECALCULOICM + ( Pdv_ItensTotal_Fiscal.Value - ((Pdv_ItensTotal_Fiscal.Value * dmvendas.SelReducaoPERC_ESTADUAL.VALUE)/100)) ;
                         END
                         ELSE BEGIN
                              BASECALCULOICM  := BASECALCULOICM + ( Pdv_ItensTotal.Value - ((Pdv_ItensTotal.Value * dmvendas.SelReducaoPERC_ESTADUAL.VALUE)/100)) ;
                         END;
                    END;
                    MENSAGEMREDUCAO := MENSAGEMREDUCAO + ' ' + dmvendas.SelReducaoMENSAGEM_NF.VALUE ;
               end;
          end ;

          IF Pdv_ItensCTE.Value = 3 //ISENTO
          then begin
               //Nao Modifica Nada
          End;

          IF Pdv_ItensCTE.Value = 6 //SUBSTITUICAO
          then begin
               VALOR1 := 0;
               VALOR2 := 0;

               ICMSUBSTITUICAO := 0;

               IF PdvCONS_REV.VALUE = 'R'
               THEN BEGIN
                    IF Dmapp.DIF_FIS_FISC = 'S'
                    THEN BEGIN
                         BASECALCULOSUBSTITUICAO := Pdv_ItensTOTAL_FISCAL.VALUE + (( DMAPP.ICM_PRESUMIDO_SEM * Pdv_ItensTOTAL_FISCAL.VALUE )/100);
                         VALOR2 := ((Pdv_ItensTOTAL_FISCAL.VALUE * Pdv_ItensALIQUOTA_EST.VALUE)/100);
                    END
                    ELSE BEGIN
                         BASECALCULOSUBSTITUICAO := Pdv_ItensTOTAL.VALUE + (( DMAPP.ICM_PRESUMIDO_SEM * Pdv_ItensTOTAL.VALUE )/100);
                         VALOR2 := ((Pdv_ItensTOTAL.VALUE * Pdv_ItensALIQUOTA_EST.VALUE)/100);
                    END;

                    VALOR1 := ( BASECALCULOSUBSTITUICAO * Pdv_ItensALIQUOTA_EST.VALUE ) / 100 ;

                    ICMSUBSTITUICAO := VALOR1 - VALOR2;
               END
               ELSE BEGIN
                    ICMSUBSTITUICAO := 0;
                    BASECALCULOSUBSTITUICAO := 0;
               END;
          End;
     End
     Else begin
          //INTERESTADUAL
          IF Pdv_ItensCTIE.Value = 1 //integral
          then begin
               IF Dmapp.DIF_FIS_FISC = 'S'
               THEN BEGIN
                    BASECALCULOICM := BASECALCULOICM + Pdv_ItensTotal_Fiscal.Value ;
               END
               ELSE BEGIN
                    BASECALCULOICM := BASECALCULOICM + Pdv_ItensTotal.Value ;
               END;
          end ;

          IF ( Pdv_ItensCTIE.Value = 2 ) OR ( Pdv_ItensCTIE.Value = 5 )//Base de Calculo Reduzida
          then begin
               //BUSCAR O VALOR DA REDUCAO
               dmvendas.SelReducao.Close ;
               dmvendas.SelReducao.ParamByName ( 'CODIGO' ).AsInteger := Pdv_ItensReducao.Value ;
               dmvendas.SelReducao.Open  ;

               If dmvendas.SelReducaoPERC_INTERESTADUAL.IsNull
               then begin
                    IF Dmapp.DIF_FIS_FISC = 'S'
                    THEN BEGIN
                         BASECALCULOICM := BASECALCULOICM + Pdv_ItensTotal_Fiscal.Value ;
                    END
                    ELSE BEGIN
                         BASECALCULOICM := BASECALCULOICM + Pdv_ItensTotal.Value ;
                    END;
               end
               else begin
                    IF Dmapp.DIF_FIS_FISC = 'S'
                    THEN BEGIN
                         BASECALCULOICM  := BASECALCULOICM + ( Pdv_ItensTotal_Fiscal.Value - ((Pdv_ItensTotal_Fiscal.Value * dmvendas.SelReducaoPERC_INTERESTADUAL.VALUE)/100)) ;
                    END
                    ELSE BEGIN
                         BASECALCULOICM  := BASECALCULOICM + ( Pdv_ItensTotal.Value - ((Pdv_ItensTotal.Value * dmvendas.SelReducaoPERC_INTERESTADUAL.VALUE)/100)) ;
                    END;

                    MENSAGEMREDUCAO := MENSAGEMREDUCAO + ' ' + dmvendas.SelReducaoMENSAGEM_NF.VALUE ;
               end;
          end ;

          IF Pdv_ItensCTIE.Value = 3 //ISENTO
          then begin
               //Nao Modifica Nada
          End;

          IF Pdv_ItensCTIE.Value = 6 //SUBSTITUICAO
          then begin
               IF PdvCONS_REV.VALUE = 'R'
               THEN BEGIN
                    VALOR1 := 0;
                    VALOR2 := 0;

                    ICMSUBSTITUICAO := 0;

                    IF Dmapp.DIF_FIS_FISC = 'S'
                    THEN BEGIN
                         BASECALCULOSUBSTITUICAO := Pdv_ItensTOTAL_FISCAL.VALUE + (( DMAPP.ICM_PRESUMIDO_SEM * Pdv_ItensTOTAL_FISCAL.VALUE )/100);
                         VALOR2 := ((Pdv_ItensTOTAL_FISCAL.VALUE * Pdv_ItensALIQUOTA_INT.VALUE)/100);
                    END
                    ELSE BEGIN
                         BASECALCULOSUBSTITUICAO := Pdv_ItensTOTAL.VALUE + (( DMAPP.ICM_PRESUMIDO_SEM * Pdv_ItensTOTAL.VALUE )/100);
                         VALOR2 := ((Pdv_ItensTOTAL.VALUE * Pdv_ItensALIQUOTA_INT.VALUE)/100);
                    END;

                    VALOR1 := ( BASECALCULOSUBSTITUICAO * Pdv_ItensALIQUOTA_INT.VALUE ) / 100 ;

                    ICMSUBSTITUICAO := VALOR1 - VALOR2;
               END
               ELSE BEGIN
                    BASECALCULOSUBSTITUICAO := 0;
                    ICMSUBSTITUICAO := 0;
               END;

          End;
     end;

     If uppercase(PdvUF.Value) = uppercase(DmApp.Uf)
     Then begin
          IF Pdv_ItensALIQUOTA_EST.VALUE > 0
          THEN BEGIN
               Pdv_ItensICM.Value                      := ( BASECALCULOICM * Pdv_ItensALIQUOTA_EST.VALUE ) / 100 ;
          END
          ELSE BEGIN
               Pdv_ItensICM.Value                      := 0 ;
          END;
     END
     ELSE BEGIN
          IF Pdv_ItensALIQUOTA_INT.VALUE > 0
          THEN BEGIN
               Pdv_ItensICM.Value                      := ( BASECALCULOICM * Pdv_ItensALIQUOTA_INT.VALUE ) / 100 ;
          END
          ELSE BEGIN
               Pdv_ItensICM.Value                      := 0 ;
          END;
     END;

     Pdv_ItensICM_SUBS.Value                 := 50;//ICMSUBSTITUICAO         ;
     Pdv_ItensBASECALCULOICM.Value           := BASECALCULOICM          ;
     Pdv_ItensBASECALCULOSUBSTITUICAO.Value  := BASECALCULOSUBSTITUICAO ;
     Pdv_ItensMENSAGEM_REDUCAO.Value         := MensagemReducao         ;
end;

procedure TDmPdv.Pdv_ItensBeforePost(DataSet: TDataSet);
begin
//  Pdv_ItensICM_SUBS.Value := 100;
//  CalculaImpostosPDV;
end;

procedure TDmPdv.Pdv_ItensCFOPValidate(Sender: TField);
begin
  //Busca a Aliquota para a Natureza
  If Sender.IsNull Then
    Exit ;

  Geral.Close ;
  Geral.Sql.text := ' Select PERC_ICMS, INTERESTADUAL, PERC_ICMS_REV    '+
                    ' from Est_Natureza Where Codigo = :C and CNPJ = :E ';

  Geral.ParamByName ('E').AsString  := DmApp.Cnpj;
  Geral.ParamByName ('C').AsInteger := Sender.Value;
  Geral.Open ;

  If Geral.Fields[0].isNull  then
  Begin
    MessageDlg('Natureza Inexistente!', mtError, [mbOK], 0);
    Abort;
  end
  else
  begin
    //ESTADUAL
    IF Geral.Fields[1].Value = 'E' THEN
    begin
      if PdvCONS_REV.VALUE = 'R' THEN //REVENDA
      begin
        If Geral.Fields[2].Value > 0 then
        begin
          IF ((Pdv_ItensCTE.VALUE <> 5) AND ( Pdv_ItensCTE.VALUE <> 3 )) THEN
            Pdv_ItensALIQUOTA_EST.Value := Geral.Fields[2].Value
          ELSE
            Pdv_ItensALIQUOTA_EST.Value := 0 ;

          Pdv_ItensALIQUOTA_INT.Value := 0 ;
        end
        else
        begin
          Pdv_ItensALIQUOTA_EST.Value := 0;
          Pdv_ItensALIQUOTA_INT.Value := 0;
        end;
      end
      else
      begin
        If Geral.Fields[0].Value > 0 then
        begin
          if ((Pdv_ItensCTE.VALUE <> 5) and ( Pdv_ItensCTE.VALUE <> 3 )) then
            Pdv_ItensALIQUOTA_EST.Value := Geral.Fields[0].Value
          else
            Pdv_ItensALIQUOTA_INT.Value := 0 ;
        end
        else
        begin
          Pdv_ItensALIQUOTA_EST.Value := 0;
          Pdv_ItensALIQUOTA_INT.Value := 0;
        end;
      end;
    end
    else
    begin
      //REVENDA
      if PdvCONS_REV.VALUE = 'R' then
      begin
        if Geral.Fields[0].Value > 0 then
        begin
          if ((Pdv_ItensCTE.VALUE <> 5) and ( Pdv_ItensCTE.VALUE <> 3)) then
            Pdv_ItensALIQUOTA_INT.Value := Geral.Fields[2].Value
          else
            Pdv_ItensALIQUOTA_INT.Value := 0 ;

          Pdv_ItensALIQUOTA_EST.Value := 0 ;
        end
        else
        begin
          Pdv_ItensALIQUOTA_EST.Value := 0;
          Pdv_ItensALIQUOTA_INT.Value := 0;
        end;
      end
      else
      begin
        if Geral.Fields[0].Value > 0 then
        begin
          if ((Pdv_ItensCTE.VALUE <> 5) AND ( Pdv_ItensCTE.VALUE <> 3)) then
            Pdv_ItensALIQUOTA_INT.Value := Geral.Fields[0].Value
          else
            Pdv_ItensALIQUOTA_INT.Value := Geral.Fields[0].Value;

          Pdv_ItensALIQUOTA_EST.Value := 0 ;
        end
        else
        begin
          Pdv_ItensALIQUOTA_EST.Value := 0;
          Pdv_ItensALIQUOTA_INT.Value := 0;
        end;
      end;
    end;
  end;
end;

procedure TDmPdv.Calcular_ItensPDV;
Var
    bReg: Pointer;
    tProdutos            : Extended ;
    tFProdutos           : Extended ;
    tPesos               : Extended ;
    tVolumes             : Extended ;
    tDesconto            : Extended ;
    BaseIcm, BaseIcmSubst: Extended ;
    Icm, IcmSubst        : Extended ;
    TotalNota            : Extended ;
    Estado               : String[1];
begin

  with dmPdv do
  begin
    Pdv_Itens.DisableControls;
    tProdutos     := 0;
    tFProdutos    := 0;
    tPesos        := 0;
    tVolumes      := 0;
    tDesconto     := 0;
    BaseIcm       := 0;
    BaseIcmSubst  := 0;
    Icm           := 0;
    IcmSubst      := 0;
    TotalNota     := 0;

    //-------------Perconrrendo o itens-----------------//
    Pdv_Itens.First;
    while Not Pdv_Itens.Eof Do
    begin
      tProdutos := tProdutos  + Pdv_ItensTOTAL.asFloat;
      tFProdutos:= tFProdutos + Pdv_ItensTOTAL_FISCAL.asFloat;
      tPesos    := tPesos     + Pdv_ItensPESO_TOTAL.asFloat;
      tVolumes  := tVolumes   + Pdv_ItensVOLUME_TOTAL.asFloat;
      tDesconto := tDesconto  + Pdv_ItensDESCONTO.asFloat;

      BaseIcm       := BaseIcm      + Pdv_ItensBASECALCULOICM.Value ;
      BaseIcmSubst  := BaseIcmSubst + Pdv_ItensBASECALCULOSUBSTITUICAO.Value ;

      //ESTADUAL OU INTERESTADUAL
      if PdvUF.Value = DmaPP.UF then
      begin //ESTADUAL
        Icm      := Icm       + ((Pdv_ItensALIQUOTA_EST.Value * Pdv_ItensBASECALCULOICM.Value ) / 100 );
        IcmSubst := IcmSubst  + ((Pdv_ItensICM_SUBS.Value));
      end
      else
      begin
        Icm := Icm + (( Pdv_ItensALIQUOTA_INT.Value * Pdv_ItensBASECALCULOICM.Value ) / 100 );
        IcmSubst := IcmSubst  + (Pdv_ItensICM_SUBS.Value);
      end;

      Pdv_Itens.Next;
    end;

    If Pdv.State in [ dsinsert, dsedit ] then
      Pdv.Post ;

    //Valores dos Itens
    Pdv.Edit;
    PdvTOTAL.asFloat              := tProdutos;
    PdvTOTAL_FISCAL.asFloat       := tfProdutos;
    PdvVOLUME.asFloat              := tVolumes;
    PdvPESO.asFloat              := tPesos;

    PdvBASE_ICM.Value              := BASEICM;
    PdvICM.Value                   := ICM;
    PdvBASE_ICM_SUBST.Value        := BASEICMSUBST;
    PdvVALOR_ICM_SUBST.Value       := ICMSUBST;
    PdvDESCONTOS_CONCEDIDOS.Value  := tDesconto;

    if Dmapp.DIF_FIS_FISC = 'S' then
      TotalNota := PdvTOTAL_FISCAL.Value
    else
      TotalNota := PdvTOTAL.Value;

    TotalNota := TotalNota + PdvVALOR_ICM_SUBST.Value;
    TotalNota := TotalNota + PdvFRETE.Value;
    TotalNota := TotalNota + PdvSEGURO.Value;
    TotalNota := TotalNota + PdvDESPESAS.Value;
    TotalNota := TotalNota + PdvIPI.Value;

    PdvTOTAL_NOTA.Value     := TotalNota;
    Pdv.Post ;
    Pdv_Itens.EnableControls;
  end;// fim with
end;

procedure TDmPdv.SetText(Codigo1: String);
var
   Aux: String;
   Codigo, Grade, Numero: String;
begin
     Aux := Codigo1 ;
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
          IF NOT ( Pdv_Itens.STATE IN [ DSINSERT, DSEDIT ]) THEN
              Pdv_Itens.EDIT ;

          IF TRIM(GRADE) = '' THEN
            Pdv_ItensGRADE.VALUE  := '0'
          ELSE
            Pdv_ItensGRADE.VALUE  := TRIM(GRADE)  ;


          IF TRIM(NUMERO) = '' THEN
            Pdv_ItensNUMERO.VALUE := '0'
          ELSE
            Pdv_ItensNUMERO.VALUE := TRIM(GRADE);

          Pdv_ItensPRODUTO.VALUE := CODIGO;


     END
     ELSE BEGIN
          If DmApp.Elimina_Zeros = 'S'
          THEN BEGIN
               While Copy ( Aux, 1, 1 ) = '0' DO
               BEGIN
                    Aux := Copy ( Aux, 2, 15 );
               End;
               Pdv_ItensPRODUTO.VALUE := Aux ;
          END
          ELSE BEGIN
               If DmApp.Acrescenta_Zeros = 'S'
               THEN BEGIN
                    While Length ( Aux ) < 10 DO
                    BEGIN
                         Aux := '0' + Aux ;
                    End;

                    Pdv_ItensPRODUTO.VALUE := Aux ;
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
                         Pdv_ItensPRODUTO.VALUE := Codigo ;

                    END
                    ELSE
                    BEGIN
                         Pdv_ItensPRODUTO.VALUE := Aux ;
                    end;
               END;
          END;
     END;
end;

procedure TDmPdv.Pdv_ItensBeforeOpen(DataSet: TDataSet);
begin
  Pdv_Itens.parambyname('cnpj').value := dmapp.cnpj;
  Pdv_Itens.parambyname('codigo').value := PdvCODIGO.value;
end;

end.



