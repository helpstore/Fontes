unit UntRelOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxGroupBox, Menus, StdCtrls, cxButtons, cxRadioGroup,
  cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, DB, IBCustomDataSet,
  IBQuery, ppDB, ppDBPipe, ppEndUsr, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppBands, ppCache, ppParameter, ppVar, ppCtrls, ppModule,
  raCodMod, ppPrnabl, ppStrtch, ppSubRpt, cxCalendar;

type
  TFrmRelOrcamento = class(TForm)
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    cxGroupBox3: TcxGroupBox;
    DesignerOrcamento: TppDesigner;
    rptOrcamento: TppReport;
    ppTitleBand12: TppTitleBand;
    SubRegiao: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppDBText5: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    raCodeModule1: TraCodeModule;
    SubTecnico: TppSubReport;
    ppChildReport26: TppChildReport;
    ppHeaderBand6: TppHeaderBand;
    ppLine68: TppLine;
    ppLabel183: TppLabel;
    ppLabel179: TppLabel;
    ppLabel187: TppLabel;
    ppLabel188: TppLabel;
    ppLabel189: TppLabel;
    ppLabel19: TppLabel;
    ppLabel33: TppLabel;
    ppLabel68: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel17: TppLabel;
    ppLabel101: TppLabel;
    ppLabel102: TppLabel;
    ppDetailBand27: TppDetailBand;
    ppDBText252: TppDBText;
    ppDBText253: TppDBText;
    ppDBText254: TppDBText;
    ppDBText256: TppDBText;
    ppDBText257: TppDBText;
    ppDBText245: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText60: TppDBText;
    ppDBText78: TppDBText;
    ppDBText29: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppSummaryBand28: TppSummaryBand;
    ppLine73: TppLine;
    ppLabel266: TppLabel;
    ppDBCalc10: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc70: TppDBCalc;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppLabel267: TppLabel;
    ppDBText255: TppDBText;
    ppLine27: TppLine;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppLine75: TppLine;
    ppLabel268: TppLabel;
    ppDBCalc22: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc69: TppDBCalc;
    ppGroup7: TppGroup;
    ppGroupHeaderBand7: TppGroupHeaderBand;
    ppLine74: TppLine;
    ppLabel99: TppLabel;
    ppDBText92: TppDBText;
    ppGroupFooterBand7: TppGroupFooterBand;
    ppDBCalc85: TppDBCalc;
    ppLabel100: TppLabel;
    ppVariable1: TppVariable;
    ppDBCalc86: TppDBCalc;
    ppLabel103: TppLabel;
    ppLabel104: TppLabel;
    ppDBCalc87: TppDBCalc;
    ppDBCalc88: TppDBCalc;
    raCodeModule8: TraCodeModule;
    ppShape6: TppShape;
    ppTituloRel: TppLabel;
    lblEmpresa: TppLabel;
    SubMarca: TppSubReport;
    ppChildReport2: TppChildReport;
    ppHeaderBand3: TppHeaderBand;
    ppLine5: TppLine;
    ppLabel18: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText20: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine6: TppLine;
    ppLabel30: TppLabel;
    ppDBCalc20: TppDBCalc;
    ppDBCalc21: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc68: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel31: TppLabel;
    ppLine7: TppLine;
    ppDBText28: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine8: TppLine;
    ppLabel32: TppLabel;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc67: TppDBCalc;
    raCodeModule2: TraCodeModule;
    SubModelo: TppSubReport;
    ppChildReport3: TppChildReport;
    ppHeaderBand4: TppHeaderBand;
    ppLine9: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel46: TppLabel;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppDBCalc35: TppDBCalc;
    ppDBCalc66: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel47: TppLabel;
    ppLine11: TppLine;
    ppDBText42: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine12: TppLine;
    ppLabel48: TppLabel;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc65: TppDBCalc;
    raCodeModule3: TraCodeModule;
    SubEquipamento: TppSubReport;
    ppChildReport4: TppChildReport;
    ppHeaderBand5: TppHeaderBand;
    ppLine13: TppLine;
    ppLabel49: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppDetailBand5: TppDetailBand;
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
    ppDBText55: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLine14: TppLine;
    ppLabel62: TppLabel;
    ppDBCalc41: TppDBCalc;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc62: TppDBCalc;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppLabel63: TppLabel;
    ppDBText56: TppDBText;
    ppLine15: TppLine;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLine16: TppLine;
    ppLabel64: TppLabel;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc61: TppDBCalc;
    ppGroup8: TppGroup;
    ppGroupHeaderBand8: TppGroupHeaderBand;
    ppLabel105: TppLabel;
    ppLine28: TppLine;
    ppDBText95: TppDBText;
    ppGroupFooterBand8: TppGroupFooterBand;
    raCodeModule4: TraCodeModule;
    SubCliente: TppSubReport;
    ppChildReport5: TppChildReport;
    ppHeaderBand8: TppHeaderBand;
    ppLine17: TppLine;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    ppLabel74: TppLabel;
    ppLabel75: TppLabel;
    ppLabel76: TppLabel;
    ppLabel77: TppLabel;
    ppLabel81: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText57: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText8: TppDBText;
    ppSummaryBand5: TppSummaryBand;
    ppLine18: TppLine;
    ppLabel78: TppLabel;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    ppDBCalc64: TppDBCalc;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppLabel79: TppLabel;
    ppLine19: TppLine;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLine20: TppLine;
    ppLabel80: TppLabel;
    ppDBCalc56: TppDBCalc;
    ppDBCalc57: TppDBCalc;
    ppDBCalc58: TppDBCalc;
    ppDBCalc59: TppDBCalc;
    ppDBCalc60: TppDBCalc;
    ppDBCalc63: TppDBCalc;
    raCodeModule5: TraCodeModule;
    lblFiltro: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    SubMotivoChamado: TppSubReport;
    ppChildReport7: TppChildReport;
    ppHeaderBand9: TppHeaderBand;
    ppLine23: TppLine;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppDetailBand8: TppDetailBand;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppSummaryBand6: TppSummaryBand;
    ppLine24: TppLine;
    ppLabel96: TppLabel;
    ppDBCalc73: TppDBCalc;
    ppDBCalc74: TppDBCalc;
    ppDBCalc75: TppDBCalc;
    ppDBCalc76: TppDBCalc;
    ppDBCalc77: TppDBCalc;
    ppDBCalc78: TppDBCalc;
    ppGroup6: TppGroup;
    ppGroupHeaderBand6: TppGroupHeaderBand;
    ppLabel97: TppLabel;
    ppLine25: TppLine;
    ppDBText91: TppDBText;
    ppGroupFooterBand6: TppGroupFooterBand;
    ppLine26: TppLine;
    ppLabel98: TppLabel;
    ppDBCalc79: TppDBCalc;
    ppDBCalc80: TppDBCalc;
    ppDBCalc81: TppDBCalc;
    ppDBCalc82: TppDBCalc;
    ppDBCalc83: TppDBCalc;
    ppDBCalc84: TppDBCalc;
    raCodeModule7: TraCodeModule;
    ppDetailBand18: TppDetailBand;
    ppFooterBand7: TppFooterBand;
    ppShape80: TppShape;
    ppLabel211: TppLabel;
    ppSystemVariable13: TppSystemVariable;
    raCodeModule6: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppOrcamento: TppDBPipeline;
    ppLayoutOrcamento: TppDBPipeline;
    dsLayoutOrcamento: TDataSource;
    dsOrcamento: TDataSource;
    DtsOrcamento: TIBQuery;
    DtsOrcamentoPESSOA_FJ: TIntegerField;
    DtsOrcamentoCODIGO: TIntegerField;
    DtsOrcamentoDATA: TDateTimeField;
    DtsOrcamentoTOTAL: TFloatField;
    DtsOrcamentoSTATUS: TIntegerField;
    DtsOrcamentoOBSERVACAO: TIBStringField;
    DtsOrcamentoVENDEDOR: TIntegerField;
    DtsOrcamentoVLR_TOTAL: TFloatField;
    DtsOrcamentoDESC_ACRESC: TFloatField;
    DtsOrcamentoPESO: TFloatField;
    DtsOrcamentoVOLUME: TFloatField;
    DtsOrcamentoFORMA: TIntegerField;
    DtsOrcamentoVALIDADE: TDateTimeField;
    DtsOrcamentoDESC_ACRESC_2: TFloatField;
    DtsOrcamentoCLIENTE: TIBStringField;
    DtsOrcamentoNOME_CONSUMIDOR: TIBStringField;
    DtsOrcamentoCOMPROMETER_ESTOQUE: TIBStringField;
    DtsOrcamentoNOME_RAZAO: TIBStringField;
    DtsOrcamentoNOME_VENDEDOR: TIBStringField;
    DtsOrcamentoNOME_FORMA: TIBStringField;
    DtsOrcamentoCOD_PEDIDO: TIntegerField;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    cxGroupBox4: TcxGroupBox;
    cxLabel2: TcxLabel;
    CmbStatus: TcxComboBox;
    DteInicial: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    DteFinal: TcxDateEdit;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    procedure RzBitBtn2Click(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelOrcamento: TFrmRelOrcamento;

implementation

uses Application_DM;

{$R *.dfm}

procedure TFrmRelOrcamento.RzBitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelOrcamento.BtnOkClick(Sender: TObject);
var
  sOrder, tpdata, vlrIni, vlrFim, kmIni, kmFim, tpaIni, tpaFim, tprIni, tprFim : string;
begin
  rptOrcamento.Template.DatabaseSettings.Name := 'Rel_Orcamento';
  rptOrcamento.Template.LoadFromDatabase;
  
  SubTecnico.Visible := False;
  SubRegiao.Visible := True;
  SubMarca.Visible := False;
  SubModelo.Visible := False;
  SubEquipamento.Visible := False;
  SubCliente.Visible := False;

  DtsOrcamento.Close;

  if CmbStatus.Text <> '' then
  begin
    if CmbStatus.Text = 'Aberto' then
      DtsOrcamento.SQL.Text := DtsOrcamento.SQL.Text + ' and oc.status = 1';
  end;

  DtsOrcamento.Open;

end;

end.
