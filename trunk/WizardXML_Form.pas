unit WizardXML_Form;

interface

uses
  Windows, Inifiles, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxContainer, cxEdit, cxGroupBox, cxRadioGroup, cxPC,
  Menus, StdCtrls, cxButtons, cxTextEdit, cxLabel, ExtCtrls, ComCtrls,
  OleCtrls, SHDocVw, cxProgressBar, cxMemo, WinInet,ACBrUtil, pcnAuxiliar, pcnConversao, MSHtml,
  ACBrNFe, DB, IBCustomDataSet, dxmdaset, cxCheckBox, cxDBEdit, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, dxDBEdtr, dxCntner, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxCalc, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridCustomView,
  cxClasses, cxGridLevel, cxGrid, ACBrNFeDANFEClass, ACBrNFeDANFERave,
  cxGridCustomPopupMenu, cxGridPopupMenu, cxPropertiesStore, ActnList,
  IBQuery, cxDBLookupComboBox, cxSplitter, cxLookupEdit, cxDBLookupEdit;

type
  TfrmImportaNFe = class(TForm)
    pgcImportacao: TcxPageControl;
    tbs1: TcxTabSheet;
    tbs2: TcxTabSheet;
    OpenDialog: TOpenDialog;
    gRecuperaXML: TcxGroupBox;
    PageControl1: TcxPageControl;
    TabSheet1: TcxTabSheet;
    Memo2: TcxMemo;
    TabSheet2: TcxTabSheet;
    Panel1: TcxGroupBox;
    WBXML: TWebBrowser;
    WebBrowser1: TWebBrowser;
    cxGroupBox1: TcxGroupBox;
    ProgressBar1: TcxProgressBar;
    lblStatus: TcxLabel;
    Panel3: TcxGroupBox;
    btnPegarHTML: TcxButton;
    btnNovaConsulta: TcxButton;
    Panel2: TcxGroupBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    edtChaveNFe: TcxTextEdit;
    edtCaptcha: TcxTextEdit;
    Panel4: TcxGroupBox;
    Image1: TImage;
    Label3: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    gCaminho: TcxGroupBox;
    cxLabel1: TcxLabel;
    edtPathFile: TcxTextEdit;
    btnCaminho: TcxButton;
    rdTipoImportacao: TcxRadioGroup;
    cxGroupBox3: TcxGroupBox;
    btnAnterior: TcxButton;
    btnProximo: TcxButton;
    mtbItemNF: TdxMemData;
    mtbItemNFPRD_ITEM: TIntegerField;
    mtbItemNFPRD_COD_PRODUTO: TStringField;
    mtbItemNFPRD_PRODUTO: TStringField;
    mtbItemNFPRD_COD_EAN: TStringField;
    mtbItemNFPRD_COD_NCM: TStringField;
    mtbItemNFPRD_EXT_IPI: TStringField;
    mtbItemNFPRD_CFOP: TStringField;
    mtbItemNFPRD_UN_COMERCIAL: TStringField;
    mtbItemNFPRD_QTDE_COMERCIAL: TFloatField;
    mtbItemNFPRD_VLR_UN_COMERCIAL: TFloatField;
    mtbItemNFPRD_UND_TRIBUTADA: TStringField;
    mtbItemNFPRD_QTDE_TRIBUTADA: TFloatField;
    mtbItemNFPRD_VLR_UN_TRIBUTADA: TFloatField;
    mtbItemNFPRD_VLR_FRETE: TFloatField;
    mtbItemNFPRD_VLR_SEGURO: TFloatField;
    mtbItemNFPRD_VLR_OUTROS: TFloatField;
    mtbItemNFPRD_VLR_DESCONTO: TFloatField;
    mtbCabNF: TdxMemData;
    mtbCabNFEMIT_CPF_CNPJ: TStringField;
    mtbCabNFEMIT_RAZAO_SOCIAL: TStringField;
    mtbCabNFEMIT_FANTASIA: TStringField;
    mtbCabNFEMIT_IE: TStringField;
    mtbCabNFEMIT_IM: TStringField;
    mtbCabNFEMIT_LOGRADOURO: TStringField;
    mtbCabNFEMIT_NUMERO: TStringField;
    mtbCabNFEMIT_COMPLEMENTO: TStringField;
    mtbCabNFEMIT_BAIRRO: TStringField;
    mtbCabNFEMIT_COD_IBGE_CIDADE: TIntegerField;
    mtbCabNFEMIT_CIDADE: TStringField;
    mtbCabNFEMIT_CEP: TStringField;
    mtbCabNFEMIT_COD_PAIS: TIntegerField;
    mtbCabNFEMIT_PAIS: TStringField;
    mtbCabNFEMIT_FONE: TStringField;
    DataSource: TDataSource;
    cxGroupBox4: TcxGroupBox;
    DataSource1: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    mtbCabNFSERIE: TIntegerField;
    mtbCabNFNUM_NF: TIntegerField;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel6: TcxLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel7: TcxLabel;
    mtbCabNFDATA_ENTRADA: TDateField;
    cxGroupBox5: TcxGroupBox;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxLabel8: TcxLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    cxLabel10: TcxLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxLabel9: TcxLabel;
    cxLabel11: TcxLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxDBCalcEdit5: TcxDBCalcEdit;
    cxLabel12: TcxLabel;
    cxDBCalcEdit6: TcxDBCalcEdit;
    cxLabel13: TcxLabel;
    cxDBCalcEdit7: TcxDBCalcEdit;
    cxLabel14: TcxLabel;
    cxDBCalcEdit8: TcxDBCalcEdit;
    cxLabel15: TcxLabel;
    cxDBCalcEdit9: TcxDBCalcEdit;
    cxLabel16: TcxLabel;
    cxDBCalcEdit10: TcxDBCalcEdit;
    cxLabel17: TcxLabel;
    cxDBCalcEdit11: TcxDBCalcEdit;
    cxLabel18: TcxLabel;
    mtbCabNFBASE_ICMS_ST: TFloatField;
    mtbCabNFBASE_ICMS: TFloatField;
    mtbCabNFVLR_ICMS: TFloatField;
    mtbCabNFVLR_ICMS_ST: TFloatField;
    mtbCabNFVLR_TOTAL_PRODUTOS: TFloatField;
    mtbCabNFVLR_FRETE: TFloatField;
    mtbCabNFVLR_SEGURO: TFloatField;
    mtbCabNFVLR_DESCONTOS: TFloatField;
    mtbCabNFVLR_DESPESAS: TFloatField;
    mtbCabNFVLR_IPI: TFloatField;
    mtbCabNFVLR_TOTAL_NOTA: TFloatField;
    cxGroupBox6: TcxGroupBox;
    LVItens: TcxGridLevel;
    GridItens: TcxGrid;
    TVItens: TcxGridDBBandedTableView;
    DsItesn: TDataSource;
    TVItensRecId: TcxGridDBBandedColumn;
    TVItensPRD_ITEM: TcxGridDBBandedColumn;
    TVItensPRD_COD_PRODUTO: TcxGridDBBandedColumn;
    TVItensPRD_PRODUTO: TcxGridDBBandedColumn;
    TVItensPRD_COD_EAN: TcxGridDBBandedColumn;
    TVItensPRD_CFOP: TcxGridDBBandedColumn;
    TVItensPRD_UN_COMERCIAL: TcxGridDBBandedColumn;
    TVItensPRD_QTDE_COMERCIAL: TcxGridDBBandedColumn;
    TVItensPRD_VLR_UN_COMERCIAL: TcxGridDBBandedColumn;
    TVItensPRD_VLR_PRODUTO: TcxGridDBBandedColumn;
    TVItensPRD_VLR_FRETE: TcxGridDBBandedColumn;
    TVItensPRD_VLR_SEGURO: TcxGridDBBandedColumn;
    TVItensPRD_VLR_OUTROS: TcxGridDBBandedColumn;
    TVItensPRD_VLR_DESCONTO: TcxGridDBBandedColumn;
    mtbItemNFPRD_VLR_PRODUTO: TFloatField;
    mtbItemNFCST: TStringField;
    mtbItemNFBASE_ICMS: TFloatField;
    mtbItemNFVLR_ICMS: TFloatField;
    mtbItemNFALIQ_ICMS: TFloatField;
    mtbItemNFALIQ_IPI: TFloatField;
    mtbItemNFVLR_IPI: TFloatField;
    TVItensCST: TcxGridDBBandedColumn;
    TVItensBASE_ICMS: TcxGridDBBandedColumn;
    TVItensVLR_ICMS: TcxGridDBBandedColumn;
    TVItensALIQ_ICMS: TcxGridDBBandedColumn;
    TVItensALIQ_IPI: TcxGridDBBandedColumn;
    TVItensVLR_IPI: TcxGridDBBandedColumn;
    mtbCabNFDIC_COD_FORNECEDOR: TIntegerField;
    mtbItemNFDIC_COD_PRODUTO: TStringField;
    mtbItemNFDIC_CFOP: TIntegerField;
    mtbCabNFDATA_EMISSAO: TDateField;
    mtbCabNFCFOP: TStringField;
    mtbCabNFVLR_PIS: TFloatField;
    mtbCabNFVLR_COFINS: TFloatField;
    cxDBCalcEdit12: TcxDBCalcEdit;
    cxLabel19: TcxLabel;
    cxDBCalcEdit13: TcxDBCalcEdit;
    cxLabel20: TcxLabel;
    mtbItemNFBASE_ICMS_ST: TFloatField;
    mtbItemNFVLR_ICMS_ST: TFloatField;
    mtbItemNFALIQ_ICMS_ST: TFloatField;
    mtbItemNFBASE_IPI: TFloatField;
    mtbItemNFBASE_PIS: TFloatField;
    mtbItemNFVLR_PIS: TFloatField;
    mtbItemNFALIQ_PIS: TFloatField;
    mtbItemNFBASE_COFINS: TFloatField;
    mtbItemNFVLR_COFINS: TFloatField;
    mtbItemNFALIQ_COFINS: TFloatField;
    TVItensDIC_COD_PRODUTO: TcxGridDBBandedColumn;
    TVItensDIC_CFOP: TcxGridDBBandedColumn;
    TVItensBASE_ICMS_ST: TcxGridDBBandedColumn;
    TVItensVLR_ICMS_ST: TcxGridDBBandedColumn;
    TVItensALIQ_ICMS_ST: TcxGridDBBandedColumn;
    TVItensBASE_IPI: TcxGridDBBandedColumn;
    TVItensBASE_PIS: TcxGridDBBandedColumn;
    TVItensVLR_PIS: TcxGridDBBandedColumn;
    TVItensALIQ_PIS: TcxGridDBBandedColumn;
    TVItensBASE_COFINS: TcxGridDBBandedColumn;
    TVItensVLR_COFINS: TcxGridDBBandedColumn;
    TVItensALIQ_COFINS: TcxGridDBBandedColumn;
    btnPreview: TcxButton;
    StgfrmImportaNFe2: TcxPropertiesStore;
    cxGridPopupMenu: TcxGridPopupMenu;
    cxLabel21: TcxLabel;
    edtDICCFOP: TcxDBTextEdit;
    cxLabel22: TcxLabel;
    btnCFOP: TcxButton;
    mtbCabNFDIC_CFOP: TIntegerField;
    Actions: TActionList;
    ActFechar: TAction;
    actLookup: TAction;
    ActLocalizarNatureza: TAction;
    SelNatureza: TIBQuery;
    ActLocalizarFornecedor: TAction;
    SelNaturezaItens: TIBQuery;
    dsCFOPItens: TDataSource;
    mtbCabNFEMIT_UF: TStringField;
    SelNaturezaCNPJ: TIBStringField;
    SelNaturezaCODIGO: TIntegerField;
    SelNaturezaNOME: TIBStringField;
    SelNaturezaINTERESTADUAL: TIBStringField;
    SelNaturezaCFOP: TIntegerField;
    SelNaturezaCFOP_DESCRICAO: TIBStringField;
    SelNaturezaItensCNPJ: TIBStringField;
    SelNaturezaItensCODIGO: TIntegerField;
    SelNaturezaItensNOME: TIBStringField;
    SelNaturezaItensINTERESTADUAL: TIBStringField;
    SelNaturezaItensCFOP: TIntegerField;
    SelNaturezaItensCFOP_DESCRICAO: TIBStringField;
    ActLocalizaProdutos: TAction;
    mtbItemNFDIC_DESC_PRODUTO: TStringField;
    SelProdutos: TIBQuery;
    SelProdutosCODIGO: TIBStringField;
    SelProdutosNOME: TIBStringField;
    SelProdutosCODIGO_2: TIBStringField;
    SelProdutosCOD_GETIN: TIBStringField;
    SelProdutosSERIE: TIBStringField;
    dsProdutos: TDataSource;
    TVItensDIC_DESC_PRODUTO: TcxGridDBBandedColumn;
    mtbItemNFCAD_PRODUTO: TBooleanField;
    TVItensCAD_PRODUTO: TcxGridDBBandedColumn;
    ckCadFornecedor: TcxDBCheckBox;
    mtbItemNFFator: TFloatField;
    mtbItemNFQtdeConvertida: TFloatField;
    TVItensFator: TcxGridDBBandedColumn;
    TVItensQtdeConvertida: TcxGridDBBandedColumn;
    btnFornecedor: TcxButton;
    edtDICFORNECEDOR: TcxDBTextEdit;
    cxLabel23: TcxLabel;
    mtbItemNFDIC_FORNECEDOR: TStringField;
    cbFornecedor: TcxDBLookupComboBox;
    QryFornecedor: TIBQuery;
    QryFornecedorCNPJ: TIBStringField;
    QryFornecedorCODIGO: TIntegerField;
    QryFornecedorNOME_RAZAO: TIBStringField;
    QryFornecedorFANTASIA: TIBStringField;
    QryFornecedorATIVIDADE: TIntegerField;
    QryFornecedorENDERECO: TIntegerField;
    QryFornecedorNUMERO: TIBStringField;
    QryFornecedorCOMPLEMENTO: TIBStringField;
    QryFornecedorBAIRRO: TIntegerField;
    QryFornecedorCIDADE: TIntegerField;
    QryFornecedorUF: TIBStringField;
    QryFornecedorCEP: TIBStringField;
    QryFornecedorFONE: TIBStringField;
    QryFornecedorFAX: TIBStringField;
    QryFornecedorCELULAR: TIBStringField;
    QryFornecedorPESSOA: TIBStringField;
    QryFornecedorCPF_CGC: TIBStringField;
    QryFornecedorRG_IE: TIBStringField;
    QryFornecedorCONTATO: TIBStringField;
    QryFornecedorDT_NASCIMENTO: TDateTimeField;
    QryFornecedorDT_CADASTRO: TDateTimeField;
    QryFornecedorEMAIL: TIBStringField;
    QryFornecedorOBS: TBlobField;
    QryFornecedorINSC_MUNIC: TIBStringField;
    QryFornecedorCONVENIO: TIntegerField;
    QryFornecedorEMISSOR: TIBStringField;
    QryFornecedorCONTATO1: TIBStringField;
    QryFornecedorCONTATO2: TIBStringField;
    QryFornecedorCONTATO3: TIBStringField;
    QryFornecedorORDEM: TIntegerField;
    QryFornecedorREGIAO: TIntegerField;
    QryFornecedorNFE_EXP: TIBStringField;
    QryFornecedorSELECIONADO: TIBStringField;
    QryFornecedorCODIGO_2: TIntegerField;
    QryFornecedorFJ: TIBStringField;
    QryFornecedorMAP_LAT: TIBStringField;
    QryFornecedorMAP_LONG: TIBStringField;
    dsFornecedor: TDataSource;
    mtbCabNFCAD_FORNECEDOR: TBooleanField;
    QryRetFornecedor: TIBQuery;
    QryRetFornecedorCNPJ: TIBStringField;
    QryRetFornecedorCODIGO: TIntegerField;
    QryRetFornecedorNOME_RAZAO: TIBStringField;
    QryRetFornecedorFANTASIA: TIBStringField;
    QryRetFornecedorATIVIDADE: TIntegerField;
    QryRetFornecedorENDERECO: TIntegerField;
    QryRetFornecedorNUMERO: TIBStringField;
    QryRetFornecedorCOMPLEMENTO: TIBStringField;
    QryRetFornecedorBAIRRO: TIntegerField;
    QryRetFornecedorCIDADE: TIntegerField;
    QryRetFornecedorUF: TIBStringField;
    QryRetFornecedorCEP: TIBStringField;
    QryRetFornecedorFONE: TIBStringField;
    QryRetFornecedorFAX: TIBStringField;
    QryRetFornecedorCELULAR: TIBStringField;
    QryRetFornecedorPESSOA: TIBStringField;
    QryRetFornecedorCPF_CGC: TIBStringField;
    QryRetFornecedorRG_IE: TIBStringField;
    QryRetFornecedorCONTATO: TIBStringField;
    QryRetFornecedorDT_NASCIMENTO: TDateTimeField;
    QryRetFornecedorDT_CADASTRO: TDateTimeField;
    QryRetFornecedorEMAIL: TIBStringField;
    QryRetFornecedorOBS: TBlobField;
    QryRetFornecedorINSC_MUNIC: TIBStringField;
    QryRetFornecedorCONVENIO: TIntegerField;
    QryRetFornecedorEMISSOR: TIBStringField;
    QryRetFornecedorCONTATO1: TIBStringField;
    QryRetFornecedorCONTATO2: TIBStringField;
    QryRetFornecedorCONTATO3: TIBStringField;
    QryRetFornecedorORDEM: TIntegerField;
    QryRetFornecedorREGIAO: TIntegerField;
    QryRetFornecedorNFE_EXP: TIBStringField;
    QryRetFornecedorSELECIONADO: TIBStringField;
    QryRetFornecedorCODIGO_2: TIntegerField;
    QryRetFornecedorFJ: TIBStringField;
    QryRetFornecedorMAP_LAT: TIBStringField;
    QryRetFornecedorMAP_LONG: TIBStringField;
    mtbItemNF2: TdxMemData;
    mtbItemNF2PRD_ITEM: TIntegerField;
    mtbItemNF2PRD_COD_PRODUTO: TStringField;
    mtbItemNF2DIC_COD_PRODUTO: TStringField;
    mtbItemNF2PRD_PRODUTO: TStringField;
    mtbItemNF2PRD_COD_EAN: TStringField;
    mtbItemNF2PRD_COD_NCM: TStringField;
    mtbItemNF2PRD_EXT_IPI: TStringField;
    mtbItemNF2PRD_CFOP: TStringField;
    mtbItemNF2DIC_CFOP: TIntegerField;
    mtbItemNF2PRD_UN_COMERCIAL: TStringField;
    mtbItemNF2PRD_QTDE_COMERCIAL: TFloatField;
    mtbItemNF2PRD_VLR_UN_COMERCIAL: TFloatField;
    mtbItemNF2PRD_UND_TRIBUTADA: TStringField;
    mtbItemNF2PRD_QTDE_TRIBUTADA: TFloatField;
    mtbItemNF2PRD_VLR_UN_TRIBUTADA: TFloatField;
    mtbItemNF2PRD_VLR_FRETE: TFloatField;
    mtbItemNF2PRD_VLR_SEGURO: TFloatField;
    mtbItemNF2PRD_VLR_OUTROS: TFloatField;
    mtbItemNF2PRD_VLR_DESCONTO: TFloatField;
    mtbItemNF2PRD_VLR_PRODUTO: TFloatField;
    mtbItemNF2CST: TStringField;
    mtbItemNF2BASE_ICMS: TFloatField;
    mtbItemNF2VLR_ICMS: TFloatField;
    mtbItemNF2ALIQ_ICMS: TFloatField;
    mtbItemNF2BASE_ICMS_ST: TFloatField;
    mtbItemNF2VLR_ICMS_ST: TFloatField;
    mtbItemNF2ALIQ_ICMS_ST: TFloatField;
    mtbItemNF2BASE_IPI: TFloatField;
    mtbItemNF2VLR_IPI: TFloatField;
    mtbItemNF2ALIQ_IPI: TFloatField;
    mtbItemNF2BASE_PIS: TFloatField;
    mtbItemNF2VLR_PIS: TFloatField;
    mtbItemNF2ALIQ_PIS: TFloatField;
    mtbItemNF2BASE_COFINS: TFloatField;
    mtbItemNF2VLR_COFINS: TFloatField;
    mtbItemNF2ALIQ_COFINS: TFloatField;
    mtbItemNF2DIC_DESC_PRODUTO: TStringField;
    mtbItemNF2CAD_PRODUTO: TBooleanField;
    mtbItemNF2Fator: TFloatField;
    mtbItemNF2QtdeConvertida: TFloatField;
    mtbItemNF2DIC_FORNECEDOR: TStringField;
    procedure btnCaminhoClick(Sender: TObject);
    procedure cbTipoImportacaoPropertiesChange(Sender: TObject);
    procedure btnNovaConsultaClick(Sender: TObject);
    procedure btnPegarHTMLClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure WebBrowser1DocumentComplete(Sender: TObject;
      const pDisp: IDispatch; var URL: OleVariant);
    procedure WebBrowser1ProgressChange(Sender: TObject; Progress,
      ProgressMax: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtChaveNFeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPreviewClick(Sender: TObject);
    procedure mtbItemNFPRD_QTDE_COMERCIALChange(Sender: TField);
    procedure TVItensDIC_COD_PRODUTOCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure TVItensDIC_CFOPCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure btnCFOPClick(Sender: TObject);
    procedure ActLocalizarNaturezaExecute(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure ActLocalizarFornecedorExecute(Sender: TObject);
    procedure btnFornecedorClick(Sender: TObject);
    procedure mtbCabNFAfterPost(DataSet: TDataSet);
    procedure ActLocalizaProdutosExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TVItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDICCFOPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtDICFORNECEDORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mtbCabNFBeforePost(DataSet: TDataSet);
    procedure mtbItemNFPRD_PRODUTOChange(Sender: TField);
    procedure mtbItemNFDIC_COD_PRODUTOChange(Sender: TField);
    procedure mtbCabNFDIC_COD_FORNECEDORChange(Sender: TField);
    procedure mtbItemNFPRD_COD_PRODUTOChange(Sender: TField);
    procedure ActFecharExecute(Sender: TObject);
    procedure TVItensFatorCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure mtbItemNFFatorChange(Sender: TField);
    procedure mtbCabNFEMIT_CPF_CNPJChange(Sender: TField);
  private
    function DownloadFile(SourceFile, DestFile: string): Boolean;
    function StripHTML(S: string): string;
    function VerificaFator:boolean;

    procedure NovaConsulta;
    procedure DeleteIECache;
    procedure PegarHTML;
    procedure GeraXml;
    procedure CarregaXML;
    procedure AbreCFOPs;
    procedure GeraEntrada;

    { Private declarations }
  public
    { Public declarations }
    FPath: string;

  end;

var
  frmImportaNFe: TfrmImportaNFe;

implementation

uses ACBrNFeUtil, ACBrHTMLtoXML, pcnNFe, Application_DM,
  Localizar_Produto_Cadastro_Auto, NaturezaOper_Form, Main,
  Localizar_Natureza, Localizar_Fornecedor, Entradas_DM, Fornecedores_Form,
  Funcoes, SelEntradas_Form, Entradas_Form, Empresas_DM;

{$R *.dfm}

procedure TfrmImportaNFe.btnCaminhoClick(Sender: TObject);
begin
  OpenDialog.InitialDir := DmApp.NFE_ENT_PATH_IMPORTACAO;
  if OpenDialog.Execute then
    edtPathFile.Text := OpenDialog.FileName;
end;

procedure TfrmImportaNFe.cbTipoImportacaoPropertiesChange(Sender: TObject);
begin
  gCaminho.Enabled := (rdTipoImportacao.ItemIndex = 0);
  edtPathFile.Enabled := (rdTipoImportacao.ItemIndex = 0);
  gRecuperaXML.Visible := (rdTipoImportacao.ItemIndex = 1);
  if gRecuperaXML.Visible then
  begin
    NovaConsulta;
    edtChaveNFe.SetFocus;
  end;


end;

procedure TfrmImportaNFe.NovaConsulta;
begin
  btnNovaConsulta.Enabled := False;
  edtcaptcha.Text         := '' ;
  DeleteIECache;
  Memo2.Lines.Clear;
  WebBrowser1.Navigate('http://www.nfe.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=');
end;

procedure TfrmImportaNFe.btnNovaConsultaClick(Sender: TObject);
begin
  NovaConsulta;
end;

procedure TfrmImportaNFe.DeleteIECache;
var
  lpEntryInfo: PInternetCacheEntryInfo;
  hCacheDir: LongWord;
  dwEntrySize: LongWord;
begin { DeleteIECache }
  dwEntrySize := 0;

  FindFirstUrlCacheEntry(nil, TInternetCacheEntryInfo(nil^), dwEntrySize);

  GetMem(lpEntryInfo, dwEntrySize);

  if dwEntrySize>0 then
    lpEntryInfo^.dwStructSize := dwEntrySize;

  hCacheDir := FindFirstUrlCacheEntry(nil, lpEntryInfo^, dwEntrySize);

  if hCacheDir<>0 then
  begin
    repeat
      DeleteUrlCacheEntry(lpEntryInfo^.lpszSourceUrlName);
      FreeMem(lpEntryInfo, dwEntrySize);
      dwEntrySize := 0;
      FindNextUrlCacheEntry(hCacheDir, TInternetCacheEntryInfo(nil^), dwEntrySize);
      GetMem(lpEntryInfo, dwEntrySize);
      if dwEntrySize>0 then
        lpEntryInfo^.dwStructSize := dwEntrySize;
    until not FindNextUrlCacheEntry(hCacheDir, lpEntryInfo^, dwEntrySize)
  end; { hCacheDir<>0 }
  FreeMem(lpEntryInfo, dwEntrySize);

  FindCloseUrlCache(hCacheDir)
end;

function TfrmImportaNFe.DownloadFile(SourceFile,
  DestFile: string): Boolean;
  const BufferSize = 1024;
var
  hSession, hURL: HInternet;
  Buffer: array[1..BufferSize] of Byte;
  BufferLen: DWORD;
  f: File;
  sAppName: string;
begin
 sAppName := ExtractFileName(Application.ExeName);
 hSession := InternetOpen(PChar(sAppName),INTERNET_OPEN_TYPE_PRECONFIG,nil, nil, 0);
 try
   hURL := InternetOpenURL(hSession,PChar(SourceFile),nil,0,0,0);
   try
     AssignFile(f, DestFile);
     Rewrite(f,1);
     repeat
       InternetReadFile(hURL, @Buffer,SizeOf(Buffer), BufferLen);
       BlockWrite(f, Buffer, BufferLen)
     until BufferLen = 0;
     CloseFile(f);
     Result := True;
   finally
     InternetCloseHandle(hURL)
   end
 finally
   InternetCloseHandle(hSession)
 end;
end;

procedure TfrmImportaNFe.GeraXml;
begin
  FPath:=GerarXML(Memo2.Lines.Text);
  WBXML.Navigate(FPath);
  MessageBox(0,PChar('XML '+FPath+' gerado com sucesso!'),'Informação',
  MB_ICONINFORMATION+MB_TASKMODAL);
  btnNovaConsulta.Enabled := True;
  btnPegarHTML.Enabled    := True;
  edtPathFile.Text := FPath;
end;

procedure TfrmImportaNFe.PegarHTML;
begin
  edtChaveNFe.Text := OnlyNumber(edtChaveNFe.Text);

  if not ValidarChave('NFe'+edtChaveNFe.Text) then
   begin
     MessageDlg('Chave Inválida.',mtError,[mbok],0);
     edtChaveNFe.SetFocus;
     exit;
   end;

  if trim(edtCaptcha.Text) = '' then
   begin
     MessageDlg('Digite o valor da imagem.',mtError,[mbok],0);
     edtCaptcha.SetFocus;
     exit;
   end;

  Memo2.Lines.Clear;

  btnPegarHTML.Enabled    := False;
  btnNovaConsulta.Enabled := False;
  try
     WebBrowser1.OleObject.Document.all.Item('ctl00$ContentPlaceHolder1$txtChaveAcessoCompleta', 0).value := edtChaveNFe.Text;
     WebBrowser1.OleObject.Document.all.Item('ctl00$ContentPlaceHolder1$txtCaptcha', 0).value := edtCaptcha.Text;
     WebBrowser1.OleObject.Document.all.Item('ctl00$ContentPlaceHolder1$btnConsultar', 0).click;
  except
     btnNovaConsulta.Enabled := True;
     raise;
  end;
  PageControl1.ActivePageIndex := 0;
end;

function TfrmImportaNFe.StripHTML(S: string): string;
var
  TagBegin, TagEnd, TagLength: integer;
begin
  TagBegin := Pos( '<', S);      // search position of first <

  while (TagBegin > 0) do begin  // while there is a < in S
    TagEnd    := Pos('>', S);              // find the matching >
    TagLength := TagEnd - TagBegin + 1;
    Delete(S, TagBegin, TagLength);     // delete the tag
    TagBegin := Pos( '<', S);            // search for next <
  end;

  Result := S;
end;

procedure TfrmImportaNFe.btnPegarHTMLClick(Sender: TObject);
begin
  PegarHTML;
end;

procedure TfrmImportaNFe.Button1Click(Sender: TObject);
begin
  PegarHTML;
end;

procedure TfrmImportaNFe.Label3Click(Sender: TObject);
begin
   NovaConsulta;
end;

procedure TfrmImportaNFe.WebBrowser1DocumentComplete(Sender: TObject;
  const pDisp: IDispatch; var URL: OleVariant);
var
  k, i: Integer;
  Source, dest: string;
  textoNFe : IHTMLDocument2;
begin
  Application.ProcessMessages;
  if WebBrowser1.LocationURL = 'http://www.nfe.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=' then
  begin
    for k := 0 to WebBrowser1.OleObject.Document.Images.Length - 1 do
     begin
       Source := WebBrowser1.OleObject.Document.Images.Item(k).Src;
       if (Source = 'http://www.nfe.fazenda.gov.br/scripts/srf/intercepta/captcha.aspx?opt=image') then
       begin
         dest := ExtractFilePath(ParamStr(0)) + 'captcha.gif';
         DownloadFile(Source, dest);
       end;
     end;
     Image1.Picture.LoadFromFile(dest);
     btnPegarHTML.Enabled := True;
  end
  else if WebBrowser1.LocationURL = 'https://www.nfe.fazenda.gov.br/portal/visualizacaoNFe/completa/Default.aspx' then
  begin
    WebBrowser1.Navigate('https://www.nfe.fazenda.gov.br/PORTAL/visualizacaoNFe/completa/impressao.aspx');
  end
  else if WebBrowser1.LocationURL = 'http://www.nfe.fazenda.gov.br/portal/consultaCompleta.aspx?tipoConteudo=XbSeqxE8pl8=' then
  begin
    textoNFe := WebBrowser1.Document as IHTMLDocument2;
    repeat
       Application.ProcessMessages;
    until Assigned(textoNFe.body);
    Memo2.Lines.Text := StripHTML(textoNFe.body.innerHTML);
    Memo2.Lines.Text := StringReplace(Memo2.Lines.Text,'&nbsp;','',[rfReplaceAll, rfIgnoreCase]);

    i := 0;
    while i < memo2.Lines.Count-1 do
    begin
      if trim(Memo2.Lines[i]) = '' then
      begin
        Memo2.Lines.Delete(i);
        i := i - 1;
      end;
      if pos('function',Memo2.lines[i])>0 then
      begin
        Memo2.Lines.Delete(i);
        i := i - 1;
      end;
      if pos('document',Memo2.lines[i])>0 then
      begin
        Memo2.Lines.Delete(i);
        i := i - 1;
      end;
      if pos('{',Memo2.lines[i])>0 then
      begin
        Memo2.Lines.Delete(i);
        i := i - 1;
      end;
      if pos('}',Memo2.lines[i])>0 then
      begin
        Memo2.Lines.Delete(i);
        i := i - 1;
      end;

      i := i + 1;
    end;
    Image1.Picture      := nil;
    GeraXml;
  end
  else if WebBrowser1.LocationURL = 'https://www.nfe.fazenda.gov.br/portal/inexistente_completa.aspx' then
  begin
    MessageDlg('NF-e INEXISTENTE na base nacional, favor consultar esta NF-e no site da SEFAZ de origem.',mtError,[mbok],0);
    Image1.Picture          := nil;
    btnNovaConsulta.Enabled := True;
  end
  else
  begin
    MessageDlg('Erro carregando URL: '+WebBrowser1.LocationURL,mtError,[mbok],0);
    Image1.Picture          := nil;
    btnNovaConsulta.Enabled := True;
  end;
end;

procedure TfrmImportaNFe.WebBrowser1ProgressChange(Sender: TObject;
  Progress, ProgressMax: Integer);
begin
  if ProgressMax = 0 then
  begin
    ProgressBar1.Visible := False;
    lblStatus.Visible    := False;
    exit;
  end
 else
  begin
    ProgressBar1.Visible := True;
    lblStatus.Visible    := True;
    try
       ProgressBar1.Properties.Max := ProgressMax;
       if (Progress <> -1) and (Progress <= ProgressMax) then
          ProgressBar1.Position := Progress
       else
        begin
          ProgressBar1.Visible := False;
          lblStatus.Visible    := False;
        end;
    except
       on EDivByZero do
         exit;
    end;
  end;
end;

procedure TfrmImportaNFe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmLocProdutoCadastro_Auto := nil;
  Action := caFree;
end;

procedure TfrmImportaNFe.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmImportaNFe.btnProximoClick(Sender: TObject);
begin
  if (pgcImportacao.ActivePageIndex = 0) then
  begin
    if (trim(edtPathFile.Text) = '') then
    begin
      Application.MessageBox('Selecione um arquivo XML válido','Aviso',mb_iconerror+mb_ok);
      exit;
    end;
    tbs2.TabVisible := true;
    CarregaXML;
    pgcImportacao.ActivePage :=  tbs2;
  end
  else if (pgcImportacao.ActivePageIndex = 1) then
  begin
    if (mtbCabNFDIC_CFOP.AsString = '') then
    begin
      Application.MessageBox('Defina o CFOP de Entrada','Aviso',mb_iconerror+mb_ok);
      edtDICCFOP.SetFocus;
      exit;
    end;

    if (mtbCabNFDIC_COD_FORNECEDOR.AsString = '') then
    begin
      if (Application.MessageBox('Código interno do Fornecedor não definido. Realizar cadastro automático?','Aviso',mb_iconquestion+mb_yesno)=id_no) then
      begin
        edtDICFORNECEDOR.SetFocus;
        exit;
      end;
    end;


    if (Application.MessageBox('Deseja prosseguir com a importação da NFe selecionada?','Aviso',mb_iconquestion+mb_yesno)=id_no) then
      exit;

    GeraEntrada;
  end
end;

procedure TfrmImportaNFe.btnAnteriorClick(Sender: TObject);
begin
   if (pgcImportacao.ActivePageIndex = 1) then
    pgcImportacao.ActivePage := tbs1;
end;

procedure TfrmImportaNFe.FormShow(Sender: TObject);
begin
  
  pgcImportacao.ActivePageIndex := 0;
  tbs2.TabVisible := false;
end;

procedure TfrmImportaNFe.edtChaveNFeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0)
   else if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmImportaNFe.CarregaXML;
var
  i : integer;
begin
  with dmApp do
  begin
      ACBrNFe.NotasFiscais.Clear;
      ACBrNFe.NotasFiscais.LoadFromFile(edtPathFile.Text);
      mtbCabNF.Close;
      mtbCabNF.Open;
      mtbCabNF.Append;

      if (ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF = 'MS') then
        mtbCabNFDIC_CFOP.Value := DmApp.NFE_ENT_CFOP_IMPORTACAO
      else
        mtbCabNFDIC_CFOP.Value := DmApp.NFE_ENT_CFOP_IMPORTACAO_INT;
        

      mtbCabNFNUM_NF.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.nNF;
      mtbCabNFSERIE.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.serie;
      mtbCabNFCFOP.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.natOp;
      mtbCabNFDATA_EMISSAO.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Ide.dEmi;
      mtbCabNFDATA_ENTRADA.Value := Date;
      mtbCabNFEMIT_CPF_CNPJ.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
      mtbCabNFEMIT_UF.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
      mtbCabNFEMIT_RAZAO_SOCIAL.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.xNome;
      mtbCabNFEMIT_FANTASIA.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.xFant;
      mtbCabNFEMIT_IE.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.IE;
      mtbCabNFEMIT_IM.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.IM;
      mtbCabNFEMIT_COD_IBGE_CIDADE.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
      mtbCabNFEMIT_LOGRADOURO.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xLgr;

      mtbCabNFEMIT_NUMERO.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.nro;
      mtbCabNFEMIT_COMPLEMENTO.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xCpl;
      mtbCabNFEMIT_BAIRRO.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xBairro;
      mtbCabNFEMIT_COD_IBGE_CIDADE.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun;
      mtbCabNFEMIT_CIDADE.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xMun;
      mtbCabNFEMIT_UF.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
      mtbCabNFEMIT_CEP.Value := IntToStr(ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.CEP);
      mtbCabNFEMIT_COD_PAIS.Value := (ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cPais);
      mtbCabNFEMIT_PAIS.Value := (ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.xPais);
      mtbCabNFEMIT_FONE.Value := (ACBrNFe.NotasFiscais.Items[0].NFe.Emit.EnderEmit.fone);

      mtbCabNFBASE_ICMS.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
      mtbCabNFVLR_ICMS.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
      mtbCabNFBASE_ICMS_ST.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST;
      mtbCabNFVLR_ICMS_ST.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST;
      mtbCabNFVLR_FRETE.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
      mtbCabNFVLR_SEGURO.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
      mtbCabNFVLR_DESCONTOS.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
      mtbCabNFVLR_DESPESAS.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro;
      mtbCabNFVLR_IPI.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;
      mtbCabNFVLR_PIS.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
      mtbCabNFVLR_COFINS.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS;
      mtbCabNFVLR_TOTAL_PRODUTOS.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
      mtbCabNFVLR_TOTAL_NOTA.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;
      mtbCabNF.Post;

      mtbItemNF.Close;
      mtbItemNF.Open;

      mtbItemNF2.Close;
      mtbItemNF2.Open;

      for i := 0 to ACBrNFe.NotasFiscais.Items[0].NFe.Det.Count-1 do
      begin

         mtbItemNF.Append;
         mtbItemNFPRD_ITEM.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.nItem;
         mtbItemNFPRD_QTDE_COMERCIAL.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.qCom;
         mtbItemNFPRD_COD_PRODUTO.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd;
         mtbItemNFPRD_PRODUTO.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.xProd;
         mtbItemNFPRD_CFOP.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP;
         mtbItemNFPRD_UN_COMERCIAL.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uCom;
         mtbItemNFPRD_VLR_UN_COMERCIAL.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnCom;
         mtbItemNFPRD_UND_TRIBUTADA.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uTrib;
         mtbItemNFPRD_QTDE_TRIBUTADA.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.qTrib;
         mtbItemNFPRD_VLR_UN_TRIBUTADA.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnTrib;
         mtbItemNFPRD_COD_NCM.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.NCM;
         mtbItemNFPRD_COD_EAN.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cEAN;

         mtbItemNFBASE_ICMS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vBC;
         mtbItemNFVLR_ICMS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMS;
         mtbItemNFALIQ_ICMS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pICMS;

         mtbItemNFBASE_ICMS_ST.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vBCST;
         mtbItemNFVLR_ICMS_ST.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMSST;
         mtbItemNFALIQ_ICMS_ST.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pICMSST;

         mtbItemNFBASE_IPI.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vBC;
         mtbItemNFVLR_IPI.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vIPI;
         mtbItemNFALIQ_IPI.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.pIPI;

         mtbItemNFBASE_PIS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.pis.vBC;
         mtbItemNFVLR_PIS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.vPIS;
         mtbItemNFALIQ_PIS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.pPIS;

         mtbItemNFBASE_COFINS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.vCOFINS;
         mtbItemNFVLR_COFINS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.vCOFINS;
         mtbItemNFALIQ_COFINS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.pCOFINS;
         mtbItemNF.Post;


         mtbItemNF2.Append;
         mtbItemNF2PRD_ITEM.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.nItem;
         mtbItemNF2PRD_QTDE_COMERCIAL.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.qCom;
         mtbItemNF2PRD_COD_PRODUTO.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cProd;
         mtbItemNF2PRD_PRODUTO.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.xProd;
         mtbItemNF2PRD_CFOP.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.CFOP;
         mtbItemNF2PRD_UN_COMERCIAL.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uCom;
         mtbItemNF2PRD_VLR_UN_COMERCIAL.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnCom;
         mtbItemNF2PRD_UND_TRIBUTADA.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.uTrib;
         mtbItemNF2PRD_QTDE_TRIBUTADA.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.qTrib;
         mtbItemNF2PRD_VLR_UN_TRIBUTADA.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.vUnTrib;
         mtbItemNF2PRD_COD_NCM.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.NCM;
         mtbItemNF2PRD_COD_EAN.Value := ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Prod.cEAN;

         mtbItemNF2BASE_ICMS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vBC;
         mtbItemNF2VLR_ICMS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMS;
         mtbItemNF2ALIQ_ICMS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pICMS;

         mtbItemNF2BASE_ICMS_ST.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vBCST;
         mtbItemNF2VLR_ICMS_ST.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.vICMSST;
         mtbItemNF2ALIQ_ICMS_ST.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.ICMS.pICMSST;

         mtbItemNF2BASE_IPI.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vBC;
         mtbItemNF2VLR_IPI.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.vIPI;
         mtbItemNF2ALIQ_IPI.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.IPI.pIPI;

         mtbItemNF2BASE_PIS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.pis.vBC;
         mtbItemNF2VLR_PIS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.vPIS;
         mtbItemNF2ALIQ_PIS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.PIS.pPIS;

         mtbItemNF2BASE_COFINS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.vCOFINS;
         mtbItemNF2VLR_COFINS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.vCOFINS;
         mtbItemNF2ALIQ_COFINS.Value :=  ACBrNFe.NotasFiscais.Items[0].NFe.Det.Items[i].Imposto.COFINS.pCOFINS;
         mtbItemNF2.Post;
      end;
  end;
end;

procedure TfrmImportaNFe.btnPreviewClick(Sender: TObject);
begin
  dmApp.ImprimeNFE('',0,0,Date,'',edtPathFile.Text);
end;

procedure TfrmImportaNFe.mtbItemNFPRD_QTDE_COMERCIALChange(Sender: TField);
begin
   mtbItemNFPRD_VLR_PRODUTO.Value :=   mtbItemNFPRD_VLR_UN_COMERCIAL.value * mtbItemNFPRD_QTDE_COMERCIAL.value;
end;

procedure TfrmImportaNFe.TVItensDIC_COD_PRODUTOCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Valor : Variant;
begin
  Valor := (TVItens.ViewData.Records[AViewInfo.GridRecord.Index].Values[TVItensDIC_COD_PRODUTO.Index]);
  if Trim(VarToStr(Valor)) = '' then
    ACanvas.Canvas.Brush.Color := clRed
  else
    ACanvas.Canvas.Brush.Color := clGreen;

  ACanvas.Canvas.Font.Color := clwhite;
end;

procedure TfrmImportaNFe.TVItensDIC_CFOPCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Valor : Variant;
begin

  Valor := (TVItens.ViewData.Records[AViewInfo.GridRecord.Index].Values[TVItensDIC_CFOP.Index]);
  if Trim(VarToStr(Valor)) = '' then
    ACanvas.Canvas.Brush.Color := clRed
  else
    ACanvas.Canvas.Brush.Color := clGreen;

  ACanvas.Canvas.Font.Color := clwhite;
end;

procedure TfrmImportaNFe.btnCFOPClick(Sender: TObject);
begin
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmNaturezaOper', False);
  FrmNaturezaOper             := TFrmNaturezaOper.Create(Application);
  FrmNaturezaOper.Showmodal ;
  mtbCabNF.Edit;
  mtbCabNFDIC_CFOP.value := FrmMain.Codigo_Int;
  edtDICCFOP.SetFocus;
end;

procedure TfrmImportaNFe.ActLocalizarNaturezaExecute(Sender: TObject);
begin
  Application.CreateForm(TFrm_Localizar_Natureza, Frm_Localizar_Natureza);
  Frm_Localizar_Natureza.DSource.dataset := SelNatureza ;
  if (Frm_Localizar_Natureza.showmodal = mrOk ) then
  begin
    mtbCabNF.Edit;
    mtbCabNFDIC_CFOP.Value := (Frm_Localizar_Natureza.CampTrecho)
  end
  else
    btnCFOP.OnClick(btnCFOP);
end;

procedure TfrmImportaNFe.actLookupExecute(Sender: TObject);
begin
  If (edtDICCFOP.Focused)Then
   btnCFOP.OnClick(btnCFOP)
  else if (edtDICFORNECEDOR.Focused) then
   btnFornecedor.OnClick(btnFornecedor);
end;

procedure TfrmImportaNFe.ActLocalizarFornecedorExecute(Sender: TObject);
begin
  Application.CreateForm(TFrm_Localizar_Fornecedor, Frm_Localizar_Fornecedor);
  Frm_Localizar_Fornecedor.DSource.dataset := DmEntradas.SelFornecedor ;

  if ( Frm_Localizar_Fornecedor.showmodal = mrOk ) then
  begin
    mtbCabNF.Edit;
    mtbCabNFDIC_COD_FORNECEDOR.value := (Frm_Localizar_Fornecedor.CampTrecho)
  end
  else
  begin
    if Frm_Localizar_Fornecedor.Cad = 'S' then
        BtnFornecedor.OnClick(BtnFornecedor);
  end;
  Frm_Localizar_Fornecedor.free   ;
  Frm_Localizar_Fornecedor := Nil ;
end;

procedure TfrmImportaNFe.btnFornecedorClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFornecedores', False);


  FrmFornecedores := TFrmFornecedores.Create(Application);
  FrmFornecedores.Showmodal ;
  mtbCabNF.Edit;
  mtbCabNFDIC_COD_FORNECEDOR.value := FrmMain.Codigo_Int;
end;

procedure TfrmImportaNFe.AbreCFOPs;
begin
  SelNatureza.Close ;
  SelNatureza.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
  if mtbCabNFEMIT_UF.AsString = DmApp.UF then
    SelNatureza.ParamByName ('IE').AsString  := 'E'
  else
    SelNatureza.ParamByName ('IE').AsString  := 'I';

  SelNatureza.Open ;

  SelNaturezaItens.Close ;
  SelNaturezaItens.ParamByName('CNPJ').AsString  := DmApp.Cnpj   ;
  if mtbCabNFEMIT_UF.AsString = DmApp.UF then
    SelNaturezaItens.ParamByName ('IE').AsString  := 'E'
  else
    SelNaturezaItens.ParamByName ('IE').AsString  := 'I';

  SelNaturezaItens.Open ;
end;

procedure TfrmImportaNFe.mtbCabNFAfterPost(DataSet: TDataSet);
begin
  AbreCFOPs;
end;

procedure TfrmImportaNFe.ActLocalizaProdutosExecute(Sender: TObject);
begin
  FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);
  if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
    mtbItemNFDIC_COD_PRODUTO.asString := (FrmLocProdutoCadastro_Auto.CampTrecho );
end;

procedure TfrmImportaNFe.FormCreate(Sender: TObject);
begin
  FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);
  SelProdutos.Close;
  SelProdutos.ParamByName('cnpj').value := dmApp.cnpj;
  SelProdutos.Open;

  QryFornecedor.Close;
  QryFornecedor.ParamByName('cnpj').value := dmApp.cnpj;
  QryFornecedor.Open;
end;

procedure TfrmImportaNFe.TVItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f3 then
    ActLocalizaProdutos.Execute;

end;

procedure TfrmImportaNFe.edtDICCFOPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f3 then
    ActLocalizarNatureza.Execute;
end;

procedure TfrmImportaNFe.edtDICFORNECEDORKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_f3 then
    ActLocalizarFornecedor.Execute;
end;

procedure TfrmImportaNFe.mtbCabNFBeforePost(DataSet: TDataSet);
var
  dic_fornecedor : variant;
begin
  dic_fornecedor := (RetornaValor('select min(psa.codigo) from glo_pessoas_fj psa where psa.cpf_cgc ='+QuotedStr(mtbCabNFEMIT_CPF_CNPJ.Value)));
  if not VarIsNull(dic_fornecedor) then
    mtbCabNFDIC_COD_FORNECEDOR.value := dic_fornecedor;
end;

procedure TfrmImportaNFe.mtbItemNFPRD_PRODUTOChange(Sender: TField);
var
  dic_produto : variant;
begin
  dic_produto := (RetornaValor('select prd.nome from est_produtos prd where prd.codigo  = '+QuotedStr(mtbItemNFDIC_COD_PRODUTO.Value)));
  if not VarIsNull(dic_produto) then
     mtbItemNFDIC_DESC_PRODUTO.Value := dic_produto;
end;

procedure TfrmImportaNFe.mtbItemNFDIC_COD_PRODUTOChange(Sender: TField);
begin
   if (mtbItemNFDIC_COD_PRODUTO.value <>'') then
   begin
    SelProdutos.Locate('CODIGO',mtbItemNFDIC_COD_PRODUTO.value,[loCaseInsensitive]);
    mtbItemNFDIC_DESC_PRODUTO.Value := SelProdutosNOME.value;
    mtbItemNFCAD_PRODUTO.Value := false;
    mtbItemNFCAD_PRODUTO.ReadOnly := true;
   end
   else
   begin
     mtbItemNFCAD_PRODUTO.Value := true;
     mtbItemNFDIC_DESC_PRODUTO.Value := '';
     mtbItemNFCAD_PRODUTO.ReadOnly := false;
   end
end;

procedure TfrmImportaNFe.mtbCabNFDIC_COD_FORNECEDORChange(Sender: TField);
begin
  if (mtbCabNFDIC_COD_FORNECEDOR.AsString = '') then
  begin
    mtbCabNFCAD_FORNECEDOR.value := true;
    ckCadFornecedor.Enabled := true;
  end
  else
  begin
    mtbCabNFCAD_FORNECEDOR.value := false;
    ckCadFornecedor.Enabled := false;
  end
end;

procedure TfrmImportaNFe.GeraEntrada;
var
  Pessoa_FJ : Integer;
  Docto : String;
begin
  try
       if not VerificaFator then
         exit;

        with DMEntradas do
        begin
           Entradas.Close;
           Entradas.Open;
           Entradas.Append;
           EntradasNDOCTO.value := mtbCabNFNUM_NF.AsString;
           if (mtbCabNFDIC_COD_FORNECEDOR.value > 0) then
             EntradasPESSOA_FJ.value := mtbCabNFDIC_COD_FORNECEDOR.value
           else
             EntradasPESSOA_FJ.value := DmApp.SincronizaPessoa(Entradas.Transaction,
                                                               mtbCabNFEMIT_CPF_CNPJ.Value,
                                                               mtbCabNFEMIT_RAZAO_SOCIAL.Value,
                                                               mtbCabNFEMIT_FANTASIA.Value,
                                                               mtbCabNFEMIT_IE.Value,
                                                               '',//IE St.
                                                               mtbCabNFEMIT_IM.Value,
                                                               '',//FCNAE
                                                               mtbCabNFEMIT_LOGRADOURO.Value,
                                                               mtbCabNFEMIT_NUMERO.Value,
                                                               mtbCabNFEMIT_COMPLEMENTO.Value,
                                                               mtbCabNFEMIT_BAIRRO.Value,
                                                               mtbCabNFEMIT_COD_IBGE_CIDADE.Value,
                                                               mtbCabNFEMIT_CIDADE.Value,
                                                               mtbCabNFEMIT_UF.Value,
                                                               mtbCabNFEMIT_CEP.AsInteger,
                                                               mtbCabNFEMIT_COD_PAIS.Value,
                                                               mtbCabNFEMIT_PAIS.Value,
                                                               mtbCabNFEMIT_FONE.value);

           Pessoa_FJ := EntradasPESSOA_FJ.value;
           Docto := EntradasNDOCTO.value;
           EntradasDATA_NF.value := mtbCabNFDATA_EMISSAO.AsDateTime;
           EntradasDATA_REF.value := mtbCabNFDATA_EMISSAO.AsDateTime;
           EntradasDATA_ENT.value := mtbCabNFDATA_ENTRADA.AsDateTime;
           EntradasSERIE_NF.value := mtbCabNFSERIE.AsString;
           EntradasNATUREZA.value := mtbCabNFDIC_CFOP.value;
           EntradasVLR_DESCONTO.value :=  mtbCabNFVLR_DESCONTOS.value;
           EntradasVLR_PRODUTOS.value :=  mtbCabNFVLR_TOTAL_PRODUTOS.value;
           EntradasVLR_PRODUTOS_LC.value :=  mtbCabNFVLR_TOTAL_PRODUTOS.value;
           EntradasVLR_EMBALAGEM.value := 0;
           EntradasVLR_FRETE.value := mtbCabNFVLR_FRETE.value;
           EntradasVLR_SEGURO.value := mtbCabNFVLR_SEGURO.value;
           EntradasVLR_IPI.value := mtbCabNFVLR_IPI.value;
           EntradasVLR_IPI_LC.value := mtbCabNFVLR_IPI.value;
           EntradasVLR_BC_ICM.value := mtbCabNFBASE_ICMS.value;
           EntradasPERC_ICM.value := 0;
           EntradasVLR_ICM.value := mtbCabNFVLR_ICMS.value;
           EntradasVLR_ICM_SUBS.value := mtbCabNFVLR_ICMS_ST.value;
           EntradasVLR_PARC_LC.value := 0;
           EntradasTAXAS.value :=   mtbCabNFVLR_DESPESAS.Value;
           EntradasLOCAL_ESTOQUE.value := 1;
           EntradasHISTORICO.value := 'IMPORTAÇÃO XML';
           EntradasTIPO_DOCTO.value := 'NF';
          // EntradasPROC_QTD.value :=
          // EntradasPROC_CUSTO.value :=
          // EntradasPROC_FIN.value :=
         //  EntradasENTRADA.value :=
         //  EntradasCENTRO_CUSTO.value :=
           EntradasNOME.value := mtbCabNFEMIT_RAZAO_SOCIAL.Value;
        //   EntradasVLR_FRETE_LC.value :=
           EntradasNDOCTOINT.value :=  mtbCabNFNUM_NF.value;
           EntradasUF.value := mtbCabNFEMIT_UF.Value;
         //  EntradasCOD_FORMA_PAGTO.value :=
           EntradasVLR_BC_ICM_SUBS.value := mtbCabNFBASE_ICMS_ST.value;
           EntradasNFE_XML.LoadFromFile(edtPathFile.Text);
           Entradas.Post;

           Entradas_Itens.Close;
           Entradas_Itens.Open;
           mtbItemNF.First;
           while not mtbItemNF.Eof do
           begin
             Entradas_Itens.Append;
             Entradas_ItensPRODUTO.value := DmApp.SincronizaProduto(Entradas_Itens.Transaction,
                                                                      EntradasPESSOA_FJ.value,
                                                                      mtbItemNFPRD_COD_PRODUTO.value,
                                                                      mtbItemNFPRD_PRODUTO.value,
                                                                      mtbItemNFPRD_COD_EAN.value,
                                                                      mtbItemNFPRD_COD_NCM.value,
                                                                      mtbItemNFPRD_UN_COMERCIAL.value,
                                                                      mtbItemNFDIC_COD_PRODUTO.value,
                                                                      mtbItemNFFator.value,
                                                                      mtbItemNFCAD_PRODUTO.value);
             Entradas_ItensNOME_PRODUTO.value := mtbItemNFPRD_PRODUTO.value;
             Entradas_ItensUNIDADE.value :=  mtbItemNFPRD_UN_COMERCIAL.value;
             Entradas_ItensQUANTIDADE.value :=  mtbItemNFQtdeConvertida.value;
             Entradas_ItensPRC_UNITARIO.value := (mtbItemNFPRD_VLR_UN_COMERCIAL.value/mtbItemNFFator.value);
             Entradas_ItensICM.value := mtbItemNFVLR_ICMS.value;
             Entradas_ItensICM_SUBS.value := mtbItemNFVLR_ICMS_ST.value;
             Entradas_ItensIPI.value := mtbItemNFVLR_IPI.value;
             Entradas_ItensIPI_PRODUTO.value := mtbItemNFALIQ_IPI.value;
      //       Entradas_ItensTAXAS.value := mtbItemNFVLR_ICMS.value;
      //       Entradas_ItensDESCONTOS.value :=
      //       Entradas_ItensEMBALAGEM.value :=
             Entradas_ItensFRETE.value := mtbItemNFPRD_VLR_FRETE.value;
             Entradas_ItensSEGURO.value := mtbItemNFPRD_VLR_SEGURO.value;
      //       Entradas_ItensSUBUNIDADE.value := mtbItemNFPRD_VLR_UN_COMERCIAL.value;
           //  Entradas_ItensLOTE.value := '';
           //Entradas_ItensCODIGO_INTERNO.value
          //   Entradas_ItensCONVERSAO.value :=
          //   Entradas_ItensPRC_UNITARIO_DOLAR.value :=
             Entradas_ItensORDEM.value := mtbItemNFPRD_ITEM.Value;
             Entradas_ItensSECUNDARIO.value := Entradas_ItensPRODUTO.value;
             if (mtbItemNFPRD_CFOP.AsInteger > 0) then
               Entradas_ItensCFOP.value := mtbItemNFPRD_CFOP.AsInteger
             else
               Entradas_ItensCFOP.value := mtbCabNFDIC_CFOP.Value;
         //    Entradas_ItensReducao
             Entradas_Itens.Post;
             mtbItemNF.Next;
           end;
        end;
        dmEntradas.Entradas.Transaction.CommitRetaining;
        dmEntradas.Entradas.Close;
        dmEntradas.Entradas_Itens.Close;
        Application.MessageBox('Importação de NFe realizada com sucesso','Aviso',mb_ok+mb_iconinformation);
        FrmSelEntradas.AlteraEntrada(Pessoa_FJ,Docto);
        close;
  except on E:Exception Do
     begin
       MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
       dmEntradas.Entradas.Transaction.RollbackRetaining;
     end;
  end;

end;

procedure TfrmImportaNFe.mtbItemNFPRD_COD_PRODUTOChange(Sender: TField);
begin
    with dmapp do
    begin
      QryRetProduto.Close;
      QryRetProduto.ParamByName('cnpj').value := dmApp.cnpj;
      QryRetProduto.ParamByName('fornecedor').value := mtbCabNFDIC_COD_FORNECEDOR.Value;
      QryRetProduto.ParamByName('cod_barras').value := mtbItemNFPRD_COD_EAN.Value;
      QryRetProduto.ParamByName('codigo').value := mtbItemNFPRD_COD_PRODUTO.Value;
      QryRetProduto.Open;
    end;

    mtbItemNFDIC_COD_PRODUTO.Value := dmApp.QryRetProdutoRET_PRODUTO.Value;
    mtbItemNFFator.Value := dmApp.QryRetProdutoFator.value;
end;

procedure TfrmImportaNFe.ActFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfrmImportaNFe.TVItensFatorCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Valor : Variant;
begin
  Valor := (TVItens.ViewData.Records[AViewInfo.GridRecord.Index].Values[TVItensFator.Index]);
  if Valor <= 0 then
    ACanvas.Canvas.Brush.Color := clRed
  else
    ACanvas.Canvas.Brush.Color := clGreen;

  ACanvas.Canvas.Font.Color := clwhite;
end;

function TfrmImportaNFe.VerificaFator:boolean;
begin
   mtbItemNF.DisableControls;
   mtbItemNF.First;
   while not mtbItemNF.Eof do
   begin
      if mtbItemNFFator.Value <= 0 then
      begin
         application.MessageBox(pchar('Defina um fator para o item '+mtbItemNFPRD_ITEM.asString+'-'+mtbItemNFPRD_PRODUTO.asString),
                                      'Aviso',mb_iconerror+mb_ok);
         result := false;
         mtbItemNF.EnableControls;
         exit;
      end;
      mtbItemNF.next;
   end;
   mtbItemNF.EnableControls;
   result := true;
end;

procedure TfrmImportaNFe.mtbItemNFFatorChange(Sender: TField);
begin
  mtbItemNFQtdeConvertida.value := (mtbItemNFPRD_QTDE_COMERCIAL.value * mtbItemNFFator.value);
end;

procedure TfrmImportaNFe.mtbCabNFEMIT_CPF_CNPJChange(Sender: TField);
begin
    QryRetFornecedor.Close;
    QryRetFornecedor.ParamByName('cnpj').value := dmApp.cnpj;
    QryRetFornecedor.ParamByName('cpf_cgc').value := mtbCabNFEMIT_CPF_CNPJ.Value;
    QryRetFornecedor.Open;

    if (QryRetFornecedorCODIGO.Value > 0) then
      mtbCabNFDIC_COD_FORNECEDOR.value := QryRetFornecedorCODIGO.Value;

end;


end.
