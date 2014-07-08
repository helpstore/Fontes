 unit StatusServico_Form;

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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxColorComboBox, cxDBColorComboBox;

type
  TfrmStatusServico = class(TForm)
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
    Label3: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdInicial: TdxDBEdit;
    DBCheckBox1: TDBCheckBox;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    cxDBColorComboBox1: TcxDBColorComboBox;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
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
    procedure ActListagemExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActPostExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStatusServico: TfrmStatusServico;

implementation

uses Cadastros_Dm2, Main, Application_DM, Funcoes, Usuarios_DM,
  Listagens_DM, Localizar_Generico;

{$R *.DFM}

procedure TfrmStatusServico.BitBtn1Click(Sender: TObject);
begin
  DataSource.dataset.insert;
end;

procedure TfrmStatusServico.BitBtn2Click(Sender: TObject);
begin
  DataSource.dataset.post;
end;

procedure TfrmStatusServico.FormShow(Sender: TObject);
begin
  //-->> Mostra Formulário e inicia componentes
  IniciaComponentes ( Self as TForm );

  If Not(DataSource.DataSet.Active) Then
    Datasource.DataSet.Open;
  (Datasource.DataSet as TIBDataset).FetchAll;
end;

procedure TfrmStatusServico.ActIncluirExecute(Sender: TObject);
begin
  //-->> Incluir Registro
  If DataSource.State in dsEditModes Then
     Exit;
  DataSource.DataSet.Append;
end;

procedure TfrmStatusServico.ActFecharExecute(Sender: TObject);
begin
 if frmStatusServico.FormStyle = fsMDIChild then
   FrmMain.opFechar.OnClick(FrmMain.opFechar)
 else
   Close;
end;

procedure TfrmStatusServico.DataSourceStateChange(Sender: TObject);
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

procedure TfrmStatusServico.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);  
end;

procedure TfrmStatusServico.ActExcluirExecute(Sender: TObject);
begin
  If Application.messagebox('Tem certeza que deseja excluir este Status?','Aviso', mb_yesno + mb_iconquestion)= ID_YES Then
  begin
    Navigator.DataSource.Dataset.Delete;
    DMApp.Transaction.CommitRetaining;
  end;
end;

procedure TfrmStatusServico.ActAlterarExecute(Sender: TObject);
begin
  //-->> Altera Registro
  If DataSource.State in dsEditModes Then
     Exit;
  DataSource.DataSet.Edit;
end;

procedure TfrmStatusServico.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes then
     DataSource.DataSet.Cancel
  else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TfrmStatusServico.EdInicialExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
end;

procedure TfrmStatusServico.EdInicialEnter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
end;

procedure TfrmStatusServico.EdInicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmStatusServico.cbCorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmStatusServico.FormCreate(Sender: TObject);
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmStatusServico.pnlClientResize(Sender: TObject);
begin
  //-->> Realoca da quantidade de registro para a posição do form
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TfrmStatusServico.ActListagemExecute(Sender: TObject);
begin
  //-->> Cria a listagem de generica
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsDefeitos(DataSource.DataSet);
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TfrmStatusServico.ActLocalizarExecute(Sender: TObject);
begin
  //-->> Chama a listagem generica
  Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);
  Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;
  Frm_Localizar_Generico.LblTitulo.Caption := 'Localizar Status' ;
  Frm_Localizar_Generico.showmodal ;

  Frm_Localizar_Generico.free   ;
  Frm_Localizar_Generico := Nil ;
end;

procedure TfrmStatusServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmMain.Codigo_Int := DataSource.DataSet.FieldByName('CODIGO').asInteger;
end;

procedure TfrmStatusServico.ActPostExecute(Sender: TObject);
begin
   If not(DataSource.State  in [dsInsert,dsEdit]) Then
     Exit;

  DataSource.DataSet.Post;
end;

end.
