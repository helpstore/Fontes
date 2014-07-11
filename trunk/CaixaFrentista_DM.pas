 unit CaixaFrentista_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery, IBStoredProc;

type
  TDMCaixaFrentista = class(TDataModule)
    Caixa_Frentista: TIBDataSet;
    Caixa_FrentistaAFERICAO: TFloatField;
    Caixa_FrentistaBOMBAS: TFloatField;
    Caixa_FrentistaCARTAO: TFloatField;
    Caixa_FrentistaCNPJ: TIBStringField;
    Caixa_FrentistaDATA: TDateTimeField;
    Caixa_FrentistaDINHEIRO: TFloatField;
    Caixa_FrentistaFECHADO: TIBStringField;
    Caixa_FrentistaNOTAS: TFloatField;
    Caixa_FrentistaPRODUTOS: TFloatField;
    Caixa_FrentistaRECEBIMENTOS: TFloatField;
    Caixa_FrentistaSANGRIA: TFloatField;
    Caixa_FrentistaTICKET: TFloatField;
    Caixa_FrentistaTROCO: TFloatField;
    Caixa_FrentistaUSUARIO: TIntegerField;
    Caixa_FrentistaCONTA: TIntegerField;
    Caixa_FrentistaCHEQUE: TFloatField;
    Caixa_FrentistaSALDO_ANTERIOR: TFloatField;
    Caixa_FrentistaSALDO: TFloatField;
    DsCaixa: TDataSource;
    Produtos: TIBDataSet;
    ProdutosCNPJ: TIBStringField;
    ProdutosCONTA: TIntegerField;
    ProdutosDATA: TDateTimeField;
    ProdutosPRODUTO: TIBStringField;
    ProdutosQUANTIDADE: TFloatField;
    ProdutosUSUARIO: TIntegerField;
    ProdutosVALOR_TOTAL: TFloatField;
    ProdutosVALOR_UNIT: TFloatField;
    Valida_Produto: TIBStoredProc;
    ProdutosNOME: TIBStringField;
    ProdutosUNIDADE: TIBStringField;
    ProdutosSUBUNIDADE: TIntegerField;
    Geral: TIBQuery;
    VerLeitura: TIBQuery;
    VerLeituraAFERICAO: TFloatField;
    VerLeituraBOMBA: TIntegerField;
    VerLeituraCNPJ: TIBStringField;
    VerLeituraCONTA: TIntegerField;
    VerLeituraDATA: TDateTimeField;
    VerLeituraLEITURAFINAL: TFloatField;
    VerLeituraLEITURAINICIAL: TFloatField;
    VerLeituraNOME: TIBStringField;
    VerLeituraUSUARIO: TIntegerField;
    VerLeituraVALORTOTAL: TFloatField;
    VerLeituraVALORUNITARIO: TFloatField;
    CriaLeitura: TIBQuery;
    VerLeituraPRODUTO: TIBStringField;
    Cartao: TIBDataSet;
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
    SelFatura_Futura: TIBQuery;
    SelFatura_FuturaCODIGO: TIntegerField;
    SelFatura_FuturaDATA: TDateTimeField;
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
    SelFatura_FuturaDATA_CAIXA: TDateField;
    SelFatura_FuturaSELECIONADA: TIBStringField;
    SelFatura_FuturaCPF_CGC: TIBStringField;
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
    Baixas_ReceberTotal: TFloatField;
    Baixas_ReceberANO: TIntegerField;
    Baixas_ReceberANO_CR: TIntegerField;
    Baixas_ReceberANO_VN: TIntegerField;
    Baixas_ReceberVLR_PARCIAL: TIBBCDField;
    Baixas_ReceberJUROS_REC: TIBBCDField;
    Baixas_ReceberDESCONTOS_REC: TIBBCDField;
    Baixas_ReceberVLR_BAIXA: TIBBCDField;
    Baixas_ReceberDT_BAIXA: TDateField;
    Baixas_ReceberDT_EMISSAO: TDateField;
    Baixas_ReceberDT_VENCTO: TDateField;
    Baixas_ReceberDT_LANCTO: TDateField;
    Baixas_ReceberDT_AVISO: TDateField;
    Baixas_ReceberFATURA: TIntegerField;
    Baixas_ReceberNUMBOLETO: TIntegerField;
    Baixas_ReceberNUMDUPLICATA: TIntegerField;
    SelFatura_FuturaAVISTA: TIBBCDField;
    SelFatura_FuturaAPRAZO: TIBBCDField;
    SelFatura_FuturaJUROS: TIBBCDField;
    Baixas_Pagar: TIBQuery;
    Baixas_PagarCODIGO: TIntegerField;
    Baixas_PagarHISTORICO_BX: TIBStringField;
    Baixas_PagarPLANILHA: TIntegerField;
    Baixas_PagarTIPO_JUROS: TIBStringField;
    Baixas_PagarPESSOA_FJ: TIntegerField;
    Baixas_PagarDOCTO: TIBStringField;
    Baixas_PagarPARCELA: TIBStringField;
    Baixas_PagarHISTORICO: TIBStringField;
    Baixas_PagarBOLETO: TIBStringField;
    Baixas_PagarORIGEM: TIBStringField;
    Baixas_PagarAVISO: TIntegerField;
    Baixas_PagarVALOR: TIBBCDField;
    Baixas_PagarJUROS: TIBBCDField;
    Baixas_PagarDESCONTOS: TIBBCDField;
    Baixas_PagarTAXA_JUROS: TIBBCDField;
    Baixas_PagarNOME: TIBStringField;
    Baixas_PagarCPF_CGC: TIBStringField;
    Baixas_PagarTotal: TFloatField;
    Baixas_PagarANO: TIntegerField;
    Baixas_PagarVLR_PARCIAL: TIBBCDField;
    Baixas_PagarVLR_BAIXA: TIBBCDField;
    Baixas_PagarCODIGO_PG: TIntegerField;
    Baixas_PagarANO_PG: TIntegerField;
    Baixas_PagarJUROS_PAG: TIBBCDField;
    Baixas_PagarDESCONTOS_PAG: TIBBCDField;
    Baixas_PagarCODIGO_ENT: TIntegerField;
    Baixas_PagarANO_ENT: TIntegerField;
    Baixas_PagarDT_BAIXA: TDateField;
    Baixas_PagarDT_EMISSAO: TDateField;
    Baixas_PagarDT_VENCTO: TDateField;
    Baixas_PagarDT_LANCTO: TDateField;
    Baixas_PagarDT_AVISO: TDateField;
    Baixas_PagarCENTRO_CUSTO: TIntegerField;
    Baixas_PagarNOME_CENTRO: TIBStringField;
    Baixas_PagarDUPLICATA: TIBStringField;
    Baixas_PagarCONFERIDA: TIBStringField;
    Formas_Agrupadas: TIBQuery;
    Formas_AgrupadasVALOR_ORIGINAL: TIBBCDField;
    Formas_AgrupadasJUROS: TIBBCDField;
    Formas_AgrupadasTIPO_PAGTO: TIBStringField;
    Formas_AgrupadasTotal: TFloatField;
    Lista_Formas: TIBQuery;
    DsFormas_Agrupadas: TDataSource;
    Lista_FormasFORMA_PGTO: TIntegerField;
    Lista_FormasVALOR_ORIGINAL: TIBBCDField;
    Lista_FormasJUROS: TIBBCDField;
    Lista_FormasTIPO_PAGTO: TIBStringField;
    Lista_FormasNOME_FORMA: TIBStringField;
    Lista_FormasBANCO: TIBStringField;
    Lista_FormasCONTA: TIBStringField;
    Lista_FormasDV_CONTA: TIBStringField;
    Lista_FormasAGENCIA: TIBStringField;
    Lista_FormasDV_AGENCIA: TIBStringField;
    Lista_FormasCHEQUE: TIBStringField;
    Lista_FormasDV_CHEQUE: TIBStringField;
    Lista_FormasAVISTA: TIBStringField;
    Soma_Vendas_Forma: TIBQuery;
    Soma_Vendas_FormaVALOR_ORIGINAL: TIBBCDField;
    Soma_Vendas_FormaJUROS: TIBBCDField;
    Soma_Vendas_FormaTIPO_PAGTO: TIBStringField;
    Soma_Vendas_FormaTotal: TFloatField;
    Caixa_FrentistaMOEDAS: TFloatField;
    Lista_Produtos_Caixa: TIBQuery;
    Lista_Produtos_CaixaTOTAL: TIBBCDField;
    Lista_Produtos_CaixaPRODUTO: TIBStringField;
    Caixa_FrentistaSAIDAS: TFloatField;
    Caixa_FrentistaCHEQUE_PRAZO: TFloatField;
    Movimentos_C: TIBQuery;
    Movimentos_CDOCUMENTO: TIBStringField;
    Movimentos_CHISTORICO: TIBStringField;
    Movimentos_CVALOR: TIBBCDField;
    Movimentos_CTIPO: TIBStringField;
    Movimentos_D: TIBQuery;
    Movimentos_DDOCUMENTO: TIBStringField;
    Movimentos_DHISTORICO: TIBStringField;
    Movimentos_DVALOR: TIBBCDField;
    Movimentos_DTIPO: TIBStringField;
    Movimentos: TIBDataSet;
    MovimentosCNPJ: TIBStringField;
    MovimentosCONTA: TIntegerField;
    MovimentosDATA: TDateTimeField;
    MovimentosDOCUMENTO: TIBStringField;
    MovimentosHISTORICO: TIBStringField;
    MovimentosUSUARIO: TIntegerField;
    MovimentosVALOR: TFloatField;
    MovimentosTIPO: TIBStringField;
    Caixa_FrentistaOUTRAS_ENTRADAS: TFloatField;
    Caixa_FrentistaOUTRAS_SAIDAS: TFloatField;
    MovimentosCONTRA_PARTIDA: TIntegerField;
    MovimentosNOME_CONTRAPARTIDA: TIBStringField;
    Movimentos_CNOME_CONTRAPARTIDA: TIBStringField;
    Movimentos_CCONTRA_PARTIDA: TIntegerField;
    Movimentos_DNOME_CONTRAPARTIDA: TIBStringField;
    Movimentos_DCONTRA_PARTIDA: TIntegerField;
    Caixa_FrentistaENTRADAS: TFloatField;
    Caixa_FrentistaResultado: TFloatField;
    Caixa_FrentistaTROCO_INICIAL: TFloatField;
    Troco_Inicial: TIBStoredProc;
    Saldo_Caixa: TIBStoredProc;
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
    Caixa_FrentistaHAVER: TFloatField;
    Caixa_FrentistaBAIXA_HAVER: TFloatField;
    Ver_Baixa_Haver: TIBQuery;
    Ver_Baixa_HaverCNPJ: TIBStringField;
    Ver_Baixa_HaverCODIGO: TIntegerField;
    Ver_Baixa_HaverCONTA: TIntegerField;
    Ver_Baixa_HaverDATA: TDateTimeField;
    Ver_Baixa_HaverDOCUMENTO: TIBStringField;
    Ver_Baixa_HaverHAVER: TIntegerField;
    Ver_Baixa_HaverHISTORICO: TIBStringField;
    Ver_Baixa_HaverNOME: TIBStringField;
    Ver_Baixa_HaverPESSOA_FJ: TIntegerField;
    Ver_Baixa_HaverPLANILHA: TIntegerField;
    Ver_Baixa_HaverUSUARIO: TIntegerField;
    Ver_Baixa_HaverVALOR: TFloatField;
    Ver_Vendas_Prazo: TIBQuery;
    Ver_Vendas_PrazoCODIGO: TIntegerField;
    Ver_Vendas_PrazoDATA: TDateTimeField;
    Ver_Vendas_PrazoFECHADA: TIBStringField;
    Ver_Vendas_PrazoHISTORICO: TIBStringField;
    Ver_Vendas_PrazoPESSOA_FJ: TIntegerField;
    Ver_Vendas_PrazoPESSOA_RAZAO: TIBStringField;
    Ver_Vendas_PrazoUSUARIO: TIntegerField;
    Ver_Vendas_PrazoNATUREZA: TIntegerField;
    Ver_Vendas_PrazoNOME_NATUREZA: TIBStringField;
    Ver_Vendas_PrazoENVIADA_CX: TIBStringField;
    Ver_Vendas_PrazoDATA_CAIXA: TDateTimeField;
    Ver_Vendas_PrazoCONTA_CAIXA: TIntegerField;
    Ver_Vendas_PrazoFORMA_PGTO: TIntegerField;
    Ver_Vendas_PrazoNUM_NF: TIntegerField;
    Ver_Vendas_PrazoNUM_CUPOM: TIntegerField;
    Ver_Vendas_PrazoPROPRIEDADE: TIntegerField;
    Ver_Vendas_PrazoCONVENIADO: TIntegerField;
    Ver_Vendas_PrazoTIPO_DOCTO: TIBStringField;
    Ver_Vendas_PrazoLOCAL_COBRANCA: TIntegerField;
    Ver_Vendas_PrazoDESC_ACRES: TIBBCDField;
    Ver_Vendas_PrazoENTRADA: TIBBCDField;
    Ver_Vendas_PrazoDINHEIRO: TIBBCDField;
    Ver_Vendas_PrazoCHEQUE: TIBBCDField;
    Ver_Vendas_PrazoCARTAO: TIBBCDField;
    Ver_Vendas_PrazoTICKET: TIBBCDField;
    Ver_Vendas_PrazoTOTAL: TIBBCDField;
    Ver_Vendas_PrazoVLRLIQUIDO: TIBBCDField;
    Ver_Vendas_PrazoOBSERVACAO: TIBStringField;
    Ver_Vendas_PrazoVLR_PARC_LC: TIBBCDField;
    Ver_Vendas_PrazoTERCEIRO: TIntegerField;
    Ver_Vendas_PrazoCARGA: TIntegerField;
    Ver_Vendas_PrazoVOLUME: TIBBCDField;
    Ver_Vendas_PrazoPESO: TIBBCDField;
    Ver_Vendas_PrazoREQUISICAO: TIBStringField;
    Ver_Vendas_PrazoTIPO_VENDA: TIBStringField;
    Ver_Vendas_PrazoNOME_CONSUMIDOR: TIBStringField;
    Ver_Vendas_PrazoCPF_CGC: TIBStringField;
    Ver_Vendas_PrazoNOME_FORMA: TIBStringField;
    Ver_Vendas_PrazoFATURA_FUTURA: TIBStringField;
    Ver_Vendas_PrazoORCAMENTO: TIntegerField;
    Ver_Vendas_PrazoVENDEDOR: TIntegerField;
    Ver_Vendas_PrazoLOCAL: TIntegerField;
    Ver_Vendas_PrazoCANCELADA: TIBStringField;
    Ver_Vendas_PrazoBASE_ICM: TIBBCDField;
    Ver_Vendas_PrazoICM: TIBBCDField;
    Ver_Vendas_PrazoBASE_ICM_SUBST: TIBBCDField;
    Ver_Vendas_PrazoVALOR_ICM_SUBST: TIBBCDField;
    Ver_Vendas_PrazoFRETE: TIBBCDField;
    Ver_Vendas_PrazoSEGURO: TIBBCDField;
    Ver_Vendas_PrazoDESPESAS: TIBBCDField;
    Ver_Vendas_PrazoIPI: TIBBCDField;
    Ver_Vendas_PrazoTOTAL_NOTA: TIBBCDField;
    Ver_Vendas_PrazoSELECIONADA: TIBStringField;
    Ver_Vendas_PrazoNOME_VENDEDOR: TIBStringField;
    Ver_Vendas_PrazoAVISTA: TIBBCDField;
    Ver_Vendas_PrazoJUROS: TIBBCDField;
    Ver_Vendas_PrazoAPRAZO: TIBBCDField;
    Lista_Produtos_CaixaQUANTIDADE_EXPOSTA: TIBBCDField;
    Lista_Produtos_CaixaQUANTIDADE: TIBBCDField;
    Caixa_FrentistaPLANILHA: TIntegerField;
    Caixa_FrentistaDESCONTOS: TFloatField;
    Caixa_FrentistaJUROS: TFloatField;
    Caixa_FrentistaACRESCIMOS: TFloatField;
    SelFatura_FuturaTROCO: TIBBCDField;
    Caixa_FrentistaTROCO_VENDAS: TFloatField;
    Ver_Cartao: TIBQuery;
    Ver_CartaoADMINISTRADORA: TIntegerField;
    Ver_CartaoCLIENTE: TIBStringField;
    Ver_CartaoCODIGO: TIntegerField;
    Ver_CartaoCONCILIADO: TIBStringField;
    Ver_CartaoCPF_CNPJ: TIBStringField;
    Ver_CartaoDOCUMENTO: TIBStringField;
    Ver_CartaoNUM_BANCO: TIBStringField;
    Ver_CartaoNUM_CARTAO: TIBStringField;
    Ver_CartaoNUM_CONTA: TIBStringField;
    Ver_CartaoREEMBOLSO: TDateTimeField;
    Ver_CartaoTIPO_DOC: TIBStringField;
    Ver_CartaoVENDA: TIntegerField;
    Ver_CartaoPESSOA_FJ: TIntegerField;
    Ver_CartaoTIPO: TIBStringField;
    Ver_CartaoNUM_PARCELAS: TIntegerField;
    Ver_CartaoNOME_ADM: TIBStringField;
    Ver_CartaoVALOR: TIBBCDField;
    Ver_CartaoTAXA: TIBBCDField;
    Valida_Pessoa_Fj: TIBQuery;
    Valida_Pessoa_FjNOME: TIBStringField;
    Valida_Pessoa_FjUF: TIBStringField;
    Valida_Pessoa_FjCPF_CNPJ: TIBStringField;
    Valida_Pessoa_FjOBS: TBlobField;
    Valida_Pessoa_FjOBS2: TBlobField;
    Valida_Pessoa_FjCLASSIFICACAO: TIntegerField;
    MovimentosPESSOA_FJ: TIntegerField;
    MovimentosNOME: TIBStringField;
    Lista_Produtos_CaixaDESCONTOS: TIBBCDField;
    VER_FIN_FATURAS_PARCIAL_CAIXA: TIBQuery;
    VER_FIN_FATURAS_PARCIAL_CAIXASEQUENCIA: TIntegerField;
    VER_FIN_FATURAS_PARCIAL_CAIXAHISTORICO: TIBStringField;
    VER_FIN_FATURAS_PARCIAL_CAIXAVALOR: TIBBCDField;
    VER_FIN_FATURAS_PARCIAL_CAIXAPLANILHA: TIntegerField;
    VER_FIN_FATURAS_PARCIAL_CAIXAFATURA: TIntegerField;
    VER_FIN_FATURAS_PARCIAL_CAIXANOME: TIBStringField;
    VER_FATURA_CAIXA: TIBQuery;
    VER_FATURA_CAIXACODIGO: TIntegerField;
    VER_FATURA_CAIXAPESSOA_FJ: TIntegerField;
    VER_FATURA_CAIXAVALOR: TIBBCDField;
    VER_FATURA_CAIXADESCONTO: TIBBCDField;
    VER_FATURA_CAIXAJUROS: TIBBCDField;
    VER_FATURA_CAIXAVENCIMENTO: TDateField;
    VER_FATURA_CAIXAHISTORICO: TIBStringField;
    VER_FATURA_CAIXANOME: TIBStringField;
    VER_FATURA_CAIXAENDERECO: TIBStringField;
    VER_FATURA_CAIXANUMERO: TIBStringField;
    VER_FATURA_CAIXACIDADE: TIBStringField;
    VER_FATURA_CAIXABAIRRO: TIBStringField;
    VER_FATURA_CAIXACEP: TIBStringField;
    VER_FATURA_CAIXAUF: TIBStringField;
    VER_FATURA_CAIXAAGRUPADORA: TIntegerField;
    VER_FATURA_CAIXAFONE: TIBStringField;
    VER_FATURA_CAIXABANCO: TIBStringField;
    VER_FATURA_CAIXABOLETO: TIBStringField;
    VER_FATURA_CAIXANOME_BANCO: TIBStringField;
    VER_FATURA_CAIXAOBS: TIBStringField;
    VER_FATURA_CAIXADUPLICATA: TIBStringField;
    VER_FATURA_CAIXAENVIADA: TIBStringField;
    VER_FATURA_CAIXATIPO: TIBStringField;
    VER_FATURA_CAIXACPF_CGC: TIBStringField;
    Baixas_Notas_Faturas: TIBQuery;
    Baixas_Notas_FaturasCODIGO: TIntegerField;
    Baixas_Notas_FaturasCODIGO_CR: TIntegerField;
    Baixas_Notas_FaturasHISTORICO_BX: TIBStringField;
    Baixas_Notas_FaturasPLANILHA: TIntegerField;
    Baixas_Notas_FaturasTIPO_JUROS: TIBStringField;
    Baixas_Notas_FaturasPESSOA_FJ: TIntegerField;
    Baixas_Notas_FaturasDOCTO: TIBStringField;
    Baixas_Notas_FaturasPARCELA: TIBStringField;
    Baixas_Notas_FaturasHISTORICO: TIBStringField;
    Baixas_Notas_FaturasBOLETO: TIBStringField;
    Baixas_Notas_FaturasORIGEM: TIBStringField;
    Baixas_Notas_FaturasCODIGO_VN: TIntegerField;
    Baixas_Notas_FaturasAVISO: TIntegerField;
    Baixas_Notas_FaturasVALOR: TIBBCDField;
    Baixas_Notas_FaturasJUROS: TIBBCDField;
    Baixas_Notas_FaturasDESCONTOS: TIBBCDField;
    Baixas_Notas_FaturasTAXA_JUROS: TIBBCDField;
    Baixas_Notas_FaturasNOME: TIBStringField;
    Baixas_Notas_FaturasTotal: TFloatField;
    Baixas_Notas_FaturasANO: TIntegerField;
    Baixas_Notas_FaturasANO_CR: TIntegerField;
    Baixas_Notas_FaturasANO_VN: TIntegerField;
    Baixas_Notas_FaturasVLR_PARCIAL: TIBBCDField;
    Baixas_Notas_FaturasJUROS_REC: TIBBCDField;
    Baixas_Notas_FaturasDESCONTOS_REC: TIBBCDField;
    Baixas_Notas_FaturasVLR_BAIXA: TIBBCDField;
    Baixas_Notas_FaturasDT_BAIXA: TDateField;
    Baixas_Notas_FaturasDT_EMISSAO: TDateField;
    Baixas_Notas_FaturasDT_VENCTO: TDateField;
    Baixas_Notas_FaturasDT_LANCTO: TDateField;
    Baixas_Notas_FaturasDT_AVISO: TDateField;
    Baixas_Notas_FaturasFATURA: TIntegerField;
    Baixas_Notas_FaturasNUMBOLETO: TIntegerField;
    Baixas_Notas_FaturasNUMDUPLICATA: TIntegerField;
    Caixa_FrentistaJUROS_RECEBER: TFloatField;
    Caixa_FrentistaDESCONTOS_RECEBER: TFloatField;
    Caixa_FrentistaTURNO: TIntegerField;
    MovimentosTURNO: TSmallintField;
    Ver_Caixa: TIBQuery;
    Ver_CaixaCNPJ: TIBStringField;
    Ver_CaixaUSUARIO: TIntegerField;
    Ver_CaixaCONTA: TIntegerField;
    Ver_CaixaDATA: TDateTimeField;
    Ver_CaixaDINHEIRO: TFloatField;
    Ver_CaixaTICKET: TFloatField;
    Ver_CaixaCHEQUE: TFloatField;
    Ver_CaixaCHEQUE_PRAZO: TFloatField;
    Ver_CaixaSALDO_ANTERIOR: TFloatField;
    Ver_CaixaSALDO: TFloatField;
    Ver_CaixaFECHADO: TIBStringField;
    Ver_CaixaTROCO: TFloatField;
    Ver_CaixaSANGRIA: TFloatField;
    Ver_CaixaBOMBAS: TFloatField;
    Ver_CaixaNOTAS: TFloatField;
    Ver_CaixaPRODUTOS: TFloatField;
    Ver_CaixaCARTAO: TFloatField;
    Ver_CaixaRECEBIMENTOS: TFloatField;
    Ver_CaixaAFERICAO: TFloatField;
    Ver_CaixaMOEDAS: TFloatField;
    Ver_CaixaOUTRAS_ENTRADAS: TFloatField;
    Ver_CaixaOUTRAS_SAIDAS: TFloatField;
    Ver_CaixaTROCO_INICIAL: TFloatField;
    Ver_CaixaHAVER: TFloatField;
    Ver_CaixaBAIXA_HAVER: TFloatField;
    Ver_CaixaPLANILHA: TIntegerField;
    Ver_CaixaDESCONTOS: TFloatField;
    Ver_CaixaJUROS: TFloatField;
    Ver_CaixaACRESCIMOS: TFloatField;
    Ver_CaixaTROCO_VENDAS: TFloatField;
    Ver_CaixaJUROS_RECEBER: TFloatField;
    Ver_CaixaDESCONTOS_RECEBER: TFloatField;
    Ver_CaixaTURNO: TIntegerField;
    Ver_CaixaENTRADAS: TFloatField;
    Ver_CaixaSAIDAS: TFloatField;
    Ver_CaixaRESULTADO: TFloatField;
    Baixas_Receber_Geral: TIBQuery;
    Baixas_Receber_GeralCODIGO: TIntegerField;
    Baixas_Receber_GeralCODIGO_CR: TIntegerField;
    Baixas_Receber_GeralHISTORICO_BX: TIBStringField;
    Baixas_Receber_GeralPLANILHA: TIntegerField;
    Baixas_Receber_GeralTIPO_JUROS: TIBStringField;
    Baixas_Receber_GeralPESSOA_FJ: TIntegerField;
    Baixas_Receber_GeralDOCTO: TIBStringField;
    Baixas_Receber_GeralPARCELA: TIBStringField;
    Baixas_Receber_GeralHISTORICO: TIBStringField;
    Baixas_Receber_GeralBOLETO: TIBStringField;
    Baixas_Receber_GeralORIGEM: TIBStringField;
    Baixas_Receber_GeralCODIGO_VN: TIntegerField;
    Baixas_Receber_GeralAVISO: TIntegerField;
    Baixas_Receber_GeralVALOR: TIBBCDField;
    Baixas_Receber_GeralJUROS: TIBBCDField;
    Baixas_Receber_GeralDESCONTOS: TIBBCDField;
    Baixas_Receber_GeralTAXA_JUROS: TIBBCDField;
    Baixas_Receber_GeralNOME: TIBStringField;
    Baixas_Receber_GeralTotal: TFloatField;
    Baixas_Receber_GeralANO: TIntegerField;
    Baixas_Receber_GeralANO_CR: TIntegerField;
    Baixas_Receber_GeralANO_VN: TIntegerField;
    Baixas_Receber_GeralVLR_PARCIAL: TIBBCDField;
    Baixas_Receber_GeralJUROS_REC: TIBBCDField;
    Baixas_Receber_GeralDESCONTOS_REC: TIBBCDField;
    Baixas_Receber_GeralVLR_BAIXA: TIBBCDField;
    Baixas_Receber_GeralDT_BAIXA: TDateField;
    Baixas_Receber_GeralDT_EMISSAO: TDateField;
    Baixas_Receber_GeralDT_VENCTO: TDateField;
    Baixas_Receber_GeralDT_LANCTO: TDateField;
    Baixas_Receber_GeralDT_AVISO: TDateField;
    Baixas_Receber_GeralFATURA: TIntegerField;
    Baixas_Receber_GeralNUMBOLETO: TIntegerField;
    Baixas_Receber_GeralNUMDUPLICATA: TIntegerField;
    VER_FIN_FATURAS_PARCIAL_GERAL: TIBQuery;
    VER_FIN_FATURAS_PARCIAL_GERALSEQUENCIA: TIntegerField;
    VER_FIN_FATURAS_PARCIAL_GERALHISTORICO: TIBStringField;
    VER_FIN_FATURAS_PARCIAL_GERALVALOR: TIBBCDField;
    VER_FIN_FATURAS_PARCIAL_GERALPLANILHA: TIntegerField;
    VER_FIN_FATURAS_PARCIAL_GERALFATURA: TIntegerField;
    VER_FIN_FATURAS_PARCIAL_GERALNOME: TIBStringField;
    VER_FATURA_GERAL: TIBQuery;
    VER_FATURA_GERALCODIGO: TIntegerField;
    VER_FATURA_GERALPESSOA_FJ: TIntegerField;
    VER_FATURA_GERALVALOR: TIBBCDField;
    VER_FATURA_GERALDESCONTO: TIBBCDField;
    VER_FATURA_GERALJUROS: TIBBCDField;
    VER_FATURA_GERALVENCIMENTO: TDateField;
    VER_FATURA_GERALHISTORICO: TIBStringField;
    VER_FATURA_GERALNOME: TIBStringField;
    VER_FATURA_GERALENDERECO: TIBStringField;
    VER_FATURA_GERALNUMERO: TIBStringField;
    VER_FATURA_GERALCIDADE: TIBStringField;
    VER_FATURA_GERALBAIRRO: TIBStringField;
    VER_FATURA_GERALCEP: TIBStringField;
    VER_FATURA_GERALUF: TIBStringField;
    VER_FATURA_GERALAGRUPADORA: TIntegerField;
    VER_FATURA_GERALFONE: TIBStringField;
    VER_FATURA_GERALBANCO: TIBStringField;
    VER_FATURA_GERALBOLETO: TIBStringField;
    VER_FATURA_GERALNOME_BANCO: TIBStringField;
    VER_FATURA_GERALOBS: TIBStringField;
    VER_FATURA_GERALDUPLICATA: TIBStringField;
    VER_FATURA_GERALENVIADA: TIBStringField;
    VER_FATURA_GERALTIPO: TIBStringField;
    VER_FATURA_GERALCPF_CGC: TIBStringField;
    Baixas_Notas_Faturas_Geral: TIBQuery;
    Baixas_Notas_Faturas_GeralCODIGO: TIntegerField;
    Baixas_Notas_Faturas_GeralCODIGO_CR: TIntegerField;
    Baixas_Notas_Faturas_GeralHISTORICO_BX: TIBStringField;
    Baixas_Notas_Faturas_GeralPLANILHA: TIntegerField;
    Baixas_Notas_Faturas_GeralTIPO_JUROS: TIBStringField;
    Baixas_Notas_Faturas_GeralPESSOA_FJ: TIntegerField;
    Baixas_Notas_Faturas_GeralDOCTO: TIBStringField;
    Baixas_Notas_Faturas_GeralPARCELA: TIBStringField;
    Baixas_Notas_Faturas_GeralHISTORICO: TIBStringField;
    Baixas_Notas_Faturas_GeralBOLETO: TIBStringField;
    Baixas_Notas_Faturas_GeralORIGEM: TIBStringField;
    Baixas_Notas_Faturas_GeralCODIGO_VN: TIntegerField;
    Baixas_Notas_Faturas_GeralAVISO: TIntegerField;
    Baixas_Notas_Faturas_GeralVALOR: TIBBCDField;
    Baixas_Notas_Faturas_GeralJUROS: TIBBCDField;
    Baixas_Notas_Faturas_GeralDESCONTOS: TIBBCDField;
    Baixas_Notas_Faturas_GeralTAXA_JUROS: TIBBCDField;
    Baixas_Notas_Faturas_GeralNOME: TIBStringField;
    Baixas_Notas_Faturas_GeralTotal: TFloatField;
    Baixas_Notas_Faturas_GeralANO: TIntegerField;
    Baixas_Notas_Faturas_GeralANO_CR: TIntegerField;
    Baixas_Notas_Faturas_GeralANO_VN: TIntegerField;
    Baixas_Notas_Faturas_GeralVLR_PARCIAL: TIBBCDField;
    Baixas_Notas_Faturas_GeralJUROS_REC: TIBBCDField;
    Baixas_Notas_Faturas_GeralDESCONTOS_REC: TIBBCDField;
    Baixas_Notas_Faturas_GeralVLR_BAIXA: TIBBCDField;
    Baixas_Notas_Faturas_GeralDT_BAIXA: TDateField;
    Baixas_Notas_Faturas_GeralDT_EMISSAO: TDateField;
    Baixas_Notas_Faturas_GeralDT_VENCTO: TDateField;
    Baixas_Notas_Faturas_GeralDT_LANCTO: TDateField;
    Baixas_Notas_Faturas_GeralDT_AVISO: TDateField;
    Baixas_Notas_Faturas_GeralFATURA: TIntegerField;
    Baixas_Notas_Faturas_GeralNUMBOLETO: TIntegerField;
    Baixas_Notas_Faturas_GeralNUMDUPLICATA: TIntegerField;
    Ver_Cartao_Geral: TIBQuery;
    Ver_Cartao_GeralADMINISTRADORA: TIntegerField;
    Ver_Cartao_GeralCLIENTE: TIBStringField;
    Ver_Cartao_GeralCODIGO: TIntegerField;
    Ver_Cartao_GeralCONCILIADO: TIBStringField;
    Ver_Cartao_GeralCPF_CNPJ: TIBStringField;
    Ver_Cartao_GeralDOCUMENTO: TIBStringField;
    Ver_Cartao_GeralNUM_BANCO: TIBStringField;
    Ver_Cartao_GeralNUM_CARTAO: TIBStringField;
    Ver_Cartao_GeralNUM_CONTA: TIBStringField;
    Ver_Cartao_GeralREEMBOLSO: TDateTimeField;
    Ver_Cartao_GeralTIPO_DOC: TIBStringField;
    Ver_Cartao_GeralVENDA: TIntegerField;
    Ver_Cartao_GeralPESSOA_FJ: TIntegerField;
    Ver_Cartao_GeralTIPO: TIBStringField;
    Ver_Cartao_GeralNUM_PARCELAS: TIntegerField;
    Ver_Cartao_GeralNOME_ADM: TIBStringField;
    Ver_Cartao_GeralVALOR: TIBBCDField;
    Ver_Cartao_GeralTAXA: TIBBCDField;
    Baixas_Pagar_Geral: TIBQuery;
    Baixas_Pagar_GeralCODIGO: TIntegerField;
    Baixas_Pagar_GeralHISTORICO_BX: TIBStringField;
    Baixas_Pagar_GeralPLANILHA: TIntegerField;
    Baixas_Pagar_GeralTIPO_JUROS: TIBStringField;
    Baixas_Pagar_GeralPESSOA_FJ: TIntegerField;
    Baixas_Pagar_GeralDOCTO: TIBStringField;
    Baixas_Pagar_GeralPARCELA: TIBStringField;
    Baixas_Pagar_GeralHISTORICO: TIBStringField;
    Baixas_Pagar_GeralBOLETO: TIBStringField;
    Baixas_Pagar_GeralORIGEM: TIBStringField;
    Baixas_Pagar_GeralAVISO: TIntegerField;
    Baixas_Pagar_GeralVALOR: TIBBCDField;
    Baixas_Pagar_GeralJUROS: TIBBCDField;
    Baixas_Pagar_GeralDESCONTOS: TIBBCDField;
    Baixas_Pagar_GeralTAXA_JUROS: TIBBCDField;
    Baixas_Pagar_GeralNOME: TIBStringField;
    Baixas_Pagar_GeralCPF_CGC: TIBStringField;
    Baixas_Pagar_GeralTotal: TFloatField;
    Baixas_Pagar_GeralANO: TIntegerField;
    Baixas_Pagar_GeralVLR_PARCIAL: TIBBCDField;
    Baixas_Pagar_GeralVLR_BAIXA: TIBBCDField;
    Baixas_Pagar_GeralCODIGO_PG: TIntegerField;
    Baixas_Pagar_GeralANO_PG: TIntegerField;
    Baixas_Pagar_GeralJUROS_PAG: TIBBCDField;
    Baixas_Pagar_GeralDESCONTOS_PAG: TIBBCDField;
    Baixas_Pagar_GeralCODIGO_ENT: TIntegerField;
    Baixas_Pagar_GeralANO_ENT: TIntegerField;
    Baixas_Pagar_GeralDT_BAIXA: TDateField;
    Baixas_Pagar_GeralDT_EMISSAO: TDateField;
    Baixas_Pagar_GeralDT_VENCTO: TDateField;
    Baixas_Pagar_GeralDT_LANCTO: TDateField;
    Baixas_Pagar_GeralDT_AVISO: TDateField;
    Baixas_Pagar_GeralCENTRO_CUSTO: TIntegerField;
    Baixas_Pagar_GeralNOME_CENTRO: TIBStringField;
    Baixas_Pagar_GeralDUPLICATA: TIBStringField;
    Baixas_Pagar_GeralCONFERIDA: TIBStringField;
    SelFatura_Futura_Geral: TIBQuery;
    SelFatura_Futura_GeralCODIGO: TIntegerField;
    SelFatura_Futura_GeralDATA: TDateTimeField;
    SelFatura_Futura_GeralFECHADA: TIBStringField;
    SelFatura_Futura_GeralHISTORICO: TIBStringField;
    SelFatura_Futura_GeralPESSOA_FJ: TIntegerField;
    SelFatura_Futura_GeralUSUARIO: TIntegerField;
    SelFatura_Futura_GeralVENDEDOR: TIntegerField;
    SelFatura_Futura_GeralNUM_NF: TIntegerField;
    SelFatura_Futura_GeralNUM_CUPOM: TIntegerField;
    SelFatura_Futura_GeralNATUREZA: TIntegerField;
    SelFatura_Futura_GeralTIPO_VENDA: TIBStringField;
    SelFatura_Futura_GeralNOME_CONSUMIDOR: TIBStringField;
    SelFatura_Futura_GeralORCAMENTO: TIntegerField;
    SelFatura_Futura_GeralLOCAL: TIntegerField;
    SelFatura_Futura_GeralTOTAL: TIBBCDField;
    SelFatura_Futura_GeralDESC_ACRES: TIBBCDField;
    SelFatura_Futura_GeralOBSERVACAO: TIBStringField;
    SelFatura_Futura_GeralPESSOA_RAZAO: TIBStringField;
    SelFatura_Futura_GeralNOME_NATUREZA: TIBStringField;
    SelFatura_Futura_GeralENVIADA_CX: TIBStringField;
    SelFatura_Futura_GeralFORMA_PGTO: TIntegerField;
    SelFatura_Futura_GeralPROPRIEDADE: TIntegerField;
    SelFatura_Futura_GeralCONVENIADO: TIntegerField;
    SelFatura_Futura_GeralTIPO_DOCTO: TIBStringField;
    SelFatura_Futura_GeralLOCAL_COBRANCA: TIntegerField;
    SelFatura_Futura_GeralENTRADA: TIBBCDField;
    SelFatura_Futura_GeralDINHEIRO: TIBBCDField;
    SelFatura_Futura_GeralCHEQUE: TIBBCDField;
    SelFatura_Futura_GeralCARTAO: TIBBCDField;
    SelFatura_Futura_GeralTICKET: TIBBCDField;
    SelFatura_Futura_GeralVLRLIQUIDO: TIBBCDField;
    SelFatura_Futura_GeralVLR_PARC_LC: TIBBCDField;
    SelFatura_Futura_GeralTERCEIRO: TIntegerField;
    SelFatura_Futura_GeralCARGA: TIntegerField;
    SelFatura_Futura_GeralVOLUME: TIBBCDField;
    SelFatura_Futura_GeralPESO: TIBBCDField;
    SelFatura_Futura_GeralREQUISICAO: TIBStringField;
    SelFatura_Futura_GeralDESCRICAO: TBlobField;
    SelFatura_Futura_GeralNOME_FORMA: TIBStringField;
    SelFatura_Futura_GeralFATURA_FUTURA: TIBStringField;
    SelFatura_Futura_GeralNOME_VENDEDOR: TIBStringField;
    SelFatura_Futura_GeralCONTA_CAIXA: TIntegerField;
    SelFatura_Futura_GeralCANCELADA: TIBStringField;
    SelFatura_Futura_GeralBASE_ICM_SUBST: TIBBCDField;
    SelFatura_Futura_GeralVALOR_ICM_SUBST: TIBBCDField;
    SelFatura_Futura_GeralFRETE: TIBBCDField;
    SelFatura_Futura_GeralSEGURO: TIBBCDField;
    SelFatura_Futura_GeralDESPESAS: TIBBCDField;
    SelFatura_Futura_GeralIPI: TIBBCDField;
    SelFatura_Futura_GeralTOTAL_NOTA: TIBBCDField;
    SelFatura_Futura_GeralDATA_CAIXA: TDateField;
    SelFatura_Futura_GeralSELECIONADA: TIBStringField;
    SelFatura_Futura_GeralCPF_CGC: TIBStringField;
    SelFatura_Futura_GeralAVISTA: TIBBCDField;
    SelFatura_Futura_GeralAPRAZO: TIBBCDField;
    SelFatura_Futura_GeralJUROS: TIBBCDField;
    SelFatura_Futura_GeralTROCO: TIBBCDField;
    Movimentos_Geral_C: TIBQuery;
    Movimentos_Geral_CDOCUMENTO: TIBStringField;
    Movimentos_Geral_CHISTORICO: TIBStringField;
    Movimentos_Geral_CVALOR: TIBBCDField;
    Movimentos_Geral_CTIPO: TIBStringField;
    Movimentos_Geral_CNOME_CONTRAPARTIDA: TIBStringField;
    Movimentos_Geral_CCONTRA_PARTIDA: TIntegerField;
    Movimentos_Geral_D: TIBQuery;
    Movimentos_Geral_DDOCUMENTO: TIBStringField;
    Movimentos_Geral_DHISTORICO: TIBStringField;
    Movimentos_Geral_DVALOR: TIBBCDField;
    Movimentos_Geral_DTIPO: TIBStringField;
    Movimentos_Geral_DNOME_CONTRAPARTIDA: TIBStringField;
    Movimentos_Geral_DCONTRA_PARTIDA: TIntegerField;
    Ver_Baixa_Haver_Geral: TIBQuery;
    Ver_Baixa_Haver_GeralCNPJ: TIBStringField;
    Ver_Baixa_Haver_GeralCODIGO: TIntegerField;
    Ver_Baixa_Haver_GeralCONTA: TIntegerField;
    Ver_Baixa_Haver_GeralDATA: TDateTimeField;
    Ver_Baixa_Haver_GeralDOCUMENTO: TIBStringField;
    Ver_Baixa_Haver_GeralHAVER: TIntegerField;
    Ver_Baixa_Haver_GeralHISTORICO: TIBStringField;
    Ver_Baixa_Haver_GeralNOME: TIBStringField;
    Ver_Baixa_Haver_GeralPESSOA_FJ: TIntegerField;
    Ver_Baixa_Haver_GeralPLANILHA: TIntegerField;
    Ver_Baixa_Haver_GeralUSUARIO: TIntegerField;
    Ver_Baixa_Haver_GeralVALOR: TFloatField;
    Lista_Produtos_Caixa_Geral: TIBQuery;
    Lista_Produtos_Caixa_GeralTOTAL: TIBBCDField;
    Lista_Produtos_Caixa_GeralPRODUTO: TIBStringField;
    Lista_Produtos_Caixa_GeralQUANTIDADE_EXPOSTA: TIBBCDField;
    Lista_Produtos_Caixa_GeralQUANTIDADE: TIBBCDField;
    Lista_Produtos_Caixa_GeralDESCONTOS: TIBBCDField;
    Formas_Agrupadas_Geral: TIBQuery;
    Formas_Agrupadas_GeralVALOR_ORIGINAL: TIBBCDField;
    Formas_Agrupadas_GeralJUROS: TIBBCDField;
    Formas_Agrupadas_GeralTIPO_PAGTO: TIBStringField;
    Formas_Agrupadas_GeralTotal: TFloatField;
    Ds_Formas_Agrupadas_Geral: TDataSource;
    Soma_Vendas_Forma_Geral: TIBQuery;
    Soma_Vendas_Forma_GeralVALOR_ORIGINAL: TIBBCDField;
    Soma_Vendas_Forma_GeralJUROS: TIBBCDField;
    Soma_Vendas_Forma_GeralTIPO_PAGTO: TIBStringField;
    Soma_Vendas_Forma_GeralTotal: TFloatField;
    Caixa_Geral: TIBDataSet;
    Caixa_GeralCNPJ: TIBStringField;
    Caixa_GeralAFERICAO: TFloatField;
    Caixa_GeralBOMBAS: TFloatField;
    Caixa_GeralCARTAO: TFloatField;
    Caixa_GeralDATA: TDateTimeField;
    Caixa_GeralDINHEIRO: TFloatField;
    Caixa_GeralFECHADO: TIBStringField;
    Caixa_GeralNOTAS: TFloatField;
    Caixa_GeralPRODUTOS: TFloatField;
    Caixa_GeralRECEBIMENTOS: TFloatField;
    Caixa_GeralSANGRIA: TFloatField;
    Caixa_GeralTICKET: TFloatField;
    Caixa_GeralTROCO: TFloatField;
    Caixa_GeralCHEQUE: TFloatField;
    Caixa_GeralSALDO_ANTERIOR: TFloatField;
    Caixa_GeralSALDO: TFloatField;
    Caixa_GeralMOEDAS: TFloatField;
    Caixa_GeralSAIDAS: TFloatField;
    Caixa_GeralCHEQUE_PRAZO: TFloatField;
    Caixa_GeralOUTRAS_ENTRADAS: TFloatField;
    Caixa_GeralOUTRAS_SAIDAS: TFloatField;
    Caixa_GeralENTRADAS: TFloatField;
    Caixa_GeralResultado: TFloatField;
    Caixa_GeralTROCO_INICIAL: TFloatField;
    Caixa_GeralHAVER: TFloatField;
    Caixa_GeralBAIXA_HAVER: TFloatField;
    Caixa_GeralPLANILHA: TIntegerField;
    Caixa_GeralDESCONTOS: TFloatField;
    Caixa_GeralJUROS: TFloatField;
    Caixa_GeralACRESCIMOS: TFloatField;
    Caixa_GeralTROCO_VENDAS: TFloatField;
    Caixa_GeralJUROS_RECEBER: TFloatField;
    Caixa_GeralDESCONTOS_RECEBER: TFloatField;
    SALDO_CAIXA_GERAL: TIBStoredProc;
    VER_FATURA_CAIXADATA: TDateTimeField;
    VER_FATURA_GERALDATA: TDateTimeField;
    SOMA_VALORES_CAIXA: TIBQuery;
    SOMA_VALORES_CAIXADINHEIRO: TIBBCDField;
    SOMA_VALORES_CAIXATICKET: TIBBCDField;
    SOMA_VALORES_CAIXACHEQUE: TIBBCDField;
    SOMA_VALORES_CAIXACARTAO: TIBBCDField;
    SOMA_VALORES_CAIXAMOEDAS: TIBBCDField;
    SOMA_VALORES_CAIXACHEQUE_PRAZO: TIBBCDField;
    VER_CAIXA_GERAL: TIBQuery;
    VER_CAIXA_GERALCNPJ: TIBStringField;
    VER_CAIXA_GERALDATA: TDateTimeField;
    VER_CAIXA_GERALDINHEIRO: TFloatField;
    VER_CAIXA_GERALTICKET: TFloatField;
    VER_CAIXA_GERALCHEQUE: TFloatField;
    VER_CAIXA_GERALCHEQUE_PRAZO: TFloatField;
    VER_CAIXA_GERALSALDO_ANTERIOR: TFloatField;
    VER_CAIXA_GERALSALDO: TFloatField;
    VER_CAIXA_GERALFECHADO: TIBStringField;
    VER_CAIXA_GERALTROCO: TFloatField;
    VER_CAIXA_GERALSANGRIA: TFloatField;
    VER_CAIXA_GERALBOMBAS: TFloatField;
    VER_CAIXA_GERALNOTAS: TFloatField;
    VER_CAIXA_GERALPRODUTOS: TFloatField;
    VER_CAIXA_GERALCARTAO: TFloatField;
    VER_CAIXA_GERALRECEBIMENTOS: TFloatField;
    VER_CAIXA_GERALAFERICAO: TFloatField;
    VER_CAIXA_GERALMOEDAS: TFloatField;
    VER_CAIXA_GERALOUTRAS_ENTRADAS: TFloatField;
    VER_CAIXA_GERALOUTRAS_SAIDAS: TFloatField;
    VER_CAIXA_GERALTROCO_INICIAL: TFloatField;
    VER_CAIXA_GERALHAVER: TFloatField;
    VER_CAIXA_GERALBAIXA_HAVER: TFloatField;
    VER_CAIXA_GERALPLANILHA: TIntegerField;
    VER_CAIXA_GERALDESCONTOS: TFloatField;
    VER_CAIXA_GERALJUROS: TFloatField;
    VER_CAIXA_GERALACRESCIMOS: TFloatField;
    VER_CAIXA_GERALTROCO_VENDAS: TFloatField;
    VER_CAIXA_GERALJUROS_RECEBER: TFloatField;
    VER_CAIXA_GERALDESCONTOS_RECEBER: TFloatField;
    VER_CAIXA_GERALSAIDAS: TFloatField;
    VER_CAIXA_GERALENTRADAS: TFloatField;
    VER_CAIXA_GERALRESULTADO: TFloatField;
    Ver_Caixa_Vendedor: TIBQuery;
    Vendedor_Caixa_Geral: TIBDataSet;
    Vendedor_Caixa_GeralCARTAO: TFloatField;
    Vendedor_Caixa_GeralCHEQUE: TFloatField;
    Vendedor_Caixa_GeralDINHEIRO: TFloatField;
    Vendedor_Caixa_GeralPRAZO: TFloatField;
    Vendedor_Caixa_GeralTICKET: TFloatField;
    Vendedor_Caixa_GeralVENDEDOR: TIntegerField;
    Vendedor_Caixa_GeralNOME: TIBStringField;
    Vendedor_Caixa_GeralCNPJ: TIBStringField;
    Vendedor_Caixa_GeralDATA: TDateTimeField;
    Ver_Caixa_VendedorTOTAL: TFloatField;
    Caixa_FrentistaDESCONTOS_PRODUTOS_BOMBA: TFloatField;
    VER_FATURA_GERALTOTAL: TFloatField;
    Caixa_GeralPAGAMENTOS: TFloatField;
    VER_CAIXA_GERALPAGAMENTOS: TFloatField;
    Ver_CaixaDESCONTOS_PRODUTOS_BOMBA: TFloatField;
    Caixa_GeralSALDO_CAIXAS_FRENTISTA: TFloatField;
    SALDO_CAIXAS_FRENTISTAS: TIBStoredProc;
    SOMA_SANGRIAS: TIBStoredProc;
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
    VER_FIN_FATURAS_PARCIAL_GERALJUROS: TIBBCDField;
    VER_FIN_FATURAS_PARCIAL_GERALDESCONTOS: TIBBCDField;
    VER_FIN_FATURAS_PARCIAL_CAIXAORIGEM: TIBStringField;
    VER_FIN_FATURAS_PARCIAL_GERALORIGEM: TIBStringField;
    VER_FIN_FATURAS_PARCIAL_CAIXAJUROS: TIBBCDField;
    VER_FIN_FATURAS_PARCIAL_CAIXADESCONTOS: TIBBCDField;
    VER_FATURA_CAIXAORIGEM: TIBStringField;
    VER_FATURA_GERALORIGEM: TIBStringField;
    VER_CAIXA_GERALSALDO_CAIXAS_FRENTISTA: TFloatField;
    Caixa_GeralDESCONTOS_PRODUTOS_BOMBA: TFloatField;
    VER_CAIXA_GERALDESCONTOS_PRODUTOS_BOMBA: TFloatField;
    CHEQUES_GERAL: TIBQuery;
    CHEQUES_GERALBANCO: TIBStringField;
    CHEQUES_GERALCONTA: TIBStringField;
    CHEQUES_GERALCHEQUE: TIBStringField;
    CHEQUES_GERALVENDA: TIntegerField;
    CHEQUES_GERALEMISSAO: TDateTimeField;
    CHEQUES_GERALPRE_DATE: TDateTimeField;
    CHEQUES_GERALVALOR: TIBBCDField;
    CHEQUES_GERALJUROS: TIBBCDField;
    CHEQUES_GERALCONCILIADO: TIBStringField;
    CHEQUES_GERALPESSOA_FJ: TIntegerField;
    CHEQUES_GERALHISTORICO: TIBStringField;
    CHEQUES_GERALAGENCIA: TIBStringField;
    CHEQUES_GERALNOME: TIBStringField;
    CHEQUES_GERALFONE: TIBStringField;
    CHEQUES_GERALFAX: TIBStringField;
    CHEQUES_GERALCELULAR: TIBStringField;
    CHEQUES_GERALCPF_CGC: TIBStringField;
    CHEQUES_GERALDATA_CONCILIACAO: TDateTimeField;
    CHEQUES_GERALMOEDA1: TIBBCDField;
    CHEQUES_GERALMOEDA2: TIBBCDField;
    CHEQUES_GERALTIPO: TIBStringField;
    CHEQUES_GERALDATA_ACERTO: TDateTimeField;
    CHEQUES_GERALDATA_DEVOLUCAO: TDateTimeField;
    CHEQUES_GERALCODIGO_MOTIVO_DEVOLUCAO: TIntegerField;
    CHEQUES_GERALVEZES_DEVOLUCAO: TIntegerField;
    CHEQUES_GERALPLANILHA: TIntegerField;
    CHEQUES_GERALDIGITO_AGENCIA: TIBStringField;
    CHEQUES_GERALDIGITO_CHEQUE: TIBStringField;
    CHEQUES_GERALDATA_CAIXA: TDateTimeField;
    CHEQUES_GERALTURNO: TIntegerField;
    CHEQUES_GERALUSUARIO: TIntegerField;
    SelFatura_Futura_GeralAVISTAG: TFloatField;
    SelFatura_Futura_GeralAPRAZOG: TFloatField;
    SelFatura_Futura_GeralLIQUIDO: TFloatField;
    SelFatura_Futura_GeralMOV_CAIXA: TIBStringField;
    Exec_Ver_Caixa_Vendedor: TIBStoredProc;
    Ver_Caixa_VendedorVENDEDOR: TIntegerField;
    Ver_Caixa_VendedorNOME: TIBStringField;
    Ver_Caixa_VendedorDINHEIRO: TFloatField;
    Ver_Caixa_VendedorCHEQUE: TFloatField;
    Ver_Caixa_VendedorCARTAO: TFloatField;
    Ver_Caixa_VendedorTICKET: TFloatField;
    Ver_Caixa_VendedorPRAZO: TFloatField;
    Lista_FormasSEQUENCIA: TIntegerField;
    Lista_Formas_GERAL: TIBQuery;
    Lista_Formas_GERALFORMA_PGTO: TIntegerField;
    Lista_Formas_GERALSEQUENCIA: TIntegerField;
    Lista_Formas_GERALVALOR_ORIGINAL: TIBBCDField;
    Lista_Formas_GERALJUROS: TIBBCDField;
    Lista_Formas_GERALTIPO_PAGTO: TIBStringField;
    Lista_Formas_GERALNOME_FORMA: TIBStringField;
    Lista_Formas_GERALBANCO: TIBStringField;
    Lista_Formas_GERALCONTA: TIBStringField;
    Lista_Formas_GERALDV_CONTA: TIBStringField;
    Lista_Formas_GERALAGENCIA: TIBStringField;
    Lista_Formas_GERALDV_AGENCIA: TIBStringField;
    Lista_Formas_GERALCHEQUE: TIBStringField;
    Lista_Formas_GERALDV_CHEQUE: TIBStringField;
    Lista_Formas_GERALAVISTA: TIBStringField;
    CartaoCNPJ: TIBStringField;
    CartaoCODIGO: TIntegerField;
    CartaoDATA: TDateTimeField;
    CartaoUSUARIO: TIntegerField;
    CartaoCONTA: TIntegerField;
    CartaoCPF_CNPJ: TIBStringField;
    CartaoCLIENTE: TIBStringField;
    CartaoREEMBOLSO: TDateTimeField;
    CartaoADMINISTRADORA: TIntegerField;
    CartaoVALOR: TFloatField;
    CartaoNUM_CARTAO: TIBStringField;
    CartaoNUM_BANCO: TIBStringField;
    CartaoNUM_CONTA: TIBStringField;
    CartaoCONCILIADO: TIBStringField;
    CartaoTIPO_DOC: TIBStringField;
    CartaoDOCUMENTO: TIBStringField;
    CartaoVENDA: TIntegerField;
    CartaoPESSOA_FJ: TIntegerField;
    CartaoTIPO: TIBStringField;
    CartaoNUM_PARCELAS: TIntegerField;
    CartaoTAXA: TFloatField;
    CartaoTURNO: TIntegerField;
    CartaoDATA_CONCILIACAO: TDateTimeField;
    CartaoPROCESSADO: TIBStringField;
    CartaoCTR_CODIGO: TIntegerField;
    CartaoTROCA: TIntegerField;
    Cartao2: TIBDataSet;
    Cartao2CNPJ: TIBStringField;
    Cartao2CODIGO: TIntegerField;
    Cartao2DATA: TDateTimeField;
    Cartao2USUARIO: TIntegerField;
    Cartao2CONTA: TIntegerField;
    Cartao2CPF_CNPJ: TIBStringField;
    Cartao2CLIENTE: TIBStringField;
    Cartao2REEMBOLSO: TDateTimeField;
    Cartao2ADMINISTRADORA: TIntegerField;
    Cartao2VALOR: TFloatField;
    Cartao2NUM_CARTAO: TIBStringField;
    Cartao2NUM_BANCO: TIBStringField;
    Cartao2NUM_CONTA: TIBStringField;
    Cartao2CONCILIADO: TIBStringField;
    Cartao2TIPO_DOC: TIBStringField;
    Cartao2DOCUMENTO: TIBStringField;
    Cartao2VENDA: TIntegerField;
    Cartao2PESSOA_FJ: TIntegerField;
    Cartao2TIPO: TIBStringField;
    Cartao2NUM_PARCELAS: TIntegerField;
    Cartao2TAXA: TFloatField;
    Cartao2TURNO: TIntegerField;
    Cartao2DATA_CONCILIACAO: TDateTimeField;
    Cartao2PROCESSADO: TIBStringField;
    Cartao2CTR_CODIGO: TIntegerField;
    Cartao2TROCA: TIntegerField;
    Lista_Produtos_CaixaNOME: TIBStringField;
    Lista_Produtos_Caixa_GeralNOME: TIBStringField;
    procedure Caixa_FrentistaAfterClose(DataSet: TDataSet);
    procedure Caixa_FrentistaAfterInsert(DataSet: TDataSet);
    procedure Caixa_FrentistaNewRecord(DataSet: TDataSet);

    procedure ProdutosNewRecord(DataSet: TDataSet);
    procedure ProdutosPRODUTOValidate(Sender: TField);


    procedure Caixa_FrentistaBeforeOpen(DataSet: TDataSet);


    procedure ProdutosAfterPost(DataSet: TDataSet);
    procedure ProdutosQUANTIDADEValidate(Sender: TField);
    procedure ProdutosVALOR_UNITValidate(Sender: TField);
    procedure CartaoAfterInsert(DataSet: TDataSet);
    procedure CartaoBeforePost(DataSet: TDataSet);
    procedure CartaoNewRecord(DataSet: TDataSet);
    procedure CartaoADMINISTRADORAValidate(Sender: TField);
    procedure CartaoPESSOA_FJValidate(Sender: TField);
    procedure CartaoTIPOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CartaoTIPOSetText(Sender: TField; const Text: String);
    procedure CartaoTIPOValidate(Sender: TField);
    procedure CartaoAfterPost(DataSet: TDataSet);
    procedure CartaoAfterDelete(DataSet: TDataSet);
    procedure SelFatura_FuturaBeforeOpen(DataSet: TDataSet);
    procedure Baixas_ReceberBeforeOpen(DataSet: TDataSet);
    procedure Baixas_ReceberCalcFields(DataSet: TDataSet);
    procedure Baixas_PagarBeforeOpen(DataSet: TDataSet);
    procedure Baixas_PagarCalcFields(DataSet: TDataSet);
    procedure Formas_AgrupadasCalcFields(DataSet: TDataSet);
    procedure Soma_Vendas_FormaCalcFields(DataSet: TDataSet);
    procedure Lista_Produtos_CaixaBeforeOpen(DataSet: TDataSet);
    procedure Caixa_FrentistaCalcFields(DataSet: TDataSet);
    procedure Movimentos_CBeforeOpen(DataSet: TDataSet);
    procedure MovimentosBeforeOpen(DataSet: TDataSet);
    procedure MovimentosCONTRA_PARTIDAValidate(Sender: TField);
    procedure MovimentosNewRecord(DataSet: TDataSet);

    procedure Ver_Vendas_PrazoBeforeOpen(DataSet: TDataSet);
    procedure Caixa_FrentistaBeforePost(DataSet: TDataSet);
    procedure Ver_CartaoBeforeOpen(DataSet: TDataSet);
    procedure MovimentosPESSOA_FJValidate(Sender: TField);
    procedure VER_FIN_FATURAS_PARCIAL_CAIXABeforeOpen(DataSet: TDataSet);
    procedure VER_FATURA_CAIXABeforeOpen(DataSet: TDataSet);
    procedure Baixas_Notas_FaturasCalcFields(DataSet: TDataSet);
    procedure Baixas_Notas_FaturasBeforeOpen(DataSet: TDataSet);


    procedure Ver_CaixaCalcFields(DataSet: TDataSet);
    procedure Soma_Vendas_Forma_GeralCalcFields(DataSet: TDataSet);
    procedure Caixa_GeralCalcFields(DataSet: TDataSet);
    procedure Caixa_GeralNewRecord(DataSet: TDataSet);
    procedure VER_CAIXA_GERALCalcFields(DataSet: TDataSet);
    procedure Baixas_Receber_GeralCalcFields(DataSet: TDataSet);
    procedure Baixas_Pagar_GeralCalcFields(DataSet: TDataSet);
    procedure Vendedor_Caixa_GeralBeforeInsert(DataSet: TDataSet);
    procedure Ver_Caixa_VendedorCalcFields(DataSet: TDataSet);
    procedure VER_FATURA_GERALCalcFields(DataSet: TDataSet);
    procedure SALDO_CAIXAS_FRENTISTASBeforeOpen(DataSet: TDataSet);

    procedure Baixas_Pagar_GeralBeforeOpen(DataSet: TDataSet);
    procedure SelFatura_Futura_GeralCalcFields(DataSet: TDataSet);
    procedure Ver_Caixa_VendedorBeforeOpen(DataSet: TDataSet);
    procedure Formas_AgrupadasBeforeOpen(DataSet: TDataSet);
    procedure Formas_Agrupadas_GeralBeforeOpen(DataSet: TDataSet);
    procedure Lista_Formas_GERALBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }

    //SALDO DO CAIXA
    Function Proc_Saldo_Caixa  ( USUARIO: Integer; Conta: Integer; Data: TDateTime; Turno: Integer ):Real;

    //SALDO DO CAIXA
    Function Proc_Saldo_Caixa_Geral  (Data: TDateTime ):Real;

    //Troco Inicial do Caixa
    Function Proc_Troco_Caixa  ( USUARIO: Integer; Conta: Integer; Data: TDateTime; Turno: Integer ):Real;
  published
    procedure SetaParametros(Sender: TDataSet);
  end;

var
  DMCaixaFrentista: TDMCaixaFrentista;

implementation

uses Application_DM,
     Funcoes,
     Cartao_Caixa_Form,
     Financeiro_Dm,
     Cheque_Financeiro_Form;

{$R *.DFM}


Function TDMCaixaFrentista.Proc_Saldo_Caixa  ( USUARIO: Integer; Conta: Integer; Data: TDateTime; Turno: Integer ):Real;
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

  IF NOT Saldo_Caixa.Params[4].IsNull
  THEN BEGIN
       Result := Saldo_Caixa.Params[4].Value;
  end
  ELSE BEGIN
       Result := 0;
  END;

  Saldo_Caixa.Close ;

end;

Function TDMCaixaFrentista.Proc_Saldo_Caixa_Geral  ( Data: TDateTime ):Real;
Begin
    //
    Saldo_Caixa_Geral.Params.Clear ;

    Saldo_Caixa_Geral.Params.CreateParam ( FtString , 'CNPJ'    , PtInput  );
    Saldo_Caixa_Geral.Params.CreateParam ( FtDate   , 'DATA'    , PtInput  );
    Saldo_Caixa_Geral.Params.CreateParam ( FtFloat  , 'SALDO'   , PtOutPut );

    Saldo_Caixa_Geral.ParamByName('CNPJ').asString     := DmApp.Cnpj ;
    Saldo_Caixa_Geral.ParamByName('DATA' ).asDate      := Data       ;

    Saldo_Caixa_Geral.ExecProc;

    IF NOT Saldo_Caixa_Geral.Params[2].IsNull
    THEN BEGIN
         Result := Saldo_Caixa_Geral.Params[2].Value;
    end
    ELSE BEGIN
         Result := 0;
    END;

    Saldo_Caixa_Geral.Close ;
end;

Function TDMCaixaFrentista.Proc_Troco_Caixa  ( USUARIO: Integer; Conta: Integer; Data: TDateTime; Turno: Integer ):Real;
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

  IF NOT Troco_Inicial.Parambyname('SALDO').IsNull
  THEN BEGIN
       Result := Troco_Inicial.Params[5].Value;
  end
  ELSE BEGIN
       Result := 0;
  END;

  Troco_Inicial.Close ;
end;

procedure TDMCaixaFrentista.Caixa_FrentistaAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (Dataset as TIBQuery).UnPrepare;
  If (DataSet is TIBDataSet) Then
     (Dataset as TIBDataset).UnPrepare;
end;

procedure TDMCaixaFrentista.Caixa_FrentistaAfterInsert(DataSet: TDataSet);
begin
  //
  Caixa_FrentistaCNPJ.Value       := DMApp.Cnpj;
  Caixa_FrentistaPLANILHA.VALUE   := DMApp.GerarCodigo('PLANILHA', 0) + 1;
end;

procedure TDMCaixaFrentista.Caixa_FrentistaNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
     For I := 0 to Caixa_Frentista.FieldCount - 1 do
     begin
          if ((Caixa_Frentista.Fields.FIELDS[i].DataType = FtFloat) or (Caixa_Frentista.Fields.FIELDS[i].DataType = FtBcd))
          then Begin
               Caixa_Frentista.Fields[i].Value := 0;
          end;
     end;
end;

procedure TDMCaixaFrentista.ProdutosNewRecord(DataSet: TDataSet);
begin
     ProdutosCNPJ.Value     := Caixa_FrentistaCNPJ.Value   ;
     ProdutosCONTA.Value    := Caixa_FrentistaCONTA.Value  ;
     ProdutosDATA.Value     := Caixa_FrentistaDATA.Value   ;
     ProdutosUSUARIO.Value  := Caixa_FrentistaUSUARIO.Value;
end;

procedure TDMCaixaFrentista.ProdutosPRODUTOValidate(Sender: TField);
begin
  //
  If Sender.IsNull Then
     Exit ;
  //
  If trim(Sender.Value) = '' Then
     Exit ;

  //BUSCA OS VALORES DO PRODUTO
  Valida_Produto.Close ;
//  Valida_Produto.Params.Clear ;

  //PARAMETROS DE ENTRADA
{  Valida_Produto.Params.CreateParam ( FtString , 'CNPJ'         , PtInput );
  Valida_Produto.Params.CreateParam ( FtString , 'PRODUTO'      , PtInput );

  Valida_Produto.Params.CreateParam ( FtFloat  , 'PRC_REPOS'    , PtOutput );
  Valida_Produto.Params.CreateParam ( FtFloat  , 'PRC_VENDA'    , PtOutput );
  Valida_Produto.Params.CreateParam ( FtFloat  , 'VOLUME'       , PtOutput );
  Valida_Produto.Params.CreateParam ( FtFloat  , 'PESO_LIQ'     , PtOutput );
  Valida_Produto.Params.CreateParam ( FtString , 'UNIDADE'      , PtOutput );
  Valida_Produto.Params.CreateParam ( FtString , 'NOME'         , PtOutput );
  Valida_Produto.Params.CreateParam ( FtString , 'ATIVO'        , PtOutput );
  Valida_Produto.Params.CreateParam ( FtString , 'ALIQUOTA_ECF' , PtOutput );
  Valida_Produto.Params.CreateParam ( FtFloat  , 'QTDADE_1'     , PtOutput );
  Valida_Produto.Params.CreateParam ( FtInteger, 'SUBUNIDADE'   , PtOutput );
  Valida_Produto.Params.CreateParam ( FtInteger, 'ORIGEM'       , PtOutput );
  Valida_Produto.Params.CreateParam ( FtInteger, 'CTE'          , PtOutput );
  Valida_Produto.Params.CreateParam ( FtInteger, 'CTIE'         , PtOutput );
  Valida_Produto.Params.CreateParam ( FtInteger, 'REDUCAO'      , PtOutput );
  Valida_Produto.Params.CreateParam ( FtInteger, 'IPI'          , PtOutput );
  Valida_Produto.Params.CreateParam ( FtString , 'VENDE_FRACIONADO', PtOutput );
  Valida_Produto.Params.CreateParam ( FtFloat  , 'MARGEM_BRUTA' , PtOutput );
}
  Valida_Produto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
  Valida_Produto.ParamByName ('PRODUTO').AsString     := Sender.Value ;

  Valida_Produto.ExecProc ;

  If Valida_Produto.ParamByName('NOME').IsNull Then
     Begin
//       If FrmProdutosCaixa <> Nil Then
//          FrmProdutosCaixa.LocProd := True ;
       Exit;
     End
  Else
     Begin
       //
       ProdutosNOME.Value        := Valida_Produto.paramByName('NOME'        ).AsString ;
       ProdutosVALOR_UNIT.Value  := Valida_Produto.paramByName('PRC_VENDA'   ).AsFloat  ;

       If Not Valida_Produto.paramByName('UNIDADE').IsNull
       then begin
            ProdutosUNIDADE.Value       := Valida_Produto.paramByName('UNIDADE'     ).AsString ;
            ProdutosSUBUNIDADE.Value    := Valida_Produto.paramByName('SUBUNIDADE'  ).AsInteger;
       end
       Else begin
            ProdutosUNIDADE.Value := 'UN';
            ProdutosSUBUNIDADE.Value    := 1;
       end;

       If Not Valida_Produto.paramByName('SUBUNIDADE').IsNull
       then begin
            ProdutosSUBUNIDADE.Value    := Valida_Produto.paramByName('SUBUNIDADE'  ).AsInteger;
       end
       Else begin
            ProdutosSUBUNIDADE.Value    := 1;
       end;

       //
       If Not Valida_Produto.paramByName('ATIVO').IsNull Then
          Begin
            If Valida_Produto.paramByName('ATIVO').AsString = 'N' Then
               Begin
                 MessageDlg('Este Produto Não Esta Ativo, Verifique', mtError, [mbOK], 0);
                 Abort;
               End;
          End;
     End;

  //Verifica se Ele Já Foi Faturado Nesta Nota
  Geral.Close ;
  Geral.Sql.Clear ;

  Geral.Params.CreateParam ( FtString , 'CNPJ'   , PtInput );
  Geral.Params.CreateParam ( FtDate   , 'DATA'   , PtInput );
  Geral.Params.CreateParam ( FtInteger, 'USUARIO', PtInput );
  Geral.Params.CreateParam ( FtInteger, 'CONTA'  , PtInput );
  Geral.Params.CreateParam ( FtInteger, 'TURNO'  , PtInput );
  Geral.Params.CreateParam ( FtString , 'PRODUTO', PtInput );

  Geral.Sql.Add (' SELECT CNPJ FROM PST_PRODUTOCAIXA                            ');
  Geral.Sql.Add (' WHERE CNPJ = :CNPJ AND DATA = :DATA AND USUARIO =:USUARIO    ');
  Geral.Sql.Add (' AND CONTA = :CONTA AND PRODUTO = :PRODUTO AND TURNO = :TURNO ');

  Geral.ParamByName ('CNPJ').AsString     := ProdutosCNPJ.Value      ;
  Geral.ParamByName ('DATA').AsDate       := ProdutosDATA.Value      ;
  Geral.ParamByName ('USUARIO').AsInteger := ProdutosUSUARIO.Value   ;
  Geral.ParamByName ('CONTA').AsInteger   := ProdutosCONTA.Value     ;
  Geral.ParamByName ('TURNO').AsInteger   := ProdutosCONTA.Value     ;
  Geral.ParamByName ('PRODUTO').AsString  := ProdutosPRODUTO.Value   ;

  Geral.Prepare ;
  Geral.Open ;

  If Not Geral.Fields[0].isNull
  Then Begin
       MessageDlg('Este Produto Já Foi Faturado Nesta Nota, Verifique!', mtError, [mbOK], 0);
       Abort;
  End;
end;

procedure TDMCaixaFrentista.Caixa_FrentistaBeforeOpen(DataSet: TDataSet);
begin
     If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString     := DMApp.Cnpj         ;
       (DataSet as TIBQuery).ParamByName('DATA').asDate       := DMApp.DataCaixa    ;
       (DataSet as TIBQuery).ParamByName('USUARIO').asInteger := DmApp.UsuarioCaixa ;
       (DataSet as TIBQuery).ParamByName('CONTA'  ).asInteger := DmApp.ContaCaixa   ;
       (DataSet as TIBQuery).ParamByName('TURNO').asInteger   := DmApp.TurnoCaixa   ;
       (Dataset as TIBQuery).Prepare;
     End;

     If (DataSet is TIbDataSet) Then
     Begin
       (DataSet as TIbDataSet).ParamByName('CNPJ').asString     := DMApp.Cnpj         ;
       (DataSet as TIbDataSet).ParamByName('DATA').asDate       := DMApp.DataCaixa    ;
       (DataSet as TIbDataSet).ParamByName('USUARIO').asInteger := DmApp.UsuarioCaixa ;
       (DataSet as TIbDataSet).ParamByName('CONTA'  ).asInteger := DmApp.ContaCaixa   ;
       (DataSet as TIbDataSet).ParamByName('TURNO').asInteger   := DmApp.TurnoCaixa   ;
       (Dataset as TIbDataSet).Prepare;
     End;

end;



procedure TDMCaixaFrentista.ProdutosAfterPost(DataSet: TDataSet);
begin
     DataSet.Append ;
end;

procedure TDMCaixaFrentista.ProdutosQUANTIDADEValidate(Sender: TField);
begin
     ProdutosVALOR_TOTAL.Value := arredonda(ProdutosQUANTIDADE.Value * ProdutosVALOR_UNIT.Value, 2);
end;

procedure TDMCaixaFrentista.ProdutosVALOR_UNITValidate(Sender: TField);
begin
     ProdutosVALOR_TOTAL.Value := arredonda(ProdutosQUANTIDADE.Value * ProdutosVALOR_UNIT.Value, 2);
end;

procedure TDMCaixaFrentista.CartaoAfterInsert(DataSet: TDataSet);
begin
     DataSet.Fields[0].Value := DMApp.Cnpj;
     Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('CARTAO'), 0) + 1;
     CartaoUSUARIO.Value     := DmaPP.UsuarioCaixa ;
     CartaoCONTA.Value       := DmaPP.ContaCaixa   ;
     CartaoNUM_PARCELAS.Value:= 1;
end;

procedure TDMCaixaFrentista.CartaoBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert Then
        Dataset.Fields[1].Value := DMApp.GerarCodigo(UpperCase('CARTAO'), 1);
end;

procedure TDMCaixaFrentista.CartaoNewRecord(DataSet: TDataSet);
begin
     CartaoVALOR.Value     := 0                  ;
     CartaoCONCILIADO.Value:= 'N'                ;
     CartaoDATA.Value      := DmaPP.DataCaixa    ;
     CartaoTURNO.Value     := DmApp.TurnoCaixa   ;
end;

procedure TDMCaixaFrentista.CartaoADMINISTRADORAValidate(Sender: TField);
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

     If Not Geral.Fields[1].isNull
     then Begin
          CartaoTAXA.Value := Geral.Fields[1].Value ;
     END;
end;

procedure TDMCaixaFrentista.CartaoPESSOA_FJValidate(Sender: TField);
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
          CartaoCPF_CNPJ.Value :=    Valida_ClienteCPF_CNPJ.Value ;
     end ;

     Valida_Cliente.Close ;
end;

procedure TDMCaixaFrentista.CartaoTIPOGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
     If Sender.Value = 'Deb' Then
        Text := 'Debito';
     If Sender.Value = 'Cre' Then
        Text := 'Credito';
     If Sender.Value = 'Par' Then
        Text := 'Parcelado';
end;

procedure TDMCaixaFrentista.CartaoTIPOSetText(Sender: TField; const Text: String);
begin
     If Text = 'Debito' Then
     Sender.Value := 'Deb';
     If Text = 'Credito' Then
     Sender.Value := 'Cre';
     If Text = 'Parcelado' Then
     Sender.Value := 'Par';
end;

procedure TDMCaixaFrentista.CartaoTIPOValidate(Sender: TField);
begin
     If FrmCartao_Caixa <> Nil
     then begin
          If Sender.Value = 'Par'
          then begin
               FrmCartao_Caixa.EdParcelas.Enabled := true ;
               FrmCartao_Caixa.EdParcelas.SetFocus ;
          end
          else begin
               FrmCartao_Caixa.EdParcelas.Enabled := False ;
          end;

          If Sender.Value = 'Deb'
          then begin
               CartaoREEMBOLSO.Value := CartaoDATA.Value + 2;
          end
          else begin
               If Not CartaoADMINISTRADORA.IsNull
               Then begin
                    Geral.Close ;
                    Geral.Sql.Clear ;

                    Geral.Params.CreateParam ( FtString , 'E', PtInput );
                    Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

                    Geral.Sql.Add (' Select DIASREEMBOLSO, TAXA From FIN_ADMINISTRADORA Where Codigo = :C and CNPJ = :E ');

                    Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
                    Geral.ParamByName ('C').AsInteger := CartaoADMINISTRADORA.Value ;

                    Geral.Prepare ;

                    Geral.Open ;

                    If Not Geral.Fields[0].isNull
                    then Begin
                         CartaoREEMBOLSO.Value := CartaoDATA.Value + Geral.Fields[0].Value ;
                    END;
               end;
          end;
     end;
end;

procedure TDMCaixaFrentista.CartaoAfterPost(DataSet: TDataSet);
Var
   Aux: Real;
begin
     If FrmCartao_Caixa <> Nil
     then begin
          Aux := 0;

          Cartao.DisableControls ;

          Cartao.First ;

          While Not Cartao.Eof do
          begin
               Aux := Aux + Cartaovalor.value ;
               Cartao.Next;
          end;

          Cartao.EnableControls ;

          FrmCartao_Caixa.EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);

          FrmCartao_Caixa.Acumulado := Aux ;
     end;
end;

procedure TDMCaixaFrentista.CartaoAfterDelete(DataSet: TDataSet);
Var
   Aux: Real;
begin
     If FrmCartao_Caixa <> Nil
     then begin
          Aux := 0;

          Cartao.DisableControls ;

          Cartao.First ;

          While Not Cartao.Eof do
          begin
               Aux := Aux + Cartaovalor.value ;
               Cartao.Next;
          end;

          Cartao.EnableControls ;

          FrmCartao_Caixa.EdDesdobrado.text := FormatFloat ('###,###,##0.00', Aux);

          FrmCartao_Caixa.Acumulado := Aux ;
     end;
end;

procedure TDMCaixaFrentista.SelFatura_FuturaBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ'   ).asString    := DMApp.Cnpj         ;
       (DataSet as TIBQuery).ParamByName('D'      ).asDate      := DMApp.DataCaixa    ;
       (DataSet as TIBQuery).ParamByName('CONTA'  ).asInteger   := DmApp.ContaCaixa   ;
       (DataSet as TIBQuery).ParamByName('USR'    ).asInteger   := DmApp.UsuarioCaixa ;
       (DataSet as TIBQuery).ParamByName('TURNO'  ).asInteger   := DmApp.TurnoCaixa   ;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).Params.ByName('CNPJ').asString     := DMApp.Cnpj         ;
       (DataSet as TIBDataSet).Params.ByName('D'   ).asDate       := DMApp.DataCaixa    ;
       (DataSet as TIBDataSet).Params.ByName('CONTA'  ).asInteger := DmApp.ContaCaixa   ;
       (DataSet as TIBDataSet).Params.ByName('USR' ).asInteger    := DmApp.UsuarioCaixa ;
       (DataSet as TIBDataSet).Params.ByName('TURNO'  ).asInteger := DmApp.TurnoCaixa   ;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TDMCaixaFrentista.Baixas_ReceberBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ'    ).asString  := DMApp.Cnpj         ;
     (DataSet as TIBQuery).ParamByName('DATA'    ).asDate    := DMApp.DataCaixa    ;
     (DataSet as TIBQuery).ParamByName('USUARIO' ).asInteger := DmApp.UsuarioCaixa ;
     (DataSet as TIBQuery).ParamByName('TURNO'   ).asInteger := DmApp.TurnoCaixa   ;
     (DataSet as TIBQuery).ParamByName('CONTA'   ).asInteger := DmApp.ContaCaixa   ;
     (Dataset as TIBQuery).Prepare;
end;

procedure TDMCaixaFrentista.Baixas_ReceberCalcFields(DataSet: TDataSet);
begin
     Baixas_ReceberTotal.Value := Baixas_ReceberVLR_BAIXA.VALUE ;
end;

procedure TDMCaixaFrentista.Baixas_PagarBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ'    ).asString  := DMApp.Cnpj         ;
     (DataSet as TIBQuery).ParamByName('DATA'    ).asDate    := DMApp.DataCaixa    ;
     (DataSet as TIBQuery).ParamByName('USUARIO' ).asInteger := DmApp.UsuarioCaixa ;
     (DataSet as TIBQuery).ParamByName('TURNO'   ).asInteger := DmApp.TurnoCaixa   ;
     (DataSet as TIBQuery).ParamByName('CONTA'   ).asInteger := DmApp.ContaCaixa   ;
     (Dataset as TIBQuery).Prepare;
end;

procedure TDMCaixaFrentista.Baixas_PagarCalcFields(DataSet: TDataSet);
begin
     Baixas_PagarTotal.Value := Baixas_PagarVLR_BAIXA.VALUE ;
end;

procedure TDMCaixaFrentista.Formas_AgrupadasCalcFields(DataSet: TDataSet);
begin
     Formas_AgrupadasTotal.Value := Formas_AgrupadasVALOR_ORIGINAL.value + Formas_AgrupadasJUROS.value ;
end;

procedure TDMCaixaFrentista.Soma_Vendas_FormaCalcFields(DataSet: TDataSet);
begin
     Soma_Vendas_FormaTotal.Value := Soma_Vendas_FormaVALOR_ORIGINAL.value + Soma_Vendas_FormaJUROS.value ;
end;

procedure TDMCaixaFrentista.Lista_Produtos_CaixaBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName( 'CNPJ'       ).asString  := DMApp.Cnpj         ;
     (DataSet as TIBQuery).ParamByName( 'DATA_CAIXA' ).asDate    := DMApp.DataCaixa    ;
     (DataSet as TIBQuery).ParamByName( 'USUARIO'    ).asInteger := DmApp.UsuarioCaixa ;
     (DataSet as TIBQuery).ParamByName( 'TURNO'      ).asInteger := DmApp.TurnoCaixa   ;
     (Dataset as TIBQuery).Prepare;
end;

procedure TDMCaixaFrentista.Caixa_FrentistaCalcFields(DataSet: TDataSet);
begin
     Caixa_FrentistaSAIDAS.Value :=
     Caixa_FrentistaDINHEIRO.value      +
     Caixa_FrentistaDESCONTOS.value     +
     Caixa_FrentistaMOEDAS.value        +
     Caixa_FrentistaTICKET.Value        +
     Caixa_FrentistaTROCO.Value         +
     Caixa_FrentistaCHEQUE_PRAZO.Value  +
     Caixa_FrentistaCHEQUE.Value        +
     Caixa_FrentistaCARTAO.Value        +
     Caixa_FrentistaOUTRAS_SAIDAS.Value +
     Caixa_FrentistaBAIXA_HAVER.Value   +
     Caixa_FrentistaDESCONTOS_PRODUTOS_BOMBA.Value   +
     Caixa_FrentistaTROCO_VENDAS.Value  +
     Caixa_FrentistaNOTAS.Value ;

     //Entradas
     Caixa_FrentistaENTRADAS.Value :=
     Caixa_FrentistaPRODUTOS.value      +
     Caixa_FrentistaACRESCIMOS.value    +
     Caixa_FrentistaRECEBIMENTOS.value  +
     Caixa_FrentistaJUROS_RECEBER.value  -
     Caixa_FrentistaDESCONTOS_RECEBER.value  +
     Caixa_FrentistaJUROS.Value         +
     Caixa_FrentistaTROCO_INICIAL.Value +
     Caixa_FrentistaBOMBAS.value        +
     Caixa_FrentistaHAVER.value         +
     Caixa_FrentistaOUTRAS_ENTRADAS.value;

     //Resultado
     Caixa_FrentistaResultado.Value := Caixa_FrentistaSAIDAS.Value - Caixa_FrentistaENTRADAS.Value  ;

     {If FrmCaixaFrentista <> Nil
     then begin
          if arredonda(Caixa_FrentistaResultado.Value,2) > 0
          then begin
               FrmCaixaFrentista.DBRESULTADO.Color := $00B77B00 ;
          end
          else begin
               If arredonda(Caixa_FrentistaResultado.Value,2) = 0
               then begin
                    FrmCaixaFrentista.DBRESULTADO.Color := clInfoBk  ;
               end
               else begin
                    FrmCaixaFrentista.DBRESULTADO.Color := $000166FE  ;
               end;
          end;
     end;}
end;

procedure TDMCaixaFrentista.Movimentos_CBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ'    ).asString  := DMApp.Cnpj         ;
     (DataSet as TIBQuery).ParamByName('USUARIO' ).asInteger := DmApp.UsuarioCaixa ;
     (DataSet as TIBQuery).ParamByName('CONTA'   ).asInteger := DmApp.ContaCaixa   ;
     (DataSet as TIBQuery).ParamByName('DATA'    ).asDate    := DMApp.DataCaixa    ;
     (DataSet as TIBQuery).ParamByName('TURNO'   ).asInteger := DmApp.TurnoCaixa   ;
     (Dataset as TIBQuery).Prepare;
end;

procedure TDMCaixaFrentista.MovimentosBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBDataSet).ParamByName('CNPJ' ).asString     := DMApp.Cnpj          ;
     (DataSet as TIBDataSet).ParamByName('CONTA').asInteger    := DmApp.ContaCaixa    ;
     (DataSet as TIBDataSet).ParamByName('USUARIO').asInteger  := DmApp.UsuarioCaixa  ;
     (DataSet as TIBDataSet).ParamByName('DATA' ).asDate       := DmApp.DataCaixa     ;
     (DataSet as TIBDataSet).ParamByName('TURNO').asInteger    := DmApp.TurnoCaixa    ;

     (Dataset as TIBDataSet).Prepare;
end;

procedure TDMCaixaFrentista.MovimentosCONTRA_PARTIDAValidate(Sender: TField);
begin
     //
     If Sender.IsNull
     Then
         Exit ;

     Geral.Close ;
     Geral.Sql.Clear ;

     Geral.Params.CreateParam ( FtString , 'E', PtInput );
     Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

     Geral.Sql.Add (' Select Nome From Ctb_PlanoConta Where Conta = :C and Cnpj = :E ');

     Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     Geral.ParamByName ('C').AsInteger := Sender.Value ;

     Geral.Prepare ;

     Geral.Open ;

     If Geral.Fields[0].isNull
     then Begin
          MessageDlg('Conta Inexistente!',mtError,[mbOk],0);
          Abort;
     end
     else begin
          MovimentosNOME_CONTRAPARTIDA.Value := Geral.Fields[0].Value ;
     end;
end;

procedure TDMCaixaFrentista.MovimentosNewRecord(DataSet: TDataSet);
begin
     MovimentosCNPJ.Value    := DMApp.Cnpj         ;
     MovimentosCONTA.Value   := DmApp.ContaCaixa   ;
     MovimentosDATA.Value    := DmApp.DataCaixa    ;
     MovimentosUSUARIO.Value := DmApp.UsuarioCaixa ;
     MovimentosTURNO.Value   := DmApp.TurnoCaixa   ;
end;

procedure TDMCaixaFrentista.Ver_Vendas_PrazoBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ' ).asString     := DMApp.Cnpj          ;
     (DataSet as TIBQuery).ParamByName('D'    ).asDate       := DmApp.DataCaixa     ;
     (DataSet as TIBQuery).ParamByName('CONTA').asInteger    := DmApp.ContaCaixa    ;
     (DataSet as TIBQuery).ParamByName('USUARIO').asInteger  := DmApp.UsuarioCaixa  ;
     (DataSet as TIBQuery).ParamByName('TURNO').asInteger    := DmApp.TurnoCaixa    ;

     (Dataset as TIBQuery).Prepare;
end;

procedure TDMCaixaFrentista.Caixa_FrentistaBeforePost(DataSet: TDataSet);
begin
     If Dataset.State = dsInsert
     Then
         Caixa_FrentistaPLANILHA.Value := DMApp.GerarCodigo('PLANILHA', 1);
end;

procedure TDMCaixaFrentista.Ver_CartaoBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ' ).asString     := DMApp.Cnpj          ;
     (DataSet as TIBQuery).ParamByName('USUARIO').asInteger  := DmApp.UsuarioCaixa  ;
     (DataSet as TIBQuery).ParamByName('DATA'  ).asDate      := DmApp.DataCaixa     ;
     (DataSet as TIBQuery).ParamByName('CONTA').asInteger    := DmApp.ContaCaixa    ;
     (DataSet as TIBQuery).ParamByName('TURNO').asInteger    := DmApp.TurnoCaixa    ;

     (Dataset as TIBQuery).Prepare;
end;

procedure TDMCaixaFrentista.MovimentosPESSOA_FJValidate(Sender: TField);
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

procedure TDMCaixaFrentista.VER_FIN_FATURAS_PARCIAL_CAIXABeforeOpen(
  DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ'      ).asString  := DMApp.Cnpj         ;
     (DataSet as TIBQuery).ParamByName('DATA'      ).asDate    := DMApp.DataCaixa    ;
     (DataSet as TIBQuery).ParamByName('USUARIO'   ).asInteger := DmApp.UsuarioCaixa ;
     (DataSet as TIBQuery).ParamByName('CONTA'     ).asInteger := DmApp.ContaCaixa   ;
     (DataSet as TIBQuery).ParamByName('TURNO'     ).asInteger := DmApp.TurnoCaixa   ;
     (Dataset as TIBQuery).Prepare;
end;

procedure TDMCaixaFrentista.VER_FATURA_CAIXABeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ'        ).asString   := DMApp.Cnpj          ;
     (DataSet as TIBQuery).ParamByName('DATA_CAIXA'  ).asDate     := DmApp.DataCaixa     ;
     (DataSet as TIBQuery).ParamByName('USR'         ).asInteger  := DmApp.UsuarioCaixa  ;
     (DataSet as TIBQuery).ParamByName('TURNO'       ).asInteger  := DmApp.TurnoCaixa    ;
     (DataSet as TIBQuery).ParamByName('CONTA'       ).asInteger  := DmApp.ContaCaixa    ;

     (Dataset as TIBQuery).Prepare;
end;

procedure TDMCaixaFrentista.Baixas_Notas_FaturasCalcFields(DataSet: TDataSet);
begin
     Baixas_Notas_FaturasTotal.Value := Baixas_Notas_FaturasVLR_BAIXA.VALUE ;
end;

procedure TDMCaixaFrentista.Baixas_Notas_FaturasBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ'    ).asString  := DMApp.Cnpj         ;
     (DataSet as TIBQuery).ParamByName('DATA'    ).asDate    := DMApp.DataCaixa    ;
     (DataSet as TIBQuery).ParamByName('USUARIO' ).asInteger := DmApp.UsuarioCaixa ;
     (DataSet as TIBQuery).ParamByName('TRN'     ).asInteger := DmApp.TurnoCaixa   ;
     (Dataset as TIBQuery).Prepare;
end;

procedure TDMCaixaFrentista.Ver_CaixaCalcFields(DataSet: TDataSet);
begin
     Ver_CaixaSAIDAS.Value :=
     Ver_CaixaDINHEIRO.value      +
     Ver_CaixaDESCONTOS.value     +
     Ver_CaixaMOEDAS.value        +
     Ver_CaixaTICKET.Value        +
     Ver_CaixaTROCO.Value         +
     Ver_CaixaCHEQUE_PRAZO.Value  +
     Ver_CaixaCHEQUE.Value        +
     Ver_CaixaCARTAO.Value        +
     Ver_CaixaOUTRAS_SAIDAS.Value +
     Ver_CaixaBAIXA_HAVER.Value   +
     Ver_CaixaDESCONTOS_PRODUTOS_BOMBA.value +
     Ver_CaixaNOTAS.Value ;

     //Entradas
     Ver_CaixaENTRADAS.Value :=
     Ver_CaixaPRODUTOS.value        +
     Ver_CaixaACRESCIMOS.value      +
     Ver_CaixaRECEBIMENTOS.value    +
     Ver_CaixaJUROS_RECEBER.value   -
     Ver_CaixaDESCONTOS_RECEBER.value  +
     Ver_CaixaJUROS.Value           +
     Ver_CaixaTROCO_INICIAL.Value   +
     Ver_CaixaBOMBAS.value          +
     Ver_CaixaHAVER.value           +
     Ver_CaixaOUTRAS_ENTRADAS.value ;

     //Resultado
     Ver_CaixaResultado.Value := Ver_CaixaSAIDAS.Value - Ver_CaixaENTRADAS.Value  ;
end;

procedure TDMCaixaFrentista.Soma_Vendas_Forma_GeralCalcFields(DataSet: TDataSet);
begin
     Soma_Vendas_Forma_GeralTotal.Value := Soma_Vendas_Forma_GeralVALOR_ORIGINAL.value + Soma_Vendas_Forma_GeralJUROS.value ;
end;

procedure TDMCaixaFrentista.Caixa_GeralCalcFields(DataSet: TDataSet);
begin
     Caixa_GeralSAIDAS.Value :=
     Caixa_GeralDINHEIRO.value      +
     Caixa_GeralDESCONTOS.value     +
     Caixa_GeralMOEDAS.value        +
     Caixa_GeralTICKET.Value        +
     Caixa_GeralTROCO.Value         +
     Caixa_GeralCHEQUE_PRAZO.Value  +
     Caixa_GeralCHEQUE.Value        +
     Caixa_GeralCARTAO.Value        +
     Caixa_GeralOUTRAS_SAIDAS.Value +
     Caixa_GeralBAIXA_HAVER.Value   +
     Caixa_GeralPAGAMENTOS.Value    +
     (-1 * Caixa_GeralSALDO_CAIXAS_FRENTISTA.Value) +
     Caixa_GeralDESCONTOS_PRODUTOS_BOMBA.VALUE +
     Caixa_GeralNOTAS.Value ;

     //Entradas
     Caixa_GeralENTRADAS.Value :=
     Caixa_GeralPRODUTOS.value      +
     Caixa_GeralACRESCIMOS.value    +
     ( Caixa_GeralRECEBIMENTOS.value + Caixa_GeralJUROS_RECEBER.value - Caixa_GeralDESCONTOS_RECEBER.value ) +
     Caixa_GeralJUROS.Value         +
     Caixa_GeralTROCO_INICIAL.Value +
     Caixa_GeralBOMBAS.value        +
     Caixa_GeralHAVER.value         +
     Caixa_GeralOUTRAS_ENTRADAS.value;

     //Resultado
     Caixa_GeralResultado.Value := Caixa_GeralSAIDAS.Value - Caixa_GeralENTRADAS.Value  ;

end;

procedure TDMCaixaFrentista.Caixa_GeralNewRecord(DataSet: TDataSet);
Var
   I: Integer;
begin
     For I := 0 to Caixa_Geral.FieldCount - 1 do
     begin
          if ((Caixa_Geral.Fields.FIELDS[i].DataType = FtFloat) or (Caixa_Geral.Fields.FIELDS[i].DataType = FtBcd))
          then Begin
               Caixa_Geral.Fields[i].Value := 0;
          end;
     end;

     Caixa_GeralPLANILHA.value := DMApp.GerarCodigo('PLANILHA', 1);
     Caixa_GeralCNPJ.Value     := DmApp.Cnpj;
     Caixa_GeralDATA.Value     := DmApp.DataCaixa ;
     Caixa_GeralFECHADO.Value  := 'N' ;
end;

procedure TDMCaixaFrentista.VER_CAIXA_GERALCalcFields(DataSet: TDataSet);
begin
     Ver_Caixa_GeralSAIDAS.Value :=
     Ver_Caixa_GeralDINHEIRO.value      +
     Ver_Caixa_GeralDESCONTOS.value     +
     Ver_Caixa_GeralMOEDAS.value        +
     Ver_Caixa_GeralTICKET.Value        +
     Ver_Caixa_GeralTROCO.Value         +
     Ver_Caixa_GeralCHEQUE_PRAZO.Value  +
     Ver_Caixa_GeralCHEQUE.Value        +
     Ver_Caixa_GeralCARTAO.Value        +
     Ver_Caixa_GeralOUTRAS_SAIDAS.Value +
     Ver_Caixa_GeralBAIXA_HAVER.Value   +
     VER_CAIXA_GERALPAGAMENTOS.Value    +
     (-1 * VER_CAIXA_GERALSALDO_CAIXAS_FRENTISTA.Value )  +
     VER_CAIXA_GERALDESCONTOS_PRODUTOS_BOMBA.VALUE +
     Ver_Caixa_GeralNOTAS.Value ;

     //Entradas
     Ver_Caixa_GeralENTRADAS.Value :=
     Ver_Caixa_GeralPRODUTOS.value      +
     Ver_Caixa_GeralACRESCIMOS.value    +
     ( Ver_Caixa_GeralRECEBIMENTOS.value + Ver_Caixa_GeralJUROS_RECEBER.value - Ver_Caixa_GeralDESCONTOS_RECEBER.value ) +
     Ver_Caixa_GeralJUROS.Value         +
     Ver_Caixa_GeralTROCO_INICIAL.Value +
     Ver_Caixa_GeralBOMBAS.value        +
     Ver_Caixa_GeralHAVER.value         +
     Ver_Caixa_GeralOUTRAS_ENTRADAS.value;

     //Resultado
     Ver_Caixa_GeralResultado.Value := Ver_Caixa_GeralSAIDAS.Value - Ver_Caixa_GeralENTRADAS.Value  ;
end;

procedure TDMCaixaFrentista.Baixas_Receber_GeralCalcFields(DataSet: TDataSet);
begin
     Baixas_Receber_GeralTotal.Value := Baixas_Receber_GeralVLR_BAIXA.VALUE ;
end;

procedure TDMCaixaFrentista.Baixas_Pagar_GeralCalcFields(DataSet: TDataSet);
begin
     Baixas_Pagar_GeralTotal.Value := Baixas_Pagar_GeralVLR_BAIXA.VALUE ;
end;

procedure TDMCaixaFrentista.Vendedor_Caixa_GeralBeforeInsert(DataSet: TDataSet);
begin
     MESSAGEDLG ('Não é Permitido  Cadastrar Novo Vendedor!', mterror, [mbok],0);
     abort ;
end;

procedure TDMCaixaFrentista.Ver_Caixa_VendedorCalcFields(DataSet: TDataSet);
begin
     Ver_Caixa_VendedorTOTAL.value := Ver_Caixa_VendedorDINHEIRO.VALUE + Ver_Caixa_VendedorCHEQUE.VALUE +
     Ver_Caixa_VendedorCHEQUE.VALUE + Ver_Caixa_VendedorTICKET.VALUE + Ver_Caixa_VendedorPRAZO.VALUE;
end;

procedure TDMCaixaFrentista.VER_FATURA_GERALCalcFields(DataSet: TDataSet);
begin
     VER_FATURA_GERALTOTAL.value := VER_FATURA_GERALVALOR.value - VER_FATURA_GERALdesconto.value + VER_FATURA_GERALJUROS.VALUE ;
end;

procedure TDMCaixaFrentista.SALDO_CAIXAS_FRENTISTASBeforeOpen( DataSet: TDataSet);
begin
     (DataSet as TIBStoredProc).ParamByName('CNPJ').asString     := DMApp.Cnpj         ;
     (DataSet as TIBStoredProc).ParamByName('DATA').asDate       := DMApp.DataCaixa    ;
end;


procedure TDMCaixaFrentista.Baixas_Pagar_GeralBeforeOpen( DataSet: TDataSet);
begin
     If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ' ).asString   := DMApp.Cnpj         ;
       (DataSet as TIBQuery).ParamByName('DATA' ).asDate     := DMApp.DataCaixa    ;
       (DataSet as TIBQuery).ParamByName('CONTA').asInteger  := DMApp.ContaCaixa   ;
       (Dataset as TIBQuery).Prepare;
     End;

     If (DataSet is TIBDataSet) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString   := DMApp.Cnpj         ;
       (DataSet as TIBDataSet).ParamByName('DATA').asDate     := DMApp.DataCaixa    ;
       (DataSet as TIBDataSet).ParamByName('CONTA').asInteger := DMApp.ContaCaixa   ;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TDMCaixaFrentista.SelFatura_Futura_GeralCalcFields(DataSet: TDataSet);
Var
   Total: Real;
begin
  Total := SelFatura_Futura_GeralTOTAL.VALUE + SelFatura_Futura_GeralDESC_ACRES.VALUE ;
  SelFatura_Futura_GeralAVISTAG.VALUE  := SelFatura_Futura_GeralDINHEIRO.VALUE + SelFatura_Futura_GeralCARTAO.VALUE + SelFatura_Futura_GeralCHEQUE.VALUE + SelFatura_Futura_GeralTICKET.VALUE + SelFatura_Futura_GeralTROCO.VALUE ;
  SelFatura_Futura_GeralAPRAZOG.Value  := TOTAL - SelFatura_Futura_GeralAVISTAG.VALUE ;
  SelFatura_Futura_GeralLiquido.Value  := Total ;
end;

procedure TDMCaixaFrentista.Ver_Caixa_VendedorBeforeOpen(
  DataSet: TDataSet);
begin
  //---procedimento que alientará a tabela fat_caixa_vendedor, pesquisada por este dataset
  Exec_Ver_Caixa_Vendedor.ParamByName('cnpj').value := dmApp.Cnpj;
  Exec_Ver_Caixa_Vendedor.ParamByName('data').value := dmApp.DataCaixa;
  Exec_Ver_Caixa_Vendedor.ExecProc;
  Exec_Ver_Caixa_Vendedor.Transaction.CommitRetaining;
end;

procedure TDMCaixaFrentista.Formas_AgrupadasBeforeOpen(DataSet: TDataSet);
begin
     Formas_Agrupadas.ParamByName('CNPJ').value  := DMApp.Cnpj         ;
     Formas_Agrupadas.ParamByName('DT_CAIXA').value    := DMApp.DataCaixa    ;
     Formas_Agrupadas.ParamByName('USR_CAIXA').value := DmApp.UsuarioCaixa ;
     Formas_Agrupadas.ParamByName('CNTA_CAIXA').value := DmApp.ContaCaixa   ;
     Formas_Agrupadas.ParamByName('TURNO').value := DmApp.TurnoCaixa   ;
     Formas_Agrupadas.Prepare;
end;

procedure TDMCaixaFrentista.Formas_Agrupadas_GeralBeforeOpen(
  DataSet: TDataSet);
begin
   Formas_Agrupadas_Geral.ParamByName('CNPJ').value  := DMApp.Cnpj         ;
   Formas_Agrupadas_Geral.ParamByName('DATA').value    := DMApp.DataCaixa    ;
end;

procedure TDMCaixaFrentista.Lista_Formas_GERALBeforeOpen(
  DataSet: TDataSet);
begin
  Lista_Formas_GERAL.ParamByName('CNPJ').value  := DMApp.Cnpj         ;
  Lista_Formas_GERAL.ParamByName('DATA').value    := DMApp.DataCaixa    ;
end;

procedure TDMCaixaFrentista.SetaParametros(Sender: TDataSet);
begin
    if (Sender is TIBDataSet) then
    begin
      TIBDataSet(Sender).parambyname('cnpj').value := dmapp.cnpj;
      TIBDataSet(Sender).parambyname('data').value := dmapp.DataCaixa;
    end
    else if (Sender is TIBQuery) then
    begin
      TIBQuery(Sender).parambyname('cnpj').value := dmapp.cnpj;
      TIBQuery(Sender).parambyname('data').value := dmapp.DataCaixa;
    end;
end;

end.
