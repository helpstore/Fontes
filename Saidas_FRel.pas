 unit Saidas_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, ppVar,
  ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppCTMain, ppRegion, ppSubRpt,
  ppModule, raCodMod, ppParameter, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelSaidas = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    dsPessoas: TDataSource;
    ActBuscarProd: TAction;
    Label3: TcxLabel;
    cmbCliente: TdxLookupEdit;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    ppVendasGerais: TppDBPipeline;
    dsVendasGerais: TDataSource;
    rptVendasFiscais: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    lbl1: TppDBText;
    ppLabel12: TppLabel;
    lbl4: TppDBText;
    ppLabel13: TppLabel;
    lbl2: TppDBText;
    ppLabel16: TppLabel;
    lbl7: TppDBText;
    ppLabel19: TppLabel;
    lbl6: TppDBText;
    ppLabel20: TppLabel;
    lbl5: TppDBText;
    ppLabel21: TppLabel;
    ppLine1: TppLine;
    ppSummaryBand1: TppSummaryBand;
    lblFiltro: TppLabel;
    ppLine6: TppLine;
    ppLabel11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    lbl3: TppDBText;
    ppLabel14: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel6: TppLabel;
    ppDBText3: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLine2: TppLine;
    ppDBCalc4: TppDBCalc;
    ppLine8: TppLine;
    ppDBCalc5: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppTtlContabil: TppDBPipeline;
    dsTtlContabil: TDataSource;
    ppLabel9: TppLabel;
    raCodeModule2: TraCodeModule;
    rptVendasFiscais2: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLabel18: TppLabel;
    ppLine3: TppLine;
    lblFiltro2: TppLabel;
    ppLine5: TppLine;
    ppLabel23: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel27: TppLabel;
    detalhe: TppDetailBand;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    TtlContabil: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppShape9: TppShape;
    ppLabel28: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppLabel29: TppLabel;
    ppShape16: TppShape;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ttlnota: TppLabel;
    ttlBase: TppLabel;
    ttlicms: TppLabel;
    ppSummaryBand4: TppSummaryBand;
    raCodeModule3: TraCodeModule;
    raCodeModule4: TraCodeModule;
    ppLabel41: TppLabel;
    ppDBText34: TppDBText;
    ppLine17: TppLine;
    TipoVenda: TRadioGroup;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBCalc6: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLine11: TppLine;
    ppLabel42: TppLabel;
    ppLabel39: TppLabel;
    ppLine16: TppLine;
    Label5: TcxLabel;
    TipoAgrupamento: TRadioGroup;
    lblstatuoreia: TppDBText;
    ppLabel22: TppLabel;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppSystemVariable5: TppSystemVariable;
    ppShape1: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel15: TppLabel;
    ppShape4: TppShape;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;

    ppLabel17: TppLabel;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);


    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure cmbTipoRelEnter(Sender: TObject);
    procedure cmbTipoRelExit(Sender: TObject);
    procedure edDtFinalExit(Sender: TObject);
    procedure edDtFinalVdExit(Sender: TObject);
    procedure edDtInicialVdExit(Sender: TObject);
  private
    { Private declarations }
    Pessoa_FJ: Integer;
    NDocto: String[20];
  public
    { Public declarations }
  end;

var
  FRelSaidas: TFRelSaidas;
  SqlOriginal : string;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelSaidas.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor

  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  //salvando sql original
  sqlOriginal := dmRelatorios.qryRelVendasGerais.sql.text;
end;


procedure TFRelSaidas.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelSaidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsPessoas.DataSet.Close;
  //
  Action := caFree;
  FRelSaidas := Nil;
end;

procedure TFRelSaidas.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;


procedure TFRelSaidas.FormShow(Sender: TObject);
begin
  IniciaComponentes(Self as TForm);
  dsPessoas.DataSet.Open;
end;

procedure TFRelSaidas.ActPreviewExecute(Sender: TObject);
var
  sFiltro, FiltroRpt : string;
  TotalNota, TotalBase, TotalVlrIcm : real;
begin
  sFiltro := '';
  FiltroRpt := '';

  if ((edDtInicial.date > 0) or (edDtFinal.date > 0)) then
    FiltroRpt := FiltroRpt + ' Dt.Caixa '+FormatDateTime('dd/mm/yy',eddtInicial.date)+' à '+FormatDateTime('dd/mm/yy',eddtFinal.date);


  if FiltroRpt <> '' then
    FiltroRpt := 'Intervalo :'+FiltroRpt;
  if TipoVenda.itemindex = 0 then
  begin
    if sFiltro <> '' then
      sFiltro := sFiltro + ' and ';

    sFiltro := ' where TIPO_DOC  =  1 ';//cupons fiscais
    FiltroRpt := FiltroRpt + ' - Tipo de Venda: CUPOM FISCAL'
  end
  else
  begin
    if sFiltro <> '' then
      sFiltro := sFiltro + ' and ';

    sFiltro := ' where TIPO_DOC  =  2 ';//notas fiscais
    FiltroRpt := FiltroRpt + ' - Tipo de Venda: NOTA FISCAL'
  end;

  if cmbCliente.LookupKeyValue > 0 then
  begin
    if sFiltro <> '' then
      sFiltro := sFiltro + ' and ';

    sFiltro := sFiltro + ' pessoa_fj = '+inttostr(cmbCliente.LookupKeyValue);
    FiltroRpt := FiltroRpt + ' - Cliente: '+cmbCliente.text;
  end;

  if TipoAgrupamento.itemindex = 1 then
    sFiltro := sFiltro + ' order by NOME_RAZAO';

  with dmRelatorios do
  begin
    qryRelVendasGerais.Close;
    qryRelVendasGerais.sql.text := SqlOriginal;
    qryRelVendasGerais.parambyname('cnpj').value := dmapp.cnpj;
    qryRelVendasGerais.ParamByName('dt_ini').value := edDtInicial.date;
    qryRelVendasGerais.ParamByName('dt_fin').value := edDtFinal.date;
    if sFiltro <> '' then
      qryRelVendasGerais.sql.add(sfiltro);

    qryRelVendasGerais.open;

    //totalizador contabil do final do relatorio
    qryTtlContabil.close;
    qryTtlContabil.parambyname('cnpj').value := dmapp.cnpj;
    qryTtlContabil.ParamByName('DT_INI').value := edDtInicial.date;
    qryTtlContabil.ParamByName('DT_FIN').value := edDtFinal.date;
    if cmbCliente.LookupKeyValue > 0 then
      qryTtlContabil.ParamByName('CLIENTE').value := cmbCliente.LookupKeyValue;
    qryTtlContabil.open;


   //total do Res. Contábil   5                               est                             int                                    3                       diversos                         devolulçoes
   TotalNota := qryTtlContabilCTE5TOTAL.asfloat + qryTtlContabilCTEESTTOTAL.asfloat + qryTtlContabilCTEINTTOTAL.asfloat + qryTtlContabilCTE3TOTAL.asfloat + qryTtlContabilCTEDIVTOTAL.value - qryTtlContabilCTEDEVTOTAL.value;
   TotalBase := qryTtlContabilCTE5BASEICMS.asfloat + qryTtlContabilCTEESTBASEICMS.asfloat + qryTtlContabilCTEINTBASEICMS.asfloat + qryTtlContabilCTE3BASEICMS.asfloat + qryTtlContabilCTEDIVBASEICMS.value - qryTtlContabilCTEDEVBASEICMS.value;
   TotalVlrIcm := qryTtlContabilCTE5VLRICMS.asfloat + qryTtlContabilCTEESTVLRICMS.asfloat + qryTtlContabilCTEINTVLRICMS.asfloat + qryTtlContabilCTE3VLRICMS.asfloat + qryTtlContabilCTEDIVVLRICMS.value - qryTtlContabilCTEDEVVLRICMS.value;
   ttlnota.text := formatfloat('###,##0.00',TotalNota);
   ttlbase.text := formatfloat('###,##0.00',TotalBase);
   ttlicms.text := formatfloat('###,##0.00',TotalVlrIcm);


   //agrupando por cliente e dt. de venda
   if TipoAgrupamento.itemindex = 1 then
   begin
      lblFiltro2.text := filtroRpt;
      rptVendasFiscais2.print;
   end
   else
   begin
      lblFiltro.text := filtroRpt;
      rptVendasFiscais.print;
   end;
   qryRelVendasGerais.sql.text := SqlOriginal;
  end;
end;

procedure TFRelSaidas.edDtInicialEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFRelSaidas.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
    TIRACORFUNDO(SENDER);
     if edDtInicial.Date <= 0 then
      edDtInicial.Date := strtodate('01/01/1901');
end;

procedure TFRelSaidas.cmbTipoRelEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFRelSaidas.cmbTipoRelExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO(SENDER);
end;

procedure TFRelSaidas.edDtFinalExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
  if edDtFinal.Date <= 0 then
      edDtFinal.Date := Date;
end;

procedure TFRelSaidas.edDtFinalVdExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TFRelSaidas.edDtInicialVdExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;



end.


