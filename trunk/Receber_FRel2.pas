  unit Receber_FRel2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, ComCtrls, 
  Mask,  ppDB, ppDBPipe,
  ppParameter, ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt,
    ppRegion, cxPropertiesStore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel, 
   cxTextEdit, cxCurrencyEdit,   cxCheckBox;

type
  TfRelReceber2 = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActPreview: TAction;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    GroupBox2: TGroupBox;
    Label11: TcxLabel;
    Label9: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label12: TcxLabel;
    cmbRegiao: TdxLookupEdit;
    cmbClassificacao: TdxLookupEdit;
    cmbCliente: TdxLookupEdit;
    cmbLocalCob: TdxLookupEdit;
    cmbVendedor: TdxLookupEdit;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    Rd1: TRadioButton;
    Rd2: TRadioButton;
    Rd3: TRadioButton;
    GroupBox5: TGroupBox;
    rd7: TRadioButton;
    rd8: TRadioButton;
    gbSituacao: TGroupBox;
    Rd4: TRadioButton;
    Rd5: TRadioButton;
    Rd6: TRadioButton;
    GroupBox1: TGroupBox;
    Label2: TcxLabel;
    Label3: TcxLabel;
    GroupBox4: TGroupBox;
    rd9: TRadioButton;
    rd10: TRadioButton;
    rd11: TRadioButton;
    gbValor: TGroupBox;
    Label1: TcxLabel;
    Label6: TcxLabel;
    edtVlrInicial: TcxCurrencyEdit;
    edtVlrFinal: TcxCurrencyEdit;
    DsClientes: TDataSource;
    dsClassificao: TDataSource;
    dsLocalCob: TDataSource;
    dsVendedor: TDataSource;
    dsRegiao: TDataSource;
    rptRelReceber: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppTituloRel: TppLabel;
    lblFiltro: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppDetailBand6: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    dbRelReceber: TppDBPipeline;
    dsRelReceber: TDataSource;
    GroupBox3: TGroupBox;
    rd13: TRadioButton;
    rd14: TRadioButton;
    rd15: TRadioButton;
    rd16: TRadioButton;
    rd17: TRadioButton;
    rd18: TRadioButton;
    rd19: TRadioButton;
    rd20: TRadioButton;
    ppSubClientes: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule1: TraCodeModule;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel4: TppLabel;
    ppLine2: TppLine;
    ppDBText1: TppDBText;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLabel15: TppLabel;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppSubVendedor: TppSubReport;
    ppChildReport8: TppChildReport;
    ppHeaderBand8: TppHeaderBand;
    ppLabel114: TppLabel;
    ppLabel115: TppLabel;
    ppLabel116: TppLabel;
    ppLabel117: TppLabel;
    ppLine29: TppLine;
    ppLabel118: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLabel121: TppLabel;
    ppLabel122: TppLabel;
    ppLabel123: TppLabel;
    ppLabel125: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppSummaryBand8: TppSummaryBand;
    ppLine30: TppLine;
    ppLabel127: TppLabel;
    ppDBCalc85: TppDBCalc;
    ppDBCalc86: TppDBCalc;
    ppDBCalc87: TppDBCalc;
    ppDBCalc88: TppDBCalc;
    ppDBCalc89: TppDBCalc;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppLabel128: TppLabel;
    ppLine31: TppLine;
    ppDBText111: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    ppLine32: TppLine;
    ppDBCalc91: TppDBCalc;
    ppLabel130: TppLabel;
    ppDBCalc92: TppDBCalc;
    ppDBCalc93: TppDBCalc;
    ppDBCalc94: TppDBCalc;
    ppDBCalc95: TppDBCalc;
    raCodeModule9: TraCodeModule;
    ppSubRegiao: TppSubReport;
    ppChildReport9: TppChildReport;
    ppHeaderBand9: TppHeaderBand;
    ppLabel131: TppLabel;
    ppLabel132: TppLabel;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLine33: TppLine;
    ppLabel135: TppLabel;
    ppLabel136: TppLabel;
    ppLabel137: TppLabel;
    ppLabel138: TppLabel;
    ppLabel139: TppLabel;
    ppLabel140: TppLabel;
    ppLabel141: TppLabel;
    ppDetailBand10: TppDetailBand;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppDBText117: TppDBText;
    ppDBText118: TppDBText;
    ppDBText119: TppDBText;
    ppDBText120: TppDBText;
    ppDBText121: TppDBText;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppSummaryBand9: TppSummaryBand;
    ppLine34: TppLine;
    ppLabel143: TppLabel;
    ppDBCalc97: TppDBCalc;
    ppDBCalc98: TppDBCalc;
    ppDBCalc99: TppDBCalc;
    ppDBCalc100: TppDBCalc;
    ppDBCalc101: TppDBCalc;
    ppGroup9: TppGroup;
    ppGroupHeaderBand9: TppGroupHeaderBand;
    ppLabel144: TppLabel;
    ppLine35: TppLine;
    ppDBText125: TppDBText;
    ppGroupFooterBand9: TppGroupFooterBand;
    ppLine36: TppLine;
    ppDBCalc103: TppDBCalc;
    ppLabel146: TppLabel;
    ppDBCalc104: TppDBCalc;
    ppDBCalc105: TppDBCalc;
    ppDBCalc106: TppDBCalc;
    ppDBCalc107: TppDBCalc;
    raCodeModule10: TraCodeModule;
    ppDBText97: TppDBText;
    ppLabel111: TppLabel;
    ppLabel112: TppLabel;
    ppSubLocalCob: TppSubReport;
    ppChildReport6: TppChildReport;
    ppHeaderBand6: TppHeaderBand;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLine21: TppLine;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine22: TppLine;
    ppLabel94: TppLabel;
    ppDBCalc61: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppDBCalc63: TppDBCalc;
    ppDBCalc64: TppDBCalc;
    ppDBCalc65: TppDBCalc;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel95: TppLabel;
    ppLine23: TppLine;
    ppDBText83: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLine24: TppLine;
    ppDBCalc66: TppDBCalc;
    ppLabel96: TppLabel;
    ppDBCalc67: TppDBCalc;
    ppDBCalc68: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    ppDBCalc70: TppDBCalc;
    raCodeModule7: TraCodeModule;
    ppSubClassificacao: TppSubReport;
    ppChildReport5: TppChildReport;
    ppHeaderBand5: TppHeaderBand;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLine17: TppLine;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine18: TppLine;
    ppLabel78: TppLabel;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel79: TppLabel;
    ppLine19: TppLine;
    ppDBText69: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine20: TppLine;
    ppDBCalc54: TppDBCalc;
    ppLabel80: TppLabel;
    ppDBCalc55: TppDBCalc;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    raCodeModule6: TraCodeModule;
    ppSubLancto: TppSubReport;
    ppChildReport4: TppChildReport;
    ppHeaderBand4: TppHeaderBand;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLine13: TppLine;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLine14: TppLine;
    ppLabel61: TppLabel;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel63: TppLabel;
    ppLine15: TppLine;
    ppDBText55: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine16: TppLine;
    ppDBCalc42: TppDBCalc;
    ppLabel64: TppLabel;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    raCodeModule5: TraCodeModule;
    ppSubVencto: TppSubReport;
    ppChildReport3: TppChildReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLine9: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel45: TppLabel;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel46: TppLabel;
    ppLine11: TppLine;
    ppDBText41: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine12: TppLine;
    ppDBCalc30: TppDBCalc;
    ppLabel47: TppLabel;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    raCodeModule3: TraCodeModule;
    ppSubEmissao: TppSubReport;
    ppChildReport2: TppChildReport;
    ppHeaderBand2: TppHeaderBand;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine5: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine6: TppLine;
    ppLabel29: TppLabel;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel30: TppLabel;
    ppLine7: TppLine;
    ppDBText27: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine8: TppLine;
    ppDBCalc18: TppDBCalc;
    ppLabel31: TppLabel;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    raCodeModule2: TraCodeModule;
    cmbTipoDocto: TdxLookupEdit;
    dsTipoDocto: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    lb2: TppDBText;
    lb4: TppDBText;
    lb1: TppLabel;
    lb3: TppLabel;
    ckComplementar: TcxCheckBox;
    ppDBText86: TppDBText;
    ppLabel98: TppLabel;
    ppDBText87: TppDBText;
    ppLabel99: TppLabel;
    ppDBText88: TppDBText;
    ppLabel100: TppLabel;
    ppDBText89: TppDBText;
    ppLabel101: TppLabel;
    ppSubRecebidas: TppSubReport;
    ppChildReport7: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand8: TppDetailBand;
    ppSummaryBand7: TppSummaryBand;
    ppLabel150: TppLabel;
    ppLabel151: TppLabel;
    ppLine25: TppLine;
    ppLabel160: TppLabel;
    ppLabel161: TppLabel;
    ppDBText133: TppDBText;
    ppDBText134: TppDBText;
    ppDBText135: TppDBText;
    ppLabel152: TppLabel;
    ppDBText136: TppDBText;
    ppLine26: TppLine;
    ppSubRecebidas1: TppSubReport;
    ppChildReport10: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel149: TppLabel;
    ppLabel153: TppLabel;
    ppLine27: TppLine;
    ppLabel154: TppLabel;
    ppLabel155: TppLabel;
    ppLabel156: TppLabel;
    ppDetailBand11: TppDetailBand;
    ppDBText132: TppDBText;
    ppDBText137: TppDBText;
    ppDBText138: TppDBText;
    ppDBText139: TppDBText;
    ppSummaryBand10: TppSummaryBand;
    ppLine28: TppLine;
    ppSubRecebidas2: TppSubReport;
    ppChildReport11: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel157: TppLabel;
    ppLabel158: TppLabel;
    ppLine37: TppLine;
    ppLabel159: TppLabel;
    ppLabel162: TppLabel;
    ppLabel163: TppLabel;
    ppDetailBand12: TppDetailBand;
    ppDBText140: TppDBText;
    ppDBText141: TppDBText;
    ppDBText142: TppDBText;
    ppDBText143: TppDBText;
    ppSummaryBand11: TppSummaryBand;
    ppLine38: TppLine;
    ppSubRecebidas3: TppSubReport;
    ppChildReport12: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel164: TppLabel;
    ppLabel165: TppLabel;
    ppLine39: TppLine;
    ppLabel166: TppLabel;
    ppLabel167: TppLabel;
    ppLabel168: TppLabel;
    ppDetailBand13: TppDetailBand;
    ppDBText144: TppDBText;
    ppDBText145: TppDBText;
    ppDBText146: TppDBText;
    ppDBText147: TppDBText;
    ppSummaryBand12: TppSummaryBand;
    ppLine40: TppLine;
    ppSubRecebidas4: TppSubReport;
    ppChildReport13: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppLabel169: TppLabel;
    ppLabel170: TppLabel;
    ppLine41: TppLine;
    ppLabel171: TppLabel;
    ppLabel172: TppLabel;
    ppLabel173: TppLabel;
    ppDetailBand14: TppDetailBand;
    ppDBText148: TppDBText;
    ppDBText149: TppDBText;
    ppDBText150: TppDBText;
    ppDBText151: TppDBText;
    ppSummaryBand13: TppSummaryBand;
    ppLine42: TppLine;
    ppSubRecebidas5: TppSubReport;
    ppChildReport14: TppChildReport;
    ppTitleBand7: TppTitleBand;
    ppLabel174: TppLabel;
    ppLabel175: TppLabel;
    ppLine43: TppLine;
    ppLabel176: TppLabel;
    ppLabel177: TppLabel;
    ppLabel178: TppLabel;
    ppDetailBand15: TppDetailBand;
    ppDBText152: TppDBText;
    ppDBText153: TppDBText;
    ppDBText154: TppDBText;
    ppDBText155: TppDBText;
    ppSummaryBand14: TppSummaryBand;
    ppLine44: TppLine;
    ppSubRecebidas6: TppSubReport;
    ppChildReport15: TppChildReport;
    ppTitleBand8: TppTitleBand;
    ppLabel179: TppLabel;
    ppLabel180: TppLabel;
    ppLine45: TppLine;
    ppLabel181: TppLabel;
    ppLabel182: TppLabel;
    ppLabel183: TppLabel;
    ppDetailBand16: TppDetailBand;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppSummaryBand15: TppSummaryBand;
    ppLine46: TppLine;
    ppSubRecebidas7: TppSubReport;
    ppChildReport16: TppChildReport;
    ppTitleBand9: TppTitleBand;
    ppLabel184: TppLabel;
    ppLabel185: TppLabel;
    ppLine47: TppLine;
    ppLabel186: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppDetailBand17: TppDetailBand;
    ppDBText160: TppDBText;
    ppDBText161: TppDBText;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    ppSummaryBand16: TppSummaryBand;
    ppLine48: TppLine;
    ppRecebidas: TppDBPipeline;
    ppRecebidasppField1: TppField;
    ppRecebidasppField2: TppField;
    ppRecebidasppField3: TppField;
    ppRecebidasppField4: TppField;
    ppRecebidasppField5: TppField;
    ppRecebidasppField6: TppField;
    ppRecebidasppField7: TppField;
    ppRecebidasppField8: TppField;
    ppRecebidasppField9: TppField;
    ppRecebidasppField10: TppField;
    ppRecebidasppField11: TppField;
    ppRecebidasppField12: TppField;
    ppRecebidasppField13: TppField;
    ppRecebidasppField14: TppField;
    ppRecebidasppField15: TppField;
    ppRecebidasppField16: TppField;
    ppRecebidasppField17: TppField;
    ppRecebidasppField18: TppField;
    ppRecebidasppField19: TppField;
    ppRecebidasppField20: TppField;
    ppRecebidasppField21: TppField;
    ppRecebidasppField22: TppField;
    ppRecebidasppField23: TppField;
    ppRecebidasppField24: TppField;
    ppRecebidasppField25: TppField;
    ppRecebidasppField26: TppField;
    ppRecebidasppField27: TppField;
    ppRecebidasppField28: TppField;
    ppRecebidasppField29: TppField;
    ppRecebidasppField30: TppField;
    ppRecebidasppField31: TppField;
    ppRecebidasppField32: TppField;
    ppRecebidasppField33: TppField;
    ppRecebidasppField34: TppField;
    ppRecebidasppField35: TppField;
    ppRecebidasppField36: TppField;
    ppRecebidasppField37: TppField;
    ppRecebidasppField38: TppField;
    ppRecebidasppField39: TppField;
    ppRecebidasppField40: TppField;
    ppRecebidasppField41: TppField;
    ppRecebidasppField42: TppField;
    ppRecebidasppField43: TppField;
    ppRecebidasppField44: TppField;
    ppRecebidasppField45: TppField;
    dsRecebidas: TDataSource;
    dsCobranca: TDataSource;
    ppCobranca: TppDBPipeline;
    ppSubCob1: TppSubReport;
    ppChildReport17: TppChildReport;
    ppTitleBand10: TppTitleBand;
    ppLabel189: TppLabel;
    ppLine49: TppLine;
    ppLabel191: TppLabel;
    ppLabel192: TppLabel;
    ppDetailBand18: TppDetailBand;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppSummaryBand17: TppSummaryBand;
    ppLine50: TppLine;
    ppLabel190: TppLabel;
    ppDBText166: TppDBText;
    ppDBText167: TppDBText;
    ppLabel193: TppLabel;
    ppSubCob: TppSubReport;
    ppChildReport18: TppChildReport;
    ppTitleBand11: TppTitleBand;
    ppLabel194: TppLabel;
    ppLine51: TppLine;
    ppLabel195: TppLabel;
    ppLabel196: TppLabel;
    ppLabel197: TppLabel;
    ppLabel198: TppLabel;
    ppDetailBand19: TppDetailBand;
    ppDBText168: TppDBText;
    ppDBText169: TppDBText;
    ppDBText170: TppDBText;
    ppDBText171: TppDBText;
    ppSummaryBand18: TppSummaryBand;
    ppLine52: TppLine;
    ppSubCob2: TppSubReport;
    ppChildReport19: TppChildReport;
    ppTitleBand12: TppTitleBand;
    ppLabel199: TppLabel;
    ppLine53: TppLine;
    ppLabel200: TppLabel;
    ppLabel201: TppLabel;
    ppLabel202: TppLabel;
    ppLabel203: TppLabel;
    ppDetailBand20: TppDetailBand;
    ppDBText172: TppDBText;
    ppDBText173: TppDBText;
    ppDBText174: TppDBText;
    ppDBText175: TppDBText;
    ppSummaryBand19: TppSummaryBand;
    ppLine54: TppLine;
    ppSubCob3: TppSubReport;
    ppChildReport20: TppChildReport;
    ppTitleBand13: TppTitleBand;
    ppLabel204: TppLabel;
    ppLine55: TppLine;
    ppLabel205: TppLabel;
    ppLabel206: TppLabel;
    ppLabel207: TppLabel;
    ppLabel208: TppLabel;
    ppDetailBand21: TppDetailBand;
    ppDBText176: TppDBText;
    ppDBText177: TppDBText;
    ppDBText178: TppDBText;
    ppDBText179: TppDBText;
    ppSummaryBand20: TppSummaryBand;
    ppLine56: TppLine;
    ppSubCob4: TppSubReport;
    ppChildReport21: TppChildReport;
    ppTitleBand14: TppTitleBand;
    ppLabel209: TppLabel;
    ppLine57: TppLine;
    ppLabel210: TppLabel;
    ppLabel211: TppLabel;
    ppLabel212: TppLabel;
    ppLabel213: TppLabel;
    ppDetailBand22: TppDetailBand;
    ppDBText180: TppDBText;
    ppDBText181: TppDBText;
    ppDBText182: TppDBText;
    ppDBText183: TppDBText;
    ppSummaryBand21: TppSummaryBand;
    ppLine58: TppLine;
    ppSubCob5: TppSubReport;
    ppChildReport22: TppChildReport;
    ppTitleBand15: TppTitleBand;
    ppLabel214: TppLabel;
    ppLine59: TppLine;
    ppLabel215: TppLabel;
    ppLabel216: TppLabel;
    ppLabel217: TppLabel;
    ppLabel218: TppLabel;
    ppDetailBand23: TppDetailBand;
    ppDBText184: TppDBText;
    ppDBText185: TppDBText;
    ppDBText186: TppDBText;
    ppDBText187: TppDBText;
    ppSummaryBand22: TppSummaryBand;
    ppLine60: TppLine;
    ppSubCob6: TppSubReport;
    ppChildReport23: TppChildReport;
    ppTitleBand16: TppTitleBand;
    ppLabel219: TppLabel;
    ppLine61: TppLine;
    ppLabel220: TppLabel;
    ppLabel221: TppLabel;
    ppLabel222: TppLabel;
    ppLabel223: TppLabel;
    ppDetailBand24: TppDetailBand;
    ppDBText188: TppDBText;
    ppDBText189: TppDBText;
    ppDBText190: TppDBText;
    ppDBText191: TppDBText;
    ppSummaryBand23: TppSummaryBand;
    ppLine62: TppLine;
    ppSubCob7: TppSubReport;
    ppChildReport24: TppChildReport;
    ppTitleBand17: TppTitleBand;
    ppLabel224: TppLabel;
    ppLine63: TppLine;
    ppLabel225: TppLabel;
    ppLabel226: TppLabel;
    ppLabel227: TppLabel;
    ppLabel228: TppLabel;
    ppDetailBand25: TppDetailBand;
    ppDBText192: TppDBText;
    ppDBText193: TppDBText;
    ppDBText194: TppDBText;
    ppDBText195: TppDBText;
    ppSummaryBand24: TppSummaryBand;
    ppLine64: TppLine;
    ppSubVendas: TppSubReport;
    ppChildReport25: TppChildReport;
    ppTitleBand18: TppTitleBand;
    ppLine65: TppLine;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppDetailBand26: TppDetailBand;
    ppDBText196: TppDBText;
    ppDBText199: TppDBText;
    ppSummaryBand25: TppSummaryBand;
    dsVendas: TDataSource;
    ppVendas: TppDBPipeline;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLine67: TppLine;
    ppLabel234: TppLabel;
    ppDBText200: TppDBText;
    ppLabel235: TppLabel;
    ppDBText201: TppDBText;
    ppDBText202: TppDBText;
    ppLabel236: TppLabel;
    ppDBText203: TppDBText;
    ppLabel237: TppLabel;
    ppDBText204: TppDBText;
    ppLabel238: TppLabel;
    ppLabel229: TppLabel;
    ppDBText198: TppDBText;
    ppLabel230: TppLabel;
    ppDBText197: TppDBText;
    ppLabel233: TppLabel;
    ppDBText205: TppDBText;
    ppLabel239: TppLabel;
    ppLine66: TppLine;
    cmbRotas: TdxLookupEdit;
    Label10: TcxLabel;
    dsRotas: TDataSource;
    rd21: TRadioButton;
    ppSubRota: TppSubReport;
    ppChildReport26: TppChildReport;
    ppHeaderBand7: TppHeaderBand;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLabel242: TppLabel;
    ppLabel243: TppLabel;
    ppLine68: TppLine;
    ppLabel244: TppLabel;
    ppLabel245: TppLabel;
    ppLabel246: TppLabel;
    ppLabel247: TppLabel;
    ppLabel248: TppLabel;
    ppLabel249: TppLabel;
    ppLabel250: TppLabel;
    ppLabel251: TppLabel;
    ppDetailBand27: TppDetailBand;
    ppDBText206: TppDBText;
    ppDBText207: TppDBText;
    ppDBText208: TppDBText;
    ppDBText209: TppDBText;
    ppDBText210: TppDBText;
    ppDBText211: TppDBText;
    ppDBText212: TppDBText;
    ppDBText213: TppDBText;
    ppDBText214: TppDBText;
    ppDBText215: TppDBText;
    ppDBText216: TppDBText;
    ppDBText217: TppDBText;
    ppSubReport2: TppSubReport;
    ppChildReport27: TppChildReport;
    ppTitleBand19: TppTitleBand;
    ppLabel256: TppLabel;
    ppLabel257: TppLabel;
    ppLine69: TppLine;
    ppLabel258: TppLabel;
    ppLabel259: TppLabel;
    ppLabel260: TppLabel;
    ppDetailBand28: TppDetailBand;
    ppDBText222: TppDBText;
    ppDBText223: TppDBText;
    ppDBText224: TppDBText;
    ppDBText225: TppDBText;
    ppSummaryBand26: TppSummaryBand;
    ppLine70: TppLine;
    ppSubReport3: TppSubReport;
    ppChildReport28: TppChildReport;
    ppTitleBand20: TppTitleBand;
    ppLabel261: TppLabel;
    ppLine71: TppLine;
    ppLabel262: TppLabel;
    ppLabel263: TppLabel;
    ppLabel264: TppLabel;
    ppLabel265: TppLabel;
    ppDetailBand29: TppDetailBand;
    ppDBText226: TppDBText;
    ppDBText227: TppDBText;
    ppDBText228: TppDBText;
    ppDBText229: TppDBText;
    ppSummaryBand27: TppSummaryBand;
    ppLine72: TppLine;
    ppSummaryBand28: TppSummaryBand;
    ppLine73: TppLine;
    ppLabel266: TppLabel;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppLabel267: TppLabel;
    ppLine74: TppLine;
    ppDBText230: TppDBText;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppLine75: TppLine;
    ppDBCalc48: TppDBCalc;
    ppLabel268: TppLabel;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppDBCalc71: TppDBCalc;
    ppDBCalc72: TppDBCalc;
    raCodeModule8: TraCodeModule;
    Region: TppRegion;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    H1: TppDBText;
    lb7: TppLabel;
    RegionVendedor: TppRegion;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText56: TppDBText;
    ppLabel62: TppLabel;
    ppDBText84: TppDBText;
    ppLabel81: TppLabel;
    ppDBText231: TppDBText;
    ppLabel269: TppLabel;
    ppLabel270: TppLabel;
    ppLabel271: TppLabel;
    ppDBCalc73: TppDBCalc;
    ppDBCalc74: TppDBCalc;
    ppDBText70: TppDBText;
    ppDBText85: TppDBText;
    stgfRelReceber2: TcxPropertiesStore;
    edtNdoc: TEdit;
    cmbCidade: TdxLookupEdit;
    Label13: TcxLabel;
    dsCidade: TDataSource;
    rd22: TRadioButton;
    ppSubCidades: TppSubReport;
    ppChildReport29: TppChildReport;
    ppHeaderBand10: TppHeaderBand;
    ppLabel65: TppLabel;
    ppLabel97: TppLabel;
    ppLabel272: TppLabel;
    ppLabel273: TppLabel;
    ppLine76: TppLine;
    ppLabel274: TppLabel;
    ppLabel275: TppLabel;
    ppLabel276: TppLabel;
    ppLabel277: TppLabel;
    ppLabel278: TppLabel;
    ppLabel279: TppLabel;
    ppLabel280: TppLabel;
    ppLabel281: TppLabel;
    ppDetailBand30: TppDetailBand;
    ppDBText232: TppDBText;
    ppDBText233: TppDBText;
    ppDBText234: TppDBText;
    ppDBText235: TppDBText;
    ppDBText236: TppDBText;
    ppDBText237: TppDBText;
    ppDBText238: TppDBText;
    ppDBText239: TppDBText;
    ppDBText240: TppDBText;
    ppDBText241: TppDBText;
    ppDBText242: TppDBText;
    ppDBText243: TppDBText;
    ppSubReport4: TppSubReport;
    ppChildReport30: TppChildReport;
    ppTitleBand21: TppTitleBand;
    ppLabel286: TppLabel;
    ppLabel287: TppLabel;
    ppLine77: TppLine;
    ppLabel288: TppLabel;
    ppLabel289: TppLabel;
    ppLabel290: TppLabel;
    ppDetailBand31: TppDetailBand;
    ppDBText248: TppDBText;
    ppDBText249: TppDBText;
    ppDBText250: TppDBText;
    ppDBText251: TppDBText;
    ppSummaryBand29: TppSummaryBand;
    ppLine78: TppLine;
    ppSubReport5: TppSubReport;
    ppChildReport31: TppChildReport;
    ppTitleBand22: TppTitleBand;
    ppLabel291: TppLabel;
    ppLine79: TppLine;
    ppLabel292: TppLabel;
    ppLabel293: TppLabel;
    ppLabel294: TppLabel;
    ppLabel295: TppLabel;
    ppDetailBand32: TppDetailBand;
    ppDBText252: TppDBText;
    ppDBText253: TppDBText;
    ppDBText254: TppDBText;
    ppDBText255: TppDBText;
    ppSummaryBand30: TppSummaryBand;
    ppLine80: TppLine;
    ppSummaryBand31: TppSummaryBand;
    ppLine81: TppLine;
    ppLabel296: TppLabel;
    ppDBCalc75: TppDBCalc;
    ppDBCalc76: TppDBCalc;
    ppDBCalc77: TppDBCalc;
    ppDBCalc78: TppDBCalc;
    ppDBCalc79: TppDBCalc;
    ppGroup11: TppGroup;
    ppGroupHeaderBand11: TppGroupHeaderBand;
    ppLabel297: TppLabel;
    ppLine82: TppLine;
    ppDBText256: TppDBText;
    ppGroupFooterBand11: TppGroupFooterBand;
    ppLine83: TppLine;
    ppDBCalc80: TppDBCalc;
    ppLabel298: TppLabel;
    ppDBCalc81: TppDBCalc;
    ppDBCalc82: TppDBCalc;
    ppDBCalc83: TppDBCalc;
    ppDBCalc84: TppDBCalc;
    raCodeModule11: TraCodeModule;
    ppLabel299: TppLabel;
    ppDBText257: TppDBText;
    ppDBText90: TppDBText;
    ppLabel102: TppLabel;
    ppDBText91: TppDBText;
    ppLabel103: TppLabel;
    ppDBText92: TppDBText;
    ppLabel104: TppLabel;
    ppDBText93: TppDBText;
    ppLabel105: TppLabel;
    ppLabel300: TppLabel;
    ppDBText258: TppDBText;
    ppDBText94: TppDBText;
    ppLabel106: TppLabel;
    ppDBText95: TppDBText;
    ppLabel107: TppLabel;
    ppDBText96: TppDBText;
    ppLabel108: TppLabel;
    ppDBText110: TppDBText;
    ppLabel109: TppLabel;
    ppLabel301: TppLabel;
    ppDBText259: TppDBText;
    ppDBText112: TppDBText;
    ppLabel110: TppLabel;
    ppDBText124: TppDBText;
    ppLabel113: TppLabel;
    ppDBText126: TppDBText;
    ppLabel126: TppLabel;
    ppDBText127: TppDBText;
    ppLabel129: TppLabel;
    ppLabel302: TppLabel;
    ppDBText260: TppDBText;
    ppDBText128: TppDBText;
    ppLabel142: TppLabel;
    ppDBText129: TppDBText;
    ppLabel145: TppLabel;
    ppDBText130: TppDBText;
    ppLabel147: TppLabel;
    ppDBText131: TppDBText;
    ppLabel148: TppLabel;
    ppLabel303: TppLabel;
    ppDBText261: TppDBText;
    ppLabel304: TppLabel;
    ppDBText262: TppDBText;
    ppDBText2: TppDBText;
    ppLabel14: TppLabel;
    ppDBText28: TppDBText;
    ppLabel32: TppLabel;
    ppDBText33: TppDBText;
    ppLabel37: TppLabel;
    ppDBText42: TppDBText;
    ppLabel48: TppLabel;
    ppLabel305: TppLabel;
    ppDBText263: TppDBText;
    ppDBText218: TppDBText;
    ppLabel252: TppLabel;
    ppDBText219: TppDBText;
    ppLabel253: TppLabel;
    ppDBText220: TppDBText;
    ppLabel254: TppLabel;
    ppDBText221: TppDBText;
    ppLabel255: TppLabel;
    ppLabel306: TppLabel;
    ppDBText264: TppDBText;
    ppDBText244: TppDBText;
    ppLabel282: TppLabel;
    ppDBText245: TppDBText;
    ppLabel283: TppLabel;
    ppDBText246: TppDBText;
    ppLabel284: TppLabel;
    ppDBText247: TppDBText;
    ppLabel285: TppLabel;
    ppLabel307: TppLabel;
    ppDBText265: TppDBText;
    ppLabel308: TppLabel;
    ppDBText266: TppDBText;
    ppDBText267: TppDBText;
    ppLabel309: TppLabel;
    ppDBText268: TppDBText;
    ppLabel310: TppLabel;
    ppDBText269: TppDBText;
    ppLabel311: TppLabel;
    ppDBText270: TppDBText;
    ppLabel312: TppLabel;
    ppDBText271: TppDBText;
    ppLabel313: TppLabel;
    ppDBText272: TppDBText;
    ppLabel314: TppLabel;
    ppDBText273: TppDBText;
    ppLabel315: TppLabel;
    ppDBText274: TppDBText;
    ppLabel316: TppLabel;
    ppDBText275: TppDBText;
    ppLabel317: TppLabel;
    ppDBText276: TppDBText;
    ppLabel318: TppLabel;
    ppDBText277: TppDBText;
    ppLabel319: TppLabel;
    ppDBText278: TppDBText;
    ppLabel320: TppLabel;
    ppDBText279: TppDBText;
    ppLabel321: TppLabel;
    ppDBText280: TppDBText;
    ppLabel322: TppLabel;
    ppDBText281: TppDBText;
    ppLabel323: TppLabel;
    ppDBText282: TppDBText;
    ppLabel324: TppLabel;
    DataInicial: TdxDateEdit;
    DataFinal: TdxDateEdit;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText283: TppDBText;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActPreviewExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure Rd1Click(Sender: TObject);
    procedure CmbCobradorExit(Sender: TObject);
    procedure CmbCobradorEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure HabilitaHeader(Sender: TObject);
    procedure ImprimeHistorico(Sender: TObject);
    procedure lb1Print(Sender: TObject);
    procedure lb7Print(Sender: TObject);
    procedure ppSubRecebidas1Print(Sender: TObject);
    procedure ppDetailBand9BeforePrint(Sender: TObject);
    procedure ppLabel308Print(Sender: TObject);
  private
    { Private declarations }
    sqlOriginal : string;
    Historico : boolean;
  public
    { Public declarations }
  end;

var
  fRelReceber2: TfRelReceber2;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
     Relatorios_DM, Usuarios_DM, Main;

{$R *.DFM}

procedure TfRelReceber2.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfRelReceber2.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfRelReceber2.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfRelReceber2.ActPreviewExecute(Sender: TObject);
var
  sFiltro, sOrder, tipo, filtro : string;
begin
  filtro := '';
  sfiltro := '';

  //-----------inabilitando todos os sub-reports---------------------//clWindowText
  ppSubVendedor.visible :=  false;
  ppSubRegiao.visible :=  false;
  ppSubLocalCob.visible :=  false;
  ppSubClassificacao.visible :=  false;
  ppSubLancto.visible :=  false;
  ppSubVencto.visible :=  false;
  ppSubEmissao.visible :=  false;
  ppSubClientes.visible :=  false;
  ppSubRota.visible :=  false;
  ppSubCidades.visible :=  false;

  if (DataInicial.date <= 0) then
  begin
    application.messagebox('Defina a data inicial','Aviso',mb_ok + mb_iconinformation);
    DataInicial.setfocus;
    exit;
  end;

  if (DataFinal.date <= 0) then
  begin
    application.messagebox('Defina a data final','Aviso',mb_ok + mb_iconinformation);
    DataFinal.setfocus;
    exit;
  end;

  if (DataFinal.date < DataInicial.date) then
  begin
    application.messagebox('Intervalo de datas inválido','Aviso',mb_ok + mb_iconinformation);
    DataInicial.setfocus;
    exit;
  end;

  //-------------------------------------Filtrando as Combos------------------------------------------//
  if (cmbCliente.text <> '') then
  begin
    filtro := 'Cliente: '+cmbCliente.text;
    sfiltro := sfiltro + ' COD_CLIENTE ='+intToStr(cmbCliente.LookupKeyValue);
  end;

  if (cmbClassificacao.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Classificação: '+cmbClassificacao.text;
    sfiltro := sfiltro + ' COD_CLASSIFICACAO ='+intToStr(cmbClassificacao.LookupKeyValue);
  end;

  if (cmbLocalCob.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Local Cobrança: '+cmbLocalCob.text;
    sfiltro := sfiltro + ' COD_LOCALCOBRANCA ='+intToStr(cmbLocalCob.LookupKeyValue);
  end;

  if (cmbVendedor.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Vendedor: '+cmbVendedor.text;
    sfiltro := sfiltro + ' COD_VENDEDOR ='+intToStr(cmbVendedor.LookupKeyValue);
  end;

  if (cmbRegiao.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Região: '+cmbRegiao.text;
    sfiltro := sfiltro + ' COD_REGIAO ='+intToStr(cmbRegiao.LookupKeyValue);
  end;

  if (cmbRotas.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Rota: '+cmbRotas.text;
    sfiltro := sfiltro + ' COD_ROTA ='+intToStr(cmbRotas.LookupKeyValue);
  end;

  if (cmbCidade.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Cidade: '+cmbCidade.text;
    sfiltro := sfiltro + ' CIDADE ='+intToStr(cmbCidade.LookupKeyValue);
  end;

  //------------------------------------Tipo de Baixa (Parcial..)------------------------------------//
  if (filtro <> '') then
    filtro := filtro + ' - ';

  if (rd4.checked) then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    filtro := filtro + 'Situação: BX. PARCIALMENTE';
    sfiltro := sfiltro + ' BX_PARCIAL > 0 ';
  end
  else if (rd5.checked) then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    filtro := filtro + 'Situação: INTEGRAL';
    sfiltro := sfiltro + ' BX_PARCIAL = 0 ';
  end
  else
    filtro := filtro + 'Situação: AMBOS';

  //------------------------------------Arquivo morto------------------------------------------------//
  if (filtro <> '') then
    filtro := filtro + ' - ';

  if (rd9.checked) then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    filtro := filtro + 'Arq. Morto: SIM';
    sfiltro := sfiltro + ' arq_morto = ''S''';
  end
  else if (rd10.checked) then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    filtro := filtro + 'Arq. Morto: NÃO';
    sfiltro := sfiltro +' arq_morto = ''N''';
  end
  else
    filtro := filtro + 'Arq. Morto: AMBOS';


  //------------------------------------"Documentos"-------------------------------------------------//
  //Ndocto
  if (edtNdoc.text <> '') then
  begin
    if (sfiltro <> '') then
    begin
      sfiltro := sFiltro + ' and ';
      filtro := filtro + ' - ';
    end;

    filtro := filtro + 'Nº Docto:';
    sfiltro := sfiltro +' DOCTO = '+QuotedStr(edtNdoc.text);
  end;

  //Ndocto  aqui
  if filtro <> '' then
    filtro := filtro + ' - ';

  if (ckComplementar.checked) then
  begin
    filtro := filtro + 'Ex. dados complementares: SIM';
    historico := true;
  end
  else
  begin
    filtro := filtro + 'Ex. dados complementares: NÃO';
    historico := false;
  end;

  //Tipo docto
  if (cmbTipoDocto.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Tipo Docto: '+cmbTipoDocto.text;
    sfiltro := sfiltro + ' tipo_docto ='+QuotedStr(Trim(cmbTipoDocto.LookupKeyValue));
  end;

  //-------------------------------------valores-------------------------------------------------------//
  if (sfiltro <> '') then
    sfiltro := sFiltro + ' and ';

  if (filtro <> '') then
    filtro := filtro + ' - ';

  sfiltro := sfiltro + ' ( saldo between '+StringReplace(edtVlrInicial.Text,'.','',[rfReplaceAll])+' and '+StringReplace(edtVlrFinal.Text,'.','',[rfReplaceAll])+')';
  sfiltro := StringReplace(sfiltro,',','.',[rfReplaceAll]);
  filtro := filtro + 'Valores: '+edtVlrInicial.Text+' à '+edtVlrFinal.text;


  //-------------------------------------Tipo de Data-------------------------------------------------//
  if (filtro <> '') then
    filtro := filtro + ' - ';

  if (rd1.checked) then
  begin
    filtro := filtro + 'Tipo de Data: VENCIMENTO';
    tipo := 'V';
  end
  else if (rd2.checked) then
  begin
    filtro := filtro + 'Tipo de Data: LANÇAMENTO';
    tipo := 'L'
  end
  else
  begin
    filtro := filtro + 'Tipo de Data: EMISSÃO';
    tipo := 'E'
  end;

  //-------------------------------------Depois-------------------------------------------------------//
  //Análitico e Sintético
  //Exibir Histórico
  //ckComplementar

    //---------------------------------------Relatório--------------------------------------------------//
  //-----------Clientes----------//
  if (rd13.checked) then
  begin
    ppSubClientes.visible :=  true;
    sOrder := ' order by NOME_CLIENTE, DT_VENCTO, COD_RECEBER';
    filtro := filtro + ' Opção de Quebra: CLIENTE';
  end;

  //-----------Emissao----------//
  if (rd14.checked) then
  begin
    ppSubEmissao.visible :=  true;
    sOrder := ' order by DT_EMISSAO, DT_VENCTO, COD_RECEBER';
    filtro := filtro + ' Opção de Quebra: EMISSAO';
  end;

  //-----------Vencimento----------//
  if (rd15.checked) then
  begin
    ppSubVencto.visible :=  true;
    sOrder := ' order by DT_VENCTO, COD_RECEBER';
    filtro := filtro + ' Opção de Quebra: DT. VENCTO';
  end;

  //-----------Lancamento----------//
  if (rd16.checked) then
  begin
   ppSubLancto.visible :=  true;
   sOrder := ' order by DT_LANCTO, DT_VENCTO, COD_RECEBER';
   filtro := filtro + ' Opção de Quebra: DT. LANCTO';
  end;

  //-----------Classificacao----------//
  if (rd19.checked) then
  begin
   ppSubClassificacao.visible :=  true;
   sOrder := ' order by CLASSIFICACAO, DT_VENCTO, COD_RECEBER';
   filtro := filtro + ' Opção de Quebra: CLASSIFICAÇÃO';
  end;

  //-----------Local Cobranca----------//
  if (rd20.checked) then
  begin
    ppSubLocalCob.visible :=  true;
    sOrder := ' order by LOCALCOBRANCA, DT_VENCTO, COD_RECEBER';
    filtro := filtro + ' Opção de Quebra: LOCAL COBRANÇA';
  end;

  //-----------Vendedor----------//
  if (rd17.checked) then
  begin
    ppSubVendedor.visible :=  true;
    sOrder := ' order by NOME_VENDEDOR, DT_VENCTO, COD_RECEBER';
    filtro := filtro + ' Opção de Quebra: VENDEDOR';
  end;

  //-----------Região----------//
  if (rd18.checked) then
  begin
    ppSubRegiao.visible :=  true;
    sOrder := ' order by REGIAO, DT_VENCTO, COD_RECEBER';
    filtro := filtro + ' Opção de Quebra: REGIÃO';
  end;

  if (rd21.checked) then
  begin
    ppSubROTA.visible :=  true;
    sOrder := ' order by ROTA, DT_VENCTO, COD_RECEBER';
    filtro := filtro + ' Opção de Quebra: ROTAS';
  end;

  if (rd22.checked) then
  begin
    ppSubCidades.visible :=  true;
    sOrder := ' order by CIDADE_NOME, DT_VENCTO, COD_RECEBER';
    filtro := filtro + ' Opção de Quebra: CIDADES';
  end;

  with dmRelatorios do
  begin
    qryRelReceber.Close;
    qryRelReceber.sql.text := sqlOriginal;
    if sFiltro <> '' then
      qryRelReceber.sql.text := sqlOriginal + ' where '+sfiltro+sOrder;

    qryRelReceber.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelReceber.paramByName('data1').asDate := DataInicial.date;
    qryRelReceber.paramByName('data2').asDate := DataFinal.date;
    qryRelReceber.paramByName('dt_cx').asDate := dmApp.DataCaixa;
    qryRelReceber.paramByName('tipo').value := tipo;
    qryRelReceber.Open;
    //----recebidas------
    qryRelRecebidas.close;
    qryRelRecebidas.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelRecebidas.Open;

    //----Cobranças------
    qryRelCobRec.close;
    qryRelCobRec.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelCobRec.Open;

    //----Vendas------
    qryRelVDRec.close;
    qryRelVDRec.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelVDRec.Open;
  end;

  lblEmpresa.caption := dmapp.nome;
  lblFiltro.caption := filtro;
  rptRelReceber.print;
  dmrelatorios.qryRelReceber.sql.text := sqlOriginal;
end;

procedure TfRelReceber2.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  cmbCliente.setfocus;

  pnlClient.color := clWhite;
  edAs1.Style.Font.Color := clred;
//  edAs2.Style.Font.Color := clred;
  edAs3.Style.Font.Color := clred;
end;

procedure TfRelReceber2.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TfRelReceber2.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TfRelReceber2.Rd1Click(Sender: TObject);
begin
{  if Rd1.Checked then
  begin
     tedtCobrar.Enabled := false;
     tedtCobrado.Enabled := false;
     gpAgendamentos.Enabled := false;
  end
  else
  begin
    tedtCobrar.Enabled := true;
    tedtCobrado.Enabled := true;
    gpAgendamentos.Enabled := true;
  end;}
end;

procedure TfRelReceber2.CmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfRelReceber2.CmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfRelReceber2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfRelReceber2.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  sqlOriginal := dmRelatorios.qryRelReceber.sql.text;
  with DmFinanceiro do
  begin
    SelPessoasFJ.close;
    SelPessoasFJ.Open;;
    SelPessoasFJ.fetchAll;
  end;

  with DMRelatorios do
  begin
    SelVendedor.close;
    SelVendedor.open;
    SelVendedor.FetchAll;

    SelClassif.close;
    SelClassif.open;
    SelClassif.FetchAll;

    SelLocalCob.close;
    SelLocalCob.open;
    SelLocalCob.FetchAll;

    SelRota.close;
    SelRota.open;
    SelRota.FetchAll;

    SelRegiao.close;
    SelRegiao.open;
    SelRegiao.FetchAll;

    SelTipoDocto2.close;
    SelTipoDocto2.open;
    SelTipoDocto2.fetchAll;

    SelCidade.close;
    SelCidade.Open;
    SelCidade.FetchAll;
  end;
end;

procedure TfRelReceber2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmApp.ZeraCaixaUsuario(owner);
  ACTION := cAFree;
  fRelReceber2 := nil;
end;

procedure TfRelReceber2.HabilitaHeader(Sender: TObject);
begin
  TppHeaderBand(Sender).visible := true;
end;

procedure TfRelReceber2.ImprimeHistorico(Sender: TObject);
begin
 //Se chekbox complementar estiver marcado.. então terei de almentar o tamanho do detalhe
 if not(ckComplementar.checked) then
   TppDetailBand(Sender).Height := 0.2083
 else
   TppDetailBand(Sender).Height := 0.8104;
end;

procedure TfRelReceber2.lb1Print(Sender: TObject);
begin
  //esse código apenas seta os complementares de agrupadores clientes
  if ckComplementar.checked then
    TPPLabel(Sender).visible := true
  else
    TPPLabel(Sender).visible := false;
end;

procedure TfRelReceber2.lb7Print(Sender: TObject);
begin
 //esse código apenas seta os complementares de todos os outros agrupadores
  TPPLabel(Sender).Top := 0.1317;
  if ckComplementar.checked then
    TPPLabel(Sender).visible := true
  else
    TPPLabel(Sender).visible := false;
end;

procedure TfRelReceber2.ppSubRecebidas1Print(Sender: TObject);
begin
  //--------------------Analítico----------------------
  if (rd7.checked) then
    TppSubReport(Sender).visible := true
  else
    TppSubReport(Sender).visible := false;
end;

procedure TfRelReceber2.ppDetailBand9BeforePrint(Sender: TObject);
begin
  if not(ckComplementar.checked) then
   TppDetailBand(Sender).Height := 0.2083
 else
   TppDetailBand(Sender).Height := 0.8104;
end;

procedure TfRelReceber2.ppLabel308Print(Sender: TObject);
begin
  //Código para os labels do 2 complemento
  TPPLabel(Sender).Top := 0.2700;
  if ckComplementar.checked then
    TPPLabel(Sender).visible := true
  else
    TPPLabel(Sender).visible := false;
end;

end.
