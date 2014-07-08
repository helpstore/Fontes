  unit Propriedades_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppParameter,
  ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl, ppCache,
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
  TFRelPropriedades = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    dsClientes: TDataSource;
    ActBuscarProd: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    rdStatus: TRadioGroup;
    rptPropriedade: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppLabel62: TppLabel;
    lblFiltro: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppHeaderBand2: TppHeaderBand;
    ppLine5: TppLine;
    ppDetailBand6: TppDetailBand;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    dsRel: TDataSource;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    dsbairro: TDataSource;
    dsCidades: TDataSource;
    dsLogradouro: TDataSource;
    dsVendedor: TDataSource;
    dsRegiao: TDataSource;
    dbLstPropriedade: TppDBPipeline;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine2: TppLine;
    ppLabel2: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel3: TppLabel;
    ppLine3: TppLine;
    ppDBCalc2: TppDBCalc;
    GroupBox2: TGroupBox;
    Label6: TcxLabel;
    CmbRegiao: TdxLookupEdit;
    CmbCidade: TdxLookupEdit;
    Label1: TcxLabel;
    cmbBairro: TdxLookupEdit;
    Label2: TcxLabel;
    cmbLogradouro: TdxLookupEdit;
    Label3: TcxLabel;
    cmbCliente: TdxLookupEdit;
    Label4: TcxLabel;
    cmbVendedor: TdxLookupEdit;
    Label7: TcxLabel;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppDBText2: TppDBText;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText7: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelPropriedades: TFRelPropriedades;
  sqlOriginal: string;


implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Relatorios_DM, Relatorios_DM2 ;

{$R *.DFM}

procedure TFRelPropriedades.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

 sqlOriginal :=   dmRelatorios2.qryRelPropriedade.sql.text;
end;

procedure TFRelPropriedades.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelPropriedades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action      := caFree;
end;

procedure TFRelPropriedades.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelPropriedades.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  with dmRelatorios do
  begin
    SelCliente.close;
    SelCliente.Open;

    SelRegiao.close;
    SelRegiao.Open;

    SelCidade.close;
    SelCidade.Open;

    SelBairro.close;
    SelBairro.Open;

    SelLogradouro.close;
    SelLogradouro.Open;

    SelMecanico.close;
    SelMecanico.Open;

    SelVendedor2.close;
    SelVendedor2.Open;

    SelModelos.close;
    SelModelos.open;

    SelTipoContrato.Close;
    SelTipoContrato.Open;
  end;
  CmbRegiao.setfocus;
end;

procedure TFRelPropriedades.ActPreviewExecute(Sender: TObject);
var
  rptFiltro, filtro, selectSql : string;
begin
  filtro := '';

  //Cliente
  if (cmbCliente.text <> '') then
  begin
    filtro := filtro + ' and p.pessoa_fj = '+IntToStr(cmbCliente.lookupKeyValue);
    rptFiltro := ' Cliente:'+cmbCliente.text;
  end
  else
    rptFiltro := ' Cliente: Todos';

  //regiao
  if (CmbRegiao.text <> '') then
  begin
    filtro := filtro + ' and reg.codigo = '+IntToStr(CmbRegiao.lookupKeyValue);
    rptFiltro := rptFiltro +' - Regiao:'+CmbRegiao.text;
  end
  else
    rptFiltro := rptFiltro +' - Regiao Cliente: Todos';

  //Cidade
  if (cmbCidade.text <> '') then
  begin
    filtro := filtro + ' and p.cidade = '+IntToStr(cmbCidade.lookupKeyValue);
    rptFiltro := rptFiltro +' - Cidade:'+cmbCidade.text;
  end
  else
    rptFiltro := rptFiltro +' - Cidade: Todos';


  //Bairro
  if (cmbBairro.text <> '') then
  begin
    filtro := filtro + ' and p.bairro = '+IntToStr(cmbBairro.lookupKeyValue);
    rptFiltro := rptFiltro +' - Bairro:'+cmbBairro.text;
  end
  else
    rptFiltro := rptFiltro +' - Bairro: Todos';

  //Logradouro
  if (cmbLogradouro.text <> '') then
  begin
    filtro := filtro + ' and p.endereco = '+IntToStr(cmbLogradouro.lookupKeyValue);
    rptFiltro := rptFiltro +' - Logradouro:'+cmbLogradouro.text;
  end
  else
    rptFiltro := rptFiltro +  ' - Logradouro: Todos';

  //Vendedor
  if (cmbVendedor.text <> '') then
  begin
    filtro := filtro + ' and p.vendedor = '+IntToStr(cmbVendedor.lookupKeyValue);
    rptFiltro := rptFiltro +' - Vendedor:'+CmbVendedor.text;
  end
  else
    rptFiltro := rptFiltro +' - Vendedor: Todos';

  case rdStatus.itemIndex of
    0 : begin
          filtro := filtro + ' and coalesce(p.ativa,''N'') = ''S''';
          rptFiltro := rptFiltro + ' - Status: Ativos';
        end;

    1 : begin
          rptFiltro := rptFiltro + ' - Status: Inativos';
          filtro := filtro + ' and coalesce(p.ativa,''N'') = ''N''';
        end;
  end;

  with dmRelatorios2 do
  begin
    qryRelPropriedade.close;
    qryRelPropriedade.sql.text := sqlOriginal + filtro + ' order by psa.nome_razao';
    qryRelPropriedade.open;

    lblFiltro.caption := rptFiltro;
    lblEmpresa.caption := dmapp.nome;
    rptPropriedade.print;
    qryRelPropriedade.close;
    qryRelPropriedade.sql.text := sqlOriginal;
  end;
end;


procedure TFRelPropriedades.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelPropriedades.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );
end;


end.

