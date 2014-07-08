 unit ContratosConstru_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet,   Buttons,
  dxExEdtr, dxDBEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
     IBQuery, ppParameter, ppModule,
  raCodMod, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport,   ppDB, ppDBPipe,
  cxPropertiesStore, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxControls,
  cxGridCustomView, cxGrid, cxCheckBox, cxDBExtLookupComboBox,
  cxDBLookupComboBox, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  cxContainer, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxLabel,
  cxButtons, cxTextEdit, cxDBEdit, cxCalc, cxCalendar, cxCurrencyEdit, cxPC,
  cxGroupBox, cxRadioGroup, IBStoredProc, DBCtrls, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomPopupMenu, cxGridPopupMenu;

type
  TFrmContratoConstru = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    DataSource: TDataSource;
    dsCliente: TDataSource;
    Panel2: TPanel;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnListagem: TdxBarButton;
    BtnFechar: TdxBarButton;
    OptAlterar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    ActLookUp: TAction;
    Navigator: TdxBarDBNavigator;
    stgFrmContrObra: TcxPropertiesStore;
    Panel1: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DsItens: TDataSource;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Contratos: TIBDataSet;
    ContratosCODIGO: TIntegerField;
    ContratosDESCRICAO: TIBStringField;
    ContratosVALOR: TFloatField;
    ContratosDATA: TDateTimeField;
    ContratosDATA_INICIO: TDateTimeField;
    ContratosDATA_VENCTO: TDateTimeField;
    ContratosPESSOA_FJ: TIBStringField;
    ContratosOBS: TIBStringField;
    ContratosATIVO: TIBStringField;
    Contratositens: TIBDataSet;
    ContratositensCODIGO: TIntegerField;
    ContratositensDESCRICAO: TIBStringField;
    ContratositensVALOR: TFloatField;
    ContratositensDATA: TDateTimeField;
    ContratositensDATA_INICIO: TDateTimeField;
    ContratositensDATA_VENCTO: TDateTimeField;
    ContratositensCOD_CONTRATO: TIntegerField;
    ContratositensATIVO: TIBStringField;
    PgcPrincipal: TcxPageControl;
    tbsGeral: TcxTabSheet;
    tbsFinanceiro: TcxTabSheet;
    Panel3: TPanel;
    GridItens: TcxGrid;
    TVItes: TcxGridDBTableView;
    TVItesCODIGO: TcxGridDBColumn;
    TVItesDESCRICAO: TcxGridDBColumn;
    TVItesVALOR: TcxGridDBColumn;
    TVItesDATA_INICIO: TcxGridDBColumn;
    TVItesDATA_VENCTO: TcxGridDBColumn;
    TVItesCOD_CONTRATO: TcxGridDBColumn;
    TVItesDATA: TcxGridDBColumn;
    TVItesATIVO: TcxGridDBColumn;
    LVItens: TcxGridLevel;
    cxLabel1: TcxLabel;
    GroupBox1: TGroupBox;
    Label4: TcxLabel;
    Label2: TcxLabel;
    Label1: TcxLabel;
    Label6: TcxLabel;
    Label14: TcxLabel;
    Label13: TcxLabel;
    Label5: TcxLabel;
    Label7: TcxLabel;
    DtFim: TdxDBDateEdit;
    DtInicio: TdxDBDateEdit;
    cmbCliente: TdxDBLookupEdit;
    cbEtiqueta: TdxDBCheckEdit;
    dxDBMemo1: TdxDBMemo;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBCalcEdit1: TdxDBCalcEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cxLabel9: TcxLabel;
    dxDBCalcEdit14: TdxDBCalcEdit;
    dxDBCalcEdit8: TdxDBCalcEdit;
    cxLabel11: TcxLabel;
    dxDBCalcEdit21: TdxDBCalcEdit;
    cxLabel13: TcxLabel;
    dxDBCalcEdit22: TdxDBCalcEdit;
    cxLabel16: TcxLabel;
    dxDBCalcEdit23: TdxDBCalcEdit;
    cxLabel17: TcxLabel;
    dxDBCalcEdit24: TdxDBCalcEdit;
    cxLabel19: TcxLabel;
    dxDBCalcEdit25: TdxDBCalcEdit;
    dxDBCalcEdit26: TdxDBCalcEdit;
    cxLabel22: TcxLabel;
    dxDBCalcEdit27: TdxDBCalcEdit;
    dxDBCalcEdit28: TdxDBCalcEdit;
    cxLabel24: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    SelCliente: TIBQuery;
    SelClienteCPF_CGC: TIBStringField;
    SelClienteNOME_RAZAO: TIBStringField;
    cxGroupBox2: TcxGroupBox;
    cxLabel4: TcxLabel;
    dxDBCalcEdit2: TdxDBCalcEdit;
    dxDBCalcEdit3: TdxDBCalcEdit;
    cxLabel5: TcxLabel;
    dxDBCalcEdit4: TdxDBCalcEdit;
    cxLabel6: TcxLabel;
    dxDBCalcEdit5: TdxDBCalcEdit;
    cxLabel7: TcxLabel;
    dxDBCalcEdit6: TdxDBCalcEdit;
    cxLabel8: TcxLabel;
    dxDBCalcEdit7: TdxDBCalcEdit;
    cxLabel10: TcxLabel;
    cxGroupBox3: TcxGroupBox;
    ContratosVINCULO_CONTRATO: TIntegerField;
    ContratosPCT_INSS: TFloatField;
    ContratosPCT_IRPJ: TFloatField;
    ContratosPCT_ISS: TFloatField;
    ContratosPCT_PIS: TFloatField;
    ContratosPCT_CSLL: TFloatField;
    ContratosPCT_COFINS: TFloatField;
    ContratosBASE_INSS_MUN: TFloatField;
    ContratosBASE_INSS_NAC: TFloatField;
    ContratosBASE_ISS_MUN: TFloatField;
    ContratosBASE_ISS_NAC: TFloatField;
    cxButton1: TcxButton;
    GridParcelamento: TcxGrid;
    cxButton2: TcxButton;
    ContratosVLR_INSS: TFloatField;
    ContratosVLR_ISS: TFloatField;
    ContratosVLR_IRPJ: TFloatField;
    ContratosVLR_PIS: TFloatField;
    ContratosVLR_CSLL: TFloatField;
    ContratosVLR_COFINS: TFloatField;
    dxDBCalcEdit9: TdxDBCalcEdit;
    cxLabel12: TcxLabel;
    ContratosTOTAL_IMPOSTO: TFloatField;
    QryParcelamento: TIBQuery;
    QryParcelamentoCODIGO: TIntegerField;
    QryParcelamentoCOD_CONTRATO: TIntegerField;
    QryParcelamentoDT_LANCTO: TDateTimeField;
    QryParcelamentoDT_VENCTO: TDateTimeField;
    QryParcelamentoVALOR: TFloatField;
    QryParcelamentoCOD_PAGAR: TIntegerField;
    QryParcelamentoEMPRESA: TIBStringField;
    QryParcelamentoHISTORICO: TIBStringField;
    QryParcelamentoNOME_EMPRESA: TIBStringField;
    dsParcelamento: TDataSource;
    QryExisteValor: TIBQuery;
    spSimulaParcela: TIBStoredProc;
    QryParcelamentoIMPOSTO: TIBStringField;
    QryParcelamentoCC_CUSTO: TIntegerField;
    QryParcelamentoCENTRO_CUSTO: TIBStringField;
    DBRadioGroup1: TDBRadioGroup;
    LVParcelamento: TcxGridLevel;
    TVParcelamento: TcxGridDBBandedTableView;
    TVParcelamentoCODIGO: TcxGridDBBandedColumn;
    TVParcelamentoCOD_CONTRATO: TcxGridDBBandedColumn;
    TVParcelamentoDT_LANCTO: TcxGridDBBandedColumn;
    TVParcelamentoDT_VENCTO: TcxGridDBBandedColumn;
    TVParcelamentoVALOR: TcxGridDBBandedColumn;
    TVParcelamentoCOD_PAGAR: TcxGridDBBandedColumn;
    TVParcelamentoEMPRESA: TcxGridDBBandedColumn;
    TVParcelamentoHISTORICO: TcxGridDBBandedColumn;
    TVParcelamentoNOME_EMPRESA: TcxGridDBBandedColumn;
    TVParcelamentoIMPOSTO: TcxGridDBBandedColumn;
    TVParcelamentoCC_CUSTO: TcxGridDBBandedColumn;
    TVParcelamentoCENTRO_CUSTO: TcxGridDBBandedColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    cxGroupBox4: TcxGroupBox;
    GridParcReceber: TcxGrid;
    TVParcReceber: TcxGridDBBandedTableView;
    LVParcReceber: TcxGridLevel;
    dsParcReceber: TDataSource;
    TVParcReceberCODIGO: TcxGridDBBandedColumn;
    TVParcReceberCOD_CONTRATO: TcxGridDBBandedColumn;
    TVParcReceberDT_LANCTO: TcxGridDBBandedColumn;
    TVParcReceberDT_VENCTO: TcxGridDBBandedColumn;
    TVParcReceberVALOR: TcxGridDBBandedColumn;
    TVParcReceberCOD_PAGAR: TcxGridDBBandedColumn;
    TVParcReceberEMPRESA: TcxGridDBBandedColumn;
    TVParcReceberHISTORICO: TcxGridDBBandedColumn;
    TVParcReceberIMPOSTO: TcxGridDBBandedColumn;
    TVParcReceberCC_CUSTO: TcxGridDBBandedColumn;
    TVParcReceberTIPO: TcxGridDBBandedColumn;
    TVParcReceberNOME_EMPRESA: TcxGridDBBandedColumn;
    TVParcReceberCENTRO_CUSTO: TcxGridDBBandedColumn;
    QryExisteValorFin: TIBQuery;
    QryExisteValorFinVALOR: TFloatField;
    ContratositensPROVISIONADO: TIBStringField;
    ContratositensINDICE_PROVISIONAMENTO: TIntegerField;
    TVItesPROVISIONADO: TcxGridDBColumn;
    PopupItens: TPopupMenu;
    ProvisionarItem1: TMenuItem;
    DesmarcarProvisionado1: TMenuItem;
    ActMarcProv: TAction;
    ActDesmarcProv: TAction;
    spGeraFinanceiro: TIBStoredProc;
    ContratosTOTAL_2: TFloatField;
    SelEmpresa: TIBQuery;
    SelEmpresaCNPJ: TIBStringField;
    SelEmpresaNOME: TIBStringField;
    SelEmpresaENDERECO: TIBStringField;
    SelEmpresaBAIRRO: TIBStringField;
    SelEmpresaCIDADE: TIBStringField;
    SelEmpresaUF: TIBStringField;
    SelEmpresaCEP: TIBStringField;
    SelEmpresaFONE: TIBStringField;
    SelEmpresaFAX: TIBStringField;
    SelEmpresaMENS_ECF: TIBStringField;
    SelEmpresaALT_PRC_VND: TIBStringField;
    SelEmpresaTX_JUROS_ATE: TFloatField;
    SelEmpresaTX_JUROS_APOS: TFloatField;
    SelEmpresaTIPO_TAXA: TIBStringField;
    SelEmpresaMENSAGEM_BOL: TIBStringField;
    SelEmpresaMENSAGEM_BOL2: TIBStringField;
    SelEmpresaCLI_VND_VISTA: TIntegerField;
    SelEmpresaDT_ULT_VENDA: TDateTimeField;
    SelEmpresaCUSTO_VARIAVEL: TFloatField;
    SelEmpresaVENDEDOR: TFloatField;
    SelEmpresaPROPAGANDA: TFloatField;
    SelEmpresaDESCONTOS: TFloatField;
    SelEmpresaPG_COM_TERC: TIBStringField;
    SelEmpresaPDV_NATUREZA: TIntegerField;
    SelEmpresaPDV_TIPODOCTO: TIBStringField;
    SelEmpresaPDV_LOCALCOBRANCA: TIntegerField;
    SelEmpresaDIG_DESC_VENDA: TIBStringField;
    SelEmpresaDIG_CHEQUE_VENDA: TIBStringField;
    SelEmpresaPDV_MSG1: TIBStringField;
    SelEmpresaPDV_MSG2: TIBStringField;
    SelEmpresaPDV_MSG3: TIBStringField;
    SelEmpresaPDV_MSG4: TIBStringField;
    SelEmpresaPDV_MSG5: TIBStringField;
    SelEmpresaPDV_ECF: TIBStringField;
    SelEmpresaPDV_MAIORVALORUNIT: TFloatField;
    SelEmpresaPDV_SENHA: TIBStringField;
    SelEmpresaLOCAL_FATURA: TIBStringField;
    SelEmpresaECF_ULTNUMERO: TIntegerField;
    SelEmpresaDIG_UNIDADE_VENDA: TIBStringField;
    SelEmpresaPDV_PARCELA_VENDA: TIBStringField;
    SelEmpresaSELAGRUPADOR: TIBStringField;
    SelEmpresaPDV_ELIMINA_ZEROS: TIBStringField;
    SelEmpresaTIPO_CONSULTA_PROD: TIBStringField;
    SelEmpresaPDV_ACRESCENTA_ZEROS: TIBStringField;
    SelEmpresaCARREGAR_ARQUIVOS: TIBStringField;
    SelEmpresaVER_VENDAS_ENVIADAS: TIBStringField;
    SelEmpresaCHM_LOCPROD_INEXISTENTE: TIBStringField;
    SelEmpresaPDV_F4_ALTERACLIENTE: TIBStringField;
    SelEmpresaDIG_SENHA_VENDEDOR: TIBStringField;
    SelEmpresaCOR_FUNDO_SELECIONADO: TIBStringField;
    SelEmpresaNUM_REG_LOAD: TIntegerField;
    SelEmpresaPDV_DIGITA_QUANTIDADE: TIBStringField;
    SelEmpresaCOR_FUNDO_DESELECIONADO: TIBStringField;
    SelEmpresaCX_PAGAR_CAIXA: TIBStringField;
    SelEmpresaCX_RECEBER_CAIXA: TIBStringField;
    SelEmpresaEXT_LANC_CAIXA_FECHADO: TIBStringField;
    SelEmpresaNUM_MAX_ITENS: TIntegerField;
    SelEmpresaIMP_UNIT_ORC: TIBStringField;
    SelEmpresaDUPLICATA: TIntegerField;
    SelEmpresaBLQQTDEFISCAL: TIBStringField;
    SelEmpresaNUM_MAX_ITENS_ORC: TIntegerField;
    SelEmpresaALTERA_PRECO_VENDA_ENT: TIBStringField;
    SelEmpresaTIPO_EMPRESA: TIBStringField;
    SelEmpresaDIG_CARTAO_VENDA: TIBStringField;
    SelEmpresaPIS: TFloatField;
    SelEmpresaCOFINS: TFloatField;
    SelEmpresaDIGITA_NUM_NOTA: TIBStringField;
    SelEmpresaDIGITA_COTACOES: TIBStringField;
    SelEmpresaFOTO: TIBStringField;
    SelEmpresaLOJA_DESC_AVISTA: TFloatField;
    SelEmpresaITENS_ORCAMENTO: TIntegerField;
    SelEmpresaIMPRIME_CABEC_2FOL: TIBStringField;
    SelEmpresaIMPRIME_DESCONTO_AGRUPADO: TIBStringField;
    SelEmpresaIMPRIME_RODAPE_ORCAMENTO: TIBStringField;
    SelEmpresaTIPO_CUSTO: TIBStringField;
    SelEmpresaTIPO_ORCAMENTO: TIBStringField;
    SelEmpresaSELECIONA_IMPRESSORA: TIBStringField;
    SelEmpresaCX_COMP_SLD_ANT: TIBStringField;
    SelEmpresaCX_IMP_VND_AGRUPADA: TIBStringField;
    SelEmpresaCX_TRANSP_SLD_ANT: TIBStringField;
    SelEmpresaMENS2_ECF: TIBStringField;
    SelEmpresaMENS3_ECF: TIBStringField;
    SelEmpresaTIPO_CAB_FATURA: TIBStringField;
    SelEmpresaTIPO_CONTAGEM: TIBStringField;
    SelEmpresaIMP_CASAS_QNTDE_FATURA: TIBStringField;
    SelEmpresaVALIDA_DOCUMENTOS: TIBStringField;
    SelEmpresaNUMERO_ZEROS: TIntegerField;
    SelEmpresaPST_MOSTRA_ENTRADAS: TIBStringField;
    SelEmpresaTROCO_MAXIMO: TFloatField;
    SelEmpresaMASCARA_FONE: TIBStringField;
    SelEmpresaCTB_JUROS_RECEBIDOS_REC: TIntegerField;
    SelEmpresaPDV_REPETE_PRODUTOS: TIBStringField;
    SelEmpresaIMPRIME_SUBTOTAL_ORCAMENTO: TIBStringField;
    SelEmpresaEMBUTIR_JUROS_IMPRESSOES: TIBStringField;
    SelEmpresaMASCARA_PRODUTOS_ENT: TIBStringField;
    SelEmpresaPDV_IMP_VINC_VALOR: TIBStringField;
    SelEmpresaPDV_PROPRIEDADE: TIBStringField;
    SelEmpresaPST_SENHA_CAIXA: TIBStringField;
    SelEmpresaIMPRIMIR_POSICOES: TIBStringField;
    SelEmpresaSINCRONIZAR_BOL_DPL: TIBStringField;
    SelEmpresaCOMISSAO_POR_FAIXA: TIBStringField;
    SelEmpresaCONTA_CARTAO_CAIXA: TIntegerField;
    SelEmpresaDIGITA_VENDEDOR_PDV: TIBStringField;
    SelEmpresaCOMISSAO_NORMAL: TIBStringField;
    SelEmpresaULTIMO_TURNO: TIntegerField;
    SelEmpresaIP_EXTERNO: TIBStringField;
    SelEmpresaCAMINHO_EXTERNO: TIBStringField;
    SelEmpresaSENHA_EMPRESA_EXTERNA: TIBStringField;
    SelEmpresaUTILIZA_DOCTOS_INT_ENTR: TIBStringField;
    SelEmpresaCONF_DUPLIC_REC_LANCTO: TIBStringField;
    SelEmpresaSIS_MENSAGEM_INTERNA: TIBStringField;
    SelEmpresaMENSAGEM_CONDICIONAL: TIBStringField;
    SelEmpresaFAT_TIPO_PARCELAMENTO: TIBStringField;
    SelEmpresaFAZ_FECHAMENTO_DIARIO: TIBStringField;
    SelEmpresaATUALIZA_ARQ_EXTERNO: TIBStringField;
    SelEmpresaCAIXA_SINCRONIZADO: TIBStringField;
    SelEmpresaICM_PRESUMIDO_IPI: TFloatField;
    SelEmpresaICM_PRESUMIDO_SEM_IPI: TFloatField;
    SelEmpresaALT_PRCVEND_MARGEM: TIBStringField;
    SelEmpresaBLQ_VENDA_SEM_IERG: TIBStringField;
    SelEmpresaPDV_UNITARIO_ZERADO: TIBStringField;
    SelEmpresaDIRETORIO_TEF: TIBStringField;
    SelEmpresaIMPRIME_NF_BALCAO: TIBStringField;
    SelEmpresaTRANSF_VLRS_CAIXA: TIBStringField;
    SelEmpresaLOCAL_FATURA_TROCA: TIBStringField;
    SelEmpresaEST_ET_PROD_GRD1: TMemoField;
    SelEmpresaEST_ET_PROD_GRD2: TMemoField;
    SelEmpresaEST_ET_PROD_GRD3: TMemoField;
    SelEmpresaEST_ET_PROD_GRD3_PARC: TMemoField;
    SelEmpresaEST_ET_PROD_GRD3_DESCTO: TMemoField;
    SelEmpresaEST_ET_PROD_GRD4: TMemoField;
    SelEmpresaCH_INFLUENCIA_VENDA: TIBStringField;
    SelEmpresaCRT_INFLUENCIA_VENDA: TIBStringField;
    SelEmpresaIMP_SERIE_NF: TIBStringField;
    SelEmpresaCONFIG_SERIE_NF: TMemoField;
    SelEmpresaCONFIG_CT13: TMemoField;
    SelEmpresaCONFIG_MALADIRETA: TMemoField;
    SelEmpresaGERA_BOLETOS: TIBStringField;
    SelEmpresaBLT_INSTRUCAO: TMemoField;
    SelEmpresaBLT_LOCAL_PAGTO: TIBStringField;
    SelEmpresaBLT_COD_CEDENTE: TIntegerField;
    SelEmpresaBLT_DIG_COD_CEDENTE: TIBStringField;
    SelEmpresaBLT_AGENCIA: TIBStringField;
    SelEmpresaBLT_DIG_AGENCIA: TIBStringField;
    SelEmpresaBLT_CONVENIO: TIntegerField;
    SelEmpresaBLT_CONTA: TIBStringField;
    SelEmpresaBLT_DIG_CONTA: TIBStringField;
    SelEmpresaBLT_CARTEIRA: TIBStringField;
    SelEmpresaBLT_LAYOUT: TSmallintField;
    SelEmpresaBLT_ACEITE_DOCTO: TIBStringField;
    SelEmpresaBLT_DIAS_ABATIMENTO: TIBStringField;
    SelEmpresaBLT_DIAS_DESCONTO: TIntegerField;
    SelEmpresaBLT_DIAS_MORA_JUROS: TIntegerField;
    SelEmpresaBLT_DIAS_PROTESTO: TIntegerField;
    SelEmpresaBLT_PCT_ABATIMENTO: TFloatField;
    SelEmpresaBLT_PCT_DESCONTO: TFloatField;
    SelEmpresaDESP_BANCARIA: TFloatField;
    SelEmpresaMORA_DIARIA: TFloatField;
    SelEmpresaBLT_VLR_IOF: TFloatField;
    SelEmpresaBLT_VLR_OUTRAS_DESP: TFloatField;
    SelEmpresaBLT_DIR_REMESSA: TIBStringField;
    SelEmpresaBLT_DIR_RETORNO: TIBStringField;
    SelEmpresaDESCONTO_MAXIMO: TFloatField;
    SelEmpresaCONFIG_NF_SERV: TMemoField;
    SelEmpresaDIG_ITENS_NF: TSmallintField;
    SelEmpresaVALIDA_ABERTURA_CX: TIBStringField;
    SelEmpresaCONTROLE_PEDIDO_RESTAURANTE: TIBStringField;
    SelEmpresaDB_VERSAO: TIntegerField;
    SelEmpresaTAXA_ACRESC_PDV: TFloatField;
    SelEmpresaMSG_PDVTELA: TIBStringField;
    SelEmpresaCONTAGEM_INCREMENTAL: TIBStringField;
    SelEmpresaEXIBE_MOD: TIBStringField;
    SelEmpresaEXIBE_PENDENCIA: TIBStringField;
    SelEmpresaKEY_RELEASE: TIBStringField;
    SelEmpresaEXIBE_MESAS: TIBStringField;
    SelEmpresaEXIBE_CTB: TIBStringField;
    SelEmpresaEXIBE_CB: TIBStringField;
    SelEmpresaEXIBE_SRV: TIBStringField;
    SelEmpresaCARREGAMENTO_PARCIAL: TIBStringField;
    SelEmpresaCONFIG_NF_GRAF: TMemoField;
    SelEmpresaBLT_EMAIL_SERVIDOR: TIBStringField;
    SelEmpresaBLT_EMAIL_PORTA: TSmallintField;
    SelEmpresaBLT_EMAIL_USER: TIBStringField;
    SelEmpresaBLT_EMAIL_SENHA: TIBStringField;
    SelEmpresaBLT_NOSSO_NUM_INI: TIntegerField;
    SelEmpresaBLT_NOSSO_NUM_FIM: TIntegerField;
    SelEmpresaBLT_NOSSO_NUM_PROX: TIntegerField;
    SelEmpresaEMAIL: TIBStringField;
    SelEmpresaBLT_MULTA: TFloatField;
    SelEmpresaCONFIG_COPIA_CHEQUE: TMemoField;
    SelEmpresaCONFIG_SERIE_ORC_NF: TMemoField;
    SelEmpresaCONFIG_REQUISICAO: TMemoField;
    SelEmpresaCONFIG_CARTA_SCPC: TMemoField;
    SelEmpresaATIVA_AGENTE: TIBStringField;
    SelEmpresaNF_CONTINUO_COM_MESMO_NUM_NF: TIBStringField;
    SelEmpresaNF_CONTINUO_NOME_CAMPO_TRUE: TIBStringField;
    SelEmpresaCONFIG_CONVENIO_PDV: TMemoField;
    SelEmpresaIMP_CONVENIO_GRAF: TIBStringField;
    SelEmpresaCONFIG_RECIBO: TMemoField;
    SelEmpresaNUM_ITENS_NF: TSmallintField;
    SelEmpresaNUM_ITENS_PDD: TSmallintField;
    SelEmpresaCONFIG_OS: TMemoField;
    SelEmpresaOFC_LT_PRODUTO_COPIAS: TIBStringField;
    SelEmpresaEXIBE_AGR: TIBStringField;
    SelEmpresaIE: TIBStringField;
    SelEmpresaCOD_CIDADE: TIntegerField;
    SelEmpresaCOD_LOGRADOURO: TIntegerField;
    SelEmpresaCOD_BAIRRO: TIntegerField;
    SelEmpresaEND_NUMERO: TIntegerField;
    SelEmpresaEXIBE_CARGA: TIBStringField;
    SelEmpresaEXIBE_NFE: TIBStringField;
    SelEmpresaEXIBE_SINTEGRA: TIBStringField;
    SelEmpresaNFE_AMBIENTE: TIBStringField;
    SelEmpresaNFE_VERSAO_APP: TIBStringField;
    SelEmpresaNFE_DIR_EXPORTACAO: TIBStringField;
    SelEmpresaNFE_LEIAUTE_DANFE: TIBStringField;
    SelEmpresaLOCAL_PADRAO: TIBStringField;
    SelEmpresaCONFIG_AGR_RECEITA: TMemoField;
    SelEmpresaCONFIG_ACERTO_1: TMemoField;
    SelEmpresaDESC_BX_PARCIAL: TIBStringField;
    SelEmpresaCM_AGR: TIBStringField;
    SelEmpresaCM_VDT: TIBStringField;
    SelEmpresaCMD_VDT_PCT: TFloatField;
    SelEmpresaPDV_FORMA_PAGTO: TIntegerField;
    SelEmpresaEXIBE_TBL: TIBStringField;
    SelEmpresaEXIBE_ACERTO_CONTAS: TIBStringField;
    SelEmpresaEMAIL_PADRAO: TIBStringField;
    SelEmpresaSMTP: TIBStringField;
    SelEmpresaLOGIN: TIBStringField;
    SelEmpresaSENHA: TIBStringField;
    SelEmpresaNOME_USUARIO: TIBStringField;
    SelEmpresaEMAIL_CONTROLE: TIBStringField;
    SelEmpresaEXIBE_MESALIDADES: TIBStringField;
    SelEmpresaFORMA_PAGTO_MENSALIDADE: TIntegerField;
    SelEmpresaNFE_CERT_CAMINHO: TIBStringField;
    SelEmpresaNFE_CERT_SENHA: TIBStringField;
    SelEmpresaNFE_CERT_NUM_SERIE: TIBStringField;
    SelEmpresaNFE_GER_TP_DANFE: TIBStringField;
    SelEmpresaNFE_GER_FORMA_EMISSAO: TIBStringField;
    SelEmpresaNFE_GER_PATH_LOGS: TIBStringField;
    SelEmpresaNFE_GER_IMG_DANFE: TIBStringField;
    SelEmpresaNFE_WS_UF: TIBStringField;
    SelEmpresaNFE_WS_AMBIENTE: TIBStringField;
    SelEmpresaNFE_WS_PROXY_HOST: TIBStringField;
    SelEmpresaNFE_WS_PROXY_PORTA: TIBStringField;
    SelEmpresaNFE_WS_PROXY_USUARIO: TIBStringField;
    SelEmpresaNFE_WS_PROXY_SENHA: TIBStringField;
    SelEmpresaNFE_EMIT_CNPJ: TIBStringField;
    SelEmpresaNFE_EMIT_INSC_ESTADUAL: TIBStringField;
    SelEmpresaNFE_EMIT_FANTASIA: TIBStringField;
    SelEmpresaNFE_EMIT_FONE: TIBStringField;
    SelEmpresaNFE_EMIT_CEP: TIBStringField;
    SelEmpresaNFE_EMIT_LOGRADOURO: TIBStringField;
    SelEmpresaNFE_EMIT_BAIRRO: TIBStringField;
    SelEmpresaNFE_EMIT_COMPLEMENTO: TIBStringField;
    SelEmpresaNFE_EMIT_NUMERO: TIntegerField;
    SelEmpresaNFE_EMIT_COD_CIDADE: TIntegerField;
    SelEmpresaNFE_EMIT_CIDADE: TIBStringField;
    SelEmpresaNFE_EMIT_UF: TIBStringField;
    SelEmpresaNFE_EMIT_EMAIL: TIBStringField;
    SelEmpresaNFE_EMAIL_PORTA: TIntegerField;
    SelEmpresaNFE_EMAIL_USUARIO: TIBStringField;
    SelEmpresaNFE_EMAIL_SENHA: TIBStringField;
    SelEmpresaNFE_EMAIL_SMTP_SEGURA: TIBStringField;
    SelEmpresaNFE_EMAIL_SMTP: TIBStringField;
    SelEmpresaNFE_EMIT_RAZAO_SOCIAL: TIBStringField;
    SelEmpresaEXIBE_INDICE_PDV: TIBStringField;
    SelEmpresaNFE_PATH_LEIAUTE_DANFE: TIBStringField;
    SelEmpresaBCH_FILIAL: TIntegerField;
    SelEmpresaBCH_INS_MUN: TSmallintField;
    SelEmpresaBCH_NOMECONTATO: TIBStringField;
    SelEmpresaNOME_CIDADE: TIBStringField;
    SelEmpresaNOME_LOGRADOURO: TIBStringField;
    SelEmpresaNOME_BAIRRO: TIBStringField;
    SelEmpresaBCH_PATH: TIBStringField;
    SelEmpresaOFC_EXIBE_COPIAS: TIBStringField;
    SelEmpresaOFC_EXIBE_MOVTO_AVULSO: TIBStringField;
    SelEmpresaOFC_EXIBE_VISUALIZACAO: TIBStringField;
    SelEmpresaOFC_EXIBE_VISITA_PREVENTIVA: TIBStringField;
    SelEmpresaOFC_EXIBE_MOVIMENTOS_OS: TIBStringField;
    SelEmpresaOFC_ENVIO_EMAIL_AUTOMATICO: TIBStringField;
    SelEmpresaOFC_CONTROLA_TEMPO_RESPOSTA: TIBStringField;
    SelEmpresaCM_LIB_PCT_VD_VISTA: TFloatField;
    SelEmpresaCM_LIB_PCT_VD_PRAZO: TFloatField;
    SelEmpresaPDV_QTDE_COD_BARRAS: TIBStringField;
    SelEmpresaOFC_EXIBE_DADOS_COMPLEMENTARES: TIBStringField;
    SelEmpresaOFC_EXIBE_NOTIFICACAO: TIBStringField;
    SelEmpresaPDV_IMP_CONVENIO: TIBStringField;
    SelEmpresaBLOQUEIA_MVB: TIBStringField;
    SelEmpresaCM_TX_ADMISTRACAO: TFloatField;
    SelEmpresaIMP_PROD_DUPLICATA: TIBStringField;
    SelEmpresaBCH_AUTO_IMPORTA: TIBStringField;
    SelEmpresaACT_MULTI_SELETOR: TIBStringField;
    SelEmpresaEDITA_NUM_NF: TIBStringField;
    SelEmpresaELIMINA_ZERO_PRD_SEM_GRADE: TIBStringField;
    SelEmpresaBCH_PATH_PEDIDOS: TIBStringField;
    SelEmpresaBCH_ATIVO: TIBStringField;
    SelEmpresaBCH_CONC_CODIGO_PRODUTO: TIBStringField;
    SelEmpresaBCH_HABILITA_SINC_AUT: TIBStringField;
    SelEmpresaALTERA_VLR_CNT_PAGAR: TIBStringField;
    SelEmpresaCTB_DT_AVISO_BANCARIO: TIBStringField;
    SelEmpresaDT_CX_MOVTO_ANTERIOR: TIBStringField;
    SelEmpresaBCH_EXIBE_DESCONTO: TIBStringField;
    SelEmpresaNFE_DESTACA_ICMS_SUB: TIBStringField;
    SelEmpresaNFE_CNAE: TIBStringField;
    SelEmpresaREGIME_TRIBUTARIO: TIBStringField;
    SelEmpresaFONES_SUPORTE: TIBStringField;
    SelEmpresaEST_MIN_CONTA_EMAIL_ENVIO: TIBStringField;
    SelEmpresaEST_MIN_SMTP_EMAIL_ENVIO: TIBStringField;
    SelEmpresaEST_MIN_LOGIN_EMAIL_ENVIO: TIBStringField;
    SelEmpresaEST_MIN_PASSWORD_EMAIL_ENVIO: TIBStringField;
    SelEmpresaEST_MIN_DESTINOS_EMAIL_ENVIO: TIBStringField;
    SelEmpresaMAP_HTML_VIEW: TMemoField;
    SelEmpresaOFC_GERA_FAT_AUTOMATICO: TIBStringField;
    SelEmpresaNFE_ENT_PATH_IMPORTACAO: TIBStringField;
    SelEmpresaNFE_ENT_CFOP_IMPORTACAO: TIntegerField;
    SelEmpresaNFE_ENT_CFOP_IMPORTACAO_INT: TIntegerField;
    SelEmpresaFIN_EXIBE_GRAFICOS: TIBStringField;
    SelEmpresaEXIBE_CTR_OBRAS: TIBStringField;
    SelEmpresaCTR_INSS: TFloatField;
    SelEmpresaCTR_IRPJ: TFloatField;
    SelEmpresaCTR_ISS: TFloatField;
    SelEmpresaCTR_PIS: TFloatField;
    SelEmpresaCTR_COFINS: TFloatField;
    SelEmpresaCTR_CSLL: TFloatField;
    SelEmpresaCC_INSS: TIntegerField;
    SelEmpresaCC_IRPJ: TIntegerField;
    SelEmpresaCC_ISS: TIntegerField;
    SelEmpresaCC_PIS: TIntegerField;
    SelEmpresaCC_COFINS: TIntegerField;
    SelEmpresaCC_CSLL: TIntegerField;
    SelEmpresaCTR_BASE_INSS_MUN: TFloatField;
    SelEmpresaCTR_BASE_INSS_NAC: TFloatField;
    SelEmpresaCTR_BASE_ISS_MUN: TFloatField;
    SelEmpresaCTR_BASE_ISS_NAC: TFloatField;
    QryParcReceber: TIBDataSet;
    QryParcReceberCODIGO: TIntegerField;
    QryParcReceberCOD_CONTRATO: TIntegerField;
    QryParcReceberDT_LANCTO: TDateTimeField;
    QryParcReceberDT_VENCTO: TDateTimeField;
    QryParcReceberVALOR: TFloatField;
    QryParcReceberCOD_PAGAR: TIntegerField;
    QryParcReceberEMPRESA: TIBStringField;
    QryParcReceberHISTORICO: TIBStringField;
    QryParcReceberIMPOSTO: TIBStringField;
    QryParcReceberCC_CUSTO: TIntegerField;
    QryParcReceberTIPO: TIBStringField;
    QryParcReceberPROVISIONADO: TIBStringField;
    QryParcReceberNOME_EMPRESA: TIBStringField;
    QryParcReceberCENTRO_CUSTO: TIBStringField;
    QryExisteValorCONT: TIntegerField;
    TVParcReceberPROVISIONADO: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActNextExecute(Sender: TObject);
    procedure ActPriorExecute(Sender: TObject);
    procedure ActLastExecute(Sender: TObject);
    procedure ActFirstExecute(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure cmbClienteExit(Sender: TObject);
    procedure OptAlterarClick(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure DtFimExit(Sender: TObject);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure ContratositensAfterPost(DataSet: TDataSet);
    procedure ContratosNewRecord(DataSet: TDataSet);
    procedure ContratositensBeforeInsert(DataSet: TDataSet);
    procedure ContratositensNewRecord(DataSet: TDataSet);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure ActDesmarcProvExecute(Sender: TObject);
    procedure ActMarcProvExecute(Sender: TObject);
    procedure ContratositensBeforeDelete(DataSet: TDataSet);
    procedure QryParcReceberNewRecord(DataSet: TDataSet);
    procedure QryParcReceberBeforeDelete(DataSet: TDataSet);
    procedure QryParcReceberBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: String;
  end;

var
  FrmContratoConstru: TFrmContratoConstru;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Marcas_Form, Grupos_Form, Reducoes_Form, Unidades_Form,
  Lotes_Form, LocalizarProd_DM, Estoque_Dm, Agrupador_Form, Grades_Form,
  Produtos_Tribut_Revenda_Form, Cadastros_Dm2, Clientes_Form, Produtos_Form,
  Tipo_Contrato_Form, Localizar_Cliente, Vendas_Dm, ContratosItens_Form,
  Localizar_Contratos, Financeiro_Dm2, Moedas_Form,
  Localizar_Contratos_Copias, Localizar_Contratos_Obras, Empresas_DM;

{$R *.DFM}

procedure TFrmContratoConstru.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DMApp.Transaction.CommitRetaining;
  FrmMain.PnlClient.Visible := True;
  Action := caFree;
  FrmContratoConstru := nil;
end;

procedure TFrmContratoConstru.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
       Navigator.DataSource.DataSet.Append;
       PgcPrincipal.ActivePageIndex := 0;
       cmbCliente.setfocus;
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
  cmbCliente.setfocus;
end;


procedure TFrmContratoConstru.ActExcluirExecute(Sender: TObject);
begin
    if (Application.Messagebox('Deseja realmente excluir este contrato?','Aviso',mb_iconquestion+mb_yesno) = id_yes) then
       Navigator.DataSource.Dataset.Delete;

  DMApp.Transaction.CommitRetaining;
end;

procedure TFrmContratoConstru.ActPostExecute(Sender: TObject);
begin
  if (DtInicio.date > DtFim.date) and (DtFim.date > 0) then
  begin
    Application.Messagebox('Intervalo de datas inconsistentes','Aviso',mb_iconerror+mb_ok);
    exit;
  end;

  if Navigator.DataSource.state in [ dsinsert, dsedit ]  then
    Navigator.DataSource.DataSet.Post;
end;

procedure TFrmContratoConstru.ActCancelExecute(Sender: TObject);
begin
  if (Navigator.DataSource.DataSet.State in dsEditModes) Then
  begin
    if (Application.Messagebox('Tem certeza que deseja Cancelar as informações ?','Atenção', mb_iconquestion + mb_yesno) = id_yes) then
      Navigator.DataSource.DataSet.Cancel;
  end
end;

procedure TFrmContratoConstru.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  PgcPrincipal.ActivePageIndex := 0;
  Contratos.Close;
  Contratos.Open;

  Contratositens.Close;
  Contratositens.Open;

  SelCliente.Close;
  SelCliente.Open;

  QryParcelamento.Close;
  QryParcelamento.Open;

  QryParcReceber.Close;
  QryParcReceber.Open;
  SelEmpresa.Close;
  SelEmpresa.ParamByName('cnpj').value := dmApp.cnpj;
  SelEmpresa.Open;


  GridItens.popupmenu := PopupItens;
end;

procedure TFrmContratoConstru.FormCreate(Sender: TObject);
begin

  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);


   FrmLocContratosObras := TFrmLocContratosObras.Create(Self);
end;

procedure TFrmContratoConstru.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
    Perform(WM_NEXTDLGCTL, 0, 0);

  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmContratoConstru.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmContratoConstru.DataSourceStateChange(Sender: TObject);
begin
     If Navigator.DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmContratoConstru.ActFecharExecute(Sender: TObject);
begin
   Close;
end;

procedure TFrmContratoConstru.ActNextExecute(Sender: TObject);
begin
  If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Eof )) then
     Navigator.DataSource.DataSet.Next ;
end;

procedure TFrmContratoConstru.ActPriorExecute(Sender: TObject);
begin
  If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof ))  then
     Navigator.DataSource.DataSet.Prior ;
end;

procedure TFrmContratoConstru.ActLastExecute(Sender: TObject);
begin
  If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof ))  then
     Navigator.DataSource.DataSet.Last ;
end;

procedure TFrmContratoConstru.ActFirstExecute(Sender: TObject);
begin
  If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof )) then
     Navigator.DataSource.DataSet.First   ;
end;

procedure TFrmContratoConstru.EdCodigoEnter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
end;

procedure TFrmContratoConstru.cmbClienteExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
end;

procedure TFrmContratoConstru.OptAlterarClick(Sender: TObject);
begin
  ActAlterar.execute;
end;

procedure TFrmContratoConstru.ActAlterarExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Edit;
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;

  DataSource.DataSet.Edit;
end;

procedure TFrmContratoConstru.DtFimExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
end;


procedure TFrmContratoConstru.GridItensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = 13 then
  begin
    If ( DataSource.State in [ dsinsert, dsedit ] ) then
       DataSource.DataSet.Post ;


    ActAlterar.Execute;
  end;
end;

procedure TFrmContratoConstru.ActLocalizarExecute(Sender: TObject);
var
  retorno : integer;
begin
  FrmLocContratosObras.showmodal;
  retorno := 0;
  if FrmLocContratosObras.modalresult = mrOk then
    retorno := FrmLocContratosObras.CampTrecho;

  if (retorno > 0) then
    Contratos.Locate('codigo',Retorno,[]);
end;

procedure TFrmContratoConstru.ContratositensAfterPost(DataSet: TDataSet);
begin
  Contratos.Refresh;
end;

procedure TFrmContratoConstru.ContratosNewRecord(DataSet: TDataSet);
begin
  ContratosATIVO.value := 'S';
  ContratosDATA.value := date;
  ContratosPCT_INSS.value :=  SelEmpresaCTR_INSS.value;
  ContratosPCT_ISS.value :=  SelEmpresaCTR_ISS.value;
  ContratosPCT_IRPJ.value :=  SelEmpresaCTR_IRPJ.value;
  ContratosPCT_PIS.value :=  SelEmpresaCTR_PIS.value;
  ContratosPCT_COFINS.value :=  SelEmpresaCTR_COFINS.value;
  ContratosPCT_CSLL.value :=  SelEmpresaCTR_CSLL.value;
  ContratosVINCULO_CONTRATO.value := 0;
  ContratosBASE_INSS_MUN.value :=  SelEmpresaCTR_BASE_INSS_MUN.value;
  ContratosBASE_ISS_MUN.value :=  SelEmpresaCTR_BASE_ISS_MUN.value;

  ContratosBASE_INSS_NAC.value :=  SelEmpresaCTR_BASE_INSS_NAC.value;
  ContratosBASE_ISS_NAC.value :=  SelEmpresaCTR_BASE_ISS_NAC.value;


end;

procedure TFrmContratoConstru.ContratositensBeforeInsert(
  DataSet: TDataSet);
begin
  if Contratos.State in [dsEdit,dsInsert] then
     Contratos.Post;
end;

procedure TFrmContratoConstru.ContratositensNewRecord(DataSet: TDataSet);
begin
   ContratositensCOD_CONTRATO.value := ContratosCODIGO.value;
   ContratositensATIVO.value := 'S';
   ContratositensDATA.value := DATE;
   ContratositensDATA_INICIO.value := ContratosDATA_INICIO.value;
   ContratositensDATA_VENCTO.value := ContratosDATA_VENCTO.value;
end;

procedure TFrmContratoConstru.cxButton1Click(Sender: TObject);
begin
  try
    QryExisteValor.Close;
    QryExisteValor.ParambyName('CODIGO').value := ContratosCODIGO.Value;
    QryExisteValor.Open;

    if QryExisteValorCONT.asFloat = 0 then
    begin
       Application.Messagebox('Valores de recebimentos já parcelados','Aviso',mb_iconerror+mb_ok);
       exit;
    end
    else if QryExisteValorCONT.Value = 1 then
    begin
      if  Application.Messagebox('Deseja gerar simulação do parcelamento?','Aviso',mb_iconquestion+mb_yesno) = id_no then
        exit;
    end
    else if QryExisteValorCONT.Value > 1 then
    begin
      Application.Messagebox('Defina apenas um registro recebimento para o provisionamento financeiro','Aviso',mb_iconerror+mb_ok);
      exit;
    end;

    spSimulaParcela.parambyname('cnpj').value := dmApp.cnpj;
    spSimulaParcela.parambyname('CODIGO_INT').value := ContratosCODIGO.value;
    spSimulaParcela.ExecProc;

    QryParcelamento.Close;
    QryParcelamento.Open;

    QryParcReceber.Close;
    QryParcReceber.Open;

    Application.Messagebox('Parcelamento simulado com sucesso','Aviso',mb_iconinformation+mb_ok);
  except on E:Exception Do
     begin
       MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
     end;
  end;
end;

procedure TFrmContratoConstru.cxButton2Click(Sender: TObject);
begin
 try
      QryExisteValorFin.Close;
      QryExisteValorFin.ParambyName('CODIGO').value := ContratosCODIGO.Value;
      QryExisteValorFin.Open;

      if QryExisteValorFinVALOR.asFloat = 0 then
      begin
         Application.Messagebox('Valores já provisionados no financeiro','Aviso',mb_iconerror+mb_ok);
         exit;
      end
      else
      begin
        if  Application.Messagebox('Deseja provisionar os valores no financeiro?','Aviso',mb_iconquestion+mb_yesno) = id_no then
          exit;
      end;

      spGeraFinanceiro.parambyname('cnpj').value := dmApp.cnpj;
      spGeraFinanceiro.parambyname('CPF_CNPJ').value := ContratosPESSOA_FJ.value;
      spGeraFinanceiro.parambyname('CODIGO_INT').value := ContratosCODIGO.value;
      spGeraFinanceiro.ExecProc;

      QryParcelamento.Close;
      QryParcelamento.Open;

      QryParcReceber.Close;
      QryParcReceber.Open;

      Contratositens.Close;
      Contratositens.Open;

      Application.Messagebox('Valores provisionados com sucesso','Aviso',mb_iconinformation+mb_ok);
  except on E:Exception Do
     begin
       MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
     end;
  end;
end;

procedure TFrmContratoConstru.ActDesmarcProvExecute(Sender: TObject);
begin
  if ContratositensPROVISIONADO.asString <> 'S' then
  begin
    Application.Messagebox('Item do contrato não esta provisionado','Aviso',mb_iconerror+mb_ok);
    exit;
  end;

  Contratositens.Edit;
  ContratositensPROVISIONADO.Value := 'N';
  ContratositensINDICE_PROVISIONAMENTO.value := 0;
  Contratositens.Post;
end;

procedure TFrmContratoConstru.ActMarcProvExecute(Sender: TObject);
begin
   if ContratositensPROVISIONADO.asString = 'S' then
  begin
    Application.Messagebox('Item do contrato já esta provisionado','Aviso',mb_iconerror+mb_ok);
    exit;
  end;

  Contratositens.Edit;
  ContratositensPROVISIONADO.Value := 'S';

  Contratositens.Post;
end;

procedure TFrmContratoConstru.ContratositensBeforeDelete(
  DataSet: TDataSet);
begin
  if ContratositensPROVISIONADO.value = 'S' then
  begin
    Application.Messagebox('Impossível excluir. Item do contrato já esta provisionado','Aviso',mb_iconerror+mb_ok);
    abort;
    exit;
  end;
end;

procedure TFrmContratoConstru.QryParcReceberNewRecord(DataSet: TDataSet);
begin
  QryParcReceberCOD_CONTRATO.value := ContratosCODIGO.value;
  QryParcReceberTIPO.value := 'C';
  QryParcReceberIMPOSTO.Value := 'RECEBIMENTO';
  QryParcReceberDT_LANCTO.value := date;
  QryParcReceberDT_VENCTO.value := ContratosDATA_VENCTO.value;
  QryParcReceberEMPRESA.Value := dmApp.cnpj;
end;

procedure TFrmContratoConstru.QryParcReceberBeforeDelete(
  DataSet: TDataSet);
begin
   if QryParcReceberPROVISIONADO.value = 'S' then
   begin
     Application.Messagebox('Impossível excluir. Registro de recebimento já esta provisionado','Aviso',mb_iconerror+mb_ok);
     abort;
     exit;
   end;
end;

procedure TFrmContratoConstru.QryParcReceberBeforePost(DataSet: TDataSet);
begin
  if QryParcReceberPROVISIONADO.OldValue = 'S' then
   begin
     Application.Messagebox('Impossível salvar alterações. Registro de recebimento já esta provisionado','Aviso',mb_iconerror+mb_ok);
     abort;
     exit;
   end;
end;

end.


