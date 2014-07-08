 unit ClienteCidades_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  ComCtrls, dxCntner, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib,  ExtCtrls,   Db, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppVar,
  ppBands, ppCache, ppModule, raCodMod, ppStrtch, ppSubRpt,
  cxPropertiesStore,   ppParameter, cxGraphics, cxControls,
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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, IBCustomDataSet,
  IBQuery;

type
  TfRelClientesCidade = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    GroupBox2: TGroupBox;
    Label11: TcxLabel;
    Label12: TcxLabel;
    cmbRegiao: TdxLookupEdit;
    cmbVendedor: TdxLookupEdit;
    dsRegiao: TDataSource;
    dsVendedor: TDataSource;
    dsCidade: TDataSource;
    cmbCategoria: TdxLookupEdit;
    Label3: TcxLabel;
    stgfRelContratos: TcxPropertiesStore;
    gbStatus: TGroupBox;
    rd1: TRadioButton;
    rd2: TRadioButton;
    rd3: TRadioButton;
    cmbCidade: TdxLookupEdit;
    Label20: TcxLabel;
    rptListagem: TppReport;
    ppParameterList2: TppParameterList;
    dbListagem: TppDBPipeline;
    dsListagem: TDataSource;
    QryRelContratos: TIBQuery;
    SelVendedor: TIBQuery;
    SelVendedorCNPJ: TIBStringField;
    SelVendedorCODIGO: TIntegerField;
    SelVendedorNOME: TIBStringField;
    SelVendedorCOM_VISTA: TFloatField;
    SelVendedorCOM_PRAZO: TFloatField;
    SelVendedorPESSOA_FJ: TIntegerField;
    SelVendedorSENHA: TIBStringField;
    SelVendedorATIVO: TIBStringField;
    SelVendedorCOD_PERFIL: TIntegerField;
    SelVendedorCOD_PERFIL_PAGTO: TIntegerField;
    dsCategoria: TDataSource;
    SelCategorias: TIBQuery;
    SelCategoriasCNPJ: TIBStringField;
    SelCategoriasCODIGO: TIntegerField;
    SelCategoriasNOME: TIBStringField;
    QryRelClientes: TIBQuery;
    QryRelClientesCIDADE: TIBStringField;
    QryRelClientesCODIGO: TIntegerField;
    QryRelClientesNOME_RAZAO: TIBStringField;
    QryRelClientesFANTASIA: TIBStringField;
    QryRelClientesFONE: TIBStringField;
    QryRelClientesNUMERO: TIBStringField;
    QryRelClientesBAIRRO: TIBStringField;
    QryRelClientesCONTATO: TIBStringField;
    QryRelClientesLOGRADOURO: TIBStringField;
    QryRelContratosCOD_EQUIPAMENTO: TIBStringField;
    QryRelContratosNOME_SERIE: TIBStringField;
    QryRelContratosSERIE: TIBStringField;
    QryRelContratosMARCA: TIBStringField;
    QryRelContratosMODELO: TIBStringField;
    QryRelContratosTIPO_CONTRATO: TIBStringField;
    QryRelContratosCOD_CONTRATO: TIntegerField;
    QryRelContratosNUM_CONTRATO: TIBStringField;
    dbLEquipamento: TppDBPipeline;
    dsEquipamentos: TDataSource;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppTituloRel: TppLabel;
    lblFiltro: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLabel14: TppLabel;
    ppLabel12: TppLabel;
    ppLabel5: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppDBText7: TppDBText;
    ppDBText1: TppDBText;
    ppDBText9: TppDBText;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppLabel6: TppLabel;
    ppDBText6: TppDBText;
    ppLabel7: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLine2: TppLine;
    CodContrato: TppDBText;
    ppLabel15: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppDBCalc2: TppDBCalc;
    raCodeModule4: TraCodeModule;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine4: TppLine;
    ppDBText10: TppDBText;
    ppLabel9: TppLabel;
    ppDBText11: TppDBText;
    ppLabel10: TppLabel;
    ppLabel13: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine5: TppLine;
    ppLabel18: TppLabel;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc3: TppDBCalc;
    dsLink: TDataSource;
    QryRelClientesCNPJ: TIBStringField;
    QryRelClientesCATEGORIA: TIBStringField;
    ppLabel19: TppLabel;
    ppDBText15: TppDBText;
    QryRelContratosATIVO: TIBStringField;
    ppDBText16: TppDBText;
    ppTitleBand1: TppTitleBand;
    QryRelContratosID_CONTRATO: TIntegerField;
    ppLabel20: TppLabel;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppLabel21: TppLabel;
    ppDBText8: TppDBText;
    QryRelClientesATIVO: TIBStringField;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText19: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure cmbEquipamentoEnter(Sender: TObject);
    procedure cmbEquipamentoExit(Sender: TObject);
    procedure cmbEquipamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnOkClick(Sender: TObject);
    function CompletaWhere(sFiltro, texto:string):string;
    procedure ppHeaderBand7BeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure cmbRegiaoChange(Sender: TObject);
    procedure SelVendedorBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure AbreDataSet(DataSet:TDataSet);
  public
    sFiltro, sOrder, tipo, filtro : string;
    { Public declarations }
  end;

var
  fRelClientesCidade: TfRelClientesCidade;

implementation

uses Servicos_DM, Relatorios_DM, Cadastros_DM, Relatorios_DM2, Funcoes,
  Application_DM, Cadastros_Dm2;

{$R *.DFM}

procedure TfRelClientesCidade.FormCreate(Sender: TObject);
begin
  AbreDataSet(SelVendedor);
  AbreDataSet(SelCategorias);

  with DmServicos do
  begin
    SelModelosProduto.Close;
    SelModelosProduto.Open;
    SelModelosProduto.FetchAll;
  end;

  with DMRelatorios do
  begin
    SelRegiao.Close;
    SelRegiao.Open;
    SelRegiao.FetchAll;
  end;

  with dmCadastros2 do
  begin
    SelContratos.Close;
    SelContratos.Open;
  end;


  with dmCadastros do
  begin
    Cidades.Close;
    Cidades.Open;
    Cidades.FetchAll;
  end;

  with dmRelatorios2 do
  begin
    SelPessoasFJ.Close;
    SelPessoasFJ.Open;;
    SelPessoasFJ.FetchAll;
  end;

end;

procedure TfRelClientesCidade.cmbEquipamentoEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfRelClientesCidade.cmbEquipamentoExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );

end;

procedure TfRelClientesCidade.cmbEquipamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);

end;

procedure TfRelClientesCidade.BtnOkClick(Sender: TObject);
var
 ativo, iten_ativo, equipamento : string;
 vendedor, regiao, cidade, categoria : integer;
begin
  filtro := '';
  sFiltro := '';

  //--------------------------------- Filtro Região -------------------------------------------
  if (cmbRegiao.text <> '') then
  begin
    regiao := cmbRegiao.LookupKeyValue;
    filtro := 'Região: ' + cmbRegiao.text;
  end
  else
    regiao := 0;

  //---------------------------- Filtro Cidade-----------------------------------
  if (cmbCidade.text <> '') then
  begin
    cidade := cmbCidade.LookupKeyValue;
    filtro := 'Região: ' + cmbRegiao.text;
  end
  else
    cidade := 0;


 //---------------------------- Filtro Clientes -------------------------------------
  if (cmbVendedor.text <> '') then
  begin
    vendedor := cmbVendedor.LookupKeyValue;
    filtro := 'Vendedor: '+cmbVendedor.text;
  end
  else
    vendedor := 0;

  //------------------------------------ Tipo Contrato -----------------------------------------
  if (cmbCategoria.text <> '') then
  begin
    categoria := cmbCategoria.LookupKeyValue;
    filtro := 'Categoria Cliente: ' +cmbCategoria.text;
  end
  else
    categoria := 0;


  if (rd1.Checked) then
  begin
    ativo := 'N';
    filtro := filtro + ' Cliente Ativo: Sim';
  end
  else if (rd2.Checked) then
  begin
    ativo := 'S'; //blqueado
    filtro := filtro + ' Cliente Ativo: Não';
  end
  else
  begin
    ativo := '';
    filtro := filtro + 'Cliente Ativo: Ambos';
  end;


  lblFiltro.text := filtro;
  lblEmpresa.caption := DmApp.Nome;

  QryRelClientes.Close;
  QryRelClientes.ParamByName('cnpj').Value      := DMApp.Cnpj;
  QryRelClientes.parambyname('regiao').value := regiao;
  QryRelClientes.parambyname('cidade').value := cidade;
  QryRelClientes.parambyname('vendedor').value := vendedor;
  QryRelClientes.parambyname('categoria').value := categoria;
  QryRelClientes.parambyname('bloqueado').value := ativo;
  QryRelClientes.Open;

  QryRelContratos.Close;
  QryRelContratos.Open;

  rptListagem.print;
end;

function TfRelClientesCidade.CompletaWhere(sFiltro, texto: string): string;
begin
  if sFiltro = '' then
     texto := ' where ' + texto
  else
     texto := sFiltro + ' and ' + texto;
  Result := texto;
end;

procedure TfRelClientesCidade.ppHeaderBand7BeforePrint(Sender: TObject);
begin
  TppHeaderBand(Sender).visible := true;
end;

procedure TfRelClientesCidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fRelClientesCidade := Nil;
end;

procedure TfRelClientesCidade.RzBitBtn2Click(Sender: TObject);
begin
  Modalresult := mrCancel ;
end;

procedure TfRelClientesCidade.cmbRegiaoChange(Sender: TObject);
var
 codigo : variant;
begin
  if (cmbRegiao.text <> '') then
    codigo :=  cmbRegiao.LookupKeyValue
  else
    codigo := 0;
  with dmRelatorios2 do
  begin
    SelPessoasFJ.Close;
    SelPessoasFJ.ParamByName('CODIGO').value := codigo;
    SelPessoasFJ.Open;;
    SelPessoasFJ.FetchAll;
  end;
end;

procedure TfRelClientesCidade.AbreDataSet(DataSet: TDataSet);
begin
   DataSet.Close;
   DataSet.Open;
end;

procedure TfRelClientesCidade.SelVendedorBeforeOpen(DataSet: TDataSet);
begin
   if (DataSet is TIBDataSet) then
    (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj
  else if (DataSet is TIBQuery) then
    (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj
end;

end.
