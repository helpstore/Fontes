  unit Rotas_Form;

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
  TFrmRotas = class(TForm)
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
    dsRotasCidades: TDataSource;
    DataSource: TDataSource;
    Label3: TcxLabel;
    cmbVendedor: TdxDBLookupEdit;
    dsCidades: TDataSource;
    dsVendedores: TDataSource;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid2: TdxDBGrid;
    dxDBGrid1Column1: TdxDBGridMaskColumn;
    dxDBGrid2Column1: TdxDBGridMaskColumn;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    ActIncCidade: TAction;
    ActDelCidade: TAction;
    btnVendedor: TcxButton;
    BtnCidades: TcxButton;
    ActNovaCidade: TAction;
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
    procedure actLookupExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ActIncCidadeExecute(Sender: TObject);
    procedure ActDelCidadeExecute(Sender: TObject);
    procedure btnVendedorClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ActNovaCidadeExecute(Sender: TObject);
    procedure edNomeExit(Sender: TObject);
    procedure edNomeEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRotas: TFrmRotas;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     PessoasFJ_Form, Vendedores_Form, Cidades_Form, Localizar_Generico;

{$R *.DFM}

procedure TFrmRotas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  If FrmMain.MDIChildCount >= 1 Then
     FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  //
  If dsRotasCidades.DataSet.Tag = 0 Then
     dsRotasCidades.Dataset.Close;
  If DataSource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;
  If dsVendedores.DataSet.Tag = 0 Then
     dsVendedores.DataSet.Close;
  If dsCidades.DataSet.Tag = 0 Then
     dsCidades.Dataset.Close;
  //
{  If DMCadastros.Tag = 0 Then
     Begin
       DMCadastros.Free;
       DMCadastros := Nil;
     End;}

  If FrmRotas.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;

  //
  Action := caFree;
  FrmRotas := Nil;
  //
end;

procedure TFrmRotas.ActIncluirExecute(Sender: TObject);
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

procedure TFrmRotas.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Cliente ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmRotas.ActPostExecute(Sender: TObject);
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

procedure TFrmRotas.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmRotas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
    If Not(dsVendedores.DataSet.Active) Then
       dsVendedores.DataSet.Open;
    If Not(dsCidades.DataSet.Active) Then
       dsCidades.DataSet.Open;
    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;
    If Not(dsRotasCidades.DataSet.Active) Then
       dsRotasCidades.DataSet.Open;
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

procedure TFrmRotas.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmRotas.ActListagemExecute(Sender: TObject);
begin
{  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsGeneros;
  DMListagens.Free;
  DMListagens := Nil; }
end;

procedure TFrmRotas.ActLocalizarExecute(Sender: TObject);
begin
  try
        Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);

        Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;

        Frm_Localizar_Generico.LblTitulo.Caption := 'Localizar Rotas' ;

        Frm_Localizar_Generico.showmodal ;

        Frm_Localizar_Generico.free   ;

        Frm_Localizar_Generico := Nil ;
  Except
  end;
end;

procedure TFrmRotas.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrmRotas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmRotas.DataSourceStateChange(Sender: TObject);
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

procedure TFrmRotas.ActFecharExecute(Sender: TObject);
begin
  If FrmRotas.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmRotas.actLookupExecute(Sender: TObject);
begin
{  If FrmRotas.ActiveControl = cmbNomeRazao Then
     btnPessoaFJ.OnClick(btnPessoaFJ);  }
end;

procedure TFrmRotas.FormResize(Sender: TObject);
begin
  //
  pc.Height := FrmRotas.Height - 106;
  pc.Width  := FrmRotas.Width  -  25;
end;

procedure TFrmRotas.ActIncCidadeExecute(Sender: TObject);
begin
  //
  If Datasource.DataSet.RecordCount > 0 Then
     Begin
       //
       If dsRotasCidades.DataSet.Locate('CIDADE', dsCidades.DataSet.FieldByName('CODIGO').asInteger, []) Then
          Begin
            ShowMessage('Esta Cidade já foi informada para esta Rota !');
            Exit;
          End;
       //
       dsRotasCidades.DataSet.Append;
       dsRotasCidades.DataSet.FieldByName('CIDADE').asInteger := dsCidades.DataSet.FieldByName('CODIGO').asInteger;
       dsRotasCidades.DataSet.Post;
       //
       DMApp.Transaction.CommitRetaining;
       //
       dsRotasCidades.DataSet.Close ;
       dsRotasCidades.DataSet.Open  ;
     End;
end;

procedure TFrmRotas.ActDelCidadeExecute(Sender: TObject);
begin
  //
  If dsRotasCidades.DataSet.RecordCount > 0 Then
     Begin
       If MessageBox(Handle,'Tem certeza que deseja Excluir esta Cidade desta Rota ?',
                            'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
          dsRotasCidades.DataSet.Delete;
       //
     End;
end;

procedure TFrmRotas.btnVendedorClick(Sender: TObject);
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
  FrmRotas.Tag             := 1;
  dsVendedores.DataSet.Tag := 1;
  DMCadastros.Tag          := 1;
  Datasource.DataSet.Tag   := 1;

  //
  FrmVendedores := TFrmVendedores.Create(Self);
  //
  //
  FrmVendedores.Showmodal ;
  //
  Datasource.DataSet.FieldByName('VENDEDOR').asInteger := FrmMain.Codigo_Int;

  dsRotasCidades.DataSet.Close ;
  dsRotasCidades.DataSet.Open  ;

  FrmRotas.Tag             := 0;
  dsVendedores.DataSet.Tag := 0;
  DMCadastros.Tag          := 0;
  Datasource.DataSet.Tag   := 0;

  //
  cmbVendedor.SetFocus;

end;

procedure TFrmRotas.FormActivate(Sender: TObject);
begin
  Try
    FrmRotas.Refresh;
    Case FrmRotas.Tag Of
         1: Begin
              //
              dsVendedores.DataSet.Tag := 0;
              DMCadastros.Tag          := 0;
              //
              Datasource.DataSet.FieldByName('VENDEDOR').asInteger := FrmMain.Codigo_Int;
              cmbVendedor.SetFocus;
              //
            End;
    End;
    FrmRotas.Tag := 0;
  Except
  End;
end;

procedure TFrmRotas.ActNovaCidadeExecute(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then Exit;
  //
  { * * * * * }
{  if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  //
  dsCidades.DataSet.Tag := dsCidades.DataSet.Tag + 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCidades', False);
  { * * * * * }
  //
  FrmCidades := TFrmCidades.Create(Self);
  FrmCidades.ShowModal;
  //
{  If DMCadastros.Tag = 0
  then begin
       DMCadastros.Free   ;
       DMCadastros := Nil ;
  end
  else
      DMCadastros.Tag := DMCadastros.Tag - 1;}

  FrmCidades.Free;
  FrmCidades := Nil;
  //
  dsCidades.DataSet.Tag := dsCidades.DataSet.Tag - 1;

  dsCidades.DataSet.Close ;
  dsCidades.DataSet.Open  ;

  //
  dxDBGrid2.SetFocus;
end;

procedure TFrmRotas.edNomeExit(Sender: TObject);
begin
     tiraCorFundo ( Sender );
end;

procedure TFrmRotas.edNomeEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

end.
