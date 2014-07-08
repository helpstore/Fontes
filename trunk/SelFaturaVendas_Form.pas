unit SelFaturaVendas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner,  StdCtrls, Db, IBCustomDataSet,
  Buttons,     
   IBquery,   rdprint, ImgList,
   cxPropertiesStore, FileCtrl,  ppDB, ppComm, ppRelatv,
  ppDBPipe, ppProd, ppClass, ppReport, ppBands, ppCache, ppCtrls, ppVar,
  ppPrnabl, ppModule, raCodMod, ppParameter, ppStrtch, ppSubRpt, Variants,
  Grids, DBGrids, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit, cxLabel,
  cxButtons, dxSkinscxPCPainter, cxPC,  cxGroupBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxImageComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxGridCustomView, cxGrid,
  cxGridCustomPopupMenu, cxGridPopupMenu, pcnConversao, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtonEdit;

type

  TFrmSelFaturaVendas = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarMgr: TdxBarManager;
    Actions: TActionList;
    Bevel1: TBevel;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DataSource: TDataSource;
    pc: TcxPageControl;
    TAB1: TcxTabSheet;
    Shape1: TShape;
    ActFaturaVenda: TAction;
    ActDevolveBalcao: TAction;
    DsFormaPgto: TDataSource;
    DsPlano: TDataSource;
    dsTipoDoctos: TDataSource;
    ActExtorna: TAction;
    TAB2: TcxTabSheet;
    ActImprimirNfCf: TAction;
    btnCancelaCupom: TcxButton;
    Bevel2: TBevel;
    RxLabel1: TcxLabel;
    BtnLeituraX: TcxButton;
    BtnLeituraZ: TcxButton;
    BtnGaveta: TcxButton;
    btnCancelaCupomItem: TcxButton;
    ActAtualizar: TAction;
    DsClientes: TDataSource;
    ActCancelaNota: TAction;
    Panel3: TPanel;
    BtnRecebimetos: TcxButton;
    BtnPagamentos: TcxButton;
    BtnFaturarVenda: TcxButton;
    RzBitBtn2: TcxButton;
    RzBitBtn3: TcxButton;
    BtnExtornaVenda: TcxButton;
    BtnDevolveBalcao: TcxButton;
    ActReceber: TAction;
    ActPagar: TAction;
    ActFichaFinanceira: TAction;
    RzBitBtn1: TcxButton;
    Trocas: TcxTabSheet;
    Panel5: TPanel;
    RzBitBtn6: TcxButton;
    RzBitBtn9: TcxButton;
    RzBitBtn10: TcxButton;
    RzBitBtn12: TcxButton;
    DsTroca: TDataSource;
    BtnEntSai: TcxButton;
    ActEntSai: TAction;
    BtnLeituraMemoriaFiscal: TcxButton;
    Bevel3: TBevel;
    RxLabel2: TcxLabel;
    BtnCancelaTroca: TcxButton;
    ActAnaliseCusto: TAction;
    ActCopiaNota: TAction;
    BtnAliquota: TcxButton;
    RzBitBtn8: TcxButton;
    ActFaturaTroca: TAction;
    btnReimprimeTroca: TcxButton;
    ActReimprimirTroca: TAction;
    GridImageList: TImageList;
    ActSelecionaVenda: TAction;
    Panel6: TPanel;
    LblCaixa: TcxLabel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Image1: TImage;
    Panel7: TPanel;
    Panel2: TPanel;
    Label1: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    lblnome: TcxLabel;
    lblTipoVenda: TcxLabel;
    ActConfCampos: TAction;
    stgFatProdCaixa: TcxPropertiesStore;
    Panel9: TPanel;
    Panel4: TPanel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    lblnomeTrc: TcxLabel;
    RzBitBtn7: TcxButton;
    BtnExportarExcel: TcxButton;
    BtnExportarHtml: TcxButton;
    ActExportarExcel: TAction;
    ActExportarHtml: TAction;
    btnSelecionaNF: TdxBarButton;
    tabEntFutura: TcxTabSheet;
    Panel10: TPanel;
    RzBitBtn22: TcxButton;
    RzBitBtn23: TcxButton;
    RzBitBtn24: TcxButton;
    Panel11: TPanel;
    Panel12: TPanel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label12: TcxLabel;
    lblnome2: TcxLabel;
    Label15: TcxLabel;
    dsFutura: TDataSource;
    RzBitBtn16: TcxButton;
    ActCarregar: TAction;
    RzBitBtn14: TcxButton;
    ActCancelarCarga: TAction;
    RzBitBtn4: TcxButton;
    ActConfirmarEntrega: TAction;
    pcFatura: TcxPageControl;
    tabVenda: TcxTabSheet;
    tabOrdemCarga: TcxTabSheet;
    Panel8: TPanel;
    dsOC: TDataSource;
    dsOCItens: TDataSource;
    RzGroupBox1: TcxGroupBox;
    RzPanel7: TPanel;
    RzPanel8: TPanel;
    RzPanel10: TPanel;
    RzPanel4: TPanel;
    RzPanel5: TPanel;
    RzBitBtn17: TcxButton;
    ActImpRequisicao: TAction;
    RzBitBtn18: TcxButton;
    ActDadosCarga: TAction;
    RzBitBtn19: TcxButton;
    ActAjusteCarga: TAction;
    Panel13: TPanel;
    GroupLeg: TcxGroupBox;
    RzPanel1: TPanel;
    RzPanel3: TPanel;
    RzPanel2: TPanel;
    RzBitBtn15: TcxButton;
    ActDevolucao: TAction;
    Panel18: TPanel;
    Panel14: TPanel;
    RzBitBtn20: TcxButton;
    ActAnaliseEntregaFinanceira: TAction;
    dsConsulta_Venda_Parc: TDataSource;
    dsConsulta_Venda_Itens: TDataSource;
    dsConsulta_Venda: TDataSource;
    ppConsulta_Venda_Parc: TppDBPipeline;
    ppConsulta_Venda_Itens: TppDBPipeline;
    ppConsulta_Venda: TppDBPipeline;
    rptAnaliseEntrega: TppReport;
    ppParameterList1: TppParameterList;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable7: TppSystemVariable;
    ppDBText134: TppDBText;
    ppLabel65: TppLabel;
    ppDBText135: TppDBText;
    ppDBText136: TppDBText;
    ppDBText137: TppDBText;
    ppLabel66: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    ppLabel67: TppLabel;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppLabel68: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppDBText146: TppDBText;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppLabel98: TppLabel;
    ppDBText131: TppDBText;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel69: TppLabel;
    ppDBText141: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel6: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine7: TppLine;
    ppSubReport2: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel11: TppLabel;
    ppLine5: TppLine;
    ppLine14: TppLine;
    ppLabel10: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    ppLine13: TppLine;
    ppFooterBand1: TppFooterBand;
    raCodeModule1: TraCodeModule;
    ppLine17: TppLine;
    ppLabel13: TppLabel;
    ppLine18: TppLine;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine6: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine1: TppLine;
    GroupBox1: TGroupBox;
    btnExporta: TdxBarButton;
    btnConfigura: TdxBarButton;
    BtnCondicional: TcxButton;
    ActConsultarNFe: TAction;
    RzBitBtn5: TcxButton;
    RzBitBtn11: TcxButton;
    GridTroca: TcxGrid;
    TVTroca: TcxGridDBBandedTableView;
    LVTroca: TcxGridLevel;
    TVTrocaPESSOA_FJ: TcxGridDBBandedColumn;
    TVTrocaNOME: TcxGridDBBandedColumn;
    TVTrocaCODIGO: TcxGridDBBandedColumn;
    TVTrocaNOMEVENDEDOR: TcxGridDBBandedColumn;
    TVTrocaTOTAL: TcxGridDBBandedColumn;
    TVTrocaFECHADO: TcxGridDBBandedColumn;
    TVTrocaVENDEDOR: TcxGridDBBandedColumn;
    TVTrocaUSUARIO: TcxGridDBBandedColumn;
    TVTrocaCONTA_CAIXA: TcxGridDBBandedColumn;
    TVTrocaVLR_TOTAL: TcxGridDBBandedColumn;
    TVTrocaDESC_ACRESC: TcxGridDBBandedColumn;
    TVTrocaOBSERVACAO: TcxGridDBBandedColumn;
    TVTrocaENVIADA_CX: TcxGridDBBandedColumn;
    TVTrocaCANCELADA: TcxGridDBBandedColumn;
    TVTrocaTOTAL_2: TcxGridDBBandedColumn;
    TVTrocaDESC_ACRESC_2: TcxGridDBBandedColumn;
    TVTrocaVLR_TOTAL_2: TcxGridDBBandedColumn;
    TVTrocaLIQUIDO: TcxGridDBBandedColumn;
    TVTrocattl_liquido: TcxGridDBBandedColumn;
    TVTrocaDATA: TcxGridDBBandedColumn;
    TVTrocaDATA_CAIXA: TcxGridDBBandedColumn;
    TVTrocaNOME_CONSUMIDOR: TcxGridDBBandedColumn;
    gridOC: TcxGrid;
    TVOC: TcxGridDBBandedTableView;
    LVOC: TcxGridLevel;
    TVOCCNPJ: TcxGridDBBandedColumn;
    TVOCCODIGO_VND: TcxGridDBBandedColumn;
    TVOCCODIGO: TcxGridDBBandedColumn;
    TVOCDATA: TcxGridDBBandedColumn;
    TVOCSTATUS: TcxGridDBBandedColumn;
    TVOCPESO_BRUTO: TcxGridDBBandedColumn;
    TVOCPESO_LIQUIDO: TcxGridDBBandedColumn;
    TVOCUSUARIO: TcxGridDBBandedColumn;
    TVOCDT_ENTREGA: TcxGridDBBandedColumn;
    TVOCHR_ENTREGA: TcxGridDBBandedColumn;
    TVOCNOME_RECEBEDOR: TcxGridDBBandedColumn;
    TVOCLOGRADOURO: TcxGridDBBandedColumn;
    TVOCNUMERO: TcxGridDBBandedColumn;
    TVOCBAIRRO: TcxGridDBBandedColumn;
    TVOCCOMPLEMENTO: TcxGridDBBandedColumn;
    TVOCCEP: TcxGridDBBandedColumn;
    TVOCCIDADE: TcxGridDBBandedColumn;
    TVOCUF: TcxGridDBBandedColumn;
    TVOCOBSERVACAO: TcxGridDBBandedColumn;
    TVOCPSA_NOME_RAZAO: TcxGridDBBandedColumn;
    TVOCPSA_FANTASIA: TcxGridDBBandedColumn;
    TVOCVD_PESSOA_FJ: TcxGridDBBandedColumn;
    TVOCVD_CODIGO: TcxGridDBBandedColumn;
    TVOCVD_DATA: TcxGridDBBandedColumn;
    TVOCVD_DATA_CAIXA: TcxGridDBBandedColumn;
    TVOCVD_OBSERVACAO: TcxGridDBBandedColumn;
    TVOCVD_VOLUME: TcxGridDBBandedColumn;
    TVOCVD_PESO: TcxGridDBBandedColumn;
    TVOCVD_NOME_CONSUMIDOR: TcxGridDBBandedColumn;
    TVOCPSA_CELULAR: TcxGridDBBandedColumn;
    TVOCPSA_FAX: TcxGridDBBandedColumn;
    TVOCPSA_FONE: TcxGridDBBandedColumn;
    TVOCPSA_CPF_CGC: TcxGridDBBandedColumn;
    TVOCPSA_RG_IE: TcxGridDBBandedColumn;
    gridOCItens: TcxGrid;
    TVOCItens: TcxGridDBBandedTableView;
    TVOCItensCARREGADO: TcxGridDBBandedColumn;
    TVOCItensCNPJ: TcxGridDBBandedColumn;
    TVOCItensCODIGO: TcxGridDBBandedColumn;
    TVOCItensENTREGUE: TcxGridDBBandedColumn;
    TVOCItensGRADE: TcxGridDBBandedColumn;
    TVOCItensNOME_PRODUTO: TcxGridDBBandedColumn;
    TVOCItensNUMERO: TcxGridDBBandedColumn;
    TVOCItensPRODUTO: TcxGridDBBandedColumn;
    TVOCItensQUANTIDADE: TcxGridDBBandedColumn;
    TVOCItensSEQUENCIA: TcxGridDBBandedColumn;
    TVOCItensUNIDADE: TcxGridDBBandedColumn;
    TVOCItensDEVOLVIDO: TcxGridDBBandedColumn;
    TVOCItensCODIGO_LOTE: TcxGridDBBandedColumn;
    TVOCItensLOTE: TcxGridDBBandedColumn;
    TVOCItensMATERIAL: TcxGridDBBandedColumn;
    TVOCItensCOR: TcxGridDBBandedColumn;
    TVOCItensPERFIL: TcxGridDBBandedColumn;
    LVOCItens: TcxGridLevel;
    GridEntregaFutura: TcxGrid;
    TVEntregaFutura: TcxGridDBBandedTableView;
    LVEntregaFutura: TcxGridLevel;
    TVEntregaFuturaSELECIONADA: TcxGridDBBandedColumn;
    TVEntregaFuturaPESSOA_FJ: TcxGridDBBandedColumn;
    TVEntregaFuturaNOME: TcxGridDBBandedColumn;
    TVEntregaFuturaCODIGO: TcxGridDBBandedColumn;
    TVEntregaFuturaDATA: TcxGridDBBandedColumn;
    TVEntregaFuturaTOTAL: TcxGridDBBandedColumn;
    TVEntregaFuturaFECHADA: TcxGridDBBandedColumn;
    TVEntregaFuturaHISTORICO: TcxGridDBBandedColumn;
    TVEntregaFuturaVENDEDOR: TcxGridDBBandedColumn;
    TVEntregaFuturaNOMEVENDEDOR: TcxGridDBBandedColumn;
    TVEntregaFuturaUSUARIO: TcxGridDBBandedColumn;
    TVEntregaFuturaDATA_CAIXA: TcxGridDBBandedColumn;
    TVEntregaFuturaCONTA_CAIXA: TcxGridDBBandedColumn;
    TVEntregaFuturaNUM_NF: TcxGridDBBandedColumn;
    TVEntregaFuturaNUM_CUPOM: TcxGridDBBandedColumn;
    TVEntregaFuturaNATUREZA: TcxGridDBBandedColumn;
    TVEntregaFuturaNOMENATUREZA: TcxGridDBBandedColumn;
    TVEntregaFuturaTIPO_VENDA: TcxGridDBBandedColumn;
    TVEntregaFuturaNOME_CONSUMIDOR: TcxGridDBBandedColumn;
    TVEntregaFuturaVLR_TOTAL: TcxGridDBBandedColumn;
    TVEntregaFuturaDESC_ACRES: TcxGridDBBandedColumn;
    TVEntregaFuturaOBSERVACAO: TcxGridDBBandedColumn;
    TVEntregaFuturaORCAMENTO: TcxGridDBBandedColumn;
    TVEntregaFuturaLOCAL: TcxGridDBBandedColumn;
    TVEntregaFuturaCANCELADA: TcxGridDBBandedColumn;
    TVEntregaFuturaCARGA: TcxGridDBBandedColumn;
    TVEntregaFuturaSERIE: TcxGridDBBandedColumn;
    TVEntregaFuturaSTATUS_CARREGAMENTO: TcxGridDBBandedColumn;
    TVEntregaFuturaORDEM_CARGA: TcxGridDBBandedColumn;
    TVEntregaFuturaENTREGA_FUTURA: TcxGridDBBandedColumn;
    PopupGrid: TcxGridPopupMenu;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Grid: TcxGrid;
    GridTV: TcxGridDBBandedTableView;
    GridTVCODIGO: TcxGridDBBandedColumn;
    GridTVFECHADA: TcxGridDBBandedColumn;
    GridTVHISTORICO: TcxGridDBBandedColumn;
    GridTVPESSOA_FJ: TcxGridDBBandedColumn;
    GridTVUSUARIO: TcxGridDBBandedColumn;
    GridTVVENDEDOR: TcxGridDBBandedColumn;
    GridTVNUM_NF: TcxGridDBBandedColumn;
    GridTVNUM_NF_XML: TcxGridDBBandedColumn;
    GridTVNUM_CUPOM: TcxGridDBBandedColumn;
    GridTVNATUREZA: TcxGridDBBandedColumn;
    GridTVTIPO_VENDA: TcxGridDBBandedColumn;
    GridTVNOME_CONSUMIDOR: TcxGridDBBandedColumn;
    GridTVORCAMENTO: TcxGridDBBandedColumn;
    GridTVLOCAL: TcxGridDBBandedColumn;
    GridTVNOME: TcxGridDBBandedColumn;
    GridTVTOTAL: TcxGridDBBandedColumn;
    GridTVVLR_TOTAL: TcxGridDBBandedColumn;
    GridTVDESC_ACRES: TcxGridDBBandedColumn;
    GridTVNOMENATUREZA: TcxGridDBBandedColumn;
    GridTVNOMEVENDEDOR: TcxGridDBBandedColumn;
    GridTVDATA_CAIXA: TcxGridDBBandedColumn;
    GridTVCONTA_CAIXA: TcxGridDBBandedColumn;
    GridTVCANCELADA: TcxGridDBBandedColumn;
    GridTVCARGA: TcxGridDBBandedColumn;
    GridTVSERIE: TcxGridDBBandedColumn;
    GridTVOBSERVACAO: TcxGridDBBandedColumn;
    GridTVSELECIONADA: TcxGridDBBandedColumn;
    GridTVID_AGRUPADOR: TcxGridDBBandedColumn;
    GridTVPCT_COMISSAO: TcxGridDBBandedColumn;
    GridTVDATA: TcxGridDBBandedColumn;
    GridTVHORA: TcxGridDBBandedColumn;
    GridTVNFE_CHAVE: TcxGridDBBandedColumn;
    GridTVNFE_SELECIONADO: TcxGridDBBandedColumn;
    GridTVNFE_VALIDADA: TcxGridDBBandedColumn;
    GridTVNFE_ASSINADA: TcxGridDBBandedColumn;
    GridTVNFE_TRANSMITIDA: TcxGridDBBandedColumn;
    GridTVNFE_AUTORIZADA: TcxGridDBBandedColumn;
    GridTVNFE_DANFE_IMPRESSO: TcxGridDBBandedColumn;
    GridTVN_SEQ_ECF: TcxGridDBBandedColumn;
    GridTVN_SERIE_ECF: TcxGridDBBandedColumn;
    GridTVNFE_PROTOCOLO: TcxGridDBBandedColumn;
    GridTVNFE_RECIBO: TcxGridDBBandedColumn;
    GridTVNFE_XML: TcxGridDBBandedColumn;
    GridTVENVIADA_CX: TcxGridDBBandedColumn;
    GridTVBASE_ICM: TcxGridDBBandedColumn;
    GridTVICM: TcxGridDBBandedColumn;
    GridTVBASE_ICM_SUBST: TcxGridDBBandedColumn;
    GridTVVALOR_ICM_SUBST: TcxGridDBBandedColumn;
    GridTVFRETE: TcxGridDBBandedColumn;
    GridTVSEGURO: TcxGridDBBandedColumn;
    GridTVDESPESAS: TcxGridDBBandedColumn;
    GridTVIPI: TcxGridDBBandedColumn;
    GridTVTOTAL_NOTA: TcxGridDBBandedColumn;
    GridTVSTATUS_CARREGAMENTO: TcxGridDBBandedColumn;
    GridTVORDEM_CARGA: TcxGridDBBandedColumn;
    GridTVPSA_ATIVIDADE: TcxGridDBBandedColumn;
    GridTVPSA_BAIRRO: TcxGridDBBandedColumn;
    GridTVPSA_CELULAR: TcxGridDBBandedColumn;
    GridTVPSA_CEP: TcxGridDBBandedColumn;
    GridTVPSA_CIDADE: TcxGridDBBandedColumn;
    GridTVPSA_COMPLEMENTO: TcxGridDBBandedColumn;
    GridTVPSA_CONTATO: TcxGridDBBandedColumn;
    GridTVPSA_CONVENIO: TcxGridDBBandedColumn;
    GridTVPSA_CPF_CGC: TcxGridDBBandedColumn;
    GridTVPSA_DT_CADASTRO: TcxGridDBBandedColumn;
    GridTVPSA_DT_NASCIMENTO: TcxGridDBBandedColumn;
    GridTVPSA_EMISSOR: TcxGridDBBandedColumn;
    GridTVPSA_ENDERECO: TcxGridDBBandedColumn;
    GridTVPSA_FANTASIA: TcxGridDBBandedColumn;
    GridTVPSA_FAX: TcxGridDBBandedColumn;
    GridTVPSA_FONE: TcxGridDBBandedColumn;
    GridTVPSA_INSC_MUNIC: TcxGridDBBandedColumn;
    GridTVPSA_NOME_RAZAO: TcxGridDBBandedColumn;
    GridTVPSA_NUMERO: TcxGridDBBandedColumn;
    GridTVPSA_PESSOA: TcxGridDBBandedColumn;
    GridTVPSA_RG_IE: TcxGridDBBandedColumn;
    GridTVPSA_UF: TcxGridDBBandedColumn;
    GridTVLGD_NOME: TcxGridDBBandedColumn;
    GridTVBAI_NOME: TcxGridDBBandedColumn;
    GridTVCID_NOME: TcxGridDBBandedColumn;
    GridTVENTREGA_FUTURA: TcxGridDBBandedColumn;
    GridTVATI_NOME: TcxGridDBBandedColumn;
    GridTVREG_NOME: TcxGridDBBandedColumn;
    GridTVPSA_EMAIL: TcxGridDBBandedColumn;
    GridTVCONT_CARTAO: TcxGridDBBandedColumn;
    GridTVCONT_CHEQUE: TcxGridDBBandedColumn;
    GridTVVD_CHEQUE: TcxGridDBBandedColumn;
    GridTVVD_CARTAO: TcxGridDBBandedColumn;
    GridTVVD_DINHEIRO: TcxGridDBBandedColumn;
    GridTVVD_ENTRADA: TcxGridDBBandedColumn;
    GridTVDIVERG_CARTAO: TcxGridDBBandedColumn;
    GridTVDIVERG_CHEQUE: TcxGridDBBandedColumn;
    GridTVDT_EMISSAO_NF: TcxGridDBBandedColumn;
    GridTVNFE_IMPRESSAO: TcxGridDBBandedColumn;
    GridLV: TcxGridLevel;
    edNDocto: TcxTextEdit;
    edDtInicial: TcxDateEdit;
    edDtFinal: TcxDateEdit;
    edtDataCaixaIni: TcxDateEdit;
    edtDataCaixaFim: TcxDateEdit;
    EdTipo: TcxComboBox;
    cbxTipoVenda: TcxComboBox;
    DATANF: TcxDateEdit;
    CmbCliente: TcxButtonEdit;
    CmbClienteTrc: TcxButtonEdit;
    edDtInicialTrc: TcxDateEdit;
    edNDoctoTrc: TcxTextEdit;
    EdTipoTrc: TcxComboBox;
    CmbCliente2: TcxButtonEdit;
    edDtFutura: TcxDateEdit;
    edtVenda: TcxTextEdit;
    cmbStatusCarregamento: TcxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure EdDataNotaKeyPress(Sender: TObject; var Key: Char);
    procedure Panel2Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure GRIDExit(Sender: TObject);
    procedure ActFaturaVendaExecute(Sender: TObject);
    procedure ActDevolveBalcaoExecute(Sender: TObject);
    procedure ActExtornaExecute(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure ActImprimirNfCfExecute(Sender: TObject);
    procedure btnCancelaCupomClick(Sender: TObject);
    procedure BtnLeituraXClick(Sender: TObject);
    procedure BtnLeituraZClick(Sender: TObject);
    procedure btnCancelaCupomItemClick(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure CmbClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure HabilitaAction;
    procedure CmbClienteEnter(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure EdTipoEnter(Sender: TObject);
    procedure CmbClienteExit(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure ActCancelaNotaExecute(Sender: TObject);
    procedure ActReceberExecute(Sender: TObject);
    procedure ActPagarExecute(Sender: TObject);
    procedure BtnGavetaClick(Sender: TObject);
    procedure CmbClienteTrcButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure Panel4Exit(Sender: TObject);
    procedure ActEntSaiExecute(Sender: TObject);
    procedure GRIDTROCA_KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnLeituraMemoriaFiscalClick(Sender: TObject);
    procedure BtnCondicionalClick(Sender: TObject);
    procedure ActAnaliseCustoExecute(Sender: TObject);
    procedure BtnAliquotaClick(Sender: TObject);
    procedure RzBitBtn8Click(Sender: TObject);
    procedure ActFaturaTrocaExecute(Sender: TObject);
    procedure ActReimprimirTrocaExecute(Sender: TObject);
    procedure ActSelecionaVendaExecute(Sender: TObject);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure Panel12Enter(Sender: TObject);
    procedure Panel12Exit(Sender: TObject);
    procedure dsFuturaDataChange(Sender: TObject; Field: TField);
    procedure ActCarregarExecute(Sender: TObject);
    procedure CmbCliente2ButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbCliente2Exit(Sender: TObject);
    procedure ActCancelarCargaExecute(Sender: TObject);
    procedure ActConfirmarEntregaExecute(Sender: TObject);
    procedure tabOrdemCargaEnter(Sender: TObject);
    procedure tabVendaEnter(Sender: TObject);
    procedure dsOCDataChange(Sender: TObject; Field: TField);
    procedure tabEntFuturaEnter(Sender: TObject);
    procedure pcFaturaChange(Sender: TObject);
    procedure ActImpRequisicaoExecute(Sender: TObject);
    procedure ActDadosCargaExecute(Sender: TObject);
    procedure ActAjusteCargaExecute(Sender: TObject);
    procedure ActDevolucaoExecute(Sender: TObject);
    procedure ActAnaliseEntregaFinanceiraExecute(Sender: TObject);
    procedure RzBitBtn5Click(Sender: TObject);
    procedure ActConsultarNFeExecute(Sender: TObject);
    procedure RzBitBtn11Click(Sender: TObject);
    procedure TVOCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TVTrocaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridTVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridOCMouseEnter(Sender: TObject);
    procedure GridTVCODIGOCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure TVTrocattl_liquidoCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure GridTVDIVERG_CARTAOCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure GridTVDIVERG_CHEQUECustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure GridTVNFE_AUTORIZADACustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure edNDoctoEnter(Sender: TObject);
  private
    { Private declarations }

    Procedure Filtrar;
    Procedure FiltrarTroca;
    Procedure FiltrarEntregaFutura;
    procedure CANCELACUPOMITEM;
    function  RetornaSelecao:boolean;
    procedure verificalogin;
  public
    ValorCartao : Real;
    PessoaNFGraf : Integer ;
    IDNFGraf : Integer;
    Tipo_entrega : integer;
    { Public declarations }
  end;


var
  FrmSelFaturaVendas: TFrmSelFaturaVendas;
  Numero: Integer;

implementation

uses Vendas_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Application_DM,
     FaturaVenda_Form,
     Cadastros_DM,
     Cheque_Venda_Form,
     EnviaCaixa_FRel,
     TipoFaturaVenda_Form,
     Localizar_Cliente,
     Financeiro_Dm,
     Baixa_Pagar_Multiplos_Form,
     Pendencias_Form,
     Cartao_Venda_Form,
     NotaPromissoria_FRel,
     FaturaTroca_Form,
     Caixa_Dm,
     Tipo_Impressora_Form,
     EnviaTrocaCaixa_FRel,
     EntraNumeroInteiro_Form,
     QrepCondiconal_Form,
     Baixa_Receber_Multiplos_Parc_Form,
     MensagemClassificacao_Form,
     Servicos_DM, CaixaSaidas_Form, Receber_Form, Pagar_Form,
  Localizar_Fornecedor, Vendas_DM2, OrdemCarga_DM, CarregarItens,
  Cadastros_Dm2;

  {$R *.DFM}

Procedure TFrmSelFaturaVendas.Filtrar;
Var
   Cont: Integer;
   sFiltro : string;
Begin
  if not (dmApp.Transaction.Active) then
    dmApp.Transaction.StartTransaction;

  dmVendas.SelFaturaVendas.Close;
  dmVendas.SelFaturaVendas.Transaction.Commit;


  sFiltro := '';
  With DmVendas do
  begin
    SelFaturaVendas.Close;
    //---------------------aqui o filtro pega somente as abertas--------------------//
    If EdTipo.Text = 'Abertas'  Then
    begin
      SelFaturaVendas.ParamByName ('TP').AsString := 'N';
      ActFaturaVenda.Enabled        := true ;
      ActFaturaTroca.Enabled        := true ;
      ActDevolveBalcao.Enabled := ActDevolveBalcao.tag = 1 ;
      ActExtorna.Enabled       := false;
      ActCancelaNota.Enabled   := false;
      ActImprimirNfCf.Enabled  := false;
    end
    Else//---------------------aqui o filtro fechadas--------------------//
    begin
      If EdTipo.Text = 'Fechadas' Then
      begin
        SelFaturaVendas.ParamByName ('TP').AsString := 'S';
        ActFaturaVenda.Enabled        := false ;
        ActFaturaTroca.Enabled        := false ;
        ActDevolveBalcao.Enabled := false ;
        ActExtorna.Enabled       := ActExtorna.Tag = 1   ;
        ActCancelaNota.Enabled   := ActCancelaNota.Tag = 1  ;
        ActImprimirNfCf.Enabled  := ActImprimirNfCf.Tag = 1  ;
      end
      else
      begin
        SelFaturaVendas.ParamByName ( 'TP' ).AsString := 'S';
        ActFaturaVenda.Enabled        := false ;
        ActFaturaTroca.Enabled        := false ;
        ActDevolveBalcao.Enabled := false ;
        ActExtorna.Enabled       := false ;
        ActImprimirNfCf.Enabled  := false;
      end;
    end;

     //-------- número de docto---------//
    If Trim(edNDocto.Text) <> '' Then
       SelFaturaVendas.ParamByName('I_CODIGO').value := StrToInt(trim(edNDocto.Text))
    else
      SelFaturaVendas.ParamByName('I_CODIGO').value :=  0;


    //-------- Filtro de data---------//
    If edDtInicial.date > 0 Then
      SelFaturaVendas.ParamByName('I_DATA_INI').AsDate := edDtInicial.Date
    else
      SelFaturaVendas.ParamByName('I_DATA_INI').Value := Null ;

   //-------- Filtro de data FIM---------//
    If edDtFinal.date > 0 Then
      SelFaturaVendas.ParamByName('I_DATA_FIM').AsDate := edDtFinal.Date
    else
      SelFaturaVendas.ParamByName('I_DATA_FIM').Value := Null;


    //-------- Filtro de data de caixa---------//
    If edtDataCaixaIni.date > 0 Then
      SelFaturaVendas.ParamByName('I_DATA_CAIXA_INI').AsDate := edtDataCaixaIni.Date
    else
      SelFaturaVendas.ParamByName('I_DATA_CAIXA_INI').Value := Null;

    //-------- Filtro de data de caixa---------//
    If edtDataCaixaFim.date > 0 Then
      SelFaturaVendas.ParamByName('I_DATA_CAIXA_FIM').AsDate := edtDataCaixaFim.Date
    else
      SelFaturaVendas.ParamByName('I_DATA_CAIXA_FIM').Value := Null;


    //-------- tipo de venda (codicional ou normal)---------//
    if cbxTipoVenda.Visible then
    begin
      // venda condicional
      if cbxTipoVenda.ItemIndex = 1 then
        SelFaturaVendas.ParamByName('I_TIPO_VENDA').value := 'Con'
      else    // venda Entrega Futura
      if cbxTipoVenda.ItemIndex = 2 then
        SelFaturaVendas.ParamByName('I_TIPO_VENDA').value := 'EnF'
      else //venda comum sem ser condicional
        SelFaturaVendas.ParamByName('I_TIPO_VENDA').value :='Ven';
    end;

    //-------- filtrando por cliente---------//
    if trim(CmbCliente.Text) <> '' Then
      SelFaturaVendas.ParamByName('I_CLIENTE').value := StrToInt(trim(CmbCliente.Text))
    else
      SelFaturaVendas.ParamByName('I_CLIENTE').Value := 0;




    SelFaturaVendas.open;

    dmApp.Perfil_Computador.Close;
    dmApp.Perfil_Computador.Open;
    dmApp.Perfil_Computador.FetchAll;
  end;
End;

Procedure TFrmSelFaturaVendas.FiltrarTroca;
Var
   Cont: Integer;
   sql : string;
Begin
  //
  If DsTroca.DataSet.Active Then
     DsTroca.DataSet.Close;

  With DmVendas do
  begin
    if (trim(CmbCliente.text) <> '' ) then
      sql := ' pessoa_fj = '+trim(CmbCliente.text);

    if (edDtInicialTrc.Date > 0) then
    begin
      if (sql <> '') then
        sql := sql + ' and ';

      sql := ' data = '+DateToStr(edDtInicialTrc.date);
    end;

    if (edNDoctoTrc.text <> '') then
    begin
      if (sql <> '') then
        sql := sql + ' and ';

      sql := ' codigo = '+edNDoctoTrc.text;
    end;

    if (sql <> '') then
      sql := ' where '+sql;

    SelFaturaTrocas.close;
    SelFaturaTrocas.sql.text := ' SELECT * FROM VER_TROCAS ( :CNPJ, :TP ) ' + sql + ' order by NOME ';

    If EdTipoTrc.Text = 'Abertas'  Then
    begin
      SelFaturaTrocas.ParamByName ( 'TP' ).AsString := 'N';

      case pc.ActivePageIndex of
        0: ActFaturaVenda.Enabled        := true ;
        1: ActFaturaTroca.Enabled        := true ;
      end;

      ActDevolveBalcao.Enabled := ActDevolveBalcao.tag = 1 ;
      ActExtorna.Enabled       := false;

      if DmaPP.TIPO_EMPRESA = 'Distribuidora' then
        ActImprimirNfCf.Enabled  := True
      else
        ActImprimirNfCf.Enabled  := False;

      ActCancelaNota.Enabled   := false;
    end
    else
    begin
      SelFaturaTrocas.ParamByName ( 'TP' ).AsString := 'S';
      ActFaturaVenda.Enabled        := false ;
      ActFaturaTroca.Enabled        := false ;
      ActDevolveBalcao.Enabled := false ;
      ActExtorna.Enabled       := true  ;
      ActCancelaNota.Enabled   := true  ;

      ActImprimirNfCf.Enabled  := true  ;
    end;
    dmVendas.SelFaturaTrocas.Open;
 end;
End;

procedure TFrmSelFaturaVendas.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
     If MessageDlg('Deseja Sair da Tela de Faturamento?', mtConfirmation, [mbOK, mbCancel], 0) = MROK
     THEN BEGIN
          //
          DataSource.DataSet.Close;
          dsFutura.DataSet.Close;
          dsClientes.DataSet.Close;
          DsFormaPgto.DataSet.Close;
          DsPlano.DataSet.Close;
          dsTipoDoctos.DataSet.Close;


          FechaPortaSerial ;

          DmaPP.CaixaAtivo := False ;


          Frm_Localizar_Cliente.Free ;
          Frm_Localizar_Cliente := Nil ;

          //
          Action := caFree;
          FrmSelFaturaVendas := Nil;

          dmApp.ZeraCaixaUsuario(owner);

          FrmMain.PnlClient.Visible := True;

          FrmFaturaVenda.Free;
          FrmFaturaVenda := Nil;

          FrmFaturaTroca.Free;
          FrmFaturaTroca := Nil;
     END
     ELSE BEGIN
          Action := CaNone ;
     END;

     dmApp.ManFilterGrid(TVTroca,'C:\Sistemas\HelpStore\filtros\FiltroGrdFatTrocaCaixa.flt');
     dmApp.ManFilterGrid(GridTV,'C:\Sistemas\HelpStore\filtros\FiltroGrdFatProdCaixa.flt');
     dmApp.ManFilterGrid(TVEntregaFutura,'C:\Sistemas\HelpStore\filtros\FiltroGrdFatEntrFuturaCaixa.flt');

     dmVendas.SelFaturaVendas.Close;

  if  (dmApp.Transaction.Active) then
     dmApp.Transaction.Commit;
end;

procedure TFrmSelFaturaVendas.FormShow(Sender: TObject);
begin
  if not (dmApp.Transaction.Active) then
    dmApp.Transaction.StartTransaction;

  IniciaComponentes ( Self as TForm );
  FrmSelFaturaVendas.PopupMenu := nil;
  {If DmaPP.TIPO_EMPRESA = 'Distribuidora' Then
  begin
    DATANF.Visible    := TRUE ;
    lBLDATANF.Visible := TRUE ;

  end
  else
  begin
    cbxTipoVenda.Visible := true;
    cbxTipoVenda.taborder := 1;
    lblTipoVenda.Visible := true;

  end;}

  cbxTipoVenda.ItemIndex := 0;
  Try

    DmaPP.CaixaAtivo := True ;

    If Not(dsClientes.DataSet.Active) Then
       dsClientes.DataSet.Open;

    If Not(DsFormaPgto.DataSet.Active) Then
       DsFormaPgto.DataSet.Open;

    If Not(DsPlano.DataSet.Active) Then
       DsPlano.DataSet.Open;

    If Not(dsTipoDoctos.DataSet.Active) Then
       dsTipoDoctos.DataSet.Open;


    Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

    If DmApp.PDV_ECF = 'S'
    THEN BEGIN
//         AbrePorta ;
    END
    ELSE BEGIN
         btnCancelaCupomItem.Enabled      := False ;
         btnCancelaCupom.Enabled          := False ;
         BtnLeituraX.Enabled              := False ;
         BtnLeituraMemoriaFiscal.Enabled  := False ;
         BtnLeituraZ.Enabled              := False ;
         BtnGaveta.Enabled                := False ;
    END;

    edDtInicial.date := DmApp.Data_Servidor ;

  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
  EdTipo.Text := 'Abertas' ;

  ActFaturaVenda.Enabled        := false ;
  ActFaturaTroca.Enabled        := false ;
  ActDevolveBalcao.Enabled := false ;
  ActExtorna.Enabled       := false ;

  edNdocto.SetFocus;
end;

procedure TFrmSelFaturaVendas.FormCreate(Sender: TObject);
begin
  Pc.ActivePageIndex := 0;
  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);


  FrmFaturaVenda := TFrmFaturaVenda.Create(Self);
  FrmFaturaTroca := TFrmFaturaTroca.Create(Self);

  dmApp.ManFilterGrid(TVTroca,'C:\Sistemas\HelpStore\filtros\FiltroGrdFatTrocaCaixa.flt',false);
  dmApp.ManFilterGrid(GridTV,'C:\Sistemas\HelpStore\filtros\FiltroGrdFatProdCaixa.flt',false);
  dmApp.ManFilterGrid(TVEntregaFutura,'C:\Sistemas\HelpStore\filtros\FiltroGrdFatEntrFuturaCaixa.flt',false);

  DATANF.date := date;
end;


procedure TFrmSelFaturaVendas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = pc Then
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmSelFaturaVendas.pnlClientResize(Sender: TObject);
begin
//  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelFaturaVendas.DataSourceStateChange(Sender: TObject);
begin
//
end;

procedure TFrmSelFaturaVendas.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmSelFaturaVendas.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmSelFaturaVendas.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmSelFaturaVendas.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = '-' Then
     Begin
       (Sender as TcxDateEdit).Date := (Sender as TcxDateEdit).Date -1;
       (Sender as TcxDateEdit).SelectAll;
       Key := #0;
     End;
  If Key = '+' Then
     Begin
       (Sender as TcxDateEdit).Date := (Sender as TcxDateEdit).Date +1;
       (Sender as TcxDateEdit).SelectAll;
       Key := #0;
     End;
end;

procedure TFrmSelFaturaVendas.Panel2Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelFaturaVendas.FormActivate(Sender: TObject);
begin
    FrmSelFaturaVendas.WindowState := wsMaximized;
end;

procedure TFrmSelFaturaVendas.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
  DsTroca.DataSet.Close;
  ActFaturaVenda.Enabled        := false ;
  ActFaturaTroca.Enabled        := false ;
  ActDevolveBalcao.Enabled := false ;
  ActExtorna.Enabled       := false ;
end;

procedure TFrmSelFaturaVendas.GRIDExit(Sender: TObject);
begin
  edNdocto.SetFocus;
end;

procedure TFrmSelFaturaVendas.ActFaturaVendaExecute(Sender: TObject);
var
    DplBol: Integer;
    Boleto : string;
begin
    //--------------------------------Inválido--------------------------------//
    if DmVendas.SelFaturaVendasCodigo.Value <= 0 then
    begin
      showmessage('Selecione um pedido para realizar o faturamento!');
      Grid.SetFocus ;
      exit;
    end;

    //---------------------Seta Quem Deverá Ser Aberto, gambiarra da pega-----------------------//
    DMVendas2.TIPO_VENDA := DmVendas.SelFaturaVendasTIPO_VENDA.Value;
    FrmFaturaVenda.CodVenda := DmVendas.SelFaturaVendasCodigo.Value;
    Numero      := DmVendas.SelFaturaVendasCodigo.Value;
    DmApp.Local := DataSource.DataSet.FieldByName('LOCAL').AsInteger;
    DataSource.DataSet.Close;


    //------------------------------------1º Bloco----------------------------------//
    if FrmFaturaVenda.ShowModal <> MROK then
      exit;

    DmApp.Encerra_Venda(DmApp.Cnpj, Numero, DmApp.DataCaixa, DmApp.UsuarioCaixa, DmApp.ContaCaixa, DmApp.TurnoCaixa,'');

    //--------------------------------Impressão de Doctos(Pedido,NF e CF)--------------------------------//
    frmTipoFaturaVenda  := TFrmTipoFaturaVenda.Create(Self);
    frmTipoFaturaVenda.PedidoNumero := Numero ;
    frmTipoFaturaVenda.PessoaFJ := FrmFaturaVenda.FaturaVendasPessoa_FJ.value;
    frmTipoFaturaVenda.EdTipo.ItemIndex := 2;
    frmTipoFaturaVenda.PedidoNumero := Numero ;
    FrmTipoFaturaVenda.PessoaNFGraf := FrmFaturaVenda.FaturaVendasPessoa_FJ.value;
    FrmTipoFaturaVenda.IDNFGraf := Numero;
    frmTipoFaturaVenda.Showmodal;


    //-----------------Atualizando Grid--------------------//
    Filtrar;
    Grid.SetFocus ;
end;

procedure TFrmSelFaturaVendas.ActDevolveBalcaoExecute(Sender: TObject);
begin
  if pc.ActivePageIndex = 0 then
  begin
    if GridTVCODIGO.DataBinding.Field.AsInteger > 0 then
    begin
      if MessageDlg ('Devolver o orçamento de nº ' + inttostr(GridTVCODIGO.DataBinding.Field.AsInteger) + ' Para o Balcão?',MtInformation,[MbOk, MbCancel],1) = MrOk then
      begin
        Numero := GridTVCODIGO.DataBinding.Field.AsInteger ;
        DmVendas.SelFaturaVendas.Close ;
        DmApp.Devolve_Balcao ( DmApp.Cnpj, Numero );
        DmVendas.SelFaturaVendas.Open  ;
      end;
    end;
  end
  else begin
    if ( pc.ActivePageIndex = 1 ) and ( TVTrocaCODIGO.DataBinding.Field.AsInteger > 0 ) then
    begin
      if MessageDlg ('Devolver a Troca de Nº ' + INTTOSTR(TVTrocaCODIGO.DataBinding.Field.AsInteger) + ' Para o Balcão?',MtInformation,[MbOk, MbCancel],1) = MrOk  then
      begin
        Numero := TVTrocaCODIGO.DataBinding.Field.AsInteger ;
        DmVendas.SelFaturaTrocas.Close ;
        DmApp.Devolve_Troca_Balcao ( DmApp.Cnpj, Numero );
        DmVendas.SelFaturaTrocas.Open  ;
      end;
    end;
  end;
end;

procedure TFrmSelFaturaVendas.ActExtornaExecute(Sender: TObject);
begin
  {Vou mexer pois estornei um faturamento a à vista, e
  este só comitou quando sai do sistema
   If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSelFaturaVendas', True)) Then
      Exit;  }

  if DmApp.PEDE_SEN_GER_CX = 'S' then
  begin
    Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);
    FrmMensagemClassificacao.MEMO.Lines.Add ('DIGITE A SENHA GERENCIAL');

    FrmMensagemClassificacao.EdSenha.Visible := true ;
    FrmMensagemClassificacao.Label6.Visible  := true ;

    //Se o Nível ou a Classificacao exigir senha e não foi digitada
    if FrmMensagemClassificacao.Showmodal = MrCancel then
    begin
      MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
      exit;
    end;

    FrmMensagemClassificacao.Free ;
    FrmMensagemClassificacao := Nil;
  end;

  if PC.ActivePageIndex = 0 then
  begin
    if GridTVCODIGO.DataBinding.Field.AsInteger > 0 then
    begin
      If Application.Messagebox('Deseja realmente estornar este Faturamento?','Aviso',mb_yesno+mb_iconinformation) = id_yes then
      begin
        if DmApp.Ext_Lanc_Fechado <> 'S' Then
        Begin
          If ((DmVendas.SelFaturaVendasUSUARIO.Value > 0 ) and ( DmVendas.SelFaturaVendasCONTA_CAIXA.VALUE > 0)) then
          begin
            //VERIFICA CAIXA SE ESTA ABERTO
            If DmApp.Verifica_Caixa (DmVendas.SelFaturaVendasUSUARIO.Value, DmVendas.SelFaturaVendasCONTA_CAIXA.VALUE, DmVendas.SelFaturaVendasData_Caixa.Value ) = 'S' then
            begin
              MessageDlg ('O Caixa no qual a venda foi faturado esta fechado!', MtError, [MbOk],1 );
              Exit ;
            end;
          end;
        end ;

        Numero := GridTVCODIGO.DataBinding.Field.AsInteger ;
        DmVendas.SelFaturaVendas.Close ;
        DmApp.Extorna_Venda(DmApp.Cnpj, Numero);
        DmVendas.SelFaturaVendas.Open  ;
      end;
    end;
  end
  else
  begin
    If (PC.ACTIVEPAGEINDEX = 1) AND ( TVTrocaCODIGO.DataBinding.Field.AsInteger > 0) then
    begin
      If MessageDlg ('Estornar Esta Troca Para o Faturamento?',MtInformation,[MbOk, MbCancel],1) = MrOk then
      begin
        If DmApp.Ext_Lanc_Fechado <> 'S' then
        Begin
          If((DmVendas.SelFaturaTrocasUSUARIO.Value > 0 ) and ( DmVendas.SelFaturaTrocasCONTA_CAIXA.VALUE > 0)) then
          begin
            //VERIFICA CAIXA SE ESTA ABERTO //CAIXA FECHADO
            If DmApp.Verifica_Caixa  ( DmVendas.SelFaturaTrocasUSUARIO.Value, DmVendas.SelFaturaTrocasCONTA_CAIXA.VALUE, DmVendas.SelFaturaTrocasData_Caixa.Value ) = 'S' then
            begin
              MessageDlg ('O Caixa no Qual A Troca Foi Faturado Esta Fechado!', MtError, [MbOk],1 );
              Exit ;
            end;
          end;
        end ;

        Numero := TVTrocaCODIGO.DataBinding.Field.AsInteger ;
        DmVendas.SelFaturaTrocas.Close ;
        DmApp.Extorna_Troca ( DmApp.Cnpj, Numero );
        DmVendas.SelFaturaTrocas.Open  ;
      end;
    end;
  end;
end;

procedure TFrmSelFaturaVendas.pcChange(Sender: TObject);
begin
  case pc.ActivePageIndex of
    0:begin
        ActFaturaVenda.Enabled  := true ;
        ActFaturaTroca.ShortCut := scNone;
        ActFaturaTroca.Enabled  := false ;
        ActFaturaVenda.ShortCut := VK_F12;
      end;
    1:begin
        ActFaturaVenda.Enabled  := false ;
        ActFaturaVenda.ShortCut := scNone ;
        ActFaturaTroca.Enabled  := true ;
        ActFaturaTroca.ShortCut := VK_F12;
      end;
    2:begin
        ActFaturaVenda.Enabled        := false ;
        ActFaturaTroca.Enabled        := false ;
        ActDevolveBalcao.Enabled := false ;
        ActExtorna.Enabled       := false ;
      end;
    3:begin
        ActFaturaVenda.Enabled        := false ;
        ActFaturaTroca.Enabled        := false ;
        ActDevolveBalcao.Enabled := false ;
        ActExtorna.Enabled       := false ;
      end;
  end;

end;

procedure TFrmSelFaturaVendas.ActImprimirNfCfExecute(Sender: TObject);
Var
   Pessoa, Nf, Cf: Integer;
   aux : string;
begin
    If (DATANF.date <= 0) then
    begin
      Application.Messagebox('Defina a data de impressão da Nota Fiscal!','Aviso', mb_iconerror + mb_ok);
      DATANF.SetFocus ;
      exit;
    end
    else
      DmApp.DATA_NF := DATANF.date;

    If DataSource.DataSet.fieldbyname('Codigo').Value > 0 then
    begin
        Pessoa       := DmVendas.SelFaturaVendasPessoa_Fj.value;
        PessoaNFGraf := DmVendas.SelFaturaVendasPessoa_Fj.value;
        Numero       := DmVendas.SelFaturaVendasCODIGO.Value      ;
        IDNFGraf     := DmVendas.SelFaturaVendasCODIGO.Value      ;
        Nf           := DmVendas.SelFaturaVendasNUM_NF.Value      ;
        Cf           := DmVendas.SelFaturaVendasNUM_CUPOM.Value   ;
        DmApp.Local  := DmVendas.SelFaturaVendasLOCAL.Value       ;
        if not(RetornaSelecao) then
        begin
          Application.MessageBox('Os pedidos a serem impressos deverão ser de um mesmo cliente', 'Aviso',mb_iconError + mb_ok);
          exit;
        end;
        //Verificando se existe mais de um registro selecionado
        with dmVendas2 do
        begin
          Geral.close;
          Geral.sql.text := 'select count(*) cont from fat_vendas vd where vd.cnpj  =  :cnpj and vd.pessoa_fj = :pessoa_fj and vd.selecionada = ''S''';
          Geral.parambyname('cnpj').value := dmapp.cnpj;
          Geral.parambyname('pessoa_fj').value := PessoaNFGraf;
          Geral.Open;
          if (Geral.Fieldbyname('cont').value > 1) then
             IDNFGraf := 0;
        end;

        DmVendas.SelFaturaVendas.Close ;
        FrmTipoFaturaVenda              := TFrmTipoFaturaVenda.Create(Self);
        FrmTipoFaturaVenda.PedidoNumero := Numero ;
        FrmTipoFaturaVenda.PessoaFJ := Pessoa ;
        FrmTipoFaturaVenda.NumeroNf     := Nf     ;
        FrmTipoFaturaVenda.NumeroCf     := Cf     ;
        FrmTipoFaturaVenda.PessoaNFGraf := PessoaNFGraf;
        FrmTipoFaturaVenda.IDNFGraf     := IDNFGraf;
        FrmTipoFaturaVenda.Showmodal ;
        DmVendas.SelFaturaVendas.Open ;
    end;
end;

procedure TFrmSelFaturaVendas.btnCancelaCupomClick(Sender: TObject);
begin
//     AbrePorta  ;

     IF MessageDlg('Deseja Realmente Cancelar o Último Cupom?', mtConfirmation, [mbOk, mbNo], 0) = MrOk
     THEN BEGIN
          CancelaCupom ;
     END;

//     FechaPortaSerial ;
end;

procedure TFrmSelFaturaVendas.BtnLeituraXClick(Sender: TObject);
begin
//     AbrePorta  ;

     IF Application.Messagebox('Deseja Realmente Emitir Uma Leitura X?','Aviso', mb_iconquestion + mb_yesno) = id_yes then
        LeituraX;

//     FechaPortaSerial ;
end;

procedure TFrmSelFaturaVendas.BtnLeituraZClick(Sender: TObject);
begin
//     AbrePorta  ;

     IF MessageDlg('Deseja Realmente Emitir Uma Leitura Z?', mtConfirmation, [mbOk, mbNo], 0) = MrOk
     THEN
         ReducaoZ ;

//     FechaPortaSerial ;
end;

procedure TFrmSelFaturaVendas.CANCELACUPOMITEM;
VAR
   CODPROD, PRODUTO, INCID, QUANTIDADE, UNITARIO, DESC, UNIDADE, TOTAL, VALORPAGO, AUX: STRING;
   ITEM : STRING;
   NUMERICO: STRING;
   I, iDecimal : INTEGER;
   SOMATOTAL : REAL;
   sTipoDesconto, sTipoQtde : String ;
begin
     IF MessageDlg('Deseja Realmente Cancelar este Cupom?', mtConfirmation, [mbOk, mbNo], 0) <> MrOk
     THEN BEGIN
          EXIT;
     END;

//     AbrePorta  ;

     CODPROD := '01' ;

     WHILE LENGTH(CODPROD) < 13 DO
     BEGIN
          CODPROD := '0' + CODPROD ;
     END;

     PRODUTO := 'BALA' ;

     WHILE LENGTH(PRODUTO) < 23 DO
     BEGIN
          PRODUTO := ' '+PRODUTO ;
     END;

     INCID := '1' ;

     //QUANTIDADE
     QUANTIDADE := FORMATFLOAT('###,###,##0.000',1 );

     //VALOR UNITARIO
     UNITARIO := FORMATFLOAT('###,###,##0.000',1);

     DESC := '0,000';

     UNIDADE := 'UN';

     //VALOR TOTAL
     TOTAL :=  FORMATFLOAT('###,###,##0.000', 1);

     SOMATOTAL := 1 ;

     sTipoDesconto := '$';

     iDecimal := 3 ;

     sTipoQtde := 'F' ;

     VendeItem(  CodProd, Produto, Incid,
                 sTipoQtde, Quantidade , iDecimal, Unitario,
                 sTipoDesconto, Desc
              );

     cancelaCupom ;

//     FechaPortaSerial ;
End;

procedure TFrmSelFaturaVendas.btnCancelaCupomItemClick(Sender: TObject);
begin
     CANCELACUPOMITEM ;
end;

procedure TFrmSelFaturaVendas.ActAtualizarExecute(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelFaturaVendas.CmbClienteButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     if Frm_Localizar_Cliente = nil then
       Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;


     if (Frm_Localizar_Cliente.showmodal = mrOk ) Then
     Begin
       CmbCliente.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho);
       lblnome.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value;
     end
end;

procedure TFrmSelFaturaVendas.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelFaturaVendas.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelFaturaVendas.EdTipoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelFaturaVendas.CmbClienteExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     With DmVendas do
     begin
          If Trim(CmbCliente.Text) <> ''
          then begin
               If SelPessoasFJ.state in [dsInactive] then
                  SelPessoasFJ.Open;
                  
               If SelPessoasFJ.locate ( 'CODIGO', CmbCliente.Text, [] )
               then begin
                    CmbCliente.Text  := DMVendas.SelPessoasFJCodigo.Text      ;
                    lblnome.Caption  := DMVendas.SelPessoasFJNOME_RAZAO.value ;
               end
               else begin
                    CmbCliente.Text  := '' ;
                    lblnome.Caption  := '' ;
               end;
          end
          else begin
               CmbCliente.Text  := ''  ;
               lblnome.Caption  := ''  ;
          end;
     end;
end;

procedure TFrmSelFaturaVendas.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmSelFaturaVendas.ActCancelaNotaExecute(Sender: TObject);
Var
   CUPOM: Integer;
   CancTemp, FileXML, NUM,vAux, sAux: String;
begin
     IF DmApp.PEDE_SEN_GER_CX = 'S'
     THEN BEGIN
          Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

          FrmMensagemClassificacao.MEMO.Lines.Add ('DIGITE A SENHA GERENCIAL');

          FrmMensagemClassificacao.EdSenha.Visible := true ;
          FrmMensagemClassificacao.Label6.Visible  := true ;
          //Se o Nível ou a Classificacao exigir senha e não foi digitada
          if FrmMensagemClassificacao.Showmodal = MrCancel then
          Begin
            MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
            EXIT ;
          end;

          FrmMensagemClassificacao.Free ;
          FrmMensagemClassificacao := Nil;
     END;

     IF PC.ACTIVEPAGEINDEX = 0
     THEN BEGIN
          IF DataSource.DataSet.fieldbyname('Codigo').Value > 0
          THEN
              NUM := INTTOSTR ( DataSource.DataSet.fieldbyname('Codigo').Value )
          ELSE
              NUM := '0';

          IF MessageDlg('Deseja Realmente Cancelar esta Venda ? ' + NUM , mtConfirmation, [mbOk, mbCancel], 0) = MrOk
          THEN BEGIN
               If ( DataSource.DataSet.fieldbyname('Codigo').Value > 0 ) and ( DataSource.DataSet.fieldbyname('FECHADA').Value = 'S' )
               and ( DataSource.DataSet.fieldbyname('CANCELADA').asString <> 'S' ) AND ( DataSource.DataSet.fieldbyname('NUM_NF').Value > 0 )
               then begin
                    If ( DataSource.DataSet.fieldbyname('Codigo').Value > 0 ) and ( DataSource.DataSet.fieldbyname('FECHADA').Value = 'S' )
                    and ( DataSource.DataSet.fieldbyname('CANCELADA').Value = 'N' ) AND ( DataSource.DataSet.fieldbyname('NUM_CUPOM').Value > 0 )
                    then begin
                         //Numero do Ultimo Cupom
                         Cupom := NumeroUltimoCupom ;

                         IF ( Cupom ) = DataSource.DataSet.fieldbyname('NUM_CUPOM').Value
                         THEN BEGIN
                              CancelaCupom ;
                         END;
                    end ;

                    If MessageDlg ('Cancelar Esta Nota?', MtConfirmation, [MbOk, MbCancel],0) = mrok
                    then begin
                         if ((dmapp.EXIBE_NFE = 'S') and (DmVendas.SelFaturaVendasNFE_AUTORIZADA.value = '1')) then
                         begin
                            dmApp.ACBrNFe.NotasFiscais.Clear;

                            if not(DirectoryExists('C:\Sistemas\HelpStore\Temp\')) then
                              CreateDir('C:\Sistemas\HelpStore\Temp\');

                            FileXML := 'C:\Sistemas\HelpStore\Temp\NFe'+DataSource.DataSet.fieldbyname('NUM_NF').asString+'.tmp';

                            DmVendas.SelFaturaVendasNFE_XML.SaveToFile(FileXML);
                            dmApp.ACBrNFe.NotasFiscais.LoadFromFile(FileXML);

                            if not(InputQuery('NFE Cancelamento', 'Justificativa', vAux)) then
                               exit;


                            dmApp.ACBrNFe.EventoNFe.Evento.Clear;
                            dmApp.ACBrNFe.EventoNFe.idLote := DmVendas.SelFaturaVendasCODIGO.AsInteger ;
                            with dmApp.ACBrNFe.EventoNFe.Evento.Add do
                            begin
                             infEvento.dhEvento := now;
                             infEvento.tpEvento := teCancelamento;
                             infEvento.detEvento.xJust := vAux;
                            end;

                            // Enviar o evento de cancelamento
                            if dmApp.ACBrNFe.EnviarEventoNFe((DmVendas.SelFaturaVendasCODIGO.AsInteger)) then
                            begin
                              with dmApp.ACBrNFe.WebServices.EnvEvento do
                              begin
                                if EventoRetorno.retEvento.Items[0].RetInfEvento.cStat <> 135 then
                                begin
                                  raise Exception.CreateFmt(
                                    'Ocorreu o seguinte erro ao cancelar a nota fiscal eletrônica:'  + sLineBreak +
                                    'Código:%d' + sLineBreak +
                                    'Motivo: %s', [
                                      EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
                                      EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo
                                  ]);
                                end;

                            // retornos
                              {  DataHoraEvento  := EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
                                NumeroProtocolo := EventoRetorno.retEvento.Items[0].RetInfEvento.nProt;
                                XMLCancelamento := EventoRetorno.retEvento.Items[0].RetInfEvento.XML;
                                CodigoStatus    := EventoRetorno.retEvento.Items[0].RetInfEvento.cStat;
                                MotivoStatus    := EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo;}
                              end;
                            end
                            else
                            begin
                              with dmApp.ACBrNFe.WebServices.EnvEvento do
                              begin
                              raise Exception.Create(
                                  'Ocorreram erros ao tentar efetuar o cancelamento:' + sLineBreak +
                                  'Lote: '     + IntToStr(EventoRetorno.idLote) + sLineBreak +
                                  'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
                                  'Orgao: '    + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
                                  sLineBreak +
                                  'Status: '   + IntToStr(EventoRetorno.cStat) + sLineBreak +
                                  'Motivo: '   + EventoRetorno.xMotivo
                                );
                              end;

                            end;

                            {MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetWS);
                            memoRespWS.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetornoWS);
                            LoadXML(MemoResp, WBResposta);
                            ShowMessage(UTF8Encode(dmApp.ACBrNFe.WebServices.EnvEvento.RetWS));
                            ShowMessage(UTF8Encode(dmApp.ACBrNFe.WebServices.EnvEvento.RetornoWS));
                            ShowMessage(IntToStr(dmApp.ACBrNFe.WebServices.EnvEvento.cStat));
                            ShowMessage(dmApp.ACBrNFe.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);}

                            dmCadastros2.UPDNFeVendasCanc.parambyname('cnpj').value := dmApp.cnpj;
                            dmCadastros2.UPDNFeVendasCanc.parambyname('venda').value := DmVendas.SelFaturaVendasCODIGO.VALUE;
                            dmCadastros2.UPDNFeVendasCanc.parambyname('nfe_canc_motivo').value := vAux;
                            dmCadastros2.UPDNFeVendasCanc.parambyname('nfe_canc_protocolo').value := dmApp.ACBrNFe.WebServices.Cancelamento.Protocolo;
                            dmCadastros2.UPDNFeVendasCanc.parambyname('nfe_canc_status').value := IntToStr(dmApp.ACBrNFe.WebServices.Cancelamento.cStat);
                            dmCadastros2.UPDNFeVendasCanc.parambyname('nfe_canc_xml').value := UTF8Encode(dmApp.ACBrNFe.WebServices.Cancelamento.RetWS);
                            dmCadastros2.UPDNFeVendasCanc.ExecQuery;
                            dmCadastros2.UPDNFeVendasCanc.Transaction.CommitRetaining;
                         end;
                         Numero := DataSource.DataSet.fieldbyname('Codigo').Value ;
                         DmVendas.SelFaturaVendas.Close ;
                         DmApp.Cancela_Nota ( DmApp.Cnpj, Numero, DmApp.datacaixa );
                         DmVendas.SelFaturaVendas.Open  ;
                    end;
               end
               ELSE BEGIN
                    If ( DataSource.DataSet.fieldbyname('Codigo').Value > 0 ) and ( DataSource.DataSet.fieldbyname('FECHADA').Value = 'S' )
                    and ( DataSource.DataSet.fieldbyname('CANCELADA').Value = 'N' ) AND ( DataSource.DataSet.fieldbyname('NUM_CUPOM').Value > 0 )
                    then begin
                         //Numero do Ultimo Cupom
                         Cupom := NumeroUltimoCupom ;

                         IF ( Cupom ) <> DataSource.DataSet.fieldbyname('NUM_CUPOM').Value
                         THEN BEGIN
                              MessageDlg ('Impossível Cancelar Este Cupom, Verifique?', MtError, [MbOk],0);
                              exit;
                         END
                         ELSE BEGIN
                              If MessageDlg ('Cancelar Este Cupom?', MtConfirmation, [MbOk, MbCancel],0) = mrok
                              then begin
                                   //Cancela o Cupom Fiscal Atual
                                   CancelaCupom ;

                                   Numero := DataSource.DataSet.fieldbyname('Codigo').Value ;
                                   DmVendas.SelFaturaVendas.Close ;
                                   DmApp.Cancela_Nota ( DmApp.Cnpj, Numero, DmApp.DataCaixa );
                                   DmVendas.SelFaturaVendas.Open  ;
                              END;
                         END;
                    END
                    ELSE BEGIN
                         If ( DataSource.DataSet.fieldbyname('Codigo').Value > 0 ) and ( DataSource.DataSet.fieldbyname('FECHADA').Value = 'S' )
                         and ( DataSource.DataSet.fieldbyname('CANCELADA').Value = 'N' )
                         then begin
                              Numero := DataSource.DataSet.fieldbyname('Codigo').Value ;
                              DmVendas.SelFaturaVendas.Close ;
                              DmApp.Cancela_Pedido ( DmApp.Cnpj, Numero, DmApp.DataCaixa );
                              DmVendas.SelFaturaVendas.Open  ;
                         end
                         ELSE BEGIN
                              MessageDlg ('Esta Nota Já Esta Cancelada, ou aida não Foi Fechada?', MtConfirmation, [MbOk, MbCancel],0);
                         END;
                    end;
               END;
          END;
     END ;

     //TROCAS
     IF PC.ACTIVEPAGEINDEX = 1
     THEN BEGIN
          IF DsTroca.DataSet.fieldbyname('Codigo').Value > 0
          THEN
              NUM := INTTOSTR ( DsTroca.DataSet.fieldbyname('Codigo').Value )
          ELSE
              NUM := '0';

          IF MessageDlg('Deseja Realmente Cancelar esta Troca ? ' + NUM , mtConfirmation, [mbOk, mbCancel], 0) = MrOk
          THEN BEGIN
               If ( DsTroca.DataSet.fieldbyname('Codigo').Value > 0 ) and ( DsTroca.DataSet.fieldbyname('FECHADO').Value = 'S' )
               and ( DsTroca.DataSet.fieldbyname('CANCELADA').Value <> 'S' )
               then begin
                    Numero := DsTroca.DataSet.fieldbyname('Codigo').Value ;
                    DmVendas.SelFaturaTrocas.Close ;
                    DmApp.Cancela_Troca ( DmApp.Cnpj, Numero, DmApp.DataCaixa );
                    DmVendas.SelFaturaTrocas.Open  ;
               end
               ELSE BEGIN
                    MessageDlg ('Esta Troca Já Esta Cancelada, ou aida não Foi Fechada?', MtConfirmation, [MbOk, MbCancel],0);
               END;
          END;
     END ;
end;

procedure TFrmSelFaturaVendas.ActReceberExecute(Sender: TObject);
begin
    { * * * * * }
    If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBaixaReceberSelecaoParc', True)) Then
      Exit;

    Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;
    FrmReceber   := TFrmReceber.Create(Self);
    If ( FrmReceber.ActBaixaSelecao.Tag > 0 )  or ( FrmReceber.ActBaixar.Tag > 0 ) or ( FrmReceber.ActBaixarParcial.Tag > 0) then
    begin
      If DMApp.VerificarCaixa = 'N'  Then
      begin
        Frm_Localizar_Cliente.Free ;
        Frm_Localizar_Cliente := Nil ;

        FrmReceber.Free      ;
        FrmReceber := Nil    ;
      end
      else
      begin
        FrmReceber.Showmodal ;
        FrmReceber.Free      ;
        FrmReceber := Nil    ;
      end;
    end
    else
    begin
      FrmReceber.Showmodal ;
      FrmReceber.Free      ;
      FrmReceber := Nil    ;
    end;

end;

procedure TFrmSelFaturaVendas.ActPagarExecute(Sender: TObject);
begin
  If DMApp.SelecionarEmpresa = 'N' Then
    Exit;

  { * * * * * }
  If FrmPagar = Nil Then
  Begin
    Application.ProcessMessages;


    Application.CreateForm(TFrm_Localizar_Fornecedor, Frm_Localizar_Fornecedor) ;
    FrmPagar   := TFrmPagar.Create(Self);
    If ((FrmPagar.ActBaixaParcial.Tag > 0) or (FrmPagar.ActBaixar.Tag > 0 )) and (dmapp.Pagar_Caixa = 'S') then
    begin
      If DMApp.VerificarCaixa = 'N' Then
      begin
        Frm_Localizar_Fornecedor.Free      ;
        Frm_Localizar_Fornecedor := Nil    ;

        FrmPagar.Free      ;
        FrmPagar := Nil    ;
      end
      else
      begin
        FrmPagar.Showmodal ;
        FrmPagar.Free      ;
        FrmPagar := Nil    ;
      end;
    end
    else
    begin
      FrmPagar.Showmodal ;
      FrmPagar.Free      ;
      FrmPagar := Nil    ;
    end;
  End;
end;

procedure TFrmSelFaturaVendas.BtnGavetaClick(Sender: TObject);
begin
     AbrePorta  ;

     AbreGaveta ;

     FechaPortaSerial ;
end;

procedure TFrmSelFaturaVendas.CmbClienteTrcButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

     if ( Frm_Localizar_Cliente.showmodal = mrOk )
     Then Begin
          CmbClienteTrc.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho)    ;
          lblnomeTrc.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value ;
     end
end;

procedure TFrmSelFaturaVendas.Panel4Exit(Sender: TObject);
begin
  filtrartroca ;
end;

procedure TFrmSelFaturaVendas.ActEntSaiExecute(Sender: TObject);
begin
     //Entradas e Saídas
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCaixaSaidas', True)) Then
     Exit;

  { * * * * * }
  If FrmCaixaSaidas = Nil Then
     Begin
       DMCaixa     := TDMCaixa.Create(Self);
     
       FrmCaixaSaidas := TFrmCaixaSaidas.Create(Self);
       //
       FrmCaixaSaidas.Showmodal ;
       FrmCaixaSaidas.Free      ;
       FrmCaixaSaidas := Nil    ;
     End;
end;

procedure TFrmSelFaturaVendas.GRIDTROCA_KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13 then
         DmVendas2.Proc_Consulta_Troca ( TVTrocaCODIGO.DataBinding.Field.AsInteger );
end;

procedure TFrmSelFaturaVendas.BtnLeituraMemoriaFiscalClick(Sender: TObject);
begin
     IF DMAPP.PDV_MODELO = 'Bematech'
     THEN BEGIN
//          AbrePorta  ;
     END;

     if application.messagebox('Deseja Realmente Emitir Uma Leitura da Memória Fiscal?','Aviso', mb_iconquestion + MB_YESNO ) = id_yes then
        MemoriaFiscal ;


     IF DMAPP.PDV_MODELO = 'Bematech'
     THEN BEGIN
//          FechaPortaSerial ;
     END;
end;

procedure TFrmSelFaturaVendas.BtnCondicionalClick(Sender: TObject);
Var
   Aux: Integer;
begin
     //
     Application.CreateForm(TFrmEntraNumeroInteiro, FrmEntraNumeroInteiro);
     FrmEntraNumeroInteiro.LblTitulo.Caption := 'Venda';
     FrmEntraNumeroInteiro.LBLPROMPT.Caption := 'Número'   ;

     if FrmEntraNumeroInteiro.ShowModal = MROK then
       Aux := (FrmEntraNumeroInteiro.Numero)
     else
       exit;

     FrmEntraNumeroInteiro.Free ;
     FrmEntraNumeroInteiro := Nil;

     dmvendas2.Proc_Imprime_Venda (Aux);
     if (DmVendas.Consulta_VendaPESSOA_FJ.Value <= 0) then
        exit;
        
     DmVendas.VerPessoa (DmVendas.Consulta_VendaPESSOA_FJ.Value);

     //Imprime o Condicinal
     if (QrepCondicional = nil) then
        Application.CreateForm(TQrepCondicional, QrepCondicional);

    { QrepCondicional.Total := 0;
     QrepCondicional.Total_Quantidade := 0;
     QrepCondicional.LblNomeEmpresa.Caption := DmApp.Nome ;
     QrepCondicional.Preview ;

     QrepCondicional.Free    ;
     QrepCondicional := Nil  ;}
     
     DmVendas.Consulta_Venda.Close ;
     DmVendas.Ver_Pessoa.Close     ;
end;

procedure TFrmSelFaturaVendas.ActAnaliseCustoExecute(Sender: TObject);
Var
   Numero: Integer;
begin
     IF arredonda( DmVendas.SelFaturaVendasTotal.Value,2 ) <= 0
     THEN BEGIN
          MessageDlg('Não Existem Produtos para Faturamento, Verifique!',MtError,[MbOk],0);
          Pc.ActivePageIndex := 0;
          Exit;
     END;

     Numero := DataSource.DataSet.FieldByName('CODIGO').asInteger    ;

     DmApp.Analise_Custos ( Numero );

     //Visualizar
     DmVendas.Analise_Custos ( Numero, 0 );
end;

procedure TFrmSelFaturaVendas.BtnAliquotaClick(Sender: TObject);
begin
//     AbrePorta  ;

     ProgramaAliquota(inputbox('aliq:', '4 Casas', '')) ;

//     FechaPortaSerial ;
end;

procedure TFrmSelFaturaVendas.RzBitBtn8Click(Sender: TObject);
begin
//     AbrePorta  ;

     ProgramaForma(inputbox('Forma:', 'Nome da Forma de Pagto:', '')) ;

//     FechaPortaSerial ;
end;

procedure TFrmSelFaturaVendas.ActFaturaTrocaExecute(Sender: TObject);
begin
    {------------------------------------Trocas--------------------------}
  if (TVTrocaCODIGO.DataBinding.Field.AsInteger <= 0) then
  begin
    Showmessage('Digite Um Controle Válido!');
    gridtroca.SetFocus ;
    exit;
  end;

  //---------------------Seta Quem Deverá Ser Aberto-----------------------//
  DMVendas.NDocto   := TVTrocaCODIGO.DataBinding.Field.AsInteger ;
  Numero := TVTrocaCODIGO.DataBinding.Field.AsInteger ;
  DsTroca.DataSet.Close ;
  DMVendas.DsTrocas.DataSet.close ;
  DMVendas.DsTrocas.DataSet := DmVendas.FaturaTrocas ;
  FrmFaturaTroca.DataSource.DataSet := DmVendas.FaturaTrocas ;

  if FrmFaturaTroca.ShowModal = MROK then
  begin
    //Encerra a Venda
    DmApp.Encerra_Troca(DmApp.Cnpj, Numero, DmApp.DataCaixa, DmApp.UsuarioCaixa, DmApp.ContaCaixa, DmApp.TurnoCaixa);
    if DmApp.DIG_CHEQUE_VENDA = 'S' then
    begin
      if arredonda(DmVendas.FaturaTrocasCHEQUE.Value, 2) > 0 then
      begin
          FrmCheque_Venda := TFrmCheque_Venda.Create(Self);
          frmCheque_Venda.Label3.Caption := 'Troca';
          frmCheque_Venda.LblTitulo.caption := 'Cheques da Troca';
          frmCheque_Venda.CodTroca := DmVendas.SelFaturaTrocasCodigo.Value;
          FrmCheque_Venda.ShowModal;
      end;
    end;

    if DmApp.DIG_CARTAO_VENDA = 'S' then
    begin
      if arredonda(DmVendas.FaturaTrocasCARTAO.Value, 2) > 0 then
      begin
        FrmCartao_Venda := TFrmCartao_Venda.Create(Self);
        FrmCartao_Venda.vlrCartao := DmVendas.FaturaTrocasCARTAO.value;
        FrmCartao_Venda.LblTitulo.caption := 'Cartão da Troca';
        FrmCartao_Venda.caption := 'Cartão da Troca';
        FrmCartao_Venda.CodigoTroca := DmVendas.SelFaturaTrocasCODIGO.Value;
        FrmCartao_Venda.Pessoa := DmVendas.FaturaTrocasPessoa_Fj.value;
        FrmCartao_Venda.Nome := DmVendas.FaturaTrocasNome.value;
        FrmCartao_Venda.ShowModal;
        FrmCartao_Venda.Free ;
        FrmCartao_Venda := Nil;
      end;
    end;

    //Atualiza
   filtrartroca ;
  end;
end;
procedure TFrmSelFaturaVendas.ActReimprimirTrocaExecute(Sender: TObject);
Var
   Codigo: Integer;
begin
//-->> Reimpressao da Troca
  //-->> Armazena o id da Troca
  Codigo := DsTroca.DataSet.FieldByName('CODIGO').asInteger ;
  if codigo > 0 then
  begin
    //-->> Config. da empresa - Opcao para escolher impressora na impressao
    If DmApp.Sel_Impressora = 'S' then
    begin
         FrmTipoImpressora := TFrmTipoImpressora.Create(Self);
         FrmTipoImpressora.Showmodal ;
         FRelEnviaTrocaCaixa                 := TFRelEnviaTrocaCaixa.Create(Self);
         FRelEnviaTrocaCaixa.LblTipo.Visible := True ;
         //-->> Impressora Matricial
         if FrmTipoImpressora.CkMatricial.Checked then
         begin
              FRelEnviaTrocaCaixa.Print.IMPRESSORA := epson ;
              FRelEnviaTrocaCaixa.LblTipo.Caption  := 'Impressora Matricial';
         end else
         //-->> Impressora Jato de Tinta
         begin
              FRelEnviaTrocaCaixa.Print.IMPRESSORA := Hp ;
              FRelEnviaTrocaCaixa.LblTipo.Caption  := 'Impressora Jato de Tinta';
         end;
         FrmTipoImpressora.Free   ;
         FrmTipoImpressora := Nil ;
    end else
    //-->> Impressora padrao do Sistema "Sem Escolha de Impressora"
    begin
         FRelEnviaTrocaCaixa                 := TFRelEnviaTrocaCaixa.Create(Self);
         FRelEnviaTrocaCaixa.LblTipo.Visible := false ;
    end;

    //-->> Caixa de dialogo para impressão
    FRelEnviaTrocaCaixa.Tipo         := 'TROCA' ;
    FRelEnviaTrocaCaixa.PedidoNumero := Codigo  ;
    FRelEnviaTrocaCaixa.Showmodal ;
    FRelEnviaTrocaCaixa.Free   ;
    FRelEnviaTrocaCaixa := Nil ;
  end;
end;

function TFrmSelFaturaVendas.RetornaSelecao:boolean;
var
  x, RecIdx, ColIdx, cont : integer;
  Selecionada, oldPessoa, NewPessoa  : Variant;
begin
  Aux := '';
  cont := 0;
  oldPessoa := 0;
  for x := 0 to GridTV.Controller.SelectedRecordCount - 1 do
  begin
    //Latitude e Longitude
    RecIdx := GridTV.Controller.SelectedRecords[x].RecordIndex;
    ColIdx := GridTV.DataController.GetItemByFieldName('SELECIONADA').Index;
    Selecionada := GridTV.DataController.Values[RecIdx, ColIdx];

    if (Selecionada = 'S') then
    begin
      ColIdx := GridTV.DataController.GetItemByFieldName('PESSOA_FJ').Index;
      NewPessoa := GridTV.DataController.Values[RecIdx, ColIdx];

      if ((NewPessoa <> OldPessoa) and (OldPessoa <> 0)) then
      begin
         result := false;
         exit;
      end
      else
        oldPessoa := NewPessoa;


      PessoaNFGraf := NewPessoa;
      ColIdx := GridTV.DataController.GetItemByFieldName('CODIGO').Index;
      IDNFGraf := (GridTV.DataController.Values[RecIdx, ColIdx]);
      cont := cont + 1;
    end;
  end;

  //Se tivermos mais de um pedido selecionado, logo teremos impressão agrupada e
  //nenhum em especifico para imprimir

  if (cont > 1) then
    IDNFGraf := 0;

  result := true;
end;

procedure TFrmSelFaturaVendas.ActSelecionaVendaExecute(Sender: TObject);
var
  Book :TBookmark;
begin
  with dmVendas2 do
  begin
     Book := dmvendas.SelFaturaVendas.GetBookmark;
     SelecionaVenda.parambyname('cnpj').value := dmapp.cnpj;
     SelecionaVenda.parambyname('venda').value := dmvendas.SelFaturaVendasCODIGO.value;
     SelecionaVenda.parambyname('velho').value := dmvendas.SelFaturaVendasSELECIONADA.value;
     SelecionaVenda.ExecQuery;
     Filtrar;
     dmvendas.SelFaturaVendas.GotoBookmark ( Book );
     dmvendas.SelFaturaVendas.FreeBookmark ( Book );
  end
end;

procedure TFrmSelFaturaVendas.ActConfCamposExecute(Sender: TObject);
begin
  //
end;


procedure TFrmSelFaturaVendas.ActExportarExcelExecute(Sender: TObject);
begin
  if pc.ActivePage = TAB1 then
    dmApp.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'ListagemPedidoCaixa.xls', Grid);
  if pc.ActivePage = Trocas then
    dmApp.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'ListagemTroca.xls', GridTroca);
  if pc.ActivePage = tabEntFutura then
    dmApp.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'ListagemVndEntregaFutura.xls', GridEntregaFutura);
end;



procedure TFrmSelFaturaVendas.Panel12Enter(Sender: TObject);
begin
  //Fecha datasets principais
  dsFutura.DataSet.Close;
end;

procedure TFrmSelFaturaVendas.Panel12Exit(Sender: TObject);
begin
  FiltrarEntregaFutura;
  pcFatura.activepage := tabVenda;
  GridEntregaFutura.setfocus;
end;

procedure TFrmSelFaturaVendas.FiltrarEntregaFutura;
Var
   Cont: Integer;
   sFiltro : string;
Begin
  sFiltro := '';

    DmVendas2.SelFaturaVendasFutura.Close;
    DmVendas2.SelFaturaVendasFutura.SelectSQL.text :=' SELECT * FROM VER_VENDAS ( :CNPJ, :TP ) ' ;

    //-------- Cliente ---------//
    If trim(CmbCliente2.Text) <> '' Then
    Begin
      if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro + ' PESSOA_FJ ='+DMVendas.SelPessoasFJCodigo.asstring;
    end;

    //-------- Filtro de Data ---------//
    If edDtFutura.date > 0 Then
    begin
      if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro +  ' DATA ='''+formatdatetime('mm/dd/yyyy',edDtFutura.Date)+'''';
    end ;

    if sFiltro <> '' then
      sFiltro := sFiltro + ' and ';
    sFiltro := sFiltro + ' ENTREGA_FUTURA = ''S''';

    //-------- Numero do Documento ---------//
    If Trim(edtVenda.Text) <> '' Then
    begin
       if sFiltro <> '' then
        sFiltro := sFiltro + ' and ';
      sfiltro := sfiltro +  ' CODIGO ='+trim(edtVenda.Text);
    end;

{* ---------- [ Legenda - VENDA] ---------             ---------- [ Legenda - CARGA] ---------
                                                            -1 - Cancelado
      0 - Aberto
                                                             1 - a Carregar
                                                             2 - a Entregar
      3 - Parcialmente Carregado                             3 - Parcialmente Carregado
      4 - Parcialmente Entregue                              4 - Parcialmente Entregue
      5 - Carregado                                          5 - Carregado
      6 - Entregue                                           6 - Entregue
                                                             7 - Devolvido
   ---------------------------------------             ---------------------------------------  *}

    if cmbStatusCarregamento.text = 'Aberto' then
      sfiltro := sfiltro +  ' and STATUS_CARREGAMENTO = 0'
    else
    if cmbStatusCarregamento.text = 'Parcialmente Carregado' then
      sfiltro := sfiltro +  ' and STATUS_CARREGAMENTO = 3'
    else
    if cmbStatusCarregamento.text = 'Carregado' then
      sfiltro := sfiltro +  ' and STATUS_CARREGAMENTO = 5'
    else
    begin
      cmbStatusCarregamento.text := 'Todos';
    end;

    //-------- Adiciona Filtro ---------//
    if sFiltro <> '' then
      DmVendas2.SelFaturaVendasFutura.selectsql.Add (' where '+sfiltro);

    DmVendas2.SelFaturaVendasFutura.selectsql.Add ( ' order by NOME ' );
    DmVendas2.SelFaturaVendasFutura.open;

    //-------- Habilita Action ---------//
    HabilitaAction;
end;



procedure TFrmSelFaturaVendas.HabilitaAction;
begin
  ActCarregar.Enabled         := false;
  ActDevolucao.Enabled        := false;  
  ActCancelarCarga.Enabled    := false;
  ActConfirmarEntrega.Enabled := false;
  ActDadosCarga.Enabled       := false;
  ActAjusteCarga.Enabled      := false;
  ActImpRequisicao.Enabled    := false;

  if pcFatura.activepage = tabVenda then
  begin
      ActCarregar.Enabled   := true;
      ActDevolucao.Enabled  := true;
  end;

  if pcFatura.activepage = tabOrdemCarga then
  begin
      ActCancelarCarga.Enabled    := DmOrdemCarga.OrdemCargaSTATUS.value in [1,2,3,4,5,6];
      ActConfirmarEntrega.Enabled := DmOrdemCarga.OrdemCargaSTATUS.value in [1];
      ActAjusteCarga.Enabled      := DmOrdemCarga.OrdemCargaSTATUS.value in [3];
      ActDadosCarga.Enabled       := True;
      ActImpRequisicao.Enabled    := True;
  end;
end;

procedure TFrmSelFaturaVendas.dsFuturaDataChange(Sender: TObject;
  Field: TField);
begin
    //-------- Habilita Action ---------//
    HabilitaAction;
end;

procedure TFrmSelFaturaVendas.ActCarregarExecute(Sender: TObject);
begin
    Tipo_entrega := 1;

    DmVendaS2.Proc_Requisicao_Venda(TVEntregaFuturaCODIGO.DataBinding.Field.AsInteger);
    FiltrarEntregaFutura;
end;

procedure TFrmSelFaturaVendas.CmbCliente2ButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
     if Frm_Localizar_Cliente = nil then
       Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;


     if (Frm_Localizar_Cliente.showmodal = mrOk ) Then
     Begin
       CmbCliente2.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho);
       lblnome2.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value;
     end
end;

procedure TFrmSelFaturaVendas.CmbCliente2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     With DmVendas do
     begin
          If Trim(CmbCliente2.Text) <> ''
          then begin
               If SelPessoasFJ.locate ( 'CODIGO', CmbCliente2.Text, [] )
               then begin
                    CmbCliente2.Text  := DMVendas.SelPessoasFJCodigo.Text      ;
                    lblnome2.Caption  := DMVendas.SelPessoasFJNOME_RAZAO.value ;
               end
               else begin
                    CmbCliente2.Text  := '' ;
                    lblnome2.Caption  := '' ;
               end;
          end
          else begin
               CmbCliente2.Text  := ''  ;
               lblnome2.Caption  := ''  ;
          end;
     end;
end;

procedure TFrmSelFaturaVendas.ActCancelarCargaExecute(Sender: TObject);
begin
    if( DmOrdemCarga.OrdemCargaSTATUS.value in [1,2,3,4,5,6]) and
    (application.messagebox('Deseja Realmente Cancelar uma Carga Entregue ?','Aviso', mb_iconquestion + MB_YESNO ) = id_yes )then
    begin
      //ORDEM_CARGA = "Cancelado"
      ExecSql('update CRG_ORDEM_CARGA set status = -1, usuario = '+ inttostr(dmapp.USR_CONECTADO) +' where CODIGO = '+ DmOrdemCarga.OrdemCargaCODIGO.ASSTRING +
      ' and CNPJ ='''+dmapp.Cnpj+'''',DmOrdemCarga.OrdemCarga.transaction);

      DmOrdemCarga.RetiraItensCancelado(DmOrdemCarga.OrdemCargaCODIGO.value);

      DmOrdemCarga.AtualizaStatusPedido(DmOrdemCarga.OrdemCargaCODIGO_VND.AsString,DmOrdemCarga.OrdemCarga.transaction);

    end;
end;

procedure TFrmSelFaturaVendas.ActConfirmarEntregaExecute(Sender: TObject);
begin
    DmOrdemCarga.Proc_Confirma_Carga(DmOrdemCarga.OrdemCargaCODIGO.VALUE);
    DmOrdemCarga.OpenOrdemCargaItem(DmOrdemCarga.OrdemCargaCODIGO.VALUE);
    gridOC.setfocus;
end;

procedure TFrmSelFaturaVendas.tabOrdemCargaEnter(Sender: TObject);
begin

  if DmVendas2.SelFaturaVendasFuturaCODIGO.VALUE > 0 then
  begin

      //LISTA TODAS ORDEM DE CARGA DO PEDIDO
      DmOrdemCarga.OrdemCarga.close;
      DmOrdemCarga.OrdemCarga.SelectSQL.text :=' select cgr.*, psa.nome_razao psa_nome_razao, '+
              ' psa.FANTASIA psa_FANTASIA, vd.pessoa_fj vd_pessoa_fj, vd.codigo vd_codigo, '+
              ' vd.data vd_data,vd.data_caixa vd_data_caixa,VD.observacao VD_observacao,VD.volume VD_volume, '+
              ' VD.peso VD_peso,vd.nome_consumidor vd_nome_consumidor,psa.celular psa_celular,psa.fax psa_fax, '+
              ' psa.fone psa_fone,psa.cpf_cgc psa_cpf_cgc,PSA.rg_ie PSA_rg_ie from CRG_ORDEM_CARGA cgr '+
              ' inner join fat_vendas        vd    on (vd.codigo     = cgr.codigo_vnd and vd.cnpj = cgr.cnpj) '+
              ' inner join glo_pessoas_fj    psa   on (psa.codigo    = vd.pessoa_fj  and psa.cnpj = vd.cnpj  ) '+
              ' where cgr.codigo_vnd = :codigo_vnd and cgr.cnpj = :CNPJ';

      DmOrdemCarga.OrdemCarga.parambyname('cnpj').value := dmapp.cnpj;
      DmOrdemCarga.OrdemCarga.parambyname('codigo_vnd').value := DmVendas2.SelFaturaVendasFuturaCODIGO.VALUE;
      DmOrdemCarga.OrdemCarga.open;

      //LISTA TODAS ITENS DA ORDEM DE CARGA
      DmOrdemCarga.OpenOrdemCargaItem(DmOrdemCarga.OrdemCargaCODIGO.VALUE);
   end;
end;

procedure TFrmSelFaturaVendas.tabVendaEnter(Sender: TObject);
begin
  dsOC.dataset.close;
  dsOCItens.dataset.close;
end;

procedure TFrmSelFaturaVendas.dsOCDataChange(Sender: TObject;
  Field: TField);
begin
  if dmOrdemCarga.OrdemCargaCODIGO.VALUE > 0 then
  begin
        //LISTA TODAS ITENS DA ORDEM DE CARGA
        DmOrdemCarga.OpenOrdemCargaItem(DmOrdemCarga.OrdemCargaCODIGO.VALUE);
        //-------- Habilita Action ---------//
        HabilitaAction;
  end;
end;

procedure TFrmSelFaturaVendas.tabEntFuturaEnter(Sender: TObject);
begin
    pcFatura.activepage := tabVenda;
  //  CmbCliente2.SETFOCUS;
end;

procedure TFrmSelFaturaVendas.pcFaturaChange(Sender: TObject);
begin
  if pcfatura.activepage = tabOrdemCarga then
  begin
      gridOC.setfocus;
      HabilitaAction;
  end else
  begin

      GridEntregaFutura.setfocus;
      HabilitaAction;
  end;
end;

procedure TFrmSelFaturaVendas.ActImpRequisicaoExecute(Sender: TObject);
begin
  if DmOrdemCarga.OrdemCargaCODIGO.VALUE > 0 then
  begin
    if DmOrdemCarga.OrdemCargaSTATUS.VALUE IN [1,2,3,4,5,6] then
      DmOrdemCarga.ImprimirRequisicao(DmOrdemCarga.OrdemCargaCODIGO.VALUE);
    if DmOrdemCarga.OrdemCargaSTATUS.VALUE IN [7] then
      DmOrdemCarga.ImprimirDevolucao(DmOrdemCarga.OrdemCargaCODIGO.VALUE);
  end;
end;

procedure TFrmSelFaturaVendas.ActDadosCargaExecute(Sender: TObject);
begin
    DmOrdemCarga.FichaCarga(DmOrdemCarga.OrdemCargaCODIGO.VALUE);
end;

procedure TFrmSelFaturaVendas.ActAjusteCargaExecute(Sender: TObject);
begin
  DmOrdemCarga.AjustaOrdemCarga;
end;

procedure TFrmSelFaturaVendas.ActDevolucaoExecute(Sender: TObject);
begin
    DmVendaS2.Proc_Devolucao_Venda(TVEntregaFuturaCODIGO.DataBinding.Field.AsInteger);
    FiltrarEntregaFutura;
end;

procedure TFrmSelFaturaVendas.ActAnaliseEntregaFinanceiraExecute(Sender: TObject);
var
    CodVenda : Integer;
begin
     CodVenda := DmVendas2.SelFaturaVendasFuturaCODIGO.value;
     //------------- Venda -----------------------------------------------------
     DmVendas.Consulta_Venda.Close;
     DmVendas.Consulta_Venda.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj;
     DmVendas.Consulta_Venda.ParamByName ('COD'   ).AsInteger := CodVenda;
     DmVendas.Consulta_Venda.Prepare;
     DmVendas.Consulta_Venda.Open;

     If DmVendas.Consulta_Venda.Fields[0].isNull then
     begin
          Showmessage ('Venda Não Cadastrada, Verifique!');
          Exit;
     end;

     //---- Itens da Venda -----------------------------------------------------
     DmVendas.Consulta_Venda_Itens.Close;
     DmVendas.Consulta_Venda_Itens.ParamByName('CNPJ').AsString  := DmApp.Cnpj;
     DmVendas.Consulta_Venda_Itens.ParamByName('CODIGO').AsInteger := CodVenda;
     DmVendas.Consulta_Venda_Itens.Prepare;
     DmVendas.Consulta_Venda_Itens.Open;

     //------ Parcelas da Venda ------------------------------------------------
     DmVendas.Consulta_Venda_Parc.Close;
     DmVendas.Consulta_Venda_Parc.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     DmVendas.Consulta_Venda_Parc.ParamByName ('CODIGO').AsInteger := CodVenda ;
     DmVendas.Consulta_Venda_Parc.Prepare;
     DmVendas.Consulta_Venda_Parc.Open;

     rptAnaliseEntrega.PRINT;
end;

procedure TFrmSelFaturaVendas.RzBitBtn5Click(Sender: TObject);
begin
 //dmApp.ConsultaNFe(dmApp.Cnpj,);
end;

procedure TFrmSelFaturaVendas.ActConsultarNFeExecute(Sender: TObject);
var
  fileXML : string;
begin
  with dmApp do
  begin
      if (DmVendas.SelFaturaVendasNFE_XML.AsString <> '') then
      begin
        if not(DirectoryExists('C:\Sistemas\HelpStore\NFe\Temp\')) then
          CreateDir('C:\Sistemas\HelpStore\NFe\Temp\');

        FileXML := 'C:\Sistemas\HelpStore\NFe\Temp'+DmVendas.SelFaturaVendasNUM_NF.AsString+'.tmp';

        DmVendas.SelFaturaVendasNFE_XML.SaveToFile(FileXML);

        ACBrNFe.NotasFiscais.Clear;
        ACBrNFe.NotasFiscais.LoadFromFile(FileXML);
        if (ACBrNFe.WebServices.ConsultaCadastro.Executar) then
        begin
          if not (ACBrNFe.NotasFiscais.Items[0].Confirmada) then
          begin
            Application.MessageBox(Pchar(ACBrNFe.NotasFiscais.Items[0].Msg) ,'Aviso',mb_ok + mb_iconerror);
            if Application.MessageBox('Deseja retransmitir a NFe?' ,'Aviso',mb_yesno + mb_iconquestion) = id_yes then
              ACBrNFe.Enviar(0);
          end;

          UpdateFAT_NFE_CONSULTA(dmApp.Cnpj,DmVendas.SelFaturaVendasCODIGO.VALUE,1);
          FrmSelFaturaVendas.Filtrar;
        end;
      end;
    end;
end;

procedure TFrmSelFaturaVendas.RzBitBtn11Click(Sender: TObject);
begin
  if (DmVendas.SelFaturaVendasNUM_CUPOM.AsInteger > 0) then
  begin
    Application.MessageBox('Impossível gerar DAV. Cumpo Fiscal já impresso','Aviso',mb_ok + mb_iconerror);
    exit;
  end ;

  DmApp.ImpECF_Bemacash(dmApp.Cnpj,DmVendas.SelFaturaVendasCODIGO.value);
end;

procedure TFrmSelFaturaVendas.verificalogin;
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmSelFaturaVendas.TVOCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = 13 then
    DmVendaS2.Proc_Consulta_Venda(TVEntregaFuturaCODIGO.DataBinding.Field.AsInteger);
end;

procedure TFrmSelFaturaVendas.TVTrocaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVCP_TEMPO_RESPOSTA.Index];
  If (Key = 13) and (not VarIsNull(TVTrocaCODIGO.DataBinding.Field.Value))then
     DmVendas2.Proc_Consulta_Troca(TVTrocaCODIGO.DataBinding.Field.AsInteger);
end;

procedure TFrmSelFaturaVendas.GridTVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = 13 then
    DmVendaS2.Proc_Consulta_Venda(GridTVCODIGO.DataBinding.Field.AsInteger);
end;

procedure TFrmSelFaturaVendas.gridOCMouseEnter(Sender: TObject);
begin
  PopupGrid.Grid := TcxGrid(Sender);
end;

procedure TFrmSelFaturaVendas.GridTVCODIGOCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  NUM_NF, TipoVenda, NUM_NF_XML, NFE_IMPRESSAO : Variant;
begin
  {Pinta de Vermelho a linha se deu alguma coisa errada com a NFe}
  ACanvas.Canvas.Brush.Style := bsSolid;
  if (dmapp.EXIBE_NFE = 'S') then
  begin
    NUM_NF := GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVNUM_NF.Index];
    NUM_NF_XML := GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVNUM_NF_XML.Index];
    NFE_IMPRESSAO := GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVNFE_IMPRESSAO.Index];

    if( (VarToStr(NUM_NF) <> VarToStr(NUM_NF_XML)) and (VarToStr(NFE_IMPRESSAO) = 'S'))then
    begin
        ACanvas.Canvas.Brush.Color := clRed;
       exit;
    end;
  end;


  TipoVenda := GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVTIPO_VENDA.Index];
  {Pintando a linha se a venda for uma condicional}

  if not VarIsNull(TipoVenda) then
  begin
    if 'Con' = VarToStr(TipoVenda) then
      ACanvas.Canvas.Brush.Color := $00ECAD84
    
  end

end;

procedure TFrmSelFaturaVendas.TVTrocattl_liquidoCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Valor : Variant;
begin
  Valor := TVTroca.ViewData.Records[AViewInfo.GridRecord.Index].Values[TVTrocattl_liquido.Index];
  {Trata o total liquido da troca}

  if (Valor) < 0 then
    ACanvas.Canvas.Font.Color := clRed
  else if (Valor) = 0 then
    ACanvas.Canvas.Font.Color := clBlue
  else
   ACanvas.Canvas.Font.Color := clGreen;
end;

procedure TFrmSelFaturaVendas.GridTVDIVERG_CARTAOCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Value : Variant;
begin
  Value := GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVDIVERG_CARTAO.Index];

  if (Value > 0) then
     ACanvas.Canvas.Brush.Color := clRed
  else
     ACanvas.Canvas.Brush.Color := clGreen;

end;

procedure TFrmSelFaturaVendas.GridTVDIVERG_CHEQUECustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Value : Variant;
begin
  Value := GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVDIVERG_CHEQUE.Index];

  if ((Value) > 0)  then
     ACanvas.Canvas.Brush.Color := clRed
  else
     ACanvas.Canvas.Brush.Color := clGreen;
end;

procedure TFrmSelFaturaVendas.GridTVNFE_AUTORIZADACustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Value : Variant;
begin
  Value := GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVNFE_AUTORIZADA.Index];

  if (trim(VarToStr(Value)) = '1') then
    ACanvas.Canvas.Brush.Color := $0080FF80
  else if (trim(VarToStr(Value)) = '3') then
    ACanvas.Canvas.Brush.Color := clYellow;

  ACanvas.Canvas.Brush.Style := bsSolid;
end;

procedure TFrmSelFaturaVendas.edNDoctoEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

end.





