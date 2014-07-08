unit EstoqueComprometido_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint, ComCtrls, ppDB,
  ppDBPipe, ppParameter, ppModule, raCodMod, ppCtrls, ppBands, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
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
  TFRelEstoqueComprometido = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    dsFornecedor: TDataSource;
    ActBuscarProd: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    GroupBox1: TGroupBox;
    cmbFornecedor: TdxLookupEdit;
    cmbCliente: TdxLookupEdit;
    cmbProduto: TdxLookupEdit;
    lbl1: TcxLabel;
    Label3: TcxLabel;
    Label2: TcxLabel;
    dsCliente: TDataSource;
    dsProduto: TDataSource;
    rptRelEstComp: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppLabel62: TppLabel;
    lblFiltro: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppHeaderBand2: TppHeaderBand;
    ppLabel63: TppLabel;
    ppLabel66: TppLabel;
    ppLabel68: TppLabel;
    ppLine5: TppLine;
    ppDetailBand6: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText58: TppDBText;
    ppDBText60: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    ppLabel73: TppLabel;
    ppLine11: TppLine;
    ppDBCalc13: TppDBCalc;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    dbEstComprometido: TppDBPipeline;
    dsEstComprometido: TDataSource;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppLine2: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText3: TppDBText;
    rgbOrigem: TRadioGroup;
    rptRelEstComp2: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape1: TppShape;
    lblEmpresa2: TppLabel;
    ppLabel6: TppLabel;
    lblFiltro2: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppHeaderBand1: TppHeaderBand;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape2: TppShape;
    ppSystemVariable4: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLabel14: TppLabel;
    ppLine4: TppLine;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel15: TppLabel;
    ppLine6: TppLine;
    ppDBText9: TppDBText;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLine7: TppLine;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppLabel16: TppLabel;
    raCodeModule1: TraCodeModule;
    ppParameterList1: TppParameterList;
    RGQuebra: TRadioGroup;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure cmbProdutoEnter(Sender: TObject);
    procedure cmbProdutoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelEstoqueComprometido: TFRelEstoqueComprometido;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}


procedure TFRelEstoqueComprometido.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelEstoqueComprometido.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelEstoqueComprometido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FRelEstoqueComprometido := Nil;
end;

procedure TFRelEstoqueComprometido.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelEstoqueComprometido.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    //----------Fornecedor-----------
    dsFornecedor.DataSet.Close;
    dsFornecedor.DataSet.Open;

    dsCliente.DataSet.Close;
    dsCliente.DataSet.Open;

    dsProduto.DataSet.Close;
    dsProduto.DataSet.Open;
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;

end;

procedure TFRelEstoqueComprometido.ActPreviewExecute(Sender: TObject);
var
  sfiltro, sOrder, filtro : string;
begin
  filtro := '';
  sfiltro := '';
  if (cmbFornecedor.text <> '') then
  begin
    sFiltro := ' fornecedor = '+intToStr(cmbFornecedor.LooKupKeyValue);
    filtro :=  ' Fornecedor: '+cmbFornecedor.text;
  end;

  if (cmbCliente.text <> '') then
  begin
    if sFiltro <> '' then
      sFiltro := sFiltro + ' and ';

    sFiltro := ' psa_codigo = '+intToStr(cmbCliente.LooKupKeyValue);

    if filtro <> '' then
      filtro := filtro + ' - ';

    filtro :=  filtro + ' Clientes: '+cmbCliente.text;
  end;

  if (cmbProduto.text <> '') then
  begin
    if sFiltro <> '' then
      sFiltro := sFiltro + ' and ';

    sFiltro := sFiltro +' codigo = '+cmbProduto.LooKupKeyValue;

    if filtro <> '' then
      filtro := filtro + ' - ';

    filtro :=  filtro + ' Produto: '+cmbProduto.text;
  end;

  case rgbOrigem.itemindex of
    0: filtro :=  filtro + ' Origem: Ambos';
    1 :begin
         filtro :=  filtro + ' Origem: Faturamento';

         if sFiltro <> '' then
           sFiltro := sFiltro + ' and ';

         sFiltro := sFiltro +' origem = ''Faturamento''';
       end;
    2 :begin
         filtro :=  filtro + ' Origem: Orçamento';

         if sFiltro <> '' then
           sFiltro := sFiltro + ' and ';

         sFiltro := sFiltro +' origem = ''Orçamento''';
       end
  end;

  if sfiltro <> '' then
    sfiltro :=  ' where '+sfiltro;

  if (RGQuebra.itemindex = 0) then
    sOrder := ' order by psa_nome_razao, codigo, prd_nome '
  else
    sOrder := ' order by prd_nome, psa_nome_razao, codigo';

  with dmRelatorios do
  begin
    qryRelEstoqueComp.Close;
    qryRelEstoqueComp.sql.text := ' select cliente, produto, codigo, prd_nome, marca, psa_codigo, psa_nome_razao, '+
                                  ' sum(quantidade) quantidade, sum(total_item) total_item, sum(prc_custo) prc_custo, origem '+
                                  ' from pcd_lst_est_comprometido(:cnpj) '+sFiltro+
                                  ' group by codigo, produto, prd_nome, marca, psa_codigo, psa_nome_razao, cliente, origem '+sOrder;

    qryRelEstoqueComp.parambyname('cnpj').value :=  dmapp.cnpj;
    qryRelEstoqueComp.Open;
  end;

  if (RGQuebra.itemindex = 0) then
  begin
    lblFiltro.caption := 'Filtro: '+Filtro;
    lblEmpresa.caption := dmApp.nome;
    rptRelEstComp.Print;
  end
  else
  begin
    lblFiltro2.caption := 'Filtro: '+Filtro;
    lblEmpresa2.caption := dmApp.nome;
    rptRelEstComp2.Print;
  end;


end;

procedure TFRelEstoqueComprometido.cmbProdutoEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelEstoqueComprometido.cmbProdutoExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );
end;

end.
