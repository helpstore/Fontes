 unit Filtra_GeraComissao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, ComCtrls, 
  Mask,     ppDB, ppDBPipe,
  ppParameter, ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt,
    ppRegion, Variants, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TfrmFiltraGeraComissoes = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActGerar: TAction;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    dsVendedor: TDataSource;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    DataInicial: TdxDateEdit;
    DataFinal: TdxDateEdit;
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
  frmFiltraGeraComissoes: TfrmFiltraGeraComissoes;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
     Relatorios_DM, Usuarios_DM, Main, Financeiro_Dm2;

{$R *.DFM}

procedure TfrmFiltraGeraComissoes.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfrmFiltraGeraComissoes.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfrmFiltraGeraComissoes.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFiltraGeraComissoes.ActGerarExecute(Sender: TObject);
var
  sql : string;
  cont : variant;
  estado: boolean;
begin
  if (DataInicial.date <= 0) then
  begin
    application.messagebox('Defina a dt. Cx. inicial','Aviso',mb_ok + mb_iconinformation);
    DataInicial.setfocus;
    exit;
  end;

  if (DataFinal.date <= 0) then
  begin
    application.messagebox('Defina a dt. Cx. final','Aviso',mb_ok + mb_iconinformation);
    DataFinal.setfocus;
    exit;
  end;

  if (DataFinal.date < DataInicial.date) then
  begin
    application.messagebox('Intervalo de datas inválido','Aviso',mb_ok + mb_iconinformation);
    DataInicial.setfocus;
    exit;
  end;

  //------------------Verificando se intervalo de geraçã já não está coinsidindo com outro período já gerado
  {sql := 'select count(*) from cm_log log where ('+QuotedStr(FormatDateTime('mm/dd/yyyy',DataInicial.date))+' between log.dt_inicial and log.dt_final)';
  cont := RetornaValor(sql);
  if VarIsNull(cont) then
    cont := 0;

  if (cont > 0) then
  begin
   application.messagebox('Dt. Inicial coincide com um intervalo de datas já gerado','Aviso',mb_ok + mb_iconerror);
   exit
  end;

  sql := 'select count(*) from cm_log log where ('+QuotedStr(FormatDateTime('mm/dd/yyyy',DataFinal.date))+' between log.dt_inicial and log.dt_final)';
  cont := RetornaValor(sql);
  if VarIsNull(cont) then
    cont := 0;

  if (cont > 0) then
  begin
   application.messagebox('Dt. Final coincide com um intervalo de datas já gerado','Aviso',mb_ok + mb_iconerror);
   exit
  end;}

  if ((DataFinal.date - DataInicial.date) < 30) then
  begin
    if application.messagebox(Pchar('Intervalo corresponde a um período inferior a 30 dias'+#13+'Deseja continuar?'),'Aviso',mb_yesno + mb_iconquestion) = id_no then
    begin
      DataInicial.setfocus;
      exit;
    end;
  end;

  with dmFinanceiro2 do
  begin
    try
      GeraComissao.Transaction := DMApp.Transaction;
      estado := DMApp.Transaction.Active;

      if not(estado) then
        dmApp.Transaction.startTransaction;

      GeraComissao.parambyname('CNPJ').value := dmApp.cnpj;
      GeraComissao.parambyname('DT_INICIAL').asDate := DataInicial.date;
      GeraComissao.parambyname('DT_FINAL').asDate := DataFinal.date;
      GeraComissao.parambyname('USUARIO').value := dmApp.UsuarioCaixa;
      GeraComissao.ExecProc;
      
      application.messagebox('Comissões geradas com sucesso','Aviso',mb_ok + mb_iconinformation);
      if not(estado) then
        dmApp.Transaction.commit
      else
        dmApp.Transaction.commitRetaining;
      modalresult := mrOk;
    except
      application.messagebox('Erro ao gerar comissões','Aviso',mb_ok + mb_iconerror);

      if not(estado) then
        dmApp.Transaction.Rollback
      else
        dmApp.Transaction.RollbackRetaining;
    end;
  end;
end;

procedure TfrmFiltraGeraComissoes.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  pnlClient.color := clWhite;
  DataInicial.date := Date - 30;
  DataFinal.date := Date;
end;

procedure TfrmFiltraGeraComissoes.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TfrmFiltraGeraComissoes.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TfrmFiltraGeraComissoes.CmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfrmFiltraGeraComissoes.CmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfrmFiltraGeraComissoes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFiltraGeraComissoes.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  with DMRelatorios do
  begin
    SelVendedor.close;
    SelVendedor.open;
    SelVendedor.FetchAll;
  end;
  //sqlOriginal :=
end;

procedure TfrmFiltraGeraComissoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := cAFree;
end;

procedure TfrmFiltraGeraComissoes.SetFiltro(const Value: String);
begin
  FFiltro := Value;
end;

procedure TfrmFiltraGeraComissoes.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

procedure TfrmFiltraGeraComissoes.SetVendedor(const Value: string);
begin
  FVendedor := Value;
end;

end.
