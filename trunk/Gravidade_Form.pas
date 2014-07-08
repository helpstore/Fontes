unit Gravidade_form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxBar,   StdCtrls,
  ExtCtrls, dxBarDBNav, ActnList, Db, IBCustomDataSet, dxExEdtr,
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
  TFrmGravidade = class(TForm)
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
  FrmGravidade: TFrmGravidade;

implementation

uses  Main,
      Servicos_DM,
      Localizar_Generico,
      Application_DM,
      Usuarios_DM,
      Funcoes, Listagens_DM, TipoAtendimento_Form;

{$R *.DFM}

{ TFrmTipoAtendimento }

procedure TFrmGravidade.ActAlterarExecute(Sender: TObject);
begin
  //-->> Altera Registro
  If DataSource.State in dsEditModes Then
     Exit;
  DataSource.DataSet.Edit;
end;

procedure TFrmGravidade.ActCancelExecute(Sender: TObject);
begin
  //-->> Cancela Registro
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmGravidade.ActExcluirExecute(Sender: TObject);
begin
  //-->> Excluir Registro
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta gravidade de OS?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmGravidade.ActFecharExecute(Sender: TObject);
begin
  //-->> Fecha Cadastro
  If FrmGravidade.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmGravidade.ActIncluirExecute(Sender: TObject);
begin
  //-->> Incluir Registro
  If DataSource.State in dsEditModes Then
     Exit;
  DataSource.DataSet.Append;
  EdInicial.SetFocus;
end;

procedure TFrmGravidade.ActListagemExecute(Sender: TObject);
begin
  //-->> Cria a listagem de generica
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsDefeitos(DataSource.DataSet);
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmGravidade.ActLocalizarExecute(Sender: TObject);
begin
  //-->> Chama a listagem generica
  Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);
  Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;
  Frm_Localizar_Generico.LblTitulo.Caption := 'Localizar Tipo de Atendimento' ;
  Frm_Localizar_Generico.showmodal ;

  Frm_Localizar_Generico.free   ;
  Frm_Localizar_Generico := Nil ;
end;

procedure TFrmGravidade.ActPostExecute(Sender: TObject);
begin
  //-->> Salva Registro
  DataSource.DataSet.Post;
  DMApp.Transaction.CommitRetaining;
end;

procedure TFrmGravidade.DataSourceStateChange(Sender: TObject);
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

procedure TFrmGravidade.dxDBEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //-->> Troca Tab por Enter
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmGravidade.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmGravidade.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmGravidade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //-->> Fecha Formulário
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  if Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  if FrmGravidade.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;

  Action := caFree;
  FrmGravidade := Nil;
end;

procedure TFrmGravidade.FormCreate(Sender: TObject);
begin
  //-->> Cria Formulário
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
  DataSource.DataSet.Close;
  DataSource.DataSet.Open;
end;

procedure TFrmGravidade.FormShow(Sender: TObject);
begin
  //-->> Mostra Formulário e inicia componentes
  IniciaComponentes ( Self as TForm );

  If Not(DataSource.DataSet.Active) Then
    Datasource.DataSet.Open;
  (Datasource.DataSet as TIBDataset).FetchAll;

  EdInicial.SetFocus;
end;

procedure TFrmGravidade.pnlClientResize(Sender: TObject);
begin
  //-->> Realoca da quantidade de registro para a posição do form
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmGravidade.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

end.
