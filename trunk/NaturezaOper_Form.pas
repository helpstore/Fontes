   unit NaturezaOper_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxExEdtr,  
  DBCtrls,raCodMod, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses,
  cxPC, cxLabel, cxFilterControl, cxDBFilterControl;

type
  TFrmNaturezaOper = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    LblRegistros: TcxLabel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Shape1: TShape;
    EdNome: TdxDBEdit;
    edInicial: TdxDBEdit;
    {Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActListagem: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;}
    dxDBCheckEdit1: TDBCheckBox;
    dxTabSheet2: TcxTabSheet;
    Panel2: TPanel;
    Image1: TImage;
    b2: TBevel;
    LblTitulo: TcxLabel;
    tabNF: TcxTabSheet;
    CheckBox1: TDBCheckBox;
    CheckBox2: TDBCheckBox;
    CheckBox3: TDBCheckBox;
    CheckBox4: TDBCheckBox;
    CheckBox5: TDBCheckBox;
    CheckBox6: TDBCheckBox;
    CheckBox8: TDBCheckBox;
    CheckBox9: TDBCheckBox;
    CheckBox10: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    GroupBox1: TGroupBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    GroupBox2: TGroupBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    GroupBox3: TGroupBox;
    cbAlteraCusto: TDBCheckBox;
    cbMovCaixa: TDBCheckBox;
    cbMovEstoque: TDBCheckBox;
    GroupBox4: TGroupBox;
    DBCheckBox18: TDBCheckBox;
    DBCheckBox19: TDBCheckBox;
    DBCheckBox20: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    GroupBox5: TGroupBox;
    cbPagaComissao: TDBCheckBox;
    GroupBox6: TGroupBox;
    cbResumoContabil: TDBCheckBox;
    cbComputaVenda: TDBCheckBox;
    dxDBCheckEdit2: TDBCheckBox;
    dxTabSheet3: TcxTabSheet;
    GroupBox7: TGroupBox;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    edICMS: TdxDBEdit;
    edICMSRev: TdxDBEdit;
    edISS: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DataSource: TDataSource;
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
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnListagem: TdxBarButton;
    BtnFechar: TdxBarButton;
    OptAlterar: TdxBarButton;
    dxDBCheckEdit4: TDBCheckBox;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    GroupBox8: TGroupBox;
    Label8: TcxLabel;
    edMensagem1: TdxDBEdit;
    Label9: TcxLabel;
    edMensagem2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    Label13: TcxLabel;
    dxDBEdit4: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    Label12: TcxLabel;
    Label3: TcxLabel;
    cmbEntradaSaida: TdxDBPickEdit;
    cmbInterestadual: TdxDBPickEdit;
    Label4: TcxLabel;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
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
    procedure edInicialEnter(Sender: TObject);
    procedure edInicialExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmNaturezaOper: TFrmNaturezaOper;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes;

{$R *.DFM}

procedure TFrmNaturezaOper.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  //
  If DataSource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;
  //
{  If DMCadastros.Tag = 0 Then
     Begin
       DMCadastros.Free;
       DMCadastros := Nil;
     End;}
  //
  If FrmNaturezaOper.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;

  Action := caFree;
  FrmNaturezaOper := Nil;
  //
end;

procedure TFrmNaturezaOper.ActIncluirExecute(Sender: TObject);
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

procedure TFrmNaturezaOper.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta Natureza de Operação ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmNaturezaOper.ActPostExecute(Sender: TObject);
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

procedure TFrmNaturezaOper.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmNaturezaOper.FormShow(Sender: TObject);
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

procedure TFrmNaturezaOper.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  pc.ActivePageIndex := 0;
end;

procedure TFrmNaturezaOper.ActListagemExecute(Sender: TObject);
begin
  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsBairros(DataSource.DataSet);
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmNaturezaOper.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmNaturezaOper.edInicialKeyDown(Sender: TObject;
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

procedure TFrmNaturezaOper.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmNaturezaOper.DataSourceStateChange(Sender: TObject);
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

procedure TFrmNaturezaOper.ActFecharExecute(Sender: TObject);
begin
  if FrmNaturezaOper.FormStyle = fsMDIChild then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmNaturezaOper.cmbEntradaSaidaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmNaturezaOper.cmbInterestadualEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmNaturezaOper.cmbEntradaSaidaChange(Sender: TObject);
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

procedure TFrmNaturezaOper.edInicialEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TFrmNaturezaOper.edInicialExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

end.
