
 unit ContagemGrade_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, DBCtrls, Grids, DBGrids,
  DBCGrids, dxExEdtr,   
	Mask,  DBTables,  ppDB, ppDBPipe, ppModule, raCodMod,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport,   dxTL, dxDBCtrl, dxDBGrid, cxPropertiesStore,
  dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, ppParameter, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel,
  cxCurrencyEdit, cxButtonEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxTextEdit, cxCheckBox;


type
  TFrmContagemGrade = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
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
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    DsProduto: TDataSource;
    FecharContagem: TdxBarButton;
    ActFecharContagem: TAction;
    actDigitaQtde: TAction;
    rptComparaContagem: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape5: TppShape;
    ppSystemVariable2: TppSystemVariable;
    ppLabel62: TppLabel;
    lblEmpresa: TppLabel;
    lblFiltro: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLabel13: TppLabel;
    ppLabel20: TppLabel;
    lblEstoque: TppLabel;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppDetailBand2: TppDetailBand;
    lbl7: TppDBText;
    lbl3: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppFooterBand2: TppFooterBand;
    ppShape1: TppShape;
    ppSystemVariable5: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppDBText2: TppDBText;
    ppLabel3: TppLabel;
    ppLine3: TppLine;
    ppGroupFooterBand2: TppGroupFooterBand;
    raCodeModule2: TraCodeModule;
    ppComparaContagem: TppDBPipeline;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppDBText5: TppDBText;
    ppLabel4: TppLabel;
    btnCompara: TdxBarButton;
    ActComparaCt: TAction;
    Panel3: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Label1: TcxLabel;
    DBText1: TDBText;
    DBText3: TDBText;
    DBText2: TDBText;
    Label2: TcxLabel;
    GridProdutos: TdxDBGrid;
    GridProdutosCODIGO: TdxDBGridMaskColumn;
    GridProdutosNOME: TdxDBGridMaskColumn;
    GridProdutosGRADE: TdxDBGridMaskColumn;
    GridProdutosNUMERO: TdxDBGridMaskColumn;
    GridProdutosCODIGO_PRODUTO: TdxDBGridMaskColumn;
    GridProdutosQTDE: TdxDBGridMaskColumn;
    Panel2: TPanel;
    Label6: TcxLabel;
    lblQtde: TcxLabel;
    Label18: TcxLabel;
    GridProdutosQUANTIDADE_ANTERIOR: TdxDBGridMaskColumn;
    stgFrmContagemGrade: TcxPropertiesStore;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText6: TppDBText;
    edCodigo: TcxDBTextEdit;
    EdInicial: TcxDBTextEdit;
    EdLocal: TcxDBComboBox;
    edtCodBarra: TcxButtonEdit;
    edtQtde: TcxCurrencyEdit;
    ckbDigQtde: TcxCheckBox;
    ckgrades: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActFecharContagemExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure ActLocalizarNumeroExecute(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure BtnCadastrarClick(Sender: TObject);
    procedure actDigitaQtdeExecute(Sender: TObject);
    procedure ckbDigQtdeChange(Sender: TObject);
    procedure SalvaItem;
    procedure edtCodBarraButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ActComparaCtExecute(Sender: TObject);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure EDGRADEEnter(Sender: TObject);
    procedure edtCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    function RetornaGrade(Codigo :String):String;
    function RetornaCodigo(Codigo :String):String;
    function RetornaNumero(Codigo :String):String;
    function ValidaCodBarra(Sender :TObject):Boolean;
    procedure LocalizarProduto;
    procedure InsereItem;
    procedure LocalizaGrade;
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmContagemGrade: TFrmContagemGrade;

implementation

uses Cadastros_DM,
     Estoque_Dm,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     LocalizarProd_DM,
     Localizar_Grade, Localizar_Produto_Cadastro_Auto, Vendas_DM2,
  Vendas_Dm;

{$R *.DFM}

procedure TFrmContagemGrade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Deseja Sair da Contagem?', mtConfirmation, [mbOK, mbCancel], 0) = MROK then
  begin
    if FrmMain.MDIChildCount > 1 then
      FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;

    if Datasource.Dataset.Tag = 0 then
      Datasource.Dataset.Close;

    if DsProduto.Dataset.Tag = 0 then
      DsProduto.Dataset.Close;

    Action := caFree;
    FrmContagemGrade := Nil;

    if FrmMain.MDIChildCount = 1 then
      FrmMain.PnlClient.Visible := True;
  end
  else
    action := canone;

end;

procedure TFrmContagemGrade.ActIncluirExecute(Sender: TObject);
begin
  if DataSource.State in dsEditModes then
    exit;
  try
    DataSource.DataSet.Append;
    EdInicial.SetFocus;
  except
    Application.HandleException(Self);
  end;
end;

procedure TFrmContagemGrade.ActExcluirExecute(Sender: TObject);
begin
  if DmEstoque.ContagemGradePROCESSADA.Value = 'S' then
  begin
    Application.messagebox('Impossível excluir. Contagem se encontra fechada','Aviso',mb_ok + mb_iconerror);
    exit;
  end;

  if ActiveControl <> GridProdutos then
  begin
    if MessageBox(Handle,'Tem certeza que deseja Excluir esta Contagem?',
                         'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
       DataSource.Dataset.Delete;
  end
  else
    if MessageBox(Handle,'Deseja o item da contagem?', 'Atenção',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
    begin
      DmEstoque.ContagemGradeItens.Delete;
      DmEstoque.ContagemGradeItens.Transaction.CommitRetaining;
    end;

end;

procedure TFrmContagemGrade.ActPostExecute(Sender: TObject);
begin
  try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
  except
    Application.HandleException(Self);
  end;
end;

procedure TFrmContagemGrade.ActCancelExecute(Sender: TObject);
begin
     if DataSource.DataSet.active and  ( DataSource.DataSet.State in dsEditModes) Then
        DataSource.DataSet.Cancel
     else
       if DsProduto.DataSet.State in dsEditModes Then
          DsProduto.DataSet.Cancel
       else
          BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmContagemGrade.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  ckbDigQtde.Checked := False;
  actDigitaQtde.Execute;
  ckbDigQtdeChange(ckbDigQtde);


end;

procedure TFrmContagemGrade.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmContagemGrade.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmContagemGrade.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmContagemGrade.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
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

procedure TFrmContagemGrade.ActFecharExecute(Sender: TObject);
begin
  If FrmContagemGrade.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmContagemGrade.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount); 
end;

procedure TFrmContagemGrade.ActFecharContagemExecute(Sender: TObject);
begin
  if DmEstoque.ContagemGradePROCESSADA.Value = 'S' then
  begin
    Application.messagebox('Contagem já se encontra fechada','Aviso',mb_ok + mb_iconerror);
    exit;
  end;

  {Caso o local de estoque 1 (Fiscal) seja selecionado a contagem não gerará kardex,
   não atualizará quantidade física dos produtos e atualizará quantidade fiscal diretamente
   no produto ignorando grades e número}
  if (DmEstoque.ContagemGradeLOCAL.Value = 1) then
  begin
    if Application.messagebox(Pchar('Local de Estoque igual à ''1'''+#13+'A contagem irá ignorar qualquer possível composição de grades nos itens. Deseja prosseguir com o fechamento?'),'Aviso',mb_ok + mb_iconquestion) = id_no then
      exit;
  end;

  if DmEstoque.ContagemGrade.State in [dsInsert, dsEdit] then
    DmEstoque.ContagemGrade.Post;

  DmEstoque.ContagemGrade.Edit;
  DmEstoque.ContagemGradePROCESSADA.Value := 'S';
  DmEstoque.ContagemGrade.Post;
  DmEstoque.ContagemGrade.Transaction.CommitRetaining;
  Application.messagebox('Contagem processada com sucesso','Aviso',mb_ok + mb_iconquestion);

end;

procedure TFrmContagemGrade.FormShow(Sender: TObject);
begin
  //
  Try
    if (DmApp.CONTAGEM_INCREMENTAL = 'S') then
      ActComparaCt.enabled := false
    else
      ActComparaCt.enabled := true;

    If Not(DmEstoque.ContagemGrade.Active) Then
       DmEstoque.ContagemGrade.Open;

    If Not(DmEstoque.ContagemGradeItens.Active) Then
       DmEstoque.ContagemGradeItens.Open;

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
  EdInicial.SetFocus;
end;

procedure TFrmContagemGrade.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmContagemGrade.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmContagemGrade.ActLocalizarNumeroExecute(Sender: TObject);
begin
  //Chama a Tela Para Localizar Naturezas
{  if Length(trim(edtCodBarra.text)) > 16 then
  begin
    Application.Messagebox('Produto inválido','Aviso',mb_ok+mb_iconerror);
    exit;
  end;

  Application.CreateForm(TFrm_Localizar_Grades, Frm_Localizar_Grades);
  with DMESTOQUE do
  begin
    Lista_Grades.close;
    Lista_Grades.ParamByName ('CNPJ').ASSTRING  := DMAPP.CNPJ                         ;
    Lista_Grades.ParamByName ('PRODUTO').ASSTRING := RetornaCodigo(edtCodBarra.Text);
    Lista_Grades.open;
  end;

  Frm_Localizar_Grades.DSource.DataSet := DMESTOQUE.Lista_Grades;
  if (Frm_Localizar_Grades.showmodal = mrOk) then
  begin
    produto := completaesq(RetornaCodigo(edtCodBarra.Text),'0',6);
    numero  := completaesq(Frm_Localizar_Grades.CampTrecho,'0',6);
    Grade   := Frm_Localizar_Grades.GRADE;
    edtCodBarra.Text := produto + Grade+ numero;
  end;

  Frm_Localizar_Grades.FREE   ;
  Frm_Localizar_Grades := NIL ;}
end;

procedure TFrmContagemGrade.Panel2Enter(Sender: TObject);
begin
     If ( DmEstoque.Contagem.State in [ dsinsert, dsedit ] )
     then begin
          DmEstoque.Contagem.Post;
     end;

     edtCodBarra.SetFocus ;
end;

procedure TFrmContagemGrade.BtnCadastrarClick(Sender: TObject);
begin
{     If DmEstoque.CONTAGEM_PRODUTO.State in [ dsinsert, dsedit ]
     then begin
          DmEstoque.CONTAGEM_PRODUTO.Post ;

          DmEstoque.CONTAGEM_PRODUTO.Append ;

          EdProduto.SetFocus ;
     end; }
end;

function TFrmContagemGrade.RetornaGrade(Codigo: String): String;
var
  Aux: String;
  x :Integer;
begin
  if (length(codigo) = 15) then
  begin
    Aux := copy(Codigo,7,3);
    Aux := 'A'+Aux;
  end
  else
    Aux := copy(Codigo,7,4);

  Result := Aux;
end;

function TFrmContagemGrade.RetornaCodigo(Codigo: String): String;
var
  Aux: String;
  x :Integer;
begin
  Aux := copy(Codigo,1,6);
  x := 1;
  while Copy(Aux,x,1) = '0' do
    inc(x, 1);
  Aux := Copy(Aux, x, Length(Aux) - x + 1);
  Result := Aux;
end;

function TFrmContagemGrade.RetornaNumero(Codigo: String): String;
var
  Aux: String;
  x :Integer;
begin
  if (length(codigo) = 15) then
    Aux := copy(Codigo,10,6)
  else
    Aux := COPY(codigo,11,7);

  x := 1;
  while Copy(Aux,x,1) = '0' do
    inc(x, 1);
  Aux := Copy(Aux, x, Length(Aux) - x + 1);
  Result := Aux;
end;

procedure TFrmContagemGrade.SalvaItem;
var
  sql, X : string;
begin
  with DmEstoque do
  begin
    if ckgrades.Checked then
    begin
      qryAux.close;
      qryAux.sql.text := ' select count(*) cont from est_produtos_grades_numeros est where est.produto = :produto '+
             ' and upper(est.grade) = :grade and upper(est.numero) = :numero ';

      qryAux.parambyname('Produto').value := RetornaCodigo(edtCodBarra.Text);
      qryAux.parambyname('grade').value := RetornaGrade(edtCodBarra.Text);
      qryAux.parambyname('numero').value := RetornaNumero(edtCodBarra.Text);
      qryAux.open;
    end
    else
    begin
      // verificando se produto existe,
      // este é um módulo problemático, desta ultima vez o codigo foi descomentado pois a contagem nao estava lendo produtos
      // que nao tinham grade mas tinham codigo de barras tal como 7894900011517 (Coca Cola)
      qryAux.close;
      qryAux.sql.text := 'select count(*) cont from est_produtos p where p.codigo = :Produto';
      X := RetornaCodigo(edtCodBarra.Text);
      qryAux.parambyname('Produto').value := trim(edtCodBarra.Text);
      //      qryAux.parambyname('Produto').value := x;
      qryAux.open;

      if qryAux.FieldByName('cont').asinteger = 0 then
      begin
      //application.MessageBox('Produto inválido','Aviso',MB_ICONERROR + mb_ok);
        LocalizarProduto;
        exit;
      end;
    end;




    if ContagemGrade.State in [dsInsert, dsEdit] then
      ContagemGrade.Post;

    ContagemGradeItens.Insert;
    if ckgrades.checked then
    begin
      ContagemGradeItensPRODUTO.Value := RetornaCodigo(edtCodBarra.Text);
      ContagemGradeItensGRADE.Value := RetornaGrade(edtCodBarra.Text);
      ContagemGradeItensNUMERO.Value := RetornaNumero(edtCodBarra.Text);
    end
    else
     ContagemGradeItensPRODUTO.Value := trim(edtCodBarra.Text);;

//devolvido do clodaldo (caso), não achei o caso pra saber o porque q foi retirado.
//      ContagemGradeItensPRODUTO.Value := trim(edtCodBarra.Text);

 //Retirado por causa da barão dos tecidos
//      ContagemGradeItensPRODUTO.Value := RetornaCodigo(edtCodBarra.Text);

 //Colocado novamente por causa da casa de carne pantanal caso 2320
  //ContagemGradeItensPRODUTO.Value := trim(edtCodBarra.Text);

    if ckbDigQtde.Checked then //digitando quantidade
      ContagemGradeItensQTDE.Value := edtQtde.Value;

    ContagemGradeItens.Post;
    ContagemGradeItens.Transaction.CommitRetaining;
    ContagemGradeItens.Refresh;
    edtCodBarra.Clear;
    ActiveControl := edtCodBarra;
  end;
end;

function TFrmContagemGrade.ValidaCodBarra(Sender: TObject): Boolean;
begin
  with DmEstoque do
    try
      if (trim(edtCodBarra.Text) <> '') and (ContagemGradePROCESSADA.Value = 'N') then
      begin
        // verificando se produto existe
        qryAux.close;
        qryAux.sql.text := 'select count(*) cont from est_produtos p where p.codigo = :Produto';
        qryAux.parambyname('Produto').value := RetornaCodigo(edtCodBarra.Text);
        qryAux.open;

        if qryAux.FieldByName('cont').asinteger = 0 then
        begin
          //application.MessageBox('Produto inválido','Aviso',MB_ICONERROR + mb_ok);
          LocalizarProduto;
          exit;
        end;

        if ((RetornaGrade(edtCodBarra.Text)='') or (RetornaNumero(edtCodBarra.Text)= '')) then
          LocalizaGrade;

        qValidaCodBarras.Close;
        qValidaCodBarras.ParamByName('codigo').Value := RetornaCodigo(edtCodBarra.Text);
        qValidaCodBarras.ParamByName('grade').Value := RetornaGrade(edtCodBarra.Text);
        qValidaCodBarras.ParamByName('numero').Value := RetornaNumero(edtCodBarra.Text);
        //procedimento diferencia-se internamente dependendo do controle de estoque(Grade/SemGrade)
        if (ckgrades.checked) then
          qValidaCodBarras.ParamByName('usa_grade').Value := 1
        else
          qValidaCodBarras.ParamByName('usa_grade').Value := 0;

        qValidaCodBarras.ParamByName('cnpj').Value := DMApp.Cnpj;
        qValidaCodBarras.Open;

        Result := qValidaCodBarrasEXISTE.Value > 0;
        qValidaCodBarras.Close;

        if not Result then
        begin
          LocalizaGrade;
          ActiveControl := edtCodBarra;
        end;
      end
      else Result := False;
    except
      qValidaCodBarras.Close;
      Result := False;
      Application.HandleException(Self);
    end;
end;

procedure TFrmContagemGrade.actDigitaQtdeExecute(Sender: TObject);
begin
  ckbDigQtde.Checked := not ckbDigQtde.Checked;
end;

procedure TFrmContagemGrade.ckbDigQtdeChange(Sender: TObject);
begin
  edtQtde.Visible := ckbDigQtde.Checked;
  lblQtde.Visible := ckbDigQtde.Checked;
  edtQtde.value := 1;
end;

procedure TFrmContagemGrade.edtCodBarraButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  LocalizarProduto;
end;

procedure TFrmContagemGrade.LocalizarProduto;
begin
    if FrmLocProdutoCadastro_Auto = nil then
      FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.create(Self);

    if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
      edtCodBarra.text := (FrmLocProdutoCadastro_Auto.CampTrecho);

    edtCodBarra.SetFocus;
end;

procedure TFrmContagemGrade.ActComparaCtExecute(Sender: TObject);
begin
  with dmEstoque do
  begin
    if ContagemGradePROCESSADA.asString <> 'S' then
    begin
      application.messagebox('Contagem Aberta. Comparação só é relizada em contagens fechadas','Aviso',mb_ok+mb_iconerror);
      exit;
    end;

    qryCompContagem.Close;
    qryCompContagem.parambyname('codigo').value := ContagemGradeCodigo.asInteger;
    qryCompContagem.Open;
    lblEmpresa.text := dmapp.nome;
    lblfiltro.text := 'Contagem: '+ContagemDocumento.asString+' - Dt.: '+DateToStr(ContagemGradeDT_PROCESSAMENTO.Value);
    rptComparaContagem.print;
  end
end;

procedure TFrmContagemGrade.InsereItem;
begin
  if trim(edtCodBarra.Text) = '' then
  begin
    application.MessageBox('Produto inválido','Aviso',MB_OK);
    exit;
  end;

    //Se tiver grade, disparo as validações de grade
  if ckgrades.checked then
    if not ValidaCodBarra(edtCodBarra) then
      exit;

  SalvaItem;
end;

procedure TFrmContagemGrade.edtQtdeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if ((Key = #13) and (ckbDigQtde.checked)) then
     InsereItem;
end;

procedure TFrmContagemGrade.EDGRADEEnter(Sender: TObject);
begin
  with dmVendas2 do
  begin
    if trim(edtCodBarra.Text) <> ''  then
    begin
      dmVendas2.qConsultaGrade.close;
      dmVendas2.qConsultaGrade.parambyname('cnpj').value := dmapp.cnpj;
      dmVendas2.qConsultaGrade.parambyname('produto').value := edtCodBarra.text;
      dmVendas2.qConsultaGrade.open;

      if dmVendas2.qConsultaGradeCOUNT.VALUE > 0 then
        LocalizaGrade;
    end;
  end;
end;

procedure TFrmContagemGrade.LocalizaGrade;
var
  produto, grade, numero : string;
begin
  Application.CreateForm(TFrm_Localizar_Grades, Frm_Localizar_Grades);
  with dmVendas do
  begin
    Lista_Grades.close ;
    Lista_Grades.ParamByName ('CNPJ'  ).ASSTRING  := DMAPP.CNPJ;
    Lista_Grades.ParamByName ('PRODUTO').ASSTRING := RetornaCodigo(edtCodBarra.Text);
    Lista_Grades.open  ;
    Frm_Localizar_Grades.DSource.DataSet := Lista_Grades ;
  end;

  if (Frm_Localizar_Grades.showmodal = mrOk) then
  begin
    Frm_Localizar_Grades.camptrecho;
    produto := Completaesq(edtCodBarra.text,'0',6);
    grade := frm_Localizar_Grades.Grade;
    numero := Completaesq(Frm_Localizar_Grades.Camptrecho,'0',6);
    if ((grade <> '') and (grade <> '000000')) then
      edtCodBarra.text := produto + grade + numero
    else
      edtCodBarra.text  := RetiraZeros(edtCodBarra.text);
  end;

  Frm_Localizar_Grades.FREE   ;
  Frm_Localizar_Grades := NIL ;
end;

procedure TFrmContagemGrade.edtCodBarraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if ((key=VK_RETURN) and not(ckbDigQtde.checked)) then
    InsereItem
  else if (key=VK_RETURN) then
    Perform(WM_NEXTDLGCTL, 0, 0);
end;

end.

