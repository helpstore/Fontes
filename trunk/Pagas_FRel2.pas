   unit Pagas_FRel2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, ComCtrls, 
  Mask,      ppDB, ppDBPipe,
  ppParameter, ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt,
     cxPropertiesStore, TXRB, cxGraphics, cxControls,
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
  cxCheckBox, cxCurrencyEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar;

type
  TfRelPagas2 = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    Panel2: TPanel;
    BtnOk: tcxButton;
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
    GroupBox5: TGroupBox;
    rd7: TRadioButton;
    rd8: TRadioButton;
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
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText81: TppDBText;
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
  private
    { Private declarations }
    sqlOriginal : string;
    Historico : boolean;
  public
    { Public declarations }
  end;

var
  fRelPagas2: TfRelPagas2;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
     Relatorios_DM, Usuarios_DM;

{$R *.DFM}

procedure TfRelPagas2.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfRelPagas2.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfRelPagas2.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfRelPagas2.ActOkExecute(Sender: TObject);
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
    application.messagebox('Intervalo de datas inv�lido','Aviso',mb_ok + mb_iconinformation);
    DataInicial.setfocus;
    exit;
  end;

  intervalo := 'between '+QuotedStr(DateToStr(DataInicial.date))+' and '+QuotedStr(DateToStr(DataFinal.date))+' ) ';
  intervalo := stringReplace(intervalo,'/','.',[rfReplaceAll]);
  
  //-------------------------------------Filtrando as Combos------------------------------------------//
  if (cmbCredor.text <> '') then
  begin
    filtro := 'Credor: '+cmbCredor.text;
    sfiltro := sfiltro + ' and pessoa_fj ='+intToStr(cmbCredor.LookupKeyValue);
  end;

  if (cmbCCusto.text <> '') then
  begin
    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'C. Custo: '+cmbCCusto.text;
    sfiltro := sfiltro + ' and centro_custo ='+intToStr(cmbCCusto.LookupKeyValue);
  end;


  //------------------------------------Tipo de Baixa (Parcial..)------------------------------------//
  if (filtro <> '') then
    filtro := filtro + ' - ';

  if (rd4.checked) then
  begin
    filtro := filtro + 'Situa��o: BX. PARCIALMENTE';
    sfiltro := sfiltro + ' and vlr_parcial > 0 ';
  end
  else if (rd5.checked) then
  begin
    filtro := filtro + 'Situa��o: INTEGRAL';
    sfiltro := sfiltro + ' and coalesce(vlr_parcial,0) = 0 ';
  end
  else
    filtro := filtro + 'Situa��o: AMBOS';

  //------------------------------------"Documentos"-------------------------------------------------//
  //Ndocto
  if (trim(edtNdoc.text) <> '') then
  begin
    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'N� Docto:';
    sfiltro := sfiltro +' and docto ='+QuotedStr(trim(edtNdoc.text));
  end;

  //Ndocto
  if filtro <> '' then
    filtro := filtro + ' - ';

  //Tipo docto
  if (cmbOrigem.text <> '') then
  begin
    filtro := filtro + 'Origem: '+cmbOrigem.text;

    if (cmbOrigem.ItemIndex = 0)then
      sfiltro := sfiltro + ' and origem = ''ENT'' '
    else
      sfiltro := sfiltro + ' and origem = ''MAN'' ';

  end;

  //-------------------------------------valores-------------------------------------------------------//
  if (filtro <> '') then
    filtro := filtro + ' - ';

  valores := StringReplace(edtVlrInicial.Text,'.','',[rfReplaceAll])+' and '+StringReplace(edtVlrFinal.Text,'.','',[rfReplaceAll])+')';
  valores := StringReplace(valores,',','.',[rfReplaceAll]);
  sfiltro := sfiltro + ' and ( (coalesce(valor,0) - coalesce(vlr_parcial,0)) between '+valores;
  filtro := filtro + 'Valores: '+edtVlrInicial.Text+' � '+edtVlrFinal.text;


  //-------------------------------------Tipo de Data-------------------------------------------------//
  if (filtro <> '') then
    filtro := filtro + ' - ';

  if (rd1.checked) then
  begin
    filtro := filtro + 'Tipo de Data: VENCIMENTO';
    sfiltro := sfiltro + ' and ( dt_vencto '+intervalo;
  end
  else if (rd2.checked) then
  begin
    filtro := filtro + 'Tipo de Data: LAN�AMENTO';
    sfiltro := sfiltro +' and ( dt_lancto '+intervalo;
  end
  else
  begin
    filtro := filtro + 'Tipo de Data: EMISS�O';
    sfiltro := sfiltro + ' and ( dt_emissao '+intervalo;
  end;



  //---------------------------------------Relat�rio--------------------------------------------------//

  //-----------Fornecedor--------//
  if (rd13.checked) then
  begin
    ppSubFornecedores.visible :=  true;
    sOrder := ' order by psa.nome_razao, pgr.codigo';
    filtro := filtro + ' Op��o de Quebra: Credor';
  end;

  //-----------Emissao----------//
  if (rd14.checked) then
  begin
    ppSubEmissao.visible :=  true;
    sOrder := ' order by DT_EMISSAO, pgr.codigo';
    filtro := filtro + ' Op��o de Quebra: EMISSAO';
  end;

  //-----------Vencimento----------//
  if (rd15.checked) then
  begin
    ppSubVencto.visible :=  true;
    sOrder := ' order by DT_VENCTO, pgr.codigo';
    filtro := filtro + ' Op��o de Quebra: DT. VENCTO';
  end;

  //-----------Lancamento----------//
  if (rd16.checked) then
  begin
   ppSubLancto.visible :=  true;
   sOrder := ' order by DT_LANCTO, pgr.codigo';
   filtro := filtro + ' Op��o de Quebra: DT. LANCTO';
  end;


  //-----------C.Custo------------//
  if (rd17.checked) then
  begin
    ppSubCcusto.visible :=  true;
    sOrder := ' order by cct.nome, pgr.codigo';
    filtro := filtro + ' Op��o de Quebra: C. Custo';
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

procedure TfRelPagas2.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  cmbCredor.setfocus;

  pnlClient.color := clWhite;
  edAs1.Style.Font.Color := clred;
  edAs3.Style.Font.Color := clred;
end;

procedure TfRelPagas2.IniEnter(Sender: TObject);
begin
  CORFUNDO( SENDER );
end;

procedure TfRelPagas2.IniExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
end;

procedure TfRelPagas2.CmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfRelPagas2.CmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfRelPagas2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfRelPagas2.FormCreate(Sender: TObject);
begin
  // Se o Usu�rio for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
     
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
  ppLabel124.Caption :=  ppLabel124.Caption + dmApp.FONE_SUPORTE;
end;

procedure TfRelPagas2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := cAFree;
  fRelPagar2 := nil;
end;

procedure TfRelPagas2.HabilitaHeader(Sender: TObject);
begin
  TppHeaderBand(Sender).visible := true;
end;

procedure TfRelPagas2.ImprimeHistorico(Sender: TObject);
begin
 //Se chekbox complementar estiver marcado.. ent�o terei de almentar o tamanho do detalhe
 if not(ckComplementar.checked) then
   TppDetailBand(Sender).Height := 0.1563
 else
   TppDetailBand(Sender).Height := 0.3854;
end;

procedure TfRelPagas2.lb1Print(Sender: TObject);
begin
  //esse c�digo apenas seta os complementares de agrupadores clientes
  if ckComplementar.checked then
    TPPLabel(Sender).visible := true
  else
    TPPLabel(Sender).visible := false;
end;

procedure TfRelPagas2.lb7Print(Sender: TObject);
begin
 //esse c�digo apenas seta os complementares de todos os outros agrupadores
  TPPLabel(Sender).Top := 0.2104;
  if ckComplementar.checked then
    TPPLabel(Sender).visible := true
  else
    TPPLabel(Sender).visible := false;
end;

procedure TfRelPagas2.ppSubPagas1Print(Sender: TObject);
begin
  //--------------------Anal�tico----------------------
  if (rd7.checked) then
    TppSubReport(Sender).visible := true
  else
    TppSubReport(Sender).visible := false;
end;

end.
