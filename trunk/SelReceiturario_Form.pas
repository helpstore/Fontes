 unit SelReceiturario_Form;

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
  ppEndUsr, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinscxPCPainter, cxContainer, cxEdit, cxLabel,
  cxPC;

type

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmSelReceituario = class(TForm)
    Navigator: TdxBarDBNavigator;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActFechar: TAction;
    DataSource: TDataSource;
    ActAtualizar: TAction;
    stgGrdReceituario: TcxPropertiesStore;
    ActConfCampos: TAction;
    ActExportarExcel: TAction;
    SaveDialog: TSaveDialog;
    ActResumoGrafico: TAction;
    pgcOServico: TcxPageControl;
    pnlClient: TPanel;
    Bevel1: TBevel;
    Panel5: TPanel;
    pc: TcxPageControl;
    Panel3: TPanel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    GRID: TdxDBGrid;
    Panel8: TPanel;
    Image2: TImage;
    lblTitulo: TcxLabel;
    Bevel2: TBevel;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDT_EMISSAO: TdxDBGridDateColumn;
    GRIDCOD_DEFENSIVO: TdxDBGridMaskColumn;
    GRIDCOD_CULTURA: TdxDBGridMaskColumn;
    GRIDCOD_FATURAMENTO: TdxDBGridMaskColumn;
    GRIDCOD_TECNICO: TdxDBGridMaskColumn;
    GRIDN_RECEITA: TdxDBGridMaskColumn;
    GRIDPRODUTO: TdxDBGridMaskColumn;
    GRIDNUM_NF: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDDATA_CAIXA: TdxDBGridDateColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDIMPRESSA: TdxDBGridMaskColumn;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    BtnFechar: TdxBarButton;
    btnConfig: TdxBarButton;
    btnExpExcel: TdxBarButton;
    btnRecibo: TdxBarButton;
    dsImpReceita: TDataSource;
    Designer_Receita: TppDesigner;
    ppLayoutReceita: TppDBPipeline;
    ppReceita: TppDBPipeline;
    rptReceita: TppReport;
    ppDetailBand3: TppDetailBand;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBText89: TppDBText;
    raCodeModule1: TraCodeModule;
    ppParameterList6: TppParameterList;
    btnEditar: TdxBarButton;
    GRIDPRAGA: TdxDBGridMaskColumn;
    GRIDCULTURA: TdxDBGridMaskColumn;
    GRIDTECNICO: TdxDBGridMaskColumn;
    ActEmitir: TAction;
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
    procedure ActPaginaDnExecute(Sender: TObject);
    procedure ActPagUpExecute(Sender: TObject);
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
    procedure Panel3Exit(Sender: TObject);
    procedure ActEmitirExecute(Sender: TObject);
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
  FrmSelReceituario: TFrmSelReceituario;
  FinalArq, FinalCli: Boolean ;
  Chamou : Boolean ;
  sqlOriginal : string;
implementation

uses
     Servicos_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Application_DM,
     LocalizarProd_DM,
     Splash_Form,
     Localizar_Cliente,
     Tipo_Impressora_Form, 
  EntraNumeroOrcamento_Form, EntraNumeroOrcamento_Ordem_Form,
  Localizar_Produto_Cadastro_Auto, Vendas_Dm, DateUtils,
  Ordens_Servicos_Form, Cadastros_Dm2, Imp_Receita_Form,
  SerieCustomizaveis_DM;

  {$R *.DFM}

Procedure TFrmSelReceituario.Filtrar;
var
  filtro : string;
Begin
  filtro := '';
  With dmCadastros2 do
  begin
    Receituario.Close;
    if edDtInicial.date > 0 then
      filtro := ' and rec.data >= '''+FormatDateTime('mm/dd/yyyy',edDtInicial.date)+'''';

    if edDtFinal.date > 0 then
      filtro := filtro + ' and rec.data <= '''+FormatDateTime('mm/dd/yyyy',edDtFinal.Date)+'''';

    dmCadastros2.Receituario.SelectSql.text := sqloriginal + filtro;
    Receituario.Open;
  end;
end;

procedure TFrmSelReceituario.FormClose(Sender: TObject; var Action: TCloseAction);
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

          FrmLocProdutoCadastro_Auto.Free    ;
          FrmLocProdutoCadastro_Auto := Nil  ;

          
          FrmMain.PnlClient.Visible := True;

          Action := caFree;
          FrmSelReceituario := Nil;

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
     SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdOS.txt',Grid.Filter);
     dmCadastros2.Receituario.SelectSql.text := sqlOriginal;
end;

procedure TFrmSelReceituario.FormShow(Sender: TObject);
begin
     Importa := False ;
     IniciaComponentes ( Self as TForm );

     Grid.FullExpand;
     pnlCampos.visible := false;
     GRID.setfocus ;
     filtrar;
end;

procedure TFrmSelReceituario.FormCreate(Sender: TObject);
var
  dia, mes, ano : integer;
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
    DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else If DMUsuarios.Objeto = Self.Name Then
    AtivaActions(Actions, DMUsuarios.Direito);

  sqlOriginal := dmCadastros2.Receituario.SelectSql.text;

  mes := MonthOfTheYear(dmapp.data_servidor);
  ano :=  Year(dmapp.data_servidor);
  edDtInicial.Date := EncodeDate(ano,mes,1);

  Synchronize;

  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdOS.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdOS.txt',Grid.Filter);


end;

procedure TFrmSelReceituario.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelReceituario.pnlClientResize(Sender: TObject);
begin
//  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelReceituario.DataSourceStateChange(Sender: TObject);
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

procedure TFrmSelReceituario.ActFecharExecute(Sender: TObject);
begin
  if FrmSelReceituario.FormStyle = fsMDIChild Then
    FrmMain.opFechar.OnClick(FrmMain.opFechar)
  else
    Close;
end;

procedure TFrmSelReceituario.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmSelReceituario.ActAlterarExecute(Sender: TObject);
begin
  If (Not DataSource.DataSet.Active) Or  (DataSource.DataSet.RecordCount = 0) Then
  begin
    ShowMessage('Você deve selecionar uma receita para impressão para alterá-la');
    grid.SetFocus;
    Exit;
  end;

  frmImprimeReceita := TfrmImprimeReceita.Create(Self);
  with dmCadastros2 do
   begin
     EdtReceita.Close;
     EdtReceita.Parambyname('cnpj').value := dmApp.cnpj;
     EdtReceita.Parambyname('codigo').value := ReceituarioCODIGO.Value;
     EdtReceita.Open;
     EdtReceita.Edit;
   end;

  frmImprimeReceita.ShowModal;
  ActAtualizar.execute;

  grid.setfocus ;
end;

procedure TFrmSelReceituario.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmSelReceituario.ActExcluirExecute(Sender: TObject);
begin
  IF MessageDlg ('Excluir Esta Ordem?',MtInformation,[MbOk, MbCancel],1) = MrOk THEN
  BEGIN
     DmApp.Exclui_Ordem ( DmApp.Cnpj, DataSource.DataSet.fieldbyname('OFC_Codigo').Value );
     DataSource.DataSet.Close ;
     DataSource.DataSet.Open  ;
  END;
end;

procedure TFrmSelReceituario.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then
         ActAlterar.Execute ;
end;

procedure TFrmSelReceituario.ActPaginaDnExecute(Sender: TObject);
begin
     If PC.ActivePageIndex = 0 THEN
         PC.ActivePageIndex := 1
     ELSE
         PC.ActivePageIndex := 0;
end;

procedure TFrmSelReceituario.ActPagUpExecute(Sender: TObject);
begin
     If PC.ActivePageIndex = 0 THEN
         PC.ActivePageIndex := 1
     ELSE
         PC.ActivePageIndex := 0;
end;

procedure TFrmSelReceituario.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelReceituario.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelReceituario.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = 13 then
    ActAlterar.Execute ;
end;

procedure TFrmSelReceituario.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value: Variant;  
begin
end;

procedure TFrmSelReceituario.TLCustomizeDragDrop(Sender, Source: TObject; X,
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

procedure TFrmSelReceituario.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmSelReceituario.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmSelReceituario.Synchronize;
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

procedure TFrmSelReceituario.GRIDHeaderMoved(Sender: TObject;
  Column: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFrmSelReceituario.GRIDHideHeader(Sender: TObject;
  AColumn: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFrmSelReceituario.GRIDShowHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; BandIndex, RowIndex, ColIndex: Integer);
begin
  Synchronize;
end;

procedure TFrmSelReceituario.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmSelReceituario.ActConfCamposExecute(Sender: TObject);
begin
  pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmSelReceituario.ActExportarExcelExecute(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Ordens Serviço.xls', Grid.SaveToXLS);
end;

procedure TFrmSelReceituario.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmSelReceituario.TimerTimer(Sender: TObject);
begin
  ActAtualizar.execute;
end;

procedure TFrmSelReceituario.ActIncluirExecute(Sender: TObject);
begin
  FrmOrdens_Servicos := TFrmOrdens_Servicos.Create(Self);
  DMServicos.Ordem.Open ;
  DMServicos.Ordem.Append ;
  FrmOrdens_Servicos.Showmodal ;
   ActAtualizar.execute;
  Chamou := False ;
  grid.setfocus ;
end;

procedure TFrmSelReceituario.GRIDCustomDraw(Sender: TObject; ACanvas: TCanvas;
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
    Value    := ANode.Values[GRIDIMPRESSA.index];
    if (not VarIsNull(Value)) then
    begin
        if(VALUE = 'S') then
          AColor := $00CAF0D7
        else
          AColor := $00B0FFFF
    end;
  end;
end;



procedure TFrmSelReceituario.ActAtualizarExecute(Sender: TObject);
begin
 Filtrar;
 Grid.FullExpand;

  dmApp.Data_Servidor := dmApp.Dataservidor;
end;

procedure TFrmSelReceituario.CmbClienteKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelReceituario.edDataBaseEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelReceituario.edDataBaseExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmSelReceituario.edDataBaseKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelReceituario.EdTipoContratoEnter(Sender: TObject);
begin
  CorFundo ( Sender );
end;

procedure TFrmSelReceituario.EdTipoContratoExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmSelReceituario.FormActivate(Sender: TObject);
begin
  FrmSelReceituario.WindowState := wsMaximized;
end;

procedure TFrmSelReceituario.Panel3Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelReceituario.ActEmitirExecute(Sender: TObject);
begin
  if (dmCadastros2.ReceituarioIMPRESSA.value = 'S' ) then
    Application.MessageBOx('Receita já impressa. Deseja reimprimir?','Aviso',mb_iconinformation + mb_ok);

  if (dmCadastros2.ReceituarioCOD_PRAGA.asInteger <= 0 ) then
  begin
    Application.MessageBOx('Defina uma praga para a receita selecionada','Aviso',mb_iconerror + mb_ok);
    exit;
  end;

  if (dmCadastros2.ReceituarioCOD_CULTURA.asInteger <= 0 ) then
  begin
    Application.MessageBOx('Defina uma cultura para a receita selecionada','Aviso',mb_iconerror + mb_ok);
    exit;
  end;

  if (dmCadastros2.ReceituarioCOD_TECNICO.asInteger <= 0 ) then
  begin
    Application.MessageBOx('Defina um técnico para a receita selecionada','Aviso',mb_iconerror + mb_ok);
    exit;
  end;

  if (dmCadastros2.ReceituarioN_RECEITA.asInteger <= 0 ) then
  begin
    Application.MessageBOx('Defina uma numeração para a receita selecionada','Aviso',mb_iconerror + mb_ok);
    exit;
  end;

  try
    dmCadastros2.qryReceita.Close;
    dmCadastros2.qryReceita.parambyname('cnpj').value := dmApp.cnpj;
    dmCadastros2.qryReceita.parambyname('codigo').value := dmCadastros2.ReceituarioCODIGO.value;
    dmCadastros2.qryReceita.Open;

    DmSerie_Customizaveis.edtLayoutReceita.Close;
    DmSerie_Customizaveis.edtLayoutReceita.parambyname('CNPJ').value := dmApp.cnpj;
    DmSerie_Customizaveis.edtLayoutReceita.Open;

    rptReceita.Template.DatabaseSettings.Name := dmapp.cnpj;
    rptReceita.Template.LoadFromDatabase;
    rptReceita.print;
  finally
    if Application.MessageBox('Receita foi impressa corretamente?','Aviso',mb_iconquestion+mb_yesno) = id_yes then
    begin
      with dmCadastros2 do
      begin
        EdtReceita.Close;
        EdtReceita.Parambyname('cnpj').value := dmApp.cnpj;
        EdtReceita.Parambyname('codigo').value := ReceituarioCODIGO.Value;
        EdtReceita.Open;
        EdtReceita.Edit;
        EdtReceitaIMPRESSA.value := 'S';
        EdtReceita.Post;
      end;
      ActAtualizar.Execute;
    end;
  end
end;

end.
