unit Defensivo_Form;

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
  cxPropertiesStore, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses,   cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinscxPCPainter, cxPC;

type
  TfrmDefensivo = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    ActOrcamento: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DataSource: TDataSource;
    actLookup: TAction;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    btnAlterar: TdxBarButton;
    dsFormaAplicacao: TDataSource;
    dsOrientEquipamento: TDataSource;
    ActLocalizar: TAction;
    PC: TcxPageControl;
    TAB1: TcxTabSheet;
    dsRegistrante: TDataSource;
    dsOrientacaoComplem: TDataSource;
    ActEnviarCaixa: TAction;
    dsClasseTox: TDataSource;
    dsCategoria: TDataSource;
    dsClassQuimica: TDataSource;
    dsMaterialEmbalagem: TDataSource;
    dsOrientacaoTecnica: TDataSource;
    Panel2: TPanel;
    LblTitulo: TLabel;
    Panel6: TPanel;
    edtNomeTecnico: TdxDBEdit;
    Label11: TLabel;
    btnCategoria: TSpeedButton;
    cmbCategoria: TdxDBLookupEdit;
    Label8: TLabel;
    btnProduto: TSpeedButton;
    cmbProduto: TdxDBLookupEdit;
    Label7: TLabel;
    ActGeraVenda: TAction;
    ActHistorico: TAction;
    ActOS: TAction;
    DsIntervalos: TDataSource;
    TabCultPraga: TcxTabSheet;
    dxDBEdit1: TdxDBEdit;
    edtNomeComum: TLabel;
    edtFormulacao: TdxDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    cmbClasseTox: TdxDBLookupEdit;
    btnClassTox: TSpeedButton;
    Label13: TLabel;
    btnFabricante: TSpeedButton;
    btnClassQuimica: TSpeedButton;
    btnClassAmb: TSpeedButton;
    Label14: TLabel;
    Label15: TLabel;
    cmbFabricante: TdxDBLookupEdit;
    cmbEmbalagem: TdxDBLookupEdit;
    Label16: TLabel;
    Label17: TLabel;
    cmbOrientacaoComple: TdxDBLookupEdit;
    cmbOrientacaoTec: TdxDBLookupEdit;
    Label18: TLabel;
    Label19: TLabel;
    btnOrTecnica: TSpeedButton;
    btnOrComplementar: TSpeedButton;
    cmbEquipamento: TdxDBLookupEdit;
    cmbFormaAplicacao: TdxDBLookupEdit;
    Label25: TLabel;
    Label27: TLabel;
    btnOrFormaAplicacao: TSpeedButton;
    btnOrEquipamento: TSpeedButton;
    btnOrRegistrante: TSpeedButton;
    cmbRegistrante: TdxDBLookupEdit;
    Label28: TLabel;
    cmbClasseAmbiental: TdxDBLookupEdit;
    cmbClasseQuimica: TdxDBLookupEdit;
    edtConcentracao: TdxDBEdit;
    edtFormulaBruta: TdxDBEdit;
    edtIngrediente: TdxDBEdit;
    Label29: TLabel;
    edtNRegistro: TdxDBEdit;
    Label32: TLabel;
    edtNRisco: TdxDBEdit;
    edtNumeroOnu: TdxDBEdit;
    Label33: TLabel;
    edtDescSubClasse: TdxDBEdit;
    edtSubClasse: TdxDBEdit;
    Label34: TLabel;
    Label35: TLabel;
    dxDBEdit7: TdxDBEdit;
    Label36: TLabel;
    dsClassAmbiental: TDataSource;
    dsFabricante: TDataSource;
    dsProduto: TDataSource;
    btnMatEmba: TSpeedButton;
    Label3: TLabel;
    Label10: TLabel;
    Label20: TLabel;
    dxBarDBNavFirst: TdxBarDBNavButton;
    dxBarDBNavPrev: TdxBarDBNavButton;
    dxBarDBNavNext: TdxBarDBNavButton;
    dxBarDBNavLast: TdxBarDBNavButton;
    dsCulturasPragas: TDataSource;
    GridCulturaPragas: TdxDBGrid;
    GridCulturaPragasCNPJ: TdxDBGridMaskColumn;
    GridCulturaPragasCODIGO: TdxDBGridMaskColumn;
    GridCulturaPragasDOSAGEM: TdxDBGridCalcColumn;
    GridCulturaPragasVAZAO: TdxDBGridCalcColumn;
    GridCulturaPragasINTERVALOSEGURANCA: TdxDBGridSpinColumn;
    GridCulturaPragasIDMEDIDADOSAGEM: TdxDBGridMaskColumn;
    GridCulturaPragasIDMEDIDAVAZAO: TdxDBGridMaskColumn;
    GridCulturaPragasIDCULTURA: TdxDBGridMaskColumn;
    GridCulturaPragasIDPRAGA: TdxDBGridMaskColumn;
    GridCulturaPragasIDDEFENSIVOAGRICOLA: TdxDBGridMaskColumn;
    GridCulturaPragasLK_PRAGA: TdxDBGridLookupColumn;
    GridCulturaPragasLK_CULTURA: TdxDBGridLookupColumn;
    GridCulturaPragasLK_UND_MED_DOSAGEM: TdxDBGridLookupColumn;
    GridCulturaPragasLK_UND_MED_VAZAO: TdxDBGridLookupColumn;
    lblProduto: TLabel;
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
    procedure btnProdutoClick(Sender: TObject);
    procedure btnCategoriaClick(Sender: TObject);
    procedure btnClassToxClick(Sender: TObject);
    procedure btnClassAmbClick(Sender: TObject);
    procedure btnClassQuimicaClick(Sender: TObject);
    procedure btnFabricanteClick(Sender: TObject);
    procedure btnMatEmbaClick(Sender: TObject);
    procedure btnOrTecnicaClick(Sender: TObject);
    procedure btnOrComplementarClick(Sender: TObject);
    procedure btnOrFormaAplicacaoClick(Sender: TObject);
    procedure btnOrEquipamentoClick(Sender: TObject);
    procedure btnOrRegistranteClick(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure PCChange(Sender: TObject);
  private
    { Private declarations }
  public
    LocForma, LocCli, LocMec, LocVia, LocNat, LocMot, LocDef, LocProp :Boolean ;
  end;

var
  frmDefensivo: TfrmDefensivo;
  Sair: Boolean ;

implementation

uses

     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Cadastros_DM2, Cadastros_DM, Produtos_Form, CategoriasDef_Form,
  ClassesToxicologicasDef_Form, ClassAmbientalDef_Form,
  ClassQuimicaDef_Form, FabricanteDef_Form, MatEmbalagemDef_Form,
  OrientacoesDef_Form, Registrante_Form, Localizar_Defensivo;

  {$R *.DFM}

procedure TfrmDefensivo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Sair do cadastro de defensivos?', mtConfirmation, [mbOk, mbCancel], 0)= MrOk then
  begin
    if frmDefensivo.FormStyle = fsMDIChild then
    begin
      FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
      FrmMain.pnlClient.Visible := True;
    end;

    Action := caFree;
    frmDefensivo := Nil;
    FrmLocDefensivos.free;
    FrmLocDefensivos := nil;
  end
  else
    Action := CaNone ;

end;

procedure TfrmDefensivo.ActIncluirExecute(Sender: TObject);
begin
  try
     If Navigator.DataSource.State in dsEditModes Then
        Exit;


    Navigator.DataSource.DataSet.Append;
    
    if (PC.ActivePageIndex = 0) then
      cmbProduto.setfocus;
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

procedure TfrmDefensivo.ActExcluirExecute(Sender: TObject);
begin
   If Navigator.DataSource.State in dsEditModes Then
    Exit;
  Try
    if (pc.ActivePageIndex = 0) then
    begin
      if Application.MessageBox('Deseja realmente excluir este defensivo?','Aviso',mb_yesno+mb_iconinformation) = idno then
         exit;
    end
    else
    begin
      if Application.MessageBox('Deseja realmente excluir este registro de Cultura/Praga?','Aviso',mb_yesno+mb_iconinformation) = idno then
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

procedure TfrmDefensivo.ActPostExecute(Sender: TObject);
begin
  If not (Navigator.DataSource.State in dsEditModes) Then
    Exit;

  if ((pc.ActivePageIndex = 0) or (DmCadastros2.AGR_DefensivoCODIGO.asInteger = 0)) then
  begin
    if trim(cmbProduto.text) = '' then
    begin
      Application.Messagebox('Campo Produto é obrigatório','Aviso', mb_iconerror+ mb_ok);
      cmbProduto.setfocus;
      exit;
    end;

    if trim(edtConcentracao.text) = '' then
    begin
      Application.Messagebox('Campo Concentração é obrigatório','Aviso',mb_iconerror+mb_ok);
      edtConcentracao.setfocus;
      exit;
    end;

    if trim(edtNRegistro.text) = '' then
    begin
      Application.Messagebox('Campo Nº do Registro é obrigatório','Aviso',mb_iconerror+mb_ok);
      edtNRegistro.setfocus;
      exit;
    end;
  end;

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



procedure TfrmDefensivo.ActCancelExecute(Sender: TObject);
begin
  If Navigator.DataSource.DataSet.State in dsEditModes Then
    Navigator.DataSource.DataSet.Cancel
  else
    BtnFechar.OnClick(BtnFechar);
end;

procedure TfrmDefensivo.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  lblProduto.Caption := '';
  TAB1.show;

  if (FrmLocDefensivos = nil) then
    FrmLocDefensivos := TFrmLocDefensivos.Create(Self);

  cmbProduto.setfocus;
  dmCadastros.SelProdutos.Close;
  dmCadastros.SelProdutos.Open;


  with dmCadastros2 do
  begin
    AGR_Defensivo.Close;
    AGR_Defensivo.Open;

    AGR_Categoria.Close;
    AGR_Categoria.Open;

    AGR_ClassTox.Close;
    AGR_ClassTox.Open;

    AGR_ClassAmb.Close;
    AGR_ClassAmb.Open;

    AGR_ClassQuimica.Close;
    AGR_ClassQuimica.Open;

    AGR_Fabricante.Close;
    AGR_Fabricante.Open;

    AGR_MaterialEmb.Close;
    AGR_MaterialEmb.Open;

    AGR_OrTecnica.Close;
    AGR_OrTecnica.Open;

    AGR_Registrante.Close;
    AGR_Registrante.Open;

    Agr_OrEquipamento.Close;
    Agr_OrEquipamento.Open;

    Agr_OrAplicacao.Close;
    Agr_OrAplicacao.Open;

    AGR_OrComplementar.Close;
    AGR_OrComplementar.Open;

    AGR_DEF_CULT_PRAGA.Close;
    AGR_DEF_CULT_PRAGA.Open;

    QryPragas.Close;
    QryPragas.Open;

    QryCulturas.Close;
    QryCulturas.Open;

    QryUndMedDosagem.Close;
    QryUndMedDosagem.Open;

    QryUndMedVazao.Close;
    QryUndMedVazao.Open;
  end;

  Datasource.AutoEdit := ActAlterar.Enabled;
end;

procedure TfrmDefensivo.FormCreate(Sender: TObject);
begin
    If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'frmDefensivo', True)) Then Exit;

    If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
    Else
    //If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmDefensivo.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
  begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmDefensivo.DataSourceStateChange(Sender: TObject);
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

procedure TfrmDefensivo.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmDefensivo.CmbTipoPessoaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TfrmDefensivo.actLookupExecute(Sender: TObject);
begin
  if (frmDefensivo.ActiveControl = cmbProduto) then
     btnProduto.OnClick(btnProduto);

  if (frmDefensivo.ActiveControl = cmbCategoria) then
     btnCategoria.OnClick(btnCategoria);

  If (frmDefensivo.ActiveControl = cmbClasseTox)Then
     btnClassTox.OnClick(btnClassTox);

  If (frmDefensivo.ActiveControl = cmbClasseAmbiental)Then
     btnClassAmb.OnClick(btnClassAmb);

  If (frmDefensivo.ActiveControl = cmbClasseQuimica)Then
     btnClassQuimica.OnClick(btnClassQuimica);

  If (frmDefensivo.ActiveControl = cmbFabricante)Then
     btnFabricante.OnClick(btnFabricante);

  If (frmDefensivo.ActiveControl = cmbEmbalagem)Then
     btnMatEmba.OnClick(btnMatEmba);

  If (frmDefensivo.ActiveControl = cmbOrientacaoTec)Then
     btnOrTecnica.OnClick(btnOrTecnica);

  If (frmDefensivo.ActiveControl = cmbOrientacaoComple)Then
     btnOrComplementar.OnClick(btnOrComplementar);

  If (frmDefensivo.ActiveControl = cmbFormaAplicacao)Then
     btnOrFormaAplicacao.OnClick(btnOrFormaAplicacao);

  If (frmDefensivo.ActiveControl = cmbEquipamento)Then
     btnOrEquipamento.OnClick(btnOrEquipamento);

  If (frmDefensivo.ActiveControl = cmbRegistrante)Then
     btnOrRegistrante.OnClick(btnOrRegistrante);
end;

procedure TfrmDefensivo.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TfrmDefensivo.ActAlterarExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
    Exit;
  Try
    Navigator.DataSource.DataSet.Edit;

    if Pc.activePageIndex = 0 then
       cmbProduto.SetFocus;

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

procedure TfrmDefensivo.GridItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If Key = 13 then
    ActAlterar.Execute;
end;

procedure TfrmDefensivo.EdPessoaEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TfrmDefensivo.cmbvendedorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TfrmDefensivo.EdVendedorEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TfrmDefensivo.CmbFormaPgtoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TfrmDefensivo.ctReveladorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TfrmDefensivo.EdMargemEnter(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     CorFundo ( Sender );
end;

procedure TfrmDefensivo.EdMargemExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TfrmDefensivo.ActNextPageExecute(Sender: TObject);
begin
  pc.ActivePageIndex := 1;
end;

procedure TfrmDefensivo.ActPreviousPageExecute(Sender: TObject);
begin
     pc.ActivePageIndex := 0;
end;

procedure TfrmDefensivo.TAB2Enter(Sender: TObject);
begin
    Navigator.DataSource := DataSource;
    DataSource.DataSet.Edit ;
end;

procedure TfrmDefensivo.EDENTRADAExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TfrmDefensivo.EDDOCUMENTOExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TfrmDefensivo.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  if Button = nbdelete then
    If MessageBox(Handle,'Tem certeza que deseja Excluir este Movimento ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
       DsIntervalos.dataset.Delete;
end;

procedure TfrmDefensivo.btnProdutoClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmProdutos', False);
  FrmProdutos := TFrmProdutos.Create(Self);

  FrmProdutos.ShowModal;
  DMCadastros.SelProdutos.Close;
  DMCadastros.SelProdutos.Open;

  Datasource.DataSet.FieldByName('COD_PRODUTO').value := FrmMain.Codigo_str ;
  FrmProdutos.Free;
  FrmProdutos := Nil;
  cmbProduto.SetFocus;
end;

procedure TfrmDefensivo.btnCategoriaClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCategoriasDef', False);

  FrmCategoriasDef := TFrmCategoriasDef.Create(Self);

  FrmCategoriasDef.ShowModal;
  dmCadastros2.AGR_Categoria.Close;
  dmCadastros2.AGR_Categoria.Open;
  Datasource.DataSet.FieldByName('COD_CATEGORIA_DEFENSIVO').value := FrmMain.Codigo_Int ;
  FrmCategoriasDef.Free;
  FrmCategoriasDef := Nil;
  cmbCategoria.SetFocus;
end;

procedure TfrmDefensivo.btnClassToxClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClassesToxicologicas', False);

  FrmClassesToxicologicas := TFrmClassesToxicologicas.Create(Self);

  FrmClassesToxicologicas.ShowModal;
  dmCadastros2.AGR_ClassTox.Close;
  dmCadastros2.AGR_ClassTox.Open;
  Datasource.DataSet.FieldByName('COD_CLASSE_TOXICOLOGICA').value := FrmMain.Codigo_Int ;
  FrmClassesToxicologicas.Free;
  FrmClassesToxicologicas := Nil;
  cmbClasseTox.SetFocus;
end;

procedure TfrmDefensivo.btnClassAmbClick(Sender: TObject);
begin

 If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClassAmbiental', False);

  FrmClassAmbiental := TFrmClassAmbiental.Create(Self);

  FrmClassAmbiental.ShowModal;
  dmCadastros2.AGR_ClassAmb.Close;
  dmCadastros2.AGR_ClassAmb.Open;
  Datasource.DataSet.FieldByName('COD_CLASSIFICACAO_AMBIENTAL').value := FrmMain.Codigo_Int ;
  FrmClassAmbiental.Free;
  FrmClassAmbiental := Nil;
  cmbClasseAmbiental.SetFocus;
end;

procedure TfrmDefensivo.btnClassQuimicaClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClassQuimica', False);

  FrmClassQuimica := TFrmClassQuimica.Create(Self);

  FrmClassQuimica.ShowModal;
  Datasource.DataSet.FieldByName('COD_CLASSIFICACAO_QUIMICA').value := FrmMain.Codigo_Int ;
  FrmClassQuimica.Free;
  FrmClassQuimica := Nil;
  cmbClasseQuimica.SetFocus;
end;

procedure TfrmDefensivo.btnFabricanteClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFabricantes', False);

  FrmFabricantes := TFrmFabricantes.Create(Self);

  FrmFabricantes.ShowModal;
  Datasource.DataSet.FieldByName('COD_FABRICANTE').value := FrmMain.Codigo_Int ;
  FrmFabricantes.Free;
  FrmFabricantes := Nil;
  cmbFabricante.SetFocus;
end;

procedure TfrmDefensivo.btnMatEmbaClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMatEmbalagem', False);

  FrmMatEmbalagem := TFrmMatEmbalagem.Create(Self);

  FrmMatEmbalagem.ShowModal;
  Datasource.DataSet.FieldByName('COD_MAT_EMBALAGEM').value := FrmMain.Codigo_Int ;
  FrmMatEmbalagem.Free;
  FrmMatEmbalagem := Nil;
  cmbEmbalagem.SetFocus;
end;

procedure TfrmDefensivo.btnOrTecnicaClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmOrientacoesDef', False);

  FrmOrientacoesDef := TFrmOrientacoesDef.Create(Self);

  FrmOrientacoesDef.ShowModal;
  Datasource.DataSet.FieldByName('COD_ORIENTACAO_TECNICA').value := FrmMain.Codigo_Int ;
  FrmOrientacoesDef.Free;
  FrmOrientacoesDef := Nil;
  cmbOrientacaoTec.SetFocus;
end;

procedure TfrmDefensivo.btnOrComplementarClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmOrientacoesDef', False);

  FrmOrientacoesDef := TFrmOrientacoesDef.Create(Self);

  FrmOrientacoesDef.ShowModal;
  dmCadastros2.AGR_OrComplementar.close;
  dmCadastros2.AGR_OrComplementar.Open;
  Datasource.DataSet.FieldByName('COD_ORIENTACAO_COMPLEMENTAR').value := FrmMain.Codigo_Int ;
  FrmOrientacoesDef.Free;
  FrmOrientacoesDef := Nil;
  cmbOrientacaoComple.SetFocus;
end;

procedure TfrmDefensivo.btnOrFormaAplicacaoClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmOrientacoesDef', False);

  FrmOrientacoesDef := TFrmOrientacoesDef.Create(Self);

  FrmOrientacoesDef.ShowModal;
  dmCadastros2.Agr_OrAplicacao.Close;
  dmCadastros2.Agr_OrAplicacao.Open;
  Datasource.DataSet.FieldByName('COD_INFORMACAO_APLICACAO').value := FrmMain.Codigo_Int ;
  FrmOrientacoesDef.Free;
  FrmOrientacoesDef := Nil;
  cmbFormaAplicacao.SetFocus;
end;

procedure TfrmDefensivo.btnOrEquipamentoClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmOrientacoesDef', False);

  FrmOrientacoesDef := TFrmOrientacoesDef.Create(Self);

  FrmOrientacoesDef.ShowModal;
  dmCadastros2.Agr_OrEquipamento.Close;
  dmCadastros2.Agr_OrEquipamento.Open;
  Datasource.DataSet.FieldByName('COD_ORIENTACAO_EQUIPAMENTO').value := FrmMain.Codigo_Int ;
  FrmOrientacoesDef.Free;
  FrmOrientacoesDef := Nil;
  cmbEquipamento.SetFocus;
end;

procedure TfrmDefensivo.btnOrRegistranteClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmRegistrantes', False);

  FrmRegistrantes := TFrmRegistrantes.Create(Self);

  FrmRegistrantes.ShowModal;
  Datasource.DataSet.FieldByName('COD_REGISTRANTE').value := FrmMain.Codigo_Int ;
  FrmRegistrantes.Free;
  FrmRegistrantes := Nil;
  cmbRegistrante.SetFocus;
end;

procedure TfrmDefensivo.ActLocalizarExecute(Sender: TObject);
var
  retorno : integer;
begin
  FrmLocDefensivos.showmodal;
  retorno := 0;

  if FrmLocDefensivos.modalresult = mrOk then
    retorno := FrmLocDefensivos.CampTrecho;

  if (retorno > 0) then
    dmCadastros2.AGR_Defensivo.Locate('codigo',Retorno,[]);
end;

procedure TfrmDefensivo.PCChange(Sender: TObject);
begin
  if (PC.ActivePageIndex = 0) then
  begin
    Navigator.DataSource := DataSource;
    lblProduto.Caption := '';
  end
  else
  begin
    if (dmCadastros2.AGR_Defensivo.State in [dsEdit,dsInsert]) then
      dmCadastros2.AGR_Defensivo.Post;

    Navigator.DataSource := dsCulturasPragas;
    lblProduto.Caption := cmbProduto.text;
  end
end;

end.





