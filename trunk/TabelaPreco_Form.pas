 unit TabelaPreco_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, DBCtrls, Grids, DBGrids,
  DBCGrids, dxExEdtr,   
	Mask,  DBTables, ppDB, ppDBPipe, ppModule, raCodMod,
  ppBands, ppClass, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport,   dxTL, dxDBCtrl, dxDBGrid, dxDBEdtr,
  cxPropertiesStore, dxTLClms,  dxDBTLCl, dxGrClms, dxSkinsCore,
  dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel;


type

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmTabelaPreco = class(TForm)
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
    dsItens: TDataSource;
    ActFecharContagem: TAction;
    ActLocalizarGrade: TAction;
    ActLocalizarNumero: TAction;
    ActLookUp: TAction;
    actDigitaQtde: TAction;
    btnCompara: TdxBarButton;
    ActGerarLista: TAction;
    Panel3: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Label1: TcxLabel;
    edCodigo: TdxDBEdit;
    EdDescricao: TdxDBEdit;
    Label2: TcxLabel;
    edtInicio: TdxDBDateEdit;
    Label9: TcxLabel;
    stgfrmTabelaPrecos: TcxPropertiesStore;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    ActConfigura: TAction;
    GRID: TdxDBGrid;
    dxDBEdit1: TdxDBEdit;
    Label3: TcxLabel;
    btnAlteraCampo: TdxBarButton;
    btnConfigura: TdxBarButton;
    actExportar: TAction;
    SaveDialog: TSaveDialog;
    btnAlterar: TdxBarButton;
    edtFim: TdxDBDateEdit;
    Label4: TcxLabel;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDCOD_TABELAPRECO: TdxDBGridMaskColumn;
    GRIDPRODUTO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridCurrencyColumn;
    GRIDCOEFICIENTE: TdxDBGridCurrencyColumn;
    GRIDDATAINICIOVIGENCIA: TdxDBGridDateColumn;
    GRIDDATAFIMVIGENCIA: TdxDBGridDateColumn;
    GRIDCOEFICIENTECUSTOUTILIZADO: TdxDBGridCurrencyColumn;
    GRIDPRECOSUGERIDO: TdxDBGridCurrencyColumn;
    GRIDCOD_FATURAMENTO: TdxDBGridMaskColumn;
    GRIDDATAPRECIFICACAO: TdxDBGridDateColumn;
    GRIDDATAPROJECAOPRECOS: TdxDBGridDateColumn;
    GRIDPERCDESCONTOPROJECAO: TdxDBGridCurrencyColumn;
    GRIDTIPOCALCULOPERCDESC: TdxDBGridCurrencyColumn;
    GRIDPERCACRESCIMOPROJECAO: TdxDBGridCurrencyColumn;
    GRIDTIPOCALCULOPERCACRESC: TdxDBGridCurrencyColumn;
    GRIDPRECOCUSTO: TdxDBGridCurrencyColumn;
    GRIDDATAPROJECAOCUSTO: TdxDBGridDateColumn;
    GRIDPERCDESCONTOPROJECAOCUSTO: TdxDBGridCurrencyColumn;
    GRIDTIPOCALCULOPERCDESCCUSTO: TdxDBGridMaskColumn;
    GRIDPERCACRESCIMOPROJECAOCUSTO: TdxDBGridCurrencyColumn;
    GRIDNOME_PRODUTO: TdxDBGridMaskColumn;
    GRIDMARGEMUTILIZADO: TdxDBGridCalcColumn;
    GRIDDESCONTOMAXIMO: TdxDBGridSpinColumn;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActFecharContagemExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdDescricaoEnter(Sender: TObject);
    procedure EdDescricaoExit(Sender: TObject);
    procedure edtCodBarraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActGerarListaExecute(Sender: TObject);
    procedure GridHeaderMoved(Sender: TObject; Column: TdxTreeListColumn);
    procedure GridHideHeader(Sender: TObject; AColumn: TdxTreeListColumn);
    procedure GridShowHeader(Sender: TObject; AColumn: TdxTreeListColumn;
      BandIndex, RowIndex, ColIndex: Integer);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure ActConfiguraExecute(Sender: TObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure actExportarExecute(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure ActAlterarExecute(Sender: TObject);
  private
    DragNode: TdxTreeListNode;
    procedure Synchronize;
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmTabelaPreco: TFrmTabelaPreco;

implementation

uses Cadastros_DM,
     Estoque_Dm,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     LocalizarProd_DM,
     Localizar_Grade, Localizar_Produto_Cadastro_Auto, Vendas_DM2,
  Vendas_Dm, Filtra_AlteraPreco_Form,FileCtrl, AlteraPreco_Form,
  Filtra_TabelaPreco_Form;

{$R *.DFM}

procedure TFrmTabelaPreco.FormClose(Sender: TObject; var Action: TCloseAction);
var
  diretorio : string;
begin
  Action := caFree;
  FrmTabelaPreco := Nil;

  Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
  if not DirectoryExists(Diretorio) then
  begin
     ForceDirectories(Diretorio);
     MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
  end;

  SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdAltPrc.txt',Grid.Filter);
end;

procedure TFrmTabelaPreco.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmTabelaPreco.ActIncluirExecute(Sender: TObject);
begin
  if DataSource.State in dsEditModes then
    exit;

  DataSource.DataSet.Append;
  EdDescricao.setfocus;
end;

procedure TFrmTabelaPreco.ActExcluirExecute(Sender: TObject);
begin
  if (dmestoque.AlteraPrecoFECHADA.value = 'S') then
  begin
    Application.messagebox('Impossível Excluir. Registro de alteração de preços já se encontra processado','Aviso',mb_ok + mb_iconerror);
    exit;
  end;

  if ActiveControl <> Grid then
  begin
    if MessageBox(Handle,'Tem certeza que deseja excluir este registro de alteração de Preço?',
                         'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
       DataSource.Dataset.Delete;
  end
  else
  if MessageBox(Handle,'Deseja excluir o item da lista de alteração de preços?', 'Atenção',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
  begin
    DmEstoque.ItemTabelaPreco.Delete;
    DmEstoque.ItemTabelaPreco.Transaction.CommitRetaining;
  end;
end;

procedure TFrmTabelaPreco.ActPostExecute(Sender: TObject);
begin
  try
    if not (DataSource.State in dsEditModes) then
      exit;

    if (edtInicio.Date <=0 ) then
    begin
      Application.MessageBox('Defina uma data de inicio de vigência para a tabela de preços','Aviso',mb_iconerror+mb_ok);
      edtInicio.SetFocus;
      exit;
    end;

    if (edtFim.Date <=0 ) then
    begin
      Application.MessageBox('Defina uma data de finalização de vigência para a tabela de preços','Aviso',mb_iconerror+mb_ok);
      edtFim.SetFocus;
      exit;
    end;


    DataSource.DataSet.Post;
    Application.MessageBox('Registro salvo com sucesso','Aviso',mb_iconinformation+mb_ok);
    DMApp.Transaction.CommitRetaining;
  except
    Application.HandleException(Self);
  end;
end;

procedure TFrmTabelaPreco.ActCancelExecute(Sender: TObject);
begin
  if DataSource.DataSet.active and  ( DataSource.DataSet.State in dsEditModes) Then
     DataSource.DataSet.Cancel
  else  if DsItens.DataSet.State in dsEditModes Then
     DsItens.DataSet.Cancel
end;

procedure TFrmTabelaPreco.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
  Synchronize;

  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdAltPrc.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdAltPrc.txt',Grid.Filter);

end;

procedure TFrmTabelaPreco.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomize.ClearNodes;
  for I := 0 to GRID.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := GRID.Columns[I].Caption;
    if GRID.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GRID.Columns[I];
  end;
end;

procedure TFrmTabelaPreco.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmTabelaPreco.edCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmTabelaPreco.DataSourceStateChange(Sender: TObject);
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

procedure TFrmTabelaPreco.ActFecharExecute(Sender: TObject);
begin
  If FrmTabelaPreco.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmTabelaPreco.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TFrmTabelaPreco.ActFecharContagemExecute(Sender: TObject);
begin
 {if (dmestoque.AlteraPrecoFECHADA.value = 'S') then
 begin
  Application.messagebox('Erro. Registro de alteração de preços já se encontra processada','Aviso',mb_ok + mb_iconerror);
  exit;
 end
 else if (Application.messagebox('Deseja realmente processar a atualização de preços?','Aviso',mb_yesno + mb_iconquestion) = id_no) then
   exit;


 with dmEstoque do
 begin
   try
     if AlteraPreco.State in [dsInsert, dsEdit] then
       AlteraPreco.Post;

     AlteraPreco.edit;
     AlteraPrecoFECHADA.value := 'S';
     AlteraPreco.Post;
     AlteraPreco.Refresh;
     AlteraPreco.Transaction.CommitRetaining;
     Application.messagebox('Alteração de preços processada com sucesso','Aviso',mb_ok + mb_iconinformation);
   except
     Application.messagebox('Erro. Alteração de preços não pode ser processada','Aviso',mb_ok + mb_iconerror);
     AlteraPreco.Transaction.RollbackRetaining;
   end;
 end }

end;

procedure TFrmTabelaPreco.FormShow(Sender: TObject);
begin
  //
  Try

    If Not(DataSource.dataset.Active) Then
       DataSource.dataset.Open;

    If Not(dsItens.DataSet.Active) Then
       dsItens.DataSet.Open;

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
  EdDescricao.SetFocus;
  GRID.FullExpand;
end;

procedure TFrmTabelaPreco.EdDescricaoEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TFrmTabelaPreco.EdDescricaoExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TFrmTabelaPreco.edtCodBarraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (key=VK_RETURN) then
    Perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure TFrmTabelaPreco.ActGerarListaExecute(Sender: TObject);
begin
  if (dmEstoque.AlteraPrecoFECHADA.value = 'S') then
  begin
   Application.messagebox('Erro. Registro de alteração de preços já se encontra fechado','Aviso',mb_ok + mb_iconerror);
   exit;
  end;

  frmFiltraTabelaPreco := TfrmFiltraTabelaPreco.Create(Self);
  frmFiltraTabelaPreco.ShowModal;
  frmFiltraTabelaPreco.Free;
  frmFiltraTabelaPreco := nil;
end;

procedure TFrmTabelaPreco.GridHeaderMoved(Sender: TObject;
  Column: TdxTreeListColumn);
begin
   Synchronize;
end;

procedure TFrmTabelaPreco.GridHideHeader(Sender: TObject;
  AColumn: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFrmTabelaPreco.GridShowHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; BandIndex, RowIndex, ColIndex: Integer);
begin
    Synchronize;
end;

procedure TFrmTabelaPreco.TLCustomizeDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else column.Index := 0;
end;

procedure TFrmTabelaPreco.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
   Accept := Source = Sender;
end;

procedure TFrmTabelaPreco.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
   DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmTabelaPreco.ActConfiguraExecute(Sender: TObject);
begin
  pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmTabelaPreco.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmTabelaPreco.actExportarExecute(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Tabela de Preços.xls', Grid.SaveToXLS);
end;

procedure TFrmTabelaPreco.ActAlterarExecute(Sender: TObject);
begin
  if FrmTabelaPreco.ActiveControl = Grid then
  begin
    if DSItens.State in dsEditModes then
      exit;

    GRID.DataSource.Edit;
    DmEstoque.ItemTabelaPreco.edit;
  end
  else
  begin
    if DataSource.State in dsEditModes then
      exit;

    DataSource.DataSet.Edit;
    edDescricao.setfocus;
  end
end;

end.

