 unit SelComissoes_Form;

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
  dxLayout, dxGrClEx, Menus, IBSQL, Mask, DBCtrls, dxSkinsCore,
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
  cxLookAndFeelPainters, dxSkinscxPCPainter, cxContainer, cxEdit, cxPC,
  cxLabel;

type

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmSelComissoes = class(TForm)
    Navigator: TdxBarDBNavigator;
    Actions: TActionList;
    ActFechar: TAction;
    DataSource: TDataSource;
    ActAtualizar: TAction;
    stgGrdComissaoAgricola: TcxPropertiesStore;
    ActConfCampos: TAction;
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
    dxDBGridLayoutList: TdxDBGridLayoutList;
    LayoutFaturamento: TdxDBGridLayout;
    dsFaturamentos: TDataSource;
    dsFatItens: TDataSource;
    LayoutItens: TdxDBGridLayout;
    Panel2: TPanel;
    Panel3: TPanel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    Panel8: TPanel;
    Image2: TImage;
    lblTitulo: TcxLabel;
    Bevel2: TBevel;
    PageControl: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Panel5: TPanel;
    pc: TcxPageControl;
    DBGrid1: TDBGrid;
    GRID: TdxDBGrid;
    dxTabSheet2: TcxTabSheet;
    Panel4: TPanel;
    Panel6: TPanel;
    GridFaturamentos: TdxDBGrid;
    GridFaturamentosCODIGO: TdxDBGridMaskColumn;
    GridFaturamentosNOME_RAZAO: TdxDBGridMaskColumn;
    GridFaturamentosTOTAL: TdxDBGridMaskColumn;
    GridFaturamentosDESC_ACRES: TdxDBGridMaskColumn;
    GridFaturamentosNATUREZA: TdxDBGridMaskColumn;
    GridFaturamentosCNPJ: TdxDBGridMaskColumn;
    GridFaturamentosTOTAL_LIQUIDO: TdxDBGridMaskColumn;
    GridFaturamentosLUCRO_FATURAMENTO: TdxDBGridMaskColumn;
    GridFaturamentosCOM_FATURAMENTO: TdxDBGridMaskColumn;
    Panel7: TPanel;
    Panel9: TPanel;
    GridItens: TdxDBGrid;
    Panel10: TPanel;
    Panel11: TPanel;
    GridAgentes: TdxDBGrid;
    GridItensSEQUENCIA: TdxDBGridMaskColumn;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensNOME: TdxDBGridMaskColumn;
    GridItensPRC_UNITARIO: TdxDBGridMaskColumn;
    GridItensCUSTO_MEDIO: TdxDBGridMaskColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensDESP_OP: TdxDBGridMaskColumn;
    GridItensCUSTO_ITEM: TdxDBGridMaskColumn;
    GridItensLUCRO_UNITARIO: TdxDBGridMaskColumn;
    GridItensLUCRO_BRUTO: TdxDBGridMaskColumn;
    GridItensLUCRO_LIQUIDO: TdxDBGridMaskColumn;
    GridItensCOMISSAO_ITEM: TdxDBGridMaskColumn;
    dsAgentes: TDataSource;
    GridAgentesNOME_RAZAO: TdxDBGridMaskColumn;
    GridAgentesCPF_CGC: TdxDBGridMaskColumn;
    GridAgentesCNPJ: TdxDBGridMaskColumn;
    GridAgentesCODIGO: TdxDBGridMaskColumn;
    GridAgentesCOD_ITEM: TdxDBGridMaskColumn;
    GridAgentesPRODUTO: TdxDBGridMaskColumn;
    GridAgentesSEQUENCIA: TdxDBGridMaskColumn;
    GridAgentesPESSOA_FJ: TdxDBGridMaskColumn;
    GridAgentesPERCENTUAL: TdxDBGridMaskColumn;
    GridAgentesCOMISSAO_ITEM: TdxDBGridMaskColumn;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDCOD_VENDA: TdxDBGridMaskColumn;
    GRIDCOD_PESSOA: TdxDBGridMaskColumn;
    GRIDCOD_RECEBER: TdxDBGridMaskColumn;
    GRIDCOD_PAGAR: TdxDBGridMaskColumn;
    GRIDCM_PCT: TdxDBGridMaskColumn;
    GRIDDT_GERACAO: TdxDBGridDateColumn;
    GRIDSTATUS: TdxDBGridMaskColumn;
    GRIDCOD_BX_RECEBER: TdxDBGridMaskColumn;
    GRIDCOD_BX_PAGAR: TdxDBGridMaskColumn;
    GRIDDT_FATURAMENTO: TdxDBGridDateColumn;
    GRIDDT_CX_FATURAMENTO: TdxDBGridDateColumn;
    GRIDCLIENTE: TdxDBGridMaskColumn;
    GRIDCOD_FORMA: TdxDBGridMaskColumn;
    GRIDFORMA_PGTO: TdxDBGridMaskColumn;
    GRIDAGENTE: TdxDBGridMaskColumn;
    GRIDCFOP: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridCurrencyColumn;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    BtnFechar: TdxBarButton;
    btnConfig: TdxBarButton;
    btnExpExcel: TdxBarButton;
    btnHtm: TdxBarButton;
    lblnome: TcxLabel;
    cmbAgente: TdxButtonEdit;
    Label1: TcxLabel;
    edStatus: TdxPickEdit;
    Label2: TcxLabel;
    GRIDSELECIONADO: TdxDBGridCheckColumn;
    ActSeleciona: TAction;
    ActQuitarComissao: TAction;
    btnSelecionar: TdxBarButton;
    GRIDNUM_NF: TdxDBGridMaskColumn;
    pnlCarregar: TPanel;
    Label6: TcxLabel;
    edtCMedio: TDBEdit;
    edtCMedioAtual: TDBEdit;
    Label5: TcxLabel;
    ActRedCusto: TAction;
    GRIDTOTAL_PROVISIONADO: TdxDBGridMaskColumn;
    GRIDSALDO_COMISSAO: TdxDBGridMaskColumn;
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
    procedure GRIDPREVENTIVACustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure dxTreeListCheckColumn1ToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure FormActivate(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure dxTabSheet2Show(Sender: TObject);
    procedure dxTabSheet1Show(Sender: TObject);
    procedure GridAgentesCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure GridItensCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure cmbAgenteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ActSelecionaExecute(Sender: TObject);
    procedure ActQuitarComissaoExecute(Sender: TObject);
    procedure RedefinirCustoMdio1Click(Sender: TObject);
    procedure ActRedCustoExecute(Sender: TObject);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCMedioKeyDown(Sender: TObject; var Key: Word;
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
  FrmSelComissoes: TFrmSelComissoes;
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
  Cm2_GeraFinanceiro;

  {$R *.DFM}

Procedure TFrmSelComissoes.Filtrar;
var
  filtro : string;
Begin
  filtro := '';
  DataSource.DataSet := dmFinanceiro2.CM2_COMISSAO_PARC;
  GRID.DataSource := DataSource;
  with dmFinanceiro2 do
  begin
    CM2_COMISSAO_PARC.Close;
    if edDtInicial.date > 0 then
      filtro := ' and cm2.dt_geracao >= '''+FormatDateTime('mm/dd/yyyy',edDtInicial.date)+'''';

    if edDtFinal.date > 0 then
      filtro := filtro + ' and cm2.dt_geracao <= '''+FormatDateTime('mm/dd/yyyy',edDtFinal.Date)+'''';

    if (trim(cmbAgente.Text) <> '') then
      filtro := filtro + ' and cm2.cod_pessoa = '+Trim(cmbAgente.Text);

    case edStatus.ItemIndex of
      0 : filtro := filtro +' and cm2.status = ''F''';
      1 : filtro := filtro +' and cm2.status = ''L''';
      2 : filtro := filtro +' and cm2.status = ''P''';
    end;

    if (filtro <> '') then
      CM2_COMISSAO_PARC.selectsql.Text := sqloriginal + filtro;
    CM2_COMISSAO_PARC.parambyname('cnpj').value := dmApp.cnpj;
    CM2_COMISSAO_PARC.Open;
    CM2_COMISSAO_PARC.FetchAll;
   // showmessage(IntToStr(CM2_COMISSAO_PARC.RecordCount));
  end;

end;

procedure TFrmSelComissoes.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio :string;
begin
     If MessageDlg('Sair da Seleção de Ordens?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
     then begin
          //
          If DataSource.DataSet.Tag = 0 Then
             DataSource.DataSet.Close;


          Frm_Localizar_Cliente.Free ;
          Frm_Localizar_Cliente := Nil ;



          dmApp.ZeraCaixaUsuario(owner);

          FrmMain.PnlClient.Visible := True;

          Action := caFree;
          FrmSelComissoes := Nil;

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
     SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdComissoes.txt',Grid.Filter);
     dmFinanceiro2.CM2_COMISSAO_PARC.selectsql.text := sqlOriginal;
end;

procedure TFrmSelComissoes.FormShow(Sender: TObject);
begin
     Importa := False ;
     IniciaComponentes ( Self as TForm );

     PageControl.ActivePageIndex := 0;

     FinalArq := False ;
     FinalCli := False ;

     //Cria o Formulario de Localizar Cliente
     Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

     Grid.FullExpand;
     pnlCampos.visible := false;
     cmbAgente.SetFocus;
     edStatus.ItemIndex := 0;
     filtrar;
end;

procedure TFrmSelComissoes.FormCreate(Sender: TObject);
var
  dia, mes, ano : integer;
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
    DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else If DMUsuarios.Objeto = Self.Name Then
    AtivaActions(Actions, DMUsuarios.Direito);

  sqlOriginal := dmFinanceiro2.CM2_COMISSAO_PARC.selectsql.text;

  mes := MonthOfTheYear(dmapp.data_servidor);
  ano :=  Year(dmapp.data_servidor);
  edDtInicial.Date := EncodeDate(ano,mes,1);

  Synchronize;

  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdComissoes.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdComissoes.txt',Grid.Filter);

end;

procedure TFrmSelComissoes.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelComissoes.pnlClientResize(Sender: TObject);
begin
//  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelComissoes.DataSourceStateChange(Sender: TObject);
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

procedure TFrmSelComissoes.ActFecharExecute(Sender: TObject);
begin
  if FrmSelComissoes.FormStyle = fsMDIChild Then
    FrmMain.opFechar.OnClick(FrmMain.opFechar)
  else
    Close;
end;

procedure TFrmSelComissoes.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmSelComissoes.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmSelComissoes.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelComissoes.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelComissoes.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if ANode.HasChildren then
    Exit;

  if not ASelected and (AColumn = GRIDVALOR) then
  begin
    Value   := ANode.Values[AColumn.Index];
    if (not VarIsNull(Value)) then
    begin
        if(value > 0)then
          AColor := $00B3FFB3
        else
          AColor := $008484FF;
    end;
  end;

  if not ASelected and (AColumn = GRIDTOTAL_PROVISIONADO) then
     AColor := $0020FFFF;

  if not ASelected and (AColumn = GRIDSALDO_COMISSAO) then
  begin
    Value   := ANode.Values[AColumn.Index];
    if (not VarIsNull(Value)) then
    begin
        if(value > 0)then
          AColor := $00B3FFB3
        else
          AColor := $008484FF;
    end;
  end;

end;

procedure TFrmSelComissoes.TLCustomizeDragDrop(Sender, Source: TObject; X,
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

procedure TFrmSelComissoes.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmSelComissoes.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmSelComissoes.Synchronize;
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

procedure TFrmSelComissoes.GRIDHeaderMoved(Sender: TObject;
  Column: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFrmSelComissoes.GRIDHideHeader(Sender: TObject;
  AColumn: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFrmSelComissoes.GRIDShowHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; BandIndex, RowIndex, ColIndex: Integer);
begin
  Synchronize;
end;

procedure TFrmSelComissoes.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmSelComissoes.ActConfCamposExecute(Sender: TObject);
begin
  pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmSelComissoes.ActExportarExcelExecute(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Comissões de Agentes.xls', Grid.SaveToXLS);
end;

procedure TFrmSelComissoes.ActExportarHtmlExecute(Sender: TObject);
begin
    Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Comissões de Agentes.html', Grid.SaveToHTML);
end;

procedure TFrmSelComissoes.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmSelComissoes.TimerTimer(Sender: TObject);
begin
  ActAtualizar.execute;
end;

procedure TFrmSelComissoes.ActIncluirExecute(Sender: TObject);
begin
  grid.setfocus ;
end;

procedure TFrmSelComissoes.GRIDCustomDraw(Sender: TObject; ACanvas: TCanvas;
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
    Value  := ANode.Values[GRIDSTATUS.index];
    if (not VarIsNull(Value)) then
    begin
        if(Value = 'F')then
          AColor := $00FA989D
        else if(Value = 'L')then
          AColor := $0080FF80
        else if(Value = 'P')then
          AColor := $0020FFFF;
    end;
  end;
end;

procedure TFrmSelComissoes.ActAtualizarExecute(Sender: TObject);
begin
  Grid.FullExpand;
  dmApp.Data_Servidor := dmApp.Dataservidor;
end;

procedure TFrmSelComissoes.CmbClienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelComissoes.edDataBaseEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelComissoes.edDataBaseExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmSelComissoes.edDataBaseKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelComissoes.EdTipoContratoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelComissoes.EdTipoContratoExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmSelComissoes.GRIDPREVENTIVACustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
var
  Value: Variant;
begin
end;

procedure TFrmSelComissoes.dxTreeListCheckColumn1ToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
end;

procedure TFrmSelComissoes.FormActivate(Sender: TObject);
begin
    FrmSelComissoes.WindowState := wsMaximized;
end;

procedure TFrmSelComissoes.Panel3Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelComissoes.dxTabSheet2Show(Sender: TObject);
begin
  with dmFinanceiro2 do
  begin
    CM2_FATURAMENTOS.Close;
    CM2_FATURAMENTOS.parambyname('cnpj').value := dmApp.cnpj;
    CM2_FATURAMENTOS.parambyname('cod_venda').value := CM2_COMISSAO_PARCCOD_venda.value;
    CM2_FATURAMENTOS.Open;

    CM2_FAT_ITENS.Close;
    CM2_FAT_ITENS.parambyname('cnpj').value := dmApp.cnpj;
    CM2_FAT_ITENS.parambyname('codigo').value :=  CM2_COMISSAO_PARCCOD_VENDA.value;
    CM2_FAT_ITENS.Open;

    CM2_FAT_ITENS_AGENTES.Close;
    CM2_FAT_ITENS_AGENTES.Open;
  end
end;

procedure TFrmSelComissoes.dxTabSheet1Show(Sender: TObject);
begin
  GRID.SetFocus;
end;

procedure TFrmSelComissoes.GridAgentesCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
var
  Value: Variant;
begin
  if ANode.HasChildren then
    Exit;

  if not ASelected then
  begin
    Value   := ANode.Values[GridAgentesPESSOA_FJ.index];
    if (not VarIsNull(Value)) then
    begin
      if(value = dmFinanceiro2.CM2_COMISSAO_PARCCOD_PESSOA.value)then
        AColor := $00B3FFB3;
    end;
  end;

end;

procedure TFrmSelComissoes.GridItensCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;
begin
  if ANode.HasChildren then
    Exit;

  if not ASelected and (AColumn = GridItensCOMISSAO_ITEM) then
  begin
    Value   := ANode.Values[AColumn.Index];
    if (not VarIsNull(Value)) then
    begin
        if(value > 0)then
          AColor := $00B3FFB3
        else
          AColor := $008484FF;
    end;
  end;

end;

procedure TFrmSelComissoes.cmbAgenteButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  if Frm_Localizar_Cliente = nil then
     Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

  Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;


  if (Frm_Localizar_Cliente.showmodal = mrOk ) Then
  Begin
    cmbAgente.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho);
    lblnome.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value;
  end
end;

procedure TFrmSelComissoes.ActSelecionaExecute(Sender: TObject);
begin
  with dmFinanceiro2 do
  begin
    if (CM2_COMISSAO_PARCSTATUS.value <> 'L') then
    begin
      application.messagebox('Impossível selecionar. Comissão não está liberada','Aviso',mb_ok + mb_iconerror);
      exit;
    end;
    
    if (CM2_COMISSAO_PARC.state = dsBrowse) then
      CM2_COMISSAO_PARC.Edit;

    if (CM2_COMISSAO_PARCSELECIONADO.value = 'S') then
      CM2_COMISSAO_PARCSELECIONADO.value := 'N'
    else
      CM2_COMISSAO_PARCSELECIONADO.value := 'S';

    if (CM2_COMISSAO_PARC.state = dsEdit) then
      CM2_COMISSAO_PARC.post;
  end;
end;

procedure TFrmSelComissoes.ActQuitarComissaoExecute(Sender: TObject);
begin
  frmGeraFinComissoes := TfrmGeraFinComissoes.Create(Self);
  frmGeraFinComissoes.Showmodal;
  frmGeraFinComissoes.Free;
  frmGeraFinComissoes := nil;
  filtrar;
end;

procedure TFrmSelComissoes.RedefinirCustoMdio1Click(Sender: TObject);
begin
  //
end;

procedure TFrmSelComissoes.ActRedCustoExecute(Sender: TObject);
begin
  pnlCarregar.Visible := not (pnlCarregar.Visible);
  if pnlCarregar.Visible then
  begin
    if dmFinanceiro2.CM2_FAT_ITENS.state in [dsbrowse] then
      dmFinanceiro2.CM2_FAT_ITENS.edit;


    edtCMedio.Setfocus;
    edtCMedio.SelectAll;
  end;
end;

procedure TFrmSelComissoes.GridItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = 13 then
    ActRedCustoExecute(Sender);
end;

procedure TFrmSelComissoes.edtCMedioKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //--------- Enter ----------------------
    If Key = 13 then
    begin
        pnlCarregar.Visible := False;

        if dmFinanceiro2.CM2_FAT_ITENS.state in [dsedit] then
        begin
          dmFinanceiro2.CM2_FAT_ITENS.post;
          dmFinanceiro2.CM2_FAT_ITENS.Transaction.CommitRetaining;
        end;
        GridItens.setfocus;
    end;

    //--------- Esc ----------------------
    if key = 27 then
    begin
      pnlCarregar.Visible := False;
      GridItens.setfocus;
    end;
end;

end.
