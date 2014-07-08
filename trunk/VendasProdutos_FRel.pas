 unit VendasProdutos_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, ppVar,
  ppCtrls, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, ppStrtch, ppCTMain, ppRegion, ppSubRpt,
  ppModule, raCodMod,     cxPropertiesStore, ppParameter, variants,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelVendasProdutos = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    ActBuscarProd: TAction;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    rptVendasProdutos: TppReport;
    ppHeaderBand1: TppHeaderBand;
    detalhe: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    raCodeModule4: TraCodeModule;
    Label5: TcxLabel;
    ppSystemVariable3: TppSystemVariable;
    ppShape2: TppShape;
    pprVendasProdutos: TppDBPipeline;
    dsVendasProdutos: TDataSource;
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
    lblFiltro: TppLabel;
    cmbProduto: TdxLookupEdit;
    Label1: TcxLabel;
    dsProdutos: TDataSource;
    ppDBCalc1: TppDBCalc;
    ppShape1: TppShape;
    ppDBCalc2: TppDBCalc;
    ppLabel5: TppLabel;
    edcodigo: TdxEdit;
    stgFRelVendasProdutos: TcxPropertiesStore;
    cmbGrupo: TdxLookupEdit;
    Label4: TcxLabel;
    DsGrupo: TDataSource;
    cmbSubGrupo: TdxLookupEdit;
    Label6: TcxLabel;
    cmbMarca: TdxLookupEdit;
    Label7: TcxLabel;
    DsSubGrupo: TDataSource;
    DsMarca: TDataSource;
    dsPessoas: TDataSource;
    cmbCliente: TdxLookupEdit;
    Label3: TcxLabel;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText5: TppDBText;    procedure FormCreate(Sender: TObject);
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
    procedure edcodigoExit(Sender: TObject);
    procedure edcodigoEnter(Sender: TObject);
    procedure cmbProdutoExit(Sender: TObject);
    procedure cmbGrupoExit(Sender: TObject);
  private
    { Private declarations }
    Pessoa_FJ: Integer;
    NDocto: String[20];
  public
    { Public declarations }
  end;

var
  FRelVendasProdutos: TFRelVendasProdutos;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, LocalizarProd_DM;

{$R *.DFM}

procedure TFRelVendasProdutos.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFRelVendasProdutos.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsPessoas.DataSet.Close;
  //
  Action := caFree;
  FRelVendasProdutos := Nil;
end;

procedure TFRelVendasProdutos.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;


procedure TFRelVendasProdutos.FormShow(Sender: TObject);
begin
  IniciaComponentes(Self as TForm);
  dsPessoas.DataSet.Close;
  dsPessoas.DataSet.Open;

  DMRelatorios.SelProdutos.Close;
  DMRelatorios.SelProdutos.ParambyName('cnpj').value := dmapp.cnpj;
  DMRelatorios.SelProdutos.Open;
  DMRelatorios.SelProdutos.FetchAll;


  DsGrupo.DataSet.Close;
  DsGrupo.DataSet.Open;

  DsSubGrupo.DataSet.Close;
  DsSubGrupo.DataSet.Open;

  DsMarca.DataSet.Close;
  DsMarca.DataSet.Open;


end;

procedure TFRelVendasProdutos.ActPreviewExecute(Sender: TObject);
var
  sFiltro, FiltroRpt : string;
  grupo, subgrupo, marca : integer;
  cliente, codproduto: variant;
begin
  sFiltro := '';
  FiltroRpt := '';

  if ((edDtInicial.date > 0) or (edDtFinal.date > 0)) then
    FiltroRpt := FiltroRpt + ' Intervalo: '+FormatDateTime('dd/mm/yy',eddtInicial.date)+' à '+FormatDateTime('dd/mm/yy',eddtFinal.date);

  if cmbCliente.text <> '' then
  begin
    cliente := cmbCliente.LookupKeyValue;
    FiltroRpt := FiltroRpt + ' - Cliente: '+cmbCliente.text;
  end
  else
    cliente := 0;

  if cmbGrupo.text <> '' then
  begin
    grupo := cmbGrupo.LookupKeyValue;
    FiltroRpt := FiltroRpt + ' - Grupo: '+cmbGrupo.text;
  end
  else
    grupo := 0;


  if cmbSubGrupo.text <> '' then
  begin
    subgrupo := cmbSubGrupo.LookupKeyValue;
    FiltroRpt := FiltroRpt + ' - SubGrupo: '+cmbSubGrupo.text;
  end
  else
    subgrupo := 0;

  if cmbMarca.text <> '' then
  begin
    Marca := cmbMarca.LookupKeyValue;
    FiltroRpt := FiltroRpt + ' - Marca: '+cmbMarca.text;
  end
  else
    Marca := 0;


  if cmbProduto.text <> '' then
  begin
    codproduto := cmbProduto.LookupKeyValue;
    FiltroRpt := FiltroRpt + ' Produto: '+cmbProduto.text;
  end
  else
    codproduto := '';


  with dmRelatorios do
  begin
    qryRelVendasProdutos.Close;
    qryRelVendasProdutos.parambyname('cnpj').value := dmapp.cnpj;
    qryRelVendasProdutos.ParamByName('dt_ini').value := edDtInicial.date;
    qryRelVendasProdutos.ParamByName('dt_fin').value := edDtFinal.date;
    qryRelVendasProdutos.ParamByName('produto').value := codproduto;
    qryRelVendasProdutos.ParamByName('cliente').value := cliente;
    qryRelVendasProdutos.ParamByName('grupo').value := grupo;
    qryRelVendasProdutos.ParamByName('subgrupo').value := subgrupo;
    qryRelVendasProdutos.ParamByName('marca').value := marca;
    qryRelVendasProdutos.open;
  end;
  lblEmpresa.text := dmapp.nome;
  lblFiltro.caption := FiltroRpt;

  rptVendasProdutos.print;
end;

procedure TFRelVendasProdutos.edDtInicialEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFRelVendasProdutos.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
    TIRACORFUNDO(SENDER);
     if edDtInicial.Date <= 0 then
      edDtInicial.Date := strtodate('01/01/1901');
end;

procedure TFRelVendasProdutos.cmbTipoRelEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFRelVendasProdutos.cmbTipoRelExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO(SENDER);
end;

procedure TFRelVendasProdutos.edDtFinalExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
  if edDtFinal.Date <= 0 then
      edDtFinal.Date := Date;
end;

procedure TFRelVendasProdutos.edDtFinalVdExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TFRelVendasProdutos.edDtInicialVdExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;



procedure TFRelVendasProdutos.edcodigoExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
  cmbProduto.lookupkeyvalue := trim(edcodigo.text);
end;

procedure TFRelVendasProdutos.edcodigoEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TFRelVendasProdutos.cmbProdutoExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
  edcodigo.text := VarToStr(cmbProduto.lookupkeyvalue);
end;

procedure TFRelVendasProdutos.cmbGrupoExit(Sender: TObject);
begin
TIRACORFUNDO(SENDER);
end;

end.


