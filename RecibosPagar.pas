 unit RecibosPagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxDBGrid,   dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons,
  cxLabel, cxCheckBox, cxTextEdit, cxDBEdit;

type
  TfrmRecibosPagar = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
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
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    Label1: TcxLabel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    ActLookup: TAction;
    Label8: TcxLabel;
    EdValor: TdxDBCalcEdit;
    EdData: TdxDBDateEdit;
    Label4: TcxLabel;
    Bevel2: TBevel;
    ActSelecao: TAction;
    Label5: TcxLabel;
    cmbPessoa: TdxDBLookupEdit;
    BtnPessoa: TcxButton;
    Label2: TcxLabel;
    EdVencimento: TdxDBDateEdit;
    Label7: TcxLabel;
    dxBarEdit1: TdxBarEdit;
    Label13: TcxLabel;
    Label3: TcxLabel;
    GRID: TdxDBGrid;
    DsPessoas: TDataSource;
    Label10: TcxLabel;
    CmbBoleto: TdxDBPickEdit;
    dxDBEdit16: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDOCTO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDIMPRESSO: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDFAVORECIDO: TdxDBGridMaskColumn;
    GRIDFORNECEDOR: TdxDBGridMaskColumn;
    GRIDCPF_CGC: TdxDBGridMaskColumn;
    GRIDDT_VENCTO: TdxDBGridMaskColumn;
    GRIDDT_LANCTO: TdxDBGridMaskColumn;
    stgfrmRecibosPagar: TcxPropertiesStore;
    dxDBEdit1: TcxDBTextEdit;
    CkTipo: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActLookupExecute(Sender: TObject);
    procedure ActSelecaoExecute(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure dxDBEdit1Enter(Sender: TObject);
    procedure dxDBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  frmRecibosPagar: TfrmRecibosPagar;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     PessoasFJ_Form,
     Financeiro_Dm, Relatorios_DM2;

{$R *.DFM}

procedure TfrmRecibosPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
       Datasource.Dataset.Close;
       dsPessoas.DataSet.Close;

       Action := caFree;
       frmRecibosPagar := Nil;

       FrmMain.PnlClient.Visible := True;
end;

procedure TfrmRecibosPagar.ActIncluirExecute(Sender: TObject);
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
  cmbPessoa.setfocus;
end;

procedure TfrmRecibosPagar.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este recibo ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TfrmRecibosPagar.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
  Except
    DMApp.Transaction.RollbackRetaining;
    Application.HandleException(Self);
  End;
end;

procedure TfrmRecibosPagar.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TfrmRecibosPagar.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmRecibosPagar.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TfrmRecibosPagar.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmRecibosPagar.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TfrmRecibosPagar.DataSourceStateChange(Sender: TObject);
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

procedure TfrmRecibosPagar.ActFecharExecute(Sender: TObject);
begin
  If frmRecibosPagar.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TfrmRecibosPagar.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TfrmRecibosPagar.ActLookupExecute(Sender: TObject);
begin
  If frmRecibosPagar.ActiveControl = cmbPessoa Then
     btnPessoa.OnClick(btnPessoa);
end;

procedure TfrmRecibosPagar.ActSelecaoExecute(Sender: TObject);
begin
  with DmFinanceiro do
  begin
    RecibosPagas.Close ;
    RecibosPagas.SelectSql.Clear ;
    RecibosPagas.SelectSQL.Text := ' select r.*, e.nome favorecido, p.nome_razao fornecedor, p.cpf_cgc ' +
                ' from fin_recibos_pagas r '+
                ' inner join sis_empresas e on (e.cnpj = r.cnpj) '+
                ' inner join glo_pessoas_fj p on (p.codigo = r.pessoa_fj and p.cnpj = r.cnpj) '+
                ' where r.cnpj = :cnpj and IMPRESSO = :IMP ';

    if not CkTipo.Checked then
      RecibosPagas.Params.ByName ('IMP').asString := 'S'
    else
      RecibosPagas.Params.ByName ('IMP').asString := 'N' ;
    RecibosPagas.Prepare ;
    RecibosPagas.Open    ;
  end;
end;

procedure TfrmRecibosPagar.BtnPessoaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  //
{ If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  DsPessoas.DataSet.Tag := DsPessoas.DataSet.Tag + 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPessoasFJ', False);
  { * * * * * }
  //
  FrmPessoasFJ := TFrmPessoasFJ.Create(Self);
  FrmPessoasFJ.ShowModal;
  //
  Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

  DsPessoas.DataSet.Tag := DsPessoas.DataSet.Tag - 1;
  DMCadastros.Tag := DMCadastros.Tag - 1;

  // Fechando Datasets desnecessários
  DMCadastros.Logradouros.Close;
  DMCadastros.Bairros.Close;
  DMCadastros.Cidades.Close;

  //
  cmbPessoa.SetFocus;
end;

procedure TfrmRecibosPagar.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(dsPessoas.DataSet.Active) Then
       dsPessoas.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;

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
  cmbPessoa.SetFocus;
end;

procedure TfrmRecibosPagar.ActListagemExecute(Sender: TObject);
begin
  with DmFinanceiro do
  begin
    dmRelatorios2.IMPRIMERECIBOPAGAR(RecibosPagascodigo.value, RecibosPagasFAVORECIDO.VALUE , RecibosPagasDt_Vencto.VALUE, RecibosPagasDocto.VALUE,
    RecibosPagasDt_Lancto.VALUE, RecibosPagasvalor.value ,
    RecibosPagasHistorico.VALUE, RecibosPagasCPF_CGC.VALUE, RecibosPagasPessoa_Fj.VALUE, RecibosPagasFORNECEDOR.VALUE );
    RecibosPagas.edit ;
    RecibosPagasimpresso.value := 'S' ;
    RecibosPagas.post ;
  end;
end;

procedure TfrmRecibosPagar.dxDBEdit1Enter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TfrmRecibosPagar.dxDBEdit1Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

end.
