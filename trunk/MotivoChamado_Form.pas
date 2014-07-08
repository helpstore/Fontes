 unit MotivoChamado_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxBar,   StdCtrls,
  ExtCtrls, dxBarDBNav, ActnList, Db, IBCustomDataSet, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TfrmMotivoChamado = class(TForm)
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
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActListagem: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    BarDBNavigator: TdxBarDBNavigator;
    pnlClient: TPanel;
    Bevel1: TBevel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    b2: TBevel;
    LblRegistros: TcxLabel;
    LblTitulo: TcxLabel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel1: TPanel;
    dxDBEdit1: TdxDBEdit;
    EdInicial: TdxDBEdit;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMotivoChamado: TfrmMotivoChamado;

implementation

uses  Listagens_DM,
      Localizar_Generico,
      Application_DM,
      Main,
      Servicos_DM,
      Usuarios_DM,
      Funcoes;

{$R *.DFM}

{ TfrmMotivoChamado }

procedure TfrmMotivoChamado.ActAlterarExecute(Sender: TObject);
begin
  //-->> Altera Registro
  If DataSource.State in dsEditModes Then
     Exit;
  DataSource.DataSet.Edit;
end;

procedure TfrmMotivoChamado.ActCancelExecute(Sender: TObject);
begin
  //-->> Cancela Registro
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TfrmMotivoChamado.ActExcluirExecute(Sender: TObject);
begin
  //-->> Excluir Registro
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Tipo de Atendimento ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TfrmMotivoChamado.ActFecharExecute(Sender: TObject);
begin
  //-->> Fecha Cadastro
  If FrmMotivoChamado.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TfrmMotivoChamado.ActIncluirExecute(Sender: TObject);
begin
  //-->> Incluir Registro
  If DataSource.State in dsEditModes Then
     Exit;
  DataSource.DataSet.Append;
  EdInicial.SetFocus;
end;

procedure TfrmMotivoChamado.ActListagemExecute(Sender: TObject);
begin
  //-->> Cria a listagem de generica
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsDefeitos(DataSource.DataSet);
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TfrmMotivoChamado.ActLocalizarExecute(Sender: TObject);
begin
  //-->> Chama a listagem generica
  Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);
  Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;
  Frm_Localizar_Generico.LblTitulo.Caption := 'Localizar Motivo Chamado';
  Frm_Localizar_Generico.showmodal ;

  Frm_Localizar_Generico.free   ;
  Frm_Localizar_Generico := Nil ;
end;

procedure TfrmMotivoChamado.ActPostExecute(Sender: TObject);
begin
  //-->> Salva Registro
  DataSource.DataSet.Post;
  DMApp.Transaction.CommitRetaining;
end;

procedure TfrmMotivoChamado.DataSourceStateChange(Sender: TObject);
begin
  //-->> Atualiza os estados dos Botoes
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True;
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TfrmMotivoChamado.dxDBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //-->> Troca Tab por Enter
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmMotivoChamado.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TfrmMotivoChamado.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TfrmMotivoChamado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //-->> Fecha Formulário
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  If FrmMotivoChamado.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;

  Action := caFree;
  FrmMotivoChamado := Nil;
end;

procedure TfrmMotivoChamado.FormCreate(Sender: TObject);
begin
  //-->> Cria Formulário
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmMotivoChamado.FormShow(Sender: TObject);
begin
  //-->> Mostra Formulário e inicia componentes
  IniciaComponentes ( Self as TForm );

  If Not(DataSource.DataSet.Active) Then
    Datasource.DataSet.Open;
  (Datasource.DataSet as TIBDataset).FetchAll;

  EdInicial.SetFocus;
end;

procedure TfrmMotivoChamado.pnlClientResize(Sender: TObject);
begin
  //-->> Realoca da quantidade de registro para a posição do form
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TfrmMotivoChamado.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

end.
