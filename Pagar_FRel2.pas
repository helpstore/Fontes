  unit Pagar_FRel2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, ComCtrls, 
  Mask,     ppDB, ppDBPipe,
  ppParameter, ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt,
     cxPropertiesStore, cxGraphics, cxControls,
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
   cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, 
  cxCurrencyEdit, cxCheckBox, IBCustomDataSet, IBQuery;

type
  TfRelPagar2 = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    GroupBox2: TGroupBox;
    Label9: TcxLabel;
    Label7: TcxLabel;
    cmbCCusto: TdxLookupEdit;
    cmbCredor: TdxLookupEdit;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    Rd1: TRadioButton;
    Rd2: TRadioButton;
    DataInicial: TcxDateEdit;
    DataFinal: TcxDateEdit;
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
    edtNdoc: TEdit;
    gbValor: TGroupBox;
    Label1: TcxLabel;
    Label6: TcxLabel;
    edtVlrInicial: TcxCurrencyEdit;
    edtVlrFinal: TcxCurrencyEdit;
    DsFornecedor: TDataSource;
    dsCCusto: TDataSource;
    rptRelPagar: TppReport;
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
    GroupBox3: TGroupBox;
    rd13: TRadioButton;
    rd14: TRadioButton;
    rd15: TRadioButton;
    rd16: TRadioButton;
    ppSubFornecedores: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule1: TraCodeModule;
    ppLabel1: TppLabel;
    ppLine2: TppLine;
    ppDBText1: TppDBText;
    ppSubCCusto: TppSubReport;
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
    ppLabel125: TppLabel;
    ppDetailBand9: TppDetailBand;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText109: TppDBText;
    ppSummaryBand8: TppSummaryBand;
    ppLine30: TppLine;
    ppLabel127: TppLabel;
    ppDBCalc85: TppDBCalc;
    ppDBCalc86: TppDBCalc;
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
    ppDBCalc95: TppDBCalc;
    raCodeModule9: TraCodeModule;
    ppLabel112: TppLabel;
    ppDBText98: TppDBText;
    ppSubVencto: TppSubReport;
    ppChildReport3: TppChildReport;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppSummaryBand3: TppSummaryBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel46: TppLabel;
    ppLine11: TppLine;
    ppDBText41: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    raCodeModule3: TraCodeModule;
    ppSubEmissao: TppSubReport;
    ppChildReport2: TppChildReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand2: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel30: TppLabel;
    ppLine7: TppLine;
    ppDBText27: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    raCodeModule2: TraCodeModule;
    cmbOrigem: TComboBox;
    dsTipoDocto: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    lb4: TppDBText;
    lb6: TppDBText;
    lb3: TppLabel;
    lb5: TppLabel;
    ppDBText56: TppDBText;
    ppLabel62: TppLabel;
    ppDBText70: TppDBText;
    ppLabel65: TppLabel;
    ppDBText84: TppDBText;
    ppLabel81: TppLabel;
    ppSubPagas: TppSubReport;
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
    ppSubPagas2: TppSubReport;
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
    ppPagas: TppDBPipeline;
    dsPagas: TDataSource;
    ppSubEntradas: TppSubReport;
    ppChildReport25: TppChildReport;
    ppTitleBand18: TppTitleBand;
    ppLine65: TppLine;
    ppLabel231: TppLabel;
    ppLabel232: TppLabel;
    ppDetailBand26: TppDetailBand;
    ppDBText196: TppDBText;
    ppDBText199: TppDBText;
    ppSummaryBand25: TppSummaryBand;
    dsEntradas: TDataSource;
    ppEntradas: TppDBPipeline;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppLabel234: TppLabel;
    ppDBText200: TppDBText;
    ppLabel236: TppLabel;
    ppLabel229: TppLabel;
    ppDBText198: TppDBText;
    ppLabel230: TppLabel;
    ppDBText197: TppDBText;
    ppLabel233: TppLabel;
    ppDBText205: TppDBText;
    ppLabel239: TppLabel;
    rd17: TRadioButton;
    ppSubLancto: TppSubReport;
    ppChildReport4: TppChildReport;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppSubPagas5: TppSubReport;
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
    ppSummaryBand4: TppSummaryBand;
    ppLabel61: TppLabel;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel63: TppLabel;
    ppLine15: TppLine;
    ppDBText55: TppDBText;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine16: TppLine;
    raCodeModule5: TraCodeModule;
    ckComplementar: TcxCheckBox;
    dbRelPagar: TppDBPipeline;
    ppDBText2: TppDBText;
    ppLabel14: TppLabel;
    ppLine14: TppLine;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppLabel32: TppLabel;
    ppLabel37: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine13: TppLine;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppDBText28: TppDBText;
    ppDBText33: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText50: TppDBText;
    ppLabel57: TppLabel;
    ppDBText51: TppDBText;
    ppLabel58: TppLabel;
    ppDBText52: TppDBText;
    ppLabel59: TppLabel;
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
    ppSubPagas6: TppSubReport;
    ppChildReport5: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel45: TppLabel;
    ppLabel47: TppLabel;
    ppLine10: TppLine;
    ppLabel60: TppLabel;
    ppLabel64: TppLabel;
    ppLabel66: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine12: TppLine;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText54: TppDBText;
    ppDBText57: TppDBText;
    ppDBText59: TppDBText;
    ppLabel67: TppLabel;
    ppDBText60: TppDBText;
    ppLabel68: TppLabel;
    ppDBText61: TppDBText;
    ppLabel69: TppLabel;
    ppLine17: TppLine;
    ppLabel70: TppLabel;
    ppLine18: TppLine;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
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
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText25: TppDBText;
    ppLabel28: TppLabel;
    ppDBText26: TppDBText;
    ppLabel29: TppLabel;
    ppDBText63: TppDBText;
    ppLabel31: TppLabel;
    ppLine6: TppLine;
    ppLabel71: TppLabel;
    ppLine8: TppLine;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText66: TppDBText;
    ppLine3: TppLine;
    ppLabel72: TppLabel;
    ppLine4: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBText201: TppDBText;
    ppLabel235: TppLabel;
    ppDBText12: TppDBText;
    ppLabel11: TppLabel;
    ppDBText13: TppDBText;
    ppLabel13: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppShape1: TppShape;
    ppLabel82: TppLabel;
    ppDBText14: TppDBText;
    ppLabel80: TppLabel;
    ppDBText65: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppLabel83: TppLabel;
    ppDBText77: TppDBText;
    ppLine19: TppLine;
    ppDBText49: TppDBText;
    ppDBText53: TppDBText;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppDBText58: TppDBText;
    ppDBText62: TppDBText;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDBText24: TppDBText;
    ppDBText64: TppDBText;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    stgfRelPagar2: TcxPropertiesStore;
    ppDBText78: TppDBText;
    ppLabel84: TppLabel;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    RadioButton1: TRadioButton;
    ppSystemVariable1: TppSystemVariable;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText81: TppDBText;
    qryContratos: TIBQuery;
    qryContratosCODIGO: TIntegerField;
    qryContratosDESCRICAO: TIBStringField;
    dsSelContrato: TDataSource;
    cmbContrato: TdxLookupEdit;
    Label11: TcxLabel;
    rdContrato: TRadioButton;
    SubContrato: TppSubReport;
    ppChildReport6: TppChildReport;
    ppHeaderBand5: TppHeaderBand;
    ppLabel87: TppLabel;
    ppLabel90: TppLabel;
    ppLine20: TppLine;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel96: TppLabel;
    ppLabel97: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText82: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppLabel98: TppLabel;
    ppDBText94: TppDBText;
    ppLabel99: TppLabel;
    ppDBText95: TppDBText;
    ppLabel100: TppLabel;
    ppSubReport2: TppSubReport;
    ppChildReport9: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppLine21: TppLine;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppLabel105: TppLabel;
    ppDetailBand10: TppDetailBand;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine22: TppLine;
    ppDBText110: TppDBText;
    ppSummaryBand9: TppSummaryBand;
    ppLine23: TppLine;
    ppLabel106: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel107: TppLabel;
    ppLine24: TppLine;
    ppDBText112: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine27: TppLine;
    ppDBCalc22: TppDBCalc;
    ppLabel108: TppLabel;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    raCodeModule6: TraCodeModule;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
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
    procedure ppSubPagas1Print(Sender: TObject);
    procedure ppSystemVariable1GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    sqlOriginal : string;
    Historico : boolean;
  public
    { Public declarations }
  end;

var
  fRelPagar2: TfRelPagar2;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
     Relatorios_DM, Usuarios_DM;

{$R *.DFM}

procedure TfRelPagar2.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfRelPagar2.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfRelPagar2.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfRelPagar2.ActOkExecute(Sender: TObject);
var
  sFiltro, filtro, sOrder, tipo, datas, intervalo,valores : string;
begin
  filtro := '';
  sfiltro := '';

  //-----------inabilitando todos os sub-reports---------------------//clWindowText
  ppSubCCusto.visible :=  false;
  ppSubLancto.visible :=  false;
  ppSubVencto.visible :=  false;
  ppSubEmissao.visible :=  false;
  ppSubFornecedores.visible :=  false;

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

  intervalo := 'between '+QuotedStr(DateToStr(DataInicial.date))+' and '+QuotedStr(DateToStr(DataFinal.date))+' ) ';
  intervalo := stringReplace(intervalo,'/','.',[rfReplaceAll]);
  
  //-------------------------------------Filtrando as Combos------------------------------------------//
  if (cmbCredor.text <> '') then
  begin
    filtro := 'Credor: '+cmbCredor.text;
    sfiltro := sfiltro + ' and pgr.pessoa_fj ='+intToStr(cmbCredor.LookupKeyValue);
  end;

  if (cmbCCusto.text <> '') then
  begin
    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'C. Custo: '+cmbCCusto.text;
    sfiltro := sfiltro + ' and pgr.centro_custo ='+intToStr(cmbCCusto.LookupKeyValue);
  end;


  if (cmbContrato.text <> '') then
  begin
    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + ' Contrato: '+cmbContrato.text;
    sfiltro := sfiltro + ' and ct.codigo ='+intToStr(cmbContrato.LookupKeyValue);
  end;


  //------------------------------------Tipo de Baixa (Parcial..)------------------------------------//
  if (filtro <> '') then
    filtro := filtro + ' - ';

  if (rd4.checked) then
  begin
    filtro := filtro + 'Situação: BX. PARCIALMENTE';
    sfiltro := sfiltro + ' and pgr.vlr_parcial > 0 ';
  end
  else if (rd5.checked) then
  begin
    filtro := filtro + 'Situação: INTEGRAL';
    sfiltro := sfiltro + ' and coalesce(pgr.vlr_parcial,0) = 0 ';
  end
  else
    filtro := filtro + 'Situação: AMBOS';

  //------------------------------------"Documentos"-------------------------------------------------//
  //Ndocto
  if (trim(edtNdoc.text) <> '') then
  begin
    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Nº Docto:';
    sfiltro := sfiltro +' and pgr.docto ='+QuotedStr(trim(edtNdoc.text));
  end;

  //Ndocto
  if filtro <> '' then
    filtro := filtro + ' - ';

  //Tipo docto
  if (cmbOrigem.text <> '') then
  begin
    filtro := filtro + 'Origem: '+cmbOrigem.text;

    if (cmbOrigem.ItemIndex = 0)then
      sfiltro := sfiltro + ' and pgr.origem = ''ENT'' '
    else
      sfiltro := sfiltro + ' and pgr.origem = ''MAN'' ';

  end;

  //-------------------------------------valores-------------------------------------------------------//
  if (filtro <> '') then
    filtro := filtro + ' - ';

  valores := StringReplace(edtVlrInicial.Text,'.','',[rfReplaceAll])+' and '+StringReplace(edtVlrFinal.Text,'.','',[rfReplaceAll])+')';
  valores := StringReplace(valores,',','.',[rfReplaceAll]);
  sfiltro := sfiltro + ' and ( (coalesce(pgr.valor,0) - coalesce(pgr.vlr_parcial,0)) between '+valores;
  filtro := filtro + 'Valores: '+edtVlrInicial.Text+' à '+edtVlrFinal.text;


  //-------------------------------------Tipo de Data-------------------------------------------------//
  if (filtro <> '') then
    filtro := filtro + ' - ';

  if (rd1.checked) then
  begin
    filtro := filtro + 'Tipo de Data: VENCIMENTO';
    sfiltro := sfiltro + ' and ( pgr.dt_vencto '+intervalo;
  end
  else if (rd2.checked) then
  begin
    filtro := filtro + 'Tipo de Data: LANÇAMENTO';
    sfiltro := sfiltro +' and ( pgr.dt_lancto '+intervalo;
  end
  else
  begin
    filtro := filtro + 'Tipo de Data: EMISSÃO';
    sfiltro := sfiltro + ' and ( pgr.dt_emissao '+intervalo;
  end;

  //---------------------------------------Relatório--------------------------------------------------//

  //-----------Fornecedor--------//
  if (rd13.checked) then
  begin
    ppSubFornecedores.visible :=  true;
    sOrder := ' order by psa.nome_razao, pgr.codigo';
    filtro := filtro + ' Opção de Quebra: Credor';
  end;

  if (rdContrato.checked) then
  begin
    SubContrato.visible :=  true;
    sOrder := ' order by ct.codigo, ct.descricao';
    filtro := filtro + ' Opção de Quebra: Contrato';
  end;

  //-----------Emissao----------//
  if (rd14.checked) then
  begin
    ppSubEmissao.visible :=  true;
    sOrder := ' order by pgr.DT_EMISSAO, pgr.codigo';
    filtro := filtro + ' Opção de Quebra: EMISSAO';
  end;

  //-----------Vencimento----------//
  if (rd15.checked) then
  begin
    ppSubVencto.visible :=  true;
    sOrder := ' order by pgr.DT_VENCTO, pgr.codigo';
    filtro := filtro + ' Opção de Quebra: DT. VENCTO';
  end;

  //-----------Lancamento----------//
  if (rd16.checked) then
  begin
   ppSubLancto.visible :=  true;
   sOrder := ' order by pgr.DT_LANCTO, pgr.codigo';
   filtro := filtro + ' Opção de Quebra: DT. LANCTO';
  end;


  //-----------C.Custo------------//
  if (rd17.checked) then
  begin
    ppSubCcusto.visible :=  true;
    sOrder := ' order by cct.nome, pgr.codigo';
    filtro := filtro + ' Opção de Quebra: C. Custo';
  end;

  with dmRelatorios do
  begin
    qryRelPagar.Close;
    qryRelPagar.sql.text := sqlOriginal;
    if sFiltro <> '' then
      qryRelPagar.sql.text := sqlOriginal + sfiltro+sOrder;

    qryRelPagar.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelPagar.Open;

    //----recebidas------
    qryRelPagas.close;
    qryRelPagas.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelPagas.Open;

    //-----Entradas-----
    qryRelEntPag.close;
    qryRelEntPag.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelEntPag.Open;
  end;
  lblEmpresa.caption := dmapp.nome;
  lblFiltro.caption := filtro;
  rptRelPagar.print;
  dmrelatorios.qryRelPagar.sql.text := sqlOriginal;
end;

procedure TfRelPagar2.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  cmbCredor.setfocus;

  pnlClient.color := clWhite;
  edAs1.Style.Font.Color := clred;
  edAs3.Style.Font.Color := clred;
end;

procedure TfRelPagar2.IniEnter(Sender: TObject);
begin
  CORFUNDO( SENDER );
end;

procedure TfRelPagar2.IniExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
end;

procedure TfRelPagar2.CmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfRelPagar2.CmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfRelPagar2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfRelPagar2.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  qryContratos.Close;
  qryContratos.Open;

  with DmFinanceiro do
  begin
    SelCentro.close;
    SelCentro.Open;;
    SelCentro.fetchAll;

    SelFornecedor.close;
    SelFornecedor.Open;
    SelFornecedor.FetchAll;
  end;

  sqlOriginal := dmRelatorios.qryRelPagar.sql.text;
end;

procedure TfRelPagar2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := cAFree;
  fRelPagar2 := nil;
end;

procedure TfRelPagar2.HabilitaHeader(Sender: TObject);
begin
  TppHeaderBand(Sender).visible := true;
end;

procedure TfRelPagar2.ImprimeHistorico(Sender: TObject);
begin
 //Se chekbox complementar estiver marcado.. então terei de almentar o tamanho do detalhe
 if not(ckComplementar.checked) then
   TppDetailBand(Sender).Height := 0.1563
 else
   TppDetailBand(Sender).Height := 0.3854;
end;

procedure TfRelPagar2.lb1Print(Sender: TObject);
begin
  //esse código apenas seta os complementares de agrupadores clientes
  if ckComplementar.checked then
    TPPLabel(Sender).visible := true
  else
    TPPLabel(Sender).visible := false;
end;

procedure TfRelPagar2.lb7Print(Sender: TObject);
begin
 //esse código apenas seta os complementares de todos os outros agrupadores
  TPPLabel(Sender).Top := 0.2104;
  if ckComplementar.checked then
    TPPLabel(Sender).visible := true
  else
    TPPLabel(Sender).visible := false;
end;

procedure TfRelPagar2.ppSubPagas1Print(Sender: TObject);
begin
  //--------------------Analítico----------------------
  if (rd7.checked) then
    TppSubReport(Sender).visible := true
  else
    TppSubReport(Sender).visible := false;
end;

procedure TfRelPagar2.ppSystemVariable1GetText(Sender: TObject;
  var Text: String);
begin
      Text := 'Relatório do dia '+DateToStr(DataInicial.Date) + ' ao dia ' + DateToStr(DataFinal.date);
end;

end.
