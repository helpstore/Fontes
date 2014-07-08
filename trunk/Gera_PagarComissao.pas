unit Gera_PagarComissao;

interface

uses
  Windows, Messages, SysUtils, Classes,  Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, ComCtrls, 
  Mask,   ppDB, ppDBPipe,
  ppParameter, ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt,
    ppRegion, dxTL, dxDBCtrl, dxDBGrid, cxGraphics, cxControls,
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
  TfrmGeraPagarComissao = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActGerar: TAction;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    dsCCusto: TDataSource;
    gbData: TGroupBox;
    Label5: TcxLabel;
    dtVencto: TdxDateEdit;
    Label35: TcxLabel;
    dsPagar: TDataSource;
    GridReceber: TdxDBGrid;
    GridReceberTOTAL: TdxDBGridMaskColumn;
    GridReceberVENDEDOR: TdxDBGridMaskColumn;
    cmbCCusto: TdxLookupEdit;
    lkpVendedor: TdxLookupEdit;
    Label1: TcxLabel;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActGerarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure CmbCobradorExit(Sender: TObject);
    procedure CmbCobradorEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FStatus: string;
    FVendedor: string;
    sqlOriginal : string;
    FFiltro: String;
    procedure SetFiltro(const Value: String);
    procedure SetStatus(const Value: string);
    procedure SetVendedor(const Value: string);
  public
    { Public declarations }
    property Filtro : String read FFiltro write SetFiltro;
    property Status: string read FStatus write SetStatus;
    property Vendedor: string read FVendedor write SetVendedor;
  end;

var
  frmGeraPagarComissao: TfrmGeraPagarComissao;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
     Relatorios_DM, Usuarios_DM, Main, Financeiro_Dm2;

{$R *.DFM}

procedure TfrmGeraPagarComissao.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfrmGeraPagarComissao.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfrmGeraPagarComissao.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmGeraPagarComissao.ActGerarExecute(Sender: TObject);
var
  sql : string;
  cont : variant;
  estado: boolean;
  msg : string;
begin
  if (GridReceberTOTAL.SummaryFooterValue <= 0) then
  begin
    application.messagebox('Não existem valores válidos para gerar Contas à Pagar','Aviso',mb_ok + mb_iconinformation);
    exit;
  end;

  if (dtVencto.date <= 0) then
  begin
    application.messagebox('Defina a dt. vencto para as Contas à Pagar','Aviso',mb_ok + mb_iconinformation);
    dtVencto.setfocus;
    exit;
  end;

  if (cmbCCusto.text = '') then
  begin
    application.messagebox('Defina o centro de custo','Aviso',mb_ok + mb_iconinformation);
    cmbCCusto.setfocus;
    exit;
  end;

  if (lkpVendedor.text = 'Todos') then
    msg := 'Deseja quitar comissões para todos os vendedores?'
  else
    msg := 'Deseja quitar comissões somente para o vendedor(a) '+LowerCase(lkpVendedor.text)+'?';


  if application.messagebox(Pchar(msg),'Aviso',mb_yesno + mb_iconquestion) = id_no then
    exit;

  with dmFinanceiro2 do
  begin
    try
      GeraPagar.Transaction := DMApp.Transaction;
      estado := DMApp.Transaction.Active;

      if not(estado) then
        dmApp.Transaction.startTransaction;

      GeraPagar.parambyname('CNPJ').value := dmApp.cnpj;
      GeraPagar.parambyname('CENTRO_CUSTO').value := cmbCCusto.LookupKeyValue;
      GeraPagar.parambyname('VDD').value := lkpVendedor.LookupKeyValue;
      GeraPagar.parambyname('DT_VENCTO').asDate := dtVencto.date;
      GeraPagar.ExecProc;

      application.messagebox('Contas à Pagar geradas com sucesso','Aviso',mb_ok + mb_iconinformation);
      if not(estado) then
        dmApp.Transaction.commit
      else
        dmApp.Transaction.commitRetaining;
      modalresult := mrOk;
    except
      application.messagebox('Erro ao gerar as Contas','Aviso',mb_ok + mb_iconerror);

      if not(estado) then
        dmApp.Transaction.Rollback
      else
        dmApp.Transaction.RollbackRetaining;
    end;
    qryPagar.close;
    qryPagar.open;
    qryPagar.fetchall;
  end;
end;

procedure TfrmGeraPagarComissao.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  pnlClient.color := clWhite;
  dtVencto.date := Date + 30;
end;

procedure TfrmGeraPagarComissao.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TfrmGeraPagarComissao.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TfrmGeraPagarComissao.CmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfrmGeraPagarComissao.CmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfrmGeraPagarComissao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmGeraPagarComissao.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  DmFinanceiro.SelCentro.Close;
  DmFinanceiro.SelCentro.Open;
  DmFinanceiro.SelCentro.FetchAll;

  DmFinanceiro2.SelVendedor.Close;
  DmFinanceiro2.SelVendedor.Open;
  DmFinanceiro2.SelVendedor.FetchAll;

  dmFinanceiro2.qryPagar.close;
  dmFinanceiro2.qryPagar.open;
  dmFinanceiro2.qryPagar.fetchall;

  lkpVendedor.LookupKeyValue := 0;
end;

procedure TfrmGeraPagarComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := cAFree;
end;

procedure TfrmGeraPagarComissao.SetFiltro(const Value: String);
begin
  FFiltro := Value;
end;

procedure TfrmGeraPagarComissao.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

procedure TfrmGeraPagarComissao.SetVendedor(const Value: string);
begin
  FVendedor := Value;
end;

end.
