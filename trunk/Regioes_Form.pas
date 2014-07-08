  unit Regioes_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,   dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus, dxSkinsdxBarPainter,
  cxClasses, cxButtons, cxPC, cxLabel;

type
  TFrmRegioes = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
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
    Shape1: TShape;
    EdCodigo: TdxDBEdit;
    edNome: TdxDBEdit;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
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
    actLookup: TAction;
    DataSource: TDataSource;
    Label3: TcxLabel;
    cmbVendedor: TdxDBLookupEdit;
    dsVendedores: TDataSource;
    ActIncCidade: TAction;
    ActDelCidade: TAction;
    btnVendedor: TcxButton;
    ActNovaCidade: TAction;
    Label4: TcxLabel;
    cmbTerceiro: TdxDBLookupEdit;
    btnTerceiro: TcxButton;
    EdDescricao: TdxDBMemo;
    Label41: TcxLabel;
    dsTerceiros: TDataSource;
    btnTecnico: TcxButton;
    cmbTecnico: TdxDBLookupEdit;
    Label5: TcxLabel;
    dsTecnico: TDataSource;
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
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnVendedorClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edNomeExit(Sender: TObject);
    procedure edNomeEnter(Sender: TObject);
    procedure btnTerceiroClick(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRegioes: TFrmRegioes;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     PessoasFJ_Form, Vendedores_Form, Cidades_Form, Localizar_Generico,
  Terceiros_Form, Mecanicos_Form;

{$R *.DFM}

procedure TFrmRegioes.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;

  If DataSource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  If dsVendedores.DataSet.Tag = 0 Then
     dsVendedores.DataSet.Close;

  If dsTerceiros.DataSet.Tag = 0 Then
     dsTerceiros.DataSet.Close;

  If dsTecnico.DataSet.Tag = 0 Then
     dsTecnico.DataSet.Close;

  If FrmRegioes.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;

  Action := caFree;
  FrmRegioes := Nil;
end;

procedure TFrmRegioes.ActIncluirExecute(Sender: TObject);
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
  edNome.SetFocus;
end;

procedure TFrmRegioes.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Cliente ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmRegioes.ActPostExecute(Sender: TObject);
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

procedure TFrmRegioes.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmRegioes.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
    If Not(dsVendedores.DataSet.Active) Then
       dsVendedores.DataSet.Open;

    If Not(dsTerceiros.DataSet.Active) Then
       dsTerceiros.DataSet.Open;

    If Not(dsTecnico.DataSet.Active) Then
       dsTecnico.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;
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
  edNome.SetFocus;
end;

procedure TFrmRegioes.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmRegioes.ActListagemExecute(Sender: TObject);
begin
{  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsGeneros;
  DMListagens.Free;
  DMListagens := Nil; }
end;

procedure TFrmRegioes.ActLocalizarExecute(Sender: TObject);
begin
  try
        Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);

        Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;

        Frm_Localizar_Generico.LblTitulo.Caption := 'Localizar Regioes' ;

        Frm_Localizar_Generico.showmodal ;

        Frm_Localizar_Generico.free   ;

        Frm_Localizar_Generico := Nil ;
  Except
  end;
end;

procedure TFrmRegioes.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrmRegioes.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmRegioes.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
       ActIncCidade.Enabled := False;
       ActDelCidade.Enabled := False;
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
       ActIncCidade.Enabled := True;
       ActDelCidade.Enabled := True;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmRegioes.ActFecharExecute(Sender: TObject);
begin
  If FrmRegioes.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmRegioes.FormResize(Sender: TObject);
begin
  pc.Height := FrmRegioes.Height - 106;
  pc.Width  := FrmRegioes.Width  -  25;
end;

procedure TFrmRegioes.btnVendedorClick(Sender: TObject);
begin
//
end;

procedure TFrmRegioes.FormActivate(Sender: TObject);
begin
  Try
    frmRegioes.Refresh;
    Case FrmRegioes.Tag Of
         1: Begin
              //
              dsVendedores.DataSet.Tag  := 0;
              dsTerceiros.DataSet.Tag   := 0;
              dsTecnico.DataSet.Tag     := 0;
              DMCadastros.Tag           := 0;
              //
              Datasource.DataSet.FieldByName('VENDEDOR').asInteger := FrmMain.Codigo_Int;
              cmbVendedor.SetFocus;
              //
            End;
    End;
    FrmRegioes.Tag := 0;
  Except
  End;
end;

procedure TFrmRegioes.edNomeExit(Sender: TObject);
begin
     tiraCorFundo ( Sender );
end;

procedure TFrmRegioes.edNomeEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmRegioes.btnTerceiroClick(Sender: TObject);
begin
  //
end;

procedure TFrmRegioes.actLookupExecute(Sender: TObject);
begin
  if (cmbVendedor.Focused) then
  begin
      //
      If ActAlterar.Tag = 0 Then
         Exit;
      //
      If Datasource.DataSet.State = dsBrowse Then
         Datasource.DataSet.Edit;
      //
      { * * * * * }
      DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmVendedores', False);
      { * * * * * }
      //
      FrmRegioes.Tag           := 1;
      dsVendedores.DataSet.Tag := 1;
      DMCadastros.Tag          := 1;
      Datasource.DataSet.Tag   := 1;

      FrmVendedores := TFrmVendedores.Create(Self);
      FrmVendedores.Showmodal ;

      Datasource.DataSet.FieldByName('VENDEDOR').asInteger := FrmMain.Codigo_Int;
      FrmRegioes.Tag           := 0;
      dsVendedores.DataSet.Tag := 0;
      DMCadastros.Tag          := 0;
      Datasource.DataSet.Tag   := 0;
      cmbVendedor.SetFocus;
  end;
  if (cmbTerceiro.Focused) then
  begin
     If ActAlterar.Tag = 0 Then
     Exit;

     If Datasource.DataSet.State = dsBrowse Then
         Datasource.DataSet.Edit;

      DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTerceiros', False);
      { * * * * * }
      //
      FrmRegioes.Tag           := 1;
      dsTerceiros.DataSet.Tag  := 1;
      DMCadastros.Tag          := 1;
      Datasource.DataSet.Tag   := 1;

      FrmTerceiros := TFrmTerceiros.Create(Self);
      FrmTerceiros.Showmodal ;

      Datasource.DataSet.FieldByName('TERCEIRO').asInteger := FrmMain.Codigo_Int;
      FrmRegioes.Tag           := 0;
      dsTerceiros.DataSet.Tag  := 0;
      DMCadastros.Tag          := 0;
      Datasource.DataSet.Tag   := 0;
      cmbTerceiro.SetFocus;
  end;
  if (cmbTecnico.Focused) then
  begin
     If ActAlterar.Tag = 0 Then
     Exit;

     If Datasource.DataSet.State = dsBrowse Then
         Datasource.DataSet.Edit;

      DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMecanicos', False);
      { * * * * * }
      //
      FrmRegioes.Tag           := 1;
      dsTecnico.DataSet.Tag    := 1;
      DMCadastros.Tag          := 1;
      Datasource.DataSet.Tag   := 1;

      FrmMecanicos := TFrmMecanicos.Create(Self);
      FrmMecanicos.Showmodal ;

      Datasource.DataSet.FieldByName('TECNICO').asInteger := FrmMain.Codigo_Int;
      FrmRegioes.Tag           := 0;
      dsTecnico.DataSet.Tag    := 0;
      DMCadastros.Tag          := 0;
      Datasource.DataSet.Tag   := 0;
      cmbTecnico.SetFocus;
  end;
end;

end.
