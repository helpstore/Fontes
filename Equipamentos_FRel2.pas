unit Equipamentos_FRel2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask,  ComCtrls, dxCntner, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib,  ExtCtrls,   Db, ppProd, ppClass,
  ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppVar,
  ppBands, ppCache, ppModule, raCodMod, ppStrtch, ppSubRpt,
  cxPropertiesStore, ppParameter, ppEndUsr,  cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxButtons, cxLabel,        cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxCheckBox,
  IBCustomDataSet, IBQuery;

type
  TfRelEquipamentos2 = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    GroupBox2: TGroupBox;
    Label11: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label12: TcxLabel;
    Label2: TcxLabel;
    cmbRegiao: TdxLookupEdit;
    cmbModelo: TdxLookupEdit;
    cmbMarca: TdxLookupEdit;
    cmbCliente: TdxLookupEdit;
    cmbEquipamento: TdxLookupEdit;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    DataInicial: tcxDateEdit;
    DataFinal: tcxDateEdit;
    gbValor: TGroupBox;
    Label1: TcxLabel;
    Label6: TcxLabel;
    edtVlrInicial: TcxCurrencyEdit;
    edtVlrFinal: TcxCurrencyEdit;
    GroupBox3: TGroupBox;
    rd13: TRadioButton;
    rd14: TRadioButton;
    rd15: TRadioButton;
    GroupBox4: TGroupBox;
    Label9: TcxLabel;
    Label10: TcxLabel;
    edtChIni: TcxCurrencyEdit;
    edtChFim: TcxCurrencyEdit;
    GroupBox5: TGroupBox;
    Label13: TcxLabel;
    Label14: TcxLabel;
    edtSubIni: TcxCurrencyEdit;
    edtSubFim: TcxCurrencyEdit;
    GroupBox6: TGroupBox;
    Label15: TcxLabel;
    Label16: TcxLabel;
    edtTmpIni: TcxCurrencyEdit;
    edtTmpFim: TcxCurrencyEdit;
    GroupBox7: TGroupBox;
    Label17: TcxLabel;
    Label18: TcxLabel;
    edtKmIni: TcxCurrencyEdit;
    edtKmFim: TcxCurrencyEdit;
    dsRegiao: TDataSource;
    DsClientes: TDataSource;
    dsMarcas: TDataSource;
    dsModelo: TDataSource;
    dsEquipamento: TDataSource;
    ppEquipSint: TppDBPipeline;
    rptEquipSint: TppReport;
    dsEquipSint: TDataSource;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppShape5: TppShape;
    lblFiltro: TppLabel;
    ppTituloRel: TppLabel;
    lblEmpresa: TppLabel;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppSubRegiao: TppSubReport;
    ppChildReport26: TppChildReport;
    ppHeaderBand7: TppHeaderBand;
    ppLabel240: TppLabel;
    ppLabel241: TppLabel;
    ppLine68: TppLine;
    ppLabel247: TppLabel;
    ppLabel251: TppLabel;
    ppDetailBand27: TppDetailBand;
    ppDBText215: TppDBText;
    ppDBText217: TppDBText;
    ppSummaryBand28: TppSummaryBand;
    ppLine73: TppLine;
    ppLabel266: TppLabel;
    ppGroup10: TppGroup;
    ppGroupHeaderBand10: TppGroupHeaderBand;
    ppLabel267: TppLabel;
    ppLine74: TppLine;
    ppDBText230: TppDBText;
    ppGroupFooterBand10: TppGroupFooterBand;
    ppLine75: TppLine;
    ppLabel268: TppLabel;
    ppDBCalc72: TppDBCalc;
    raCodeModule8: TraCodeModule;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape10: TppShape;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppSubMarca: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape17: TppShape;
    ppShape18: TppShape;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppShape21: TppShape;
    ppShape22: TppShape;
    ppShape23: TppShape;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine2: TppLine;
    ppLabel17: TppLabel;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    ppDBCalc18: TppDBCalc;
    ppDBCalc19: TppDBCalc;
    ppDBCalc20: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel18: TppLabel;
    ppLine3: TppLine;
    ppDBText19: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine4: TppLine;
    ppLabel19: TppLabel;
    ppDBCalc21: TppDBCalc;
    ppDBCalc22: TppDBCalc;
    ppDBCalc23: TppDBCalc;
    ppDBCalc24: TppDBCalc;
    ppDBCalc25: TppDBCalc;
    ppDBCalc26: TppDBCalc;
    ppDBCalc27: TppDBCalc;
    raCodeModule1: TraCodeModule;
    ppSubModelo: TppSubReport;
    ppChildReport2: TppChildReport;
    ppHeaderBand2: TppHeaderBand;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppShape36: TppShape;
    ppShape37: TppShape;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLine5: TppLine;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppShape38: TppShape;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppShape41: TppShape;
    ppShape42: TppShape;
    ppShape43: TppShape;
    ppShape44: TppShape;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine6: TppLine;
    ppLabel30: TppLabel;
    ppDBCalc28: TppDBCalc;
    ppDBCalc29: TppDBCalc;
    ppDBCalc30: TppDBCalc;
    ppDBCalc31: TppDBCalc;
    ppDBCalc32: TppDBCalc;
    ppDBCalc33: TppDBCalc;
    ppDBCalc34: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel31: TppLabel;
    ppLine7: TppLine;
    ppDBText30: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine8: TppLine;
    ppLabel32: TppLabel;
    ppDBCalc35: TppDBCalc;
    ppDBCalc36: TppDBCalc;
    ppDBCalc37: TppDBCalc;
    ppDBCalc38: TppDBCalc;
    ppDBCalc39: TppDBCalc;
    ppDBCalc40: TppDBCalc;
    ppDBCalc41: TppDBCalc;
    raCodeModule2: TraCodeModule;
    cbTipoContrato: TdxLookupEdit;
    Label3: TcxLabel;
    Label19: TcxLabel;
    ppSubCliente: TppSubReport;
    ppChildReport3: TppChildReport;
    ppHeaderBand3: TppHeaderBand;
    ppShape45: TppShape;
    ppShape46: TppShape;
    ppShape47: TppShape;
    ppShape48: TppShape;
    ppShape49: TppShape;
    ppShape50: TppShape;
    ppShape51: TppShape;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLine9: TppLine;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppDetailBand4: TppDetailBand;
    ppShape52: TppShape;
    ppShape53: TppShape;
    ppShape54: TppShape;
    ppShape55: TppShape;
    ppShape56: TppShape;
    ppShape57: TppShape;
    ppShape58: TppShape;
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
    ppSummaryBand3: TppSummaryBand;
    ppLine10: TppLine;
    ppLabel43: TppLabel;
    ppDBCalc42: TppDBCalc;
    ppDBCalc43: TppDBCalc;
    ppDBCalc44: TppDBCalc;
    ppDBCalc45: TppDBCalc;
    ppDBCalc46: TppDBCalc;
    ppDBCalc47: TppDBCalc;
    ppDBCalc48: TppDBCalc;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppLabel44: TppLabel;
    ppLine11: TppLine;
    ppDBText41: TppDBText;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppLine12: TppLine;
    ppLabel45: TppLabel;
    ppDBCalc49: TppDBCalc;
    ppDBCalc50: TppDBCalc;
    ppDBCalc51: TppDBCalc;
    ppDBCalc52: TppDBCalc;
    ppDBCalc53: TppDBCalc;
    ppDBCalc54: TppDBCalc;
    ppDBCalc55: TppDBCalc;
    raCodeModule3: TraCodeModule;
    rd16: TRadioButton;
    GroupBox1: TGroupBox;
    Label20: TcxLabel;
    Label21: TcxLabel;
    edtTtlChIni: TcxCurrencyEdit;
    edtTtlChFim: TcxCurrencyEdit;
    dsTipoContrato: TDataSource;
    stgfRelEquipamentos2: TcxPropertiesStore;
    edtNumSerie: TcxTextEdit;
    Label22: TcxLabel;
    GroupBox8: TGroupBox;
    rd1: TRadioButton;
    rd2: TRadioButton;
    rd3: TRadioButton;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    dsLayout: TDataSource;
    ppLayout: TppDBPipeline;
    Designer: TppDesigner;
    cmbContrato: TdxLookupEdit;
    cxLabel1: TcxLabel;
    cmbCidade: TdxLookupEdit;
    SelCidade: TIBQuery;
    dsCidades: TDataSource;
    SelCidadeCODIGO: TIntegerField;
    SelCidadeNOME: TIBStringField;
    SelCidadeUF: TIBStringField;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText46: TppDBText;
    GroupBox9: TGroupBox;
    ckContinuo: TRadioButton;
    ckDescontinuo: TRadioButton;
    ckCGAmbos: TRadioButton;
    GroupBox10: TGroupBox;
    ckEsp: TRadioButton;
    ckConv: TRadioButton;
    ckATAmbos: TRadioButton;
    ckConfigurar: TcxCheckBox;
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
    procedure cmbModeloChange(Sender: TObject);
  private
    { Private declarations }
    SqlOriginal : string;
    procedure FiltraProdutos;
  public
    sFiltro, sOrder, tipo, filtro : string;
    { Public declarations }
  end;

var
  fRelEquipamentos2: TfRelEquipamentos2;

implementation

uses Servicos_DM, Relatorios_DM, Cadastros_DM, Relatorios_DM2, Funcoes,
  Application_DM, Cadastros_Dm2;

{$R *.DFM}

procedure TfRelEquipamentos2.FormCreate(Sender: TObject);
begin
  with DmServicos do
  begin
    SelModelosProduto.Close;
    SelModelosProduto.Open;
    SelModelosProduto.FetchAll;

    SelContrato.Close;
    SelContrato.Open;
    SelContrato.FetchAll;
  end;

  with DMRelatorios do
  begin
    SelRegiao.Close;
    SelRegiao.Open;
    SelRegiao.FetchAll;
  end;

  with dmRelatorios2 do
  begin
    SelPessoasFJ.Close;
    SelPessoasFJ.Open;;
    SelPessoasFJ.FetchAll;
  end;

  with DMCadastros do
  begin
    Marcas.Close;
    Marcas.Open;
    Marcas.FetchAll;
  end;

  with dmCadastros2 do
  begin
    SelContratos.Close;
    SelContratos.Open;
    SelContratos.Fetchall;
  end;

  SelCidade.Close;
  SelCidade.ParamByname('cnpj').value := dmApp.cnpj;
  SelCidade.Open;
  SelCidade.FetchAll;
  FiltraProdutos;
  sqlOriginal := dmRelatorios2.qryRelEquipSint.sql.text;
end;

procedure TfRelEquipamentos2.cmbEquipamentoEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfRelEquipamentos2.cmbEquipamentoExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );

end;

procedure TfRelEquipamentos2.cmbEquipamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);

end;

procedure TfRelEquipamentos2.BtnOkClick(Sender: TObject);
var
 sOrder : string;
// cliente, regiao, marca, modelo,
begin
  filtro := '';
  sFiltro := '';
  dmCadastros2.CONFIG_REL_GRAFICO.close;
  dmCadastros2.CONFIG_REL_GRAFICO.parambyname('relatorio').value := fRelEquipamentos2.Caption;
  dmCadastros2.CONFIG_REL_GRAFICO.Open;

  rptEquipSint.Template.DatabaseSettings.Name := fRelEquipamentos2.Caption;
  rptEquipSint.Template.LoadFromDatabase;

  ppsubMarca.visible := false;
  ppsubModelo.visible := false;
  ppsubRegiao.visible := false;
  ppsubCliente.visible := false;
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

 //---------------------------- Filtro Clientes -------------------------------------
  if (cmbCliente.text <> '') then
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('PR_CLIENTE').value := cmbCliente.LookupKeyValue;
    filtro := ' - Cliente: '+cmbCliente.text;
  end
  else
    dmRelatorios2.qryRelEquipSint.parambyname('PR_CLIENTE').value := 0;

 //------------------------- Filtro Equipamento ------------------------------------
  if (cmbEquipamento.text <> '') then
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('PR_EQUIPAMENTO').value := cmbEquipamento.LookupKeyValue;
    filtro := filtro + ' - Equipamento: '+cmbEquipamento.text;
  end
  else
    dmRelatorios2.qryRelEquipSint.parambyname('PR_EQUIPAMENTO').value := '';

  //--------------------------------- Filtro Região -------------------------------------------
  if (cmbRegiao.text <> '') then
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('PR_REGIAO').value := cmbRegiao.LookupKeyValue;
    filtro := filtro +' - Região: ' + cmbRegiao.text;
  end
  else
    dmRelatorios2.qryRelEquipSint.parambyname('PR_REGIAO').value := 0;

  //------------------------------------ Filtro Marca -----------------------------------------
  if (cmbMarca.text <> '') then
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('PR_MARCA').value := cmbMarca.LookupKeyValue;
    filtro := filtro +' - Marca: ' + cmbMarca.text;
  end
  else
    dmRelatorios2.qryRelEquipSint.parambyname('PR_MARCA').value := 0;


  //------------------------------------ Tipo Contrato -----------------------------------------
  if (cbTipoContrato.text <> '') then
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('PR_TPCONTRATO').value := cbTipoContrato.LookupKeyValue;
    filtro := filtro +' - Tipo Contrato: ' +cbTipoContrato.text;
  end
  else
    dmRelatorios2.qryRelEquipSint.parambyname('PR_TPCONTRATO').value := 0;

//------------------------------------ Filtro Modelo -----------------------------------------
  if (cmbModelo.text <> '') then
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('PR_MODELO').value := cmbModelo.LookupKeyValue;
    filtro := filtro +' - Modelo: ' + cmbModelo.text;
  end
  else
    dmRelatorios2.qryRelEquipSint.parambyname('PR_MODELO').value := 0;


  //------------------------------------ Filtro Contratos -----------------------------------------
  if (cMbContrato.text <> '') then
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('PR_CONTRATO').value := cmbContrato.LookupKeyValue;
    filtro := filtro + ' - Contrato: ' + cmbModelo.text;
  end
  else
    dmRelatorios2.qryRelEquipSint.parambyname('PR_CONTRATO').value := 0;


  //------------------------------------ Filtro CIDADES -----------------------------------------
  if (cmbCidade.text <> '') then
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('PR_CIDADE').value := cmbCidade.LookupKeyValue;
    filtro := filtro + ' - Cidade: ' + cmbCidade.text;
  end
  else
    dmRelatorios2.qryRelEquipSint.parambyname('PR_CIDADE').value := 0;

  //------------------------------------ Filtro Serie do equipamento---------------------------
  if (trim(edtNumSerie.text) <> '') then
  begin
    if (length(trim(edtNumSerie.text)) > 30) then
    begin
      Application.messagebox('Nº de série inválido. Dígitos excedem 30 posições','Aviso',mb_iconerror+mb_ok);
      edtNumSerie.SetFocus;
      exit;
    end;

    dmRelatorios2.qryRelEquipSint.parambyname('PR_SERIE').value := trim(edtNumSerie.text);
    filtro := 'Nº de Série: ' + trim(edtNumSerie.text);
  end
  else
    dmRelatorios2.qryRelEquipSint.parambyname('PR_SERIE').value := '';


  //-------------Técnico Espcifico (vinculado no produto)-------------------//
  if (ckConv.checked) then
  begin
     sfiltro := CompletaWhere(sFiltro,' coalesce(tecnico_especifico,0) = 0 ');
     filtro := filtro + ' - Atendimento / Técnico: Convencional';
  end
  else if (ckEsp.checked) then
  begin
    sfiltro := CompletaWhere(sFiltro,' coalesce(tecnico_especifico,0) > 0 ');
    filtro := filtro + ' - Atendimento / Técnico: Especifíco';
  end
  else
    filtro := filtro + ' - Atendimento / Técnico: Ambos';

  //-----------controle gerencial-----------------//
  if (ckContinuo.Checked) then
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('DESCONTINUADO').value := 'N';
    filtro := filtro + ' Controle Gerencial: Contínuo ';
  end
  else if (ckDescontinuo.Checked) then
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('DESCONTINUADO').value := 'S';
    filtro := filtro + ' Controle Gerencial: Descontinuado';
  end
  else
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('DESCONTINUADO').value := '';
    filtro := filtro + ' Controle Gerencial: Ambos';
  end;

  if (rd1.Checked) then
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('ATIVO').value := 'S';
    filtro := filtro + ' Ativo: Sim';
  end
  else if (rd2.Checked) then
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('ATIVO').value := 'N';
    filtro := filtro + ' Ativo: Não';
  end
  else
  begin
    dmRelatorios2.qryRelEquipSint.parambyname('ATIVO').value := '';
    filtro := filtro + ' Ativo: Ambos';
  end;



  //--------------------------------- Chamados substitutos-------------------------------------
  sfiltro := CompletaWhere(sFiltro,' (coalesce(chamados_sub,0) between '+edtSubIni.text+' and '+edtSubFim.text+')');
  filtro := filtro + ' Nº. Ch. Substitutos: '+edtSubIni.text+' à '+edtSubFim.text;


  //--------------------------------- KM Percorrido -------------------------------------------
  sfiltro := CompletaWhere(sFiltro,' (coalesce(km_rodado,0) between '+edtKmIni.text+' and '+edtKmFim.text+')');
  filtro := filtro + ' Km. Percorrido: '+edtKmIni.text+' à '+edtKmFim.text;

  //--------------------------------- N Chamados Titular -------------------------------------------
  sfiltro := CompletaWhere(sFiltro,' ( coalesce(chamados_tit,0) between '+edtChIni.text+' and '+edtChFim.text+')');
  filtro := filtro + ' Nº. Ch. Titular: '+edtChIni.text+' à '+edtChFim.text;

  //--------------------------------- N Chamados Totais -------------------------------------------
  sfiltro := CompletaWhere(sFiltro,' ( coalesce(total_chamados,0) between '+edtTtlChIni.text+' and '+edtTtlChFim.text+')');
  filtro := filtro + ' Nº. Ttl. Chamados: '+edtTtlChIni.text+' à '+edtTtlChFim.text;

  //--------------------------------- Tempo respostta vencidos -------------------------------------------
  sfiltro := CompletaWhere(sFiltro,' (coalesce(tempo_resp_venc,0) between '+edtTmpIni.text+' and '+edtTmpFim.text+')');
  filtro := filtro + ' Tmp. Reposta Venc.: '+edtTmpIni.text+' à '+edtTmpFim.text;

  if (rd13.Checked) then
  begin
    sOrder := ' order by reg_nome ';
    ppsubRegiao.visible := true;
  end
  else if (rd14.Checked) then
  begin
    sOrder := ' order by marca ';
    ppsubMarca.visible := true;
  end
  else if (rd15.Checked) then
  begin
    sOrder := ' order by modelo ';
    ppsubModelo.visible := true;
  end
  else if (rd16.Checked) then
  begin
    sOrder := ' order by PSA_FANTASIA ';
    ppsubCliente.visible := true;
  end;

  with dmRelatorios2 do
  begin
    qryRelEquipSint.Close;
    qryRelEquipSint.SQL.Text := sqlOriginal+sFiltro+sOrder;
    qryRelEquipSint.ParamByName('CNPJ').Value      := DMApp.Cnpj;
    qryRelEquipSint.ParamByName('DATA1').AsDate := DataInicial.date;
    qryRelEquipSint.ParamByName('DATA2').AsDate := DataFinal.date;
    qryRelEquipSint.Open;
  end;

  if (ckConfigurar.Checked) then
  begin
    dmApp.ConfigurarRelatorio(rptEquipSint,Designer,fRelEquipamentos2.Caption);
    exit;
  end;



  lblFiltro.text := filtro;
  lblEmpresa.caption := DmApp.Nome;
  rptEquipSint.print;
end;

function TfRelEquipamentos2.CompletaWhere(sFiltro, texto: string): string;
begin
  if sFiltro = '' then
     texto := ' where ' + texto
  else
     texto := sFiltro + ' and ' + texto;
  Result := texto;
end;

procedure TfRelEquipamentos2.ppHeaderBand7BeforePrint(Sender: TObject);
begin
  TppHeaderBand(Sender).visible := true;
end;

procedure TfRelEquipamentos2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmRelatorios2.qryRelEquipSint.sql.text := sqlOriginal;
  Action := caFree;
  fRelEquipamentos2 := Nil;
end;

procedure TfRelEquipamentos2.RzBitBtn2Click(Sender: TObject);
begin
  Modalresult := mrCancel ;
end;

procedure TfRelEquipamentos2.cmbRegiaoChange(Sender: TObject);
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

procedure TfRelEquipamentos2.cmbClienteChange(Sender: TObject);
begin
  FiltraProdutos;
end;

procedure TfRelEquipamentos2.cmbMarcaChange(Sender: TObject);
begin
 FiltraProdutos;
end;

procedure TfRelEquipamentos2.FiltraProdutos;
var
 codigo, marca, modelo : variant;
begin
  if (cmbCliente.text <> '') then
    codigo :=  cmbCliente.LookupKeyValue
  else
    codigo := 0;

  if (cmbMarca.text <> '') then
    marca :=  cmbMarca.LookupKeyValue
  else
    marca := 0;

  if (cmbModelo.text <> '') then
    modelo :=  cmbModelo.LookupKeyValue
  else
    modelo := 0;

  with dmRelatorios2 do
  begin
    SelProdutos.Close;
    SelProdutos.ParamByName('CODIGO').value := codigo;
    SelProdutos.ParamByName('marca').value := marca;
    SelProdutos.ParamByName('modelo').value := modelo;
    SelProdutos.Open;;
    SelProdutos.FetchAll;
  end
end;

procedure TfRelEquipamentos2.cmbModeloChange(Sender: TObject);
begin
  FiltraProdutos;
end;

end.
