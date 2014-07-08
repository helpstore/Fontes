unit EntradasProdutos_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, ppVar,
  ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppCTMain, ppRegion, ppSubRpt,
  ppModule, raCodMod, daDataModule, ppParameter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelEntradasProdutos = class(TForm)
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
    rptEntradasProdutos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    detalhe: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    ppDBCalc9: TppDBCalc;
    ppLabel39: TppLabel;
    Label5: TcxLabel;
    ppSystemVariable3: TppSystemVariable;
    ppShape2: TppShape;
    pprEntradasProdutos: TppDBPipeline;
    dsEntradasProdutos: TDataSource;
    ppTitleBand1: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppLabel62: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLine5: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppShape1: TppShape;
    lblFiltro: TppLabel;
    ppDBCalc1: TppDBCalc;
    daDataModule1: TdaDataModule;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText5: TppDBText;
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
  FRelEntradasProdutos: TFRelEntradasProdutos;
  SqlOriginal : string;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelEntradasProdutos.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor

  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  //salvando sql original
  sqlOriginal := dmRelatorios.RelEntradasProdutos.sql.text;
end;

procedure TFRelEntradasProdutos.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelEntradasProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsPessoas.DataSet.Close;
  //
  Action := caFree;
  FRelEntradasProdutos := Nil;
end;

procedure TFRelEntradasProdutos.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;


procedure TFRelEntradasProdutos.FormShow(Sender: TObject);
begin
  IniciaComponentes(Self as TForm);
  dsPessoas.DataSet.Open;
end;

procedure TFRelEntradasProdutos.ActPreviewExecute(Sender: TObject);
var
  sFiltro, FiltroRpt : string;
begin
  sFiltro := '';
  FiltroRpt := '';

  if ((edDtInicial.date > 0) or (edDtFinal.date > 0)) then
    FiltroRpt := FiltroRpt + ' Intervalo: Dt.Caixa '+FormatDateTime('dd/mm/yy',eddtInicial.date)+' à '+FormatDateTime('dd/mm/yy',eddtFinal.date);

  if cmbCliente.LookupKeyValue > 0 then
  begin
    sFiltro := sFiltro + ' where pessoa_fj = '+inttostr(cmbCliente.LookupKeyValue);
    FiltroRpt := FiltroRpt + ' - Fornecedor: '+cmbCliente.text;
  end;

  sFiltro := sFiltro + ' group by produto ' ;
  sFiltro := sFiltro + ' order by produto ' ;

  with dmRelatorios do
  begin
    RelEntradasProdutos.Close;
    RelEntradasProdutos.sql.text := SqlOriginal;
    RelEntradasProdutos.parambyname('cnpj').value := dmapp.cnpj;
    RelEntradasProdutos.ParamByName('dt_ini').value := edDtInicial.date;
    RelEntradasProdutos.ParamByName('dt_fin').value := edDtFinal.date;
    if sFiltro <> '' then
      RelEntradasProdutos.sql.add(sfiltro);

    RelEntradasProdutos.open;
  end;
  lblEmpresa.text := dmapp.nome;
  lblFiltro.caption := FiltroRpt;

  rptEntradasProdutos.print;
end;

procedure TFRelEntradasProdutos.edDtInicialEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFRelEntradasProdutos.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
    TIRACORFUNDO(SENDER);
     if edDtInicial.Date <= 0 then
      edDtInicial.Date := strtodate('01/01/1901');
end;

procedure TFRelEntradasProdutos.cmbTipoRelEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFRelEntradasProdutos.cmbTipoRelExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO(SENDER);
end;

procedure TFRelEntradasProdutos.edDtFinalExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
  if edDtFinal.Date <= 0 then
      edDtFinal.Date := Date;
end;

procedure TFRelEntradasProdutos.edDtFinalVdExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TFRelEntradasProdutos.edDtInicialVdExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

end.


