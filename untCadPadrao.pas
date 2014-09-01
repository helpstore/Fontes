unit untCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxPC,  cxStyles, cxCustomData, cxGraphics, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, ExtCtrls, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxNavigator, cxDBNavigator, IBQuery,
  IBCustomDataSet, cxGridCustomPopupMenu, cxGridPopupMenu, cxFilterControl,
  cxDBFilterControl, dxBar, dxBarDBNav, ActnList, ImgList, Grids, DBGrids,
  cxLookAndFeels, cxDBLookupComboBox, cxCalendar, cxImageComboBox, cxCalc,
  cxBlobEdit, cxSpinEdit,
        cxGridExportLink,
    cxControls,
  cxGridUIHelper, dxPSGlbl, dxPSUtl, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSEngn, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSCore, dxPgsDlg, cxPropertiesStore, cxContainer, ACBrBase,
  ACBrEnterTab, cxIntlBase, cxintl, cxGridBandedTableView,
  cxGridDBBandedTableView, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxStorage,
  dxSkinsForm, dxLayoutControl, cxLabel, cxTextEdit, cxDBEdit;

type
  TfrmCadPadrao = class(TForm)
    pgcCadastro: TcxPageControl;
    tbsLista: TcxTabSheet;
    tbsEdita: TcxTabSheet;
    GridLevel1: TcxGridLevel;
    Grid: TcxGrid;
    Panel1: TPanel;
    dsPesquisa: TDataSource;
    dsRegistro: TDataSource;
    Panel2: TPanel;
    dtEdit: TIBDataSet;
    dtList: TIBQuery;
    dxBarManager: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    ActionList1: TActionList;
    ActFirst: TAction;
    ActPrior: TAction;
    ActNext: TAction;
    ActLast: TAction;
    ActInsert: TAction;
    ActDelete: TAction;
    ActEdit: TAction;
    ActSave: TAction;
    ActCancel: TAction;
    ActRefresh: TAction;
    dsLink: TDataSource;
    ActFilter: TAction;
    btnInsert: TdxBarButton;
    btnDelete: TdxBarButton;
    btnSalvar: TdxBarButton;
    btnEditar: TdxBarButton;
    btnCancelar: TdxBarButton;
    cxImageList1: TcxImageList;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
    dxBarDBNavPrior1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    ActFechar: TAction;
    ActESC: TAction;
    btnCustomizar: TdxBarButton;
    btnexportar: TdxBarButton;
    btnContrair: TdxBarButton;
    btnExpandir: TdxBarButton;
    btnImprimir: TdxBarButton;
    ActContrair: TAction;
    ActExpandir: TAction;
    ActExportar: TAction;
    ActConfigurar: TAction;
    GridPopupMenu: TcxGridPopupMenu;
    SaveDialog: TSaveDialog;
    cxPropertiesStore: TcxPropertiesStore;
    ActCadLookup: TAction;
    cxIntl1: TcxIntl;
    ActImprimir: TAction;
    GridDBBandedTableView1: TcxGridDBBandedTableView;
    GridDBBandedTableView2: TcxGridDBBandedTableView;
    ActLayout: TAction;
    edtNome: TcxDBTextEdit;
    edtCodigo: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure pgcCadastroChange(Sender: TObject);
    procedure ActFirstExecute(Sender: TObject);
    procedure ActPriorExecute(Sender: TObject);
    procedure ActNextExecute(Sender: TObject);
    procedure ActLastExecute(Sender: TObject);
    procedure ActRefreshExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActESCExecute(Sender: TObject);
    procedure ActContrairExecute(Sender: TObject);
    procedure ActExpandirExecute(Sender: TObject);
    procedure ActConfigurarExecute(Sender: TObject);
    procedure ActExportarExecute(Sender: TObject);
    procedure ActInsertExecute(Sender: TObject);
    procedure ActDeleteExecute(Sender: TObject);
    procedure ActSaveExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActEditExecute(Sender: TObject);
    procedure dsRegistroStateChange(Sender: TObject);
    procedure GridDBBandedTableView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActLayoutExecute(Sender: TObject);
    procedure dtListBeforeOpen(DataSet: TDataSet);
    procedure dtEditBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Alterar;
    procedure LiberaActList;
    procedure LiberaActEdit;
  protected
    indicefoco : integer;
    procedure Inserir(DtsEdit: TDataSource ;tbEdit:TcxTabSheet);
    procedure Editar(DtsEdit: TDataSource ;tbEdit:TcxTabSheet);
    procedure Salvar(DtsEdit : TDataSource ;DtsList : TDataSource ;tbList:TcxTabSheet);
    procedure Excluir(DtsEdit : TDataSource ;DtsList : TDataSource ;tbList:TcxTabSheet);
    procedure Cancelar(DtsEdit: TDataSource ;DtsList : TDataSource;tbList:TcxTabSheet);
    procedure First(DtsList : TDataSource);
    procedure Next(DtsList : TDataSource);
    procedure Prior(DtsList : TDataSource);
    procedure Last(DtsList : TDataSource);
    procedure Refresh(DtsList : TDataSource);
    procedure VerificaStatus(DataSource :TDataSource);
    procedure AbreDataSet(DataSet : TDataSet);

  public
    { Public declarations }
    Codigo : Integer;

  end;

var
  frmCadPadrao: TfrmCadPadrao;

implementation

uses  Application_DM;

{$R *.dfm}

procedure TfrmCadPadrao.FormShow(Sender: TObject);
var
 i : integer;
begin
  for i := 0 to TfrmCadPadrao(Sender).ComponentCount - 1 do
  begin
    if (TfrmCadPadrao(Sender).Components[I] is TcxCustomTextEdit) then
    begin
       if TcxCustomTextEdit(TfrmCadPadrao(Sender).Components[I]).Tag > 0 then
          indicefoco := i;
    end
    else if (TfrmCadPadrao(Sender).Components[I] is TIBQuery) then
    begin
       if TIBQuery(TfrmCadPadrao(Sender).Components[I]).Tag = 4 then
       begin
         TIBQuery(TfrmCadPadrao(Sender).Components[I]).Close;
         TIBQuery(TfrmCadPadrao(Sender).Components[I]).Open;
       end;
    end;
  end;

  dtList.Close;
  dtList.Open;


  tbsLista.Show;
  dxBarDBNavFirst1.Enabled := true;
  dxBarDBNavInsert1.Enabled := true;
  dxBarDBNavEdit1.Enabled := true;
  dxBarDBNavNext1.Enabled := true;
  dxBarDBNavLast1.Enabled := true;
  dxBarDBNavDelete1.Enabled := true;
  dxBarDBNavPost1.Enabled := true;
  dxBarDBNavCancel1.Enabled := true;
  dxBarDBNavRefresh1.Enabled := true;
  dxBarDBNavPrior1.Enabled := true;
  LiberaActList;
  Grid.SetFocus;
  pgcCadastro.HideTabs := true;
end;


procedure TfrmCadPadrao.pgcCadastroChange(Sender: TObject);
begin
  if pgcCadastro.ActivePage = tbsLista then
  begin
    if (dtEdit.State in [dsEdit, dsInsert]) then
    begin
      if not(Application.MessageBox('O registro está em edição. Deseja cancelar a operação?','Aviso',mb_iconquestion + mb_yesno) = id_yes) then
        tbsEdita.Show;
    end
  end
  else
  begin
    TcxCustomTextEdit(TcxPageControl(Sender).Owner.Components[indicefoco]).SetFocus;

  end;
end;

procedure TfrmCadPadrao.ActFirstExecute(Sender: TObject);
begin
  dtList.First;
end;

procedure TfrmCadPadrao.ActPriorExecute(Sender: TObject);
begin
  dtList.Prior;
end;

procedure TfrmCadPadrao.ActNextExecute(Sender: TObject);
begin
  dtList.Next;
end;

procedure TfrmCadPadrao.ActLastExecute(Sender: TObject);
begin
  dtList.Last;
end;

procedure TfrmCadPadrao.ActRefreshExecute(Sender: TObject);
begin
  dtList.Close;
  dtList.Open;
end;

procedure TfrmCadPadrao.LiberaActList;
begin
  ActExportar.Enabled := true;
  ActConfigurar.Enabled := true;
  ActContrair.Enabled := true;
  ActExpandir.Enabled := true;
  ActFirst.Enabled := true;
  ActPrior.Enabled := true;
  ActNext.Enabled  := true;
  ActLast.Enabled  := true;
  ActInsert.Enabled:= true;
  ActDelete.Enabled:= true;
  ActEdit.Enabled:= true;
  ActSave.Enabled:= false;
  ActCancel.Enabled:= false;
  ActRefresh.Enabled:= true;
  ActFilter.Enabled:= true;
end;

procedure TfrmCadPadrao.LiberaActEdit;
begin
  ActExportar.Enabled := false;
  ActConfigurar.Enabled := false;
  ActContrair.Enabled := false;
  ActExpandir.Enabled := false;

  ActFirst.Enabled := false;
  ActPrior.Enabled := false;
  ActNext.Enabled  := false;
  ActLast.Enabled  := false;
  ActInsert.Enabled:= false;
  ActDelete.Enabled:= false;
  ActEdit.Enabled:= false;
  ActSave.Enabled:= true;
  ActCancel.Enabled:= true;
  ActRefresh.Enabled:= false;
  ActFilter.Enabled:= false;
end;

procedure TfrmCadPadrao.ActFecharExecute(Sender: TObject);
begin
   if (Application.MessageBox('Deseja realmente sair do cadastro?','Aviso',mb_yesno + mb_iconquestion) = id_no) then
      exit;

    close;
end;

procedure TfrmCadPadrao.ActESCExecute(Sender: TObject);
begin
  if (pgcCadastro.ActivePageIndex = 0) then
    ActFechar.Execute
  else
    ActCancel.Execute;
end;

procedure TfrmCadPadrao.ActContrairExecute(Sender: TObject);
begin
  GridDBBandedTableView2.ViewData.Collapse(True);
end;

procedure TfrmCadPadrao.ActExpandirExecute(Sender: TObject);
begin
  GridDBBandedTableView2.ViewData.Expand(True);
end;

procedure TfrmCadPadrao.ActConfigurarExecute(Sender: TObject);
begin
 TcxGridTableController(Grid.FocusedView.Controller).Customization := True;
end;

procedure TfrmCadPadrao.ActExportarExecute(Sender: TObject);
begin
  with SaveDialog do
  begin
    DefaultExt := 'xls';
    Filter := '*.xls';
    FileName := 'Cadastros de '+TfrmCadPadrao(owner).Caption;
    if Execute then
      ExportGridToExcel(FileName,Grid);
  end;
end;


procedure TfrmCadPadrao.Inserir(DtsEdit: TDataSource; tbEdit: TcxTabSheet);
begin
  dtsEdit.Dataset.Close;
  dtsEdit.Dataset.Open;
  dtsEdit.Dataset.Insert;
  tbEdit.Show;
end;

procedure TfrmCadPadrao.Editar(DtsEdit: TDataSource; tbEdit: TcxTabSheet);
begin
  dtsEdit.Dataset.Close;
  dtsEdit.Dataset.Open;
  dtsEdit.Dataset.Edit;
  tbEdit.Show;
  
end;

procedure TfrmCadPadrao.Cancelar(DtsEdit: TDataSource;DtsList : TDataSource;
  tbList: TcxTabSheet);
var
   Posicao :TBookmark;
begin
    if (Application.MessageBox('Deseja realmente cancelar possíveis alterações?','Aviso',mb_yesno + mb_iconquestion) = id_no) then
      exit;

    DtsEdit.DataSet.Cancel;
    Posicao := DtsList.DataSet.GetBookmark;
    DtsList.DataSet.Close;
    DtsList.DataSet.Open;
    DtsList.DataSet.GotoBookmark(Posicao);
    DtsList.DataSet.FreeBookMark(Posicao);
   tbList.Show;

end;

procedure TfrmCadPadrao.Salvar(DtsEdit: TDataSource;DtsList : TDataSource; tbList: TcxTabSheet);
var
  Posicao :TBookmark;
begin
  DtsEdit.DataSet.Post;
  Posicao := DtsList.DataSet.GetBookmark;
  DtsList.DataSet.Close;
  DtsList.DataSet.Open;
  DtsList.DataSet.GotoBookmark(Posicao);
  DtsList.DataSet.FreeBookMark(Posicao);
  tbList.Show;
  TIBDataSet(DtsEdit.DataSet).Transaction.CommitRetaining;
end;

procedure TfrmCadPadrao.Alterar;
begin
  //
end;

procedure TfrmCadPadrao.Excluir(DtsEdit, DtsList: TDataSource;
  tbList: TcxTabSheet);
begin
  if (Application.MessageBox('Deseja realmente excluir o registro?','Aviso',mb_yesno + mb_iconquestion) = id_no) then
    exit;
  DtsEdit.DataSet.Close;
  DtsEdit.DataSet.Open;
  DtsEdit.DataSet.Delete;
  DtsList.DataSet.Close;
  DtsList.DataSet.Open;
  tbList.Show;
  TIBDataSet(DtsEdit.DataSet).Transaction.CommitRetaining;
end;

procedure TfrmCadPadrao.First(DtsList: TDataSource);
begin
 DtsList.DataSet.First;
end;

procedure TfrmCadPadrao.Next(DtsList: TDataSource);
begin
  DtsList.DataSet.Next;
end;

procedure TfrmCadPadrao.Last(DtsList: TDataSource);
begin
 DtsList.DataSet.Last;
end;

procedure TfrmCadPadrao.Prior(DtsList: TDataSource);
begin
  DtsList.DataSet.Prior;
end;

procedure TfrmCadPadrao.Refresh(DtsList: TDataSource);
begin
  DtsList.DataSet.Close;
  DtsList.DataSet.Open;
end;

procedure TfrmCadPadrao.ActInsertExecute(Sender: TObject);
begin
  dsRegistro.Dataset.Close;
  dsRegistro.Dataset.Open;
  dsRegistro.Dataset.Insert;
  tbsEdita.Show;
end;

procedure TfrmCadPadrao.ActDeleteExecute(Sender: TObject);
begin
  if (Application.MessageBox('Deseja realmente excluir o registro?','Aviso',mb_yesno + mb_iconquestion) = id_no) then
    exit;
  dsRegistro.DataSet.Close;
  dsRegistro.DataSet.Open;
  dsRegistro.DataSet.Delete;
  dsPesquisa.DataSet.Close;
  dsPesquisa.DataSet.Open;
  tbsLista.Show;
  TIBDataSet(dsRegistro.DataSet).Transaction.CommitRetaining;
end;

procedure TfrmCadPadrao.ActSaveExecute(Sender: TObject);
var
  Posicao :TBookmark;
  codigo : integer;
  tipo : string;
begin
  if dsRegistro.DataSet.State = dsEdit then
  begin
    tipo := 'edit';
    Posicao := dsPesquisa.DataSet.GetBookmark;
  end
  else
    tipo := 'insert';

  dsRegistro.DataSet.Post;
  TIBDataSet(dsRegistro.DataSet).Transaction.CommitRetaining;
  codigo := dsRegistro.DataSet.fieldbyname('codigo').value;

  dsPesquisa.DataSet.Close;
  dsPesquisa.DataSet.Open;

  if tipo = 'insert' then
  begin
    dsPesquisa.DataSet.Locate('codigo',codigo,[loCaseInsensitive]);
    Posicao := dsPesquisa.DataSet.GetBookmark;
  end;

  dsPesquisa.DataSet.GotoBookmark(Posicao);
  dsPesquisa.DataSet.FreeBookMark(Posicao);

  tbsLista.Show;
  Grid.SetFocus;

end;

procedure TfrmCadPadrao.ActCancelExecute(Sender: TObject);
var
   Posicao :TBookmark;
begin
    if (Application.MessageBox('Deseja realmente cancelar possíveis alterações?','Aviso',mb_yesno + mb_iconquestion) = id_no) then
      exit;

    dsRegistro.DataSet.Cancel;
    Posicao := dsPesquisa.DataSet.GetBookmark;
    dsPesquisa.DataSet.Close;
    dsPesquisa.DataSet.Open;
    dsPesquisa.DataSet.GotoBookmark(Posicao);
    dsPesquisa.DataSet.FreeBookMark(Posicao);
    tbsLista.Show;
end;

procedure TfrmCadPadrao.FormCreate(Sender: TObject);
var
  FMyStream: TMemoryStream;
  DirUser, Diretorio, filtro : String;
  AFilterControl: TcxFilterControl;
begin
  cxPropertiesStore.StorageName := TfrmCadPadrao(Sender).Name;
  cxPropertiesStore.StorageType := stStream;
  FmyStream := TMemoryStream.Create;
  cxPropertiesStore.StorageStream := FMyStream;

  if FileExists('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName) then
  begin
    FMyStream.LoadFromFile('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName);
    FMyStream.Position := 0;
    cxPropertiesStore.RestoreFrom;
  end;

  filtro := 'C:\Sistemas\HelpStore\filtros\'+TfrmCadPadrao(Sender).Caption+'.flt';
  if (FileExists(filtro)) then
  begin
   AFilterControl := TcxFilterControl.Create(Self);
   AFilterControl.LinkComponent := GridDBBandedTableView2;
   AFilterControl.LoadFromFile(filtro);
   AFilterControl.ApplyFilter;
   GridDBBandedTableView2.DataController.Filter.Active := True;
   AFilterControl.Free;
  end;


  TfrmCadPadrao(Sender).Visible := false;
end;

procedure TfrmCadPadrao.VerificaStatus(DataSource: TDataSource);
begin
  if DataSource.State in dsEditModes Then
    LiberaActEdit
  else
    LiberaActList;
end;

procedure TfrmCadPadrao.ActEditExecute(Sender: TObject);
begin
  Editar(dsRegistro,tbsEdita);
end;

procedure TfrmCadPadrao.dsRegistroStateChange(Sender: TObject);
begin
  VerificaStatus(dsRegistro);
end;

procedure TfrmCadPadrao.GridDBBandedTableView2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = 13) then
    ActEdit.Execute;
end;

procedure TfrmCadPadrao.ActLayoutExecute(Sender: TObject);
begin
  //lcmain.Customization := true;
end;

procedure TfrmCadPadrao.dtListBeforeOpen(DataSet: TDataSet);
begin
  TIBQuery(DataSet).ParamByName('cnpj').value := dmApp.cnpj;
end;

procedure TfrmCadPadrao.dtEditBeforePost(DataSet: TDataSet);
begin
  dtEdit.FieldByName('cnpj').value := dmapp.cnpj;
end;

procedure TfrmCadPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Diretorio :string;
  DirUser, filtro : String;
  AFilterControl: TcxFilterControl;
begin
  if (GridDBBandedTableView2.DataController.Filter.Active) then
  begin

   filtro := 'C:\Sistemas\HelpStore\filtros\'+TfrmCadPadrao(Sender).Caption+'.flt';

   // FileCreate(filtro);
   AFilterControl := TcxFilterControl.Create(Self);
   AFilterControl.LinkComponent := GridDBBandedTableView2;
   AFilterControl.SaveToFile(filtro);
   AFilterControl.Free;
 end;
          (cxPropertiesStore.StorageStream as TMemoryStream).Position := 0;
           cxPropertiesStore.StoreTo(true);
          (cxPropertiesStore.StorageStream as TMemoryStream).SaveToFile(('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName));

  //lcMain.Store;
  if TfrmCadPadrao(Sender).Tag = 0 then
  begin
    if dtList.fieldbyname('CODIGO').asInteger > 0 then
      Codigo := dtList.fieldbyname('CODIGO').value;
  end;
end;

procedure TfrmCadPadrao.AbreDataSet(DataSet: TDataSet);
begin
  TDataset(DataSet).Close;
  TDataset(DataSet).Open;
end;

procedure TfrmCadPadrao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   //fui obrigado a retirar a propriedade shortcut pois ocorria o fechamento da tela
  // na ocorrencia de erro e posterior tratamento do madshi.
  if key = vk_return then
    SelectNext(ActiveControl,True,True)
  else  if Key = VK_DELETE then
    ActDelete.execute;
end;

end.
