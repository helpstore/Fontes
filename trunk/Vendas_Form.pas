unit Vendas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  Grids, DBGrids, IBQuery,   Mask,
  Menus, DBCtrls, cxPropertiesStore, Variants,pcnConversao,
  dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinscxPCPainter, cxContainer, cxEdit,
  cxButtons, cxLabel, cxPC,  cxTextEdit, cxCurrencyEdit, 
   cxMaskEdit, cxDropDownEdit, cxDBEdit, DateUtils, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridLevel, cxGridCustomView, cxGrid, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxCheckBox, cxButtonEdit;

type
  TFrmVendas = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    dsParametros: TDataSource;
    DataSource: TDataSource;
    actLookup: TAction;
    PC: TcxPageControl;
    tabVenda: TcxTabSheet;
    Shape1: TShape;
    dsNaturezas: TDataSource;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    TabFaturamento: TcxTabSheet;
    Shape3: TShape;
    btnAlterar: TdxBarButton;
    Label29: TcxLabel;
    cmbTipoDocto: TdxDBLookupEdit;
    Label30: TcxLabel;
    dsTipoDoctos: TDataSource;
    DsVendedores: TDataSource;
    Label8: TcxLabel;
    BtnForma: TcxButton;
    DsFormaPgto: TDataSource;
    Label17: TcxLabel;
    EdDesconto: TdxDBCalcEdit;
    Label34: TcxLabel;
    Label35: TcxLabel;
    cmbContaCorrente: TdxDBLookupEdit;
    DsParcelas: TDataSource;
    DsItens: TDataSource;
    DsTerceiros: TDataSource;
    dsPlano: TDataSource;
    ActEnviaCaixa: TAction;
    ActLocalizarCliente: TAction;
    edObservacoes: TdxDBMemo;
    DsUnidades: TDataSource;
    ActLocalizarNatureza: TAction;
    ActLocalizarTerceiros: TAction;
    ActLocalizarVendedores: TAction;
    IMG2: TImage;
    IMG3: TImage;
    ActConsultaProduto: TAction;
    Label9: TcxLabel;
    DsPropriedade: TDataSource;
    ActLocalizarPropriedade: TAction;
    Shape2: TShape;
    EdForma: TdxDBEdit;
    ActLocalizarForma: TAction;
    dxDBEdit4: TdxDBEdit;
    ActCalcularDesconto: TAction;
    EDENTRADA: TdxDBCalcEdit;
    ActTodasNaturezas: TAction;
    ActAnaliseCustos: TAction;
    ActCores: TAction;
    DsTransportadora: TDataSource;
    Label45: TcxLabel;
    EdOrcamento: TdxDBEdit;
    dsMarcas: TDataSource;
    btnAnalise: TdxBarButton;
    btnAltera: TdxBarButton;
    GRIDFATURAMENTO: TDBGrid;
    ActImportaItens: TAction;
    PopupFat: TPopupMenu;
    ImportarItens1: TMenuItem;
    Panel6: TPanel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    b2: TBevel;
    Panel7: TPanel;
    Label1: TcxLabel;
    EdDocumento: TdxDBEdit;
    cbFrete: TdxDBCheckEdit;
    Label42: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    Label3: TcxLabel;
    EdDataNota: TdxDBDateEdit;
    Label2: TcxLabel;
    EdPessoa: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    BtnPessoa: TcxButton;
    IMG1: TImage;
    Label15: TcxLabel;
    EdPropriedade: TdxDBEdit;
    CmbPropriedade: TdxDBEdit;
    Label4: TcxLabel;
    EdNatureza: TdxDBEdit;
    CmbNatureza: TdxDBEdit;
    LBLTERCEIROS: TcxLabel;
    EdTerceiro: TdxDBEdit;
    CmbTerceiro: TdxDBEdit;
    BtnTerceiro: TcxButton;
    btnNatureza: TcxButton;
    Label5: TcxLabel;
    Label16: TcxLabel;
    dxDBEdit10: TdxDBEdit;
    Label14: TcxLabel;
    CmbTipo: TdxDBPickEdit;
    Label18: TcxLabel;
    EdLocal: TdxDBPickEdit;
    EdVendedor: TdxDBEdit;
    cmbVendedor: TdxDBEdit;
    BtnVendedor: TcxButton;
    mmObservacao: TdxDBMemo;
    Panel8: TPanel;
    Panel3: TPanel;
    Label25: TcxLabel;
    Label27: TcxLabel;
    Label6: TcxLabel;
    Label13: TcxLabel;
    Label12: TcxLabel;
    Shape7: TShape;
    RxLabel1: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    ckEntregaFutura: TDBCheckBox;
    Label40: TcxLabel;
    TabTransporte: TcxTabSheet;
    Panel2: TPanel;
    Label48: TcxLabel;
    Label44: TcxLabel;
    Label51: TcxLabel;
    Label52: TcxLabel;
    Label53: TcxLabel;
    Label54: TcxLabel;
    Label50: TcxLabel;
    Label55: TcxLabel;
    Label37: TcxLabel;
    aTfrmCadTransportadoras: TdxDBLookupEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBCalcEdit2: TdxDBCalcEdit;
    dxDBCalcEdit3: TdxDBCalcEdit;
    dxDBCalcEdit4: TdxDBCalcEdit;
    cmbMarca: TdxDBLookupEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    TabImpostos: TcxTabSheet;
    PNIMPOSTOS: TPanel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    Label24: TcxLabel;
    Label26: TcxLabel;
    Label36: TcxLabel;
    EDBASEICMS: TdxDBCalcEdit;
    EDICMS: TdxDBCalcEdit;
    EDBASEICMSSUBST: TdxDBCalcEdit;
    EDICMSSUBST: TdxDBCalcEdit;
    dxDBCalcEdit6: TdxDBCalcEdit;
    EDFRETE: TdxDBCalcEdit;
    EDSEGURO: TdxDBCalcEdit;
    EDDESPESAS: TdxDBCalcEdit;
    EDIPI: TdxDBCalcEdit;
    dxDBCalcEdit11: TdxDBCalcEdit;
    btnCaixa: TdxBarButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Label43: TcxLabel;
    DBCoolText6: TDBText;
    Shape12: TShape;
    Label31: TcxLabel;
    DBCoolText2: TDBText;
    Shape8: TShape;
    lblDescto: TcxLabel;
    Shape13: TShape;
    Label46: TcxLabel;
    Label41: TcxLabel;
    DBCoolText5: TDBText;
    Shape11: TShape;
    Label32: TcxLabel;
    DBCoolText3: TDBText;
    Shape9: TShape;
    Label33: TcxLabel;
    Shape10: TShape;
    DBCoolText4: TDBText;
    Label39: TcxLabel;
    Shape5: TShape;
    DBCoolText1: TDBText;
    lblTributo: TcxLabel;
    Shape14: TShape;
    Label47: TcxLabel;
    Panel12: TPanel;
    Label7: TcxLabel;
    stgVendasItens: TcxPropertiesStore;
    dxDBCalcEdit5: TdxDBCalcEdit;
    Label28: TcxLabel;
    Label38: TcxLabel;
    dxDBEdit11: TdxDBEdit;
    BTNCENTRO: TcxButton;
    cmbcentro: TdxDBLookupEdit;
    DsCentro: TDataSource;
    dxDBEdit12: TdxDBEdit;
    dxDBEdit13: TdxDBEdit;
    Label56: TcxLabel;
    btnImportaItens: TdxBarButton;
    btnDesconto: TdxBarButton;
    edtDataBase: TdxDBDateEdit;
    Label57: TcxLabel;
    ActConfigFin: TAction;
    DsLocal: TDataSource;
    ActComItem: TAction;
    btnEnviar: TdxBarButton;
    Panel13: TPanel;
    Label62: TcxLabel;
    dxDBCalcEdit7: TdxDBCalcEdit;
    dxDBCalcEdit8: TdxDBCalcEdit;
    Label63: TcxLabel;
    Label64: TcxLabel;
    dxDBCalcEdit9: TdxDBCalcEdit;
    dxDBCalcEdit10: TdxDBCalcEdit;
    Label65: TcxLabel;
    DBCheckBox1: TDBCheckBox;
    btnValidaNFe: TdxBarButton;
    btnAssinaNFe: TdxBarButton;
    ActValidaNFe: TAction;
    ActAssinaNFe: TAction;
    Label58: TcxLabel;
    edPlaca: TdxDBMaskEdit;
    edUF: TdxDBEdit;
    Label59: TcxLabel;
    Label68: TcxLabel;
    dxDBEdit14: TdxDBEdit;
    dxDBEdit15: TdxDBEdit;
    Label60: TcxLabel;
    EdPorcentagem: TcxCurrencyEdit;
    edFreteConta: TcxDBComboBox;
    Vendas: TIBDataSet;
    VendasCNPJ: TIBStringField;
    VendasCODIGO: TIntegerField;
    VendasFECHADA: TIBStringField;
    VendasHISTORICO: TIBStringField;
    VendasPESSOA_FJ: TIntegerField;
    VendasUSUARIO: TIntegerField;
    VendasVENDEDOR: TIntegerField;
    VendasFORMA_PGTO: TIntegerField;
    VendasNUM_NF: TIntegerField;
    VendasNUM_CUPOM: TIntegerField;
    VendasNATUREZA: TIntegerField;
    VendasPROPRIEDADE: TIntegerField;
    VendasCONVENIADO: TIntegerField;
    VendasDESC_ACRES: TFloatField;
    VendasTIPO_DOCTO: TIBStringField;
    VendasLOCAL_COBRANCA: TIntegerField;
    VendasENTRADA: TFloatField;
    VendasDINHEIRO: TFloatField;
    VendasCHEQUE: TFloatField;
    VendasCARTAO: TFloatField;
    VendasTICKET: TFloatField;
    VendasENVIADA_CX: TIBStringField;
    VendasTOTAL: TFloatField;
    VendasVLR_PARC_LC: TFloatField;
    VendasTotal_Geral: TFloatField;
    VendasTotal_Parcelar: TFloatField;
    VendasDiferenca: TFloatField;
    VendasTERCEIRO: TIntegerField;
    VendasCARGA: TIntegerField;
    VendasVOLUME: TFloatField;
    VendasPESO: TFloatField;
    VendasREQUISICAO: TIBStringField;
    VendasAVista: TFloatField;
    VendasDESCRICAO: TBlobField;
    VendasTIPO_VENDA: TIBStringField;
    VendasNOME_CONSUMIDOR: TIBStringField;
    VendasORCAMENTO: TIntegerField;
    VendasTROCO: TFloatField;
    VendasLOCAL: TIntegerField;
    VendasNOME: TIBStringField;
    VendasCANCELADA: TIBStringField;
    VendasBASE_ICM: TFloatField;
    VendasICM: TFloatField;
    VendasBASE_ICM_SUBST: TFloatField;
    VendasVALOR_ICM_SUBST: TFloatField;
    VendasFRETE: TFloatField;
    VendasSEGURO: TFloatField;
    VendasDESPESAS: TFloatField;
    VendasIPI: TFloatField;
    VendasTOTAL_NOTA: TFloatField;
    VendasSELECIONADA: TIBStringField;
    VendasDUPLICATA: TIntegerField;
    VendasRECEBIDAS: TFloatField;
    VendasNOME_PROPRIEDADE: TIBStringField;
    VendasNOME_VENDEDOR: TIBStringField;
    VendasNOME_NATUREZA: TIBStringField;
    VendasNOME_TERCEIRO: TIBStringField;
    VendasNOME_FORMA: TIBStringField;
    VendasUF: TIBStringField;
    VendasVALIDADE: TDateTimeField;
    VendasDESCONTOS_CONCEDIDOS: TFloatField;
    VendasTRANSPORTADORA: TIntegerField;
    VendasTOTAL_FISCAL: TFloatField;
    VendasCONS_REV: TIBStringField;
    VendasIRRF: TFloatField;
    VendasINSS: TFloatField;
    VendasISS: TFloatField;
    VendasPIS_COFINS_CSLL: TFloatField;
    VendasDOCUMENTOS_CONSUMIDOR: TIBStringField;
    VendasENDERECO_CONSUMIDOR: TIBStringField;
    VendasCIDADE_CONSUMIDOR: TIBStringField;
    VendasDESCTO_RES: TFloatField;
    VendasID_AGRUPADOR: TIntegerField;
    VendasCONTA_CAIXA: TIntegerField;
    VendasAPRAZO: TFloatField;
    VendasBANCO: TIBStringField;
    VendasCONTROLA_PLACA: TIBStringField;
    VendasCONTROLA_KM: TIBStringField;
    VendasASSINA_NOTA: TIBStringField;
    VendasKM_ATUAL: TFloatField;
    VendasMEDIA_KM: TFloatField;
    VendasTURNO: TIntegerField;
    VendasHORA: TTimeField;
    VendasNAO_COBR_JUR_ATE: TIntegerField;
    VendasSERIE: TIBStringField;
    VendasNOME_CONVENIO: TIBStringField;
    VendasDT_EMISSAO_AGRUPADA: TDateTimeField;
    VendasDATA_CANCELAMENTO: TDateTimeField;
    VendasVALE_TROCO: TIBStringField;
    VendasPGTO_FRETE: TIBStringField;
    VendasBAIRRO_CONSUMIDOR: TIBStringField;
    VendasFONE_CONSUMIDOR: TIBStringField;
    VendasMESA: TIntegerField;
    VendasCOMPROMETER_ESTOQUE: TIBStringField;
    VendasDevolucao: TStringField;
    VendasRemessa: TStringField;
    VendasDESCTO_ICMS: TFloatField;
    VendasPCT_DESCTO_ICMS: TFloatField;
    VendasNF_AGRUPADA: TIBStringField;
    VendasTRP_ESPECIE: TIBStringField;
    VendasTRP_QTDE: TFloatField;
    VendasTRP_PESO_BRUTO: TFloatField;
    VendasTRP_PESO_LIQUIDO: TFloatField;
    VendasTRP_NUMERO: TIBStringField;
    VendasTRP_MARCA: TIntegerField;
    VendasTRP_NOME: TIBStringField;
    VendasSTATUS_CARREGAMENTO: TIntegerField;
    VendasENTREGA_FUTURA: TIBStringField;
    VendasORDEM_CARGA: TIntegerField;
    VendasPCT_COMISSAO: TFloatField;
    VendasTotal_Itens: TFloatField;
    VendasCENTRO_CUSTO: TIntegerField;
    VendasGERA_FINANCEIRO: TIBStringField;
    VendasES: TIBStringField;
    VendasDATA: TDateField;
    VendasDATA_CAIXA: TDateTimeField;
    VendasNFE_SELECIONADO: TIBStringField;
    VendasDT_PREV_ENTREGA: TDateField;
    VendasCOD_INDEXADOR: TIntegerField;
    VendasIDX_DATABASE: TDateField;
    VendasIDX_COTACAO: TFloatField;
    VendasIDX_QTDE: TFloatField;
    Vendas_Total_Geral_IDX: TFloatField;
    VendasCOD_CONFIGTITULO: TIntegerField;
    VendasNFE_VALIDADA: TIBStringField;
    VendasNFE_ASSINADA: TIBStringField;
    VendasNFE_TRANSMITIDA: TIBStringField;
    VendasNFE_AUTORIZADA: TIBStringField;
    VendasNFE_DANFE_IMPRESSO: TIBStringField;
    VendasCLI_SUB_TRIBUTARIO: TIBStringField;
    VendasDT_EMISSAO_NF: TDateField;
    VendasDT_EMISSAO_CF: TDateField;
    VendasN_SEQ_ECF: TIBStringField;
    VendasN_SERIE_ECF: TIBStringField;
    VendasNFE_PROTOCOLO: TIBStringField;
    VendasNFE_RECIBO: TIBStringField;
    VendasNFE_XML: TMemoField;
    VendasNFE_CHAVE: TIBStringField;
    VendasNFE_CANC_MOTIVO: TIBStringField;
    VendasNFE_CANC_STATUS: TIBStringField;
    VendasNFE_CANC_PROTOCOLO: TIBStringField;
    VendasNFE_CANC_XML: TMemoField;
    VendasPLACA: TIBStringField;
    VendasUF_PLACA: TIBStringField;
    VendasBCH_COD_FILIAL: TIntegerField;
    VendasDESCTO_SERVICO: TFloatField;
    VendasSINTEG_VLR_ISENTO: TFloatField;
    VendasSINTEG_VLR_OUTROS: TFloatField;
    VendasSINTEG_VLR_CONTABIL: TFloatField;
    VendasTRP_CIDADE: TIBStringField;
    VendasTRP_CPF_CNPJ: TIBStringField;
    VendasOBSERVACAO: TIBStringField;
    VendasNFE_NUMERO: TIBStringField;
    Vendas_Itens: TIBDataSet;
    Vendas_ItensCNPJ: TIBStringField;
    Vendas_ItensCODIGO: TIntegerField;
    Vendas_ItensQUANTIDADE: TFloatField;
    Vendas_ItensPRC_CUSTO: TFloatField;
    Vendas_ItensICM: TFloatField;
    Vendas_ItensICM_SUBS: TFloatField;
    Vendas_ItensIPI: TFloatField;
    Vendas_ItensTotal: TFloatField;
    Vendas_ItensPeso_Total: TFloatField;
    Vendas_ItensVOLUME: TFloatField;
    Vendas_ItensPESO: TFloatField;
    Vendas_ItensVolume_Total: TFloatField;
    Vendas_ItensDESCONTO: TFloatField;
    Vendas_ItensPORC_DESC: TFloatField;
    Vendas_ItensUNIDADE: TIBStringField;
    Vendas_ItensPRC_UNIT_ORIGINAL: TFloatField;
    Vendas_ItensSEQUENCIA: TSmallintField;
    Vendas_ItensNOME_PRODUTO: TIBStringField;
    Vendas_ItensALIQUOTA: TIBStringField;
    Vendas_ItensPRODUTOFIS: TIBStringField;
    Vendas_ItensNOME_FIS: TIBStringField;
    Vendas_ItensSUBUNIDADE: TIntegerField;
    Vendas_ItensORIGEM: TIntegerField;
    Vendas_ItensCTE: TIntegerField;
    Vendas_ItensCTIE: TIntegerField;
    Vendas_ItensREDUCAO: TIntegerField;
    Vendas_ItensFRACIONADO: TIBStringField;
    Vendas_ItensVENDEDOR: TIntegerField;
    Vendas_ItensMENSAGEM_REDUCAO: TIBStringField;
    Vendas_ItensBASECALCULOICM: TFloatField;
    Vendas_ItensBASECALCULOSUBSTITUICAO: TFloatField;
    Vendas_ItensALIQUOTA_EST: TFloatField;
    Vendas_ItensALIQUOTA_INT: TFloatField;
    Vendas_ItensCFOP: TIntegerField;
    Vendas_ItensCOMPLEMENTO: TIBStringField;
    Vendas_ItensSERVICO: TBlobField;
    Vendas_ItensNUMERO: TIBStringField;
    Vendas_ItensGRADE: TIBStringField;
    Vendas_ItensPRC_UNITARIO_FIS: TFloatField;
    Vendas_ItensQUANTIDADE_FIS: TFloatField;
    Vendas_ItensTOTAL_FISCAL: TFloatField;
    Vendas_ItensLOTE: TIBStringField;
    Vendas_ItensCODIGO_LOTE: TIntegerField;
    Vendas_ItensUTILIZA_LOTE: TIBStringField;
    Vendas_ItensGRADE1: TIBStringField;
    Vendas_ItensNOME_COR: TIBStringField;
    Vendas_ItensNOME_MATERIAL: TIBStringField;
    Vendas_ItensNOME_PERFIL: TIBStringField;
    Vendas_ItensPRD_SERVICO: TIBStringField;
    Vendas_ItensPRC_UNITARIO: TFloatField;
    Vendas_ItensPRODUTO: TIBStringField;
    Vendas_ItensSPRODUTO: TIBStringField;
    dsLink: TDataSource;
    Comissao_Item: TIBDataSet;
    Comissao_ItemCNPJ: TIBStringField;
    Comissao_ItemCODIGO: TIntegerField;
    Comissao_ItemCOD_ITEM: TIntegerField;
    Comissao_ItemPRODUTO: TIBStringField;
    Comissao_ItemSEQUENCIA: TIntegerField;
    Comissao_ItemPESSOA_FJ: TIntegerField;
    Comissao_ItemPERCENTUAL: TFloatField;
    Comissao_ItemLK_PESSOA: TStringField;
    dsComissaoLink: TDataSource;
    GridItens: TcxGrid;
    GridItensTV: TcxGridDBBandedTableView;
    GridItensLV: TcxGridLevel;
    GridItensTVCNPJ: TcxGridDBBandedColumn;
    GridItensTVCODIGO: TcxGridDBBandedColumn;
    GridItensTVQUANTIDADE: TcxGridDBBandedColumn;
    GridItensTVPRC_CUSTO: TcxGridDBBandedColumn;
    GridItensTVICM: TcxGridDBBandedColumn;
    GridItensTVICM_SUBS: TcxGridDBBandedColumn;
    GridItensTVIPI: TcxGridDBBandedColumn;
    GridItensTVTotal: TcxGridDBBandedColumn;
    GridItensTVPeso_Total: TcxGridDBBandedColumn;
    GridItensTVVOLUME: TcxGridDBBandedColumn;
    GridItensTVPESO: TcxGridDBBandedColumn;
    GridItensTVVolume_Total: TcxGridDBBandedColumn;
    GridItensTVDESCONTO: TcxGridDBBandedColumn;
    GridItensTVPORC_DESC: TcxGridDBBandedColumn;
    GridItensTVUNIDADE: TcxGridDBBandedColumn;
    GridItensTVPRC_UNIT_ORIGINAL: TcxGridDBBandedColumn;
    GridItensTVSEQUENCIA: TcxGridDBBandedColumn;
    GridItensTVNOME_PRODUTO: TcxGridDBBandedColumn;
    GridItensTVALIQUOTA: TcxGridDBBandedColumn;
    GridItensTVPRODUTOFIS: TcxGridDBBandedColumn;
    GridItensTVNOME_FIS: TcxGridDBBandedColumn;
    GridItensTVSUBUNIDADE: TcxGridDBBandedColumn;
    GridItensTVORIGEM: TcxGridDBBandedColumn;
    GridItensTVCTE: TcxGridDBBandedColumn;
    GridItensTVCTIE: TcxGridDBBandedColumn;
    GridItensTVREDUCAO: TcxGridDBBandedColumn;
    GridItensTVFRACIONADO: TcxGridDBBandedColumn;
    GridItensTVVENDEDOR: TcxGridDBBandedColumn;
    GridItensTVMENSAGEM_REDUCAO: TcxGridDBBandedColumn;
    GridItensTVBASECALCULOICM: TcxGridDBBandedColumn;
    GridItensTVBASECALCULOSUBSTITUICAO: TcxGridDBBandedColumn;
    GridItensTVALIQUOTA_EST: TcxGridDBBandedColumn;
    GridItensTVALIQUOTA_INT: TcxGridDBBandedColumn;
    GridItensTVCFOP: TcxGridDBBandedColumn;
    GridItensTVCOMPLEMENTO: TcxGridDBBandedColumn;
    GridItensTVSERVICO: TcxGridDBBandedColumn;
    GridItensTVNUMERO: TcxGridDBBandedColumn;
    GridItensTVGRADE: TcxGridDBBandedColumn;
    GridItensTVPRC_UNITARIO_FIS: TcxGridDBBandedColumn;
    GridItensTVQUANTIDADE_FIS: TcxGridDBBandedColumn;
    GridItensTVTOTAL_FISCAL: TcxGridDBBandedColumn;
    GridItensTVLOTE: TcxGridDBBandedColumn;
    GridItensTVCODIGO_LOTE: TcxGridDBBandedColumn;
    GridItensTVUTILIZA_LOTE: TcxGridDBBandedColumn;
    GridItensTVGRADE1: TcxGridDBBandedColumn;
    GridItensTVNOME_COR: TcxGridDBBandedColumn;
    GridItensTVNOME_MATERIAL: TcxGridDBBandedColumn;
    GridItensTVNOME_PERFIL: TcxGridDBBandedColumn;
    GridItensTVPRD_SERVICO: TcxGridDBBandedColumn;
    GridItensTVPRC_UNITARIO: TcxGridDBBandedColumn;
    GridItensTVPRODUTO: TcxGridDBBandedColumn;
    GridItensTVSPRODUTO: TcxGridDBBandedColumn;
    stgFrmVendas: TcxPropertiesStore;
    PopupGrid: TcxGridPopupMenu;
    ActConfCampos: TAction;
    Vendas_Parc: TIBDataSet;
    Vendas_ParcCNPJ: TIBStringField;
    Vendas_ParcCODIGO: TIntegerField;
    Vendas_ParcVENCTO: TDateTimeField;
    Vendas_ParcPARCELA: TIBStringField;
    Vendas_ParcVALOR: TFloatField;
    Vendas_ParcBOLETO: TIntegerField;
    Vendas_ParcVALOR_EXTENSO: TIBStringField;
    DsVendas: TDataSource;
    cmbContrato: TdxDBLookupEdit;
    cxLabel1: TcxLabel;
    VendasCOD_CONTRATO: TIntegerField;
    qryContratos: TIBQuery;
    qryContratosCODIGO: TIntegerField;
    qryContratosDESCRICAO: TIBStringField;
    dsContrato: TDataSource;
    btnTransportadora: TcxButtonEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure tabVendaEnter(Sender: TObject);
    procedure ActNextPageExecute(Sender: TObject);
    procedure ActPreviousPageExecute(Sender: TObject);
    procedure TabFaturamentoEnter(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure btnNaturezaClick(Sender: TObject);
    procedure BtnVendedorClick(Sender: TObject);
    procedure BtnTerceiroClick(Sender: TObject);
    procedure GRIDFATURAMENTO_Enter(Sender: TObject);
    procedure GRIDFATURAMENTOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnFormaClick(Sender: TObject);
    procedure ActEnviaCaixaExecute(Sender: TObject);
    procedure ActLocalizarClienteExecute(Sender: TObject);
    procedure PCChange(Sender: TObject);
    procedure EdNaturezaExit(Sender: TObject);
    procedure CmbTipoEnter(Sender: TObject);
    procedure dxDBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DataSourceUpdateData(Sender: TObject);
    procedure EdPessoaExit(Sender: TObject);
    procedure ActLocalizarNaturezaExecute(Sender: TObject);
    procedure ActLocalizarTerceirosExecute(Sender: TObject);
    procedure ActLocalizarVendedoresExecute(Sender: TObject);
    procedure EdVendedorExit(Sender: TObject);
    procedure EdTerceiroExit(Sender: TObject);
    procedure ActConsultaProdutoExecute(Sender: TObject);
    procedure EdPorcentagemExit(Sender: TObject);
    procedure EdPessoaEnter(Sender: TObject);
    procedure CmbTipoExit(Sender: TObject);
    procedure EdLocalExit(Sender: TObject);
    procedure cmbNaturezaExit(Sender: TObject);
    procedure cmbvendedorExit(Sender: TObject);
    procedure CmbTerceiroExit(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure edObservacoesExit(Sender: TObject);
    procedure edObservacoesKeyPress(Sender: TObject; var Key: Char);
    procedure EdPropriedadeExit(Sender: TObject);
    procedure ActLocalizarPropriedadeExecute(Sender: TObject);
    procedure EdPropriedadeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdFormaExit(Sender: TObject);
    procedure ActLocalizarFormaExecute(Sender: TObject);
    procedure ActCalcularDescontoExecute(Sender: TObject);
    procedure EdDescontoExit(Sender: TObject);
    procedure RzBitBtn2Enter(Sender: TObject);
    procedure RzBitBtn2Exit(Sender: TObject);
    procedure ActTodasNaturezasExecute(Sender: TObject);
    procedure ActAnaliseCustosExecute(Sender: TObject);
    procedure ActCoresExecute(Sender: TObject);
    procedure mmObservacaoKeyPress(Sender: TObject; var Key: Char);
    procedure mmObservacaoEnter(Sender: TObject);
    procedure mmObservacaoExit(Sender: TObject);
    procedure mmObservacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure aTfrmCadTransportadorasChange(Sender: TObject);
    procedure edFreteContaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GRIDFATURAMENTO_Exit(Sender: TObject);
    procedure ActImportaItensExecute(Sender: TObject);
    procedure BTNCENTROClick(Sender: TObject);
    procedure ActConfigFinExecute(Sender: TObject);
    procedure ActComItemExecute(Sender: TObject);
    procedure ActValidaNFeExecute(Sender: TObject);
    procedure ActAssinaNFeExecute(Sender: TObject);
    procedure VendasAfterInsert(DataSet: TDataSet);
    procedure VendasBeforeDelete(DataSet: TDataSet);
    procedure VendasBeforeOpen(DataSet: TDataSet);
    procedure VendasBeforePost(DataSet: TDataSet);
    procedure VendasCalcFields(DataSet: TDataSet);
    procedure VendasNewRecord(DataSet: TDataSet);
    procedure Vendas_ItensCalcFields(DataSet: TDataSet);
    procedure Vendas_ItensNewRecord(DataSet: TDataSet);
    procedure Vendas_ItensSPRODUTOSetText(Sender: TField;
      const Text: String);
    procedure Vendas_ItensQUANTIDADEValidate(Sender: TField);
    procedure Vendas_ItensPRODUTOValidate(Sender: TField);
    procedure Vendas_ItensPORC_DESCValidate(Sender: TField);
    procedure Vendas_ItensCFOPValidate(Sender: TField);
    procedure Vendas_ItensBeforePost(DataSet: TDataSet);
    procedure Vendas_ItensBeforeInsert(DataSet: TDataSet);
    procedure Vendas_ItensNUMEROValidate(Sender: TField);
    procedure Vendas_ItensGRADEValidate(Sender: TField);
    procedure VendasPESSOA_FJValidate(Sender: TField);
    procedure VendasVENDEDORValidate(Sender: TField);
    procedure VendasFORMA_PGTOValidate(Sender: TField);
    procedure VendasNATUREZAValidate(Sender: TField);
    procedure VendasPROPRIEDADEValidate(Sender: TField);
    procedure VendasDESC_ACRESValidate(Sender: TField);
    procedure VendasENTRADAValidate(Sender: TField);
    procedure VendasDINHEIROValidate(Sender: TField);
    procedure VendasCHEQUEValidate(Sender: TField);
    procedure VendasCARTAOValidate(Sender: TField);
    procedure VendasTERCEIROValidate(Sender: TField);
    procedure VendasTIPO_VENDAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure VendasTIPO_VENDASetText(Sender: TField; const Text: String);
    procedure VendasPGTO_FRETESetText(Sender: TField; const Text: String);
    procedure VendasPGTO_FRETEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Comissao_ItemNewRecord(DataSet: TDataSet);
    procedure Comissao_ItemBeforePost(DataSet: TDataSet);
    procedure GridItensEnter(Sender: TObject);
    procedure GridItensTVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure Vendas_ItensBeforeOpen(DataSet: TDataSet);
    procedure Vendas_ParcAfterPost(DataSet: TDataSet);
    procedure Vendas_ParcBeforePost(DataSet: TDataSet);
    procedure Vendas_ParcNewRecord(DataSet: TDataSet);
    procedure Vendas_ParcVALORValidate(Sender: TField);
    procedure VendasTIPO_DOCTOValidate(Sender: TField);
    procedure Vendas_ItensDESCONTOValidate(Sender: TField);
    procedure Vendas_ItensAfterPost(DataSet: TDataSet);
    procedure btnTransportadoraClick(Sender: TObject);
    procedure btnTransportadoraPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    DesctoRes : Variant;
    VendaParcelada: Boolean ;
    Ven_Dia_Pref_Fat, Ven_Limite_Tempo, NDocto: integer;
    Bloqueado, Ven_Requisicao, Classificacao: String[1];
    Qtdade_1, Ven_Limite_Credito : Real;
    LocProp, LocCli, LocNat, LocVen, LocTer, LocForma :Boolean ;
    procedure HabilitaFaturamento ( Codigo: Integer );
    Procedure DescontoRestante;
    Procedure ExibeFormItens;
  public
    { Public declarations }
    CodVenda : Integer;
    Procedure Calcular_Parcelas;
    procedure Calcular_DescAcresc;
    Procedure Calcular_Itens;
  end;

var
  FrmVendas: TFrmVendas;
  Sair: Boolean ;

implementation

uses Vendas_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     VendasItens_Form,
     Cadastros_DM,
     NaturezaOper_Form,
     Vendedores_Form,
     Clientes_Form,
     Terceiros_Form,
     FormasPagto_Form,
     SelVendas_Form,
     Localizar_Cliente,
     MensagemFaturamento_Form,
     EnviaCaixa_FRel,
     TipoFaturaVenda_Form,
     Localizar_Natureza,
     Localizar_Terceiro,
     Localizar_Vendedor,
     Localizar_Propriedade,
     Localizar_Forma,
     Dados_Desconto_Form,
     FaturaVenda_Form,
     Vendas_DM2, Financeiro_Dm, Centro_Custo_Form, ConfigFin_Form,
  DefineComissaoItem_Form, Cadastros_Dm2, ACBrNFeWebServices,
  ACBrNFeNotasFiscais, Localizar_Lote, VendasPdv_Form,
  Entra_Dados_Consumidor_Form, ConsultaCobrancas_Form,
  MensagemClassificacao_Form, EntraSenha_Form, UntCadTransportadoras;
  {$R *.DFM}

procedure TFrmVendas.Calcular_Itens;
Var bReg: Pointer;
    tProdutos            : Extended ;
    tFProdutos           : Extended ;
    tPesos               : Extended ;
    tVolumes             : Extended ;
    tDesconto            : Extended ;
    BaseIcm, BaseIcmSubst: Extended ;
    Icm, IcmSubst        : Extended ;
    TotalNota            : Extended ;
    Estado               : String[1];
    Desconto             : real;
    pctAcerto            : real;
begin
  //
  If dsItens.DataSet.RecordCount > 0 Then
     bReg := dsItens.DataSet.GetBookmark;

//  dsItens.DataSet.DisableControls;

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
  Desconto := 0;
  pctAcerto := 0;
  dsItens.DataSet.First;
  While Not dsItens.DataSet.Eof Do
  Begin
    tProdutos := tProdutos  + (dsItens.DataSet.FieldByName('TOTAL'       ).asFloat + (dsItens.DataSet.FieldByName('DESCONTO').asFloat * Vendas_ItensQUANTIDADE.value));  //Sanniel -- somente total_nota deve conter o valor com desconto
    tFProdutos:= tFProdutos + dsItens.DataSet.FieldByName('TOTAL_FISCAL').asFloat;
    tPesos    := tPesos     + dsItens.DataSet.FieldByName('PESO_TOTAL'  ).asFloat;
    tVolumes  := tVolumes   + dsItens.DataSet.FieldByName('VOLUME_TOTAL').asFloat;
    tDesconto := tDesconto  + (dsItens.DataSet.FieldByName('DESCONTO').asFloat * Vendas_ItensQUANTIDADE.value);

    BaseIcm       := BaseIcm      + Vendas_ItensBASECALCULOICM.Value ;
    BaseIcmSubst  := BaseIcmSubst + Vendas_ItensBASECALCULOSUBSTITUICAO.Value ;

    //ESTADUAL OU INTERESTADUAL
    IF DataSource.DataSet.FieldByName('UF').Value = DmaPP.UF THEN
    BEGIN //ESTADUAL
      Icm      := Icm       + (( Vendas_ItensALIQUOTA_EST.Value * Vendas_ItensBASECALCULOICM.Value ) / 100 );
      IcmSubst := IcmSubst  + (( Vendas_ItensICM_SUBS.Value ) );
    END
    ELSE
    BEGIN
      Icm := Icm + (( Vendas_ItensALIQUOTA_INT.Value * Vendas_ItensBASECALCULOICM.Value ) / 100 );
      IcmSubst := IcmSubst  + ( Vendas_ItensICM_SUBS.Value  );
    END;

    dsItens.DataSet.Next;
  End;

  //Debitando o desconto total do pedido dos totais da NF
  Desconto := tDesconto;//VendasDESC_ACRES.value;
  
  if VendasTOTAL.value >  0 then
    pctAcerto := (Desconto * 100)/VendasTOTAL.value;


  Estado := 'B' ;
  If DataSource.DataSet.State in [ dsinsert, dsedit ]  then
  begin
       Estado := 'E' ;
       DataSource.DataSet.Post ;
  end;

  //Valores dos Itens
  DataSource.DataSet.Edit ;
  DataSource.DataSet.FieldByName('VOLUME').asFloat              := tVolumes     ;
  DataSource.DataSet.FieldByName('PESO'  ).asFloat              := tPesos       ;  
  DataSource.DataSet.FieldByName('TOTAL' ).asFloat              := tProdutos;
  DataSource.DataSet.FieldByName('TOTAL_FISCAL' ).asFloat       := tfProdutos;
  DataSource.DataSet.FieldByName('BASE_ICM').Value              := BASEICM {+ ((BASEICM * pctAcerto)/100)};
  DataSource.DataSet.FieldByName('ICM').Value                   := ICM {+ ((ICM * pctAcerto)/100)};
  DataSource.DataSet.FieldByName('BASE_ICM_SUBST').Value        := BASEICMSUBST {+ ((BASEICMSUBST * pctAcerto)/100)};
  DataSource.DataSet.FieldByName('VALOR_ICM_SUBST').Value       := ICMSUBST {+ ((ICMSUBST * pctAcerto)/100) };
  DataSource.DataSet.FieldByName('DESCONTOS_CONCEDIDOS').Value  := tDesconto;
  
  VendasDESC_ACRES.value := tDesconto;

  IF Dmapp.DIF_FIS_FISC = 'S'
  THEN BEGIN
       TotalNota := DataSource.DataSet.FieldByName('TOTAL_FISCAL').Value ;
  END
  ELSE BEGIN
       TotalNota := DataSource.DataSet.FieldByName('TOTAL').Value ;
  END;

  TotalNota := TotalNota + DataSource.DataSet.FieldByName('VALOR_ICM_SUBST' ).asFloat ;
  TotalNota := TotalNota + DataSource.DataSet.FieldByName('FRETE'   ).asFloat ;
  TotalNota := TotalNota + DataSource.DataSet.FieldByName('SEGURO'  ).asFloat ;
  TotalNota := TotalNota + DataSource.DataSet.FieldByName('DESPESAS').asFloat ;
  TotalNota := TotalNota + DataSource.DataSet.FieldByName('IPI'     ).asFloat ;

  DataSource.DataSet.FieldByName('TOTAL_NOTA').Value     := TotalNota - tDesconto{ + ((TotalNota * pctAcerto)/100) };

  DataSource.DataSet.Post ;

  //
  If dsItens.DataSet.RecordCount > 0 Then
     Begin
       dsItens.DataSet.GotoBookmark(bReg);
       dsItens.DataSet.FreeBookmark(bReg);
     End;
  //
//  dsItens.DataSet.EnableControls;

  If Estado = 'E'
  then begin
       DataSource.DataSet.Edit ;
  end

end;

Procedure TFrmVendas.Calcular_Parcelas;
Var bReg: Pointer;
    eTotal: Extended;
begin

  If DsParcelas.DataSet.RecordCount > 0 Then
     bReg := DsParcelas.DataSet.GetBookmark;
  //
  //
  eTotal := 0;
  //
  DsParcelas.DataSet.First;
  //
  While Not DsParcelas.DataSet.Eof Do
        Begin
          //
          eTotal := eTotal + DsParcelas.DataSet.FieldByName('VALOR').asFloat;
          //
          DsParcelas.DataSet.Next;
        End;
  //
  DataSource.DataSet.Edit ;
  DataSource.DataSet.FieldByName('VLR_PARC_LC').asFloat := eTotal;
  DataSource.DataSet.Post ;

  //
  If DsParcelas.DataSet.RecordCount > 0 Then
     Begin
       DsParcelas.DataSet.GotoBookmark(bReg);
       DsParcelas.DataSet.FreeBookmark(bReg);
     End;
  //
End;

procedure TFrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If Sair
     then begin
          //
          If DsTransportadora.DataSet.Tag = 0 Then
          DsTransportadora.DataSet.Close;
          If DsParcelas.DataSet.Tag = 0 Then
          DsParcelas.DataSet.Close;
          If dsItens.DataSet.Tag = 0 Then
          dsItens.Dataset.Close;
          If DataSource.DataSet.Tag = 0 Then
          DataSource.DataSet.Close;
          If dsTipoDoctos.DataSet.Tag = 0 Then
          dsTipoDoctos.DataSet.Close;
          If dsNaturezas.DataSet.Tag = 0 Then
          dsNaturezas.DataSet.Close;
          If dsParametros.DataSet.Tag = 0 Then
          dsParametros.DataSet.Close;
          If DsFormaPgto.DataSet.Tag = 0 Then
          DsFormaPgto.DataSet.Close;
          If DsVendedores.DataSet.Tag = 0 Then
          DsVendedores.DataSet.Close;
          If DsTerceiros.DataSet.Tag = 0 Then
          DsTerceiros.DataSet.Close;

          If DsPlano.DataSet.Tag = 0 Then
            DsPlano.DataSet.Close;

          If (DsMarcas.DataSet.Tag = 0) Then
            DsMarcas.DataSet.Close;

          If DsUnidades.DataSet.Tag = 0 Then
          DsUnidades.DataSet.Close;
          //
          Action := caFree;
          FrmVendas := Nil;
     end
     else begin
          If MessageDlg('Sair da Venda?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
          then begin
               //
               If DsParcelas.DataSet.Tag = 0 Then
               DsParcelas.DataSet.Close;
               If dsItens.DataSet.Tag = 0 Then
               dsItens.Dataset.Close;
               If DataSource.DataSet.Tag = 0 Then
               DataSource.DataSet.Close;
               If dsTipoDoctos.DataSet.Tag = 0 Then
               dsTipoDoctos.DataSet.Close;
               If dsNaturezas.DataSet.Tag = 0 Then
               dsNaturezas.DataSet.Close;
               If dsParametros.DataSet.Tag = 0 Then
               dsParametros.DataSet.Close;
               If DsFormaPgto.DataSet.Tag = 0 Then
               DsFormaPgto.DataSet.Close;
               If DsVendedores.DataSet.Tag = 0 Then
               DsVendedores.DataSet.Close;
               If DsTerceiros.DataSet.Tag = 0 Then
               DsTerceiros.DataSet.Close;
               If DsPlano.DataSet.Tag = 0 Then
               DsPlano.DataSet.Close;

               If (DsMarcas.DataSet.Tag = 0) Then
                DsMarcas.DataSet.Close;

               If DsUnidades.DataSet.Tag = 0 Then
               DsUnidades.DataSet.Close;
               //
               Action := caFree;
               FrmVendas := Nil;
          end
          else begin
               Action := caNone;
          end;
     END;
end;

procedure TFrmVendas.ActIncluirExecute(Sender: TObject);
begin
  if Navigator.DataSource.State in dsEditModes then
    exit;

  Try
    if ( pc.ActivePageIndex = 0 ) then
    begin

      If GridItens.IsFocused then
      begin
        If ( DataSource.State in [ dsinsert, dsedit ] )then
          DataSource.DataSet.Post ;

        If DataSource.DataSet.FieldByName('CODIGO').Value > 0 then
        begin
          Vendas_Itens.Append;
          ExibeFormItens;
          Calcular_Itens;
        end;
      end
    end
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
end;

procedure TFrmVendas.ActExcluirExecute(Sender: TObject);
Var msg: String;
begin
  if pc.ActivePageIndex = 0 Then
  begin
    if GridItens.IsFocused then
    begin
      if (Application.messagebox('Tem certeza que deseja excluir este item?','Aviso',mb_iconquestion+mb_yesno)=id_no) then
        exit;

      DsItens.Dataset.Delete;
      Calcular_Itens ;
    end
  end
  else if pc.ActivePageIndex = 3 then
  begin
    if (FrmVendas.ActiveControl =  GRIDFATURAMENTO) then
    begin
      if (Application.messagebox('Tem certeza que deseja excluir esta parcela?','Aviso',mb_iconquestion+mb_yesno)=id_no) then
        exit;

      DsParcelas.DataSet.Delete ;
      Calcular_Parcelas;
    end;
  end;

  DMApp.Transaction.CommitRetaining;
end;

procedure TFrmVendas.ActPostExecute(Sender: TObject);
begin
    Try
      // Se há desconto aplicado na venda
      DescontoRestante;
      If pc.ActivePageIndex = 0 Then
      Begin
        if DataSource.DataSet.State in [ DsInsert, DsEdit ] then
        begin
          //-------------------- Validacao ENTREGA FUTURA? ------------------------
          If FrmVendas.ckEntregaFutura.checked Then
          begin
            VendasSTATUS_CARREGAMENTO.value := 0;
            VendasENTREGA_FUTURA.value := 'S';
          end
          else begin
            VendasSTATUS_CARREGAMENTO.isnull;
            VendasENTREGA_FUTURA.value := 'N';
          end;
          //
          Vendas_Itens.DataSource := Nil;
          Vendas_Parc.DataSource   := Nil;
          DataSource.DataSet.Post;
          //
          Vendas_Itens.DataSource  := dsVendas;
          Vendas_Parc.DataSource   := dsVendas;
        end;
      end
      else
      begin
        if VarIsNull(DesctoRes) then
            DesctoRes := 0;

        Vendas.edit;
        VendasDESCTO_RES.Value := DesctoRes;
        //-------------------- Validacao ENTREGA FUTURA? ------------------------
        If FrmVendas.ckEntregaFutura.checked Then
        begin
          VendasSTATUS_CARREGAMENTO.value := 0;
          VendasENTREGA_FUTURA.value := 'S';
        end
        else
        begin
          VendasSTATUS_CARREGAMENTO.isnull;
          VendasENTREGA_FUTURA.value := 'N';
        end;
        //
        if Navigator.DataSource.DataSet.State in [ DsInsert, DsEdit ] then
          Navigator.DataSource.DataSet.Post;
      end;
      //
      dmapp.pcd_log_fat_vendas(VendasCNPJ.value,VendasCODIGO.value,DMAPP.USR_CONECTADO,'EDIÇÃO');
      DMApp.Transaction.CommitRetaining;
    except
      on E:EDataBaseError Do
      begin
        MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
        Exit;
      end
      else
      begin
        MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
        Exit;
      end;
    end;
end;

procedure TFrmVendas.ActCancelExecute(Sender: TObject);
begin
  If Navigator.DataSource.DataSet.State in dsEditModes Then
     Begin
       If pc.ActivePageIndex = 0 Then
          Begin
            DataSource.DataSet.Cancel;
          End
       Else
          Navigator.DataSource.DataSet.Cancel
     End
  Else Begin
       IF pc.ActivePageIndex = 1
       then begin
            if DsParcelas.state in [ dsedit, dsinsert ]
            then
                DsParcelas.DataSet.cancel
            else
                If pc.ActivePageIndex <> 0 Then
                   pc.ActivePageIndex := 0
                Else
                    BtnFechar.OnClick(BtnFechar);
       end
       else begin
            If pc.ActivePageIndex <> 0 Then
               pc.ActivePageIndex := 0
            Else
                BtnFechar.OnClick(BtnFechar);
       end;
  End;
end;

procedure TFrmVendas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
    Vendas.Close;
    Vendas.Open;

    qryContratos.Close;
    qryContratos.Open;
    
    Vendas_Itens.Close;
    Vendas_Itens.Open;
    Vendas.Edit;


    IMG3.Visible := FALSE;
    IMG2.Visible := FALSE;
    IMG1.Visible := FALSE;



    If Not(DsTransportadora.DataSet.Active) Then
       DsTransportadora.DataSet.Open;
    If Not(dsParametros.DataSet.Active) Then
       dsParametros.DataSet.Open;
    If Not(dsNaturezas.DataSet.Active) Then
       dsNaturezas.DataSet.Open;
    If Not(dsTipoDoctos.DataSet.Active) Then
       dsTipoDoctos.DataSet.Open;
    If Not(DsFormaPgto.DataSet.Active) Then
       DsFormaPgto.DataSet.Open;
    If Not(DsVendedores.DataSet.Active) Then
       DsVendedores.DataSet.Open;
    If Not(DsTerceiros.DataSet.Active) Then
       DsTerceiros.DataSet.Open;
    If Not(DsUnidades.DataSet.Active) Then
       DsUnidades.DataSet.Open;

    if not(Vendas.active) then
      Vendas.open;

    if not(Vendas_Itens.active) then
    begin
      if (VendasCodigo.asstring <> '') then
          Vendas_Itens.Open;
    end;

    If Not(DsParcelas.DataSet.Active) Then
       DsParcelas.DataSet.Open;

    If Not(DsPlano.DataSet.Active) Then
       DsPlano.DataSet.Open;

    If Not(DsMarcas.DataSet.Active) Then
       DsMarcas.DataSet.Open;


    If Not(DataSource.DataSet.State in [DsInsert, DsEdit]) AND ( Not FrmSelVendas.Importa ) Then
     DataSource.DataSet.Append
    else //Apaga Parcelas
      DmApp.Apaga_Parcelas_Venda ( DmApp.Cnpj,VendasCODIGO.Value );

    Vendas_Parc.close;
    Vendas_Parc.open;
    Vendas_Parc.FetchAll;

    with dmFinanceiro do
    begin
      SelCentro.close;
      SelCentro.open;
      SelCentro.FetchAll;
    end;

    //Habilita os Componentes de Acordo com a forma de Pagto
    HabilitaFaturamento (VendasFORMA_PGTO.Value );

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

 pc.ActivePageIndex  := 0;
 Edpessoa.SetFocus;
end;

procedure TFrmVendas.HabilitaFaturamento ( Codigo: Integer );
var
  ES : string;
begin
     With DmVendas2 do
     Begin
          Valida_Forma.Close ;
          Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
          Valida_Forma.ParamByName ('CODIGO').AsInteger := Codigo       ;
          Valida_Forma.Prepare ;
          Valida_Forma.Open ;

          //Habilita os componentes para cada tipo de Pagamento
          if  (Valida_FormaNPARCELAS.VALUE > 0 ) AND ( Valida_FormaAVISTA.Value <> 'S' ) AND (Valida_FormaFATURA_FUTURA.Value <> 'S') then
            VENDAPARCELADA := TRUE ;

          cmbContrato.enabled := (dmApp.EXIBE_CTR_OBRAS = 'S');

          if Valida_FormaAVISTA.Value = 'S' then
          begin
            CmbContaCorrente.Enabled     := false ;
            EDENTRADA.Enabled    := false ;
            cmbTipoDocto.Enabled := false ;

            GRIDFATURAMENTO.Enabled := FALSE ;

            cmbcentro.enabled := false;
            BTNCENTRO.enabled := false;
          end
          else
          begin
            
            CmbContaCorrente.Enabled     := dmApp.VerificaTipoDoctoBoleto(VendasTIPO_DOCTO.AsString) ;
            EDENTRADA.Enabled    := true ;
            cmbTipoDocto.Enabled := true ;
            GRIDFATURAMENTO.Enabled := TRUE ;

            if ((VendasES.value = 'E') and (VendasGERA_FINANCEIRO.asString = 'S')) then
            begin
              cmbcentro.enabled := true;
              BTNCENTRO.enabled := true;
            end
            else
            begin
              cmbcentro.enabled := false;
              BTNCENTRO.enabled := false;
            end
          end;

          if Valida_FormaCOMENTRADA.Value <> 'S' then
            EDENTRADA.Enabled    := FALSE
          else
            EDENTRADA.Enabled    := TRUE;

     End;

     if (VendasES.value = 'E') then
       GRIDFATURAMENTO.FixedColor := $00566DEF
     else
       GRIDFATURAMENTO.FixedColor := $00CAF0D7;
end;

procedure TFrmVendas.FormCreate(Sender: TObject);
begin
  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  PopupGrid.UseBuiltInPopupMenus := ActConfCampos.Enabled;
  Datasource.AutoEdit := ActAlterar.Enabled;
  //COMISSÃO DE TERCEIROS
  IF DmApp.PG_COM_TERC <> 'S'
  THEN BEGIN
       LBLTERCEIROS.Visible := FALSE ;
       EdTerceiro.Visible   := FALSE ;
       CmbTerceiro.Visible  := FALSE ;
       BtnTerceiro.Visible  := FALSE ;
  END
  ELSE BEGIN
       LBLTERCEIROS.Visible := TRUE ;
       EdTerceiro.Visible   := TRUE ;
       CmbTerceiro.Visible  := TRUE ;
       BtnTerceiro.Visible  := TRUE ;
  END;

  IF DmApp.UTIL_PROPRIEDADE = 'N'
  THEN BEGIN
       Label15.Visible        := False ;
       EdPropriedade.Visible  := False ;
       CmbPropriedade.Visible := False ;
  END
  ELSE BEGIN
       Label15.Visible        := true ;
       EdPropriedade.Visible  := true ;
       CmbPropriedade.Visible := true ;
  END;

  LocCli := False ;
  LocProp:= False ;
  LocNat := False ;
  LocVen := False ;
  LocTer := False ;
  Sair   := False ;

end;

procedure TFrmVendas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrmVendas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmVendas.DataSourceStateChange(Sender: TObject);
begin
     If Pc.ActivePage = TabFaturamento
     then begin
          dxBarBDBNavFirst.Enabled := false ;
          dxBarBDBNavPrev.Enabled  := false ;
          dxBarBDBNavNext.Enabled  := false ;
          dxBarBDBNavLast.Enabled  := false ;
     end
     else begin
          dxBarBDBNavFirst.Enabled := true ;
          dxBarBDBNavPrev.Enabled  := true ;
          dxBarBDBNavNext.Enabled  := true ;
          dxBarBDBNavLast.Enabled  := true ;
     end;

  //
  If Navigator.DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActCores.Enabled     := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActCores.Enabled     := ActCores.Tag   = 1;
       ActLocalizar.Enabled := True;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmVendas.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmVendas.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmVendas.CmbTipoPessoaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmVendas.actLookupExecute(Sender: TObject);
begin
  if aTfrmCadTransportadoras.Focused then
    btnTransportadora.OnClick(Self)
  else
    If (FrmVendas.ActiveControl = EdPessoa) Then
      BtnPessoa.OnClick(BtnPessoa)
    else
      If (FrmVendas.ActiveControl = cmbNatureza) or (FrmVendas.ActiveControl = Ednatureza) Then
         btnNatureza.OnClick(btnNatureza)
      else
        If (FrmVendas.ActiveControl = cmbVendedor) or (FrmVendas.ActiveControl = EdVendedor)Then
           btnVendedor.OnClick(btnVendedor)
        else
          If (FrmVendas.ActiveControl = EdForma)Then
             BtnForma.OnClick(BtnForma)
          else
            If (FrmVendas.ActiveControl = CmbTerceiro) or (FrmVendas.ActiveControl = EdTerceiro) Then
               BtnTerceiro.OnClick(BtnForma);
end;

procedure TFrmVendas.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmVendas.tabVendaEnter(Sender: TObject);
begin
    Navigator.DataSource := DataSource;
    DataSource.OnStateChange(DataSource);
    Edpessoa.SetFocus;
end;

procedure TFrmVendas.ActNextPageExecute(Sender: TObject);
begin
     If Navigator.DataSource.DataSet.state in [ dsinsert, dsedit ]
     then
         ActPost.Execute ;

     //
     If pc.ActivePageIndex = 3 Then
        pc.ActivePageIndex := 0
     else
        pc.ActivePageIndex := pc.ActivePageIndex + 1;
end;

procedure TFrmVendas.ActPreviousPageExecute(Sender: TObject);
begin
     If pc.ActivePageIndex = 0 Then
        pc.ActivePageIndex := 3
     else
        pc.ActivePageIndex := pc.ActivePageIndex - 1;
end;

procedure TFrmVendas.TabFaturamentoEnter(Sender: TObject);
begin
    HabilitaFaturamento ( VendasFORMA_PGTO.Value );

    Navigator.DataSource := DataSource;

    DataSource.DataSet.Edit ;

    EdOrcamento.SetFocus;
    DescontoRestante;
end;

procedure TFrmVendas.ActAlterarExecute(Sender: TObject);
begin
  if Navigator.DataSource.State in dsEditModes then
     Exit;

  Try
       //
       If GridItens.IsFocused then
       begin
            If  ( DataSource.dataset.FieldByName('PESSOA_FJ').AsInteger > 0 )
            and ( DataSource.dataset.FieldByName('VENDEDOR' ).AsInteger > 0 )
            and ( DataSource.dataset.FieldByName('NATUREZA' ).AsInteger > 0 )
            then begin
                 ExibeFormItens;
                 Calcular_Itens;
            end;
       End
       else
       begin
            DataSource.DataSet.Edit;

            If Pc.ActivePageIndex = 0 then
              Edpessoa.SetFocus;
            
       end
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
end;

procedure TFrmVendas.FormActivate(Sender: TObject);
begin
  Try
    FrmVendas.WindowState := wsMaximized;
    FrmVendas.Refresh;
    FrmVendas.Tag := 0;
  Except
  End;
end;

procedure TFrmVendas.BtnPessoaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClientes', False);
  { * * * * * }


  //
  FrmClientes := TFrmClientes.Create(Application);

  FrmClientes.Showmodal ;
  //
   Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  Edpessoa.SetFocus;
end;

procedure TFrmVendas.btnNaturezaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  dsNaturezas.DataSet.Tag := dsNaturezas.DataSet.Tag + 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmNaturezaOper', False);
  { * * * * * }
  //
  FrmNaturezaOper             := TFrmNaturezaOper.Create(Application);

  FrmNaturezaOper.Showmodal ;

  Datasource.DataSet.FieldByName('NATUREZA').asInteger := FrmMain.Codigo_Int;

  dsNaturezas.DataSet.Tag := dsNaturezas.DataSet.Tag - 1;

  If DMCadastros <> Nil then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  EdNatureza.SetFocus;

  DsNaturezas.DataSet.Close;
  DsNaturezas.DataSet.Open ;

  //
end;

procedure TFrmVendas.BtnVendedorClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DsVendedores.DataSet.Tag := DsVendedores.DataSet.Tag + 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmVendedores', False);
  { * * * * * }

  //
  FrmVendedores := TFrmVendedores.Create(Application);

  FrmVendedores.Showmodal ;

  Datasource.DataSet.FieldByName('VENDEDOR').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  DsVendedores.DataSet.Tag := DsVendedores.DataSet.Tag - 1;

  EdVendedor.SetFocus;

  DsVendedores.DataSet.Close;
  DsVendedores.DataSet.Open;
  //
end;

procedure TFrmVendas.BtnTerceiroClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DsTerceiros.DataSet.Tag := DsTerceiros.DataSet.Tag + 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTerceiros', False);
  { * * * * * }

  //
  FrmTerceiros := TFrmTerceiros.Create(Application);

  FrmTerceiros.Showmodal ;

  Datasource.DataSet.FieldByName('TERCEIRO').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  DsTerceiros.DataSet.Tag := DsTerceiros.DataSet.Tag - 1;

  Edterceiro.SetFocus;

  DsTerceiros.DataSet.Close;
  DsTerceiros.DataSet.Open;
end;

procedure TFrmVendas.GRIDFATURAMENTO_Enter(Sender: TObject);
begin
     if GRIDFATURAMENTO.Enabled then
     begin
          if DataSource.DataSet.State In [ DsEdit, DsInsert ] then
               DataSource.DataSet.Post ;

          DmVendas2.Parcela_Vendas(VendasNATUREZA.asInteger,VendasFORMA_PGTO.asInteger,VendasCODIGO.asInteger,Vendas,Vendas_Parc);

          Vendas_Parc.Close ;
          Vendas_Parc.Open  ;

          DsParcelas.DataSet.Append ;
     end;
end;

procedure TFrmVendas.GRIDFATURAMENTOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if ( key=VK_UP ) and ( DsParcelas.DaTaset.state in [ dsinsert, dsedit ] )
     then
         DsParcelas.DaTaset.Cancel ;         
end;

procedure TFrmVendas.BtnFormaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFormasPagto', False);
  FrmFormasPagto := TFrmFormasPagto.Create(Application);
  FrmFormasPagto.Showmodal ;

  Datasource.DataSet.FieldByName('FORMA_PGTO').asInteger := FrmMain.Codigo_Int;
  EdForma.SetFocus;

  DsFormaPgto.DataSet.Close;
  DsFormaPgto.DataSet.Open;
end;

procedure TFrmVendas.ActEnviaCaixaExecute(Sender: TObject);
Var
   Prod,  Codigo: String ;
   Numero, Nf: Integer;
   TotalVenda : currency;
   motivo : integer;
   total1, total2: real;
   Boleto  :variant;
begin
     TabFaturamento.show;
     HabilitaFaturamento(VendasFORMA_PGTO.Value);
     //----------------------------------------Definição de Centro de Custo--------------------------------------
     if ((VendasIDX_COTACAO.AsFloat > 0) or (VendasIDX_QTDE.AsFloat > 0)) then
     begin
       total1 := (VendasIDX_COTACAO.AsFloat * VendasIDX_QTDE.AsFloat);
       total2 := Vendas_Total_Geral_IDX.asFloat;
       if (arredonda(total1,0) <> arredonda(total2,0)) then
       begin
         Application.messagebox('Configuração financeira do faturamento está inconsistente','Aviso',mb_ok+mb_iconerror);
         exit;
       end;
     end;

     if ((dmApp.EXIBE_CTR_OBRAS = 'S') and (VendasCOD_CONTRATO.asInteger = 0))  then
       begin
         Application.MessageBox('Defina um contrato ativo','Aviso',mb_ok+mb_iconerror);
         cmbContrato.SetFocus;
         exit;
       end;

     if (DmVendas2.Valida_FormaAVISTA.Value <> 'S') then
     begin
       //-------------------------------Dados para configuração de boletos--------------------------------//
       if (dmApp.VerificaTipoDoctoBoleto(VendasTIPO_DOCTO.AsString) and (VendasLOCAL_COBRANCA.AsInteger = 0)) then
       begin
         Application.MessageBox('Defina uma conta corrente para vínculo dos boletos','Aviso',mb_ok+mb_iconerror);
         cmbContaCorrente.SetFocus;
         exit;
       end;

       Vendas_Parc.FetchAll;
       if Vendas_Parc.RecordCount = 0 then
       begin
         application.messagebox('Defina o parcelamento','Aviso',mb_ok+mb_iconerror);
         PC.ActivePage := TabFaturamento ;
         EdForma.setfocus;
         exit;
       end;

       with dmVendas2 do
       begin
         if ((VendasES.value = 'E') and (VendasGERA_FINANCEIRO.asString = 'S') and (cmbcentro.text = '')) then
         begin
           application.messagebox('Defina o Centro de Custo para o parcelamento','Aviso',mb_ok+mb_iconerror);
           cmbcentro.setfocus;
           //abort;
           exit;
         end;

         if (VendasGERA_FINANCEIRO.asString = 'N') then
         begin
           Application.MessageBox('CFOP do faturamento relacionado não permite parcelamento. Verifique','Aviso',mb_iconerror+mb_ok);
           exit;
         end;

       end;
     end;
     //----------------------------------------Verificando se o produto tem lote--------------------------------------
     if not dmapp.VerificaLote(DataSource.DataSet.FieldByName('CODIGO').asInteger) then
     begin
       application.messagebox('Exitem produtos que estão sem definição de lotes. Verifique','Aviso',mb_ok+mb_iconinformation);
       exit;
     end;

     //----------------------------------------Verificando o desconto---------------------------------------------------
     if not dmapp.VerificaDesconto(DataSource.DataSet.FieldByName('CODIGO').asInteger,DataSource.DataSet.FieldByName('DESC_ACRES').asfloat,TIBDataSet(DataSource.DataSet).transaction) then
     begin
       if not PedirSenha('Desconto Acima do ', 'Máximo Permitido!','') THEN
       begin
         //abort;
         exit;
       end;
     end;

     //----------------------------------------Total de produtos difere do total bruto da venda--------------------------------------
     total1 := DataSource.DataSet.FieldByName('TOTAL').asFloat;
     total2 := DataSource.DataSet.FieldByName('Total_Itens').asFloat;

     if (arredonda(total1,0) <> arredonda(total2,0)) then
     begin
       if (FloatToStr(Total1) <> FloatToStr(Total2)) then
       begin
         application.messagebox('O valor total dos itens difere do total bruto do faturamento. Verifique','Aviso',mb_ok+mb_iconerror);
         exit;
       end;
     end;

     //----------------------------------------Verificando o Limite de tempo-------------------------------------------
     TotalVenda := (DataSource.DataSet.FieldByName('TOTAL').asfloat - DataSource.DataSet.FieldByName('DESC_ACRES').asfloat);
     motivo := dmapp.VerificaLimite2(DataSource.DataSet.FieldByName('PESSOA_FJ').asInteger,DataSource.DataSet.FieldByName('FORMA_PGTO').asInteger, TotalVenda,TIBDataSet(DataSource.DataSet).transaction);
     case motivo of
     1:
     begin
           if not PedirSenha('Limite de tempo', 'ultrapassado','') THEN
           begin
             //abort;
             exit;
           end;
     end;
     2:
     begin
           if not PedirSenha('Limite de crédito', 'ultrapassado','') THEN
           begin
             //abort;
             exit;
           end;
     end;
     3:
     begin
           if not PedirSenha('Limites de tempo e crédito', 'ultrapassados','') THEN
           begin
             //abort;
             exit;
           end;
     end;
     end;

    //----------------------------------------Verificando o Limite de tempo-------------------------------------------
    if (DmVendas.Valor_Minimo_Parcelamento(DsParcelas) = true) then
       exit;
      //abort;

    //--------------------------------------- Selecionar uma FORMA DE PAGAMENTO ---------------------------------------
     if VendasFORMA_PGTO.IsNull  then
     begin
       Pc.ActivePageIndex := 1;
       MessageDlg('Selecione a Forma de Pagamento!',MtError,[MbOk],0);
       EdForma.SetFocus ;
       Exit;
     end;

     //-------------------- SALVA VENDA ---------------------------------------
     If Datasource.DataSet.State in [ dsedit, dsinsert ] then
       Datasource.DataSet.Post;


     //--------------------------- SALVA FORMA DE PGTO ------------------------------------------
     If DsParcelas.DataSet.State in [ dsedit, dsinsert ] then
       DsParcelas.DataSet.Cancel;

     //---------------------- Validacao SEM PRODUTOS PARA FATURAMENTO -------------------------------
     if ((arredonda(VendasTotal.Value,2 ) <= 0) AND (DMAPP.PDV_VALOR_ZERADO <> 'S'))then
     begin
       Application.Messagebox('Não Existem Produtos para Faturamento, Verifique!','Aviso',mb_iconerror + mb_ok);
       Exit;
     end;

     //-------------------- Validacao FORMA DE PAGAMENTO ---------------------------------------
     DmVendas2.Valida_Forma.Close;
     DmVendas2.Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     DmVendas2.Valida_Forma.ParamByName ('CODIGO').AsInteger := VendasFORMA_PGTO.Value ;
     DmVendas2.Valida_Forma.Open;

     if (arredonda(VendasDiferenca.Value,2) <> 0 ) and (DmVendas2.Valida_FormaAVISTA.Value <> 'S' ) then
     begin
       MessageDlg('O Parcelamento não confere, Verifique!',MtError,[MbOk],0);
       PC.ActivePage := TabFaturamento ;
       ckEntregaFutura.SetFocus ;
       Exit;
     end;

     if (arredonda(VendasVLR_PARC_LC.Value,2) < 0 )   then
     begin
       Application.MessageBox('O Parcelamento não pode ser negativo. Verifique','Aviso',mb_iconerror+mb_ok);
       PC.ActivePage := TabFaturamento ;
       ckEntregaFutura.SetFocus ;
       Exit;
     end;


     If ((DmApp.BlqQtdeFiscal = 'S') and (VendasLOCAL.value = 1)) then
     begin
         Prod := trim(DmApp.verifica_quantidade(VendasCodigo.Value,1)) ;

         If trim(Prod) <> '' then
         begin
           MessageDlg('O Produto ' + Prod + ' Não Possui Estoque Fiscal Suficiente', mtError, [mbOK], 0);
           pc.ActivePageIndex := 0;
           Vendas_Itens.locate ( 'PRODUTO', Prod, [] );
           GridItens.SetFocus ;
           Exit ;
         end;
     end;

     DMVendas2.Valida_Forma.Close ;

     //-------------------- Validacao VERIFICANDO QTDE DE ESTOQUE DOS PRODUTOS (GERENCIAL ---------------------------------------
     Prod := trim(DmApp.verifica_quantidade(VendasCodigo.Value,2)) ;
     If trim(Prod) <> '' then
     begin
       MessageDlg('O Produto ' + Prod + ' Não Possui Estoque Gerencial Suficiente', mtError, [mbOK], 0);
       pc.ActivePageIndex := 0;
       Vendas_Itens.locate ( 'PRODUTO', Prod, [] );
       GridItens.SetFocus ;
       Exit ;
     end;

     if (DmApp.LOCAL_FATURA <> 'C') AND (DmApp.LOCAL_FATURA <> 'B') then
     begin
       MessageDlg(Pchar('Houve um erro no parametro de faturamento do caixa/balcão, contate a '+dmApp.QryParceiroPARC_NOME_FANTASIA.asString+'!'),MtError,[MbOk],0);
       Exit;
     end;

     //-------------------- ENVIA PARA O CAIXA ---------------------------------------
     Codigo := DmaPP.Envia_Caixa ( DmApp.Cnpj, VendasCodigo.Value );

     //erro no processo de envio
     if (codigo = '-1') then
       exit;



     Numero := DataSource.DataSet.FieldByName('CODIGO').asInteger    ;
     Nf     := DataSource.DataSet.FieldByName('NUM_NF').asInteger ;


     //Não tenho ideia pra que serve isso
     FrmSelVendas.DataSource.DataSet.Close ;
     DMVendas2.TIPO_VENDA := VendasTIPO_VENDA.Value;

     //-------------------- SE AS VENDAS SAO FATURADAS NO CAIXA ---------------------------------------
     if DmApp.LOCAL_FATURA = 'C' then
     begin
       FRelEnviaCaixa              := TFRelEnviaCaixa.Create(Self);
       FRelEnviaCaixa.PedidoNumero := Numero   ;
       FRelEnviaCaixa.Tipo         := 'FATURA' ;

       //Imprimindo Pedido
       FRelEnviaCaixa.Showmodal ;
     end
     else //-------------------- SE AS VENDAS SAO FATURADAS NO BALCAO ---------------------------------------
     if DmApp.LOCAL_FATURA = 'B' then
     begin
         DmApp.Encerra_Venda(DmApp.Cnpj, Numero, DmApp.DataCaixa, DmApp.UsuarioCaixa, DmApp.ContaCaixa, DmApp.TurnoCaixa,'');

            //IMPRIME NOTA
         DmApp.Local                     := VendasLOCAL.Value           ;
         FrmTipoFaturaVenda              := TFrmTipoFaturaVenda.Create(Self)     ;
         FrmTipoFaturaVenda.NumeroNf     := Nf                                   ;
         FrmTipoFaturaVenda.PessoaFJ     := VendasPessoa_FJ.value       ;
         FrmTipoFaturaVenda.PessoaNFGraf := VendasPessoa_FJ.value       ;
         FrmTipoFaturaVenda.PedidoNumero := Numero                               ;
         FrmTipoFaturaVenda.IDNFGraf     := Numero                               ;
         FrmTipoFaturaVenda.Tipo         := 'FATURA'                             ;
         FrmTipoFaturaVenda.Showmodal ;
     end;

     //-------------------- GERAR CARREGAMENTO/ENTREGA ---------------------------------------
     if VendasENTREGA_FUTURA.value = 'S' then
         If MessageDlg('Deseja Gerar Carregamento?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk  then
            dmvendas2.Proc_Requisicao_Venda(Numero);

     close ;
     Sair := True ;
end;

procedure TFrmVendas.ActLocalizarClienteExecute(Sender: TObject);
begin
     try
        If ((FrmVendas.ActiveControl = EdPessoa)or(LocCli)or( EdPessoa.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
        Then begin
             LocCli := False ;
             //Chama a Tela Para Localizar Cliente
             Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

             if ( Frm_Localizar_Cliente.showmodal = mrOk )
             Then Begin
                  VendasPessoa_Fj.Value := (Frm_Localizar_Cliente.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_Cliente.Cad = 'S'
                  THEN
                      BtnPessoa.OnClick(BtnPessoa)
                  else
                      EdPessoa.setfocus ;
             end;
        end;
  Except
  end;
end;

procedure TFrmVendas.PCChange(Sender: TObject);
begin
  if PC.ActivePageIndex = 0  then
  begin
    ActLocalizarCliente.Enabled := TRUE ;
  end else
  begin
    if not(PC.ActivePageIndex = 0) then
    begin
      HabilitaFaturamento ( VendasFORMA_PGTO.Value );
      ActLocalizarCliente.Enabled := TRUE ;
      EdPorcentagem.Clear ;
    end;
    Calcular_DescAcresc;
  end; 
end;

procedure TFrmVendas.EdNaturezaExit(Sender: TObject);
begin
     if ((EdNatureza.Text = '0' ) or (EdNatureza.Text = '') )AND( DataSource.State in [ dsinsert, dsedit ]) then
        ActLocalizarNatureza.Execute ;

     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmVendas.CmbTipoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
     (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
     (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmVendas.dxDBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
     Begin
          If DataSource.state in [ dsinsert, dsedit ]
          then begin
               DataSource.DataSet.Post ;
          end;
          pc.ActivePageIndex := 0;
          GridItens.SetFocus;
     End;
end;

procedure TFrmVendas.DataSourceUpdateData(Sender: TObject);
var
  tipo : string;
  Remessa, Devolucao: Variant;
  Natureza : integer;
begin
     If Datasource.DataSet.FieldByName('PESSOA_FJ').IsNull
     then begin
          Pc.ActivePageIndex := 0;
          EdPessoa.SetFocus ;
          exit;
          //Abort ;
     end;

     If Datasource.DataSet.FieldByName('NATUREZA').IsNull then
     begin
          Pc.ActivePageIndex := 0;
          EdNatureza.SetFocus ;
          exit;
          //Abort ;
     end;

     If Datasource.DataSet.FieldByName('VENDEDOR').IsNull then
     begin
        Pc.ActivePageIndex := 0;
        EdVendedor.SetFocus ;
        exit;
     end;

     If ((Datasource.DataSet.FieldByName('TERCEIRO').Value = 0) and (DmApp.PG_COM_TERC = 'S'))  then
     begin
        Pc.ActivePageIndex := 0;
        EdTerceiro.SetFocus ;
        exit;
     end;

     //verificando se é uma remessa
     remessa := RetornaValor(' Select remessa from est_natureza where Codigo ='+VendasNatureza.asString+
                             ' and CNPJ = '+QuotedStr(DmApp.Cnpj)+' and ATIVA = ''S''');

     devolucao := RetornaValor(' Select devolucao from est_natureza where Codigo ='+VendasNatureza.asString+
                             ' and CNPJ = '+QuotedStr(DmApp.Cnpj)+' and ATIVA = ''S''');

       if (Remessa = 'S') then
         tipo := 'Remessa'
       else if (Devolucao = 'S') then
         tipo := 'Devolução'
       else
         tipo := '';

       If (( tipo <> '') and (VendasID_AGRUPADOR.isNull))      then
       begin
          Pc.ActivePageIndex := 0;
          Application.messagebox(Pchar('Defina o vínculo da '+tipo),'Aviso',mb_ok+mb_iconerror);
          EdPropriedade.SetFocus ;
          exit;
          //Abort ;
       end;
end;

procedure TFrmVendas.EdPessoaExit(Sender: TObject);
begin
     if (VendasORCAMENTO.asInteger > 0) then
     begin
       VendasPESSOA_FJ.OnValidate(VendasPESSOA_FJ);
     end;
     
     IF (( EdPessoa.Text = '0' ) or ( EdPessoa.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarCliente.Execute ;
     end;

     If (( DsPropriedade.DataSet.RecordCount <= 0 ) and ( VendasPessoa_Fj.Value  > 0))
     then begin
          //Seleciona as Propriedades do cliente
          DmVendas.Propriedade ( DmApp.Cnpj, VendasPessoa_Fj.Value );
     end;

     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmVendas.ActLocalizarNaturezaExecute(Sender: TObject);
begin
     try
        If ((FrmVendas.ActiveControl = EdNatureza)or(LocNat)or ( EdNatureza.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
        Then begin
             LocNat := False ;

             //Chama a Tela Para Localizar Naturezas
             Application.CreateForm(TFrm_Localizar_Natureza, Frm_Localizar_Natureza);

             with dmVendas do
             begin
                SelNatureza.Close ;
                SelNatureza.Sql.text := ' SELECT CNPJ, CODIGO, NOME, INTERESTADUAL FROM EST_NATUREZA WHERE CNPJ = :CNPJ and ATIVA = ''S'''+
                                        ' AND INTERESTADUAL = :IE ORDER BY NOME ';
                SelNatureza.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
                //Seta o Estado da Pessoa

                If VendasUF.Value = DmApp.UF then
                  SelNatureza.ParamByName ('IE').AsString  := 'E'
                else
                  SelNatureza.ParamByName ('IE').AsString  := 'I';

                SelNatureza.Open ;
             end;

             Frm_Localizar_Natureza.DSource.dataset := DmVendas.SelNatureza ;

             if ( Frm_Localizar_Natureza.showmodal = mrOk ) then
               VendasNatureza.Value := (Frm_Localizar_Natureza.CampTrecho)
             else
             begin
                  If Frm_Localizar_Natureza.Cad = 'S' THEN
                      btnNatureza.OnClick(btnNatureza);
             end;
             Frm_Localizar_Natureza.free   ;
             Frm_Localizar_Natureza := Nil ;
        end;
  Except
  end;
end;

procedure TFrmVendas.ActLocalizarTerceirosExecute(Sender: TObject);
VAR
   Codigo: Integer;
begin
  If ((FrmVendas.ActiveControl = EdTerceiro)or(LocTer)or ( EdTerceiro.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
  Then begin
       Locter := False ;
       //Chama a Tela Para Localizar Terceiros
       Application.CreateForm(TFrm_Localizar_Terceiros, Frm_Localizar_Terceiros);
       Frm_Localizar_Terceiros.DSource.dataset := DmVendas.SelTerceiros ;

       if ( Frm_Localizar_Terceiros.showmodal = mrOk )
       Then Begin
            Codigo := (Frm_Localizar_Terceiros.CampTrecho) ;

            If Codigo > 0
            then
                VendasTerceiro.Value := Codigo ;
       end
       else begin
            If Frm_Localizar_Terceiros.Cad = 'S'
            THEN
                btnTerceiro.OnClick(btnTerceiro);
       end;
       Frm_Localizar_Terceiros.free   ;
       Frm_Localizar_Terceiros := Nil ;
  end;
end;

procedure TFrmVendas.ActLocalizarVendedoresExecute(Sender: TObject);
begin
  If ((FrmVendas.ActiveControl = EdVendedor)or(LocVen)or ( EdVendedor.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
  Then begin
       Locven := False ;

       //Chama a Tela Para Localizar Terceiros

       Application.CreateForm(TFrm_Localizar_Vendedores, Frm_Localizar_Vendedores);
       Frm_Localizar_Vendedores.DSource.dataset := DmVendas.SelVendedor ;

       if ( Frm_Localizar_Vendedores.showmodal = mrOk )
       Then Begin
            VendasVendedor.Value := (Frm_Localizar_Vendedores.CampTrecho) ;
       end
       else begin
            If Frm_Localizar_Vendedores.Cad = 'S'
            THEN
                btnVendedor.OnClick(btnVendedor);
       end;
       Frm_Localizar_Vendedores.free   ;
       Frm_Localizar_Vendedores := Nil ;
  end;
end;

procedure TFrmVendas.EdVendedorExit(Sender: TObject);
begin
     IF (( EdVendedor.Text = '0' ) or ( EdVendedor.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarVendedores.Execute ;
     end;
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmVendas.EdTerceiroExit(Sender: TObject);
begin
     IF (( EdTerceiro.Text = '0' ) or ( EdTerceiro.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ])then
          ActLocalizarTerceiros.Execute ;
     //
     TiraCorFundo ( Sender );
end;

procedure TFrmVendas.ActConsultaProdutoExecute(Sender: TObject);
begin
  FrmMain.ActConsultaProduto.execute ;
end;

procedure TFrmVendas.EdPorcentagemExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     If not ( Vendas.State in [ DsInsert, DsEdit ] )then
         Vendas.Edit ;

     if ( EdPorcentagem.Value > 0 ) then
         VendasDESC_ACRES.Value := -1 * Arredonda( ( VendasTotal.Value * EdPorcentagem.Value)/100  ,2);
end;

procedure TFrmVendas.EdPessoaEnter(Sender: TObject);
begin
   if (VendasID_AGRUPADOR.value > 0) then
    tabVenda.PopupMenu := PopupFat
  else
    tabVenda.PopupMenu := FrmMain.Pop;

  CorFundo ( Sender );
end;

procedure TFrmVendas.CmbTipoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmVendas.EdLocalExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmVendas.cmbNaturezaExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmVendas.cmbvendedorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmVendas.CmbTerceiroExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmVendas.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmVendas.edObservacoesExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmVendas.edObservacoesKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13  then
  begin
    If edObservacoes.Lines.Count <= 0 then
      dxDBEdit11.SetFocus ;
  end;
end;

procedure TFrmVendas.EdPropriedadeExit(Sender: TObject);
begin
     IF (( EdPropriedade.Text = '0' ) or ( EdPropriedade.Text = '' ) )AND( DataSource.State in [ dsinsert, dsedit ])then
          ActLocalizarPropriedade.Execute ;
     //
     TiraCorFundo ( Sender );
end;

procedure TFrmVendas.ActLocalizarPropriedadeExecute(Sender: TObject);
begin
    If ((FrmVendas.ActiveControl = EdPropriedade)or(LocProp)or ( EdPropriedade.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
    Then begin
         LocProp := False ;
         //Chama a Tela Para Localizar Naturezas
         Application.CreateForm(TFrm_Localizar_Propriedade, Frm_Localizar_Propriedade);
         Frm_Localizar_Propriedade.CodPessoa := VendasPESSOA_FJ.AsInteger;
         Frm_Localizar_Propriedade.DSource.dataset := DmVendas.SelPropriedades;

         if ( Frm_Localizar_Propriedade.showmodal = mrOk )
         Then Begin
              If (Frm_Localizar_Propriedade.CampTrecho) > 0
              then
                  VendasPropriedade.Value := (Frm_Localizar_Propriedade.CampTrecho) ;
         end;
         Frm_Localizar_Propriedade.free   ;
         Frm_Localizar_Propriedade := Nil ;
    end;
end;

procedure TFrmVendas.EdPropriedadeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmVendas.EdFormaExit(Sender: TObject);
begin
     IF (( EdForma.Text = '0' ) or ( EdForma.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarForma.Execute ;
     end;

     If ( EdForma.text = '' ) and ( DataSource.State IN [ DsInsert, DsEdit ] )
     then begin
          MessageDlg ('Selecione a Forma de Faturamento!', MtError, [MbOk],0);
          EdForma.SetFocus ;
     end;

     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     if (dmvendas.SelFormaPgtoVENCTO_FIXO.value = 'S') then
       edtDataBase.Enabled := false
     else
       edtDataBase.Enabled := true;

    
end;

procedure TFrmVendas.ActLocalizarFormaExecute(Sender: TObject);
begin
    If ((FrmVendas.ActiveControl = EdForma)or(LocForma)or ( EdForma.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])Then
    begin
       LocForma := False ;

       //Chama a Tela Para Localizar Formas

       Application.CreateForm(TFrm_Localizar_FormaPagto, Frm_Localizar_FormaPagto);
       Frm_Localizar_FormaPagto.DSource.dataset := DmVendas.SelFormaPgto ;

       if ( Frm_Localizar_FormaPagto.showmodal = mrOk )Then
       Begin
            VendasFORMA_PGTO.Value := (Frm_Localizar_FormaPagto.CampTrecho) ;
       end
       else begin
            If Frm_Localizar_FormaPagto.Cad = 'S'THEN
                BtnForma.OnClick(BtnForma);
       end;

       Frm_Localizar_FormaPagto.free   ;
       Frm_Localizar_FormaPagto := Nil ;
       if (dmvendas.SelFormaPgtoVENCTO_FIXO.value = 'S') then
         edtDataBase.Enabled := false
       else
         edtDataBase.Enabled := true;
    end;
end;

procedure TFrmVendas.ActCalcularDescontoExecute(Sender: TObject);
begin
     if (pc.ActivePageIndex = 3)then
     begin
          IF VendasFORMA_PGTO.VALUE > 0 THEN
          BEGIN
               If ( not (Vendas.State in [ DsInsert, DsEdit ] ) ) then
                   Vendas.Edit ;

               Application.CreateForm(TFrmDadosDesconto, FrmDadosDesconto);

               FrmDadosDesconto.EdNome.Text        := VendasNOME.value ;
               FrmDadosDesconto.EdDocumento.Text   := VendasCodigo.AsString  ;
               FrmDadosDesconto.Desconto.Value     := VendasDESC_ACRES.Value ;
               FrmDadosDesconto.DescontoPorc.Value := 0;
               FrmDadosDesconto.Valor.Value        := VendasTotal.Value ;

               If FrmDadosDesconto.Showmodal = MrOk then
               begin
                    EdPorcentagem.Text              := FORMATFLOAT('###,###,##0.00',ARREDONDA(FrmDadosDesconto.DescontoPorc.VALUE,2)) ;

                    If ARREDONDA ( FrmDadosDesconto.Desconto.value, 2) > 0 then
                         VendasDESC_ACRES.Value := -1 * ARREDONDA ( FrmDadosDesconto.Desconto.value,2) ;

                    If ARREDONDA ( FrmDadosDesconto.Acrescimo.value, 2) > 0 then
                         VendasDESC_ACRES.Value := ARREDONDA ( FrmDadosDesconto.Acrescimo.value,2) ;
               end;

               FrmDadosDesconto.Free   ;
               FrmDadosDesconto := Nil ;

               EdDesconto.SetFocus ;
          END
          ELSE BEGIN
               MessageDlg ('Selecione a Forma de Faturamento!', MtError, [MbOk],0);
               EdForma.SetFocus ;
          END;
     end;
end;

procedure TFrmVendas.EdDescontoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     FrmVendas.Calcular_Itens ;
     DescontoRestante;
end;

procedure TFrmVendas.RzBitBtn2Enter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmVendas.RzBitBtn2Exit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmVendas.ActTodasNaturezasExecute(Sender: TObject);
begin
     If (FrmVendas.ActiveControl = EdNatureza) Then
     begin
       with dmVendas do
       begin
         SelNatureza.Close ;
         SelNatureza.Sql.text :=  ' SELECT CNPJ, CODIGO, NOME, INTERESTADUAL  FROM EST_NATUREZA '+
                                  ' WHERE CNPJ = :CNPJ and ATIVA = ''S'' AND INTERESTADUAL = :IE  ORDER BY NOME    ';

         SelNatureza.ParamByName ('CNPJ').AsString  := DmApp.Cnpj;

         //Seta o Estado da Pessoa
         DmVendas2.UfPessoa := VendasUF.Value ;

         If DmVendas.SelPessoasFJUF.Value = DmApp.UF then
           SelNatureza.ParamByName ('IE').AsString  := 'E'
         else
           SelNatureza.ParamByName ('IE').AsString  := 'I'       ;

         SelNatureza.Open ;
       end;
     end;
end;

procedure TFrmVendas.ActAnaliseCustosExecute(Sender: TObject);
Var
   Numero: Integer;
begin
  If Datasource.DataSet.State in [ dsedit, dsinsert ] Then
    Datasource.DataSet.Post;

  If DsParcelas.DataSet.State in [ dsedit, dsinsert ] Then
    DsParcelas.DataSet.Cancel;

  IF arredonda(VendasTotal.Value,2 ) <= 0 THEN
  BEGIN
    MessageDlg('Não Existem Produtos para Faturamento, Verifique!',MtError,[MbOk],0);
    Pc.ActivePageIndex := 0;
    Exit;
  END;

  Numero := DataSource.DataSet.FieldByName('CODIGO').asInteger    ;
  //

  DmApp.Analise_Custos(Numero);
  //Visualizar
  DmVendas.Analise_Custos ( Numero, 0 );
end;

procedure TFrmVendas.ActCoresExecute(Sender: TObject);
Var
   Numero: Integer;
begin
     If Datasource.DataSet.State in [ dsedit, dsinsert ]Then
         Datasource.DataSet.Post;

     If DsParcelas.DataSet.State in [ dsedit, dsinsert ]Then
         DsParcelas.DataSet.Cancel;

     IF arredonda(VendasTotal.Value,2 ) <= 0 THEN
     BEGIN
          MessageDlg('Não Existem Produtos para Faturamento, Verifique!',MtError,[MbOk],0);
          Pc.ActivePageIndex := 0;
          Exit;
     END;

     Numero := DataSource.DataSet.FieldByName('CODIGO').asInteger    ;

     IF TRIM(Vendas_ItensPRODUTO.Value ) <> '' THEN
     BEGIN
          //Insere Novas Cores
          DmApp.Vendas_Cor(Numero,Vendas_ItensPRODUTO.Value, Vendas_ItensSEQUENCIA.Value );
          //Visualizar
          DmVendas.Ver_Vendas_Cor ( Numero, Vendas_ItensPRODUTO.Value, Vendas_ItensSEQUENCIA.Value );
     END;
end;

procedure TFrmVendas.DescontoRestante;
begin
    DesctoRes := dmapp.DescontoRestante(DataSource.DataSet.FieldByName('CODIGO').asInteger,DataSource.DataSet.FieldByName('DESC_ACRES').asfloat,TIBDataSet(DataSource.DataSet).transaction);
    if (DesctoRes > 0) then
      lblDescto.Style.Font.Color := clGreen
    else
      lblDescto.Style.Font.Color := clRed;

    lblDescto.caption :=  formatfloat('###,##0.00',DesctoRes);
end;

procedure TFrmVendas.mmObservacaoKeyPress(Sender: TObject; var Key: Char);
begin
 { If Key = #13 then
    If mmObservacao.Lines.Count <= 0 then
      GridItens.SetFocus; }
end;

procedure TFrmVendas.mmObservacaoEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFrmVendas.mmObservacaoExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
 // GridItens.setfocus;
end;

procedure TFrmVendas.mmObservacaoKeyDown(Sender: TObject; var Key: Word;
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



procedure TFrmVendas.aTfrmCadTransportadorasChange(Sender: TObject);
begin
  if trim(aTfrmCadTransportadoras.text) <> '' then
  begin
    if Vendas.state in [dsEdit] then
    begin
      if VendasPGTO_FRETE.asString = '' then
        VendasPGTO_FRETE.value := '1';
    end;

    edFreteConta.enabled := true;
  end
  else
    edFreteConta.enabled := false;
end;

procedure TFrmVendas.edFreteContaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) Then
  begin
    Perform(WM_NEXTDLGCTL, 0, 0);
    If Self.ActiveControl = pc Then
      Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TFrmVendas.GRIDFATURAMENTO_Exit(Sender: TObject);
begin
     Calcular_Parcelas ;
end;

procedure TFrmVendas.ActImportaItensExecute(Sender: TObject);
var
  CFOP : integer;
begin
 with dmVendas2 do
 begin
       if application.messagebox('Deseja realmente importar os itens do faturamento relacionado?','Aviso',mb_yesno + mb_iconquestion) = id_no then
         exit;

       try
         if (Vendas.state in [dsinsert,dsEdit]) then
           Vendas.post;
         ImportaItens.parambyname('cnpj').value := dmApp.cnpj;
         ImportaItens.parambyname('COD_ORIGEM').value := VendasID_AGRUPADOR.value;
         ImportaItens.parambyname('COD_DESTINO').value := VendasCODIGO.value;
         ImportaItens.ExecProc;

         application.messagebox('Itens importados com sucesso','Aviso',mb_ok + mb_iconinformation);
         Vendas_Itens.Close;
         Vendas_Itens.Open;
       except
             On E:EDataBaseError Do
             Begin
               application.messagebox(Pchar('Erro ao importar os itens:' + #13 + #13 + ' ' + E.Message + '... '),'Aviso',mb_ok + mb_iconerror);
               exit;
             End
             Else
             Begin
               application.messagebox('Erro ao importar os itens','Aviso',mb_ok + mb_iconerror);
               exit;
             End;
       end;
 end
end;

procedure TFrmVendas.BTNCENTROClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCCusto', False);
  FrmCCusto := TFrmCCusto.Create(Self);
  FrmCCusto.ShowModal;

  Datasource.DataSet.FieldByName('CENTRO_CUSTO').asInteger := FrmMain.Codigo_Int;

  FrmCCusto.Free;
  FrmCCusto := Nil;

  dsCentro.DataSet.Close ;
  dsCentro.DataSet.Open  ;

  cmbCentro.SetFocus;
end;

procedure TFrmVendas.Calcular_DescAcresc;
var Desc: Variant;
begin
  if Vendas_Itens.State in [ DsInsert, DsEdit ] then
    Vendas_Itens.Post;

  Vendas_Itens.DisableControls;
  Vendas_Itens.First;

  //Calculo desconto total-- Sanniel
{  Desc := 0;
  while not (Vendas_Itens.Eof) do
  begin
    Desc := Desc + (Vendas_ItensDESCONTO.Value * Vendas_ItensQUANTIDADE.Value);
    Vendas_Itens.Next;
  end;

  if not (Vendas.State in [ DsInsert, DsEdit ]) then
  begin
    Vendas.Close;
    Vendas.Open;
    Vendas.Edit;
  end;
  
  VendasDESC_ACRES.Value := Desc;
  Vendas_Itens.EnableControls;

  exit; }
  //

  if not (Vendas.State in [ DsInsert, DsEdit ]) then
    Vendas.Edit;

  if ((DmVendas.SelFormaPgtoDESCONTO.Value > 0) and ((VendasDESC_ACRES.asFloat = 0))) then
    VendasDESC_ACRES.Value := -1 * ((VendasTOTAL.VALUE * DmVendas.SelFormaPgtoDESCONTO.VALUE)/100)
  else if (VendasDESC_ACRES.asFloat = 0) then
    VendasDESC_ACRES.Value := 0 ;

  if (DmVendas.SelFormaPgtoACRESCIMO.Value > 0 ) then
    VendasDESC_ACRES.Value := VendasDESC_ACRES.Value + ((VendasTOTAL.VALUE * DmVendas.SelFormaPgtoACRESCIMO.value)/100);
end;

procedure TFrmVendas.ActConfigFinExecute(Sender: TObject);
begin
  //No caso de devolução, os registros de contas à pagar sempre irão gerar com os mesmos indices do fat. de origem
  if (VendasID_AGRUPADOR.asInteger > 0) then
  begin
    Application.MessageBox('Impossível definir a configuração financeira. Registro obedecerá os parâmetros do faturamento vinculado','Aviso',mb_ok+mb_iconerror);
    exit;
  end;

  if not (Vendas.State in [ DsInsert, DsEdit ]) then
    Vendas.Edit;

  FrmConfigFinanceira := TFrmConfigFinanceira.Create(Self);
  FrmConfigFinanceira.DataSource.DataSet := Vendas;
  FrmConfigFinanceira.ShowModal;

  if not (Vendas.State in [ DsInsert, DsEdit ]) then
    Vendas.Edit;
end;

procedure TFrmVendas.ActComItemExecute(Sender: TObject);
begin
  frmDefineComissaoItem := TfrmDefineComissaoItem.Create(Self);
  frmDefineComissaoItem.ShowModal;
  frmDefineComissaoItem.free;
  frmDefineComissaoItem := Nil;
end;

procedure TFrmVendas.ActValidaNFeExecute(Sender: TObject);
begin
  //
end;

procedure TFrmVendas.ActAssinaNFeExecute(Sender: TObject);
begin
  //
end;

procedure TFrmVendas.VendasAfterInsert(DataSet: TDataSet);
begin
  DataSet.Fields[0].Value := DMApp.Cnpj;
end;

procedure TFrmVendas.VendasBeforeDelete(DataSet: TDataSet);
begin
  DMApp.LOG_TRANSACOES ( VendasCODIGO.TEXT, 'VND' );
  dmapp.pcd_log_fat_vendas(VendasCNPJ.value,VendasCODIGO.value,DMAPP.USR_CONECTADO,'DELEÇÃO');
end;

procedure TFrmVendas.VendasBeforeOpen(DataSet: TDataSet);
begin
  Vendas.ParamByName('CNPJ').asString       := DMApp.Cnpj;
  Vendas.ParamByName('CODIGO').asInteger    := CodVenda;
end;

procedure TFrmVendas.VendasBeforePost(DataSet: TDataSet);
var
  propriedade : integer;
  tipo : string;
  Remessa, Devolucao: Variant;
  Natureza : integer;
begin
     if VendasPESSOA_FJ.AsInteger = 0 then
     begin
       Pc.ActivePageIndex := 0;
       EdPessoa.SetFocus ;
       Abort ;
     end;

     If VendasNATUREZA.AsInteger = 0 then
     begin
       Pc.ActivePageIndex := 0;
       EdNatureza.SetFocus ;
       Abort;
     end;

     If VendasVENDEDOR.AsInteger = 0 then
     begin
       Pc.ActivePageIndex := 0;
       EdVendedor.SetFocus ;
       Abort ;
     end;

     if ((VendasTERCEIRO.AsInteger = 0) and (DmApp.PG_COM_TERC = 'S')) then
     begin
       Pc.ActivePageIndex := 0;
       EdTerceiro.SetFocus ;
       abort;
     end;

       //verificando se é uma remessa
       remessa := RetornaValor(' Select remessa from est_natureza where Codigo ='+VendasNatureza.asString+
                               ' and CNPJ = '+QuotedStr(DmApp.Cnpj)+' and ATIVA = ''S''');

       devolucao := RetornaValor(' Select devolucao from est_natureza where Codigo ='+VendasNatureza.asString+
                               ' and CNPJ = '+QuotedStr(DmApp.Cnpj)+' and ATIVA = ''S''');

       if (Remessa = 'S') then
         tipo := 'Remessa'
       else if (Devolucao = 'S') then
         tipo := 'Devolução'
       else
         tipo := '';

       If (( tipo <> '') and (VendasID_AGRUPADOR.isNull))      then
       begin
          Pc.ActivePageIndex := 0;
          Application.messagebox(Pchar('Defina o vínculo da '+tipo),'Aviso',mb_ok+mb_iconerror);
          EdPropriedade.SetFocus ;
          exit;
          //Abort ;
       end;

 if (VendasID_AGRUPADOR.value > 0) then
 begin
   with dmVendas2 do
   begin
     Geral.Close;
     Geral.sql.text := 'select PROPRIEDADE from fat_vendas vd where vd.cnpj = :cnpj and vd.codigo = :id_agrupador';
     Geral.ParambyName('cnpj').value := dmApp.cnpj;
     Geral.ParambyName('id_agrupador').value := VendasID_AGRUPADOR.value;
     Geral.Open;
     Geral.FetchAll;

     //Com outra propriedae
     if (Geral.fieldbyname('PROPRIEDADE').asInteger <> VendasPROPRIEDADE.value) then
     begin
       Application.MessageBox('Propriedade selecionada é inválida, verifique a nota vinculada','Aviso',mb_ok+mb_iconerror);
       abort;
       exit;
     end;

     Geral.Close;
     Geral.sql.text := 'select count(*) cont from fat_vendas vd where vd.cnpj = :cnpj and vd.codigo = :id_agrupador and vd.vendedor = :vendedor';
     Geral.ParambyName('cnpj').value := dmApp.cnpj;
     Geral.ParambyName('vendedor').value := VendasVENDEDOR.value;
     Geral.ParambyName('id_agrupador').value := VendasID_AGRUPADOR.value;
     Geral.Open;
     Geral.FetchAll;

     //Com outra vendedor
     if (Geral.fieldbyname('cont').value = 0) then
     begin
       Application.MessageBox('Vendedor selecionado é inválido, verifique a nota vinculada','Aviso',mb_ok+mb_iconerror);
       abort;
       exit;
     end
   end;
 end;

end;

procedure TFrmVendas.VendasCalcFields(DataSet: TDataSet);
var
  Item : real;
begin

     if dmvendas.SelFormaPgto.state = dsBrowse then
       dmvendas.SelFormaPgto.Locate('CODIGO',VendasFORMA_PGTO.value,[loCaseInsensitive]);

     VendasTotal_Geral.Value := arredonda(VendasTOTAL_NOTA.Value, 2);
     Vendas_Total_Geral_IDX.Value := arredonda(VendasTOTAL_NOTA.Value, 2);;

     //TOTAL QUE DEVERA SER PARCELADO
     VendasTotal_Parcelar.Value := arredonda( VendasTotal_Geral.Value - VendasENTRADA.Value - VendasDESCTO_SERVICO.Value, 2) ;

     //DIFERENCA DO TOTAL A PARCELAR COM O TOTAL PARCELADO
     IF (dmvendas.SelFormaPgtoAVISTA.Value <> 'S') THEN
        VendasDiferenca.Value := arredonda(VendasTotal_Parcelar.Value - VendasVlr_Parc_Lc.Value ,2)
     ELSE
        VendasDiferenca.Value := 0;

     IF dmvendas.SelFormaPgtoAVISTA.Value = 'S'  THEN
       VendasAVista.Value := arredonda( VendasTotal_Geral.Value - VendasDESCTO_SERVICO.Value , 2 )
     else
       VendasAVista.Value := arredonda( VendasENTRADA.Value , 2 );

     //Recontando o valor de itens, erro ocorrido na fert flora
//     Vendas_Itens.DisableControls;
     Vendas_Itens.Open;
     Vendas_Itens.First;
     item := 0;
     while not Vendas_Itens.eof do
     begin
       item := item + Vendas_ItensTotal.asFloat + (Vendas_ItensDESCONTO.value * Vendas_ItensQUANTIDADE.value);//Sanniel -- somente total_nota deve conter o valor com desconto
       Vendas_Itens.next;
     end;
//     Vendas_Itens.EnableControls;

     VendasTotal_Itens.value := item;
end;

procedure TFrmVendas.VendasNewRecord(DataSet: TDataSet);
begin
  VENDAScnpj.value := dmapp.cnpj;
  VendasCANCELADA.Value   := 'N' ;
  VendasENTRADA.value     := 0;
  VendasDINHEIRO.value    := 0;
  VendasCHEQUE.Value      := 0;
  VendasCARTAO.value      := 0;
  VendasTICKET.value      := 0;
  VendasCARTAO.value      := 0;
  VendasTOTAL.Value       := 0;
  VendasENVIADA_CX.Value  := 'N' ;
  VendasFECHADA.Value     := 'N' ;
  VendasSELECIONADA.Value := 'N' ;
  VendasVLR_PARC_LC.Value := 0;
  VendasNUM_NF.Value      := 0;
  VendasNUM_CUPOM.Value   := 0;
  VendasDESC_ACRES.Value  := 0;
  VendasVOLUME.Value      := 0;
  VendasPESO.Value        := 0;
  VendasDUPLICATA.Value   := 0;
  VendasRECEBIDAS.Value   := 0;
  VendasTIPO_VENDA.Value  := 'Venda' ;
  VendasCONS_REV.Value    := 'C';

  VendasBASE_ICM.Value        := 0;
  VendasICM.Value             := 0;
  VendasBASE_ICM_SUBST.Value  := 0;
  VendasVALOR_ICM_SUBST.Value := 0;
  VendasFRETE.Value           := 0;
  VendasSEGURO.Value          := 0;
  VendasDESPESAS.Value        := 0;
  VendasIPI.Value             := 0;
  VendasTOTAL_NOTA.Value      := 0;

  //TEMP
  VendasUSUARIO.Value := 1;
  VendasDATA.Value    := DmApp.DataHora ('D');

  //Parametros para Clientes
  Ven_Requisicao     := 'N' ;
  Ven_Dia_Pref_Fat   := 0   ;
  Ven_Limite_Tempo   := 0   ;
  Ven_Limite_Credito := 0   ;

  //Local 1 = Fiscal 2 = Não Fiscal
  if (trim(DmApp.LOCAL_PADRAO_ESTOQUE) = '1') then
    VendasLOCAL.Value  := 1
  else
    VendasLOCAL.Value  := 2;

end;

procedure TFrmVendas.Vendas_ItensCalcFields(DataSet: TDataSet);
begin
  Vendas_ItensTOTAL_FISCAL.VALUE := Vendas_ItensQUANTIDADE_FIS.VALUE * Vendas_ItensPRC_UNITARIO_FIS.VALUE ;
  Vendas_ItensTotal.value        := Vendas_ItensQUANTIDADE.Value * Vendas_ItensPRC_UNITARIO.Value;
  Vendas_ItensPeso_Total.Value   := Vendas_ItensQUANTIDADE.Value * Vendas_ItensPeso.Value ;
  Vendas_ItensVolume_Total.Value := Vendas_ItensQUANTIDADE.Value * Vendas_ItensVolume.Value ;
end;

procedure TFrmVendas.Vendas_ItensNewRecord(DataSet: TDataSet);
begin
  Vendas_ItensCNPJ.Value   := VendasCNPJ.value   ;
  Vendas_ItensCODIGO.Value := VendasCODIGO.Value ;
  Vendas_ItensQUANTIDADE.Value    := 0;
  Vendas_ItensPRC_UNITARIO.Value  := 0;
  Vendas_ItensPRC_CUSTO.Value     := 0;
  Vendas_ItensICM.Value           := 0;
  Vendas_ItensICM_SUBS.Value      := 0;
  Vendas_ItensIPI.Value           := 0;
  Vendas_ItensVOLUME.Value        := 0;
  Vendas_ItensPESO.Value          := 0;
  Vendas_ItensDESCONTO.Value      := 0;
  Vendas_ItensPORC_DESC.Value     := 0;
  Vendas_ItensUNIDADE.Value       := 'UN' ;
  Vendas_ItensSequencia.Value     := Vendas_Itens.RecordCount ;
  Vendas_ItensVENDEDOR.Value      := VendasVENDEDOR.Value     ;
  Vendas_ItensCFOP.Value          :=VendasNATUREZA.Value      ;
end;

procedure TFrmVendas.Vendas_ItensSPRODUTOSetText(Sender: TField;
  const Text: String);
Function RetiraZeros ( Str: String ): String;
          Var
             Aux: String;
             I, Len: Integer ;
             Inicio: Boolean ;
          Begin
               I := 1;

               Len := Length(Str);

               Aux := '';

               Inicio := False ;

               While I <= Len do
               begin
                    If (( Copy(Str,I,1) <> '0' ) OR ( Inicio ))
                    then Begin
                         Aux := Aux + Copy(Str,I,1);
                         Inicio := TRUE ;
                    end
                    else begin
                         Inicio := FALSE ;
                    end;

                    I := I + 1;
               end;

               result := Aux;
          end;
Var
   Aux: String;
   Codigo, Grade, Numero: String;
begin
     Aux := Text ;

     //VERIFICA SE TEM GRADE
     IF (( LENGTH( TRIM( AUX )) >= 15 ) AND ( DMAPP.EST_USA_GRADE = 'S' ))
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

          CODIGO := RETIRAZEROS ( CODIGO );
          NUMERO := RETIRAZEROS ( NUMERO );
          SENDER.VALUE := CODIGO;
          Vendas_ItensPRODUTO.VALUE := CODIGO;

          IF NOT ( Vendas_Itens.STATE IN [ DSINSERT, DSEDIT ] )
          THEN
              Vendas_Itens.EDIT ;

          IF TRIM(GRADE) = ''
          THEN BEGIN
               Vendas_ItensGRADE.VALUE  := '0'  ;
          END
          ELSE BEGIN
               Vendas_ItensGRADE.VALUE  := (GRADE)  ;
          END;

          IF TRIM(NUMERO) = ''
          THEN BEGIN
               Vendas_ItensNUMERO.VALUE := '0';
          END
          ELSE BEGIN
               Vendas_ItensNUMERO.VALUE := (NUMERO) ;
          END;
     END
     ELSE BEGIN
          If DmApp.Elimina_Zeros = 'S'
          THEN BEGIN
               While Copy ( Aux, 1, 1 ) = '0' DO
               BEGIN
                    Aux := Copy ( Aux, 2, 15 );
               End;
               Sender.Value := Aux ;
               Vendas_ItensPRODUTO.VALUE := aux;
          END
          ELSE BEGIN
               If DmApp.Acrescenta_Zeros = 'S'
               THEN BEGIN
                    While Length ( Aux ) < 10 DO
                    BEGIN
                         Aux := '0' + Aux ;
                    End;
                    Sender.Value := Aux ;
                    Vendas_ItensPRODUTO.VALUE := aux;
               END
               ELSE BEGIN
                    Sender.Value := Aux ;
                    Vendas_ItensPRODUTO.VALUE := aux;
               END;
          END;
     END;
end;

procedure TFrmVendas.Vendas_ItensQUANTIDADEValidate(Sender: TField);
begin
  if frmVEndasitens <> nil then
    FrmVendasItens.LocSimilar  := False ;
end;

procedure TFrmVendas.Vendas_ItensPRODUTOValidate(Sender: TField);
VAR
   DESCONTO, ValorUsado, VALORPromocao, PctPromocao, PctEspecial, ValorEspecial: REAL;
   COMPLEMENTO: STRING;
   LOTE : STRING;
   CODIGO_LOTE: INTEGER;
begin
     If ((Sender.IsNull) or (trim(Sender.Value) = ''))  Then
         Exit ;

       dmVendas2.Valida_Produto.Close ;
       dmVendas2.Valida_Produto.ParamByName ('CNPJ').AsString        := DmApp.Cnpj   ;
       dmVendas2.Valida_Produto.ParamByName ('PRODUTO').AsString     := Sender.Value ;
       dmVendas2.Valida_Produto.ParamByName ('VENDEDOR').Value    := VendasVENDEDOR.value;
       dmVendas2.Valida_Produto.Open ;

       if ((dmVendas2.Valida_ProdutoVENCTO_PRC_VENDA.Value > 0) and (DateOf(dmVendas2.Valida_ProdutoVENCTO_PRC_VENDA.AsDateTime) < DateOf(dmApp.Data_Servidor))) then
       begin
         Application.MessageBox('Preço de venda vencido. Verifique','Aviso',mb_iconerror + mb_iconinformation);
         abort;
       end;

     If dmVendas2.Valida_ProdutoPRC_VENDA.IsNull then
     Begin
       If DmApp.CHM_PROD_INEXIST = 'S' THEN
       BEGIN
        If FrmVendasItens <> Nil then
          FrmVendasItens.LocProd := True ;

        Exit;
       END
       ELSE
       BEGIN
         MessageDlg('Produto Inexistente!', mtError, [mbOK], 0);
         Abort ;
       END;
     end
     else
     begin
       Vendas_ItensPRC_CUSTO.Value := dmVendas2.Valida_ProdutoPRC_REPOS.Value ;
       Vendas_ItensPRC_UNIT_ORIGINAL.Value := dmVendas2.Valida_ProdutoPRC_VENDA.Value;

       ValorEspecial := 0;
       ValorUsado := 0;
       PctPromocao := 0;
       VALORPromocao := 0;
       //------------------------Verificando se existe um vlr. promocional do produto------------------
       VALORPromocao :=  dmapp.Verifica_Promocao( Sender.value, dmapp.Data_Servidor);

       //procedimento retorna 0 quando não há promoções
       if (ValorPromocao = 0) then
         pctpromocao := 0
       else
       begin
         ValorPromocao := (Vendas_ItensPRC_UNIT_ORIGINAL.Value - ValorPromocao);
         pctPromocao := (ValorPromocao * 100)/Vendas_ItensPRC_UNIT_ORIGINAL.Value;
       end;
       //------------------------------------------------------------------------------------------------

       //------------------------Verificando se existe um vlr. especial---------------------------------
       PctEspecial := dmapp.Verifica_Preco_Especial(Sender.value,VendasPESSOA_FJ.value);
       ValorEspecial := Vendas_ItensPRC_UNIT_ORIGINAL.value - ((Vendas_ItensPRC_UNIT_ORIGINAL.value * PctEspecial)/100);
       //---------------------------------------------------------------------------------------------

       //verifiando qual dos dois´possui o maior desconto
       if (PctEspecial <= 0) and (PctPromocao > 0) then
         Desconto := PctPromocao
       else if (PctPromocao <= 0) and (PctEspecial > 0) then
         Desconto := PctEspecial
       else if (PctPromocao > PctEspecial) then //neste caso é porcentagem portanto tem de ser '>'
         Desconto := PctPromocao
       else
         Desconto := PctEspecial;

       Vendas_ItensPORC_DESC.VALUE := Desconto;
       Vendas_ItensDESCONTO.value  := ((Vendas_ItensPRC_UNIT_ORIGINAL.value * Desconto )/100); //+
       Vendas_ItensPRC_UNITARIO.Value := Arredonda(Vendas_ItensPRC_UNIT_ORIGINAL.value,2) - Vendas_ItensDESCONTO.value;

       Vendas_ItensNOME_PRODUTO.Value      := dmVendas2.Valida_ProdutoNOME.Value;
       Vendas_ItensNOME_FIS.Value          := dmVendas2.Valida_ProdutoNOME.Value;
       Vendas_ItensPRODUTOFIS.Value        := Sender.Value                                     ;
       Vendas_ItensFRACIONADO.Value        := dmVendas2.Valida_ProdutoVENDE_FRACIONADO.Value ;

       If Not dmVendas2.Valida_ProdutoVOLUME.IsNull then
         Vendas_ItensVOLUME.Value       := dmVendas2.Valida_ProdutoVOLUME.AsFloat
       else
         Vendas_ItensVOLUME.Value       := 0;

       If Not dmVendas2.Valida_ProdutoPESO_LIQ.IsNull then
         Vendas_ItensPESO.Value         := dmVendas2.Valida_ProdutoPESO_LIQ.AsFloat
       else
         Vendas_ItensPESO.Value         := 0;

       If Not dmVendas2.Valida_ProdutoUNIDADE.IsNull then
         Vendas_ItensUNIDADE.Value      := dmVendas2.Valida_ProdutoUNIDADE.AsString
       else
         Vendas_ItensUNIDADE.Value      := 'UN';

       If Not dmVendas2.Valida_ProdutoSUBUNIDADE.IsNull then
          Vendas_ItensSUBUNIDADE.Value      := dmVendas2.Valida_ProdutoSUBUNIDADE.AsInteger
       else
          Vendas_ItensSUBUNIDADE.Value      := 1;

       If Not dmVendas2.Valida_ProdutoATIVO.IsNull then
       begin
         If dmVendas2.Valida_ProdutoATIVO.AsString = 'N' then
         begin
           MessageDlg('Este Produto Não Esta Ativo, Verifique', mtError, [mbOK], 0);
           Abort;
         end;
       end;

       If Not dmVendas2.Valida_ProdutoALIQUOTA_ECF.IsNull  then
         Vendas_ItensALIQUOTA.Value := dmVendas2.Valida_ProdutoALIQUOTA_ECF.AsString
       else
         Vendas_ItensALIQUOTA.Value := 'T1' ;

       If Not dmVendas2.Valida_ProdutoQTDADE_1.IsNull then
         Qtdade_1 := dmVendas2.Valida_ProdutoQTDADE_1.AsFloat
       else
         Qtdade_1 := 0 ;

       If Not dmVendas2.Valida_ProdutoORIGEM.IsNull then
         Vendas_ItensORIGEM.Value := dmVendas2.Valida_ProdutoORIGEM.value
       else
         Vendas_ItensORIGEM.Value := 0 ;

          //VERIFICA O LOTE
          If dmVendas2.Valida_ProdutoPOSSUI_LOTE.Value = 'S' Then
          begin
               Lote := '';

               dmvendas.SelLote.Close ;
               dmvendas.SelLote.ParamByName ('CNPJ').AsString    := Vendas_ItensCNPJ.Value      ;
               dmvendas.SelLote.ParamByName ('CODIGO').AsString  := Sender.Value    ;
               dmvendas.SelLote.Prepare ;
               dmvendas.SelLote.Open ;

               Application.CreateForm(TFrm_Localizar_Lote, Frm_Localizar_Lote);
               Frm_Localizar_Lote.DSource.dataset := dmvendas.SelLote ;

               if (Frm_Localizar_Lote.showmodal = mrOk) Then
                 CODIGO_Lote := (Frm_Localizar_Lote.CampTrecho) ;

               Frm_Localizar_Lote.free   ;
               Frm_Localizar_Lote := Nil ;

               dmVendas2.GERAL.Close ;
               dmVendas2.GERAL.SQL.text := ' SELECT LOTE FROM EST_LOTE_PRODUTO WHERE CNPJ = :CNPJ AND PRODUTO = :PRODUTO AND CODIGO = :CODIGO ';
               dmVendas2.GERAL.ParamByName('CNPJ'   ).AsString  := DmApp.Cnpj   ;
               dmVendas2.GERAL.ParamByName('PRODUTO').AsString  := Sender.value ;
               dmVendas2.GERAL.ParamByName('CODIGO' ).AsInteger := codigo_lote  ;
               dmVendas2.GERAL.Open ;

               if (dmVendas2.geral.Fields[0].isnull) then
                 lote := ''
               else
                 lote := dmVendas2.GERAL.Fields[0].value;

               If Lote = '' then
               begin
                 MessageDlg('Lote Inválido, Verifique!', mtError, [mbOK], 0);
                 Abort;
               end
               else
               begin
                 Vendas_ItensCODIGO_LOTE.value := codigo_lote ;
                 Vendas_ItensLOTE.Value := Lote ;
               end;
          end;

          //Verifica se é revenda
          IF VendasCONS_REV.value = 'R' THEN
          BEGIN
               dmvendas.TRIBUTACAO_REVENDA.CLOSE ;
               dmvendas.TRIBUTACAO_REVENDA.ParamByName('CNPJ'   ).AsString := DmApp.Cnpj   ;
               dmvendas.TRIBUTACAO_REVENDA.ParamByName('PRODUTO').AsString := Sender.value ;
               dmvendas.TRIBUTACAO_REVENDA.OPEN ;

               if dmvendas.TRIBUTACAO_REVENDACTE.IsNull
               THEN BEGIN
                    If Not dmVendas2.Valida_ProdutoCTE.IsNull
                    then begin
                         Vendas_ItensCTE.Value := dmVendas2.Valida_ProdutoCTE.value ;
                    end
                    else begin
                         Vendas_ItensCTE.Value := 1 ;
                    end;
               END
               ELSE BEGIN
                    Vendas_ItensCTE.Value := dmvendas.TRIBUTACAO_REVENDACTE.value ;
               END;

               if dmvendas.TRIBUTACAO_REVENDACTE.IsNull
               THEN BEGIN
                    If Not dmVendas2.Valida_ProdutoCTIE.IsNull
                    then begin
                         Vendas_ItensCTIE.Value := dmVendas2.Valida_ProdutoCTIE.value ;
                    end
                    else begin
                         Vendas_ItensCTIE.Value := 1 ;
                    end;
               END
               ELSE BEGIN
                    Vendas_ItensCTIE.Value := dmvendas.TRIBUTACAO_REVENDACTE.VALUE ;
               END;
          END
          ELSE BEGIN
               If Not dmVendas2.Valida_ProdutoCTE.IsNull
               then begin
                    Vendas_ItensCTE.Value := dmVendas2.Valida_ProdutoCTE.value ;
               end
               else begin
                    Vendas_ItensCTE.Value := 1 ;
               end;

               If Not dmVendas2.Valida_ProdutoCTIE.IsNull
               then begin
                    Vendas_ItensCTIE.Value := dmVendas2.Valida_ProdutoCTIE.value ;
               end
               else begin
                    Vendas_ItensCTIE.Value := 1 ;
               end;
          END;

          If Not dmVendas2.Valida_ProdutoReducao.IsNull then
          begin
            Vendas_ItensReducao.Value := dmVendas2.Valida_ProdutoReducao.value ;
          end
          else begin
            Vendas_ItensReducao.Value := 0 ;
          end;

          //SERVICO
          //If FrmVendasItens <> Nil  then
          //   FrmVendasItens.EdServico.Visible := (dmVendas2.Valida_ProdutoSERVICO.Value = 'S');

          if dmVendas2.Valida_ProdutoCOMPLEMENTO.VALUE <> ''  then
              COMPLEMENTO := dmVendas2.Valida_ProdutoCOMPLEMENTO.VALUE
          else
              COMPLEMENTO := '';

          //COMPLEMENTO
          If dmVendas2.Valida_ProdutoCOMPLEMENTO_NF.Value = 'S' then
          begin
            if TRIM(Vendas_ItensCOMPLEMENTO.Value) <> '' then
              Vendas_ItensCOMPLEMENTO.Value := dmvendas.PedeComplemento(Vendas_ItensCOMPLEMENTO.Value,Vendas_ItensProduto.value + '-'+Vendas_ItensNome_Produto.value )
            else
              Vendas_ItensCOMPLEMENTO.Value := dmvendas.PedeComplemento(COMPLEMENTO,Vendas_ItensProduto.value + '-'+Vendas_ItensNome_Produto.value);
          end;
     end;


     //Pega a Natureza da Venda
     Vendas_ItensCFOP.Value := VendasNATUREZA.Value ;

     //Verifica se Ele Já Foi Faturado Nesta Nota
     dmVendas2.GERAL.Close ;
     dmVendas2.GERAL.Sql.Clear ;
     dmVendas2.GERAL.Params.CreateParam ( FtString , 'E', PtInput );
     dmVendas2.GERAL.Params.CreateParam ( FtInteger, 'C', PtInput );
     dmVendas2.GERAL.Params.CreateParam ( FtString , 'P', PtInput );

     dmVendas2.GERAL.Sql.Add (' Select * From Fat_Vendas_Itens Where Produto = :P and CNPJ = :E and Codigo = :C ');

     dmVendas2.GERAL.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     dmVendas2.GERAL.ParamByName ('C').AsInteger := Vendas_ItensCODIGO.Value ;
     dmVendas2.GERAL.ParamByName ('P').AsString  := Sender.Value ;
     dmVendas2.GERAL.Prepare ;

     dmVendas2.GERAL.Open ;
     if(frmVendas <> nil) or (FrmVendasPdv <> nil) then
       If Not dmVendas2.GERAL.Fields[1].isNull then
       begin
          if DmApp.REPETE_PRODUTO = 'S' then
            MessageDlg('Atenção Produto Repetido!', mtError, [mbOK], 0)
          else
          begin
            MessageDlg('Este Produto Já Foi Faturado Nesta Nota, Verifique!', mtError, [mbOK], 0);
            Abort;
          end;
       end;
end;

procedure TFrmVendas.Vendas_ItensPORC_DESCValidate(Sender: TField);
begin
   IF ( Sender.Value < 0 )
    THEN BEGIN
      Showmessage('O Valor do ' + Sender.DisPlayLabel  + ' Digitado deve Maior Ou Igual a Zero');
      Abort;
    END;
end;

procedure TFrmVendas.Vendas_ItensCFOPValidate(Sender: TField);
var
  ES1 : string;
begin
     //Busca a Aliquota para a Natureza
     If Sender.IsNull Then
         Exit ;

     dmVendas2.GERAL.Close;
     dmVendas2.GERAL.Sql.text := ' Select ES From Est_Natureza Where Codigo = :C and CNPJ = :E ';
     dmVendas2.GERAL.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     dmVendas2.GERAL.ParamByName ('C').AsInteger := VendasNATUREZA.Value ;
     dmVendas2.GERAL.Open;

     ES1 := dmVendas2.GERAL.Fields[0].asString;

     dmVendas2.GERAL.Close ;
     dmVendas2.GERAL.Sql.text := ' Select PERC_ICMS, INTERESTADUAL, PERC_ICMS_REV, ES From Est_Natureza Where Codigo = :C and CNPJ = :E ';
     dmVendas2.GERAL.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     dmVendas2.GERAL.ParamByName ('C').AsInteger := Sender.Value ;
     dmVendas2.GERAL.Open ;

     If dmVendas2.GERAL.Fields[0].isNull then
     Begin
       application.messagebox('Natureza inexistente!','Aviso',mb_ok + mb_iconerror);
       Abort;
     end
     else if (dmVendas2.Geral.Fields[3].asString <> ES1) then
     begin
       application.messagebox('Parâmetro de Ent/Saída do CFOP no item difere do parâmetro utilizado no CFOP do faturamento.','Aviso', mb_ok + mb_iconerror);
       Abort;
     end
     else
     begin
       //ESTADUAL
       if dmVendas2.GERAL.Fields[1].Value = 'E' then
       begin
         //REVENDA
         if VendasCONS_REV.VALUE = 'R' then
         begin
           if dmVendas2.GERAL.Fields[2].Value > 0 then
           begin
             if ((Vendas_ItensCTE.VALUE <> 5) AND ( Vendas_ItensCTE.VALUE <> 3 )) then
               Vendas_ItensALIQUOTA_EST.Value := dmVendas2.GERAL.Fields[2].Value
             else
               Vendas_ItensALIQUOTA_EST.Value := 0 ;

             Vendas_ItensALIQUOTA_INT.Value := 0 ;
           end
           else
           begin
             Vendas_ItensALIQUOTA_EST.Value := 0;
             Vendas_ItensALIQUOTA_INT.Value := 0;
           end;
         end
         else
         begin
           if dmVendas2.GERAL.Fields[0].Value > 0 then
           begin
             if ((Vendas_ItensCTE.VALUE <> 5) AND (Vendas_ItensCTE.VALUE <> 3)) then
               Vendas_ItensALIQUOTA_EST.Value := dmVendas2.GERAL.Fields[0].Value
             else
                Vendas_ItensALIQUOTA_INT.Value := 0 ;
           end
           else
           begin
             Vendas_ItensALIQUOTA_EST.Value := 0;
             Vendas_ItensALIQUOTA_INT.Value := 0;
           end;
         end
       end
       else
       begin
         //REVENDA
         if VendasCONS_REV.VALUE = 'R' then
         begin
           If dmVendas2.GERAL.Fields[0].Value > 0 then
           begin
             if ((Vendas_ItensCTE.VALUE <> 5) AND ( Vendas_ItensCTE.VALUE <> 3)) then
               Vendas_ItensALIQUOTA_INT.Value := dmVendas2.GERAL.Fields[2].Value
             else
               Vendas_ItensALIQUOTA_INT.Value := 0 ;

             Vendas_ItensALIQUOTA_EST.Value := 0 ;
           end
           else
           begin
             Vendas_ItensALIQUOTA_EST.Value := 0;
             Vendas_ItensALIQUOTA_INT.Value := 0;
           end;
         end
         else
         begin
           if dmVendas2.GERAL.Fields[0].Value > 0 then
           begin
             if ((Vendas_ItensCTE.VALUE <> 5) AND ( Vendas_ItensCTE.VALUE <> 3)) then
               Vendas_ItensALIQUOTA_INT.Value := dmVendas2.GERAL.Fields[0].Value
             else
               Vendas_ItensALIQUOTA_INT.Value := dmVendas2.GERAL.Fields[0].Value ;

             Vendas_ItensALIQUOTA_EST.Value := 0 ;
           end
           else
           begin
             Vendas_ItensALIQUOTA_EST.Value := 0;
             Vendas_ItensALIQUOTA_INT.Value := 0;
           end;
         end;
       end;
     end;
end;

procedure TFrmVendas.Vendas_ItensBeforePost(DataSet: TDataSet);
var
 resto : real;
begin
  if (FrmVendas <> nil) or (FrmVendasPdv <> nil) then
      if not dmapp.VerificaDescontoItem(Vendas_ItensPRODUTO.asString,VendasPESSOA_FJ.Value,Vendas_ItensPRC_UNITARIO.AsFloat,VendasVENDEDOR.asInteger) then
      begin
        if not PedirSenha('Desconto Acima do ', 'Máximo Permitido!','') THEN
        begin
          abort;
          exit;
        end;
      end;

  if (dmVendas2.Valida_ProdutoVALIDA_MULT_QTDE_MIN.value = 'S') then
  begin
    if (dmVendas2.Valida_ProdutoQNTDE_MINIMA_VENDA.value > 0) then
    begin
      resto := (Vendas_ItensQUANTIDADE.value/dmVendas2.Valida_ProdutoQNTDE_MINIMA_VENDA.value);
      resto := resto - trunc(resto);
      if (resto <> 0) then
      begin
        Application.MessageBox(Pchar('A quantidade vendida deverá ser no mínimo de '+dmVendas2.Valida_ProdutoQNTDE_MINIMA_VENDA.AsString+' ou multipla deste valor'),'Aviso',mb_iconerror + mb_ok);
        abort;
        exit;
      end
    end
  end;

  if TRIM( Vendas_ItensGRADE.VALUE) = '' then
     Vendas_ItensGRADE.VALUE := '0';

  if TRIM( Vendas_ItensNUMERO.VALUE) = '' then
     Vendas_ItensNUMERO.VALUE := '0';

  IF((DMAPP.EST_USA_GRADE = 'S') and (FrmVendasItens <> nil )) THEN
  BEGIN
    IF Vendas_ItensGRADE.IsNull THEN
    BEGIN
      MESSAGEDLG('Digite uma Grade Válida!', mterror, [mbok],0);
      FrmVendasItens.EDGRADE.SetFocus;
      Abort;
    END
    ELSE
    BEGIN
      IF Vendas_ItensNUMERO.IsNull THEN
      BEGIN
        MESSAGEDLG('Digite um Número Válido!', mterror, [mbok],0);
        FrmVendasItens.EDNUMERO.SetFocus;
        Abort;
      END
      ELSE
      BEGIN
        IF(DMAPP.POSSUI_GRADE (Vendas_ItensPRODUTO.VALUE )) AND ((Vendas_ItensNUMERO.VALUE = '0' ) OR (Vendas_ItensGRADE.VALUE  = '0')) THEN
        BEGIN
          MESSAGEDLG('Digite uma Grade Válida!', mterror, [mbok],0);
          FrmVendasItens.EDGRADE.SetFocus;
          Abort;
        END
      END;
    END;
  END;
end;

procedure TFrmVendas.Vendas_ItensBeforeInsert(DataSet: TDataSet);
begin
  if DmaPP.Num_Max_Itens > 0 then
  begin
    if Vendas_Itens.RecordCount >= DmaPP.Num_Max_Itens then
    begin
       messagedlg ('Nº Máximo de Itens Alcançado:!', MtInformation, [MbOk],0);
       exit;
    end;
  end;
end;

procedure TFrmVendas.Vendas_ItensNUMEROValidate(Sender: TField);
begin
  IF (Sender.value <> '0') THEN
  BEGIN
    dmVendas2.GERAL.Close;
    dmVendas2.GERAL.Sql.text := ' Select * From EST_PRODUTOS_GRADES_NUMEROS                          '+
                      ' Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G and NUMERO = :N ';

    dmVendas2.GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj                   ;
    dmVendas2.GERAL.ParamByName ('P'   ).AsString  := Vendas_ItensPRODUTO.Value ;
    dmVendas2.GERAL.ParamByName ('G'   ).AsString  := Vendas_ItensGRADE.value   ;
    dmVendas2.GERAL.ParamByName ('N'   ).AsString  := Sender.Value;
    dmVendas2.GERAL.open;

    IF dmVendas2.GERAL.FIELDS[0].ISNULL THEN
    BEGIN
      MessageDlg('Número Inexistente nesta Grade, Verifique!',MtError,[MbOk],0);
      Abort;
    END;
  end;
end;

procedure TFrmVendas.Vendas_ItensGRADEValidate(Sender: TField);
begin
    If trim(sender.value) <> '0'
    then begin
      dmVendas2.GERAL.Close;
      dmVendas2.GERAL.Sql.Clear;

      dmVendas2.GERAL.Params.CreateParam ( FtString,  'CNPJ', PtInput ) ;
      dmVendas2.GERAL.Params.CreateParam ( FtString,  'P'   , PtInput ) ;
      dmVendas2.GERAL.Params.CreateParam ( FtString,  'G'   , PtInput ) ;

      dmVendas2.GERAL.Sql.Add (' Select * From EST_PRODUTOS_GRADES Where CNPJ = :CNPJ AND PRODUTO = :P AND GRADE = :G ');

      dmVendas2.GERAL.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
      dmVendas2.GERAL.ParamByName ('P'   ).AsString  := Vendas_ItensPRODUTO.Value ;
      dmVendas2.GERAL.ParamByName ('G'   ).AsString  := Sender.value ;

      dmVendas2.GERAL.open;

      IF dmVendas2.GERAL.FIELDS[0].ISNULL
      THEN BEGIN
           MessageDlg('Grade não Cadastrada, Verifique!',MtError,[MbOk],0);
           Abort;
      END;
    end;
end;

procedure TFrmVendas.VendasPESSOA_FJValidate(Sender: TField);
Var
   Clas: Integer;
   NomeClas, Dig_Senha, complemento: String;
   SOMA_CHEQUES: Real ;
begin
  if (((not(Vendas.State in [ DsInsert, DsEdit] )) or ( VendasPessoa_Fj.IsNull)) and (VendasORCAMENTO.IsNull)) then
    exit;

  if (not(Vendas.State in [ DsInsert, DsEdit])) then
    Vendas.edit;
  If (VendasPessoa_Fj.Value = 0) then
  Begin
    if(FrmVendas <> nil ) or (FrmVendasPdv <> nil) then
    begin
      FrmVendas.LocCli := True ;
      Exit ;
    end;
  end;

    if (DmApp.CLIAVISTA = VendasPessoa_Fj.Value) Then
    begin
      if DMApp.IMP_VENDA_NOMINAL = 'S' then
      begin
        Application.CreateForm(TFrmEntraDadosConsumidor, FrmEntraDadosConsumidor);
        if FrmEntraDadosConsumidor.showmodal = mrok then
        begin
          if trim(FrmEntraDadosConsumidor.EdNome.text) = '' then
          begin
            VendasNOME.Value := 'CONSUMIDOR' ;
            VendasNOME_CONSUMIDOR.Value := 'CONSUMIDOR' ;
          end
          else
          begin
            VendasNOME.Value := copy(FrmEntraDadosConsumidor.EdNome.text,1,50) ;
            VendasNOME_CONSUMIDOR.Value := copy(FrmEntraDadosConsumidor.EdNome.text,1,50);
          end;

          if FrmEntraDadosConsumidor.EdCnpj.Text <> '  .   .   /    -  '  then
          begin
            VendasDOCUMENTOS_CONSUMIDOR.Value := copy(FrmEntraDadosConsumidor.EdCnpj.Text,1,20);
          end;

          If FrmEntraDadosConsumidor.EdCpf.Text <> '   .   .   -  ' then
          begin
            VendasDOCUMENTOS_CONSUMIDOR.Value := FrmEntraDadosConsumidor.EdCpf.Text;
          end;

          VendasENDERECO_CONSUMIDOR.Value :=  copy(FrmEntraDadosConsumidor.EdEndereco.Text,1,30) ;

          VendasCIDADE_CONSUMIDOR.Value :=  copy(FrmEntraDadosConsumidor.EdCidade.Text,1,50) ;
        end;

        FrmManutencaoCobranca.free ;
        FrmManutencaoCobranca := Nil ;
      end
      else
      begin
        if( frmVendas <> nil) or (frmvendasPdv <> nil) then
          VendasNOME_CONSUMIDOR.Value := Uppercase(InputBox ('Nome do Consumidor', 'Nome',''));

        if trim(VendasNOME_CONSUMIDOR.Value) = '' then
        begin
          VendasNOME.Value := 'CONSUMIDOR' ;
        end
        else
        begin
          VendasNOME.Value := VendasNOME_CONSUMIDOR.Value ;
        end;

        VendasUF.Value  := DmApp.UF ;

      end;

      Bloqueado := 'S' ;
      exit ;
    end
    else
    begin
      VendasNOME_CONSUMIDOR.Clear ;
      Bloqueado := 'N' ;
    end;

  dmVendas2.Valida_Cliente.Close ;
   dmVendas2.Valida_Cliente.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
  dmVendas2.Valida_Cliente.ParamByName ('CODIGO').AsInteger := VendasPessoa_Fj.Value ;
 dmVendas2.Valida_Cliente.Open ;

  if dmVendas2.Valida_ClientePESSOA_FJ.isNull then
  begin
    showmessage ('Cliente Inexistente!');
    Abort;
  end;

  if dmVendas2.Valida_ClienteBLOQUEADO.value = 'S' then
  begin
    Showmessage ('Cliente Desativado!');
    Abort;
  end;

  If dmVendas2.Valida_ClienteCOD_VEND.asInteger > 0 then
     VendasVENDEDOR.Value    := dmVendas2.Valida_ClienteCOD_VEND.Value ;

  if dmVendas2.Valida_ClienteCOD_FPAGTO.asInteger > 0 then
  begin
    dmVendas2.Valida_Forma.Close ;
    dmVendas2.Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
    dmVendas2.Valida_Forma.ParamByName ('CODIGO').AsInteger := dmVendas2.Valida_ClienteCOD_FPAGTO.asInteger;
    dmVendas2.Valida_Forma.Open ;

    if not dmVendas2.Valida_FormaCODIGO.isNull then
    begin
      VendasFORMA_PGTO.Value  := dmVendas2.Valida_ClienteCOD_FPAGTO.Value;
      if (DmVendas.SelFormaPgtoDESCONTO.Value > 0) then
        VendasDESC_ACRES.Value := -1 * ((VendasTOTAL.VALUE * DmVendas.SelFormaPgtoDESCONTO.VALUE)/100)
      else
        VendasDESC_ACRES.Value := 0 ;

      if (DmVendas.SelFormaPgtoACRESCIMO.Value > 0 ) then
        VendasDESC_ACRES.Value := VendasDESC_ACRES.Value + ((VendasTOTAL.VALUE * DmVendas.SelFormaPgtoACRESCIMO.value)/100);
    end

  end;


  If Not dmVendas2.Valida_ClienteCONS_REV.isnull then
    VendasCONS_REV.value := dmVendas2.Valida_ClienteCONS_REV.value
  else
    VendasCONS_REV.value := 'C' ;

  If Not dmVendas2.Valida_ClienteREQUISICAO.isNull then
    Ven_Requisicao  := dmVendas2.Valida_ClienteREQUISICAO.Value
  else
    Ven_Requisicao  := 'N' ;

  If Not dmVendas2.Valida_ClienteDIA_PREF_FAT.isNull then
  Begin
    Ven_Dia_Pref_Fat  := dmVendas2.Valida_ClienteDIA_PREF_FAT.Value ;
  end
  else
  begin
    Ven_Dia_Pref_Fat  := 0 ;
  end;

  If Not dmVendas2.Valida_ClienteLIMITE_TEMPO.isNull then
  Begin
    Ven_Limite_Tempo  := dmVendas2.Valida_ClienteLIMITE_TEMPO.Value ;
  end
  else
  begin
    Ven_Limite_Tempo  := 0 ;
  end;

  If Not dmVendas2.Valida_ClienteLIMITE_CREDITO.isNull then
  Begin
    Ven_Limite_Credito  := dmVendas2.Valida_ClienteLIMITE_CREDITO.Value ;
  end
  else
  begin
    ven_Limite_Credito  := 0 ;
  end;

  if Not dmVendas2.Valida_ClienteCLASSIF.isNull then
  Begin
    Classificacao  := dmVendas2.Valida_ClienteCLASSIF.Value ;
  end
  else
  begin
    Classificacao  := 'B' ;
  end;

  if Not dmVendas2.Valida_ClienteBLOQUEADO.isNull then
  begin
    Bloqueado  := dmVendas2.Valida_ClienteBLOQUEADO.Value ;
  end
  else
  begin
    Bloqueado  := 'N' ;
  end;

  if Not dmVendas2.Valida_ClienteUF.isNull then
  begin
    VendasUF.Value  := dmVendas2.Valida_ClienteUF.Value ;
  end
  else
  begin
    VendasUF.Value  := DmApp.UF ;
  end;
  if(FrmVendas <> nil ) or (FrmVendasPdv <> nil) then
    If Not dmVendas2.Valida_ClienteOBS.isNull then
    Begin
      Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
      FrmMensagemFaturamento.Showmodal ;
      FrmMensagemFaturamento.Free ;
      FrmMensagemFaturamento  := Nil;
    end
    else
    begin
      If Not dmVendas2.Valida_ClienteOBS2.isNull then
      begin
        Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
        FrmMensagemFaturamento.dxDBMemo1.DataField := 'OBS2' ;
        FrmMensagemFaturamento.Showmodal ;
        FrmMensagemFaturamento.Free ;
        FrmMensagemFaturamento  := Nil;
      end;
    end;
  if(FrmVendas <> nil ) or (FrmVendasPdv <> nil) then
    if Not dmVendas2.Valida_ClienteCLASSIFICACAO.isNull then
    begin
      Clas := dmVendas2.Valida_ClienteCLASSIFICACAO.Value ;

      //Confere se a Classificacao Pede Senha
      dmVendas2.GERAL.Close ;
      dmVendas2.GERAL.Sql.text := ' Select Nome, Dig_Senha from Glo_Classificacao Where Codigo = :C and CNPJ = :E ';
      dmVendas2.GERAL.ParamByName ('E').AsString  := DmApp.Cnpj   ;
      dmVendas2.GERAL.ParamByName ('C').AsInteger := Clas         ;
      dmVendas2.GERAL.Open ;

      If Not dmVendas2.GERAL.Fields[0].isNull then
        NomeClas := dmVendas2.GERAL.Fields[0].Value
      else
        NomeClas := 'Não Informada';

      if Not dmVendas2.GERAL.Fields[1].isNull then
        Dig_Senha := dmVendas2.GERAL.Fields[1].Value
      else
        Dig_Senha := 'N';

      Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);
      FrmMensagemClassificacao.MEMO.Lines.Add (NomeClas);

      if Dig_Senha = 'S' Then
      begin
        FrmMensagemClassificacao.EdSenha.Visible := true ;
        FrmMensagemClassificacao.Label6.Visible  := true ;
        //Se o Nível ou a Classificacao exigir senha e não foi digitada
        if FrmMensagemClassificacao.Showmodal = MrCancel then
        Begin
          MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
          Sender.Clear ;
          Abort ;
          end;
        end
        else
        begin
          FrmMensagemClassificacao.EdSenha.Visible := false ;
          FrmMensagemClassificacao.Label6.Visible  := false ;
          FrmMensagemClassificacao.Showmodal ;
        end;

        FrmMensagemClassificacao.Free ;
        FrmMensagemClassificacao := Nil;
    end;

     //VALIDA CPF
    if DMAPP.BLQ_VND_SEM_CPF = 'S' then
    begin
      if DMAPP.VERIFICACPF (VendasPESSOA_FJ.VALUE) = 'N' then
      begin
        MessageDlg('Cadastro Incompleto, Verifique!', mtError, [mbOK], 0);
        Sender.Clear ;
        Abort ;
      end;
    end;

    if not dmVendas2.Valida_ClienteNOME.isNull then
      VendasNOME.Value := dmVendas2.Valida_ClienteNOME.Value;

    with dmVendas do
    begin
      SelNatureza.Close ;
      SelNatureza.Sql.text := ' SELECT CNPJ, CODIGO, NOME, INTERESTADUAL FROM EST_NATUREZA WHERE CNPJ = :CNPJ and ATIVA = ''S'''+
                              ' AND INTERESTADUAL = :IE ORDER BY NOME ';
      SelNatureza.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
      //Seta o Estado da Pessoa
      UfPessoa := VendasUF.Value ;

      If dmvendas.SelPessoasFJUF.Value = DmApp.UF then
        SelNatureza.ParamByName ('IE').AsString  := 'E'
      else
        SelNatureza.ParamByName ('IE').AsString  := 'I';

      SelNatureza.Open ;
    end;

    //Seleciona as Naturezas Estaduais ou Interestaduais
    dmVendas2.Valida_Cliente.Close ;
    IF FRMVENDAS <> NIL THEN
        With FrmVendas do
        begin
          if Classificacao = 'B' then
          begin
            IMG1.VISIBLE := FALSE ;
            IMG2.VISIBLE := FALSE ;
            IMG3.VISIBLE := FALSE ;
          end
          else
          begin
            if Classificacao = 'M' then
            begin
              IMG1.VISIBLE := FALSE ;
              IMG2.VISIBLE := TRUE  ;
              IMG3.VISIBLE := FALSE ;
            end
            else
            begin
              IMG1.VISIBLE := TRUE  ;
              IMG2.VISIBLE := FALSE ;
              IMG3.VISIBLE := FALSE ;
            end;
          end;
        end;
    //Seleciona as Propriedades do cliente
    IF DmApp.UTIL_PROPRIEDADE = 'S' then
      dmvendas.Propriedade (DmApp.Cnpj,VendasPessoa_Fj.Value );

    SOMA_CHEQUES := DmApp.Soma_Cheques_Devolvidos (Sender.value) ;
    if (frmvendas <> nil) or (frmvendaspdv <> nil) then
    If (((Ven_Limite_Credito > 0 ) or ( Ven_Limite_Tempo > 0 ) or (soma_cheques > 0)) and (dmApp.EXIBE_PENDENCIA = 'S')) then
    begin
      //Verifica os Limites de Crédito ( Tempo e Valor )
      If Not DmApp.Verifica_Limite(DmApp.Cnpj, VendasPessoa_Fj.Value, VendasNome.Value, Ven_Limite_Tempo, Ven_Limite_Credito, VendasDATA.Value, 0)then
      begin
        Application.messagebox('Senha não informada corretamente','Aviso',mb_iconerror+mb_ok);
        if frmvendas <> nil then
            FrmVendas.EdPessoa.SetFocus ;
        Sender.Clear ;
        Abort ;
      end
    end;

end;

procedure TFrmVendas.VendasVENDEDORValidate(Sender: TField);
begin
  If ((Sender.Value = 0) or (Sender.Value = null)) then
  Begin
      if FrmVEndas <> nil then
          FrmVendas.LocVen := True ;
    Exit ;
  end;

     dmVendas2.GERAL.Close ;
     dmVendas2.GERAL.Sql.Clear ;

     dmVendas2.GERAL.Params.CreateParam ( FtString , 'E', PtInput );
     dmVendas2.GERAL.Params.CreateParam ( FtInteger, 'C', PtInput );

     dmVendas2.GERAL.Sql.Add (' Select Codigo, Senha, Nome From Fat_Vendedor Where Codigo = :C and CNPJ = :E ');

     dmVendas2.GERAL.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     dmVendas2.GERAL.ParamByName ('C').AsInteger := Sender.Value ;

     dmVendas2.GERAL.Prepare ;

     dmVendas2.GERAL.Open ;

     If dmVendas2.GERAL.Fields[0].isNull
     then Begin
          Showmessage ('Vendedor Inexistente!');
          Abort;
     end
     else begin
          VendasNOME_VENDEDOR.Value := dmVendas2.GERAL.Fields[2].value ;

          If DmApp.Dig_Sen_Vend = 'S'
          then begin
               Application.CreateForm(TFrmEntraSenha, FrmEntraSenha) ;

               FrmEntraSenha.LblTitulo.Caption := 'Senha de ' + dmVendas2.GERAL.Fields[2].Value  ;

               If Not dmVendas2.GERAL.Fields[1].IsNull
               then begin
                    FrmEntraSenha.Senha := dmVendas2.GERAL.Fields[1].Value ;

                    If FrmEntraSenha.Showmodal <> MrOk
                    then begin
                         Abort;
                    end ;

                    FrmEntraSenha.Free ;
                    FrmEntraSenha := Nil ;
               end;
          end;
     end;
     dmVendas2.GERAL.Close ;
end;

procedure TFrmVendas.VendasFORMA_PGTOValidate(Sender: TField);
var
  descto_icms : variant;
begin
     If Sender.IsNull Then
       Exit ;

     if ( Sender.Value = 0 ) then
     begin
       FrmVendas.LocForma := True ;
       Exit ;
     end;

     dmVendas2.Valida_Forma.Close ;
     dmVendas2.Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
     dmVendas2.Valida_Forma.ParamByName ('CODIGO').AsInteger := Sender.Value ;
     dmVendas2.Valida_Forma.Open ;

     if dmVendas2.Valida_FormaCODIGO.isNull then
     Begin
       MessageDlg('Forma de Pagamento Inexistente!', mtError, [mbOK], 0);
       Abort;
     end
     else
       VendasNOME_FORMA.Value := dmVendas2.Valida_FormaNOME.Value ;

     //Apaga Parcelas
     DmApp.Apaga_Parcelas_Venda (DmApp.Cnpj,VendasCODIGO.Value);

     Vendas_Parc.Close ;
     Vendas_Parc.Open  ;

     //Numero de Parcelas = 2 ; a vista = 3
     if (( dmVendas2.Valida_FormaNPARCELAS.Value > 0 ) AND ( dmVendas2.Valida_FormaAVISTA.Value <> 'S' )) then
     begin
       //CONFERE SE O CLIENTE ESTA HABILITADO PARA VENDAS A PRAZO
       if BLOQUEADO = 'S'then
       begin
         MessageDlg('Este Cliente Está Bloqueado Para Vendas a Prazo, Verifique!', mtError, [mbOK], 0);
         ABORT ;
       end
       else
         VENDAPARCELADA := TRUE ;
     end;


     if VendasTipo_Venda.text = '' then
       VendasTIPO_VENDA.Value := 'Ven';

     if dmVendas2.Valida_FormaAVISTA.Value = 'S'  then
     begin
       CmbContaCorrente.Enabled     := false ;
       EDENTRADA.Enabled    := false ;
       cmbTipoDocto.Enabled := false ;

       VendasLOCAL_COBRANCA.Clear ;
       VendasENTRADA.Clear        ;

       VendasTIPO_DOCTO.Clear     ;
       GRIDFATURAMENTO.Enabled := FALSE ;
     end
     else
     begin
       CmbContaCorrente.Enabled     := dmApp.VerificaTipoDoctoBoleto(VendasTIPO_DOCTO.AsString);
       EDENTRADA.Enabled    := true ;
       cmbTipoDocto.Enabled := true ;

       GRIDFATURAMENTO.Enabled := TRUE ;

       if (dmVendas2.Valida_FormaCOMENTRADA.Value = 'N') then
       begin
         EDENTRADA.Enabled    := false ;
         VendasENTRADA.VALUE := 0  ;
       end
       else
         EDENTRADA.Enabled    := TRUE ;
     end;

     Exit;
     //VALIDA CLIENTE
     dmVendas2.Valida_Cliente.Close ;
     dmVendas2.Valida_Cliente.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
     dmVendas2.Valida_Cliente.ParamByName ('CODIGO').AsInteger := VendasPessoa_Fj.Value ;
     dmVendas2.Valida_Cliente.Open ;

     if (( NOT dmVendas2.Valida_ClienteALIQUOTA_DESCONTO.isNull ) AND ( dmVendas2.Valida_ClienteALIQUOTA_DESCONTO.VALUE > 0 )) then
        VendasDESC_ACRES.Value := -1 * ((VendasTOTAL.VALUE * dmVendas2.Valida_ClienteALIQUOTA_DESCONTO.VALUE)/100)
     else
     begin
       if (dmVendas2.Valida_FormaDESCONTO.Value > 0 ) then
         VendasDESC_ACRES.Value := -1 * ((VendasTOTAL.VALUE * dmVendas2.Valida_FormaDESCONTO.VALUE)/100)
       else
         VendasDESC_ACRES.Value := 0 ;
     end;

     if (dmVendas2.Valida_FormaACRESCIMO.Value > 0) then
        VendasDESC_ACRES.Value := VendasDESC_ACRES.Value + ((VendasTOTAL.VALUE * dmVendas2.Valida_FormaACRESCIMO.value)/100);
end;

procedure TFrmVendas.VendasNATUREZAValidate(Sender: TField);
var
  Dev, Rem : integer;
begin
     If Sender.IsNull Then
         Exit ;

     If ( Sender.Value = 0 ) then
     Begin
       frmVendas.LocNat := True ;
       Exit ;
     end;

     dmVendas2.GERAL.Close ;
     dmVendas2.GERAL.Sql.text := ' Select Codigo, ES, NOME, InterEstadual, coalesce(remessa,''N'') remessa, coalesce(devolucao,''N'') devolucao, gera_financeiro '+
                       ' From Est_Natureza Where Codigo ='+IntToStr(Sender.Value)+
                       ' and CNPJ = '+QuotedStr(DmApp.Cnpj)+' and ATIVA = ''S''';
     dmVendas2.GERAL.Open ;
     if dmVendas2.GERAL.Fields[0].isNull then
     begin
       MessageDlg('Natureza Inexistente ou Desativada!', mtError, [mbOK], 0);
       Abort;
     end
     else
     begin

       if (dmVendas2.Geral.FieldByName('gera_financeiro').asString <> 'N') then
         VendasGERA_FINANCEIRO.asString := 'S'
       else
         VendasGERA_FINANCEIRO.asString := 'N';

       VendasNOME_NATUREZA.Value := dmVendas2.GERAL.Fields[2].Value ;
       VendasES.asString := dmVendas2.GERAL.FieldByName('es').asString;
       VendasDevolucao.value := dmVendas2.GERAL.FieldByName('devolucao').value;
       VendasRemessa.Value := dmVendas2.GERAL.FieldByName('remessa').Value;
     end;

     //Teremos de relacionar a venda agrupadora em caso de remessa ou devolução
     if (VendasRemessa.Value = 'S') then
       VendasID_AGRUPADOR.asVariant := dmVendas2.VerificaNatureza(VendasPessoa_FJ.value,VendasNatureza.value,VendasES.value,'R')
     else if (VendasDevolucao.Value = 'S') then
       VendasID_AGRUPADOR.asVariant := dmVendas2.VerificaNatureza(VendasPessoa_FJ.value,VendasNatureza.value,VendasES.value,'D')
     else
       VendasID_AGRUPADOR.asVariant := null;


     If trim(VendasUF.Value) <> '' then
     begin
       If (dmVendas2.Geral.FieldByName('InterEstadual').Value = 'I') and (VendasUF.Value = DmApp.Uf) then
       begin
         application.messagebox('O CFOP de Operação deve ser estadual.','Aviso',mb_iconinformation + mb_ok);
         Abort;
       end;

       If (dmVendas2.Geral.FieldByName('InterEstadual').Value = 'E') and (VendasUF.Value <> DmApp.Uf) then
       begin
         application.messagebox('O CFOP de Operação deve ser interestadual.','Aviso',mb_iconinformation + mb_ok);
         Abort;
       end;
     end;
end;

procedure TFrmVendas.VendasPROPRIEDADEValidate(Sender: TField);
begin
     If Sender.IsNull  Then
         Exit ;

     If ( Sender.Value = 0 ) then
       Exit ;

     dmVendas2.GERAL.Close ;
     dmVendas2.GERAL.Sql.text := ' Select Propriedade, Uf, Nome From Glo_Propriedades Where Propriedade = :C and CNPJ = :E and Pessoa_Fj = :P ';
     dmVendas2.GERAL.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     dmVendas2.GERAL.ParamByName ('C').AsInteger := Sender.Value ;
     dmVendas2.GERAL.ParamByName ('P').AsInteger := VendasPESSOA_FJ.Value ;
     dmVendas2.GERAL.Open ;

     If dmVendas2.GERAL.Fields[0].isNull then
     begin
        MessageDlg('Propriedade Inexistente!', mtError, [mbOK], 0);
        exit;
     end
     else
     begin
       if dmVendas2.GERAL.Fields[2].isNull then
          VendasNOME_PROPRIEDADE.Value := dmVendas2.GERAL.Fields[0].Value
       else
          VendasNOME_PROPRIEDADE.Value := dmVendas2.GERAL.Fields[2].Value ;

       if not dmVendas2.GERAL.Fields[1].IsNull then
          VendasUF.value := dmVendas2.GERAL.Fields[1].Value;
     end;

     //-----------------------------------Listando somente OS CFOPs adequados----------------------------------//
     with dmVendas do
     begin
       SelNatureza.Close ;
       SelNatureza.Sql.text := ' SELECT CNPJ, CODIGO, NOME, INTERESTADUAL FROM EST_NATUREZA where CNPJ = :CNPJ and ATIVA = ''S'' AND INTERESTADUAL = :IE ORDER BY NOME ';
       SelNatureza.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;

       If VendasUF.value = DmApp.UF  then
         SelNatureza.ParamByName ('IE').AsString  := 'E'
       else
         SelNatureza.ParamByName ('IE').AsString  := 'I';

       SelNatureza.Open ;
     end;
end;

procedure TFrmVendas.VendasDESC_ACRESValidate(Sender: TField);
begin
  VendasDinheiro.Value := VendasAVista.Value ;
end;

procedure TFrmVendas.VendasENTRADAValidate(Sender: TField);
begin
  VendasDinheiro.Value := VendasAVista.Value ;
end;

procedure TFrmVendas.VendasDINHEIROValidate(Sender: TField);
begin
   VendasCHEQUE.Value := Arredonda((VendasAVista.Value - Sender.Value),2) ;
end;

procedure TFrmVendas.VendasCHEQUEValidate(Sender: TField);
begin
  VendasCARTAO.Value := Arredonda((VendasAVista.Value - VendasDinheiro.Value - Sender.Value),2) ;
end;

procedure TFrmVendas.VendasCARTAOValidate(Sender: TField);
begin
  VendasTICKET.Value := Arredonda((VendasAVista.Value - VendasCHEQUE.Value - VendasDinheiro.Value - Sender.Value),2) ;
end;

procedure TFrmVendas.VendasTERCEIROValidate(Sender: TField);
begin
  If ( Sender.IsNull ) and ( Sender.Text = '' )
     Then
         Exit ;

     If ( Sender.Value = 0 )
     then Begin
          FrmVendas.LocTer := True ;
          Exit ;
     end;

     dmVendas2.GERAL.Close ;
     dmVendas2.GERAL.Sql.Clear ;
     dmVendas2.GERAL.Params.Clear ;

     dmVendas2.GERAL.Params.CreateParam ( FtString , 'E', PtInput );
     dmVendas2.GERAL.Params.CreateParam ( FtInteger, 'C', PtInput );

     dmVendas2.GERAL.Sql.Add (' Select * from Fat_Terceiros Where Codigo = :C and CNPJ = :E ');

     dmVendas2.GERAL.ParamByName ('E').AsString  := DmApp.Cnpj   ;
     dmVendas2.GERAL.ParamByName ('C').AsInteger := Sender.Value ;

     dmVendas2.GERAL.Prepare ;

     dmVendas2.GERAL.Open ;

     If dmVendas2.GERAL.Fields[0].isNull
     then Begin
          Showmessage ('Terceiro Inexistente!');
          Abort;
     end
     else
        VendasNOME_TERCEIRO.Value := dmVendas2.GERAL.Fields[2].Value ;
end;

procedure TFrmVendas.VendasTIPO_VENDAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
    If Sender.Value = 'Ven' Then
     Text := 'Venda';
  If Sender.Value = 'Con' Then
     Text := 'Condicional';
  If Sender.Value = 'EnF' Then
     Text := 'Entr. Futura';
end;

procedure TFrmVendas.VendasTIPO_VENDASetText(Sender: TField;
  const Text: String);
begin
   If Text = 'Venda'  Then
     Sender.Value := 'Ven';

  If Text = 'Condicional' Then
     Sender.Value := 'Condicional';

  If Text = 'Entr. Futura' Then
     Sender.Value := 'EnF';
end;

procedure TFrmVendas.VendasPGTO_FRETESetText(Sender: TField;
  const Text: String);
begin
   if (Text = '1 - CIF  (Emitente)') then
    Sender.value := '1'
  else if (Text = '2 - FOB(Destinatário)') then
    Sender.value := '2';  
end;

procedure TFrmVendas.VendasPGTO_FRETEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (Sender.value = '1') then
    Text := '1 - CIF  (Emitente)'
  else if (Sender.value = '2') then
    Text := '2 - FOB(Destinatário)';
end;

procedure TFrmVendas.Comissao_ItemNewRecord(DataSet: TDataSet);
begin
  Comissao_ItemCNPJ.value := Vendas_ItensCNPJ.value;
  Comissao_ItemCOD_ITEM.value := Vendas_ItensCODIGO.value;
  Comissao_ItemPRODUTO.value := Vendas_ItensPRODUTO.value;
  Comissao_ItemSEQUENCIA.value := Vendas_ItensSEQUENCIA.value;
end;

procedure TFrmVendas.Comissao_ItemBeforePost(DataSet: TDataSet);
begin
  if ((Comissao_ItemPERCENTUAL.Value < 0) or (Comissao_ItemPERCENTUAL.value > 100)) then
  begin
    Application.MessageBox('O percentual de comissão definido é inválido','Aviso',mb_ok+mb_iconerror);
    Abort;
    exit;
  end;
end;

procedure TFrmVendas.GridItensEnter(Sender: TObject);
begin
  If DataSource.state in [ dsinsert, dsedit ] then
  begin
    ActPost.Execute;
    ExibeFormItens;
    Calcular_Itens;
  end;
end;

procedure TFrmVendas.GridItensTVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If ( DataSource.State in [ dsinsert, dsedit ] ) then
       DataSource.DataSet.Post ;


     If DataSource.DataSet.FieldByName('CODIGO').Value > 0
     then begin
          If Key = VK_RETURN Then
             Actalterar.Execute;
     end
     else begin
          if (key=VK_RETURN) OR (Key=VK_DOWN) Then
          Begin
               Perform(WM_NEXTDLGCTL, 0, 0);
               if Self.ActiveControl = pc Then
               Perform(WM_NEXTDLGCTL, 0, 0);
          End;

          if (key=VK_UP) then
          Perform(WM_NEXTDLGCTL, 1, 0);
     end;
end;

procedure TFrmVendas.ActConfCamposExecute(Sender: TObject);
begin
  {
    Apenas para validar se será permitido ao usuário editar a exibição dos itens
    da grid ou qualquer outra função de visualização
  }
end;

procedure TFrmVendas.ExibeFormItens;
begin
  try
    FrmVendasItens := TFrmVendasItens.Create(Self);
    FrmVendasItens.ShowModal;
    FrmVendasItens.Free;
    FrmVendasItens := Nil;
  except
    {suprimindo um erro inesplicavel que ocorre ao fechar o form}
  end;
end;

procedure TFrmVendas.Vendas_ItensBeforeOpen(DataSet: TDataSet);
begin
  Vendas_Itens.Parambyname('cnpj').value := dmApp.cnpj;
  Vendas_Itens.Parambyname('codigo').value := VendasCODIGO.Value;
end;

procedure TFrmVendas.Vendas_ParcAfterPost(DataSet: TDataSet);
begin
  Calcular_Parcelas;
end;

procedure TFrmVendas.Vendas_ParcBeforePost(DataSet: TDataSet);
begin
   //Validando dt. de vencto inferior a dt. corrente
  if (Vendas_ParcVENCTO.value < Date ) then
  begin
    if Application.MessageBox(Pchar('Parcela com dt. de vencto inválida'+#13+'Confirmar parcela?'),'Aviso',mb_yesno+mb_iconquestion) = id_no then
      abort;
  end;
end;

procedure TFrmVendas.Vendas_ParcNewRecord(DataSet: TDataSet);
begin
  Vendas_ParcVALOR.Value := 0;
  Vendas_ParcCNPJ.Value   := DsVendas.DataSet.FieldByName('CNPJ').AsString    ;
  Vendas_ParcCODIGO.Value := DsVendas.DataSet.FieldByName('CODIGO').AsInteger ;
end;

procedure TFrmVendas.Vendas_ParcVALORValidate(Sender: TField);
begin
 dmapp.Extenso.Valor := Sender.value;
 Vendas_ParcVALOR_EXTENSO.value := dmapp.Extenso.texto;
end;

procedure TFrmVendas.VendasTIPO_DOCTOValidate(Sender: TField);
begin
  cmbContaCorrente.Enabled := dmApp.VerificaTipoDoctoBoleto(VendasTIPO_DOCTO.AsString);
end;

procedure TFrmVendas.Vendas_ItensDESCONTOValidate(Sender: TField);
begin
  //O sistema até 12-04-15 permitia desconto no total da nf, mas a nfe valida o desconto por item,
  //por isso foi acrescentado este procedimento para o sistema fazer o cálculo automatico do desconto -- Sanniel
//  Vendas_ItensPRC_UNITARIO.Value := Vendas_ItensPRC_UNITARIO.Value - Vendas_ItensDESCONTO.Value;
end;

procedure TFrmVendas.Vendas_ItensAfterPost(DataSet: TDataSet);
begin
  Calcular_Itens;
end;

procedure TFrmVendas.btnTransportadoraClick(Sender: TObject);
begin
  frmCadTransportadoras := TfrmCadTransportadoras.Create(Self);
  frmCadTransportadoras.ShowMODAL ;

  DmVendas.SelTransportadora.Close;
  DmVendas.SelTransportadora.Open;

  VendasTRANSPORTADORA.Value := frmCadTransportadoras.Codigo;

  frmCadTransportadoras.Free;
  frmCadTransportadoras := nil;
end;

procedure TFrmVendas.btnTransportadoraPropertiesChange(Sender: TObject);
begin
  FrmCadTransportadoras := TFrmCadTransportadoras.Create(Self);
  FrmCadTransportadoras.ShowModal;
  VendasTRANSPORTADORA.value := FrmCadTransportadoras.Codigo;
  FrmCadTransportadoras.Free;
  FrmCadTransportadoras := nil;
end;

end.





