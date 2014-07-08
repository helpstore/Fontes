 unit Cm2_GeraFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList, Db, dxDBEdtr, dxDBELib, ComCtrls,   Mask,     ppDB, ppDBPipe,
  ppParameter, ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt,
    ppRegion, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, cxButtons;

type
  TfrmGeraFinComissoes = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActFechar: TAction;
    ActGerar: TAction;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    dsCCusto: TDataSource;
    gbData: TGroupBox;
    Label35: TcxLabel;
    cmbCCusto: TdxLookupEdit;
    Panel1: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Panel3: TPanel;
    GridReceber: TdxDBGrid;
    DataSource: TDataSource;
    GridReceberCNPJ: TdxDBGridMaskColumn;
    GridReceberCODIGO: TdxDBGridMaskColumn;
    GridReceberVALOR: TdxDBGridMaskColumn;
    GridReceberDT_GERACAO: TdxDBGridDateColumn;
    GridReceberSTATUS: TdxDBGridMaskColumn;
    GridReceberAGENTE: TdxDBGridMaskColumn;
    lkpAgente: TdxLookupEdit;
    Label1: TcxLabel;
    dtVencto: TdxDateEdit;
    Label5: TcxLabel;
    dsAgentes: TDataSource;
    edtHistorico: TdxEdit;
    Label2: TcxLabel;
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
    procedure lkpAgenteEnter(Sender: TObject);
    procedure lkpAgenteExit(Sender: TObject);
    procedure lkpAgenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
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
  frmGeraFinComissoes: TfrmGeraFinComissoes;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
     Relatorios_DM, Usuarios_DM, Main, Financeiro_Dm2;

{$R *.DFM}

procedure TfrmGeraFinComissoes.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfrmGeraFinComissoes.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfrmGeraFinComissoes.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmGeraFinComissoes.ActGerarExecute(Sender: TObject);
var
  sql : string;
  cont : variant;
  estado: boolean;
  msg : string;
  saldo : real;
begin
  saldo := (GridReceberValor.SummaryFooterValue);
  if (dtVencto.date <= 0) then
  begin
    application.messagebox('Defina a dt. vencto para o registro financeiro','Aviso',mb_ok + mb_iconinformation);
    dtVencto.setfocus;
    exit;
  end;

  if ((cmbCCusto.text = '') and (Saldo > 0)) then
  begin
    application.messagebox('Defina o centro de custo','Aviso',mb_ok + mb_iconerror);
    cmbCCusto.setfocus;
    exit;
  end;

  if (lkpAgente.text = '') then
  begin
    application.messagebox('Defina o Agente da comissão','Aviso',mb_ok + mb_iconerror);
    lkpAgente.setfocus;
    exit;
  end;

  if (Saldo < 0) then
  begin
    if application.messagebox(Pchar('Será gerado um registro de contas à receber para o agente no valor de R$ '+FormatFloat('###,##0.00',(saldo *-1))+'. Deseja continuar ?'),'Aviso',mb_yesno + mb_iconquestion) = id_no then
     exit;
  end
  else
  begin
    if application.messagebox(Pchar('Será gerado um registro de contas à pagar para o agente no valor de R$ '+FormatFloat('###,##0.00',(saldo ))+'. Deseja continuar ?'),'Aviso',mb_yesno + mb_iconquestion) = id_no then
     exit;
  end;

  with dmFinanceiro2 do
  begin
    try
      PCD_CM2_QUITAR_COMISSAO.Transaction := DMApp.Transaction;
      PCD_CM2_QUITAR_COMISSAO.parambyname('CNPJ').value := dmApp.cnpj;
      PCD_CM2_QUITAR_COMISSAO.parambyname('CC_CUSTO').value := cmbCCusto.LookupKeyValue;
      PCD_CM2_QUITAR_COMISSAO.parambyname('COD_AGENTE').value := lkpAgente.LookupKeyValue;
      PCD_CM2_QUITAR_COMISSAO.parambyname('HISTORICO').value := copy(edtHistorico.text,1,100);
      PCD_CM2_QUITAR_COMISSAO.parambyname('DT_VENCTO').asDate := dtVencto.date;
      PCD_CM2_QUITAR_COMISSAO.ExecProc;

      application.messagebox('Comissões provisionadas com sucesso','Aviso',mb_ok + mb_iconinformation);
      dmApp.Transaction.commitRetaining;
      modalresult := mrOk;
    except
      application.messagebox('Erro ao provisionar comissões','Aviso',mb_ok + mb_iconerror);
      dmApp.Transaction.RollbackRetaining;
    end;
  end;
end;

procedure TfrmGeraFinComissoes.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  pnlClient.color := clWhite;
  dtVencto.date := Date + 30;
  if (GridReceberVALOR.SummaryFooterValue < 0) then
    cmbCCusto.enabled := false;
  lkpAgente.setfocus;  
end;

procedure TfrmGeraFinComissoes.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TfrmGeraFinComissoes.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TfrmGeraFinComissoes.CmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfrmGeraFinComissoes.CmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfrmGeraFinComissoes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmGeraFinComissoes.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  DmFinanceiro.SelCentro.Close;
  DmFinanceiro.SelCentro.Open;
  DmFinanceiro.SelCentro.FetchAll;

  DmFinanceiro2.QryQuitarComissoes.Close;
  DmFinanceiro2.QryQuitarComissoes.parambyname('cnpj').value := dmApp.cnpj;
  DmFinanceiro2.QryQuitarComissoes.Open;

//  DmFinanceiro2.QryQuitarComissoes.fetchAll;
 // showmessage(IntToStr(DmFinanceiro2.QryQuitarComissoes.RecordCount));

  dmCadastros.SelPessoas.Close;
  dmCadastros.SelPessoas.Open;
  dmCadastros.SelPessoas.FetchAll;

end;

procedure TfrmGeraFinComissoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := cAFree;
end;

procedure TfrmGeraFinComissoes.SetFiltro(const Value: String);
begin
  FFiltro := Value;
end;

procedure TfrmGeraFinComissoes.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

procedure TfrmGeraFinComissoes.SetVendedor(const Value: string);
begin
  FVendedor := Value;
end;

procedure TfrmGeraFinComissoes.lkpAgenteEnter(Sender: TObject);
begin
   CorFundo ( Sender );
end;

procedure TfrmGeraFinComissoes.lkpAgenteExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TfrmGeraFinComissoes.lkpAgenteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

end.
