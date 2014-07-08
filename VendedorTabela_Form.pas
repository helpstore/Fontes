 unit VendedorTabela_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  Grids, DBGrids, IBQuery, RDprint, Mask,
   ppDB, ppDBPipe, ppBands, ppClass, ppVar, ppCtrls, ppPrnabl,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppMemo,
  ppParameter, ppModule, raCodMod, ppRichTx,   DBCtrls, dxGrClEx,
  cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus, dxSkinsdxBarPainter,
  cxClasses, cxButtons, cxPC, cxLabel;

type
  TfrmTabelaVendedor = class(TForm)
    pnlClient: TPanel;
    Navigator: TdxBarDBNavigator;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    ActOrcamento: TAction;
    ActFechar: TAction;
    DataSource: TDataSource;
    actLookup: TAction;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    ActLocalizar: TAction;
    PC: TcxPageControl;
    TAB1: TcxTabSheet;
    ActEnviarCaixa: TAction;
    Panel2: TPanel;
    LblTitulo: TcxLabel;
    Panel6: TPanel;
    btnVendedor: TcxButton;
    cmbVendedor: TdxDBLookupEdit;
    Label7: TcxLabel;
    ActGeraVenda: TAction;
    ActHistorico: TAction;
    ActOS: TAction;
    TabCultPraga: TcxTabSheet;
    Label1: TcxLabel;
    Label6: TcxLabel;
    Label12: TcxLabel;
    dsVendedor: TDataSource;
    Label20: TcxLabel;
    dsTabelasVdd: TDataSource;
    GridTabelas: TdxDBGrid;
    lblProduto: TcxLabel;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnFechar: TdxBarButton;
    btnAlterar: TdxBarButton;
    dxBarDBNavFirst: TdxBarDBNavButton;
    dxBarDBNavPrev: TdxBarDBNavButton;
    dxBarDBNavNext: TdxBarDBNavButton;
    dxBarDBNavLast: TdxBarDBNavButton;
    edCodigo: TdxDBEdit;
    Label2: TcxLabel;
    dsTabelas: TDataSource;
    GridTabelasCNPJ: TdxDBGridMaskColumn;
    GridTabelasCODIGO: TdxDBGridMaskColumn;
    GridTabelasCOD_TABELA: TdxDBGridMaskColumn;
    GridTabelasCOD_TBL_VENDEDOR: TdxDBGridMaskColumn;
    GridTabelasPCT_COMISSAO: TdxDBGridSpinColumn;
    GridTabelasLKP_TABELA: TdxDBGridLookupColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPessoaEnter(Sender: TObject);
    procedure cmbvendedorExit(Sender: TObject);
    procedure EdVendedorEnter(Sender: TObject);
    procedure CmbFormaPgtoExit(Sender: TObject);
    procedure ctReveladorExit(Sender: TObject);
    procedure EdMargemEnter(Sender: TObject);
    procedure EdMargemExit(Sender: TObject);
    procedure ActNextPageExecute(Sender: TObject);
    procedure ActPreviousPageExecute(Sender: TObject);
    procedure TAB2Enter(Sender: TObject);
    procedure EDENTRADAExit(Sender: TObject);
    procedure EDDOCUMENTOExit(Sender: TObject);
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure btnVendedorClick(Sender: TObject);
    procedure PCChange(Sender: TObject);
  private
    { Private declarations }
  public
    LocForma, LocCli, LocMec, LocVia, LocNat, LocMot, LocDef, LocProp :Boolean ;
  end;

var
  frmTabelaVendedor: TfrmTabelaVendedor;
  Sair: Boolean ;

implementation

uses

     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Cadastros_DM2, Cadastros_DM, Estoque_Dm;

  {$R *.DFM}

procedure TfrmTabelaVendedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Sair do cadastro de Vendedores/Tabelas de Preço?', mtConfirmation, [mbOk, mbCancel], 0)= MrOk then
  begin
    if frmTabelaVendedor.FormStyle = fsMDIChild then
    begin
      FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
      FrmMain.pnlClient.Visible := True;
    end;

    Action := caFree;
  end
  else
    Action := CaNone ;

end;

procedure TfrmTabelaVendedor.ActIncluirExecute(Sender: TObject);
begin
  try
    If Navigator.DataSource.State in dsEditModes Then
        Exit;


    Navigator.DataSource.DataSet.Open;
    Navigator.DataSource.DataSet.Append;

    if (PC.ActivePageIndex = 0) then
      cmbVendedor.setfocus;

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

procedure TfrmTabelaVendedor.ActExcluirExecute(Sender: TObject);
begin
   If Navigator.DataSource.State in dsEditModes Then
    Exit;
  Try
    if (pc.ActivePageIndex = 0) then
    begin
      if Application.MessageBox('Deseja realmente excluir este registro ''Vendedores/Tabelas de Preço''?','Aviso',mb_yesno+mb_iconinformation) = idno then
         exit;
    end
    else
    begin
      if Application.MessageBox('Deseja realmente excluir este registro de Tabela de Preço?','Aviso',mb_yesno+mb_iconinformation) = idno then
         exit;
    end;

    Navigator.DataSource.DataSet.Delete;
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

procedure TfrmTabelaVendedor.ActPostExecute(Sender: TObject);
begin
  If not (Navigator.DataSource.State in dsEditModes) Then
    Exit;


  Try
    Navigator.DataSource.DataSet.Post;

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



procedure TfrmTabelaVendedor.ActCancelExecute(Sender: TObject);
begin
  If Navigator.DataSource.DataSet.State in dsEditModes Then
    Navigator.DataSource.DataSet.Cancel
  else
    BtnFechar.OnClick(BtnFechar);
end;

procedure TfrmTabelaVendedor.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  TAB1.show;

  cmbVendedor.setfocus;

  dmCadastros.SelVendedor.Close;
  dmCadastros.SelVendedor.Open;

  Datasource.AutoEdit := ActAlterar.Enabled;
  Datasource.Dataset.Open;
end;

procedure TfrmTabelaVendedor.FormCreate(Sender: TObject);
begin
    If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmTabelaVendedor', True)) Then Exit;

    If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
    Else
    //If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmTabelaVendedor.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
  begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmTabelaVendedor.DataSourceStateChange(Sender: TObject);
begin
  dxBarDBNavFirst.Enabled := true ;
  dxBarDBNavPrev.Enabled  := true ;
  dxBarDBNavNext.Enabled  := true ;
  dxBarDBNavLast.Enabled  := true ;

  if Navigator.DataSource.State in dsEditModes then
  begin
    ActIncluir.Enabled   := False;
    ActAlterar.Enabled   := False;
    ActExcluir.Enabled   := False;
    BtnSalvar.Enabled    := True;
    BtnCancelar.Enabled  := True;
  end
  else
  begin
    ActIncluir.Enabled   := ActIncluir.Tag = 1;
    ActAlterar.Enabled   := ActAlterar.Tag = 1;
    ActExcluir.Enabled   := ActExcluir.Tag = 1;
    BtnSalvar.Enabled    := False;
    BtnCancelar.Enabled  := False;
    ActFechar.Enabled    := True;
  end;
end;

procedure TfrmTabelaVendedor.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmTabelaVendedor.CmbTipoPessoaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TfrmTabelaVendedor.actLookupExecute(Sender: TObject);
begin
  If (frmTabelaVendedor.ActiveControl = cmbVendedor)Then
     btnVendedor.OnClick(btnVendedor);
end;

procedure TfrmTabelaVendedor.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TfrmTabelaVendedor.ActAlterarExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
    Exit;
  Try
    Navigator.DataSource.DataSet.Edit;

    if Pc.activePageIndex = 0 then
       cmbVendedor.SetFocus;

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

procedure TfrmTabelaVendedor.GridItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If Key = 13 then
    ActAlterar.Execute;
end;

procedure TfrmTabelaVendedor.EdPessoaEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TfrmTabelaVendedor.cmbvendedorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TfrmTabelaVendedor.EdVendedorEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TfrmTabelaVendedor.CmbFormaPgtoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TfrmTabelaVendedor.ctReveladorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TfrmTabelaVendedor.EdMargemEnter(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     CorFundo ( Sender );
end;

procedure TfrmTabelaVendedor.EdMargemExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TfrmTabelaVendedor.ActNextPageExecute(Sender: TObject);
begin
  pc.ActivePageIndex := 1;
end;

procedure TfrmTabelaVendedor.ActPreviousPageExecute(Sender: TObject);
begin
     pc.ActivePageIndex := 0;
end;

procedure TfrmTabelaVendedor.TAB2Enter(Sender: TObject);
begin
    Navigator.DataSource := DataSource;
    DataSource.DataSet.Edit ;
end;

procedure TfrmTabelaVendedor.EDENTRADAExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TfrmTabelaVendedor.EDDOCUMENTOExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TfrmTabelaVendedor.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbdelete then
    If MessageBox(Handle,'Tem certeza que deseja Excluir este Movimento ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
//       DsIntervalos.dataset.Delete;
end;

procedure TfrmTabelaVendedor.btnVendedorClick(Sender: TObject);
begin
{  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmProdutos', False);
  FrmProdutos := TFrmProdutos.Create(Self);

  FrmProdutos.ShowModal;
  DMCadastros.SelProdutos.Close;
  DMCadastros.SelProdutos.Open;

  Datasource.DataSet.FieldByName('COD_PRODUTO').value := FrmMain.Codigo_str ;
  FrmProdutos.Free;
  FrmProdutos := Nil;
  cmbProduto.SetFocus;}
end;

procedure TfrmTabelaVendedor.PCChange(Sender: TObject);
begin
  if (PC.ActivePageIndex = 0) then
    Navigator.DataSource := DataSource
  else
  begin
    if (DmEstoque.tblVendedor.State in [dsEdit,dsInsert]) then
      DmEstoque.tblVendedor.Post;

    Navigator.DataSource := dsTabelasVdd;
    dsTabelasVdd.DataSet.Open;
  end
end;

end.





