 unit Log_Transacoes_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxTL, dxDBCtrl,
  dxDBGrid, dxExEdtr, Buttons, dxDBEdtr,  dxDBTLCl, dxGrClms,
  dxTLClms, FileCtrl, cxPropertiesStore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses,
  cxLabel,   Menus, cxButtons;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmLog = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    Actions: TActionList;
    Bevel1: TBevel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActFiltrar: TAction;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    Panel3: TPanel;
    Panel2: TPanel;
    LblTitulo: TcxLabel;
    Label2: TcxLabel;
    Label9: TcxLabel;
    b2: TBevel;
    BtnOk: tcxbutton;
    DATAFINAL: TdxDateEdit;
    DATAINICIAL: TdxDateEdit;
    GRID: TdxDBGrid;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDCOMPUTADOR: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDHORA: TdxDBGridTimeColumn;
    GRIDORIGEM: TdxDBGridMaskColumn;
    GRIDUSUARIO: TdxDBGridMaskColumn;
    ActConfCampos: TAction;
    ActExportarHtml: TAction;
    btnExportarHtml: TdxBarButton;
    SaveDialog: TSaveDialog;
    ActExportarExcel: TAction;
    btnExportarExcel: TdxBarButton;
    stgLogTransacao: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ED4Enter(Sender: TObject);
    procedure DATAINICIALExit(Sender: TObject);
    procedure DATAINICIALEnter(Sender: TObject);
    procedure ActFiltrarExecute(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure Synchronize;
    procedure ActConfCamposExecute(Sender: TObject);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure ActExportarHtmlExecute(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;    
  public
    { Public declarations }
  end;

var
  FrmLog: TFrmLog;

implementation

uses
     Listagens_DM,
     Application_DM,
     Main,
     Funcoes,
     Usuarios_DM ;

{$R *.DFM}

procedure TFrmLog.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
  //
  If DataSource.DataSet.Tag = 0 Then
    Datasource.Dataset.Close;

  If DMLISTAGENS.Tag = 0 Then
  Begin
    DMLISTAGENS.Free;
    DMLISTAGENS := Nil;
  End;

  If FrmLog.FormStyle = fsMDIChild Then
    FrmMain.PnlClient.Visible := True;

  Action := caFree;
  FrmLog := Nil;
 Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
 if not DirectoryExists(Diretorio) then
 begin
   ForceDirectories(Diretorio);
   MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
 end;
 SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdLog.txt',Grid.Filter);
end;

procedure TFrmLog.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
end;

procedure TFrmLog.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
    DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else
    If DMUsuarios.Objeto = Self.Name Then
      AtivaActions(Actions, DMUsuarios.Direito);
  Synchronize;
  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdLog.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdLog.txt',GRID.Filter);
end;

procedure TFrmLog.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLog.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmLog.ActFecharExecute(Sender: TObject);
begin
  If FrmLog.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmLog.ED4Enter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmLog.DATAINICIALExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmLog.DATAINICIALEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmLog.ActFiltrarExecute(Sender: TObject);
begin
  If ( DATAINICIAL.Text = '  /  /  ' ) OR ( DATAINICIAL.Text = '  /  /    ' )then
  BEGIN
    MESSAGEDLG('Selecione a Data!', mterror, [mbok],0);
    DATAINICIAL.SetFocus ;
    EXIT;
  END;

  If ( DATAFINAL.Text = '  /  /  ' ) OR ( DATAFINAL.Text = '  /  /    ' )then
  BEGIN
    MESSAGEDLG('Selecione a Data!', mterror, [mbok],0);
    DATAFINAL.SetFocus ;
    EXIT;
  END;

  With DmListagens do
  begin
    LOG.Close ;
    LOG.ParamByName ('CNPJ').AsString := DMAPP.CNPJ       ;
    LOG.ParamByName ('DINI').AsDate   := DATAINICIAL.DATE ;
    LOG.ParamByName ('DFIM').AsDate   := DATAFINAL.DATE   ;
    LOG.Prepare ;
    LOG.Open ;
    GRID.SetFocus ;
  end;
end;

procedure TFrmLog.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomize.ClearNodes;
  for I := 0 to Grid.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := GRID.Columns[I].Caption;
    if GRID.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GRID.Columns[I];
  end;
end;

procedure TFrmLog.ActConfCamposExecute(Sender: TObject);
begin
    pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmLog.TLCustomizeDragDrop(Sender, Source: TObject; X,
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

procedure TFrmLog.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmLog.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmLog.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmLog.ActExportarHtmlExecute(Sender: TObject);
begin
    Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'LogTransacao.htm', GRID.SaveToHTML);
end;

procedure TFrmLog.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmLog.ActExportarExcelExecute(Sender: TObject);
begin
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'LogTransacao.xls', GRID.SaveToXLS);
end;

end.
