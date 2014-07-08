  unit SelLeituras_Form;

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
  ppStrtch, ppRichTx,  Grids, DBGrids, FileCtrl, Variants,
  dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinscxPCPainter, cxContainer, cxEdit, Menus,
  cxButtons, cxLabel, cxPC, cxSplitter, dxmdaset, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridLevel, cxGridCustomView, cxGrid, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxTextEdit, cxMaskEdit, cxSpinEdit;

type

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmSelLeituras = class(TForm)
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    BtnFechar: TdxBarButton;
    ActFechar: TAction;
    DataSource: TDataSource;
    ActExcluir: TAction;
    ActPaginaDn: TAction;
    ActPagUp: TAction;
    ActImprimir: TAction;
    ActAtualizar: TAction;
    ActRelatorio: TAction;
    stgManLeituras4: TcxPropertiesStore;
    ActConfCampos: TAction;
    ActExportarExcel: TAction;
    ActExportarHtml: TAction;
    SaveDialog: TSaveDialog;
    ActResumoGrafico: TAction;
    pgcLeituras: TcxPageControl;
    tabManutencao: TcxTabSheet;
    pnlClient: TPanel;
    Bevel1: TBevel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel1: TPanel;
    Panel5: TPanel;
    pc: TcxPageControl;
    Panel3: TPanel;
    Image1: TImage;
    LblTitulo: TcxLabel;
    b2: TBevel;
    GRID: TdxDBGrid;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDLT_CODIGO: TdxDBGridMaskColumn;
    GRIDLT_CONTRATO: TdxDBGridMaskColumn;
    GRIDLT_DATA_REFERENCIA: TdxDBGridDateColumn;
    GRIDLT_DATA: TdxDBGridMaskColumn;
    GRIDLT_FECHADA: TdxDBGridMaskColumn;
    GRIDLT_GERA_FATURAMENTO: TdxDBGridMaskColumn;
    GRIDLT_TOTAL_COPIAS: TdxDBGridMaskColumn;
    GRIDLT_COPIAS_EXCESSO: TdxDBGridMaskColumn;
    GRIDLT_VALOR_LEITURA: TdxDBGridMaskColumn;
    GRIDLT_CTR_VALOR: TdxDBGridMaskColumn;
    GRIDLT_CTR_FRANQUIA: TdxDBGridMaskColumn;
    GRIDLT_CTR_VALOR_COPIA_EXCEDENTE: TdxDBGridMaskColumn;
    GRIDCLI_CODIGO: TdxDBGridMaskColumn;
    GRIDCLI_NOME: TdxDBGridMaskColumn;
    GRIDCLI_FONE: TdxDBGridMaskColumn;
    GRIDCLI_CONTATO: TdxDBGridMaskColumn;
    GRIDCDD_NOME: TdxDBGridMaskColumn;
    GRIDTIPO_CONTRATO: TdxDBGridMaskColumn;
    GRIDCT_NUM_CONTRATO: TdxDBGridMaskColumn;
    GRIDCT_DT_INICIO: TdxDBGridDateColumn;
    GRIDCT_DT_FIM: TdxDBGridDateColumn;
    GRIDCT_FRANQUIA_COPIAS: TdxDBGridMaskColumn;
    GRIDCT_GERA_LEITURA: TdxDBGridMaskColumn;
    GRIDCT_VALOR_CONTRATO: TdxDBGridMaskColumn;
    GRIDCT_VALOR_COPIA_EXCEDENTE: TdxDBGridMaskColumn;
    GRIDCT_ATIVO: TdxDBGridMaskColumn;
    GRIDVENDA: TdxDBGridMaskColumn;
    ActEstornarLeitura: TAction;
    ActGerarLeituras: TAction;
    GRIDREG_NOME: TdxDBGridMaskColumn;
    GRIDDIA_BASE: TdxDBGridMaskColumn;
    Label1: TcxLabel;
    CmbCliente: TdxButtonEdit;
    lblnome: TcxLabel;
    Label2: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    Label4: TcxLabel;
    Label3: TcxLabel;
    edStatus: TdxPickEdit;
    ActFiltrar: TAction;
    Panel4: TPanel;
    BtnFaturarVenda: TcxButton;
    RzBitBtn2: TcxButton;
    BtnExtornaVenda: TcxButton;
    BtnExportarExcel: TcxButton;
    BtnExportarHtml: TcxButton;
    RzBitBtn1: TcxButton;
    RzBitBtn5: TcxButton;
    RzBitBtn3: TcxButton;
    RzBitBtn4: TcxButton;
    cxSplitter1: TcxSplitter;
    tbsHistorico: TcxTabSheet;
    Panel2: TPanel;
    Image2: TImage;
    Bevel2: TBevel;
    cxLabel1: TcxLabel;
    qryHistLeituras: TIBQuery;
    qryHistLeiturasLEITURA: TIntegerField;
    qryHistLeiturasDATA: TDateField;
    qryHistLeiturasULTIMA_LEITURA: TIntegerField;
    qryHistLeiturasLEITURA_ATUAL: TIntegerField;
    mtbFiltro: TdxMemData;
    mtbFiltroPRODUTO: TStringField;
    DataSource1: TDataSource;
    GridHistLeituras: TcxGrid;
    TVHistLeituras: TcxGridDBBandedTableView;
    LVHistLeituras: TcxGridLevel;
    dsHistorico: TDataSource;
    qryHistLeiturasSALDO_LEITURA: TIntegerField;
    qryHistLeiturasCOD_ITEM_CONTRATO: TIntegerField;
    qryHistLeiturasDATA_REFERENCIA: TDateField;
    TVHistLeiturasLEITURA: TcxGridDBBandedColumn;
    TVHistLeiturasDATA: TcxGridDBBandedColumn;
    TVHistLeiturasULTIMA_LEITURA: TcxGridDBBandedColumn;
    TVHistLeiturasLEITURA_ATUAL: TcxGridDBBandedColumn;
    TVHistLeiturasSALDO_LEITURA: TcxGridDBBandedColumn;
    TVHistLeiturasCOD_ITEM_CONTRATO: TcxGridDBBandedColumn;
    TVHistLeiturasDATA_REFERENCIA: TcxGridDBBandedColumn;
    cxGridPopupMenu1: TcxGridPopupMenu;
    Action1: TAction;
    dxBarButton1: TdxBarButton;
    lblProduto: TcxLabel;
    edProduto: TdxButtonEdit;
    cxLabel3: TcxLabel;
    Panel6: TPanel;
    cxButton1: TcxButton;
    qryHistLeiturasDATA_REFERENCIA_ANTERIOR: TDateField;
    qryHistLeiturasSALDO_DATAS: TIntegerField;
    TVHistLeiturasDATA_REFERENCIA_ANTERIOR: TcxGridDBBandedColumn;
    TVHistLeiturasSALDO_DATAS: TcxGridDBBandedColumn;
    qryHistLeiturasVMC_DATA_UPD: TDateTimeField;
    qryHistLeiturasVMC_TIPO_UPD: TIBStringField;
    qryHistLeiturasVMC_COD_UPD: TIntegerField;
    GroupBox3: TGroupBox;
    dxDBEdit2: TdxDBEdit;
    cxLabel2: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    cxLabel4: TcxLabel;
    dxDBDateEdit4: TdxDBDateEdit;
    cxLabel5: TcxLabel;
    dxDBEdit4: TdxDBEdit;
    cxLabel6: TcxLabel;
    edtQtdeLeitura: TcxSpinEdit;
    cxLabel7: TcxLabel;
    qryHistLeiturasMEDIA_COPIAS: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure EdDataNotaKeyPress(Sender: TObject; var Key: Char);
    procedure ActAlterarExecute(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmbClienteEnter(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure GRIDHeaderMoved(Sender: TObject; Column: TdxTreeListColumn);
    procedure GRIDHideHeader(Sender: TObject; AColumn: TdxTreeListColumn);
    procedure GRIDShowHeader(Sender: TObject; AColumn: TdxTreeListColumn;
      BandIndex, RowIndex, ColIndex: Integer);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure ActExportarHtmlExecute(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure TimerTimer(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure GRIDCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure CmbClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDataBaseEnter(Sender: TObject);
    procedure edDataBaseExit(Sender: TObject);
    procedure edDataBaseKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdTipoContratoEnter(Sender: TObject);
    procedure EdTipoContratoExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ActEstornarLeituraExecute(Sender: TObject);
    procedure ActGerarLeiturasExecute(Sender: TObject);
    procedure CmbClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ActFiltrarExecute(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure edProdutoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
  private
    DragNode: TdxTreeListNode;
    sqlOriginal : string;
    { Private declarations }
    procedure Synchronize;
    procedure Filtrar;
  public
    { Public declarations }
    Importa: Boolean ;
  end;

var
  FrmSelLeituras: TFrmSelLeituras;

implementation

uses
     Main,
     Usuarios_DM,
     Funcoes,
     Application_DM,
     Splash_Form,
     Cadastros_Dm2, Leituras_Form, GerarLeituras_Form, Localizar_Cliente,
  Vendas_Dm, Localizar_Produto_Cadastro_Auto, Cadastros_DM;

  {$R *.DFM}



procedure TFrmSelLeituras.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio :string;
begin
  If MessageDlg('Sair da Manutenção de Leituras?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk then
  begin
     //
    If DataSource.DataSet.Tag = 0 Then
      DataSource.DataSet.Close;

    FrmMain.PnlClient.Visible := True;
    Action := caFree;
    FrmSelLeituras := Nil;

  end
  else
    Action := CaNone ;


  Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
  if not DirectoryExists(Diretorio) then
  begin
     ForceDirectories(Diretorio);
     MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
  end;

  SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdLeitura.txt',Grid.Filter);
  dmCadastros2.SelLeituras.sql.text := sqlOriginal ;
end;

procedure TFrmSelLeituras.FormShow(Sender: TObject);
begin
     Importa := False ;
     mtbFiltro.Close;
     mtbFiltro.Open;
     mtbFiltro.Edit;
     
     pgcLeituras.ActivePageIndex := 0;

     IniciaComponentes ( Self as TForm );

     edDtInicial.date := DmApp.Data_Servidor;

     with dmCadastros2 do
     begin
       SelContratosLeitura.Close;
       SelContratosLeitura.Open;
       SelContratosLeitura.FetchAll;
     end;

     Grid.FullExpand;
     pnlCampos.visible := false;
     GRID.setfocus ;
     filtrar;
end;

procedure TFrmSelLeituras.FormCreate(Sender: TObject);
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  Synchronize;

  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdLeitura.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdLeitura.txt',Grid.Filter);

  sqlOriginal := dmCadastros2.SelLeituras.sql.text;
end;

procedure TFrmSelLeituras.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelLeituras.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelLeituras.DataSourceStateChange(Sender: TObject);
begin
  //
  If Navigator.DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmSelLeituras.ActFecharExecute(Sender: TObject);
begin
  if FrmSelLeituras.FormStyle = fsMDIChild Then
    FrmMain.opFechar.OnClick(FrmMain.opFechar)
  else
    Close;
end;

procedure TFrmSelLeituras.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmSelLeituras.ActAlterarExecute(Sender: TObject);
begin
  If (Not DataSource.DataSet.Active) Or  (DataSource.DataSet.RecordCount = 0) Then
  begin
    ShowMessage('Você deve selecionar uma a leitura para alterá-la');
    grid.SetFocus;
    Exit;
  end;

  FrmLeituras := TFrmLeituras.Create(Self);
  DMCadastros2.Leitura.close;
  DMCadastros2.Leitura.parambyname('cnpj').value := dmApp.cnpj;
  DMCadastros2.Leitura.parambyname('codigo').value := DMCadastros2.SelLeiturasLT_CODIGO.value;
  DMCadastros2.Leitura.Open;
  FrmLeituras.Showmodal ;
  Filtrar;
  grid.setfocus ;
end;

procedure TFrmSelLeituras.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmSelLeituras.ActExcluirExecute(Sender: TObject);
begin
  if (dmCadastros2.SelLeiturasLT_FECHADA.value = 'Sim') then
  begin
    Application.MessageBox('Impossível excluir a leitura já se encontra fechada','Aviso', mb_iconerror + mb_ok);
    exit;
  end;

  if MessageDlg ('Deseja realmente excluir esta leitura?',MtInformation,[MbOk, MbCancel],1) = MrOk THEN
  begin
     try
       dmCadastros2.Exclui_Leitura(dmApp.cnpj, DMCadastros2.SelLeiturasLT_CODIGO.value);

       Filtrar;
     except
       On E:EDataBaseError Do
       begin
        Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message),'Aviso',mb_iconerror+mb_ok);
        Exit;
       end
       else
       begin
         Application.Messagebox('Ocorreu um erro não identificado pelo sistema !','Aviso',mb_iconerror+mb_ok);
         Exit;
       end;
     end
  end;
end;

procedure TFrmSelLeituras.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If Key = 13 then
    ActAlterar.Execute ;
end;

procedure TFrmSelLeituras.CmbClienteEnter(Sender: TObject);
begin
   CorFundo ( Sender );
end;

procedure TFrmSelLeituras.edDtInicialEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFrmSelLeituras.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = 13 then
    ActAlterar.Execute ;
    
end;

procedure TFrmSelLeituras.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
{  if ANode.HasChildren then
    Exit;

  if not ASelected and (AColumn = GRIDST_NOME) then
  begin
    Value := ANode.Values[AColumn.Index];
    if ((not VarIsNull(Value)) and (Value <> '')) then
      AColor := ANode.Values[GRIDST_cor.index];
  end;}
end;

procedure TFrmSelLeituras.TLCustomizeDragDrop(Sender, Source: TObject; X,
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

procedure TFrmSelLeituras.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmSelLeituras.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmSelLeituras.Synchronize;
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

procedure TFrmSelLeituras.GRIDHeaderMoved(Sender: TObject;
  Column: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFrmSelLeituras.GRIDHideHeader(Sender: TObject;
  AColumn: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFrmSelLeituras.GRIDShowHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; BandIndex, RowIndex, ColIndex: Integer);
begin
  Synchronize;
end;

procedure TFrmSelLeituras.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmSelLeituras.ActConfCamposExecute(Sender: TObject);
begin
  pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmSelLeituras.ActExportarExcelExecute(Sender: TObject);
begin
  if pgcLeituras.ActivePageIndex = 0 then
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Leituras.xls', Grid.SaveToXLS)
  else
    dmApp.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Historico de Leituras.xls', GridHistLeituras);
end;

procedure TFrmSelLeituras.ActExportarHtmlExecute(Sender: TObject);
begin
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Leituras.html', Grid.SaveToHTML);
end;

procedure TFrmSelLeituras.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmSelLeituras.TimerTimer(Sender: TObject);
begin
  ActAtualizar.execute;
end;

procedure TFrmSelLeituras.ActIncluirExecute(Sender: TObject);
begin
  FrmLeituras := TFrmLeituras.Create(Self);
  DMCadastros2.Leitura.Close;
  DMCadastros2.Leitura.Open;
  DMCadastros2.Leitura.Append ;
  FrmLeituras.Showmodal;
  Filtrar;
  grid.setfocus;
end;

procedure TFrmSelLeituras.GRIDCustomDraw(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
  const AText: String; AFont: TFont; var AColor: TColor; ASelected,
  AFocused: Boolean; var ADone: Boolean);
var
  Value: Variant;
begin
  if ANode.HasChildren then
    Exit;

  if not ASelected then
  begin
    Value := ANode.Values[GRIDLT_CODIGO.index];
    if (not VarIsNull(Value)) then
    begin
        if((ANode.Values[GRIDLT_GERA_FATURAMENTO.index]) = 'Sim' )then
          AColor := $00ECAD84
        else if((ANode.Values[GRIDLT_FECHADA.index]) = 'Sim' )then
          AColor := $0047EFF8
        else
          AColor := $00A2E6B8
    end;
  end;
end;

procedure TFrmSelLeituras.ActAtualizarExecute(Sender: TObject);
begin
  Grid.FullExpand;
  dmApp.Data_Servidor := dmApp.Dataservidor;
end;

procedure TFrmSelLeituras.CmbClienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelLeituras.edDataBaseEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelLeituras.edDataBaseExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TFrmSelLeituras.edDataBaseKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelLeituras.EdTipoContratoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelLeituras.EdTipoContratoExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmSelLeituras.FormActivate(Sender: TObject);
begin
  FrmSelLeituras.WindowState := wsMaximized;
end;

procedure TFrmSelLeituras.ActEstornarLeituraExecute(Sender: TObject);
VAR
  RETORNO : INTEGER;
begin
  if (dmCadastros2.SelLeiturasLT_FECHADA.value = 'Não') then
  begin
    Application.MessageBox('Impossível estornar. A leitura está em aberto','Aviso', mb_iconerror + mb_ok);
    exit;
  end;

  if MessageDlg ('Deseja realmente estornar esta leitura?',MtInformation,[MbOk, MbCancel],1) = MrOk THEN
  begin
     try

       retorno := dmCadastros2.Estorna_Leitura(dmApp.cnpj, DMCadastros2.SelLeiturasLT_CODIGO.value, DMCadastros2.SelLeiturasVENDA.value);
       if (Retorno > 0) then
         Application.MessageBox(Pchar('Antes de realizar o estorno será necessário excluir o faturamento: '+IntToStr(Retorno)),'Aviso', mb_iconerror + mb_ok)
       else
         Application.MessageBox('Estorno realizado com sucesso','Aviso', mb_iconinformation + mb_ok);

       DataSource.DataSet.Close;
       DataSource.DataSet.Open;
     except
       On E:EDataBaseError Do
       begin
         Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message),'Aviso',mb_iconerror+mb_ok);
         Exit;
       end
       else
       begin
         Application.Messagebox('Ocorreu um erro não identificado pelo sistema !','Aviso',mb_iconerror+mb_ok);
         Exit;
       end;
     end
  end;
end;

procedure TFrmSelLeituras.ActGerarLeiturasExecute(Sender: TObject);
var
  DataRef : TDate;
begin
  if Application.MessageBox('Deseja realmente gerar leituras para TODOS os contratos ATIVOS?','Aviso', mb_iconquestion + mb_yesno) = id_no then
    exit;

  try
    frmGerarLeituras := TfrmGerarLeituras.Create(Self);
    frmGerarLeituras.showmodal;
    if frmGerarLeituras.modalResult = mrOK then
    begin
      dmcadastros2.GeraLeituras.ParamByName('CNPJ').asString := dmApp.cnpj;
      dmcadastros2.GeraLeituras.ParamByName('DATA_REFERENCIA').asDate := frmGerarLeituras.DataRef.Date;
      dmcadastros2.GeraLeituras.ExecProc;
      dmcadastros2.GeraLeituras.Transaction.CommitRetaining;
      showmessage('gerado');
    end;

    frmGerarLeituras.Free;
    frmGerarLeituras :=  nil;
  except
    On E:EDataBaseError Do
    begin
      Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message),'Aviso',mb_iconerror+mb_ok);
      Exit;
    end
    else
    begin
      Application.Messagebox('Ocorreu um erro não identificado pelo sistema !','Aviso',mb_iconerror+mb_ok);
      Exit;
    end;
  end

end;

procedure TFrmSelLeituras.CmbClienteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if Frm_Localizar_Cliente = nil then
    Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

  Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

  if (Frm_Localizar_Cliente.showmodal = mrOk ) Then
  Begin
    CmbCliente.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho);
    lblnome.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value;
  end
end;

procedure TFrmSelLeituras.Filtrar;
var
  sFiltro, sql : string;
begin
  if pgcLeituras.ActivePageIndex = 0 then
  begin
    sFiltro := '';
    if CmbCliente.Text <> '' then
      sFiltro := ' and ct.cod_cliente = '+trim(CmbCliente.Text);

    if (edDtInicial.Date > 0) then
      sFiltro := sFiltro + ' and lt.data_referencia >= '''+formatdatetime('mm/dd/yyyy',edDtInicial.Date)+'''';

    if (edDtFinal.Date > 0) then
      sFiltro := sFiltro + ' and lt.data_referencia <= '''+formatdatetime('mm/dd/yyyy',edDtFinal.Date)+'''';

    case edStatus.ItemIndex of
      0: sFiltro := sFiltro + ' and lt.fechada = ''N''';
      1: sFiltro := sFiltro + ' and lt.gera_faturamento = ''S''';
      2: sFiltro := sFiltro + ' and lt.fechada = ''S''';
    end;

    with dmCadastros2 do
    begin
      SelLeituras.Close;
      SelLeituras.sql.text := sqlOriginal + sFiltro + ' order by lt.CODIGO ' ;
      SelLeituras.Open;
    end
  end
  else
  begin
    lblproduto.caption := trim(edProduto.text);

    if edtQtdeLeitura.Value <= 0 then
    begin
      Application.MessageBox('A quantidade de leituras a serem exibidas deve ser maior que Zero (0). Verifique','Aviso', mb_iconerror + mb_ok);
      edtQtdeLeitura.setfocus;
      exit;
    end;

   sql :=  ' select first '+edtQtdeLeitura.Text+' lti.leitura, lt.data, lti.ultima_leitura, lti.leitura_atual, lt.data_referencia, lti.cod_item_contrato,'
          +' lti.saldo_leitura,'
          +' ( select max(lt2.data_referencia) from ofc_leituras lt2'
          +'   inner join ofc_leituras_itens lti2 on (lti2.cnpj = lt2.cnpj and lti2.leitura = lt2.codigo)'
          +'   where lti2.cnpj = lti.cnpj and lti2.cod_item_contrato = lti.cod_item_contrato'
          +'   and lt2.data_referencia < lt.data_referencia'
          +'  ) data_referencia_anterior,'

          +'  (lt.data_referencia'
          +'  -'
          +'  ( select max(lt2.data_referencia) from ofc_leituras lt2'
          +'   inner join ofc_leituras_itens lti2 on (lti2.cnpj = lt2.cnpj and lti2.leitura = lt2.codigo)'
          +'   where lti2.cnpj = lti.cnpj and lti2.cod_item_contrato = lti.cod_item_contrato'
          +'   and lt2.data_referencia < lt.data_referencia'
          +'  )'
          +'  ) saldo_datas,'
          +'  cti.vmc_data_upd,'
          +'  cti.vmc_tipo_upd,'
          +'  cti.vmc_cod_upd,'
          +' cti.media_copias'
          +' from ofc_leituras lt'
          +' inner join ofc_leituras_itens lti on (lti.cnpj = lt.cnpj and lti.leitura = lt.codigo)'
          +' inner join ofc_contratos_itens cti on (cti.cnpj = lti.cnpj and cti.codigo = lti.cod_item_contrato)'
          +' inner join est_produtos prd on (prd.cnpj = cti.cnpj and prd.codigo = cti.cod_produto)'
          +' where  prd.cnpj = :cnpj and prd.codigo = :codigo'
          +' order by lt.data_referencia desc,  lti.leitura_atual desc';


    qryHistLeituras.Close;
    qryHistLeituras.sql.text := sql;
    qryHistLeituras.ParamByName('cnpj').value := dmApp.cnpj;
    qryHistLeituras.ParamByName('codigo').value := edProduto.Text;
    qryHistLeituras.Open;

    if qryHistLeituras.RecordCount = 0 then
    begin
      Application.MessageBox('Nenhuma Leitura encontrada para este Equipamento','Aviso', mb_iconerror + mb_ok);
      exit;
    end;
  end;
end;

procedure TFrmSelLeituras.ActFiltrarExecute(Sender: TObject);
begin
 Filtrar;
end;

procedure TFrmSelLeituras.Panel3Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelLeituras.edProdutoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if FrmLocProdutoCadastro_Auto = nil then
    Application.CreateForm(TFrmLocProdutoCadastro_Auto, FrmLocProdutoCadastro_Auto) ;

  if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
  begin
     edProduto.Text := (FrmLocProdutoCadastro_Auto.CampTrecho);
     lblProduto.Caption := DMCadastros.qryLocalizarProdutoNOME.value;
     mtbFiltroPRODUTO.value := ( FrmLocProdutoCadastro_Auto.CampTrecho );
  end;

   edProduto.SetFocus ;

end;

end.
