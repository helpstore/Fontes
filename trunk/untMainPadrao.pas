unit untMainPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxFilter, cxFilterControl,
  cxDBFilterControl, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxNavBar2Painter, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxStyles, cxCustomData, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxContainer, cxGroupBox, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxPropertiesStore, dxBarDBNav, dxBar, ImgList, ActnList, cxIntlBase,
  cxintl, cxPC, dxNavBarCollns, dxNavBarBase, dxNavBar, IBCustomDataSet,
  IBQuery, cxStorage, cxGridExportLink;

type
  TfrmManutencaoPadrao = class(TForm)
    NavBar: TdxNavBar;
    brFuncoes: TdxNavBarGroup;
    brPosicoes: TdxNavBarGroup;
    brCotacoes: TdxNavBarGroup;
    nvFuncao1: TdxNavBarItem;
    nvFuncao2: TdxNavBarItem;
    nvFuncao3: TdxNavBarItem;
    pgcPrincipal: TcxPageControl;
    tbsMain1: TcxTabSheet;
    cxIntl1: TcxIntl;
    ActionList1: TActionList;
    ActFirst: TAction;
    ActPrior: TAction;
    ActNext: TAction;
    ActLast: TAction;
    ActInsert: TAction;
    ActDelete: TAction;
    ActEdit: TAction;
    ActRefresh: TAction;
    ActFilter: TAction;
    ActFechar: TAction;
    ActESC: TAction;
    ActContrair: TAction;
    ActExpandir: TAction;
    ActExportar: TAction;
    ActConfigurar: TAction;
    ActCadLookup: TAction;
    ActImprimir: TAction;
    ActLayout: TAction;
    cxImageList1: TcxImageList;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarManager: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btnInsert: TdxBarButton;
    btnDelete: TdxBarButton;
    btnSalvar: TdxBarButton;
    btnEditar: TdxBarButton;
    btnCancelar: TdxBarButton;
    btnCustomizar: TdxBarButton;
    btnexportar: TdxBarButton;
    btnContrair: TdxBarButton;
    btnExpandir: TdxBarButton;
    btnImprimir: TdxBarButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrior1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavDelete1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    tbsMain2: TcxTabSheet;
    cxPropertiesStore: TcxPropertiesStore;
    Grid1: TcxGrid;
    Grid1TV: TcxGridDBBandedTableView;
    Grid1LV: TcxGridLevel;
    pnlFiltro1: TcxGroupBox;
    pnlFiltro2: TcxGroupBox;
    Grid2: TcxGrid;
    Grid2TV: TcxGridDBBandedTableView;
    Grid2LV: TcxGridLevel;
    tbsMain3: TcxTabSheet;
    pnlFiltro3: TcxGroupBox;
    Grid3: TcxGrid;
    Grid3TV: TcxGridDBBandedTableView;
    Grid3LV: TcxGridLevel;
    dsLista1: TDataSource;
    dsLista2: TDataSource;
    dsLista3: TDataSource;
    QryLista1: TIBQuery;
    QryLista2: TIBQuery;
    QryLista3: TIBQuery;
    SaveDialog: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure QryLista1BeforeOpen(DataSet: TDataSet);
    procedure pnlFiltro1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActExportarExecute(Sender: TObject);
    procedure ActFirstExecute(Sender: TObject);
    procedure dxBarDBNavPrior1Click(Sender: TObject);
    procedure dxBarDBNavNext1Click(Sender: TObject);
    procedure dxBarDBNavLast1Click(Sender: TObject);
    procedure ActContrairExecute(Sender: TObject);
    procedure ActExpandirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmManutencaoPadrao: TfrmManutencaoPadrao;

implementation

uses Application_DM;

{$R *.dfm}

procedure TfrmManutencaoPadrao.FormCreate(Sender: TObject);
var
  FMyStream: TMemoryStream;
  filtro : String;
  AFilterControl: TcxFilterControl;
begin
  //------------------------Carregando dados do componente storage----------------//
  cxPropertiesStore.StorageName := TfrmManutencaoPadrao(Sender).Name;
  cxPropertiesStore.StorageType := stStream;
  FmyStream := TMemoryStream.Create;
  cxPropertiesStore.StorageStream := FMyStream;

  if FileExists('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName) then
  begin
    FMyStream.LoadFromFile('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName);
    FMyStream.Position := 0;
    cxPropertiesStore.RestoreFrom;
  end;

  //----------------------Carregando filtros das grids---------------------//
    filtro := 'C:\Sistemas\HelpStore\filtros\'+TfrmManutencaoPadrao(Sender).Caption+'Grid1.flt';
  if (FileExists(filtro)) then
  begin
   AFilterControl := TcxFilterControl.Create(Self);
   AFilterControl.LinkComponent := Grid1TV;
   AFilterControl.LoadFromFile(filtro);
   AFilterControl.ApplyFilter;
   Grid1TV.DataController.Filter.Active := True;
   AFilterControl.Free;
  end;


  filtro := 'C:\Sistemas\HelpStore\filtros\'+TfrmManutencaoPadrao(Sender).Caption+'Grid2.flt';
  if (FileExists(filtro)) then
  begin
   AFilterControl := TcxFilterControl.Create(Self);
   AFilterControl.LinkComponent := Grid2TV;
   AFilterControl.LoadFromFile(filtro);
   AFilterControl.ApplyFilter;
   Grid2TV.DataController.Filter.Active := True;
   AFilterControl.Free;
  end;


  filtro := 'C:\Sistemas\HelpStore\filtros\'+TfrmManutencaoPadrao(Sender).Caption+'Grid3.flt';
  if (FileExists(filtro)) then
  begin
   AFilterControl := TcxFilterControl.Create(Self);
   AFilterControl.LinkComponent := Grid3TV;
   AFilterControl.LoadFromFile(filtro);
   AFilterControl.ApplyFilter;
   Grid3TV.DataController.Filter.Active := True;
   AFilterControl.Free;
  end;


  TfrmManutencaoPadrao(Sender).Visible := false;
end;

procedure TfrmManutencaoPadrao.QryLista1BeforeOpen(DataSet: TDataSet);
begin
  TIBQuery(DataSet).ParamByName('cnpj').value := dmApp.cnpj
end;

procedure TfrmManutencaoPadrao.pnlFiltro1Exit(Sender: TObject);
begin
   ActFilter.Execute;
end;

procedure TfrmManutencaoPadrao.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Diretorio :string;
  DirUser, filtro : String;
  AFilterControl: TcxFilterControl;
begin
  if (Grid1TV.DataController.Filter.Active) then
  begin
    filtro := 'C:\Sistemas\HelpStore\filtros\'+TfrmManutencaoPadrao(Sender).Caption+'Grid1.flt';

     // FileCreate(filtro);
    AFilterControl := TcxFilterControl.Create(Self);
    AFilterControl.LinkComponent := Grid1TV;
    AFilterControl.SaveToFile(filtro);
    AFilterControl.Free;
  end;

  if (Grid2TV.DataController.Filter.Active) then
  begin

    filtro := 'C:\Sistemas\HelpStore\filtros\'+TfrmManutencaoPadrao(Sender).Caption+'Grid2.flt';

     // FileCreate(filtro);
    AFilterControl := TcxFilterControl.Create(Self);
    AFilterControl.LinkComponent := Grid2TV;
    AFilterControl.SaveToFile(filtro);
    AFilterControl.Free;
  end;

  if (Grid3TV.DataController.Filter.Active) then
  begin
    filtro := 'C:\Sistemas\HelpStore\filtros\'+TfrmManutencaoPadrao(Sender).Caption+'Grid3.flt';

     // FileCreate(filtro);
    AFilterControl := TcxFilterControl.Create(Self);
    AFilterControl.LinkComponent := Grid3TV;
    AFilterControl.SaveToFile(filtro);
    AFilterControl.Free;
  end;

  (cxPropertiesStore.StorageStream as TMemoryStream).Position := 0;
   cxPropertiesStore.StoreTo(true);
  (cxPropertiesStore.StorageStream as TMemoryStream).SaveToFile(('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName));
end;

procedure TfrmManutencaoPadrao.ActExportarExecute(Sender: TObject);
begin
  case pgcPrincipal.ActivePageIndex of
    0 : begin
          with SaveDialog do
          begin
            DefaultExt := 'xls';
            Filter := '*.xls';
            FileName := 'Lista de  '+tbsMain1.Caption;
            if Execute then
              ExportGridToExcel(FileName,Grid1);
          end;
        end;
    1 : begin
          with SaveDialog do
          begin
            DefaultExt := 'xls';
            Filter := '*.xls';
            FileName := 'Lista de '+tbsMain2.Caption;
            if Execute then
              ExportGridToExcel(FileName,Grid2);
          end;
        end;
    2 : begin
          with SaveDialog do
          begin
            DefaultExt := 'xls';
            Filter := '*.xls';
            FileName := 'Lista de '+tbsMain3.Caption;
            if Execute then
              ExportGridToExcel(FileName,Grid3);
          end;
        end;
  end;

end;

procedure TfrmManutencaoPadrao.ActFirstExecute(Sender: TObject);
begin
  case pgcPrincipal.ActivePageIndex of
    0: begin
         QryLista1.First;
       end;
    1: begin
         QryLista2.First;
       end;
    2: begin
          QryLista3.First;
       end;
  end;
end;

procedure TfrmManutencaoPadrao.dxBarDBNavPrior1Click(Sender: TObject);
begin
  case pgcPrincipal.ActivePageIndex of
    0: begin
         QryLista1.Prior;
       end;
    1: begin
         QryLista2.Prior;
       end;
    2: begin
          QryLista3.Prior;
       end;
  end;
end;

procedure TfrmManutencaoPadrao.dxBarDBNavNext1Click(Sender: TObject);
begin
  case pgcPrincipal.ActivePageIndex of
    0: begin
         QryLista1.Next;
       end;
    1: begin
         QryLista2.Next;
       end;
    2: begin
          QryLista3.Next;
       end;
  end;
end;

procedure TfrmManutencaoPadrao.dxBarDBNavLast1Click(Sender: TObject);
begin
  case pgcPrincipal.ActivePageIndex of
    0: begin
         QryLista1.Last;
       end;
    1: begin
         QryLista2.Last;
       end;
    2: begin
          QryLista3.Last;
       end;
  end;
end;

procedure TfrmManutencaoPadrao.ActContrairExecute(Sender: TObject);
begin
  case pgcPrincipal.ActivePageIndex of
    0: begin
         Grid1TV.ViewData.Collapse(True);
       end;
    1: begin
         Grid2TV.ViewData.Collapse(True);
       end;
    2: begin
          Grid3TV.ViewData.Collapse(True);
       end;
  end;
end;

procedure TfrmManutencaoPadrao.ActExpandirExecute(Sender: TObject);
begin
   case pgcPrincipal.ActivePageIndex of
    0: begin
         Grid1TV.ViewData.Expand(True);
       end;
    1: begin
         Grid2TV.ViewData.Expand(True);
       end;
    2: begin
          Grid3TV.ViewData.Expand(True);
       end;
  end;

end;

end.
