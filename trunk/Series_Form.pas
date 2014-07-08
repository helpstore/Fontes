 unit Series_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxExEdtr, ppCache,
  ppClass, ppBands, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  ppVar, ppPrnabl, ppCtrls, ppEndUsr, Buttons, ComCtrls,  
  ppParameter, ppStrtch, ppRegion, ppMemo,   ppModule, raCodMod,
  ppRichTx, dxDBEdtr, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses;

type
  TFrmSeries = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
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
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TLabel;
    rptSerieNF: TppReport;
    ppSerieNF: TppDBPipeline;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    Cliente: TppDBText;
    ppDBText6: TppDBText;
    ppDBText11: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppHeaderBand1: TppHeaderBand;
    ppFooterBand1: TppFooterBand;
    ppDBText2: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    Designer: TppDesigner;
    ppLayout: TppDBPipeline;
    RzPanel1: TPanel;
    dxDBCheckEdit6: TdxDBCheckEdit;
    dxDBEdit149: TdxDBEdit;
    Label156: TLabel;
    dxDBEdit129: TdxDBEdit;
    Label135: TLabel;
    dxDBEdit150: TdxDBEdit;
    Label157: TLabel;
    dxDBEdit128: TdxDBEdit;
    Label131: TLabel;
    dxDBPickEdit2: TdxDBPickEdit;
    CmbTipo: TdxDBPickEdit;
    Label9: TLabel;
    Label137: TLabel;
    dxDBEdit130: TdxDBEdit;
    EdInicial: TdxDBEdit;
    Label2: TLabel;
    Label136: TLabel;
    dxDBPickEdit1: TdxDBPickEdit;
    dxDBEdit1: TdxDBEdit;
    Label1: TLabel;
    Label130: TLabel;
    RzPanel2: TPanel;
    b2: TBevel;
    LblTitulo: TLabel;
    PageControl1: TPageControl;
    tbsGrafico: TTabSheet;
    tbsTexto: TTabSheet;
    ScrollBox1: TScrollBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label51: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label138: TLabel;
    Label139: TLabel;
    Label140: TLabel;
    Label141: TLabel;
    Label142: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label167: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label171: TLabel;
    Label172: TLabel;
    Label173: TLabel;
    Label174: TLabel;
    Label175: TLabel;
    Label176: TLabel;
    Label177: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    Label180: TLabel;
    Label181: TLabel;
    Label182: TLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit12: TdxDBEdit;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    dxDBEdit15: TdxDBEdit;
    dxDBEdit16: TdxDBEdit;
    dxDBEdit17: TdxDBEdit;
    dxDBEdit18: TdxDBEdit;
    dxDBEdit19: TdxDBEdit;
    dxDBEdit20: TdxDBEdit;
    dxDBEdit21: TdxDBEdit;
    dxDBEdit22: TdxDBEdit;
    dxDBEdit23: TdxDBEdit;
    dxDBEdit24: TdxDBEdit;
    dxDBEdit25: TdxDBEdit;
    dxDBEdit26: TdxDBEdit;
    dxDBEdit27: TdxDBEdit;
    dxDBEdit28: TdxDBEdit;
    dxDBEdit29: TdxDBEdit;
    dxDBEdit30: TdxDBEdit;
    dxDBEdit31: TdxDBEdit;
    dxDBEdit32: TdxDBEdit;
    dxDBEdit33: TdxDBEdit;
    dxDBEdit34: TdxDBEdit;
    dxDBEdit35: TdxDBEdit;
    dxDBEdit36: TdxDBEdit;
    dxDBEdit37: TdxDBEdit;
    dxDBEdit38: TdxDBEdit;
    dxDBEdit39: TdxDBEdit;
    dxDBEdit40: TdxDBEdit;
    dxDBEdit41: TdxDBEdit;
    dxDBEdit42: TdxDBEdit;
    dxDBEdit43: TdxDBEdit;
    dxDBEdit44: TdxDBEdit;
    dxDBEdit45: TdxDBEdit;
    dxDBEdit46: TdxDBEdit;
    dxDBEdit47: TdxDBEdit;
    dxDBEdit48: TdxDBEdit;
    dxDBEdit50: TdxDBEdit;
    dxDBEdit51: TdxDBEdit;
    dxDBEdit52: TdxDBEdit;
    dxDBEdit53: TdxDBEdit;
    dxDBEdit54: TdxDBEdit;
    dxDBEdit55: TdxDBEdit;
    dxDBEdit57: TdxDBEdit;
    dxDBEdit49: TdxDBEdit;
    dxDBEdit56: TdxDBEdit;
    dxDBEdit58: TdxDBEdit;
    dxDBEdit59: TdxDBEdit;
    dxDBEdit60: TdxDBEdit;
    dxDBEdit61: TdxDBEdit;
    dxDBEdit62: TdxDBEdit;
    dxDBEdit63: TdxDBEdit;
    dxDBEdit64: TdxDBEdit;
    dxDBEdit65: TdxDBEdit;
    dxDBEdit66: TdxDBEdit;
    dxDBEdit67: TdxDBEdit;
    dxDBEdit68: TdxDBEdit;
    dxDBEdit69: TdxDBEdit;
    dxDBEdit70: TdxDBEdit;
    dxDBEdit71: TdxDBEdit;
    dxDBEdit72: TdxDBEdit;
    dxDBEdit73: TdxDBEdit;
    dxDBEdit74: TdxDBEdit;
    dxDBEdit75: TdxDBEdit;
    dxDBEdit76: TdxDBEdit;
    dxDBEdit77: TdxDBEdit;
    dxDBEdit78: TdxDBEdit;
    dxDBEdit79: TdxDBEdit;
    dxDBEdit80: TdxDBEdit;
    dxDBEdit81: TdxDBEdit;
    dxDBEdit82: TdxDBEdit;
    dxDBEdit83: TdxDBEdit;
    dxDBEdit84: TdxDBEdit;
    dxDBEdit85: TdxDBEdit;
    dxDBEdit86: TdxDBEdit;
    dxDBEdit87: TdxDBEdit;
    dxDBEdit88: TdxDBEdit;
    dxDBEdit89: TdxDBEdit;
    dxDBEdit90: TdxDBEdit;
    dxDBEdit91: TdxDBEdit;
    dxDBEdit92: TdxDBEdit;
    dxDBEdit93: TdxDBEdit;
    dxDBEdit94: TdxDBEdit;
    dxDBEdit95: TdxDBEdit;
    dxDBEdit96: TdxDBEdit;
    dxDBEdit97: TdxDBEdit;
    dxDBEdit98: TdxDBEdit;
    dxDBEdit99: TdxDBEdit;
    dxDBEdit100: TdxDBEdit;
    dxDBEdit101: TdxDBEdit;
    dxDBEdit102: TdxDBEdit;
    dxDBEdit103: TdxDBEdit;
    dxDBEdit104: TdxDBEdit;
    dxDBEdit105: TdxDBEdit;
    dxDBEdit106: TdxDBEdit;
    dxDBEdit107: TdxDBEdit;
    dxDBEdit108: TdxDBEdit;
    dxDBEdit109: TdxDBEdit;
    dxDBEdit110: TdxDBEdit;
    dxDBEdit111: TdxDBEdit;
    dxDBEdit112: TdxDBEdit;
    dxDBEdit113: TdxDBEdit;
    dxDBEdit114: TdxDBEdit;
    dxDBEdit115: TdxDBEdit;
    dxDBEdit116: TdxDBEdit;
    dxDBEdit117: TdxDBEdit;
    dxDBEdit118: TdxDBEdit;
    dxDBEdit119: TdxDBEdit;
    dxDBEdit120: TdxDBEdit;
    dxDBEdit121: TdxDBEdit;
    dxDBEdit122: TdxDBEdit;
    dxDBEdit123: TdxDBEdit;
    dxDBEdit124: TdxDBEdit;
    dxDBEdit125: TdxDBEdit;
    dxDBEdit126: TdxDBEdit;
    dxDBEdit127: TdxDBEdit;
    dxDBEdit131: TdxDBEdit;
    dxDBEdit132: TdxDBEdit;
    dxDBEdit133: TdxDBEdit;
    dxDBEdit134: TdxDBEdit;
    dxDBEdit135: TdxDBEdit;
    dxDBEdit136: TdxDBEdit;
    dxDBEdit137: TdxDBEdit;
    dxDBEdit138: TdxDBEdit;
    dxDBEdit139: TdxDBEdit;
    dxDBEdit140: TdxDBEdit;
    dxDBEdit141: TdxDBEdit;
    dxDBEdit142: TdxDBEdit;
    dxDBEdit143: TdxDBEdit;
    dxDBEdit144: TdxDBEdit;
    dxDBEdit145: TdxDBEdit;
    dxDBEdit146: TdxDBEdit;
    dxDBEdit147: TdxDBEdit;
    dxDBEdit148: TdxDBEdit;
    dxDBEdit151: TdxDBEdit;
    dxDBEdit152: TdxDBEdit;
    dxDBEdit153: TdxDBEdit;
    dxDBEdit154: TdxDBEdit;
    dxDBEdit155: TdxDBEdit;
    dxDBEdit156: TdxDBEdit;
    dxDBEdit157: TdxDBEdit;
    dxDBEdit158: TdxDBEdit;
    dxDBEdit159: TdxDBEdit;
    dxDBEdit160: TdxDBEdit;
    dxDBEdit161: TdxDBEdit;
    dxDBEdit162: TdxDBEdit;
    dxDBEdit163: TdxDBEdit;
    dxDBEdit164: TdxDBEdit;
    dxDBEdit165: TdxDBEdit;
    dxDBEdit166: TdxDBEdit;
    dxDBEdit167: TdxDBEdit;
    dxDBEdit168: TdxDBEdit;
    dxDBEdit169: TdxDBEdit;
    dxDBEdit170: TdxDBEdit;
    dxDBEdit171: TdxDBEdit;
    dxDBEdit172: TdxDBEdit;
    dxDBEdit173: TdxDBEdit;
    dxDBEdit174: TdxDBEdit;
    GroupBox1: TGroupBox;
    dxDBCheckEdit1: TdxDBCheckEdit;
    btnConfigurar: TBitBtn;
    Label183: TLabel;
    dxDBEdit175: TdxDBEdit;
    Label184: TLabel;
    dxDBEdit176: TdxDBEdit;
    Label185: TLabel;
    dxDBEdit177: TdxDBEdit;
    Label186: TLabel;
    dxDBEdit178: TdxDBEdit;
    Label187: TLabel;
    Label188: TLabel;
    dxDBEdit179: TdxDBEdit;
    Label189: TLabel;
    dxDBEdit180: TdxDBEdit;
    Label190: TLabel;
    dxDBEdit181: TdxDBEdit;
    Label191: TLabel;
    dxDBEdit182: TdxDBEdit;
    Label192: TLabel;
    dxDBEdit183: TdxDBEdit;
    Label193: TLabel;
    dxDBEdit184: TdxDBEdit;
    Label194: TLabel;
    dxDBEdit185: TdxDBEdit;
    Label195: TLabel;
    dxDBEdit186: TdxDBEdit;
    Label196: TLabel;
    dxDBEdit187: TdxDBEdit;
    Label197: TLabel;
    dxDBEdit188: TdxDBEdit;
    Label198: TLabel;
    dxDBEdit189: TdxDBEdit;
    Label199: TLabel;
    dxDBEdit190: TdxDBEdit;
    Label200: TLabel;
    dxDBEdit191: TdxDBEdit;
    Label201: TLabel;
    dxDBEdit192: TdxDBEdit;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    ppLayoutCT: TppDBPipeline;
    rptCT13: TppReport;
    ppDetailBand2: TppDetailBand;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppParameterList2: TppParameterList;
    ppCT13: TppDBPipeline;
    DesignerCT13: TppDesigner;
    GroupBox3: TGroupBox;
    BitBtn2: TBitBtn;
    dxDBCheckEdit2: TdxDBCheckEdit;
    LayoutSERV: TppDBPipeline;
    DesignerSERV: TppDesigner;
    rptServico: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppLabel3: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText42: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText39: TppDBText;
    ppDBText47: TppDBText;
    ppLabel4: TppLabel;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDBText41: TppDBText;
    ppDBText43: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    RegionPIS: TppRegion;
    RegionIRRS: TppRegion;
    RegionINSS: TppRegion;
    RegionDescto: TppRegion;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppLabel11: TppLabel;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppParameterList3: TppParameterList;
    ppServico: TppDBPipeline;
    ppDBText35: TppDBText;
    ppLabel5: TppLabel;
    ppDBText36: TppDBText;
    ppLabel6: TppLabel;
    ppDBText37: TppDBText;
    ppDBText44: TppDBText;
    ppLabel7: TppLabel;
    ppDBText40: TppDBText;
    ppLabel8: TppLabel;
    ppDBText38: TppDBText;
    ppDBText58: TppDBText;
    ppLabel10: TppLabel;
    ppDBText57: TppDBText;
    ppLabel9: TppLabel;
    ppDBText56: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBMemo1: TppDBMemo;
    GroupBox4: TGroupBox;
    BitBtn3: TBitBtn;
    ppGrafNF: TppDBPipeline;
    rptGrafNF: TppReport;
    ppParameterList1: TppParameterList;
    ppLayoutGrafNF: TppDBPipeline;
    DesignerGrafNF: TppDesigner;
    dxDBCheckEdit3: TdxDBCheckEdit;
    GroupBox5: TGroupBox;
    BitBtn4: TBitBtn;
    ppSerieOrcaNF: TppDBPipeline;
    ppLayoutOrca: TppDBPipeline;
    rptSerieOrcaNF: TppReport;
    Designer_Orca: TppDesigner;
    ppParameterList4: TppParameterList;
    ppHeaderBand4: TppHeaderBand;
    ppSystemVariable3: TppSystemVariable;
    ppDBText71: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel23: TppLabel;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText113: TppDBText;
    ppLabel22: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel24: TppLabel;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppLabel25: TppLabel;
    ppDBText118: TppDBText;
    ppLabel26: TppLabel;
    ppDBText117: TppDBText;
    ppDBText119: TppDBText;
    ppDBText121: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppDBText124: TppDBText;
    ppLabel32: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLine4: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLine3: TppLine;
    ppDBText112: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine7: TppLine;
    ppDBText114: TppDBText;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText120: TppDBText;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLabel20: TppLabel;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppSystemVariable5: TppSystemVariable;
    ppLabel40: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppDBText130: TppDBText;
    ppLabel42: TppLabel;
    ppDBRichText1: TppDBRichText;
    ppLabel41: TppLabel;
    ppLine6: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel12: TppLabel;
    ppLine5: TppLine;
    ppLabel43: TppLabel;
    ppDBRichText2: TppDBRichText;
    ppLabel21: TppLabel;
    ppDBRichText3: TppDBRichText;
    ppLabel29: TppLabel;
    GroupBox6: TGroupBox;
    BitBtn5: TBitBtn;
    rptSerieRequisicao: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppSystemVariable7: TppSystemVariable;
    ppDBText131: TppDBText;
    ppDBText132: TppDBText;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
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
    ppDBText140: TppDBText;
    ppLabel69: TppLabel;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppDBText144: TppDBText;
    ppLabel73: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppLine10: TppLine;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLine11: TppLine;
    ppDBText145: TppDBText;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLine12: TppLine;
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
    ppDetailBand6: TppDetailBand;
    ppDBText147: TppDBText;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppDBText151: TppDBText;
    ppDBText152: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppLabel99: TppLabel;
    ppDBText153: TppDBText;
    ppDBText154: TppDBText;
    ppSystemVariable9: TppSystemVariable;
    ppLabel100: TppLabel;
    ppSystemVariable10: TppSystemVariable;
    ppDBText155: TppDBText;
    ppLabel101: TppLabel;
    ppDBRichText4: TppDBRichText;
    ppLabel102: TppLabel;
    ppLine13: TppLine;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppLabel106: TppLabel;
    ppLine14: TppLine;
    ppLabel107: TppLabel;
    ppDBRichText5: TppDBRichText;
    ppLabel108: TppLabel;
    ppDBRichText6: TppDBRichText;
    ppLabel109: TppLabel;
    ppParameterList5: TppParameterList;
    Designer_Requisicao: TppDesigner;
    ppLayoutRequisicao: TppDBPipeline;
    ppSerieRequisicao: TppDBPipeline;
    ppHeaderBand3: TppHeaderBand;
    ppDBText7: TppDBText;
    ppDBText32: TppDBText;
    ppDBText67: TppDBText;
    ppDBText81: TppDBText;
    ppDBText8: TppDBText;
    ppDBText82: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBMemo4: TppDBMemo;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppVariable1: TppVariable;
    ppDBText85: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppLabel110: TppLabel;
    ppDBText77: TppDBText;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppSystemVariable11: TppSystemVariable;
    ppSystemVariable12: TppSystemVariable;
    ppDetailBand4: TppDetailBand;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppDBText89: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppDBText161: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppDBText166: TppDBText;
    ppDBText167: TppDBText;
    ppDBText168: TppDBText;
    ppDBMemo7: TppDBMemo;
    ppDBText169: TppDBText;
    ppDBText170: TppDBText;
    ppMemo1: TppMemo;
    ppDBMemo8: TppDBMemo;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dsPedidos: TDataSource;
    ppDBMemo5: TppDBMemo;
    ppDBMemo6: TppDBMemo;
    ppSubIndice: TppDBPipeline;
    DsTipoDocto: TDataSource;
    Label202: TLabel;
    cmbTipoDocto: TdxDBLookupEdit;
    BtnTipo: TSpeedButton;
    dxDBCheckEdit4: TdxDBCheckEdit;
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
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure dxDBEdit1Enter(Sender: TObject);
    procedure dxDBEdit1Exit(Sender: TObject);
    procedure btnConfigurarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BtnTipoClick(Sender: TObject);
  private
    { Private declarations }
    procedure ConfigurarNota;
    procedure ConfigurarOrcamento;
    procedure ConfigurarRequisicao;    
    procedure ConfigurarCT13;
    procedure ConfigurarServico;
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmSeries: TFrmSeries;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Relatorios_DM, Vendas_DM2, Vendas_Dm, OrdemCarga_DM, Tipo_Documento_Form;

{$R *.DFM}

procedure TFrmSeries.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  If FrmMain.MDIChildCount > 1 Then
     FrmMain.Codigo_Str := Datasource.DataSet.FieldByName('SERIE').asString;
  If DataSource.DataSet.Tag = 0 Then
     DataSource.DataSet.Close;

  Action := caFree;
  FrmSeries := Nil;
  //
  If FrmMain.MDIChildCount = 1 Then
     FrmMain.PnlClient.Visible := True;

end;

procedure TFrmSeries.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
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
  dxDBEdit1.SetFocus;
end;

procedure TFrmSeries.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Gênero ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmSeries.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
     DMApp.Transaction.CommitRetaining;
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
end;

procedure TFrmSeries.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmSeries.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    DataSource.DataSet := DMCadastros.Serie;
    DMCadastros.Serie.close;
    DMCadastros.Serie.Open;
    DMCadastros.Tipo_Documento.close;
    DMCadastros.Tipo_Documento.Open;
    DMCadastros.Serie.FetchAll;
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
  //
  

  Datasource.AutoEdit := ActAlterar.Enabled;
  EdInicial.SetFocus;
end;

procedure TFrmSeries.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  
end;

procedure TFrmSeries.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmSeries.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     if (key=VK_RETURN) OR (Key=VK_DOWN) Then
         Perform(WM_NEXTDLGCTL, 0, 0);
     if (key=VK_UP) then
         Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmSeries.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmSeries.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
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
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmSeries.ActFecharExecute(Sender: TObject);
begin
  If FrmSeries.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmSeries.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount); 
end;

procedure TFrmSeries.dxDBEdit1Enter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmSeries.dxDBEdit1Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
end;

procedure TFrmSeries.ConfigurarNota;
begin
  DMCadastros.EdtSerieNF.close;
  DMCadastros.EdtSerieNF.parambyname('cnpj').value := dmApp.cnpj;
  DMCadastros.EdtSerieNF.Open;

  rptSerieNF.Template.DatabaseSettings.Name := DMCadastros.EdtSerieNFcnpj.asstring;;
  rptSerieNF.Template.LoadFromDatabase;
  Designer.Show;
  DMCadastros.EdtSerieNF.edit;
end;

procedure TFrmSeries.btnConfigurarClick(Sender: TObject);
begin
  ConfigurarNota;
end;

procedure TFrmSeries.ConfigurarCT13;
begin
  DMCadastros.edtCT13.close;
  DMCadastros.edtCT13.parambyname('cnpj').value := dmApp.cnpj;
  DMCadastros.edtCT13.Open;

  rptCT13.Template.DatabaseSettings.Name := DMCadastros.edtCT13cnpj.asstring;;
  rptCT13.Template.LoadFromDatabase;
  DesignerCT13.Show;
  DMCadastros.edtCT13.edit;
end;

procedure TFrmSeries.BitBtn1Click(Sender: TObject);
begin
  ConfigurarCT13;
end;

procedure TFrmSeries.BitBtn2Click(Sender: TObject);
begin
 ConfigurarServico;
end;

procedure TFrmSeries.ConfigurarServico;
begin
  DMCadastros.edtServicoNF.close;
  DMCadastros.edtServicoNF.parambyname('cnpj').value := dmApp.cnpj;
  DMCadastros.edtServicoNF.Open;

  rptServico.Template.DatabaseSettings.name := dmCadastros.edtServicoNFCNPJ.asstring;
  rptServico.Template.LoadFromDatabase;
  DesignerSERV.Show;
  dmCadastros.edtServicoNF.edit;
end;

procedure TFrmSeries.BitBtn3Click(Sender: TObject);
begin
  with dmVendas2 do
  begin
    edtGrafNF.close;
    edtGrafNF.parambyname('indice').value := DMCadastros.SerieINDICE.asString;
    edtGrafNF.open;

    //---------------As vezes acontece um erro do rpt perder essa propriedade-----------------
    rptGrafNF.Template.DatabaseSettings.name := DMCadastros.SerieINDICE.asstring;
    rptGrafNF.Template.LoadFromDatabase;
    DesignerGrafNF.Show;
    DMCadastros.Serie.edit;
  end;
end;

procedure TFrmSeries.ConfigurarOrcamento;
begin
  DMCadastros.EdtSerieOrcNF.close;
  DMCadastros.EdtSerieOrcNF.parambyname('cnpj').value := dmApp.cnpj;
  DMCadastros.EdtSerieOrcNF.Open;

  rptSerieOrcaNF.Template.DatabaseSettings.Name := DMCadastros.EdtSerieOrcNFcnpj.asstring;;
  rptSerieOrcaNF.Template.LoadFromDatabase;
  Designer_Orca.Show;
  DMCadastros.EdtSerieOrcNF.edit;
end;

procedure TFrmSeries.BitBtn4Click(Sender: TObject);
begin
  ConfigurarOrcamento;
end;

procedure TFrmSeries.ConfigurarRequisicao;
begin
  DmOrdemCarga.edtLayoutRequisicao.close;
  DmOrdemCarga.edtLayoutRequisicao.parambyname('cnpj').value := dmApp.cnpj;
  DmOrdemCarga.edtLayoutRequisicao.Open;

  rptSerieRequisicao.Template.DatabaseSettings.Name := DmOrdemCarga.edtLayoutRequisicaoCNPJ.asstring;
  rptSerieRequisicao.Template.LoadFromDatabase;
  Designer_Requisicao.Show;
  DmOrdemCarga.edtLayoutRequisicao.edit;
end;

procedure TFrmSeries.BitBtn5Click(Sender: TObject);
begin
  ConfigurarRequisicao;
end;

procedure TFrmSeries.BtnTipoClick(Sender: TObject);
begin
   If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTipoDoctos', False);
  FrmTipoDoctos := TFrmTipoDoctos.Create(Self);
  FrmTipoDoctos.ShowModal;
  DMCadastros.Tipo_Documento.close;
  DMCadastros.Tipo_Documento.Open;
  Datasource.DataSet.FieldByName('TIPO_DOCTO').asString := FrmMain.Codigo_Str;

  FrmTipoDoctos.Free;
  FrmTipoDoctos := Nil;
  CmbTipo.SetFocus;

end;

end.
