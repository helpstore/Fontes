 unit Cidades_Form;
               
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons,
  cxLabel;

type
  TFrmCidades = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdInicial: TdxDBEdit;
    b2: TBevel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    OptAlterar: TdxBarButton;
    Label3: TcxLabel;
    edUF: TdxDBEdit;
    LblTitulo: TcxLabel;
    btnUf: TcxButton;
    ActLookUp: TAction;
    cmbConta: TdxDBLookupEdit;
    dsEstados: TDataSource;
    Label4: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    Label5: TcxLabel;
    dxDBEdit3: TdxDBEdit;
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
    procedure btnUfClick(Sender: TObject);
    procedure ActLookUpExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmCidades: TFrmCidades;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Estados_Form, Localizar_Generico;

{$R *.DFM}

procedure TFrmCidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  //

  //
{  If DMCadastros.Tag = 0 Then
     Begin
       DMCadastros.Free;
       DMCadastros := Nil;
     End;}
     
  //
  If FrmCidades.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmCidades := Nil;
end;

procedure TFrmCidades.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
  EdInicial.SetFocus;
end;

procedure TFrmCidades.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta Cidade?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmCidades.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmCidades.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCidades.FormShow(Sender: TObject);
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
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
//  Datasource.AutoEdit := ActAlterar.Enabled;
  EdInicial.SetFocus;
  dsEstados.dataset.close;
  dsEstados.dataset.open;
end;

procedure TFrmCidades.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmCidades.ActListagemExecute(Sender: TObject);
begin
  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsCidades(DataSource.DataSet);
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmCidades.ActLocalizarExecute(Sender: TObject);
begin
  try
        Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);

        Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;

        Frm_Localizar_Generico.LblTitulo.Caption := 'Localizar Cidades' ;

        Frm_Localizar_Generico.showmodal;

        Frm_Localizar_Generico.free   ;

        Frm_Localizar_Generico := Nil ;
  Except
  end;

//  DMApp.Localizar(Datasource);
end;

procedure TFrmCidades.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCidades.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmCidades.DataSourceStateChange(Sender: TObject);
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

procedure TFrmCidades.ActFecharExecute(Sender: TObject);
begin
  If FrmCidades.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCidades.ActAlterarExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Edit;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmCidades.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmCidades.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmCidades.btnUfClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //

  If (DataSource.DataSet.State = dsBrowse) then
     DataSource.DataSet.Edit;
  { * * * * * }

  //
  DataSource.DataSet.Tag := DataSource.DataSet.Tag + 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmEstados', False);
  { * * * * * }
  //
  FrmEstados := TFrmEstados.Create(Self);
  FrmEstados.ShowModal;

  //
  DataSource.DataSet.FieldByName('UF').asString := FrmMain.Codigo_Str;

  //
  DMCadastros.Tag := DMCadastros.Tag - 1;

  FrmEstados.Free;

  FrmEstados := Nil;
  //
  edUF.SetFocus;
  dsEstados.dataset.close;
  dsEstados.dataset.open;
end;

procedure TFrmCidades.ActLookUpExecute(Sender: TObject);
begin
  If FrmCidades.ActiveControl = edUF Then
    btnUf.OnClick(btnUf);
end;

end.
