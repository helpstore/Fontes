  unit SelMensalidades_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  IBquery,   rdprint, dxPSCore,
  dxPSContainerLnk, dxPgsDlg, cxPropertiesStore, dxTLClms, ppPrnabl,
  ppClass, ppCtrls,  ppCache, ppBands, ppComm, ppRelatv,
  ppProd, ppReport, ppDB, ppDBPipe, ppParameter, ppModule, raCodMod, ppVar,
  ppStrtch, ppRichTx,    Grids, DBGrids, FileCtrl, Variants,
  Menus, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinscxPCPainter, cxContainer, cxEdit,
  cxButtons, cxLabel, cxPC, cxSplitter;

type

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmSelMensalidades = class(TForm)
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
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
    stgManMensalidade: TcxPropertiesStore;
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
    ActEstornarLeitura: TAction;
    ActGerarLeituras: TAction;
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
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDFATURAMENTO: TdxDBGridMaskColumn;
    GRIDMS_CODIGO: TdxDBGridMaskColumn;
    GRIDMS_CONTRATO: TdxDBGridMaskColumn;
    GRIDMS_DATA_REFERENCIA: TdxDBGridDateColumn;
    GRIDMS_DATA: TdxDBGridDateColumn;
    GRIDMS_FECHADA: TdxDBGridMaskColumn;
    GRIDMS_GERA_FATURAMENTO: TdxDBGridMaskColumn;
    GRIDMS_VALOR: TdxDBGridMaskColumn;
    GRIDMS_CTR_VALOR: TdxDBGridMaskColumn;
    GRIDCLI_CODIGO: TdxDBGridMaskColumn;
    GRIDCLI_NOME: TdxDBGridMaskColumn;
    GRIDCLI_FONE: TdxDBGridMaskColumn;
    GRIDCLI_CONTATO: TdxDBGridMaskColumn;
    GRIDCDD_NOME: TdxDBGridMaskColumn;
    GRIDREG_NOME: TdxDBGridMaskColumn;
    GRIDTIPO_CONTRATO: TdxDBGridMaskColumn;
    GRIDCT_NUM_CONTRATO: TdxDBGridMaskColumn;
    GRIDCT_DT_INICIO: TdxDBGridDateColumn;
    GRIDCT_DT_FIM: TdxDBGridDateColumn;
    GRIDCT_VALOR_CONTRATO: TdxDBGridMaskColumn;
    GRIDCT_ATIVO: TdxDBGridMaskColumn;
    GRIDDIA_BASE: TdxDBGridMaskColumn;
    btnGeraFaturamento: TdxBarButton;
    ActGerarFaturamentos: TAction;
    PopSelecao: TPopupMenu;
    MarcarTodososRegistros1: TMenuItem;
    DesmarcarTodososRegistros1: TMenuItem;
    ActSelecionaTodos: TAction;
    ActDeselecionaTodos: TAction;
    ActGerarFaturamento: TAction;
    ActSeleciona: TAction;
    GRIDSELECIONADO: TdxDBGridCheckColumn;
    btnEstornarFaturamentos: TdxBarButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    ActEstornarFaturamento: TAction;
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
    procedure ActSelecionaTodosExecute(Sender: TObject);
    procedure ActDeselecionaTodosExecute(Sender: TObject);
    procedure ActGerarFaturamentoExecute(Sender: TObject);
    procedure ActSelecionaExecute(Sender: TObject);
    procedure ActGerarFaturamentosExecute(Sender: TObject);
    procedure ActEstornarFaturamentoExecute(Sender: TObject);
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
  FrmSelMensalidades: TFrmSelMensalidades;

implementation

uses
     Main,
     Usuarios_DM,
     Funcoes,
     Application_DM,
     Splash_Form,
     Cadastros_Dm2, Leituras_Form, GerarLeituras_Form, Localizar_Cliente,
  Vendas_Dm, GerarMensalidades_Form, Mensalidades_Form,
  GerarFaturamentos_Form;

  {$R *.DFM}



procedure TFrmSelMensalidades.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio :string;
begin
  If MessageDlg('Sair da Manutenção de Mensalidades?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk then
  begin
     //
    If DataSource.DataSet.Tag = 0 Then
      DataSource.DataSet.Close;

    FrmMain.PnlClient.Visible := True;
    Action := caFree;
    FrmSelMensalidades := Nil;

  end
  else
    Action := CaNone ;


  Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
  if not DirectoryExists(Diretorio) then
  begin
     ForceDirectories(Diretorio);
     MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
  end;

  SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdMensalidades.txt',Grid.Filter);
end;

procedure TFrmSelMensalidades.FormShow(Sender: TObject);
begin
     Importa := False ;

     if not (DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;

     with dmCadastros2 do
     begin
       SelContratosLeitura.Close;
       SelContratosLeitura.Open;
       SelContratosLeitura.FetchAll;
     end;
     
     Grid.FullExpand;
     pnlCampos.visible := false;
     GRID.setfocus ;
end;

procedure TFrmSelMensalidades.FormCreate(Sender: TObject);
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  Synchronize;

  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdLeitura.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdLeitura.txt',Grid.Filter);

  sqlOriginal := dmCadastros2.SelMensalidades.Selectsql.text;
end;

procedure TFrmSelMensalidades.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelMensalidades.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelMensalidades.DataSourceStateChange(Sender: TObject);
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

procedure TFrmSelMensalidades.ActFecharExecute(Sender: TObject);
begin
  if FrmSelMensalidades.FormStyle = fsMDIChild Then
    FrmMain.opFechar.OnClick(FrmMain.opFechar)
  else
    Close;
end;

procedure TFrmSelMensalidades.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmSelMensalidades.ActAlterarExecute(Sender: TObject);
begin
  If (Not DataSource.DataSet.Active) Or  (DataSource.DataSet.RecordCount = 0) Then
  begin
    ShowMessage('Você deve selecionar uma mensalidade para alterá-la');
    grid.SetFocus;
    Exit;
  end;

  frmMensalidade := TfrmMensalidade.Create(Self);
  DMCadastros2.Mensalidade.close;
  DMCadastros2.Mensalidade.parambyname('cnpj').value := dmApp.cnpj;
  DMCadastros2.Mensalidade.parambyname('codigo').value := DMCadastros2.SelMensalidadesMS_CODIGO.value;
  DMCadastros2.Mensalidade.Open;
  frmMensalidade.Showmodal;
  grid.setfocus ;
end;

procedure TFrmSelMensalidades.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmSelMensalidades.ActExcluirExecute(Sender: TObject);
begin
  if (dmCadastros2.SelMensalidadesMS_FECHADA.value = 'Sim') then
  begin
    Application.MessageBox('Impossível excluir. O registro já se encontra fechada','Aviso', mb_iconerror + mb_ok);
    exit;
  end;

  if MessageDlg ('Deseja realmente excluir esta mensalidade?',MtInformation,[MbOk, MbCancel],1) = MrOk THEN
  begin
     try
       dmCadastros2.Exclui_Mensalidade(dmApp.cnpj, DMCadastros2.SelMensalidadesMS_CODIGO.value);

       DataSource.DataSet.Close ;
       DataSource.DataSet.Open  ;
     except
       On E:Exception Do
       begin
        Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message),'Aviso',mb_iconerror+mb_ok);
        Exit;
       end;
     end;
  end;
end;

procedure TFrmSelMensalidades.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If Key = 13 then
    ActAlterar.Execute ;
end;

procedure TFrmSelMensalidades.CmbClienteEnter(Sender: TObject);
begin
   CorFundo ( Sender );
end;

procedure TFrmSelMensalidades.edDtInicialEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFrmSelMensalidades.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = 13 then
    ActAlterar.Execute ;
end;

procedure TFrmSelMensalidades.GRIDCustomDrawCell(Sender: TObject;
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

procedure TFrmSelMensalidades.TLCustomizeDragDrop(Sender, Source: TObject; X,
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

procedure TFrmSelMensalidades.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmSelMensalidades.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmSelMensalidades.Synchronize;
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

procedure TFrmSelMensalidades.GRIDHeaderMoved(Sender: TObject;
  Column: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFrmSelMensalidades.GRIDHideHeader(Sender: TObject;
  AColumn: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFrmSelMensalidades.GRIDShowHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; BandIndex, RowIndex, ColIndex: Integer);
begin
  Synchronize;
end;

procedure TFrmSelMensalidades.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmSelMensalidades.ActConfCamposExecute(Sender: TObject);
begin
  pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmSelMensalidades.ActExportarExcelExecute(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Leituras.xls', Grid.SaveToXLS);
end;

procedure TFrmSelMensalidades.ActExportarHtmlExecute(Sender: TObject);
begin
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Leituras.html', Grid.SaveToHTML);
end;

procedure TFrmSelMensalidades.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmSelMensalidades.TimerTimer(Sender: TObject);
begin
  ActAtualizar.execute;
end;

procedure TFrmSelMensalidades.ActIncluirExecute(Sender: TObject);
begin
  frmMensalidade := TfrmMensalidade.Create(Self);
  dmCadastros2.Mensalidade.Close;
  dmCadastros2.Mensalidade.Open;
  dmCadastros2.Mensalidade.Append ;
  frmMensalidade.Showmodal;
  grid.setfocus;
end;

procedure TFrmSelMensalidades.ActAtualizarExecute(Sender: TObject);
begin
  Grid.FullExpand;
  dmApp.Data_Servidor := dmApp.Dataservidor;
end;

procedure TFrmSelMensalidades.CmbClienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelMensalidades.edDataBaseEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelMensalidades.edDataBaseExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TFrmSelMensalidades.edDataBaseKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelMensalidades.EdTipoContratoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelMensalidades.EdTipoContratoExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmSelMensalidades.FormActivate(Sender: TObject);
begin
  FrmSelMensalidades.WindowState := wsMaximized;
end;

procedure TFrmSelMensalidades.ActEstornarLeituraExecute(Sender: TObject);
VAR
  RETORNO : INTEGER;
begin
  if (dmCadastros2.SelMensalidadesMS_FECHADA.value = 'Não') then
  begin
    Application.MessageBox('Impossível estornar. O registro está em aberto','Aviso', mb_iconerror + mb_ok);
    exit;
  end;

  if MessageDlg ('Deseja realmente estornar esta mensalidade?',MtInformation,[MbOk, MbCancel],1) = MrOk THEN
  begin
     try

      // retorno := dmCadastros2.Estorna_Leitura(dmApp.cnpj, DMCadastros2.SelMensalidadesLT_CODIGO.value, DMCadastros2.SelMensalidadesVENDA.value);
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

procedure TFrmSelMensalidades.ActGerarLeiturasExecute(Sender: TObject);
var
  DataRef : TDate;
begin
  if Application.MessageBox('Deseja realmente gerar mensalidades para TODOS os contratos ATIVOS?','Aviso', mb_iconquestion + mb_yesno) = id_no then
    exit;

  try
    frmGerarMensalidades := TfrmGerarMensalidades.Create(Self);
    frmGerarMensalidades.showmodal;
    if frmGerarMensalidades.modalResult = mrOK then
    begin
      DataRef := frmGerarMensalidades.DataRef.Date;
      dmCadastros2.Gera_Mensalidade(dmApp.cnpj,DataRef);
    end;

    frmGerarMensalidades.Free;
    frmGerarMensalidades :=  nil;
  except
    On E:Exception Do
    begin
      Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message),'Aviso',mb_iconerror+mb_ok);
      Exit;
    end;
  end

end;

procedure TFrmSelMensalidades.CmbClienteButtonClick(Sender: TObject;
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

procedure TFrmSelMensalidades.Filtrar;
var
  sFiltro : string;
begin
  sFiltro := '';
  if CmbCliente.Text <> '' then
    sFiltro := ' and ct.cod_cliente = '+trim(CmbCliente.Text);

  if (edDtInicial.Date > 0) then
    sFiltro := sFiltro + ' and ms.data_referencia >= '''+formatdatetime('mm/dd/yyyy',edDtInicial.Date)+'''';

  if (edDtFinal.Date > 0) then
    sFiltro := sFiltro + ' and ms.data_referencia <= '''+formatdatetime('mm/dd/yyyy',edDtFinal.Date)+'''';

  case edStatus.ItemIndex of
    0: sFiltro := sFiltro + ' and ms.fechada = ''N''';
    1: sFiltro := sFiltro + ' and ms.gera_faturamento = ''S''';
    2: sFiltro := sFiltro + ' and ms.fechada = ''S''';
  end;

  with dmCadastros2 do
  begin
    SelMensalidades.Close;
    SelMensalidades.selectsql.text := sqlOriginal + sFiltro + ' order by ms.CODIGO ' ;
    SelMensalidades.Open;
  end
end;

procedure TFrmSelMensalidades.ActFiltrarExecute(Sender: TObject);
begin
 Filtrar;
end;

procedure TFrmSelMensalidades.Panel3Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelMensalidades.ActSelecionaTodosExecute(Sender: TObject);
begin
  if (Application.MessageBox('Deseja marcar como selecionados todos os registros?','Aviso',mb_iconquestion+mb_yesno) = id_no) then
    exit;

  dmCadastros2.SelMensalidades.DisableControls;
  dmCadastros2.SelMensalidades.First;

  while not dmCadastros2.SelMensalidades.eof do
  begin
    if ((dmCadastros2.SelMensalidadesSELECIONADO.asString = 'N') )  then
    begin
      if dmCadastros2.SelMensalidades.state <> dsedit then
         dmCadastros2.SelMensalidades.edit;

       dmCadastros2.SelMensalidadesSELECIONADO.value := 'S';
    end;

    dmCadastros2.SelMensalidades.next;
  end;

  dmCadastros2.SelMensalidades.EnableControls;

  Application.MessageBox('Registros marcados com sucesso','Aviso',mb_iconinformation+mb_ok);
end;


procedure TFrmSelMensalidades.ActDeselecionaTodosExecute(Sender: TObject);
begin
  if (Application.MessageBox('Deseja desmarcar todos os registros?','Aviso',mb_iconquestion+mb_yesno) = id_no) then
    exit;

    dmCadastros2.SelMensalidades.DisableControls;
    dmCadastros2.SelMensalidades.First;
    while not dmCadastros2.SelMensalidades.eof do
    begin
      if ((dmCadastros2.SelMensalidadesSELECIONADO.asString = 'S') )  then
      begin
        if dmCadastros2.SelMensalidades.state <> dsedit then
          dmCadastros2.SelMensalidades.edit;

        dmCadastros2.SelMensalidadesSELECIONADO.value := 'N';
      end;

      dmCadastros2.SelMensalidades.next;
    end;
    dmCadastros2.SelMensalidades.EnableControls;

  Application.MessageBox('Registros desmarcados com sucesso','Aviso',mb_iconinformation+mb_ok);
end;

procedure TFrmSelMensalidades.ActGerarFaturamentoExecute(Sender: TObject);
var
  dataref : Tdate;
begin
  if Application.MessageBox('Deseja realmente gerar mensalidades para TODOS os contratos ATIVOS?','Aviso', mb_iconquestion + mb_yesno) = id_no then
    exit;

  try
    frmGerarMensalidades := TfrmGerarMensalidades.Create(Self);
    frmGerarMensalidades.showmodal;
    if frmGerarMensalidades.modalResult = mrOK then
    begin
      DataRef := frmGerarMensalidades.DataRef.Date;
      dmCadastros2.Gera_Mensalidade(dmApp.cnpj,DataRef);
    end;

    frmGerarMensalidades.Free;
    frmGerarMensalidades :=  nil;
  except
    On E:Exception Do
    begin
      Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message),'Aviso',mb_iconerror+mb_ok);
      Exit;
    end;
  end
end;

procedure TFrmSelMensalidades.ActSelecionaExecute(Sender: TObject);
begin
    if dmCadastros2.SelMensalidades.state <> dsedit then
      dmCadastros2.SelMensalidades.edit;

    if (dmCadastros2.SelMensalidadesSELECIONADO.Value = 'S') then
      dmCadastros2.SelMensalidadesSELECIONADO.value := 'N'
    else
    begin
       if dmCadastros2.SelMensalidadesMS_VALOR.asFloat <= 0 then
       begin
          Application.MessageBox('Impossivel selecionar. Registro não possui um valor de mensalidade definido','Aviso',mb_iconerror+mb_ok);
          exit;
       end;

       dmCadastros2.SelMensalidadesSELECIONADO.value := 'S';
    end;
end;

procedure TFrmSelMensalidades.ActGerarFaturamentosExecute(Sender: TObject);
begin
  frmGerarFaturamentos := TfrmGerarFaturamentos.Create(Self);
  frmGerarFaturamentos.showmodal;
  frmGerarFaturamentos.Free;
  frmGerarFaturamentos :=  nil;
  filtrar;
end;

procedure TFrmSelMensalidades.ActEstornarFaturamentoExecute(
  Sender: TObject);
begin
  if Application.MessageBox('Deseja estornar todos os faturamentos vinculados com registros selecionados?','Aviso',mb_iconquestion+mb_yesno)= id_no then
    exit;
  try
   with dmCadastros2 do
   begin
     SelMensalidades.DisableControls;
     SelMensalidades.First;
     while not SelMensalidades.eof do
     begin
       if ((SelMensalidadesSELECIONADO.asString = 'S') and (SelMensalidadesFATURAMENTO.Value > 0 ))  then
       begin
         PCD_MS_ESTORNA_FATURAMENTOS.ParamByName('cnpj').Value := dmApp.cnpj;
         PCD_MS_ESTORNA_FATURAMENTOS.ParamByName('MS_CODIGO').Value := SelMensalidadesMS_CODIGO.Value;
         PCD_MS_ESTORNA_FATURAMENTOS.ParamByName('CODIGO').Value := SelMensalidadesFATURAMENTO.Value;
         PCD_MS_ESTORNA_FATURAMENTOS.ExecProc;
       end;

       SelMensalidades.next;
     end;
     SelMensalidades.EnableControls;

   end;
   Application.MessageBox('Faturamentos estornados com sucesso','Aviso',mb_iconinformation+mb_ok);
   filtrar;
  except
   On E:Exception Do
   begin
      MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
   end
  end;
end;

end.
