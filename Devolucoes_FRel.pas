unit Devolucoes_FRel;

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
  TFRelDevolucoes = class(TForm)
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
    rptDevolucoes: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    ppLabel10: TppLabel;
    ppLabel18: TppLabel;
    ppLine3: TppLine;
    lblFiltro: TppLabel;
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
    raCodeModule4: TraCodeModule;
    ppLabel41: TppLabel;
    ppDBText34: TppDBText;
    ppLine17: TppLine;
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
    ppSystemVariable3: TppSystemVariable;
    ppShape2: TppShape;
    ppDevolucoes: TppDBPipeline;
    dsDevolucoes: TDataSource;
    TipoVenda: TRadioGroup;
    ppDBText3: TppDBText;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    procedure FormCreate(Sender: TObject);
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
  FRelDevolucoes: TFRelDevolucoes;
  SqlOriginal : string;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelDevolucoes.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor

  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  //salvando sql original
  sqlOriginal := dmRelatorios.qryRelDevolucoes.sql.text;
end;

procedure TFRelDevolucoes.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelDevolucoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsPessoas.DataSet.Close;
  //
  Action := caFree;
  FRelDevolucoes := Nil;
end;

procedure TFRelDevolucoes.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;


procedure TFRelDevolucoes.FormShow(Sender: TObject);
begin
  IniciaComponentes(Self as TForm);
  dsPessoas.DataSet.Open;
end;

procedure TFRelDevolucoes.ActPreviewExecute(Sender: TObject);
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
    FiltroRpt := FiltroRpt + ' - Faturamento: CUPOM FISCAL'
  end
  else if TipoVenda.itemindex = 0 then
  begin
    if sFiltro <> '' then
      sFiltro := sFiltro + ' and ';

    sFiltro := ' where TIPO_DOC  =  2 ';//notas fiscais
    FiltroRpt := FiltroRpt + ' - Faturamento: NOTA FISCAL'
  end
  else
    FiltroRpt := FiltroRpt + ' - Faturamento: Todas';


  if cmbCliente.LookupKeyValue > 0 then
  begin
    if sFiltro <> '' then
      sFiltro := sFiltro + ' and ';

    sFiltro := sFiltro + ' pessoa_fj = '+inttostr(cmbCliente.LookupKeyValue);
    FiltroRpt := FiltroRpt + ' - Cliente: '+cmbCliente.text;
  end;

  sFiltro := sFiltro + ' order by NOME_RAZAO';

  with dmRelatorios do
  begin
    qryRelDevolucoes.Close;
    qryRelDevolucoes.sql.text := SqlOriginal;
    qryRelDevolucoes.parambyname('cnpj').value := dmapp.cnpj;
    qryRelDevolucoes.ParamByName('dt_ini').value := edDtInicial.date;
    qryRelDevolucoes.ParamByName('dt_fin').value := edDtFinal.date;
    if sFiltro <> '' then
      qryRelDevolucoes.sql.add(sfiltro);

    qryRelDevolucoes.open;
  end;
  lblFiltro.text := FiltroRpt;
  rptDevolucoes.print;
end;

procedure TFRelDevolucoes.edDtInicialEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFRelDevolucoes.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
    TIRACORFUNDO(SENDER);
     if edDtInicial.Date <= 0 then
      edDtInicial.Date := strtodate('01/01/1901');
end;

procedure TFRelDevolucoes.cmbTipoRelEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFRelDevolucoes.cmbTipoRelExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO(SENDER);
end;

procedure TFRelDevolucoes.edDtFinalExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
  if edDtFinal.Date <= 0 then
      edDtFinal.Date := Date;
end;

procedure TFRelDevolucoes.edDtFinalVdExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TFRelDevolucoes.edDtInicialVdExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;



end.


