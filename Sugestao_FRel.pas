 unit Sugestao_FRel;

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
   cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, 
  cxCurrencyEdit;

type
  TfRelSugestaoCompra = class(TForm)
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
    cmbFornecedor: TdxLookupEdit;
    cmbGrupo: TdxLookupEdit;
    cmbSubGrupo: TdxLookupEdit;
    cmbMarca: TdxLookupEdit;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    DataInicial: TcxDateEdit;
    DataFinal: TcxDateEdit;
    dsProduto: TDataSource;
    dsGrupo: TDataSource;
    dsSubGrupo: TDataSource;
    dsMarca: TDataSource;
    dsForncedor: TDataSource;
    rptRelSugCompra: TppReport;
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
    dbRelSugestao: TppDBPipeline;
    dsRelSugestao: TDataSource;
    dsCompras: TDataSource;
    ppHeaderBand1: TppHeaderBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine1: TppLine;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLabel6: TppLabel;
    ppLine4: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    SubCompra: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine5: TppLine;
    ppDBText9: TppDBText;
    ppLabel15: TppLabel;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    dbRelCompras: TppDBPipeline;
    GroupBox1: TGroupBox;
    edtCompras: TcxCurrencyEdit;
    Label1: TcxLabel;
    ppSummaryBand2: TppSummaryBand;
    ppLabel16: TppLabel;
    ppDBText14: TppDBText;
    ppLabel18: TppLabel;
    ppDBText16: TppDBText;
    ppDBText15: TppDBText;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppDBText17: TppDBText;
    GroupBox3: TGroupBox;
    Label2: TcxLabel;
    RzNumericEdit1: TcxCurrencyEdit;
    Label3: TcxLabel;
    RzNumericEdit2: TcxCurrencyEdit;
    Label6: TcxLabel;
    stgfRelSugestaoCompra: TcxPropertiesStore;
    cmbProduto: TdxLookupEdit;
    ppLabel20: TppLabel;
    ppDBText18: TppDBText;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText19: TppDBText;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActPreviewExecute(Sender: TObject);
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
    procedure ImprimeCompras(Sender: TObject);
    procedure SubCompraPrint(Sender: TObject);
  private
    { Private declarations }
    sqlOriginal : string;
    Historico : boolean;
  public
    { Public declarations }
  end;

var
  fRelSugestaoCompra: TfRelSugestaoCompra;

implementation

uses Cadastros_DM, Application_DM, Funcoes,
     Relatorios_DM2, Usuarios_DM, Main, Relatorios_DM;

{$R *.DFM}

procedure TfRelSugestaoCompra.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfRelSugestaoCompra.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfRelSugestaoCompra.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfRelSugestaoCompra.ActPreviewExecute(Sender: TObject);
var
  sFiltro, sOrder, tipo, filtro : string;
  cod_fornecedor : integer;
begin
  filtro := '';
  sfiltro := '';

  //-----------inabilitando todos os sub-reports---------------------//clWindowText
  SubCompra.visible :=  false;

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

  filtro := 'Período VMM: '+formatdatetime('dd/mm/yyyy',DataInicial.date)+' à '+formatdatetime('dd/mm/yyyy',DataFinal.date);

  //-------------------------------------Filtrando as Combos------------------------------------------//
  if (cmbProduto.text <> '') then
  begin
    filtro := filtro + 'Produto: '+cmbProduto.text;
    sfiltro := sfiltro + ' CODIGO ='+QuotedStr(cmbProduto.LookupKeyValue);
  end;

  if (cmbGrupo.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Grupo: '+cmbGrupo.text;
    sfiltro := sfiltro + ' COD_GRUPO ='+intToStr(cmbGrupo.LookupKeyValue);
  end;

  if (cmbSubGrupo.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Sub. Grupo: '+cmbSubGrupo.text;
    sfiltro := sfiltro + ' COD_SUBGRUPO ='+intToStr(cmbSubGrupo.LookupKeyValue);
  end;

  if (cmbMarca.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Marca: '+cmbMarca.text;
    sfiltro := sfiltro + ' COD_MARCA ='+intToStr(cmbMarca.LookupKeyValue);
  end;

  if (cmbFornecedor.text <> '') then
    filtro := filtro + 'Fornecedor: '+cmbFornecedor.text;

  with dmRelatorios2 do
  begin
    if (cmbFornecedor.Text = '') then
      cod_fornecedor := 0
    else
      cod_fornecedor := cmbFornecedor.LookupKeyValue;

    qryRelSugestaoCompra.Close;
    qryRelSugestaoCompra.sql.text := sqlOriginal;
    if sFiltro <> '' then
      qryRelSugestaoCompra.sql.text := sqlOriginal + ' where '+sfiltro+sOrder;

    qryRelSugestaoCompra.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelSugestaoCompra.paramByName('data1').asDate := DataInicial.date;
    qryRelSugestaoCompra.paramByName('data2').asDate := DataFinal.date;
    qryRelSugestaoCompra.paramByName('fornecedor').value := cod_fornecedor;
    qryRelSugestaoCompra.Open;

    //---------------------Compras-----------------------
    qryRelCompras.close;
    qryRelCompras.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelCompras.paramByName('load').value := edtCompras.value;
    qryRelCompras.Open;

    lblEmpresa.caption := dmapp.nome;
    lblFiltro.caption := filtro;
    rptRelSugCompra.print;
    qryRelSugestaoCompra.sql.text := sqlOriginal;
  end;


end;

procedure TfRelSugestaoCompra.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  cmbProduto.setfocus;

  DMCadastros.SelProdutos.Close;
  DMCadastros.SelProdutos.Open;
  DMCadastros.SelProdutos.FetchAll;

  DMCadastros.SelGrupo.Close;
  DMCadastros.SelGrupo.Open;

  DMCadastros.SelSubGrupo.Close;
  DMCadastros.SelSubGrupo.Open;

  DMCadastros.SelMarca.Close;
  DMCadastros.SelMarca.Open;

  DMCadastros.SelFornecedor.Close;
  DMCadastros.SelFornecedor.Open;

  pnlClient.color := clWhite;
end;

procedure TfRelSugestaoCompra.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TfRelSugestaoCompra.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TfRelSugestaoCompra.CmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfRelSugestaoCompra.CmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfRelSugestaoCompra.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfRelSugestaoCompra.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  sqlOriginal := dmRelatorios2.qryRelSugestaoCompra.sql.text;
end;

procedure TfRelSugestaoCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmApp.ZeraCaixaUsuario(owner);
  ACTION := cAFree;
  fRelSugestaoCompra := nil;
end;

procedure TfRelSugestaoCompra.HabilitaHeader(Sender: TObject);
begin
  TppHeaderBand(Sender).visible := true;
end;

procedure TfRelSugestaoCompra.ImprimeCompras(Sender: TObject);
begin
 if (edtCompras.value > 0) then
   TppDetailBand(Sender).Height := 0.3542
 else
   TppDetailBand(Sender).Height := 0.1458;
end;

procedure TfRelSugestaoCompra.SubCompraPrint(Sender: TObject);
begin
  if (edtCompras.value > 0) then
    TppSubReport(Sender).visible := true
  else
    TppSubReport(Sender).visible := false;
end;

end.
