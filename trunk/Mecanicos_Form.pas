 unit Mecanicos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, dxBarDBNav, dxBar, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  IBCustomDataSet,
  dxDBEdtr, dxCntner, ExtCtrls, Buttons, StdCtrls,    
  dxTL, dxDBCtrl, dxDBGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit, Menus,
  dxSkinsdxBarPainter, cxClasses, cxButtons, cxLabel, cxPC;

type
  TFrmMecanicos = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel1: TPanel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    btnPessoaFJ: TcxButton;
    Shape1: TShape;
    Label10: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    EdCodigo: TdxDBEdit;
    cmbNomeRazao: TdxDBLookupEdit;
    edVendedor: TdxDBEdit;
    EdPorcIcm: TdxDBCalcEdit;
    dxDBCalcEdit1: TdxDBCalcEdit;
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
    dsPessoasFJ: TDataSource;
    DataSource: TDataSource;
    Label7: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdDocumento: TdxEdit;
    lbldocumento: TcxLabel;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    Panel2: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    dxDBEdit2: TdxDBEdit;
    Label8: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    Label9: TcxLabel;
    Label11: TcxLabel;
    dxDBEdit4: TdxDBEdit;
    dxDBCalcEdit2: TdxDBCalcEdit;
    Label12: TcxLabel;
    CmbUsuarioCx: TdxDBLookupEdit;
    Label13: TcxLabel;
    DsUsuario: TDataSource;
    dxTabSheet2: TcxTabSheet;
    dbInformacoes: TdxDBMemo;
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
    procedure btnPessoaFJClick(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure cmbNomeRazaoEnter(Sender: TObject);
    procedure cmbNomeRazaoExit(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMecanicos: TFrmMecanicos;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     PessoasFJ_Form, Cadastros_Dm2;

{$R *.DFM}

procedure TFrmMecanicos.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;

  If DataSource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;
  If dsPessoasFJ.DataSet.Tag = 0 Then
     dsPessoasFJ.DataSet.Close;

  Action := caFree;
  FrmMecanicos := Nil;

  If FrmMain.MDIChildCount = 1 Then
     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmMecanicos.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  DataSource.DataSet.Append;
  CmbNomeRazao.SetFocus;
end;

procedure TFrmMecanicos.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Vendedor ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmMecanicos.ActPostExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
  begin
      If EdDocumento.Visible then
      begin
           If DataSource.DataSet.FieldByName ('SENHA').AsString <> EdDocumento.Text then
           begin
                MessageDlg('Senha Não Confere!', mtError, [mbOK], 0);
                EdDocumento.SetFocus ;
           end else
           begin
                DataSource.DataSet.Post;
                DMApp.Transaction.CommitRetaining;
           end;
      end else
      begin
           DataSource.DataSet.Post;
           DMApp.Transaction.CommitRetaining;
      end;
  end;
end;

procedure TFrmMecanicos.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmMecanicos.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
     If DmApp.Dig_Sen_Vend = 'S'
     THEN BEGIN
          EdDocumento.Visible  := False ;
          LblDocumento.Visible := False ;
     END;

     If Not(dsPessoasFJ.DataSet.Active) Then
       dsPessoasFJ.DataSet.Open;


     If Not(Datasource.DataSet.Active) Then
       DataSource.DataSet.Open;

     If Not(DsUsuario.DataSet.Active) Then
       DsUsuario.DataSet.Open;


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
  cmbNomeRazao.SetFocus;
end;

procedure TFrmMecanicos.FormCreate(Sender: TObject);
begin
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFrmMecanicos.ActListagemExecute(Sender: TObject);
begin
     //
     DMListagens := TDMListagens.Create(Self);
     DMListagens.lsVendedores;
     DMListagens.Free;
     DMListagens := Nil; 
end;

procedure TFrmMecanicos.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmMecanicos.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TFrmMecanicos.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmMecanicos.DataSourceStateChange(Sender: TObject);
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
       EdDocumento.Visible  := True ;
       LblDocumento.Visible := True ;
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
       EdDocumento.Visible  := False;
       LblDocumento.Visible := False;
     End;
end;

procedure TFrmMecanicos.ActFecharExecute(Sender: TObject);
begin
  If FrmMecanicos.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmMecanicos.btnPessoaFJClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPessoasFJ', False);
  { * * * * * }
  //
{  if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  // Informando quais datasets estão em uso
  dsPessoasFJ.DataSet.Tag := dsPessoasFJ.DataSet.Tag + 1;
  //
  FrmPessoasFJ := TFrmPessoasFJ.Create(Application);

  FrmPessoasFJ.Showmodal ;

  Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

  dsPessoasFJ.DataSet.Tag := dsPessoasFJ.DataSet.Tag - 1;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  cmbNomeRazao.SetFocus;
  //
end;

procedure TFrmMecanicos.actLookupExecute(Sender: TObject);
begin
  If FrmMecanicos.ActiveControl = cmbNomeRazao Then
     btnPessoaFJ.OnClick(btnPessoaFJ);
end;

procedure TFrmMecanicos.cmbNomeRazaoEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmMecanicos.cmbNomeRazaoExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmMecanicos.ActAlterarExecute(Sender: TObject);
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

end.
