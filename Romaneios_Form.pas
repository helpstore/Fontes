  unit Romaneios_Form;

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
  cxFilterControl, cxDBFilterControl, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxEdit, dxSkinsdxBarPainter, dxSkinscxPCPainter,
  cxContainer, cxPC, cxLabel, cxGridLevel, cxGridCustomView,
  cxGridChartView, cxGrid, cxPivotGridChartConnection, cxGroupBox;

type

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmRomaneios = class(TForm)
    Navigator: TdxBarDBNavigator;
    Actions: TActionList;
    ActFechar: TAction;
    DataSource: TDataSource;
    ActAtualizar: TAction;
    stgGrdRomaneios: TcxPropertiesStore;
    ActConfCampos: TAction;
    ActExportarExcel: TAction;
    ActExportarHtml: TAction;
    SaveDialog: TSaveDialog;
    ActResumoGrafico: TAction;
    pgcOServico: TcxPageControl;
    pnlClient: TPanel;
    Bevel1: TBevel;
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
    btnConfig: TdxBarButton;
    btnExpExcel: TdxBarButton;
    ActSeleciona: TAction;
    ActQuitarComissao: TAction;
    edDtFinal: TdxDateEdit;
    Label4: TcxLabel;
    edDtInicial: TdxDateEdit;
    Label1: TcxLabel;
    GridPedidos: TcxDBPivotGrid;
    stgPivotPedidos: TcxPropertiesStore;
    GridPedidosVDI_CODIGO: TcxDBPivotGridField;
    GridPedidosVDI_PRODUTO: TcxDBPivotGridField;
    GridPedidosVDI_PRC_UNIT_ORIGINAL: TcxDBPivotGridField;
    GridPedidosVDI_PRC_UNITARIO: TcxDBPivotGridField;
    GridPedidosVDI_CUSTO_MEDIO: TcxDBPivotGridField;
    GridPedidosVDI_DESCONTO: TcxDBPivotGridField;
    GridPedidosVDI_QTDE: TcxDBPivotGridField;
    GridPedidosVDI_TOTAL: TcxDBPivotGridField;
    GridPedidosCLI_NOME: TcxDBPivotGridField;
    GridPedidosCLI_CODIGO: TcxDBPivotGridField;
    GridPedidosCLI_CPF_CGC: TcxDBPivotGridField;
    GridPedidosVDD_NOME: TcxDBPivotGridField;
    GridPedidosPRODUTO: TcxDBPivotGridField;
    GridPedidosMRC_NOME: TcxDBPivotGridField;
    GridPedidosFN_NOME: TcxDBPivotGridField;
    GridPedidosVD_DATA_CAIXA: TcxDBPivotGridField;
    GridPedidosVD_DATA: TcxDBPivotGridField;
    GridPedidosVD_CFOP: TcxDBPivotGridField;
    GridPedidosVD_TOTAL_BRUTO: TcxDBPivotGridField;
    GridPedidosVD_DESC_ACRES: TcxDBPivotGridField;
    GridPedidosVD_TOTAL_LIQUIDO: TcxDBPivotGridField;
    GridPedidosVD_CODIGO: TcxDBPivotGridField;
    GridPedidosNUM_NF: TcxDBPivotGridField;
    GridPedidosQNTDE_PDR_CARGA: TcxDBPivotGridField;
    GridPedidosUND_CARREGAMENTO: TcxDBPivotGridField;
    GridPedidosUND_INDIVIDUAL: TcxDBPivotGridField;
    GridPedidosFORMA_PAGTO: TcxDBPivotGridField;
    GridPedidosCFOP: TcxDBPivotGridField;
    GridPedidosVDI_TOTAL_LIQUIDO: TcxDBPivotGridField;
    GridPedidosGRADE: TcxDBPivotGridField;
    GridPedidosNUMERO: TcxDBPivotGridField;
    GridPedidosVDI_CUSTO_TOTAL: TcxDBPivotGridField;
    GridPedidosVDI_MARGEM: TcxDBPivotGridField;
    ChartConnection: TcxPivotGridChartConnection;
    cxGroupBox2: TcxGroupBox;
    Grid: TcxGrid;
    ChartView: TcxGridChartView;
    GridLevel: TcxGridLevel;
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
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure TimerTimer(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure GRIDPEDIDOSCustomDraw(Sender: TObject; ACanvas: TCanvas;
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
    procedure GRIDPREVENTIVACustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure dxTreeListCheckColumn1ToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure FormActivate(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure dxTabSheet1Show(Sender: TObject);
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
  FrmRomaneios: TFrmRomaneios;
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
  Cm2_GeraFinanceiro, Estoque_Dm;

  {$R *.DFM}

Procedure TFrmRomaneios.Filtrar;
var
  filtro : string;
Begin
  filtro := '';
  with dmEstoque do
  begin
    QryRomaneios.Close;
    if edDtInicial.date > 0 then
      filtro := ' and vd.data >= '''+FormatDateTime('mm/dd/yyyy',edDtInicial.date)+'''';

    if edDtFinal.date > 0 then
      filtro := filtro + ' and vd.data <= '''+FormatDateTime('mm/dd/yyyy',edDtFinal.Date)+'''';

    if (filtro <> '') then
      qryRomaneios.sql.Text := sqloriginal + filtro + ' and coalesce(vd.total,0) > 0 '+
                                                      ' and coalesce(vdi.quantidade,0) > 0 '+
                                                      ' and coalesce(vdi.prc_unitario,0) > 0 '+
                                                      ' and (coalesce(vd.total,0) + coalesce(vd.desc_acres,0)) > 0';

    qryRomaneios.parambyname('cnpj').value := dmApp.cnpj;
    qryRomaneios.Open;
    qryRomaneios.FetchAll;

  end;

end;

procedure TFrmRomaneios.FormClose(Sender: TObject; var Action: TCloseAction);
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
          FrmRomaneios := Nil;

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

procedure TFrmRomaneios.FormShow(Sender: TObject);
begin
     Importa := False ;
     IniciaComponentes ( Self as TForm );

     PageControl.ActivePageIndex := 0;

     FinalArq := False ;
     FinalCli := False ;

     //Cria o Formulario de Localizar Cliente
     Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

//     GRIDPEDIDOS.FullExpand;
     filtrar;
end;

procedure TFrmRomaneios.FormCreate(Sender: TObject);
var
  dia, mes, ano : integer;
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
    DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else If DMUsuarios.Objeto = Self.Name Then
    AtivaActions(Actions, DMUsuarios.Direito);

  sqlOriginal := dmEstoque.qryRomaneios.sql.Text;

  mes := MonthOfTheYear(dmapp.data_servidor);
  ano :=  Year(dmapp.data_servidor);
  edDtInicial.Date := EncodeDate(ano,mes,1);

  Synchronize;

//  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdRomaneios.txt') then
//    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdRomaneios.txt',GRIDPEDIDOS.Filter);

end;

procedure TFrmRomaneios.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmRomaneios.pnlClientResize(Sender: TObject);
begin
//  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmRomaneios.DataSourceStateChange(Sender: TObject);
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

procedure TFrmRomaneios.ActFecharExecute(Sender: TObject);
begin
  if FrmRomaneios.FormStyle = fsMDIChild Then
    FrmMain.opFechar.OnClick(FrmMain.opFechar)
  else
    Close;
end;

procedure TFrmRomaneios.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmRomaneios.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmRomaneios.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmRomaneios.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmRomaneios.GRIDPEDIDOSCustomDrawCell(Sender: TObject;
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

procedure TFrmRomaneios.Synchronize;
begin
end;

procedure TFrmRomaneios.ActExportarExcelExecute(Sender: TObject);
begin
  if SaveDialog.Execute then
    cxExportPivotGridToExcel(SaveDialog.FileName, GridPedidos);
end;

procedure TFrmRomaneios.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmRomaneios.TimerTimer(Sender: TObject);
begin
  ActAtualizar.execute;
end;

procedure TFrmRomaneios.ActIncluirExecute(Sender: TObject);
begin
//  GRIDPEDIDOS.setfocus ;
end;

procedure TFrmRomaneios.GRIDPEDIDOSCustomDraw(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
  const AText: String; AFont: TFont; var AColor: TColor; ASelected,
  AFocused: Boolean; var ADone: Boolean);
var
  Value: Variant;
begin

 { if ANode.HasChildren then
    Exit;

  if not ASelected then
  begin
    Value  := ANode.Values[GRIDSTATUS.index];
    if (not VarIsNull(Value)) then
    begin
        if(Value = 'C')then
          AColor := $00FA989D
        else if(Value = 'A')then
          AColor := $0080FF80
        else if(Value = 'Q')then
          AColor := $0020FFFF;
    end;
  end;}
end;

procedure TFrmRomaneios.ActAtualizarExecute(Sender: TObject);
begin
//  GRIDPEDIDOS.FullExpand;
end;

procedure TFrmRomaneios.CmbClienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmRomaneios.edDataBaseEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmRomaneios.edDataBaseExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmRomaneios.edDataBaseKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmRomaneios.EdTipoContratoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmRomaneios.EdTipoContratoExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmRomaneios.GRIDPREVENTIVACustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
var
  Value: Variant;
begin
end;

procedure TFrmRomaneios.dxTreeListCheckColumn1ToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
end;

procedure TFrmRomaneios.FormActivate(Sender: TObject);
begin
    FrmRomaneios.WindowState := wsMaximized;
end;

procedure TFrmRomaneios.Panel3Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmRomaneios.dxTabSheet1Show(Sender: TObject);
begin
//  GRIDPEDIDOS.SetFocus;
end;

end.
