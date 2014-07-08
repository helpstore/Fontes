 unit TipoMovimento_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, Mask, DBCtrls, ActnList, dxBarDBNav, dxBar,
   dxCntner, dxEditor, dxEdLib, dxDBELib,   ExtCtrls, IBCustomDataSet,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TfrmTipoMovimento = class(TForm)
    DataSource: TDataSource;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnListagem: TdxBarButton;
    BtnFechar: TdxBarButton;
    OptAlterar: TdxBarButton;
    Navigator: TdxBarDBNavigator;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActListagem: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    pnlClient: TPanel;
    Bevel1: TBevel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    b2: TBevel;
    LblRegistros: TcxLabel;
    LblTitulo: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdInicial: TdxDBEdit;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbCorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoMovimento: TfrmTipoMovimento;

implementation

uses Cadastros_Dm2, Main, Application_DM, Funcoes, Usuarios_DM,
  Listagens_DM, Localizar_Generico;

{$R *.DFM}

procedure TfrmTipoMovimento.BitBtn1Click(Sender: TObject);
begin
  DataSource.dataset.insert;
end;

procedure TfrmTipoMovimento.FormShow(Sender: TObject);
begin
  //-->> Mostra Formulário e inicia componentes
  IniciaComponentes ( Self as TForm );

  If Not(DataSource.DataSet.Active) Then
    Datasource.DataSet.Open;
  (Datasource.DataSet as TIBDataset).FetchAll;
end;

procedure TfrmTipoMovimento.ActIncluirExecute(Sender: TObject);
begin
  //-->> Incluir Registro
  If DataSource.State in dsEditModes Then
     Exit;
  DataSource.DataSet.Append;
end;

procedure TfrmTipoMovimento.ActFecharExecute(Sender: TObject);
begin
 if frmTipoMovimento.FormStyle = fsMDIChild then
   FrmMain.opFechar.OnClick(FrmMain.opFechar)
 else
   Close;
end;

procedure TfrmTipoMovimento.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
  begin
    ActIncluir.Enabled   := False;
    ActAlterar.Enabled   := False;
    ActExcluir.Enabled   := False;
    ActLocalizar.Enabled := False;
    ActListagem.Enabled  := False;
    BtnSalvar.Enabled    := True;
    BtnCancelar.Enabled  := True;
    ActFechar.Enabled    := False;
  end
  else
  begin
    ActIncluir.Enabled   := ActIncluir.Tag = 1;
    ActAlterar.Enabled   := ActAlterar.Tag = 1;
    ActExcluir.Enabled   := ActExcluir.Tag = 1;
    ActLocalizar.Enabled := True;
    ActListagem.Enabled  := ActListagem.Tag = 1;
    BtnSalvar.Enabled    := False;
    BtnCancelar.Enabled  := False;
    ActFechar.Enabled    := True;
  end;
end;

procedure TfrmTipoMovimento.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TfrmTipoMovimento.ActExcluirExecute(Sender: TObject);
begin
  If Application.messagebox('Tem certeza que deseja excluir este Tipo de Movimento?','Aviso', mb_yesno + mb_iconquestion)= ID_YES Then
  begin
    Navigator.DataSource.Dataset.Delete;
    DMApp.Transaction.CommitRetaining;
  end;
end;

procedure TfrmTipoMovimento.ActAlterarExecute(Sender: TObject);
begin
  //-->> Altera Registro
  If DataSource.State in dsEditModes Then
     Exit;
  DataSource.DataSet.Edit;
end;

procedure TfrmTipoMovimento.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes then
     DataSource.DataSet.Cancel
  else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TfrmTipoMovimento.EdInicialExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
end;

procedure TfrmTipoMovimento.EdInicialEnter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
end;

procedure TfrmTipoMovimento.EdInicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmTipoMovimento.cbCorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmTipoMovimento.FormCreate(Sender: TObject);
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmTipoMovimento.pnlClientResize(Sender: TObject);
begin
  //-->> Realoca da quantidade de registro para a posição do form
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TfrmTipoMovimento.ActPostExecute(Sender: TObject);
begin
   if Navigator.DataSource.state in [ dsinsert, dsedit ]  then
      DataSource.dataset.post;
end;

procedure TfrmTipoMovimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmMain.Codigo_Int := DataSource.DataSet.FieldByName('CODIGO').asInteger;
end;

end.
