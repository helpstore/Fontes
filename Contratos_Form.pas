 unit Contratos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet,   Buttons,
  dxExEdtr, dxDBEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
     IBQuery, ppParameter, ppModule,
  raCodMod, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport,   ppDB, ppDBPipe,
  cxPropertiesStore, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit, cxLabel,
  cxButtons;

type
  TFrmContratos = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    DataSource: TDataSource;
    dsContrato: TDataSource;
    dsCliente: TDataSource;
    dsProdutos: TDataSource;
    Panel2: TPanel;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnListagem: TdxBarButton;
    BtnFechar: TdxBarButton;
    OptAlterar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    ActLookUp: TAction;
    Navigator: TdxBarDBNavigator;
    GroupBox1: TGroupBox;
    DtFim: TdxDBDateEdit;
    DtInicio: TdxDBDateEdit;
    edtNumContrato: TdxDBEdit;
    cmbContrato: TdxDBLookupEdit;
    cmbCliente: TdxDBLookupEdit;
    btnCliente: TcxButton;
    btnContrato: TcxButton;
    Label4: TcxLabel;
    Label2: TcxLabel;
    Label1: TcxLabel;
    Label3: TcxLabel;
    Label6: TcxLabel;
    cbEtiqueta: TdxDBCheckEdit;
    Label14: TcxLabel;
    dxDBMemo1: TdxDBMemo;
    stgFrmContratos: TcxPropertiesStore;
    Label13: TcxLabel;
    Panel1: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    Label5: TcxLabel;
    Panel3: TPanel;
    GridItens: TdxDBGrid;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBEdit1: TdxDBEdit;
    Label7: TcxLabel;
    DsItens: TDataSource;
    GridItensCNPJ: TdxDBGridMaskColumn;
    GridItensCODIGO: TdxDBGridMaskColumn;
    GridItensCOD_PRODUTO: TdxDBGridMaskColumn;
    GridItensCONTRATO: TdxDBGridMaskColumn;
    GridItensDT_ADICAO: TdxDBGridDateColumn;
    GridItensDATA: TdxDBGridDateColumn;
    GridItensATIVO: TdxDBGridMaskColumn;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensTIPO_PRODUTO: TdxDBGridMaskColumn;
    GridItensVALOR: TdxDBGridMaskColumn;
    GridItensQTDE_COPIAS_PREVENTIVA: TdxDBGridMaskColumn;
    GridItensDIAS_RECHAMADO: TdxDBGridMaskColumn;
    GridItensMEDIA_COPIAS: TdxDBGridMaskColumn;
    GridItensTEMPO_RESPOSTA: TdxDBGridMaskColumn;
    GridItensSERIE: TdxDBGridMaskColumn;
    GridItensINFORMACOES_ITENS: TdxDBGridMemoColumn;
    dxDBCalcEdit1: TdxDBCalcEdit;
    GridItensDT_RETIRADA: TdxDBGridDateColumn;
    EdParcelas: TdxDBSpinEdit;
    Label8: TcxLabel;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxDBCheckEdit3: TdxDBCheckEdit;
    dsMoeda: TDataSource;
    GridItensMODELO_EQUIPAMENTO: TdxDBGridMaskColumn;
    GridItensDECONTINUADO: TdxDBGridCheckColumn;
    GroupBox2: TGroupBox;
    dxDBEdit2: TdxDBEdit;
    cxLabel1: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    cxLabel2: TcxLabel;
    dxDBDateEdit2: TdxDBDateEdit;
    cxLabel3: TcxLabel;
    dxDBEdit4: TdxDBEdit;
    cxLabel4: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure ActNextExecute(Sender: TObject);
    procedure ActPriorExecute(Sender: TObject);
    procedure ActLastExecute(Sender: TObject);
    procedure ActFirstExecute(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure cmbClienteExit(Sender: TObject);
    procedure OptAlterarClick(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnContratoClick(Sender: TObject);
    procedure DtFimExit(Sender: TObject);
    procedure CmbClienteBuscaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActLocalizarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure HabilitaControles(Condicao: string);//André.. quer que quando a dt. de termino do contrato seja definida tdo se desabilita
  public
    { Public declarations }
    Retorno: String;
  end;

var
  FrmContratos: TFrmContratos;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Marcas_Form, Grupos_Form, Reducoes_Form, Unidades_Form,
  Lotes_Form, LocalizarProd_DM, Estoque_Dm, Agrupador_Form, Grades_Form,
  Produtos_Tribut_Revenda_Form, Cadastros_Dm2, Clientes_Form, Produtos_Form,
  Tipo_Contrato_Form, Localizar_Cliente, Vendas_Dm, ContratosItens_Form,
  Localizar_Contratos, Financeiro_Dm2, Moedas_Form;

{$R *.DFM}

procedure TFrmContratos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DMApp.Transaction.CommitRetaining;
  FrmMain.PnlClient.Visible := True;
  Action := caFree;
  FrmContratos := Nil;
  FrmLocContratos.free;
  FrmLocContratos := nil;
end;

procedure TFrmContratos.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
     If FrmContratos.ActiveControl <> GridItens  Then
     begin
       Navigator.DataSource.DataSet.Append;
       cmbCliente.setfocus;
     end
     else
     begin
       FrmContratosItens := TFrmContratosItens.Create(Self);
       FrmContratosItens.ShowModal;

       FrmContratosItens.Free;
       FrmContratosItens := Nil;
     end;
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
  cmbCliente.setfocus;
end;


procedure TFrmContratos.ActExcluirExecute(Sender: TObject);
begin
  if FrmContratos.ActiveControl <> GridItens  then
  begin
    if (Application.Messagebox('Deseja realmente excluir este contrato?','Aviso',mb_iconquestion+mb_yesno) = id_yes) then
       Navigator.DataSource.Dataset.Delete;
  end
  else
  begin
    if (Application.Messagebox('Deseja realmente excluir este item do contrato?','Aviso',mb_iconquestion+mb_yesno) = id_yes) then
       dmCadastros2.ContratosItens.Delete;
  end;

  DMApp.Transaction.CommitRetaining;
end;

procedure TFrmContratos.ActPostExecute(Sender: TObject);
begin
  if (DtInicio.date > DtFim.date) and (DtFim.date > 0) then
  begin
    Application.Messagebox('Intervalo de datas inconsistentes','Aviso',mb_iconerror+mb_ok);
    exit;
  end;

  if Navigator.DataSource.state in [ dsinsert, dsedit ]  then
    Navigator.DataSource.DataSet.Post;
end;

procedure TFrmContratos.ActCancelExecute(Sender: TObject);
begin
  if (Navigator.DataSource.DataSet.State in dsEditModes) Then
  begin
    if (Application.Messagebox('Tem certeza que deseja Cancelar as informações ?','Atenção', mb_iconquestion + mb_yesno) = id_yes) then
      Navigator.DataSource.DataSet.Cancel;
  end
end;

procedure TFrmContratos.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  with dmCadastros2 do
  begin
    Contrato.Close;
    Contrato.Open;

    ContratosItens.Close;
    ContratosItens.Open;

    SelContratos.Close;
    SelContratos.Open;

    SelClientes.Close;
    SelClientes.Open;
  end;

  dmFinanceiro2.Moeda.close;
  dmFinanceiro2.Moeda.Open;

  DMCadastros.SelProdutos.Close;
  DMCadastros.SelProdutos.Open;
end;

procedure TFrmContratos.FormCreate(Sender: TObject);
begin
 
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  FrmLocContratos := TFrmLocContratos.Create(Self);
end;

procedure TFrmContratos.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
    Perform(WM_NEXTDLGCTL, 0, 0);

  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmContratos.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmContratos.DataSourceStateChange(Sender: TObject);
begin
     If Navigator.DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
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
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmContratos.ActFecharExecute(Sender: TObject);
begin
   Close;
end;

procedure TFrmContratos.ActLookupExecute(Sender: TObject);
begin
  If FrmContratos.ActiveControl = cmbCliente Then
     btnCliente.OnClick(btnCliente);
  If FrmContratos.ActiveControl = cmbContrato Then
     btnContrato.OnClick(btnContrato);
end;

procedure TFrmContratos.ActNextExecute(Sender: TObject);
begin
  If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Eof )) then
     Navigator.DataSource.DataSet.Next ;
end;

procedure TFrmContratos.ActPriorExecute(Sender: TObject);
begin
  If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof ))  then
     Navigator.DataSource.DataSet.Prior ;
end;

procedure TFrmContratos.ActLastExecute(Sender: TObject);
begin
  If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof ))  then
     Navigator.DataSource.DataSet.Last ;
end;

procedure TFrmContratos.ActFirstExecute(Sender: TObject);
begin
  If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof )) then
     Navigator.DataSource.DataSet.First   ;
end;

procedure TFrmContratos.EdCodigoEnter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
end;

procedure TFrmContratos.cmbClienteExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
end;

procedure TFrmContratos.OptAlterarClick(Sender: TObject);
begin
  ActAlterar.execute;
end;

procedure TFrmContratos.ActAlterarExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
     If FrmContratos.ActiveControl <> GridItens  Then
     begin
       DataSource.DataSet.Edit;
//       cmbCliente.setfocus;
     end
     else
     begin
       dmCadastros2.ContratosItens.edit;
       FrmContratosItens := TFrmContratosItens.Create(Self);
       FrmContratosItens.ShowModal;

       FrmContratosItens.Free;
       FrmContratosItens := Nil;
     end;
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

  DataSource.DataSet.Edit;
end;

procedure TFrmContratos.btnClienteClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClientes', False);

  FrmClientes := TFrmClientes.Create(Self);
  FrmClientes.ShowModal;

  with dmCadastros2 do
  begin
    SelClientes.Close;
    SelClientes.Open;
    SelClientes.FetchAll;
  end;

  Datasource.DataSet.FieldByName('COD_CLIENTE').asInteger := FrmMain.Codigo_Int ;
  FrmClientes.Free;
  FrmClientes := Nil;
  cmbCliente.SetFocus;
end;

procedure TFrmContratos.btnContratoClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTipos_Contratos', False);

  FrmTipos_Contratos := TFrmTipos_Contratos.Create(Self);

  FrmTipos_Contratos.ShowModal;
  dmCadastros2.SelContratos.Close;
  dmCadastros2.SelContratos.Open;
  Datasource.DataSet.FieldByName('COD_CONTRATO').asInteger := FrmMain.Codigo_Int ;
  FrmTipos_Contratos.Free;
  FrmTipos_Contratos := Nil;
  cmbContrato.SetFocus;

end;

procedure TFrmContratos.DtFimExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
end;

procedure TFrmContratos.HabilitaControles(Condicao: string);
begin
  if (Condicao = 'S') then
  begin
    cmbCliente.enabled := true;
    cmbContrato.enabled := true;
    edtNumContrato.enabled := true;
    DtInicio.enabled := true;
    DtFim.enabled := true;
    btnCliente.enabled := true;
    btnContrato.enabled := true;
    ActLookUp.enabled := true;
  end
  else
  begin
    ActLookUp.enabled := false;
    cmbCliente.enabled := false;
    cmbContrato.enabled := false;
    edtNumContrato.enabled := false;
    DtInicio.enabled := false;
    DtFim.enabled := false;
    btnCliente.enabled := false;
    btnContrato.enabled := false;
  end
end;

procedure TFrmContratos.CmbClienteBuscaButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
     if Frm_Localizar_Cliente = nil then
       Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;


     {if (Frm_Localizar_Cliente.showmodal = mrOk ) Then
     Begin
       CmbClienteBusca.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho);
       lblnome.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value;
     end}
end;

procedure TFrmContratos.GridItensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  If Key = 13 then
  begin
    If ( DataSource.State in [ dsinsert, dsedit ] ) then
       DataSource.DataSet.Post ;


    ActAlterar.Execute;
  end;
end;

procedure TFrmContratos.ActLocalizarExecute(Sender: TObject);
var
  retorno : integer;
begin
  FrmLocContratos.showmodal;
  retorno := 0;
  if FrmLocContratos.modalresult = mrOk then
    retorno := FrmLocContratos.CampTrecho;

  if (retorno > 0) then
    dmCadastros2.Contrato.Locate('codigo',Retorno,[]);
end;

end.


