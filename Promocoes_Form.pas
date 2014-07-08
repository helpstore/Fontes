
 unit Promocoes_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, DBCtrls, Grids, DBGrids,
  DBCGrids, dxExEdtr, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid, dxTL, Menus,
  dxTLClms, FileCtrl, cxPropertiesStore, Variants, cxGraphics, cxControls,
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
  cxLabel;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmPromocao = class(TForm)
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
    ActFecharContagem: TAction;
    Panel2: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    Panel3: TPanel;
    Label3: TcxLabel;
    EdValor: TdxDBCalcEdit;
    Label5: TcxLabel;
    EdFinal: TdxDBDateEdit;
    Label1: TcxLabel;
    EdVencimento: TdxDBDateEdit;
    Label2: TcxLabel;
    Label4: TcxLabel;
    EdProduto: TdxDBButtonEdit;
    DBText3: TDBText;
    Panel9: TPanel;
    EdPrecoVenda: TdxDBCalcEdit;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    GRID: TdxDBGrid;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDPRODUTO: TdxDBGridMaskColumn;
    GRIDVALIDADE: TdxDBGridDateColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDVALIDADE_FINAL: TdxDBGridDateColumn;
    btnConfig: TdxBarButton;
    btnExporta: TdxBarButton;
    ActConfigura: TAction;
    ActExporta: TAction;
    SaveDialog: TSaveDialog;
    stgFrmPromocoes: TcxPropertiesStore;
    GRIDPRC_VENDA: TdxDBGridMaskColumn;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure EdProdutoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure FormShow(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure GRIDCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
    procedure EdProdutoExit(Sender: TObject);
    procedure GRIDHeaderMoved(Sender: TObject; Column: TdxTreeListColumn);
    procedure GRIDHideHeader(Sender: TObject; AColumn: TdxTreeListColumn);
    procedure GRIDShowHeader(Sender: TObject; AColumn: TdxTreeListColumn;
      BandIndex, RowIndex, ColIndex: Integer);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure Save(ADefaultExt, AFilter, AFileName: String;AMethod: TSaveMethod);
    procedure ActConfiguraExecute(Sender: TObject);
    procedure ActExportaExecute(Sender: TObject);
  private
    DragNode: TdxTreeListNode;
    { Private declarations }
    procedure Synchronize;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPromocao: TFrmPromocao;

implementation

uses Cadastros_DM,
     Estoque_Dm,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes, LocalizarProd_DM, Localizar_Produto_Cadastro_Auto;

{$R *.DFM}

procedure TFrmPromocao.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
  If Datasource.Dataset.Tag = 0 Then
     Datasource.Dataset.Close;


  FrmLocProdutoCadastro_Auto.Free    ;
  FrmLocProdutoCadastro_Auto := Nil  ;

  Action := caFree;
  FrmPromocao := Nil;

  If FrmMain.MDIChildCount = 1 Then
     FrmMain.PnlClient.Visible := True;

  Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
  if not DirectoryExists(Diretorio) then
  begin
    ForceDirectories(Diretorio);
    MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
  end;

  SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdPromo.txt',Grid.Filter);
end;

procedure TFrmPromocao.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmPromocao.ActIncluirExecute(Sender: TObject);
begin
     If DataSource.State in dsEditModes
     Then
         Exit;

     Try
         DataSource.DataSet.Append;
         EdVencimento.setfocus;

         EdVencimento.SetFocus;
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
end;

procedure TFrmPromocao.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta Promoção?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmPromocao.ActPostExecute(Sender: TObject);
begin
  Try
//--------------------[ Validação de Datas ]------------------------------------
  if (EdVencimento.date <= 0) then
  begin
    application.messagebox('Defina a data inicial','Aviso',mb_ok + mb_iconinformation);
    EdVencimento.setfocus;
    exit;
  end;

  if (EdFinal.date <= 0) then
  begin
    application.messagebox('Defina a data final','Aviso',mb_ok + mb_iconinformation);
    EdFinal.setfocus;
    exit;
  end;

  if (EdFinal.date < EdVencimento.date) then
  begin
    application.messagebox('Intervalo de datas inválido','Aviso',mb_ok + mb_iconinformation);
    EdVencimento.setfocus;
    exit;
  end;
  
//------------------------------------------------------------------------------  

    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
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
end;

procedure TFrmPromocao.ActCancelExecute(Sender: TObject);
begin
     If DataSource.DataSet.active and  ( DataSource.DataSet.State in dsEditModes)
     Then
         DataSource.DataSet.Cancel
     Else
         BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmPromocao.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  Synchronize;
  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdPromo.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdPromo.txt',Grid.Filter);

end;

procedure TFrmPromocao.Synchronize;
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


procedure TFrmPromocao.ActLocalizarExecute(Sender: TObject);
begin
     DMApp.Localizar(Datasource);
end;

procedure TFrmPromocao.edCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmPromocao.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmPromocao.DataSourceStateChange(Sender: TObject);
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

procedure TFrmPromocao.ActFecharExecute(Sender: TObject);
begin
  If FrmPromocao.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmPromocao.EdProdutoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     //
     If Trim(EdProduto.text) = '' Then
     Begin
          If not ( DataSource.State in [ dsinsert, dsedit ] )
          then
              DataSource.DataSet.append ;

               if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
               begin
                    DataSource.DataSet.FieldByName('PRODUTO').asString   := ( FrmLocProdutoCadastro_Auto.CampTrecho );
                    DataSource.DataSet.FieldByName('PRC_VENDA').asString := ( FrmLocProdutoCadastro_Auto.CampTrechoPrecoVenda );
               end;
          EdProduto.SetFocus;
     End
  Else
     edProduto.SetFocus;
end;

procedure TFrmPromocao.FormShow(Sender: TObject);
begin
  //
  Try
    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;

    //localizar produtos


    If FrmLocProdutoCadastro_Auto = Nil then
      FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Application) ;
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

  EdVencimento.SetFocus;
end;

procedure TFrmPromocao.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmPromocao.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmPromocao.GRIDCustomDraw(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
  const AText: String; AFont: TFont; var AColor: TColor; ASelected,
  AFocused: Boolean; var ADone: Boolean);
var
  INI, FIM: Variant;
begin

  if ANode.HasChildren then
    Exit;

  if not ASelected then
  begin
    INI := ANode.Values[GRIDVALIDADE.index];
    FIM := ANode.Values[GRIDVALIDADE_FINAL.index];
    if (not VarIsNull(INI))and(not VarIsNull(FIM)) then
    begin
        if( NOW >= INI)and(NOW <= FIM )then
          AColor := $00A6FFA6;
    end;
  end;

end;

procedure TFrmPromocao.EdProdutoExit(Sender: TObject);
begin
    TIRACORFUNDO(SENDER);
    If Trim(EdProduto.text) = '' Then
    Begin
          If not ( DataSource.State in [ dsinsert, dsedit ] ) then
              DataSource.DataSet.append ;

           if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
           begin
                DataSource.DataSet.FieldByName('PRODUTO').asString   := ( FrmLocProdutoCadastro_Auto.CampTrecho );
                DataSource.DataSet.FieldByName('PRC_VENDA').asString := ( FrmLocProdutoCadastro_Auto.CampTrechoPrecoVenda );
           end;
           EdProduto.SetFocus;
    End;
end;

procedure TFrmPromocao.GRIDHeaderMoved(Sender: TObject;
  Column: TdxTreeListColumn);
begin
   Synchronize;
end;

procedure TFrmPromocao.GRIDHideHeader(Sender: TObject;
  AColumn: TdxTreeListColumn);
begin
  Synchronize;
end;

procedure TFrmPromocao.GRIDShowHeader(Sender: TObject;
  AColumn: TdxTreeListColumn; BandIndex, RowIndex, ColIndex: Integer);
begin
  Synchronize;
end;

procedure TFrmPromocao.TLCustomizeDragDrop(Sender, Source: TObject; X,
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

procedure TFrmPromocao.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmPromocao.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
    DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmPromocao.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmPromocao.ActConfiguraExecute(Sender: TObject);
begin
 pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmPromocao.ActExportaExecute(Sender: TObject);
begin
   Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Lista de Promoções.xls', Grid.SaveToXLS);
end;

end.
