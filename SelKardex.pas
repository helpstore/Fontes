 unit SelKardex;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   dxDBTLCl, dxGrClms, dxDBGrid, dxDBCtrl, ExtCtrls,  
     dxTLClms, dxTL, dxCntner, Db, FileCtrl, ActnList,
  cxPropertiesStore, dxBar,
  dxEdLib, dxDBELib, dxDBEdtr, dxExEdtr,
  dxPSCore,
  dxPSContainerLnk, dxPgsDlg, dxEditor, StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit, Menus,
  dxSkinsdxBarPainter, cxClasses, cxButtons, cxLabel, cxPC;


type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmSelKardex = class(TForm)
    pnlCampos: TPanel;
    Panel5: TPanel;
    pc: TcxPageControl;
    Panel3: TPanel;
    Image1: TImage;
    LblTitulo: TcxLabel;
    b2: TBevel;
    GRID: TdxDBGrid;
    Panel4: TPanel;
    BtnExportarExcel: TcxButton;
    BtnExportarHtml: TcxButton;
    RzBitBtn5: TcxButton;
    DataSource: TDataSource;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDPRODUTO: TdxDBGridMaskColumn;
    GRIDNOME_PRODUTO: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNDOCTO: TdxDBGridMaskColumn;
    GRIDDT_MOVTO: TdxDBGridDateColumn;
    GRIDORIGEM: TdxDBGridMaskColumn;
    GRIDTIPO_ES: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDNOME_PESSOA: TdxDBGridMaskColumn;
    GRIDQTDADE_ANT: TdxDBGridMaskColumn;
    GRIDQTDADE: TdxDBGridMaskColumn;
    GRIDQTDADE_ATUAL: TdxDBGridMaskColumn;
    GRIDPRC_UNIT: TdxDBGridMaskColumn;
    GRIDDESCONTOS: TdxDBGridMaskColumn;
    GRIDQTDADE_ENT: TdxDBGridColumn;
    GRIDSALDO: TdxDBGridColumn;
    GRIDQTDADE_SAI: TdxDBGridColumn;
    GRIDVLR_TOTAL: TdxDBGridColumn;
    GRIDDT_KARDEX: TdxDBGridDateColumn;
    GRIDHR_KARDEX: TdxDBGridTimeColumn;
    Actions: TActionList;
    ActFechar: TAction;
    ActConfCampos: TAction;
    ActExportarExcel: TAction;
    ActExportarHtml: TAction;
    SaveDialog: TSaveDialog;
    stgSelKardex: TcxPropertiesStore;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    BarMgr: TdxBarManager;
    BtnFechar: TdxBarButton;
    Panel15: TPanel;
    Panel2: TPanel;
    Label1: TcxLabel;
    lblnome: TcxLabel;
    EdProduto: TdxButtonEdit;
    GRIDCFOP: TdxDBGridMaskColumn;
    GRIDCFOP_ESTOQUE: TdxDBGridMaskColumn;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure ActExportarHtmlExecute(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure Panel2Enter(Sender: TObject);
    procedure EdProdutoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure EdProdutoEnter(Sender: TObject);
    procedure EdProdutoExit(Sender: TObject);
    procedure EdProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel2Exit(Sender: TObject);

  private
    { Private declarations }
    DragNode: TdxTreeListNode;
    procedure Synchronize;

  public
    { Public declarations }
  end;

var
  FrmSelKardex: TFrmSelKardex;

implementation

uses Main, Usuarios_DM, SelOrdens_Form, Application_DM, Funcoes,
  Localizar_Produto_Cadastro_Auto, Relatorios_DM2;

{$R *.DFM}

procedure TFrmSelKardex.FormActivate(Sender: TObject);
begin
    FrmSelKardex.WindowState := wsMaximized;
end;

procedure TFrmSelKardex.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Diretorio :string;
begin
     If MessageDlg('Sair da Seleção de Ordens?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk then
     begin
          FrmMain.PnlClient.Visible := True;

          Action := caFree;
          FrmSelKardex := Nil;

          FrmLocProdutoCadastro_Auto.Free    ;
          FrmLocProdutoCadastro_Auto := Nil  ;          

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
     SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdKardex.txt',Grid.Filter);
end;

procedure TFrmSelKardex.FormCreate(Sender: TObject);
begin
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
     
  Synchronize;
  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdKardex.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdKardex.txt',Grid.Filter);

end;

procedure TFrmSelKardex.FormShow(Sender: TObject);

begin
    If FrmLocProdutoCadastro_Auto = Nil then
      FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Application) ;
      
     Screen.Cursor := crDefault;
     pnlCampos.visible := false;
     EdProduto.setfocus ;
end;

procedure TFrmSelKardex.Synchronize;
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

procedure TFrmSelKardex.ActFecharExecute(Sender: TObject);
begin
  if FrmSelKardex.FormStyle = fsMDIChild Then
    FrmMain.opFechar.OnClick(FrmMain.opFechar)
  else
    Close;
end;

procedure TFrmSelKardex.ActConfCamposExecute(Sender: TObject);
begin
    pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmSelKardex.ActExportarExcelExecute(Sender: TObject);
begin
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Extrato Movimento Produto.xls', Grid.SaveToXLS);
end;

procedure TFrmSelKardex.ActExportarHtmlExecute(Sender: TObject);
begin
    Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Extrato Movimento Produto.html', Grid.SaveToHTML);
end;

procedure TFrmSelKardex.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmSelKardex.TLCustomizeDragDrop(Sender, Source: TObject; X,
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

procedure TFrmSelKardex.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmSelKardex.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmSelKardex.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmSelKardex.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmSelKardex.EdProdutoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
     If Trim(EdProduto.text) = '' Then
     Begin
       if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
       begin
         EdProduto.text  := (FrmLocProdutoCadastro_Auto.CampTrecho);
         lblnome.caption := (FrmLocProdutoCadastro_Auto.CampTrechoNome);
       end;
       EdProduto.SetFocus;
     End
  Else
     edProduto.SetFocus;
end;

procedure TFrmSelKardex.EdProdutoEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmSelKardex.EdProdutoExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmSelKardex.EdProdutoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmSelKardex.Panel2Exit(Sender: TObject);
Var
   sFiltro : string;
begin
  If Trim(EdProduto.text) = '' Then
  Begin
    MessageDlg('Escolha um Prdouto! ', mtInformation, [mbOK], 0);
    exit;
    abort;
  end;

  sFiltro := ' where k.cnpj = :cnpj ';
  With dmRelatorios2 do
  begin
        SelKardex.Close;

        SelKardex.Sql.text :=
               'select k.cnpj, K.hr_kardex,k.produto,pd.nome nome_produto, k.codigo,k.ndocto,k.dt_movto,k.origem, '+
               'k.tipo_es,k.pessoa_fj,p.nome_razao nome_pessoa,k.qtdade_ant,k.qtdade,pd.qtdade_2 qtdade_atual, '+
               'k.prc_unit,k.descontos,k.dt_kardex, k.CFOP, k.cfop_estoque from est_kardex k '+
               'inner join est_produtos pd on (pd.cnpj = k.cnpj and pd.codigo = k.produto) '+
               'left join glo_pessoas_fj p on (p.codigo = k.pessoa_fj) ';


        //--------[ filtrando por Produto ]---------//
        If trim(EdProduto.Text) <> '' Then
        Begin
          if sFiltro <> '' then
            sFiltro := sFiltro + ' and ';
          sfiltro := sfiltro + ' k.produto = '''+(EdProduto.text)+'''';
        end;

        if sFiltro <> '' then
          SelKardex.Sql.Add (sFiltro);

        SelKardex.open;
    end;
end;

end.
