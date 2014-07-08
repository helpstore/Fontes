unit BIEstoqueGrade_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  IBquery,   rdprint, dxPSCore,
  dxPSContainerLnk, dxPgsDlg, cxPropertiesStore, dxTLClms, ppPrnabl,
  ppClass, ppCtrls, ppCache, ppBands, ppComm, ppRelatv,
  ppProd, ppReport, ppDB, ppDBPipe, ppParameter, ppModule, raCodMod, ppVar,
  ppStrtch, ppRichTx,    Grids, DBGrids, FileCtrl, Variants,
  dxLayout, dxGrClEx, cxClasses, cxGraphics, cxCustomData, cxStyles,
  cxControls, cxCustomPivotGrid, cxDBPivotGrid,cxExportPivotGridLink,
  cxFilterControl, cxDBFilterControl, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, dxmdaset, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsdxBarPainter, dxSkinscxPCPainter, cxPC, cxLabel;

type

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmBIEstoqueGrade = class(TForm)
    Navigator: TdxBarDBNavigator;
    Actions: TActionList;
    ActFechar: TAction;
    DataSource: TDataSource;
    ActAtualizar: TAction;
    stgGrdRomaneios: TcxPropertiesStore;
    ActExportarExcel: TAction;
    ActExportarHtml: TAction;
    SaveDialog: TSaveDialog;
    ActResumoGrafico: TAction;
    pgcOServico: TcxPageControl;
    pnlClient: TPanel;
    Bevel1: TBevel;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel8: TPanel;
    Image2: TImage;
    lblTitulo: TcxLabel;
    Bevel2: TBevel;
    PageControl: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Panel5: TPanel;
    pc: TcxPageControl;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    BtnFechar: TdxBarButton;
    btnExpExcel: TdxBarButton;
    ActSeleciona: TAction;
    ActQuitarComissao: TAction;
    GridProdutos: TcxDBPivotGrid;
    stgFrmBIEstoqueGrade2: TcxPropertiesStore;
    Label8: TcxLabel;
    cmbMarca: TcxDBLookupComboBox;
    DsFornecedor: TDataSource;
    dsSecoes: TDataSource;
    dsMarcas: TDataSource;
    DsCor: TDataSource;
    DsMaterial: TDataSource;
    Label1: TcxLabel;
    cmbFornecedor: TcxDBLookupComboBox;
    cmbSecao: TcxDBLookupComboBox;
    Label2: TcxLabel;
    DsPerfil: TDataSource;
    cmbPerfil: TcxDBLookupComboBox;
    Label3: TcxLabel;
    cmbGrupo: TcxDBLookupComboBox;
    Label4: TcxLabel;
    cmbSubGrupo: TcxDBLookupComboBox;
    Label5: TcxLabel;
    dsGrupos: TDataSource;
    dsSubGrupos: TDataSource;
    mtbFiltro: TdxMemData;
    mtbFiltroMARCA: TIntegerField;
    mtbFiltroFORNECEDOR: TIntegerField;
    mtbFiltroSECAO: TIntegerField;
    mtbFiltroPERFIL: TIntegerField;
    mtbFiltroGRUPO: TIntegerField;
    mtbFiltroSUBGRUPO: TIntegerField;
    dsFiltro: TDataSource;
    GridProdutosCOD_PRODUTO: TcxDBPivotGridField;
    GridProdutosPRODUTO: TcxDBPivotGridField;
    GridProdutosMARCA: TcxDBPivotGridField;
    GridProdutosFORNECEDOR: TcxDBPivotGridField;
    GridProdutosGRUPO: TcxDBPivotGridField;
    GridProdutosSUBGRUPO: TcxDBPivotGridField;
    GridProdutosSECAO: TcxDBPivotGridField;
    GridProdutosMODELO: TcxDBPivotGridField;
    GridProdutosCOR_PRODUTO: TcxDBPivotGridField;
    GridProdutosMATERIAL_PRODUTO: TcxDBPivotGridField;
    GridProdutosMATERIAL_GRADE: TcxDBPivotGridField;
    GridProdutosSALDO_FISICO_PRODUTO: TcxDBPivotGridField;
    GridProdutosSALDO_FINANCEIRO_PRODUTO: TcxDBPivotGridField;
    GridProdutosPROD_PESAVEL: TcxDBPivotGridField;
    GridProdutosETIQUETA_ENT: TcxDBPivotGridField;
    GridProdutosMATERIA_GRADE: TcxDBPivotGridField;
    GridProdutosCOR_GRADE: TcxDBPivotGridField;
    GridProdutosNOME_PERFIL: TcxDBPivotGridField;
    GridProdutosSERVICO: TcxDBPivotGridField;
    GridProdutosCOMPLEMENTO: TcxDBPivotGridField;
    GridProdutosPOSSUI_LOTE: TcxDBPivotGridField;
    GridProdutosTRIB_ALIQ_EST: TcxDBPivotGridField;
    GridProdutosTRIB_ALIQ_INT: TcxDBPivotGridField;
    GridProdutosREDUCAO: TcxDBPivotGridField;
    GridProdutosTRIB_MODALIDADE: TcxDBPivotGridField;
    GridProdutosSALDO_FISICO_GRADE_PERFIL: TcxDBPivotGridField;
    GridProdutosSALDO_FINANCEIRO_GRADE_PERFIL: TcxDBPivotGridField;
    GridProdutosNUMERO: TcxDBPivotGridField;
    GridProdutosSALDO_FISICO_NUMERO: TcxDBPivotGridField;
    GridProdutosORDEM: TcxDBPivotGridField;
    GridProdutosNUM_ORD: TcxDBPivotGridField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure EdDataNotaKeyPress(Sender: TObject; var Key: Char);
    procedure Panel2Enter(Sender: TObject);
    procedure CmbClienteEnter(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure GRIDPEDIDOSCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure GRIDPEDIDOSHeaderMoved(Sender: TObject; Column: TdxTreeListColumn);
    procedure GRIDPEDIDOSHideHeader(Sender: TObject; AColumn: TdxTreeListColumn);
    procedure GRIDPEDIDOSShowHeader(Sender: TObject; AColumn: TdxTreeListColumn;
      BandIndex, RowIndex, ColIndex: Integer);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure TimerTimer(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure CmbClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDataBaseEnter(Sender: TObject);
    procedure edDataBaseExit(Sender: TObject);
    procedure edDataBaseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdTipoContratoEnter(Sender: TObject);
    procedure EdTipoContratoExit(Sender: TObject);
    procedure GRIDPREVENTIVACustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure dxTreeListCheckColumn1ToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure FormActivate(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure dxTabSheet1Show(Sender: TObject);
    procedure cmbMarcaEnter(Sender: TObject);
    procedure cmbMarcaExit(Sender: TObject);
    procedure cmbMarcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    DragNode: TdxTreeListNode;
    { Private declarations }
    Procedure Filtrar;
    procedure Synchronize;
  public
    { Public declarations }
    Importa: Boolean ;
  end;

var
  FrmBIEstoqueGrade: TFrmBIEstoqueGrade;
  FinalArq, FinalCli: Boolean ;
  Chamou : Boolean ;
  sqlOriginal : string;
implementation

uses
     Main,
     Usuarios_DM,
     Funcoes,
     Application_DM,
     LocalizarProd_DM,
     Splash_Form,
     Localizar_Cliente,
      Tipo_Impressora_Form,
  EntraNumeroOrcamento_Form, EntraNumeroOrcamento_Ordem_Form,
  Localizar_Produto_Cadastro_Auto, Vendas_Dm, DateUtils, Financeiro_Dm2,
  Cm2_GeraFinanceiro, Estoque_Dm, Romaneios_Form, Cadastros_Dm2,
  Relatorios_DM2, Cadastros_DM;

  {$R *.DFM}

Procedure TFrmBIEstoqueGrade.Filtrar;
var
  filtro : string;
Begin
  filtro := '';
  with dmRelatorios2 do
  begin
    QryCuboEstoque.Close;
    QryCuboEstoque.parambyname('cnpj').value := dmApp.cnpj;
    if (cmbMarca.Text <> '') then
      QryCuboEstoque.parambyname('marca').value := mtbFiltroMARCA.value
    else
      QryCuboEstoque.parambyname('marca').value := 0;

    if (cmbFornecedor.Text <> '') then
      QryCuboEstoque.parambyname('fornecedor').value := mtbFiltroFORNECEDOR.value
    else
      QryCuboEstoque.parambyname('fornecedor').value := 0;

    if (cmbSecao.Text <> '') then
      QryCuboEstoque.parambyname('secao').value := mtbFiltroSECAO.value
    else
      QryCuboEstoque.parambyname('secao').value := 0;

    if (cmbPerfil.Text <> '') then
      QryCuboEstoque.parambyname('perfil').value := mtbFiltroPERFIL.value
    else
      QryCuboEstoque.parambyname('perfil').value := 0;

    if (cmbGrupo.Text <> '') then
      QryCuboEstoque.parambyname('grupo').value := mtbFiltroGRUPO.value
    else
      QryCuboEstoque.parambyname('grupo').value := 0;

    if (cmbGrupo.Text <> '') then
      QryCuboEstoque.parambyname('subgrupo').value := mtbFiltroSUBGRUPO.value
    else
      QryCuboEstoque.parambyname('subgrupo').value := 0;

    QryCuboEstoque.Open;
  end;
end;

procedure TFrmBIEstoqueGrade.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio :string;
begin
     If MessageDlg('Sair da seleção de romaneios?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
     then begin
          //
          If DataSource.DataSet.Tag = 0 Then
             DataSource.DataSet.Close;

          FrmMain.PnlClient.Visible := True;

          Action := caFree;
          FrmBIEstoqueGrade := Nil;

     end
     else begin
          Action := CaNone ;
     end;

     Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
     if not DirectoryExists(Diretorio) then
     begin
       ForceDirectories(Diretorio);
       MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
     end;
     //SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdRomaneios.txt',GRIDPEDIDOS.Filter);
     dmEstoque.qryRomaneios.sql.Text := sqlOriginal;
end;

procedure TFrmBIEstoqueGrade.FormShow(Sender: TObject);
begin
     Importa := False ;
     IniciaComponentes ( Self as TForm );

     PageControl.ActivePageIndex := 0;


     //Cria o Formulario de Localizar Cliente
     Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

//     GRIDPEDIDOS.FullExpand;
     pnlCampos.visible := false;
     cmbMarca.setfocus;
     mtbFiltro.Open;
     mtbFiltro.Append;
     
     DMCadastros.Marcas.Close;
     DMCadastros.Marcas.Open;

     DMCadastros.SelFornecedor.Close;
     DMCadastros.SelFornecedor.Open;

     dmCadastros2.qrySelSecoes.Close;
     dmCadastros2.qrySelSecoes.Open;

     DMCadastros.Perfil_Grades.Close;
     DMCadastros.Perfil_Grades.Open;

     DMCadastros.Grupos.Close;
     DMCadastros.Grupos.Open;

     DMCadastros.SubgruposProd.Close;
     DMCadastros.SubgruposProd.Open;
end;

procedure TFrmBIEstoqueGrade.FormCreate(Sender: TObject);
var
  dia, mes, ano : integer;
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
    DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else If DMUsuarios.Objeto = Self.Name Then
    AtivaActions(Actions, DMUsuarios.Direito);

  sqlOriginal := dmEstoque.qryRomaneios.sql.Text;


  Synchronize;

//  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdRomaneios.txt') then
//    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdRomaneios.txt',GRIDPEDIDOS.Filter);

end;

procedure TFrmBIEstoqueGrade.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmBIEstoqueGrade.pnlClientResize(Sender: TObject);
begin
//  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmBIEstoqueGrade.DataSourceStateChange(Sender: TObject);
begin
  //
  If Navigator.DataSource.State in dsEditModes Then
     Begin
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmBIEstoqueGrade.ActFecharExecute(Sender: TObject);
begin
  if FrmBIEstoqueGrade.FormStyle = fsMDIChild Then
    FrmMain.opFechar.OnClick(FrmMain.opFechar)
  else
    Close;
end;

procedure TFrmBIEstoqueGrade.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = '-' Then
     Begin
       (Sender as TdxDBDateEdit).Date := (Sender as TdxDBDateEdit).Date -1;
       (Sender as TdxDBDateEdit).SelectAll;
       Key := #0;
     End;
  If Key = '+' Then
     Begin
       (Sender as TdxDBDateEdit).Date := (Sender as TdxDBDateEdit).Date +1;
       (Sender as TdxDBDateEdit).SelectAll;
       Key := #0;
     End;
end;

procedure TFrmBIEstoqueGrade.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmBIEstoqueGrade.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmBIEstoqueGrade.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmBIEstoqueGrade.GRIDPEDIDOSCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if ANode.HasChildren then
    Exit;

 { if not ASelected and (AColumn = GRIDVALOR) then
  begin
    Value   := ANode.Values[AColumn.Index];
    if (not VarIsNull(Value)) then
    begin
        if(value > 0)then
          AColor := $00B3FFB3
        else
          AColor := $008484FF;
    end;
  end; }


end;

procedure TFrmBIEstoqueGrade.TLCustomizeDragDrop(Sender, Source: TObject; X,
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

procedure TFrmBIEstoqueGrade.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmBIEstoqueGrade.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmBIEstoqueGrade.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
 { TLCustomize.ClearNodes;
  for I := 0 to GRIDPEDIDOS.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := GRIDPEDIDOS.Columns[I].Caption;
    if GRIDPEDIDOS.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GRIDPEDIDOS.Columns[I];
  end; }
end;

procedure TFrmBIEstoqueGrade.GRIDPEDIDOSHeaderMoved(Sender: TObject;
  Column: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFrmBIEstoqueGrade.GRIDPEDIDOSHideHeader(Sender: TObject;
  AColumn: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFrmBIEstoqueGrade.GRIDPEDIDOSShowHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; BandIndex, RowIndex, ColIndex: Integer);
begin
  Synchronize;
end;

procedure TFrmBIEstoqueGrade.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   //column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmBIEstoqueGrade.ActConfCamposExecute(Sender: TObject);
begin
  pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmBIEstoqueGrade.ActExportarExcelExecute(Sender: TObject);
begin
  if SaveDialog.Execute then
    cxExportPivotGridToExcel(SaveDialog.FileName, GridProdutos);
end;

procedure TFrmBIEstoqueGrade.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmBIEstoqueGrade.TimerTimer(Sender: TObject);
begin
  ActAtualizar.execute;
end;

procedure TFrmBIEstoqueGrade.ActIncluirExecute(Sender: TObject);
begin
//  GridProdutos.setfocus ;
end;

procedure TFrmBIEstoqueGrade.ActAtualizarExecute(Sender: TObject);
begin
//  GridProdutos.FullExpand;
end;

procedure TFrmBIEstoqueGrade.CmbClienteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (key=VK_RETURN) OR (Key=VK_DOWN) Then
    Begin
      Perform(WM_NEXTDLGCTL, 0, 0);
      If Self.ActiveControl = pc Then
        Perform(WM_NEXTDLGCTL, 0, 0);
    end;

    if (key=VK_UP) then
      Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmBIEstoqueGrade.edDataBaseEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmBIEstoqueGrade.edDataBaseExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmBIEstoqueGrade.edDataBaseKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmBIEstoqueGrade.EdTipoContratoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmBIEstoqueGrade.EdTipoContratoExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmBIEstoqueGrade.GRIDPREVENTIVACustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
var
  Value: Variant;
begin
end;

procedure TFrmBIEstoqueGrade.dxTreeListCheckColumn1ToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
end;

procedure TFrmBIEstoqueGrade.FormActivate(Sender: TObject);
begin
    FrmBIEstoqueGrade.WindowState := wsMaximized;
end;

procedure TFrmBIEstoqueGrade.Panel3Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmBIEstoqueGrade.dxTabSheet1Show(Sender: TObject);
begin
//  GridProdutos.SetFocus;
end;

procedure TFrmBIEstoqueGrade.cmbMarcaEnter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
end;

procedure TFrmBIEstoqueGrade.cmbMarcaExit(Sender: TObject);
begin
 TIRACORFUNDO( SENDER );
end;

procedure TFrmBIEstoqueGrade.cmbMarcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

end.
