unit Empresas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,   
  ExtDlgs, Mask, DBCtrls, Inifiles,
  Grids, DBGrids, ComCtrls,  OleCtrls, SHDocVw,
  ACBrNFe, pcnConversao, ACBrNFeDANFEClass, ACBrNFeDANFERave, filectrl,
  cxControls, cxContainer, cxEdit, cxGroupBox, dxTLClms, dxTL, dxDBTLCl,
  dxGrClms, dxDBGrid, dxDBCtrl, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, Menus, cxLookAndFeelPainters, cxButtons,
  ImgList, cxLookAndFeels, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, dxSkinscxPCPainter, cxPC, 
  cxRadioGroup, cxLabel, cxMemo, cxCheckBox, IBQuery, cxCalendar;

type
  TFrmEmpresas = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
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
    b2: TBevel;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DsEmpresas: TDataSource;
    LblTitulo: TcxLabel;
    Image1: TImage;
    actLookup: TAction;
    btnFiltrar: TdxBarButton;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    edNome: TdxDBEdit;
    EdUF: TdxDBEdit;
    EdCEP: TdxDBMaskEdit;
    Shape1: TShape;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    edEndereco: TdxDBEdit;
    edBairro: TdxDBEdit;
    edCidade: TdxDBEdit;
    dxTabSheet2: TcxTabSheet;
    Shape2: TShape;
    Label9: TcxLabel;
    Label12: TcxLabel;
    Label14: TcxLabel;
    edMensECF: TdxDBEdit;
    Label3: TcxLabel;
    edTxJurosAte: TdxDBCalcEdit;
    edTxJurosApos: TdxDBCalcEdit;
    cmbTipoJuro: TdxDBPickEdit;
    Label11: TcxLabel;
    edMensBol1: TdxDBEdit;
    edMensBol2: TdxDBEdit;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    edDtUltVenda: TdxDBDateEdit;
    edCustoVariavel: TdxDBCalcEdit;
    edVendedor: TdxDBCalcEdit;
    edPropaganda: TdxDBCalcEdit;
    edDescontos: TdxDBCalcEdit;
    dxTabSheet3: TcxTabSheet;
    Label23: TcxLabel;
    Label24: TcxLabel;
    Label25: TcxLabel;
    Label26: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    Label27: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    Label28: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    Label29: TcxLabel;
    dxDBEdit4: TdxDBEdit;
    Label30: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    Label37: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label38: TcxLabel;
    dxDBEdit6: TdxDBEdit;
    Cor: TColorDialog;
    dxTabSheet4: TcxTabSheet;
    Label53: TcxLabel;
    dxDBEdit8: TdxDBEdit;
    dxDBCheckEdit12: TdxDBCheckEdit;
    Label47: TcxLabel;
    Label49: TcxLabel;
    dxDBCheckEdit14: TdxDBCheckEdit;
    Label52: TcxLabel;
    Label46: TcxLabel;
    Label43: TcxLabel;
    dxDBCheckEdit8: TdxDBCheckEdit;
    dxDBCheckEdit10: TdxDBCheckEdit;
    Label45: TcxLabel;
    dxDBCheckEdit11: TdxDBCheckEdit;
    Label55: TcxLabel;
    CheckPDV_ECF: TdxCheckEdit;
    Label31: TcxLabel;
    Label60: TcxLabel;
    dxDBEdit10: TdxDBEdit;
    Label62: TcxLabel;
    dxDBEdit11: TdxDBEdit;
    dxTabSheet5: TcxTabSheet;
    DsCaixa: TDataSource;
    Label65: TcxLabel;
    dxDBEdit13: TdxDBEdit;
    EdCnpj: TdxDBEdit;
    Label68: TcxLabel;
    dxDBCheckEdit23: TdxDBCheckEdit;
    Label69: TcxLabel;
    dxDBEdit14: TdxDBEdit;
    Label70: TcxLabel;
    CmbTipo_Empresa: TdxDBPickEdit;
    Label71: TcxLabel;
    Label73: TcxLabel;
    dxDBCalcEdit2: TdxDBCalcEdit;
    Label74: TcxLabel;
    dxDBCalcEdit3: TdxDBCalcEdit;
    Label76: TcxLabel;
    dxDBCheckEdit27: TdxDBCheckEdit;
    Foto: TdxGraphicEdit;
    RzButton1: TCxButton;
    RzButton2: TCxButton;
    ABRE: TOpenPictureDialog;
    dxDBEdit16: TdxDBEdit;
    Label81: TcxLabel;
    dxDBPickEdit5: TdxDBPickEdit;
    Label85: TcxLabel;
    CmbTipo: TdxDBPickEdit;
    dxDBCheckEdit33: TdxDBCheckEdit;
    dxDBCheckEdit34: TdxDBCheckEdit;
    dxDBCheckEdit35: TdxDBCheckEdit;
    Label91: TcxLabel;
    dxDBEdit17: TdxDBEdit;
    dxDBEdit18: TdxDBEdit;
    Label93: TcxLabel;
    dxDBPickEdit7: TdxDBPickEdit;
    Label95: TcxLabel;
    dxDBCheckEdit37: TdxDBCheckEdit;
    Label96: TcxLabel;
    dxDBEdit19: TdxDBEdit;
    dxTabSheet6: TcxTabSheet;
    Label103: TcxLabel;
    dxDBEdit20: TdxDBEdit;
    Label112: TcxLabel;
    dxDBEdit21: TdxDBEdit;
    dxDBEdit25: TdxDBEdit;
    dxDBEdit26: TdxDBEdit;
    dxDBEdit27: TdxDBEdit;
    dxDBCheckEdit48: TdxDBCheckEdit;
    Label120: TcxLabel;
    Label132: TcxLabel;
    dxDBEdit28: TdxDBEdit;
    EDCPFCGC: TdxDBMaskEdit;
    Label133: TcxLabel;
    Label135: TcxLabel;
    EdSenha: TdxDBMaskEdit;
    dxDBCheckEdit55: TdxDBCheckEdit;
    dxDBCheckEdit56: TdxDBCheckEdit;
    Label153: TcxLabel;
    dxDBEdit35: TdxDBEdit;
    dxTabSheet7: TcxTabSheet;
    Label10: TcxLabel;
    cbAltPrcVnd: TdxDBCheckEdit;
    Label40: TcxLabel;
    dxDBCheckEdit5: TdxDBCheckEdit;
    Label21: TcxLabel;
    dxDBCheckEdit1: TdxDBCheckEdit;
    Label42: TcxLabel;
    dxDBCheckEdit7: TdxDBCheckEdit;
    Label22: TcxLabel;
    dxDBCheckEdit2: TdxDBCheckEdit;
    Label39: TcxLabel;
    dxDBCheckEdit4: TdxDBCheckEdit;
    Label48: TcxLabel;
    Label50: TcxLabel;
    dxDBCheckEdit15: TdxDBCheckEdit;
    Label51: TcxLabel;
    dxDBCheckEdit16: TdxDBCheckEdit;
    Label54: TcxLabel;
    dxDBCheckEdit17: TdxDBCheckEdit;
    dxDBCheckEdit6: TdxDBCheckEdit;
    Label113: TcxLabel;
    dxDBCheckEdit44: TdxDBCheckEdit;
    Label72: TcxLabel;
    dxDBCheckEdit25: TdxDBCheckEdit;
    dxDBCheckEdit13: TdxDBCheckEdit;
    Label151: TcxLabel;
    dxDBCheckEdit59: TdxDBCheckEdit;
    Label152: TcxLabel;
    dxDBCheckEdit60: TdxDBCheckEdit;
    dxTabSheet8: TcxTabSheet;
    dxDBCheckEdit29: TdxDBCheckEdit;
    dxDBCheckEdit30: TdxDBCheckEdit;
    dxDBCheckEdit31: TdxDBCheckEdit;
    dxDBCheckEdit32: TdxDBCheckEdit;
    dxDBCheckEdit43: TdxDBCheckEdit;
    dxDBCheckEdit42: TdxDBCheckEdit;
    dxDBCheckEdit50: TdxDBCheckEdit;
    dxDBCheckEdit49: TdxDBCheckEdit;
    dxDBCheckEdit47: TdxDBCheckEdit;
    dxDBCheckEdit52: TdxDBCheckEdit;
    dxDBCheckEdit26: TdxDBCheckEdit;
    dxDBCheckEdit21: TdxDBCheckEdit;
    Label92: TcxLabel;
    dxDBPickEdit6: TdxDBPickEdit;
    dxDBCheckEdit36: TdxDBCheckEdit;
    Label86: TcxLabel;
    CmbTipoOrc: TdxDBPickEdit;
    Label130: TcxLabel;
    dxDBCheckEdit51: TdxDBCheckEdit;
    Label109: TcxLabel;
    dxDBCheckEdit41: TdxDBCheckEdit;
    dxDBCheckEdit20: TdxDBCheckEdit;
    Label154: TcxLabel;
    dxDBCheckEdit61: TdxDBCheckEdit;
    dxTabSheet10: TcxTabSheet;
    Label148: TcxLabel;
    dxDBCalcEdit9: TdxDBCalcEdit;
    dxDBCalcEdit10: TdxDBCalcEdit;
    Label149: TcxLabel;
    dxDBCheckEdit53: TdxDBCheckEdit;
    dxDBCheckEdit54: TdxDBCheckEdit;
    Label145: TcxLabel;
    dxDBPickEdit8: TdxDBPickEdit;
    Label150: TcxLabel;
    dxDBCheckEdit58: TdxDBCheckEdit;
    Label134: TcxLabel;
    dxDBEdit29: TdxDBEdit;
    Label78: TcxLabel;
    dxDBCalcEdit4: TdxDBCalcEdit;
    dxDBCheckEdit62: TdxDBCheckEdit;
    Label156: TcxLabel;
    dxDBCheckEdit63: TdxDBCheckEdit;
    DsConfiguracoes: TDataSource;
    Label163: TcxLabel;
    dxDBEdit36: TdxDBEdit;
    Label164: TcxLabel;
    dxDBCalcEdit11: TdxDBCalcEdit;
    Label166: TcxLabel;
    dxDBCheckEdit65: TdxDBCheckEdit;
    Label167: TcxLabel;
    dxDBCheckEdit66: TdxDBCheckEdit;
    Label168: TcxLabel;
    dxDBCheckEdit67: TdxDBCheckEdit;
    dxDBCheckEdit68: TdxDBCheckEdit;
    Label170: TcxLabel;
    dxDBPickEdit9: TdxDBPickEdit;
    Label179: TcxLabel;
    dxDBEdit37: TdxDBEdit;
    Label180: TcxLabel;
    dxDBCalcEdit12: TdxDBCalcEdit;
    Label181: TcxLabel;
    dxDBCalcEdit13: TdxDBCalcEdit;
    dxDBCheckEdit70: TdxDBCheckEdit;
    Label185: TcxLabel;
    dxDBCheckEdit72: TdxDBCheckEdit;
    Label186: TcxLabel;
    dxDBEdit38: TdxDBEdit;
    Label187: TcxLabel;
    dxDBEdit39: TdxDBEdit;
    Label188: TcxLabel;
    dxDBEdit40: TdxDBEdit;
    Label189: TcxLabel;
    dxDBEdit41: TdxDBEdit;
    Label190: TcxLabel;
    dxDBCheckEdit73: TdxDBCheckEdit;
    Label191: TcxLabel;
    dxDBPickEdit11: TdxDBPickEdit;
    Label192: TcxLabel;
    dxDBCheckEdit74: TdxDBCheckEdit;
    dxDBCheckEdit75: TdxDBCheckEdit;
    Label194: TcxLabel;
    dxDBEdit42: TdxDBEdit;
    Label195: TcxLabel;
    dxDBEdit43: TdxDBEdit;
    dxDBEdit44: TdxDBEdit;
    Label196: TcxLabel;
    Label197: TcxLabel;
    dxDBEdit45: TdxDBEdit;
    Label198: TcxLabel;
    Label202: TcxLabel;
    dxDBCheckEdit76: TdxDBCheckEdit;
    Label205: TcxLabel;
    dxDBEdit50: TdxDBEdit;
    Label206: TcxLabel;
    dxDBEdit51: TdxDBEdit;
    Label203: TcxLabel;
    dxDBEdit48: TdxDBEdit;
    dxDBEdit49: TdxDBEdit;
    Label204: TcxLabel;
    Label207: TcxLabel;
    dxDBCheckEdit77: TdxDBCheckEdit;
    Label208: TcxLabel;
    dxDBCalcEdit15: TdxDBCalcEdit;
    Label209: TcxLabel;
    dxDBCheckEdit78: TdxDBCheckEdit;
    Label210: TcxLabel;
    dxDBCalcEdit16: TdxDBCalcEdit;
    Label211: TcxLabel;
    dxDBCheckEdit79: TdxDBCheckEdit;
    Label212: TcxLabel;
    Label213: TcxLabel;
    Label214: TcxLabel;
    dxDBCheckEdit80: TdxDBCheckEdit;
    Label215: TcxLabel;
    dxDBCheckEdit81: TdxDBCheckEdit;
    Label216: TcxLabel;
    dxDBCheckEdit82: TdxDBCheckEdit;
    FOTO1: TdxGraphicEdit;
    RzButton3: TCxButton;
    RzButton4: TCxButton;
    Label217: TcxLabel;
    dxDBCheckEdit83: TdxDBCheckEdit;
    Label218: TcxLabel;
    dxDBCalcEdit17: TdxDBCalcEdit;
    Label219: TcxLabel;
    dxDBCalcEdit18: TdxDBCalcEdit;
    Label59: TcxLabel;
    dxDBCheckEdit84: TdxDBCheckEdit;
    Label75: TcxLabel;
    dxDBCheckEdit87: TdxDBCheckEdit;
    Label82: TcxLabel;
    dxDBCheckEdit88: TdxDBCheckEdit;
    dxDBCheckEdit86: TdxDBCheckEdit;
    dxDBCheckEdit85: TdxDBCheckEdit;
    dxDBCheckEdit64: TdxDBCheckEdit;
    Label165: TcxLabel;
    dxDBCheckEdit69: TdxDBCheckEdit;
    dxDBCheckEdit57: TdxDBCheckEdit;
    dxDBCheckEdit46: TdxDBCheckEdit;
    dxDBCheckEdit39: TdxDBCheckEdit;
    dxDBCalcEdit7: TdxDBCalcEdit;
    Label102: TcxLabel;
    Label61: TcxLabel;
    dxDBCalcEdit5: TdxDBCalcEdit;
    dxDBCheckEdit28: TdxDBCheckEdit;
    Label8: TcxLabel;
    dxDBPickEdit1: TdxDBPickEdit;
    dxDBCheckEdit45: TdxDBCheckEdit;
    dxDBCheckEdit71: TdxDBCheckEdit;
    PDV_COR_FONTE: TdxEdit;
    OFC_COR_TELA: TdxEdit;
    PDV_COR_FUNDO: TdxEdit;
    COR_FUNDO_SEL: TdxEdit;
    SAI_COR_FUNDO_SEL: TdxEdit;
    dxDBCalcEdit6: TdxDBCalcEdit;
    Label13: TcxLabel;
    dxDBEdit7: TdxDBEdit;
    Label56: TcxLabel;
    dxDBCheckEdit3: TdxDBCheckEdit;
    edtfone: TDBEdit;
    edtfax: TDBEdit;
    dxDBCheckEdit24: TdxDBCheckEdit;
    Label57: TcxLabel;
    tbsModulos: TcxTabSheet;
    Panel2: TPanel;
    GroupBox7: TGroupBox;
    ckServico: TDBCheckBox;
    ckCobranca: TDBCheckBox;
    ckContabilidade: TDBCheckBox;
    dxDBCheckEdit89: TdxDBCheckEdit;
    Label58: TcxLabel;
    dxDBEdit65: TdxDBEdit;
    Label105: TcxLabel;
    dxDBCheckEdit90: TdxDBCheckEdit;
    Label44: TcxLabel;
    dxDBCheckEdit9: TdxDBCheckEdit;
    dxDBCheckEdit92: TdxDBCheckEdit;
    dxDBEdit67: TdxDBEdit;
    Label116: TcxLabel;
    dxDBEdit68: TdxDBEdit;
    Label118: TcxLabel;
    GroupBox12: TGroupBox;
    dsProdutos: TDataSource;
    ckReceituario: TDBCheckBox;
    dxDBEdit69: TdxDBEdit;
    Label121: TcxLabel;
    cmbCidade: TdxDBLookupEdit;
    btnCidade: TcxButton;
    cmbBairro: TdxDBLookupEdit;
    btnBairro: TcxButton;
    btnLogradouro: TcxButton;
    dxDBMaskEdit1: TdxDBMaskEdit;
    cmbLogradouro: TdxDBLookupEdit;
    dsCidades: TDataSource;
    dsLogradouros: TDataSource;
    dsBairros: TDataSource;
    DBCheckBox1: TDBCheckBox;
    ckMesas: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    GroupBox6: TGroupBox;
    dxDBEdit70: TdxDBEdit;
    Label122: TcxLabel;
    cmbOrigem: TdxDBPickEdit;
    Label123: TcxLabel;
    dxDBPickEdit2: TdxDBPickEdit;
    Label124: TcxLabel;
    Label125: TcxLabel;
    dxDBPickEdit3: TdxDBPickEdit;
    dxDBCheckEdit18: TdxDBCheckEdit;
    GroupBox13: TGroupBox;
    ckCMagr: TDBCheckBox;
    ckCMVDT: TDBCheckBox;
    edtpctlucro: TdxDBCalcEdit;
    Label126: TcxLabel;
    dxDBEdit71: TdxDBEdit;
    Label127: TcxLabel;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    tbsNFe: TcxTabSheet;
    GroupBox15: TGroupBox;
    tbsNFeEmitente: TPageControl;
    tbsNFeCertificado: TTabSheet;
    GroupBox16: TGroupBox;
    lblCaminho: TcxLabel;
    lblSenha: TcxLabel;
    sbtnCaminhoCert: TcxButton;
    lblSerie: TcxLabel;
    sbtnGetCert: TcxButton;
    edtCaminho: TDBEdit;
    edtSenha: TDBEdit;
    edtNumSerie: TDBEdit;
    tbsNFeGeral: TTabSheet;
    GroupBox17: TGroupBox;
    Label143: TcxLabel;
    sbtnLogoMarca: TcxButton;
    sbtnPathSalvar: TcxButton;
    edtLogoMarca: TDBEdit;
    edtPathLogs: TDBEdit;
    ckSalvar: TCheckBox;
    rgTipoDanfe: TDBRadioGroup;
    rgFormaEmissao: TDBRadioGroup;
    tbsNFeWebService: TTabSheet;
    TabSheet4: TTabSheet;
    Label158: TcxLabel;
    Label159: TcxLabel;
    Label160: TcxLabel;
    Label161: TcxLabel;
    Label162: TcxLabel;
    Label169: TcxLabel;
    Label171: TcxLabel;
    Label172: TcxLabel;
    Label173: TcxLabel;
    Label174: TcxLabel;
    Label175: TcxLabel;
    Label176: TcxLabel;
    Label177: TcxLabel;
    OpenDialog1: TOpenDialog;
    dsForma: TDataSource;
    TabSheet1: TTabSheet;
    GroupBox19: TGroupBox;
    Label178: TcxLabel;
    Label182: TcxLabel;
    Label183: TcxLabel;
    Label184: TcxLabel;
    cbEmailSSL: TDBCheckBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBCheckBox7: TDBCheckBox;
    dxTabSheet9: TcxTabSheet;
    GroupBox11: TGroupBox;
    Label108: TcxLabel;
    dxDBCheckEdit91: TdxDBCheckEdit;
    GroupBox21: TGroupBox;
    dxDBCalcEdit19: TdxDBCalcEdit;
    Label140: TcxLabel;
    Label110: TcxLabel;
    dxDBCalcEdit20: TdxDBCalcEdit;
    dxDBCheckEdit19: TdxDBCheckEdit;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    Panel4: TPanel;
    GroupBox18: TGroupBox;
    Label144: TcxLabel;
    ckVisualizar: TCheckBox;
    cbUF: TDBComboBox;
    rgTipoAmb: TDBRadioGroup;
    gbProxy: TGroupBox;
    Label146: TcxLabel;
    Label147: TcxLabel;
    Label155: TcxLabel;
    Label157: TcxLabel;
    edtProxyHost: TDBEdit;
    edtProxySenha: TDBEdit;
    DBEdit2: TDBEdit;
    btnStatusServ: TcxButton;
    cxGroupBox2: TcxGroupBox;
    DBRadioGroup2: TDBRadioGroup;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DataSource1: TDataSource;
    DBCheckBox8: TDBCheckBox;
    dxDBCheckEdit93: TdxDBCheckEdit;
    ImageList1: TImageList;
    dxDBCheckEdit94: TdxDBCheckEdit;
    Label41: TcxLabel;
    DBCheckBox9: TDBCheckBox;
    dxDBCheckEdit95: TdxDBCheckEdit;
    dxDBCheckEdit96: TdxDBCheckEdit;
    Label141: TcxLabel;
    dxDBCheckEdit97: TdxDBCheckEdit;
    dxTabSheet12: TcxTabSheet;
    GroupBox20: TGroupBox;
    Label142: TcxLabel;
    dxDBEdit59: TdxDBEdit;
    dxDBSpinEdit1: TdxDBSpinEdit;
    Label193: TcxLabel;
    dxDBEdit78: TdxDBEdit;
    Label199: TcxLabel;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    dxDBCheckEdit98: TdxDBCheckEdit;
    dxDBCheckEdit99: TdxDBCheckEdit;
    dxDBCheckEdit100: TdxDBCheckEdit;
    DBCheckBox13: TDBCheckBox;
    btnInutilizar: TcxButton;
    btnForma: TcxButton;
    cmbForma: TdxDBLookupEdit;
    cmbProduto: TdxDBLookupEdit;
    btnProduto: TcxButton;
    Label119: TcxLabel;
    Label139: TcxLabel;
    DBCheckBox14: TDBCheckBox;
    DBEdit1: TDBEdit;
    Label200: TcxLabel;
    cbTipoTributacao: TcxDBComboBox;
    Label201: TcxLabel;
    Label220: TcxLabel;
    dxDBEdit79: TdxDBEdit;
    Label221: TcxLabel;
    GroupBox14: TGroupBox;
    Label128: TcxLabel;
    Label129: TcxLabel;
    Label137: TcxLabel;
    Label138: TcxLabel;
    Label131: TcxLabel;
    Label136: TcxLabel;
    dxDBEdit72: TdxDBEdit;
    dxDBEdit73: TdxDBEdit;
    dxDBEdit76: TdxDBEdit;
    dxDBEdit77: TdxDBEdit;
    dxDBEdit74: TdxDBEdit;
    dxDBEdit75: TdxDBEdit;
    GroupBox22: TGroupBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel6: TcxLabel;
    dxDBEdit80: TdxDBEdit;
    dxDBEdit81: TdxDBEdit;
    dxDBEdit82: TdxDBEdit;
    dxDBEdit83: TdxDBEdit;
    cxDBMemo2: TcxDBMemo;
    DBCheckBox15: TDBCheckBox;
    TabSheet2: TTabSheet;
    cxButton1: TcxButton;
    DBEdit20: TDBEdit;
    cxLabel5: TcxLabel;
    dsNaturezas: TDataSource;
    btnNatureza: TcxButton;
    cmbNatureza: TdxDBLookupEdit;
    cxLabel7: TcxLabel;
    SelNatureza: TIBQuery;
    SelNaturezaCODIGO: TIntegerField;
    SelNaturezaNOME: TIBStringField;
    SelNaturezaPERC_ICMS: TFloatField;
    SelNaturezaINTERESTADUAL: TIBStringField;
    cxButton2: TcxButton;
    cmbNatureza2: TdxDBLookupEdit;
    cxLabel8: TcxLabel;
    dsNaturezas2: TDataSource;
    SelNatureza2: TIBQuery;
    SelNatureza2CODIGO: TIntegerField;
    SelNatureza2NOME: TIBStringField;
    SelNatureza2PERC_ICMS: TFloatField;
    SelNatureza2INTERESTADUAL: TIBStringField;
    DBCheckBox24: TDBCheckBox;
    tbsObras: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    cxLabel9: TcxLabel;
    dxDBCalcEdit14: TdxDBCalcEdit;
    cxLabel10: TcxLabel;
    SelCentroINSS: TIBQuery;
    dsCentroINSS: TDataSource;
    btnCentroINSS: TcxButton;
    cmbCentroINSS: TdxDBLookupEdit;
    btnCentroIRPJ: TcxButton;
    cmbCentroIRPJ: TdxDBLookupEdit;
    dxDBCalcEdit8: TdxDBCalcEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    btnCentroPIS: TcxButton;
    cmbCentroPIS: TdxDBLookupEdit;
    dxDBCalcEdit21: TdxDBCalcEdit;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    btnCentroISS: TcxButton;
    cmbCentroISS: TdxDBLookupEdit;
    cxLabel15: TcxLabel;
    dxDBCalcEdit22: TdxDBCalcEdit;
    cxLabel16: TcxLabel;
    btnCentroCOFINS: TcxButton;
    cmbCentroCOFINS: TdxDBLookupEdit;
    dxDBCalcEdit23: TdxDBCalcEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    btnCentroCSLL: TcxButton;
    cmbCentroCSLL: TdxDBLookupEdit;
    dxDBCalcEdit24: TdxDBCalcEdit;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    SelCentroIRPJ: TIBQuery;
    dsCentroIRPJ: TDataSource;
    SelCentroISS: TIBQuery;
    dsCentroISS: TDataSource;
    SelCentroPIS: TIBQuery;
    dsCentroPIS: TDataSource;
    SelCentroCOFINS: TIBQuery;
    dsCentroCOFINS: TDataSource;
    SelCentroCSLL: TIBQuery;
    dsCentroCSLL: TDataSource;
    SelCentroCSLLCODIGO: TIntegerField;
    SelCentroCSLLNOME: TIBStringField;
    SelCentroCOFINSCODIGO: TIntegerField;
    SelCentroCOFINSNOME: TIBStringField;
    SelCentroPISCODIGO: TIntegerField;
    SelCentroPISNOME: TIBStringField;
    SelCentroISSCODIGO: TIntegerField;
    SelCentroISSNOME: TIBStringField;
    SelCentroIRPJCODIGO: TIntegerField;
    SelCentroIRPJNOME: TIBStringField;
    SelCentroINSSCODIGO: TIntegerField;
    SelCentroINSSNOME: TIBStringField;
    dxDBCalcEdit25: TdxDBCalcEdit;
    cxLabel21: TcxLabel;
    dxDBCalcEdit26: TdxDBCalcEdit;
    cxLabel22: TcxLabel;
    dxDBCalcEdit27: TdxDBCalcEdit;
    cxLabel23: TcxLabel;
    dxDBCalcEdit28: TdxDBCalcEdit;
    cxLabel24: TcxLabel;
    dxDBCalcEdit29: TdxDBCalcEdit;
    cxLabel25: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel26: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DsEmpresasStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure ActNextPageExecute(Sender: TObject);
    procedure ActPreviousPageExecute(Sender: TObject);
    procedure EdCnpjKeyPress(Sender: TObject; var Key: Char);
    procedure cmbTipoJuroEnter(Sender: TObject);
    procedure COR_FUNDO_SELECIONADOEnter(Sender: TObject);
    procedure COR_FUNDO_DESELECIONADOEnter(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure dxTabSheet1Enter(Sender: TObject);
    procedure OFC_COR_TELAEnter(Sender: TObject);
    procedure dxDBEdit47Enter(Sender: TObject);
    procedure PDV_COR_FUNDO1Enter(Sender: TObject);
    procedure PDV_COR_FONTEEnter(Sender: TObject);
    procedure RzButton3Click(Sender: TObject);
    procedure RzButton4Click(Sender: TObject);
    procedure PDV_COR_FUNDOEnter(Sender: TObject);
    procedure CheckPDV_ECFClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure btnLogradouroClick(Sender: TObject);
    procedure btnBairroClick(Sender: TObject);
    procedure btnCidadeClick(Sender: TObject);
    procedure ckCMVDTExit(Sender: TObject);
    procedure btnFormaClick(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure btnStatusServClick(Sender: TObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure pcChange(Sender: TObject);
    procedure btnInutilizarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure btnNaturezaClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure SelNatureza2BeforeOpen(DataSet: TDataSet);
    procedure SelNaturezaBeforeOpen(DataSet: TDataSet);
    procedure btnCentroINSSClick(Sender: TObject);
    procedure btnCentroIRPJClick(Sender: TObject);
    procedure btnCentroISSClick(Sender: TObject);
    procedure btnCentroPISClick(Sender: TObject);
    procedure btnCentroCOFINSClick(Sender: TObject);
    procedure btnCentroCSLLClick(Sender: TObject);
    procedure SelCentroINSSBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;
    procedure GetPDV_ECF;
    procedure SetINI(grupo,campo,valor:string);
    procedure GetCores;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
  public
    { Public declarations }
    Retorno: Integer;
    CamposOrdemServico :string;
    ModulosManager  :string;
//    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
  end;

var
  FrmEmpresas: TFrmEmpresas;

implementation

uses Empresas_DM, Application_DM, Main, Usuarios_DM, Funcoes, Cadastros_DM,
  Produtos_Form, Logradouros_Form, Bairros_Form, Cidades_Form,
  FormasPagto_Form, Ordens_Servicos_Form, NaturezaOper_Form,
  Centro_Custo_Form;

const
  SELDIRHELP = 1000;  

{$R *.DFM}



procedure TFrmEmpresas.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'temp.xml');
end;

procedure TFrmEmpresas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DsConfiguracoes.Dataset.Close;

     DsEmpresas.DataSet.Close;



     //pdv
     DsCaixa.Dataset.Close ;
     DmEmpresas.SelUsuario.Close ;

     DMEmpresas.Free;
     DMEmpresas := Nil;
       //
     Action := caFree;
     FrmEmpresas := Nil;

     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmEmpresas.ActIncluirExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
     Exit;
  Try
    Navigator.DataSource.DataSet.Append;
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
  EdCnpj.SetFocus;
end;

procedure TFrmEmpresas.ActExcluirExecute(Sender: TObject);
begin
  //
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta Empresa ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     Begin
       Navigator.DataSource.Dataset.Delete;
       DMApp.Transaction.CommitRetaining;
     End;
end;

procedure TFrmEmpresas.ActPostExecute(Sender: TObject);
begin
  with dmEmpresas do
  begin
    If dmEmpresas.Empresas.State in [ dsedit, dsinsert ] then
      Empresas.Post;


    If DmApp.Configuracoes.State in [ dsedit, dsinsert ]  then
    begin
        DmApp.ConfiguracoesOS_CONFIG_CAMPOS.Value := CamposOrdemServico;
        DmApp.Configuracoes.Post;
    end;

    If Configuracoes.State in [ dsedit, dsinsert ]  then
       Configuracoes.Post;

  end;

  DMApp.Transaction.CommitRetaining;
  dmapp.SetForm;
end;

procedure TFrmEmpresas.ActCancelExecute(Sender: TObject);
begin
  If DsEmpresas.DataSet.State in dsEditModes Then
     DsEmpresas.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmEmpresas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
    if not(DsEmpresas.DataSet.Active) Then
       DsEmpresas.DataSet.Open;

    If Not(DsCaixa.DataSet.Active) Then
       DsCaixa.DataSet.Open;

   { If Not(DsForma.DataSet.Active) Then
       DsForma.DataSet.Open;}

    If Not(DmEmpresas.SelUsuario.Active) Then
       DmEmpresas.SelUsuario.Open;

    SelCentroINSS.Close;
    SelCentroINSS.Open;

    SelCentroPIS.Close;
    SelCentroPIS.Open;

    SelCentroISS.Close;
    SelCentroISS.Open;

    SelCentroINSS.Close;
    SelCentroINSS.Open;

    SelCentroIRPJ.Close;
    SelCentroIRPJ.Open;

    SelCentroCOFINS.Close;
    SelCentroCOFINS.Open;

    SelCentroCSLL.Close;
    SelCentroCSLL.Open;

    SelNatureza.Close;
    SelNatureza.Open;

    SelNatureza2.Close;
    SelNatureza2.Open;
    
    with DMEmpresas do
    begin
      SelProdutos.Close;
      SelProdutos.Open;
    end;

    with DMCadastros do
    begin
      Bairros.Close;
      Bairros.Open;
      Logradouros.Close;
      Logradouros.Open;
      Cidades.Close;
      Cidades.Open;
    end;

  if (ckCMVDT.checked) then
    edtpctlucro.Enabled := true
  else
    edtpctlucro.Enabled := false;
    
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

  If Not(DsConfiguracoes.DataSet.Active) Then
   DsConfiguracoes.DataSet.Open;

  GetCores;
  GetPDV_ECF;
  DsEmpresas.AutoEdit := ActAlterar.Enabled;
  pc.ActivePageIndex  := 0;
  EdCnpj.SetFocus;

  {$IFDEF ACBrNFeOpenSSL}
    FrmEmpresas.edtNumSerie.Visible := False;
    FrmEmpresas.lblSerie.Visible := False;
    FrmEmpresas.sbtnGetCert.Visible := False;
  {$ELSE}
    FrmEmpresas.lblcaminho.Caption := 'Informe o número de série do certificado'#13+
                                   'Disponível no Internet Explorer no menu'#13+
                                   'Ferramentas - Opções da Internet - Conteúdo '#13+
                                   'Certificados - Exibir - Detalhes - '#13+
                                   'Número do certificado';
                 FrmEmpresas.lblsenha.Visible := False;
                 FrmEmpresas.edtCaminho.Visible := False;
                 FrmEmpresas.edtSenha.Visible   := False;
                 FrmEmpresas.sbtnCaminhoCert.Visible := False; 
  {$ENDIF}
end;

procedure TFrmEmpresas.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmEmpresas.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmEmpresas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmEmpresas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEmpresas.DsEmpresasStateChange(Sender: TObject);
begin
  If ( DsEmpresas.State in dsEditModes ) or ( DsConfiguracoes.State in dsEditModes )
  Then Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
       ActPost.Enabled    := True;
       ActCancel.Enabled    := True;

     ActFechar.Enabled    := False;
  End
  Else Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True;
       ActListagem.Enabled  := ActListagem.Tag = 1;
       ActPost.Enabled    := false;
       ActCancel.Enabled    := false;
      ActFechar.Enabled    := True;
  End;
end;

procedure TFrmEmpresas.ActFecharExecute(Sender: TObject);
begin
{ If FrmEmpresas.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else}

  Close;
end;

procedure TFrmEmpresas.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmEmpresas.ActNextPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex <= 3 Then
     pc.ActivePageIndex := pc.ActivePageIndex + 1
end;

procedure TFrmEmpresas.ActPreviousPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex > 0 Then
     pc.ActivePageIndex := pc.ActivePageIndex - 1
end;

procedure TFrmEmpresas.EdCnpjKeyPress(Sender: TObject; var Key: Char);
Var i: Integer;
begin
  Try
    i := StrToInt(Key);
  Except
    Key := #0;
  End;
end;

procedure TFrmEmpresas.cmbTipoJuroEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
//  cmbTipoJuroEnter
end;

procedure TFrmEmpresas.COR_FUNDO_SELECIONADOEnter(Sender: TObject);
begin
     if Cor.Execute
     then begin
          If Not ( DsEmpresas.State in [ DsInsert, DsEdit ] )
          then
              dsEmpresas.DataSet.Edit ;

          dsEmpresas.DataSet.FieldByName ( 'COR_FUNDO_SELECIONADO' ).AsString := IntToStr(Cor.Color) ;
     end;
end;

procedure TFrmEmpresas.COR_FUNDO_DESELECIONADOEnter(Sender: TObject);
begin
     if Cor.Execute
     then begin
          If Not ( DsEmpresas.State in [ DsInsert, DsEdit ] )
          then
              DsEmpresas.DataSet.Edit ;

          DsEmpresas.DataSet.FieldByName ( 'COR_FUNDO_DESELECIONADO' ).AsString := IntToStr(Cor.Color) ;
     end;

end;

procedure TFrmEmpresas.RzButton1Click(Sender: TObject);
begin
     IF NOT ( DMEmpresas.Empresas.STATE IN [ DSINSERT, DSEDIT ] )
     THEN
         DMEmpresas.Empresas.Edit ;

     IF ABRE.Execute
     THEN BEGIN
          DMEmpresas.EmpresasFoto.Value := ABRE.FileName ;
          Foto.Picture.LoadFromFile (DMEmpresas.EmpresasFOto.VALUE);
     END;
end;

procedure TFrmEmpresas.RzButton2Click(Sender: TObject);
begin
     IF NOT ( DMEmpresas.Empresas.STATE IN [ DSINSERT, DSEDIT ] )
     THEN
         DMEmpresas.Empresas.Edit ;

     DMEmpresas.EmpresasFoto.clear ;

     FOTO1.Picture := nil ;
end;

procedure TFrmEmpresas.dxTabSheet1Enter(Sender: TObject);
begin
     if trim(DMEmpresas.EmpresasFOto.VALUE) <> ''  then
       Foto.Picture.LoadFromFile (DMEmpresas.EmpresasFOto.VALUE);

     if trim(DMEmpresas.ConfiguracoesPdv_Foto_Fundo.VALUE) <> ''  then
       Foto1.Picture.LoadFromFile (DMEmpresas.ConfiguracoesPdv_Foto_Fundo.VALUE);
end;

procedure TFrmEmpresas.OFC_COR_TELAEnter(Sender: TObject);
begin
     if Cor.Execute
     then begin
          If Not (DsConfiguracoes.State in [ DsInsert, DsEdit ]) then
              DsConfiguracoes.DataSet.Edit ;

          DsConfiguracoes.DataSet.FieldByName ( 'OFC_COR_TELA' ).AsString := IntToStr(Cor.Color) ;
     end;
end;

procedure TFrmEmpresas.dxDBEdit47Enter(Sender: TObject);
begin
     if ABRE.Execute
     then begin
          If Not ( DsConfiguracoes.State in [ DsInsert, DsEdit ] )
          then
              DsConfiguracoes.DataSet.Edit ;

          DsConfiguracoes.DataSet.FieldByName ( 'PST_CAMINHO_BOMBAS' ).AsString := ABRE.FileName ;
     end;
end;

procedure TFrmEmpresas.PDV_COR_FUNDO1Enter(Sender: TObject);
begin
     if Cor.Execute  then
     begin
       SetINI('cores',TDxDBEdit(Sender).name,IntToStr(Cor.Color));
          {If Not ( DsConfiguracoes.State in [ DsInsert, DsEdit ] ) then
              DsConfiguracoes.DataSet.Edit ;

          DsConfiguracoes.DataSet.FieldByName ( 'PDV_COR_FUNDO' ).AsString := IntToStr(Cor.Color) ;}
     end;
end;

procedure TFrmEmpresas.PDV_COR_FONTEEnter(Sender: TObject);
begin
     if Cor.Execute
     then begin
          If Not ( DsConfiguracoes.State in [ DsInsert, DsEdit ] )
          then
              DsConfiguracoes.DataSet.Edit ;

          DsConfiguracoes.DataSet.FieldByName ( 'PDV_COR_FONTE' ).AsString := IntToStr(Cor.Color) ;
     end;
end;

procedure TFrmEmpresas.RzButton3Click(Sender: TObject);
begin
     IF NOT ( DMEmpresas.Configuracoes.STATE IN [ DSINSERT, DSEDIT ] )
     THEN
         DMEmpresas.Configuracoes.Edit ;

     IF ABRE.Execute
     THEN BEGIN
          DMEmpresas.ConfiguracoesPdv_Foto_Fundo.Value := ABRE.FileName ;
          Foto1.Picture.LoadFromFile (DMEmpresas.ConfiguracoesPdv_Foto_Fundo.VALUE);
     END;
end;

procedure TFrmEmpresas.RzButton4Click(Sender: TObject);
begin
     IF NOT ( DMEmpresas.Configuracoes.STATE IN [ DSINSERT, DSEDIT ] )
     THEN
         DMEmpresas.Configuracoes.Edit ;

     DMEmpresas.ConfiguracoesPdv_Foto_Fundo.clear ;

     FOTO1.Picture := nil ;
end;

procedure TFrmEmpresas.SetINI(grupo, campo, valor: string);
Var
  Caminho: String;
  Config: TIniFile;
begin
  Caminho := ExtractFilePath(Application.Exename);
  If Copy(Caminho, Length(Caminho), 1) <> '\' Then
     Caminho := Caminho + '\';

  If fileExists(Caminho + 'HelpStore.ini') Then
  begin
    config := TIniFile.Create(Caminho + 'HelpStore.ini');
    config.writestring(grupo,campo,valor);
    Config.Free;
  end;
end;

procedure TFrmEmpresas.PDV_COR_FUNDOEnter(Sender: TObject);
begin
  if Cor.Execute  then
  begin
    SetINI('cores',TDxEdit(Sender).name,IntToStr(Cor.Color));
    TDxEdit(Sender).text := IntToStr(Cor.Color);
  end;
end;

procedure TFrmEmpresas.GetCores;
begin
  PDV_COR_FUNDO.text := dmapp.PDV_COR_FUNDO;
  PDV_COR_FONTE.text := dmapp.PDV_COR_FONTE;
  OFC_COR_TELA.text := dmapp.OFC_COR_TELA;
  COR_FUNDO_SEL.text := dmapp.COR_FUNDO_SEL;
  SAI_COR_FUNDO_SEL.text := dmapp.SAI_COR_FUNDO_SEL
end;

procedure TFrmEmpresas.GetPDV_ECF;
begin
 if DMApp.PDV_ECF = 'S' then
   CheckPDV_ECF.Checked := true
 else
   CheckPDV_ECF.Checked := false;
end;

procedure TFrmEmpresas.CheckPDV_ECFClick(Sender: TObject);
begin
  if (CheckPDV_ECF.Checked) then
  begin
    DMApp.PDV_ECF := 'S';
    SetINI('PDV','PDV_ECF','S');
  end
  else
  begin
    DMApp.PDV_ECF := 'S';
    SetINI('PDV','PDV_ECF','N');
  end;
end;

procedure TFrmEmpresas.btnProdutoClick(Sender: TObject);
begin
  If DsEmpresas.DataSet.State = dsBrowse Then
     DsEmpresas.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmProdutos', False);

  FrmProdutos := TFrmProdutos.Create(Self);

  FrmProdutos.ShowModal;
  with DMCadastros do
  begin
    SelProdutos.Close;
    SelProdutos.Open;
  end;

  DsEmpresas.DataSet.FieldByName('OFC_LT_PRODUTO_COPIAS').value := FrmMain.Codigo_str ;
  FrmProdutos.Free;
  FrmProdutos := Nil;
  cmbProduto.SetFocus;
end;

procedure TFrmEmpresas.actLookupExecute(Sender: TObject);
begin
  If FrmEmpresas.ActiveControl = cmbLogradouro Then
     btnLogradouro.OnClick(btnLogradouro);
  If FrmEmpresas.ActiveControl = cmbBairro Then
     btnBairro.OnClick(btnBairro);
  If FrmEmpresas.ActiveControl = cmbCidade Then
     btnCidade.OnClick(btnCidade);
  If FrmEmpresas.ActiveControl = cmbCentroINSS Then
     btnCentroINSS.OnClick(btnCentroINSS);
  If FrmEmpresas.ActiveControl = cmbCentroIRPJ Then
     btnCentroIRPJ.OnClick(btnCentroIRPJ);
  If FrmEmpresas.ActiveControl = cmbCentroISS Then
     btnCentroISS.OnClick(btnCentroISS);
  If FrmEmpresas.ActiveControl = cmbCentroPIS Then
     btnCentroPIS.OnClick(btnCentroPIS);
  If FrmEmpresas.ActiveControl = cmbCentroCOFINS Then
     btnCentroCOFINS.OnClick(btnCentroCOFINS);
  If FrmEmpresas.ActiveControl = cmbCentroCSLL Then
     btnCentroCSLL.OnClick(btnCentroCSLL);


end;

procedure TFrmEmpresas.btnLogradouroClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If DsEmpresas.DataSet.State = dsBrowse Then
     DsEmpresas.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLogradouros', False);
  FrmLogradouros := TFrmLogradouros.Create(Self);
  FrmLogradouros.ShowModal;

  dsLogradouros.Dataset.Close;
  dsLogradouros.Dataset.Open;

  DsEmpresas.DataSet.FieldByName('COD_LOGRADOURO').asInteger := FrmMain.Codigo_Int;

  FrmLogradouros.Free;
  FrmLogradouros := Nil;
  cmbLogradouro.SetFocus;
end;

procedure TFrmEmpresas.btnBairroClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If DsEmpresas.DataSet.State = dsBrowse Then
     DsEmpresas.DataSet.Edit;


  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBairros', False);

  FrmBairros := TFrmBairros.Create(Self);

  FrmBairros.ShowModal;
  dsBairros.Dataset.Close;
  dsBairros.Dataset.Open;

  DsEmpresas.DataSet.FieldByName('COD_BAIRRO').asInteger := FrmMain.Codigo_Int;

  FrmBairros.Free;
  FrmBairros := Nil;

  cmbBairro.SetFocus;
end;

procedure TFrmEmpresas.btnCidadeClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If DsEmpresas.DataSet.State = dsBrowse Then
     DsEmpresas.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCidades', False);

  FrmCidades := TFrmCidades.Create(Self);
  FrmCidades.ShowModal;
  dsCidades.Dataset.Close;
  dsCidades.Dataset.Open;

  DsEmpresas.DataSet.FieldByName('COD_CIDADE').asInteger := FrmMain.Codigo_Int;

  FrmCidades.Free;
  FrmCidades := Nil;
  cmbCidade.SetFocus;
end;

procedure TFrmEmpresas.ckCMVDTExit(Sender: TObject);
begin
  if (ckCMVDT.checked) then
    edtpctlucro.Enabled := true
  else
    edtpctlucro.Enabled := false;
end;

procedure TFrmEmpresas.btnFormaClick(Sender: TObject);
begin
  If DsEmpresas.DataSet.State = dsBrowse Then
     DsEmpresas.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFormasPagto', False);


  DsForma.DataSet.Tag := DsForma.DataSet.Tag + 1;

  //
  FrmFormasPagto := TFrmFormasPagto.Create(Application);
  FrmFormasPagto.Showmodal ;

  DsEmpresas.DataSet.FieldByName('FORMA_PAGTO_MENSALIDADE').asInteger := FrmMain.Codigo_Int;

  DsForma.DataSet.Tag := DsForma.DataSet.Tag - 1;
  cmbForma.SetFocus;
  DsForma.DataSet.Close;
  DsForma.DataSet.Open;
end;

procedure TFrmEmpresas.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure TFrmEmpresas.sbtnGetCertClick(Sender: TObject);
begin
 {$IFNDEF ACBrNFeOpenSSL}
 edtNumSerie.Text := dmapp.ACBrNFe.Configuracoes.Certificados.SelecionarCertificado;
 {$ENDIF}
end;

procedure TFrmEmpresas.sbtnLogoMarcaClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtLogoMarca.Text := OpenDialog1.FileName;
  end;
end;

procedure TFrmEmpresas.sbtnPathSalvarClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(edtPathLogs.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := edtPathLogs.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    edtPathLogs.Text := Dir;
end;

procedure TFrmEmpresas.btnStatusServClick(Sender: TObject);
begin
 with dmApp do
 begin
     // NF-e 3.10
  ACBRNFE.Configuracoes.Geral.ModeloDF := moNFe; // moNFe ou moNFCe
  ACBRNFE.Configuracoes.Geral.VersaoDF := ve310;   // Versão 3.10 
   dmApp.ACBrNFe.WebServices.StatusServico.Executar;
   MemoResp.Lines.Text := UTF8Encode(dmApp.ACBrNFe.WebServices.StatusServico.RetWS);
   LoadXML(MemoResp, WBResposta);
 end;
end;

procedure TFrmEmpresas.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
    {if not(DmApp.Configuracoes.State in dsEditModes) then
        DmApp.Configuracoes.Edit;
    column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);

    if (State = cbsChecked) then
        CamposOrdemServico := StringReplace(CamposOrdemServico, TLCustomize.FocusedNode.Values[TLCustomizeColumn.Index]+',', '',[rfReplaceAll])
    else
        CamposOrdemServico := CamposOrdemServico + TLCustomize.FocusedNode.Values[TLCustomizeColumn.Index]+',';}
end;

procedure TFrmEmpresas.pcChange(Sender: TObject);
begin
    if pc.ActivePage.TabIndex = 12 then
      btnIncluir.Enabled := False
    else
      btnIncluir.Enabled := True;
end;

procedure TFrmEmpresas.btnInutilizarClick(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
 if not(InputQuery('WebServices Inutilização ', 'Ano',    Ano)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Serie',  Serie)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroFinal)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa)) then
    exit;

  dmApp.ACBrNFe.WebServices.Inutiliza(DMEmpresas.EmpresasNFE_EMIT_CNPJ.AsString, Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));

  MemoResp.Lines.Text :=  UTF8Encode(dmApp.ACBrNFe.WebServices.Inutilizacao.RetWS);
  LoadXML(MemoResp, WBResposta);
end;

procedure TFrmEmpresas.cxButton1Click(Sender: TObject);
var
  Dir: string;
begin
  if Length(edtPathLogs.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := edtPathLogs.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
  begin
    with DMEmpresas do
    begin
      Empresas.edit;
      EmpresasNFE_ENT_PATH_IMPORTACAO.value := Dir;
    end;
  end;

end;

procedure TFrmEmpresas.btnNaturezaClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If DsEmpresas.DataSet.State = dsBrowse Then
     DsEmpresas.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmNaturezaOper', False);
  FrmNaturezaOper := TFrmNaturezaOper.Create(Application);

  FrmNaturezaOper.Showmodal ;
  with dmEmpresas do
  begin
    Empresas.Edit;
    EmpresasNFE_ENT_CFOP_IMPORTACAO.value := FrmMain.Codigo_Int;
  end;

  cmbNatureza.SetFocus;
  SelNatureza.Close;
  SelNatureza.Open ;
end;

procedure TFrmEmpresas.cxButton2Click(Sender: TObject);
begin
    If ActAlterar.Tag = 0 Then
     Exit;

  If DsEmpresas.DataSet.State = dsBrowse Then
     DsEmpresas.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmNaturezaOper', False);
  FrmNaturezaOper := TFrmNaturezaOper.Create(Application);

  FrmNaturezaOper.Showmodal ;
  with dmEmpresas do
  begin
    Empresas.Edit;
    EmpresasNFE_ENT_CFOP_IMPORTACAO_INT.value := FrmMain.Codigo_Int;
  end;

  cmbNatureza2.SetFocus;
  SelNatureza2.Close;
  SelNatureza2.Open ;
end;

procedure TFrmEmpresas.SelNatureza2BeforeOpen(DataSet: TDataSet);
begin
  SelNatureza2.parambyname('cnpj').value := dmApp.cnpj;
end;

procedure TFrmEmpresas.SelNaturezaBeforeOpen(DataSet: TDataSet);
begin
  SelNatureza.parambyname('cnpj').value := dmApp.cnpj;
end;

procedure TFrmEmpresas.btnCentroINSSClick(Sender: TObject);
begin
  if ActAlterar.Tag = 0 Then
    Exit;

  If DsEmpresas.DataSet.State = dsBrowse Then
     DsEmpresas.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCCusto', False);
  FrmCCusto := TFrmCCusto.Create(Self);
  FrmCCusto.ShowModal;
  DsEmpresas.DataSet.FieldByName('CC_INSS').asInteger := FrmMain.Codigo_Int;
  FrmCCusto.Free;
  FrmCCusto := Nil;

  dsCentroINSS.DataSet.Close ;
  dsCentroINSS.DataSet.Open  ;
  cmbCentroINSS.SetFocus;

end;

procedure TFrmEmpresas.btnCentroIRPJClick(Sender: TObject);
begin
  if ActAlterar.Tag = 0 Then
    Exit;

  If DsEmpresas.DataSet.State = dsBrowse Then
     DsEmpresas.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCCusto', False);
  FrmCCusto := TFrmCCusto.Create(Self);
  FrmCCusto.ShowModal;
  DsEmpresas.DataSet.FieldByName('CC_IRPJ').asInteger := FrmMain.Codigo_Int;
  FrmCCusto.Free;
  FrmCCusto := Nil;

  dsCentroIRPJ.DataSet.Close ;
  dsCentroIRPJ.DataSet.Open  ;
  cmbCentroIRPJ.SetFocus;
end;

procedure TFrmEmpresas.btnCentroISSClick(Sender: TObject);
begin
  if ActAlterar.Tag = 0 Then
    Exit;

  If DsEmpresas.DataSet.State = dsBrowse Then
     DsEmpresas.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCCusto', False);
  FrmCCusto := TFrmCCusto.Create(Self);
  FrmCCusto.ShowModal;
  DsEmpresas.DataSet.FieldByName('CC_ISS').asInteger := FrmMain.Codigo_Int;
  FrmCCusto.Free;
  FrmCCusto := Nil;

  dsCentroISS.DataSet.Close ;
  dsCentroISS.DataSet.Open  ;
  cmbCentroISS.SetFocus;
end;

procedure TFrmEmpresas.btnCentroPISClick(Sender: TObject);
begin
  if ActAlterar.Tag = 0 Then
    Exit;

  If DsEmpresas.DataSet.State = dsBrowse Then
     DsEmpresas.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCCusto', False);
  FrmCCusto := TFrmCCusto.Create(Self);
  FrmCCusto.ShowModal;
  DsEmpresas.DataSet.FieldByName('CC_PIS').asInteger := FrmMain.Codigo_Int;
  FrmCCusto.Free;
  FrmCCusto := Nil;

  dsCentroPIS.DataSet.Close ;
  dsCentroPIS.DataSet.Open  ;
  cmbCentroPIS.SetFocus;
end;

procedure TFrmEmpresas.btnCentroCOFINSClick(Sender: TObject);
begin
  if ActAlterar.Tag = 0 Then
    Exit;

  If DsEmpresas.DataSet.State = dsBrowse Then
     DsEmpresas.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCCusto', False);
  FrmCCusto := TFrmCCusto.Create(Self);
  FrmCCusto.ShowModal;
  DsEmpresas.DataSet.FieldByName('CC_COFINS').asInteger := FrmMain.Codigo_Int;
  FrmCCusto.Free;
  FrmCCusto := Nil;

  dsCentroCOFINS.DataSet.Close ;
  dsCentroCOFINS.DataSet.Open  ;
  cmbCentroCOFINS.SetFocus;
end;

procedure TFrmEmpresas.btnCentroCSLLClick(Sender: TObject);
begin
  if ActAlterar.Tag = 0 Then
    Exit;

  If DsEmpresas.DataSet.State = dsBrowse Then
     DsEmpresas.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCCusto', False);
  FrmCCusto := TFrmCCusto.Create(Self);
  FrmCCusto.ShowModal;
  DsEmpresas.DataSet.FieldByName('CC_CSLL').asInteger := FrmMain.Codigo_Int;
  FrmCCusto.Free;
  FrmCCusto := Nil;

  dsCentroCSLL.DataSet.Close ;
  dsCentroCSLL.DataSet.Open  ;
  cmbCentroCSLL.SetFocus;
end;

procedure TFrmEmpresas.SelCentroINSSBeforeOpen(DataSet: TDataSet);
begin
 TIBQuery(DataSet).parambyname('cnpj').value := dmApp.cnpj;
end;

end.
