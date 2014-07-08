 unit Usuarios_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls,   dxEdLib, dxDBELib, dxExEdtr, Buttons,
  dxEditor, dxDBEdtr, dxCntner, dxBarDBNav, dxBar, ActnList, Db,  
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
  TFrmUsuarios = class(TForm)
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActListagem: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    actLookup: TAction;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnListagem: TdxBarButton;
    BtnFechar: TdxBarButton;
    btnFiltrar: TdxBarButton;
    DataSource: TDataSource;
    dsPerfil: TDataSource;
    pnlClient: TPanel;
    Panel1: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Bevel1: TBevel;
    MostraControle: TAction;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    DsVendedor: TDataSource;
    Label2: TcxLabel;
    edLogin: TdxDBEdit;
    Label1: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdNome: TdxDBEdit;
    cmbAtividade: TdxDBLookupEdit;
    CmbVendedor: TdxDBLookupEdit;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label3: TcxLabel;
    DsPlano: TDataSource;
    DsCaixa: TDataSource;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure EdLoginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure edLoginEnter(Sender: TObject);
    procedure edLoginExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmUsuarios: TFrmUsuarios;

implementation

uses Main, Seguranca_DM, Application_DM, Usuarios_DM, Funcoes, Cadastros_DM,
  Plano_DM, Plano_Form;

{$R *.DFM}

procedure TFrmUsuarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  DsCaixa.DataSet.Close;
  dsPerfil.DataSet.Close;
  Datasource.Dataset.Close;
  DsVendedor.Dataset.Close;
  DsPlano.Dataset.Close;
  //

{  DMCadastros.Free;
  DMCadastros := Nil;}

  DMSeguranca.Free;
  DMSeguranca := Nil;

  DMPlano.Free;
  DMPlano := Nil;

  //
  Action := caFree;
  FrmUsuarios := Nil;
  //
  If FrmMain.MDIChildCount = 1 Then
     FrmMain.pnlClient.Visible := True;
end;

procedure TFrmUsuarios.ActIncluirExecute(Sender: TObject);
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
  edLogin.SetFocus;
end;

procedure TFrmUsuarios.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Usuário ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmUsuarios.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmUsuarios.ActPostExecute(Sender: TObject);
begin
  //
  If DataSource.DataSet.State = dsInsert Then
     ShowMessage('A Senha padrão p/ Usuários é ''1234'', o mesmo deverá alterá-la !');
  Try
     If DataSource.State In [ DsInsert, DsEdit ]
     then begin
          DataSource.DataSet.Post;
     end;

     If DsCaixa.State In [ DsInsert, DsEdit ]
     then begin
          DsCaixa.DataSet.Post;
     end;

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

procedure TFrmUsuarios.ActCancelExecute(Sender: TObject);
begin
  If (DataSource.DataSet.State in dsEditModes) And
     (MessageBox(Handle,'Tem certeza que deseja Cancelar as informações ?',
                        'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES)
  Then begin
     If DataSource.State In [ DsInsert, DsEdit ]
     then begin
          DataSource.DataSet.Cancel;
     end;

     If DsCaixa.State In [ DsInsert, DsEdit ]
     then begin
          DsCaixa.DataSet.Cancel;
     end;
  end
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmUsuarios.ActFecharExecute(Sender: TObject);
begin
  If FrmUsuarios.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmUsuarios.FormCreate(Sender: TObject);
begin
  //
  // ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmUsuarios.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
    //
    If DMUsuarios.LoginPERFIL.Value = 1 Then
       DMSeguranca.Perfil.ParamByName('CODIGO').asInteger := 0
    Else
       DMSeguranca.Perfil.ParamByName('CODIGO').asInteger := DMUsuarios.LoginPERFIL.Value;
    //
    If Not(dsPerfil.DataSet.Active) Then
       dsPerfil.DataSet.Open;

    If Not(DsPlano.DataSet.Active) Then
       DsPlano.DataSet.Open;


    Label4.Visible      := false ;
    CmbVendedor.Visible := false ;

    //
    If DMUsuarios.LoginPERFIL.Value = 1 Then
       DMSeguranca.Usuarios.ParamByName('PERFIL').asInteger := 0
    Else
       DMSeguranca.Usuarios.ParamByName('PERFIL').asInteger := DMUsuarios.LoginPERFIL.Value;
    //
    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;

    If Not(DsCaixa.DataSet.Active) Then
       DsCaixa.DataSet.Open;

    //
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
  EdLogin.SetFocus;
end;

procedure TFrmUsuarios.DataSourceStateChange(Sender: TObject);
begin
  If (Sender as TDatasource).State in dsEditModes Then
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

procedure TFrmUsuarios.EdLoginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmUsuarios.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmUsuarios.edLoginEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmUsuarios.edLoginExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
