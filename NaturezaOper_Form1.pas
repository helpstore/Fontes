  unit NaturezaOper_Form1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxExEdtr,  
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses,
  cxPC, cxLabel;

type
  TFrmNaturezaOper1 = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    LblRegistros: TcxLabel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel1: TPanel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Shape1: TShape;
    EdNome: TdxDBEdit;
    cmbEntradaSaida: TdxDBPickEdit;
    cmbInterestadual: TdxDBPickEdit;
    edICMS: TdxDBEdit;
    edICMSRev: TdxDBEdit;
    edISS: TdxDBEdit;
    cbMovCaixa: TdxDBCheckEdit;
    cbMovEstoque: TdxDBCheckEdit;
    cbPagaComissao: TdxDBCheckEdit;
    cbComputaVenda: TdxDBCheckEdit;
    cbResumoContabil: TdxDBCheckEdit;
    cbAlteraCusto: TdxDBCheckEdit;
    cbConsignacao: TdxDBCheckEdit;
    edMensagem1: TdxDBEdit;
    edMensagem2: TdxDBEdit;
    edInicial: TdxDBEdit;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnListagem: TdxBarButton;
    BtnFechar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActListagem: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    DataSource: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure edInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cmbEntradaSaidaEnter(Sender: TObject);
    procedure cmbInterestadualEnter(Sender: TObject);
    procedure cmbEntradaSaidaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNaturezaOper1: TFrmNaturezaOper1;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes;

{$R *.DFM}

procedure TFrmNaturezaOper1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  If FrmMain.MDIChildCount > 1 Then
     FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  //
  If DataSource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;
  //
  If DMCadastros.Tag = 0 Then
     Begin
       DMCadastros.Free;
       DMCadastros := Nil;
     End;
  //
  Action := caFree;
  FrmNaturezaOper := Nil;
  //
  If FrmMain.MDIChildCount = 1 Then
     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmNaturezaOper1.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
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
  EdInicial.SetFocus;
end;

procedure TFrmNaturezaOper1.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta Natureza de Operação ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmNaturezaOper1.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
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

procedure TFrmNaturezaOper1.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmNaturezaOper1.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;
    (Datasource.DataSet as TIBDataset).FetchAll;
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
  //
  Datasource.AutoEdit := ActAlterar.Enabled;
  EdInicial.SetFocus;
end;

procedure TFrmNaturezaOper1.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmNaturezaOper1.ActListagemExecute(Sender: TObject);
begin
  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsBairros(DataSource.DataSet);
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmNaturezaOper1.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmNaturezaOper1.edInicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = pc Then
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmNaturezaOper1.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmNaturezaOper1.DataSourceStateChange(Sender: TObject);
begin
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

procedure TFrmNaturezaOper1.ActFecharExecute(Sender: TObject);
begin
  If FrmNaturezaOper.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmNaturezaOper1.cmbEntradaSaidaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmNaturezaOper1.cmbInterestadualEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmNaturezaOper1.cmbEntradaSaidaChange(Sender: TObject);
begin
  cbMovCaixa.ReadOnly       := cmbEntradaSaida.Text = 'Entrada';
  cbMovCaixa.Checked        := cmbEntradaSaida.Text = 'Saida';
  cbPagaComissao.ReadOnly   := cmbEntradaSaida.Text = 'Entrada';
  cbPagaComissao.Checked    := cmbEntradaSaida.Text = 'Saida';
  cbComputaVenda.ReadOnly   := cmbEntradaSaida.Text = 'Entrada';
  cbComputaVenda.Checked    := cmbEntradaSaida.Text = 'Saida';
  cbResumoContabil.ReadOnly := cmbEntradaSaida.Text = 'Entrada';
  cbResumoContabil.Checked  := cmbEntradaSaida.Text = 'Saida';
  cbAlteraCusto.ReadOnly    := cmbEntradaSaida.Text = 'Saida';
  cbAlteraCusto.Checked     := cmbEntradaSaida.Text = 'Entrada';
end;

end.
