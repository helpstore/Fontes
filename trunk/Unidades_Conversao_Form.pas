 unit Unidades_Conversao_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxExEdtr,  
     DBCtrls, Buttons, dxDBEdtr, dxTL, dxDBCtrl, dxDBGrid,
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
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons,
  cxLabel;

type
  TFrmConversaoUnidades = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
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
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    dsUnidadePadrao: TDataSource;
    ProximaPagina: TAction;
    PaginaAnt: TAction;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dsUnidadeConversao: TDataSource;
    Label1: TcxLabel;
    cmbUndPadrao: TdxDBLookupEdit;
    btnUndPadrao: TcxButton;
    btnUndConversao: TcxButton;
    cmbUndConversao: TdxDBLookupEdit;
    Label2: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label3: TcxLabel;
    gbOperador: TDBRadioGroup;
    ActLookup: TAction;
    dxDBGrid1: TdxDBGrid;
    dxDBGrid1CODIGO: TdxDBGridMaskColumn;
    dxDBGrid1COD_UND_PADRAO: TdxDBGridMaskColumn;
    dxDBGrid1COD_UND_CONVERSAO: TdxDBGridMaskColumn;
    dxDBGrid1FATOR: TdxDBGridMaskColumn;
    dxDBGrid1QTDE: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure EdInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure EdSubUnidadesEnter(Sender: TObject);
    procedure EdSubUnidadesExit(Sender: TObject);
    procedure btnUndPadraoClick(Sender: TObject);
    procedure btnUndConversaoClick(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure cmbUndPadraoEnter(Sender: TObject);
    procedure cmbUndPadraoExit(Sender: TObject);
    procedure cmbUndPadraoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: String;
  end;

var
  FrmConversaoUnidades: TFrmConversaoUnidades;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Localizar_Generico, Cadastros_Dm2, Unidades_Form;

{$R *.DFM}

procedure TFrmConversaoUnidades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  If FrmConversaoUnidades.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;

  Action := caFree;
  FrmConversaoUnidades := Nil;
  //
end;

procedure TFrmConversaoUnidades.ActIncluirExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
     Exit;
  Try
    Navigator.DataSource.DataSet.Append;
    cmbUndConversao.SetFocus;
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
  end;

end;

procedure TFrmConversaoUnidades.ActExcluirExecute(Sender: TObject);
Var msg: String;
begin
  if  (Application.MessageBox('Tem certeza que deseja excluir esta unidade de conversão?','Aviso', mb_ok + mb_yesno)= IDNO) Then
      exit;

  Navigator.DataSource.Dataset.Delete;
  DMApp.Transaction.CommitRetaining;
end;

procedure TFrmConversaoUnidades.ActPostExecute(Sender: TObject);
begin
  Try
    Navigator.DataSource.DataSet.Post;
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

procedure TFrmConversaoUnidades.ActCancelExecute(Sender: TObject);
begin
  If Navigator.DataSource.DataSet.State in dsEditModes Then
     Navigator.DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmConversaoUnidades.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;

     dmcadastros2.qryUndPadrao.Close;
     dmcadastros2.qryUndPadrao.Open;

     dmcadastros2.qryUndConversao.Close;
     dmcadastros2.qryUndConversao.Open;

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
  Datasource.AutoEdit := ActAlterar.Enabled;
end;

procedure TFrmConversaoUnidades.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmConversaoUnidades.ActListagemExecute(Sender: TObject);
begin
  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsUnidades(DataSource.DataSet);
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmConversaoUnidades.ActLocalizarExecute(Sender: TObject);
begin
  try
        Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);

        Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;

        Frm_Localizar_Generico.CAMPO1 := 'SIGLA';

        Frm_Localizar_Generico.LblTitulo.Caption := 'Localizar Unidades' ;

        Frm_Localizar_Generico.showmodal ;

        Frm_Localizar_Generico.free   ;

        Frm_Localizar_Generico := Nil ;
  Except
  end;
end;

procedure TFrmConversaoUnidades.EdInicialKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConversaoUnidades.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmConversaoUnidades.DataSourceStateChange(Sender: TObject);
begin
     If Navigator.DataSource.State in dsEditModes Then
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

procedure TFrmConversaoUnidades.ActFecharExecute(Sender: TObject);
begin
  If FrmConversaoUnidades.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmConversaoUnidades.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount); 
end;

procedure TFrmConversaoUnidades.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmConversaoUnidades.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmConversaoUnidades.EdSubUnidadesEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmConversaoUnidades.EdSubUnidadesExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmConversaoUnidades.btnUndPadraoClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
    Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmUnidades', False);


  FrmUnidades := TFrmUnidades.Create(Self);
  FrmUnidades.ShowModal;
  Datasource.DataSet.FieldByName('COD_UND_PADRAO').asString := FrmMain.Codigo_Str;
  FrmUnidades.Free;
  FrmUnidades := Nil;
  dmCadastros2.UnidadeConversao.Close;
  dmCadastros2.UnidadeConversao.Open;
  cmbUndPadrao.SetFocus;
end;

procedure TFrmConversaoUnidades.btnUndConversaoClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
    Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmUnidades', False);


  FrmUnidades := TFrmUnidades.Create(Self);
  FrmUnidades.ShowModal;
  Datasource.DataSet.FieldByName('COD_UND_CONVERSAO').asString := FrmMain.Codigo_Str;
  FrmUnidades.Free;
  FrmUnidades := Nil;
  dmCadastros2.qryUndConversao.Close;
  dmCadastros2.qryUndConversao.Open;
  cmbUndConversao.SetFocus;
end;

procedure TFrmConversaoUnidades.ActLookupExecute(Sender: TObject);
begin
  If FrmConversaoUnidades.ActiveControl = cmbUndPadrao Then
     btnUndPadrao.OnClick(btnUndPadrao);

  If FrmConversaoUnidades.ActiveControl = cmbUndConversao Then
     btnUndConversao.OnClick(btnUndConversao);

end;

procedure TFrmConversaoUnidades.cmbUndPadraoEnter(Sender: TObject);
begin
  CorFundo (Sender);
end;

procedure TFrmConversaoUnidades.cmbUndPadraoExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TFrmConversaoUnidades.cmbUndPadraoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key=VK_RETURN) Then
      Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.
