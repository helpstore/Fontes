unit EstoquePendencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet,   Buttons,
  dxExEdtr, dxDBEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
     IBQuery, ppParameter, ppModule,
  raCodMod, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport,   ppDB, ppDBPipe,  
  cxPropertiesStore, Variants, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, cxClasses, cxLabel, cxButtons;

type
    TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;
    
type
  TFrmEstoquePendencia = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    DataSource: TDataSource;
    dsUserRequi: TDataSource;
    dsProdutos: TDataSource;
    Panel2: TPanel;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
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
    ActListagem: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    ActLookUp: TAction;
    Navigator: TdxBarDBNavigator;
    GroupBox1: TGroupBox;
    DtInicio: TdxDBDateEdit;
    cmbUsrOrigem: TdxDBLookupEdit;
    btnProduto: TcxButton;
    Label5: TcxLabel;
    Label4: TcxLabel;
    Label1: TcxLabel;
    cmbProduto: TdxDBLookupEdit;
    cmbUsrDestino: TdxDBLookupEdit;
    Label3: TcxLabel;
    edQtdade: TdxDBCalcEdit;
    Label2: TcxLabel;
    cmbOs: TdxDBLookupEdit;
    Label6: TcxLabel;
    cmbOrigem: TdxDBPickEdit;
    Label7: TcxLabel;
    dxDBPickEdit1: TdxDBPickEdit;
    Label8: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label9: TcxLabel;
    dsUserResp: TDataSource;
    dsOs: TDataSource;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Panel4: TPanel;
    GridPendencia: TdxDBGrid;
    GridPendenciaCODIGO: TdxDBGridMaskColumn;
    GridPendenciaPRODUTO: TdxDBGridMaskColumn;
    GridPendenciaQTDE_PENDENTE: TdxDBGridMaskColumn;
    GridPendenciaQTDE_CREDITADA: TdxDBGridMaskColumn;
    GridPendenciaST_SERVICO: TdxDBGridMaskColumn;
    GridPendenciaST_PEDIDO: TdxDBGridMaskColumn;
    GridPendenciaOS_VINCULADA: TdxDBGridMaskColumn;
    GridPendenciaDT_PENDENCIA: TdxDBGridDateColumn;
    stgPendencias: TcxPropertiesStore;
    SaveDialog: TSaveDialog;
    GridPendenciaUsuriorequisitante: TdxDBGridMaskColumn;
    GridPendenciaUsurioResponsvel: TdxDBGridMaskColumn;
    GridPendenciaNomeproduto: TdxDBGridMaskColumn;
    edObservacoes: TdxDBMemo;
    Label10: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure ActNextExecute(Sender: TObject);
    procedure ActPriorExecute(Sender: TObject);
    procedure ActLastExecute(Sender: TObject);
    procedure ActFirstExecute(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure cmbUsrOrigemExit(Sender: TObject);
    procedure OptAlterarClick(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure btnContratoClick(Sender: TObject);
    procedure DtFimExit(Sender: TObject);
    procedure cmbUsrOrigemBuscaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure cmbUsrOrigemBuscaExit(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure GridPendenciaCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
  private
    { Private declarations }

  public
    { Public declarations }
    Retorno: String;
  end;

var
  FrmEstoquePendencia: TFrmEstoquePendencia;

implementation

uses  funcoes, Application_DM, Main, Servicos_DM, Usuarios_DM,
  Clientes_Form, Cadastros_Dm2, Produtos_Form, Cadastros_DM,
  Tipo_Contrato_Form, Localizar_Cliente, Vendas_Dm,FileCtrl;

{$R *.DFM}

procedure TFrmEstoquePendencia.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
  DMApp.Transaction.CommitRetaining;
  FrmMain.PnlClient.Visible := True;

  Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
  if not DirectoryExists(Diretorio) then
  begin
    ForceDirectories(Diretorio);
    MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
  end;

  SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGridPendencia.txt',GridPendencia.Filter);
  Action := caFree;
  FrmEstoquePendencia:= Nil;
end;

procedure TFrmEstoquePendencia.ActExcluirExecute(Sender: TObject);
begin
  if (application.messagebox('Deseja realmente excluir este registro?','Aviso',mb_iconquestion + mb_yesno)= id_no) then
    exit;
    
  Navigator.DataSource.Dataset.Delete;
  DMApp.Transaction.CommitRetaining;
end;

procedure TFrmEstoquePendencia.ActPostExecute(Sender: TObject);
begin
  if (trim(cmbUsrOrigem.text) = '') then
  begin
    application.messagebox('Defina o usuário requerente','Aviso',mb_ok + mb_iconerror);
    exit;
  end;

  if (trim(cmbUsrDestino.text) = '') then
  begin
    application.messagebox('Defina o usuário responsável pelo pedido','Aviso',mb_ok + mb_iconerror);
    exit;
  end;

  if (trim(cmbUsrOrigem.text) = trim(cmbUsrDestino.text)) then
  begin
    application.messagebox('O usuário requerente deverá ser diferente do usuário responsável pelo pedido','Aviso',mb_ok + mb_iconerror);
    exit;
  end;

  if (trim(cmbProduto.text) = '') then
  begin
    application.messagebox('Defina o produto pendente','Aviso',mb_ok + mb_iconerror);
    exit;
  end;

  if (trim(cmbOs.text) = '') then
  begin
    application.messagebox('Defina a OS relacionada com produto pendente','Aviso',mb_ok + mb_iconerror);
    exit;
  end;

  if (dmServicos.OsPendenciaQTDE_PENDENTE.value <= 0) then
  begin
    application.messagebox('Defina a quantidade pendente','Aviso',mb_ok + mb_iconerror);
    exit;
  end;

  if (dmServicos.OsPendenciaQTDE_PENDENTE.value <= 0) then
  begin
    application.messagebox('Defina a quantidade pendente','Aviso',mb_ok + mb_iconerror);
    exit;
  end;

  with dmApp do
  begin
    //----------------------Verificando se produto possui estoque disponivel-------------------------------
    Geral.close;
    Geral.sql.text := ' select sum(prd.qtdade_2) qtde from est_produtos prd '+
                      ' where prd.cnpj = '+QuotedStr(dmapp.cnpj)+' and prd.codigo = '+QuotedStr(cmbProduto.LookupKeyValue);
    Geral.Open;

    if (Geral.fieldByName('qtde').asFloat >= DmServicos.OsPendenciaQTDE_PENDENTE.asFloat) then
    begin
      application.messagebox('O produto requisitado como pendente possui estoque disponível','Aviso',mb_ok + mb_iconerror);
      exit;
    end;

    //----------------------Verificando se produto possui estoque disponivel-------------------------------
    Geral.close;
    Geral.sql.text := ' select count(*) cont from ofc_ordem_servico os '+
                      ' where os.cnpj = '+QuotedStr(dmapp.cnpj)+' and os.codigo = '+IntToStr(cmbOs.LookupKeyValue)+' and os.data_fechamento is not null ';
    Geral.Open;

    if (Geral.fieldByName('cont').asFloat >= DmServicos.OsPendenciaQTDE_PENDENTE.asFloat) then
    begin
      application.messagebox('A OS relacionada já se encontra fechada. Verifique','Aviso',mb_ok + mb_iconerror);
      exit;
    end;

  end;

  if Navigator.DataSource.state in [ dsinsert, dsedit ]  then
    Navigator.DataSource.DataSet.Post;

  DMApp.Transaction.CommitRetaining;
end;

procedure TFrmEstoquePendencia.ActCancelExecute(Sender: TObject);
begin
  if (Navigator.DataSource.DataSet.State in dsEditModes) Then
  begin
    if (Application.Messagebox('Tem certeza que deseja Cancelar as informações ?','Atenção', mb_iconquestion + mb_yesno) = id_yes) then
      Navigator.DataSource.DataSet.Cancel;
  end
end;

procedure TFrmEstoquePendencia.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  with dmServicos do
  begin
    OsPendencia.Close;
    OsPendencia.parambyname('cnpj').value := dmApp.cnpj;
    OsPendencia.Open;
    OsPendencia.FetchAll;

    {SelPendencia.Close;
    SelPendencia.parambyname('cnpj').value := dmApp.cnpj;
    SelPendencia.Open;
    SelPendencia.FetchAll;}

    SelUserOrigem.Close;
    SelUserOrigem.Open;
    SelUserOrigem.FetchAll;

    SelUserDestino.Close;
    SelUserDestino.Open;
    SelUserDestino.FetchAll;

    SelProdutos.Close;
    SelProdutos.Open;
    {SelProdutos.FetchAll;}

    SelOS.Close;
    SelOS.Open;
    SelOS.FetchAll;
  end;
end;

procedure TFrmEstoquePendencia.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGridPendencia.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGridPendencia.txt',GridPendencia.Filter);
end;

procedure TFrmEstoquePendencia.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
    Perform(WM_NEXTDLGCTL, 0, 0);

  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEstoquePendencia.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEstoquePendencia.DataSourceStateChange(Sender: TObject);
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

procedure TFrmEstoquePendencia.ActFecharExecute(Sender: TObject);
begin
   Close;
end;

procedure TFrmEstoquePendencia.ActNextExecute(Sender: TObject);
begin
  If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Eof )) then
     Navigator.DataSource.DataSet.Next ;
end;

procedure TFrmEstoquePendencia.ActPriorExecute(Sender: TObject);
begin
  If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof ))  then
     Navigator.DataSource.DataSet.Prior ;
end;

procedure TFrmEstoquePendencia.ActLastExecute(Sender: TObject);
begin
  If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof ))  then
     Navigator.DataSource.DataSet.Last ;
end;

procedure TFrmEstoquePendencia.ActFirstExecute(Sender: TObject);
begin
  If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof )) then
     Navigator.DataSource.DataSet.First   ;
end;

procedure TFrmEstoquePendencia.EdCodigoEnter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
end;

procedure TFrmEstoquePendencia.cmbUsrOrigemExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
end;

procedure TFrmEstoquePendencia.OptAlterarClick(Sender: TObject);
begin
  Navigator.DataSource.Dataset.Edit;
  cmbUsrOrigem.setfocus;
end;

procedure TFrmEstoquePendencia.ActAlterarExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;


  DataSource.DataSet.Edit;
end;

procedure TFrmEstoquePendencia.ActListagemExecute(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'ExpGrid.xls', GridPendencia.SaveToXLS);
end;

procedure TFrmEstoquePendencia.btnClienteClick(Sender: TObject);
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
  cmbUsrOrigem.SetFocus;
end;

procedure TFrmEstoquePendencia.btnProdutoClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmProdutos', False);

  FrmProdutos := TFrmProdutos.Create(Self);

  FrmProdutos.ShowModal;
  with DMCadastros do
  begin
    SelProdutos.Close;
    SelProdutos.Open;
  end;

  Datasource.DataSet.FieldByName('COD_PRODUTO').value := FrmMain.Codigo_str ;
  FrmProdutos.Free;
  FrmProdutos := Nil;
  cmbProduto.SetFocus;
end;

procedure TFrmEstoquePendencia.btnContratoClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTipos_Contratos', False);

  FrmTipos_Contratos := TFrmTipos_Contratos.Create(Self);

  FrmTipos_Contratos.ShowModal;
  Datasource.DataSet.FieldByName('COD_CONTRATO').asInteger := FrmMain.Codigo_Int ;
  FrmTipos_Contratos.Free;
  FrmTipos_Contratos := Nil;
end;

procedure TFrmEstoquePendencia.DtFimExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
end;

procedure TFrmEstoquePendencia.cmbUsrOrigemBuscaButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
     if Frm_Localizar_Cliente = nil then
       Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;


end;

procedure TFrmEstoquePendencia.cmbUsrOrigemBuscaExit(Sender: TObject);
begin
    //TROCA A COR DE FUNDO
    TiraCorFundo ( Sender );

end;

procedure TFrmEstoquePendencia.ActIncluirExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
    Exit;

  Navigator.DataSource.DataSet.Append;
  cmbUsrOrigem.setfocus;
end;

procedure TFrmEstoquePendencia.Save(ADefaultExt, AFilter, AFileName: String;
  AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
      AMethod(FileName, true);
  end;
end;

procedure TFrmEstoquePendencia.GridPendenciaCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  value : variant;
begin
  if ANode.HasChildren then
    Exit;

  if ( not ASelected  ) AND ( AColumn = GridPendenciaST_SERVICO)  then
  begin
    Value := ANode.Values[AColumn.Index];

    if not VarIsNull(Value) then
    begin
      if Value = 'Pendente' then
         AColor := $002BFFFF
      else if (Value = 'Executado') then
        AColor := $00CAF0D7;
    end
  end;

  if ( not ASelected  ) AND ( AColumn = GridPendenciaST_PEDIDO)  then
  begin
    Value := ANode.Values[AColumn.Index];

    if not VarIsNull(Value) then
    begin
      if Value = 'Pendente' then
        AColor := $002BFFFF
      else if (Value = 'Executado') then
        AColor := $00CAF0D7;
    end
  end;

end;

end.


