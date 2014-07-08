 unit Filtra_ManComissoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList, Db, dxDBEdtr, dxDBELib, ComCtrls, 
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
  cxTextEdit, cxCurrencyEdit;

type
  TfrmFiltraManComissoes = class(TForm)
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
    dsVendedor: TDataSource;
    GroupBox1: TGroupBox;
    edtCom: TcxCurrencyEdit;
    Label13: TcxLabel;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label7: TcxLabel;
    edtVenda: TcxCurrencyEdit;
    Label1: TcxLabel;
    GroupBox3: TGroupBox;
    Rd1: TRadioButton;
    Rd2: TRadioButton;
    rd5: TRadioButton;
    Rd3: TRadioButton;
    DataInicial: TdxDateEdit;
    DataFinal: TdxDateEdit;
    rd4: TRadioButton;
    cmbVendedor: TdxLookupEdit;
    Label12: TcxLabel;
    stgfrmFiltraCobranca: TcxPropertiesStore;
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
  frmFiltraManComissoes: TfrmFiltraManComissoes;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
     Relatorios_DM, Usuarios_DM, Main;

{$R *.DFM}

procedure TfrmFiltraManComissoes.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfrmFiltraManComissoes.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfrmFiltraManComissoes.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFiltraManComissoes.ActPreviewExecute(Sender: TObject);
var
  sFiltro : string;
begin
  sFiltro := '';
  if (((DataFinal.date < DataInicial.date)) or ((DataInicial.Date <=0 ) and (DataInicial.Date > 0))) then
  begin
    application.messagebox('Intervalo de datas inválido','Aviso',mb_ok + mb_iconinformation);
    DataInicial.setfocus;
    exit;
  end;

  if (DataFinal.date > 0) then
    sfiltro := ' and (DT_GERACAO between '+QuotedStr(FormatDateTime('mm/dd/yyyy',DataInicial.date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',DataFinal.date))+')';

  if (cmbVendedor.text <> '') then
    sFiltro := sfiltro + ' and cm.cod_vendedor ='+IntToStr(cmbVendedor.lookupKeyValue);

  if (rd1.checked) then
  begin
    sFiltro := sfiltro + ' and status = ''A''';
    SetStatus('Abertas');
  end
  else if (rd2.checked) then
  begin
    sFiltro := sfiltro + ' and status = ''G''';
    SetStatus('Geradas');
  end
  else if (rd3.checked) then
  begin
    sFiltro := sfiltro + ' and status = ''Q''';
    SetStatus('Estornadas');
  end
  else if (rd4.checked) then
  begin
    sFiltro := sfiltro + ' and status = ''C''';
    SetStatus('Canceladas');
  end
  else
    SetStatus('Todos');

  if (edtCom.value > 0) then
    sFiltro := sfiltro + ' and cm.codigo = '+trim(edtCom.text);

  if (edtVenda.value > 0) then
    sFiltro := sfiltro + ' and cm.cod_venda = '+trim(edtVenda.text);


  SetFiltro(SFiltro);
  ModalResult := mrOk;
end;

procedure TfrmFiltraManComissoes.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  cmbVendedor.setfocus;

  pnlClient.color := clWhite;
end;

procedure TfrmFiltraManComissoes.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TfrmFiltraManComissoes.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TfrmFiltraManComissoes.CmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfrmFiltraManComissoes.CmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfrmFiltraManComissoes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFiltraManComissoes.FormCreate(Sender: TObject);
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

procedure TfrmFiltraManComissoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dmApp.ZeraCaixaUsuario(owner);
  ACTION := cAFree;
end;

procedure TfrmFiltraManComissoes.SetFiltro(const Value: String);
begin
  FFiltro := Value;
end;

procedure TfrmFiltraManComissoes.SetStatus(const Value: string);
begin
  FStatus := Value;
end;

procedure TfrmFiltraManComissoes.SetVendedor(const Value: string);
begin
  FVendedor := Value;
end;

end.
