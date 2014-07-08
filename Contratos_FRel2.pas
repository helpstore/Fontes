 unit Contratos_FRel2;

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
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TfRelContratos = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    GroupBox2: TGroupBox;
    Label11: TcxLabel;
    Label12: TcxLabel;
    cmbRegiao: TdxLookupEdit;
    cmbCliente: TdxLookupEdit;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    DataInicial: TcxDateEdit;
    DataFinal: TcxDateEdit;
    dsRegiao: TDataSource;
    DsClientes: TDataSource;
    dsCidade: TDataSource;
    dsTipoContrato: TDataSource;
    cbTipoContrato: TdxLookupEdit;
    Label3: TcxLabel;
    stgfRelContratos: TcxPropertiesStore;
    gbStatus: TGroupBox;
    rd1: TRadioButton;
    rd2: TRadioButton;
    rd3: TRadioButton;
    cmbCidade: TdxLookupEdit;
    Label20: TcxLabel;
    rptListagem: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppTituloRel: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    CodContrato: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppSystemVariable3: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    dbListagem: TppDBPipeline;
    dsListagem: TDataSource;
    lblFiltro: TppLabel;
    ppShape9: TppShape;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel2: TppLabel;
    ppLine1: TppLine;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel3: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLine2: TppLine;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppLabel14: TppLabel;
    ppDBText13: TppDBText;
    ppLine3: TppLine;
    ppLabel15: TppLabel;
    ppDBCalc2: TppDBCalc;
    gbData2: TGroupBox;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    DataInicial2: TcxDateEdit;
    DataFinal2: TcxDateEdit;
    cmbEquipamento: TdxLookupEdit;
    Label8: TcxLabel;
    gbStatus2: TGroupBox;
    rd4: TRadioButton;
    rd5: TRadioButton;
    rd6: TRadioButton;
    dsEquipamento: TDataSource;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText6: TppDBText;
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
    procedure cmbClienteChange(Sender: TObject);
    procedure cmbMarcaChange(Sender: TObject);
  private
    { Private declarations }
    SqlOriginal : string;
    procedure FiltraProdutos;
  public
    sFiltro, sOrder, tipo, filtro : string;
    { Public declarations }
  end;

var
  fRelContratos: TfRelContratos;

implementation

uses Servicos_DM, Relatorios_DM, Cadastros_DM, Relatorios_DM2, Funcoes,
  Application_DM, Cadastros_Dm2;

{$R *.DFM}

procedure TfRelContratos.FormCreate(Sender: TObject);
begin
  sqlOriginal := dmRelatorios2.QryRelContratos.sql.text;
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

  FiltraProdutos;
end;

procedure TfRelContratos.cmbEquipamentoEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfRelContratos.cmbEquipamentoExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );

end;

procedure TfRelContratos.cmbEquipamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);

end;

procedure TfRelContratos.BtnOkClick(Sender: TObject);
var
 ativo, iten_ativo, equipamento : string;
 cliente, regiao, cidade, contrato : integer;
begin
  filtro := '';
  sFiltro := '';

  //----------------------------- Filtro da Data Inicial --------------------------------------
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
  if (cmbCliente.text <> '') then
  begin
    cliente := cmbCliente.LookupKeyValue;
    filtro := 'Cliente: '+cmbCliente.text;
  end
  else
    cliente := 0;

  //------------------------- Filtro Equipamento ------------------------------------
  if (cmbEquipamento.text <> '') then
  begin
    equipamento:= cmbEquipamento.LookupKeyValue;
    filtro := 'Equipamento: '+cmbEquipamento.text;
  end
  else
    equipamento := '';

  //------------------------------------ Tipo Contrato -----------------------------------------
  if (cbTipoContrato.text <> '') then
  begin
    contrato := cbTipoContrato.LookupKeyValue;
    filtro := 'Tipo Contrato: ' +cbTipoContrato.text;
  end
  else
    contrato := 0;


  if (rd1.Checked) then
  begin
    ativo := 'S';
    filtro := filtro + ' Ct. Ativo: Sim';
  end
  else if (rd2.Checked) then
  begin
    ativo := 'N';
    filtro := filtro + ' Ct. Ativo: Não';
  end
  else
  begin
    ativo := '';
    filtro := filtro + 'Ct. Ativo: Ambos';
  end;


  if (rd4.Checked) then
  begin
    iten_ativo := 'S';
    filtro := filtro + ' Iten Ativo: Sim';
  end
  else if (rd5.Checked) then
  begin
    iten_ativo := 'N';
    filtro := filtro + ' Iten Ativo: Não';
  end
  else
  begin
    iten_ativo := '';
    filtro := filtro + ' Iten Ativo: Ambos';
  end;

  lblFiltro.text := filtro;
  lblEmpresa.caption := DmApp.Nome;
  with dmRelatorios2 do
  begin
    QryRelContratos.Close;
    QryRelContratos.ParamByName('cnpj').Value      := DMApp.Cnpj;
    QryRelContratos.ParamByName('data1').AsDate := DataInicial.date;
    QryRelContratos.ParamByName('data2').AsDate := DataFinal.date;
    QryRelContratos.ParamByName('DtIten1').AsDate := DataInicial2.date;
    QryRelContratos.ParamByName('DtIten2').AsDate := DataFinal2.date;
    QryRelContratos.parambyname('psa_regiao').value := regiao;
    QryRelContratos.parambyname('psa_cidade').value := cidade;
    QryRelContratos.parambyname('psa_codigo').value := cliente;
    QryRelContratos.parambyname('cod_contrato').value := contrato;
    QryRelContratos.parambyname('pr_equipamento').value := equipamento;
    QryRelContratos.parambyname('ativo').value := ativo;
    QryRelContratos.parambyname('iten_ativo').value := iten_ativo;
    QryRelContratos.Open;
  end;

  rptListagem.print;

end;

function TfRelContratos.CompletaWhere(sFiltro, texto: string): string;
begin
  if sFiltro = '' then
     texto := ' where ' + texto
  else
     texto := sFiltro + ' and ' + texto;
  Result := texto;
end;

procedure TfRelContratos.ppHeaderBand7BeforePrint(Sender: TObject);
begin
  TppHeaderBand(Sender).visible := true;
end;

procedure TfRelContratos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmRelatorios2.QryRelContratos.sql.text := sqlOriginal;
  Action := caFree;
  fRelContratos := Nil;
end;

procedure TfRelContratos.RzBitBtn2Click(Sender: TObject);
begin
  Modalresult := mrCancel ;
end;

procedure TfRelContratos.cmbRegiaoChange(Sender: TObject);
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

procedure TfRelContratos.cmbClienteChange(Sender: TObject);
begin
  FiltraProdutos;
end;

procedure TfRelContratos.cmbMarcaChange(Sender: TObject);
begin
 FiltraProdutos;
end;

procedure TfRelContratos.FiltraProdutos;
var
  codigo :  variant;
begin
  with dmRelatorios2 do
  begin
    SelProdutos.Close;
    SelProdutos.ParamByName('CODIGO').value := 0;
    SelProdutos.ParamByName('marca').value := 0;
    SelProdutos.ParamByName('modelo').value := 0;
    SelProdutos.Open;;
    SelProdutos.FetchAll;
  end
end;

end.
