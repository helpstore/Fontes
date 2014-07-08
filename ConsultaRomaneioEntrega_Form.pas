 unit ConsultaRomaneioEntrega_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, 
  TeeProcs, TeEngine, Chart, DBChart, Series, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms, cxPropertiesStore, dxBarDBNav, dxBar, dxTLClms,
  Grids, DBGrids, variants, cxControls, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxButtonEdit, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmConsultaRomaneio = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActPreview: TAction;
    DsVendedor: TDataSource;
    DataSource: TDataSource;
    Panel1: TPanel;
    Label3: TcxLabel;                                
    Ini: TdxDateEdit;
    Label1: TcxLabel;
    Fim: TdxDateEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Label6: TcxLabel;
    Grid: TdxDBGrid;
    GridPRODUTO: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridUNIDADE: TdxDBGridMaskColumn;
    GridMARCA: TdxDBGridMaskColumn;
    GridQNTDE_PDR_CARGA: TdxDBGridMaskColumn;
    GridUND_CARREGAMENTO: TdxDBGridMaskColumn;
    GridQTDE_VENDIDA: TdxDBGridMaskColumn;
    GridUND_TRANSPORTE: TdxDBGridColumn;
    GridUND_INDIVIDUAL: TdxDBGridMaskColumn;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    BtnFechar: TdxBarButton;
    btnConfig: TdxBarButton;
    btnExpExcel: TdxBarButton;
    BarDBNavigator: TdxBarDBNavigator;
    SaveDialog: TSaveDialog;
    ActFechar: TAction;
    ActConfigura: TAction;
    ActExporta: TAction;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    stgFrmConsultaRoman: TcxPropertiesStore;
    btnParceiro: TcxButtonEdit;
    edtParceiro: TdxEdit;
    Label9: TcxLabel;
    GridTOTAL_LIQUIDO: TdxDBGridMaskColumn;
    GridTOTAL_BRUTO: TdxDBGridMaskColumn;
    GridTOTAL_DESCONTOS: TdxDBGridMaskColumn;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cmbVendedorEnter(Sender: TObject);
    procedure cmbVendedorExit(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure ActConfiguraExecute(Sender: TObject);
    procedure GridEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActExportaExecute(Sender: TObject);
    procedure GridCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure btnParceiroClick(Sender: TObject);
  private
    Grupo, SubGrupo: Integer;
    filtrovendedor,sqloriginal, sqlgroup : string;
    { Private declarations }
    DragNode: TdxTreeListNode;
    { Private declarations }
    procedure Synchronize;
    procedure Filtrar;

  public
    { Public declarations }
  end;

var
  FrmConsultaRomaneio: TFrmConsultaRomaneio;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, Main,
  Filtro_Vendedor_Romaneio;

{$R *.DFM}

procedure TFrmConsultaRomaneio.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);


  Synchronize;
  sqloriginal := DMRelatorios.qryConsultaRomaneio.sql.text;
  sqlgroup := ' group by vdi.produto ,prd.nome, prd.unidade, mrc.nome, prd.qntde_pdr_carga,prd.und_carregamento, un1.nome, un2.nome';
  filtrovendedor := '';
end;

procedure TFrmConsultaRomaneio.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsultaRomaneio.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConsultaRomaneio.FormShow(Sender: TObject);
begin
  IniciaComponentes(Self as TForm);
 
  Ini.setfocus;
end;

procedure TFrmConsultaRomaneio.cmbVendedorEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );

end;

procedure TFrmConsultaRomaneio.cmbVendedorExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );

end;

procedure TFrmConsultaRomaneio.IniExit(Sender: TObject);
begin
   TIRACORFUNDO( SENDER );
end;

procedure TFrmConsultaRomaneio.FimExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
  
end;

procedure TFrmConsultaRomaneio.Filtrar;
begin
 with DMRelatorios do
 begin
   if (ini.date <= 0) then
   begin
     Application.messagebox('Defina a data inicial','Aviso',mb_iconerror+mb_ok);
     ini.setfocus;
     exit;
   end;

   if (fim.date <= 0) then
   begin
     Application.messagebox('Defina a data final','Aviso',mb_iconerror+mb_ok);
     fim.setfocus;
     exit;
   end;
   
   qryConsultaRomaneio.Close;
   qryConsultaRomaneio.sql.text := sqloriginal + filtrovendedor + sqlgroup;
   qryConsultaRomaneio.parambyname('cnpj').value := dmapp.cnpj;
   qryConsultaRomaneio.parambyname('DATA1').asDate := INI.DATE;
   qryConsultaRomaneio.parambyname('DATA2').asDate := FIM.DATE;
   qryConsultaRomaneio.Open;
 end;
end;

procedure TFrmConsultaRomaneio.Save(ADefaultExt, AFilter,
  AFileName: String; AMethod: TSaveMethod);
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

procedure TFrmConsultaRomaneio.Synchronize;
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

procedure TFrmConsultaRomaneio.TLCustomizeDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else column.Index := 0;

end;

procedure TFrmConsultaRomaneio.TLCustomizeDragOver(Sender, Source: TObject;
  X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
 Accept := Source = Sender;
end;

procedure TFrmConsultaRomaneio.TLCustomizeIsVisibleToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmConsultaRomaneio.ActConfiguraExecute(Sender: TObject);
begin
  pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmConsultaRomaneio.GridEnter(Sender: TObject);
begin
  filtrar;
end;

procedure TFrmConsultaRomaneio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FrmConsultaRomaneio := Nil;

  FrmMain.PnlClient.Visible := True;
  DMRelatorios.qryConsultaRomaneio.Close;
  DMRelatorios.qryConsultaRomaneio.sql.text := sqloriginal;
end;

procedure TFrmConsultaRomaneio.ActExportaExecute(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Consulta Romaneio de Entrega.xls', Grid.SaveToXLS);
end;

procedure TFrmConsultaRomaneio.GridCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;  
begin
  if ANode.HasChildren then
    Exit;

  if not ASelected and (AColumn = GridUND_INDIVIDUAL) then
  begin
    Value := ANode.Values[AColumn.Index];
    if ((not VarIsNull(Value)) and (trim(VarToStr(Value)) <> '0 <NAO DEFINIDA>(s)')) then
      AColor := $0080FF80;
  end;

end;

procedure TFrmConsultaRomaneio.btnParceiroClick(Sender: TObject);
begin
  FrmFiltraVendedorRomaneio := TFrmFiltraVendedorRomaneio.Create(Self);
  FrmFiltraVendedorRomaneio.ShowModal;
  filtrovendedor := FrmFiltraVendedorRomaneio.Filtro;
  filtrovendedor := ' and ( vd.vendedor '+filtrovendedor+ ' )';
  edtParceiro.text := FrmFiltraVendedorRomaneio.nome;

  FrmFiltraVendedorRomaneio.Free;
  FrmFiltraVendedorRomaneio := nil;

end;

end.
